@interface UITableViewAccessibility__Social__UIKit
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation UITableViewAccessibility__Social__UIKit

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = MEMORY[0x29EDB8DE8];
  v12.receiver = self;
  v12.super_class = UITableViewAccessibility__Social__UIKit;
  _accessibilitySupplementaryFooterViews = [(UITableViewAccessibility__Social__UIKit *)&v12 _accessibilitySupplementaryFooterViews];
  v5 = [v3 arrayWithArray:_accessibilitySupplementaryFooterViews];

  accessibilityIdentifier = [(UITableViewAccessibility__Social__UIKit *)self accessibilityIdentifier];
  v7 = [accessibilityIdentifier isEqualToString:@"SLFacebookLoginInfoTableView"];

  if (v7)
  {
    v8 = [(UITableViewAccessibility__Social__UIKit *)self safeValueForKey:@"subviews"];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __81__UITableViewAccessibility__Social__UIKit__accessibilitySupplementaryFooterViews__block_invoke;
    v10[3] = &unk_29F2F9EA0;
    v11 = v5;
    [v8 enumerateObjectsUsingBlock:v10];
  }

  return v5;
}

@end