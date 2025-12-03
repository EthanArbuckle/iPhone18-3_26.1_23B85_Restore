@interface UITableViewCellAccessibility__PhotoLibrary__UIKit
- (BOOL)_accessibilityIgnoreInternalLabels;
@end

@implementation UITableViewCellAccessibility__PhotoLibrary__UIKit

- (BOOL)_accessibilityIgnoreInternalLabels
{
  accessibilityIdentification = [(UITableViewCellAccessibility__PhotoLibrary__UIKit *)self accessibilityIdentification];
  v3 = [accessibilityIdentification isEqualToString:@"CloudCreateCell"];

  return v3;
}

@end