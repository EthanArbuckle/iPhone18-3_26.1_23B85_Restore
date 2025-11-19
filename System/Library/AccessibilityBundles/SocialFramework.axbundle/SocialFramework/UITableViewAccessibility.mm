@interface UITableViewAccessibility
@end

@implementation UITableViewAccessibility

void __81__UITableViewAccessibility__Social__UIKit__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 accessibilityIdentifier];
  v7 = [v6 isEqualToString:@"SLFacebookLoginInfoTableViewFooter"];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v10 safeValueForKey:@"subviews"];
    [v8 addObjectsFromArray:v9];

    *a4 = 1;
  }
}

@end