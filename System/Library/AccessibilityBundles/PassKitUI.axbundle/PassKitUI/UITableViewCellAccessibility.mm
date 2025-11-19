@interface UITableViewCellAccessibility
@end

@implementation UITableViewCellAccessibility

uint64_t __72__UITableViewCellAccessibility__PassKitUI__UIKit__accessibilityChildren__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  NSClassFromString(&cfstr_Uitabletextacc.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *a4 = 1;
  }

  return isKindOfClass & 1;
}

@end