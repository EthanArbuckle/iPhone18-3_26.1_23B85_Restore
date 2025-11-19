@interface UIFont
@end

@implementation UIFont

id __62__UIFont_NUIAccessibilitySupport___nui_isAccessibilityEnabled__block_invoke()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D76800];
  v3[0] = *MEMORY[0x277D76808];
  v3[1] = v0;
  v1 = *MEMORY[0x277D767F0];
  v3[2] = *MEMORY[0x277D767F8];
  v3[3] = v1;
  v3[4] = *MEMORY[0x277D767E8];
  result = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
  +[UIFont(NUIAccessibilitySupport) _nui_isAccessibilityEnabled]::largeSizes = result;
  return result;
}

@end