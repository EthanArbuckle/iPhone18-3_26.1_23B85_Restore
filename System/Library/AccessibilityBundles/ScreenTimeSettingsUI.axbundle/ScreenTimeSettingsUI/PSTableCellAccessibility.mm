@interface PSTableCellAccessibility
@end

@implementation PSTableCellAccessibility

uint64_t __76__PSTableCellAccessibility__ScreenTimeUI__Preferences_accessibilityActivate__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) sendActionsForControlEvents:64];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void __76__PSTableCellAccessibility__ScreenTimeUI__Preferences_accessibilityActivate__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __76__PSTableCellAccessibility__ScreenTimeUI__Preferences_accessibilityActivate__block_invoke_3;
  v5[3] = &unk_29F2F3970;
  v5[4] = *(a1 + 48);
  (v2)[2](v2, v3, v4, v5);
}

@end