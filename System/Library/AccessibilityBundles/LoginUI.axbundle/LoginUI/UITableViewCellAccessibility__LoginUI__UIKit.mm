@interface UITableViewCellAccessibility__LoginUI__UIKit
- (BOOL)_accessibilityIgnoreInternalLabels;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didMoveToWindow;
@end

@implementation UITableViewCellAccessibility__LoginUI__UIKit

- (void)didMoveToWindow
{
  accessibilityIdentification = [(UITableViewCellAccessibility__LoginUI__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXLUITableViewCellTextFieldOnlyTag"];

  if (v4)
  {
    [(UITableViewCellAccessibility__LoginUI__UIKit *)self _accessibilityLoadAccessibilityInformation];
  }

  v5.receiver = self;
  v5.super_class = UITableViewCellAccessibility__LoginUI__UIKit;
  [(UITableViewCellAccessibility__LoginUI__UIKit *)&v5 didMoveToWindow];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = UITableViewCellAccessibility__LoginUI__UIKit;
  [(UITableViewCellAccessibility__LoginUI__UIKit *)&v9 _accessibilityLoadAccessibilityInformation];
  accessibilityIdentification = [(UITableViewCellAccessibility__LoginUI__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXLUITableViewCellTextFieldOnlyTag"];

  if (v4)
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    textLabel = [v5 textLabel];
    accessibilityLabel = [textLabel accessibilityLabel];
    editableTextField = [v5 editableTextField];
    [editableTextField setAccessibilityLabel:accessibilityLabel];
  }
}

- (BOOL)_accessibilityIgnoreInternalLabels
{
  accessibilityIdentification = [(UITableViewCellAccessibility__LoginUI__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXLUITableViewCellTextFieldOnlyTag"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UITableViewCellAccessibility__LoginUI__UIKit;
  return [(UITableViewCellAccessibility__LoginUI__UIKit *)&v6 _accessibilityIgnoreInternalLabels];
}

@end