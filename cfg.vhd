----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:10:39 10/18/2014 
-- Design Name: 
-- Module Name:    cfg - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity cfg is
    Port ( trn_tcfg_gnt_n : in  STD_LOGIC;
           tx_cfg_gnt : out  STD_LOGIC);
end cfg;

architecture Behavioral of cfg is


signal tx_cfg_gnt : std_logic;
begin
  cfg_out_i : cfg
    port map(
		trn_tcfg_gnt_n		=> trn_tcfg_gnt_n,
      tx_cfg_gnt         => tx_cfg_gnt);

tx_cfg_gnt <= not trn_tcfg_gnt_n;

end Behavioral;

