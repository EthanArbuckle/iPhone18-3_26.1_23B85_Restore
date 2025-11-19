@interface UITableViewCellAccessibility__PhotoLibrary__UIKit
- (BOOL)_accessibilityIgnoreInternalLabels;
@end

@implementation UITableViewCellAccessibility__PhotoLibrary__UIKit

- (BOOL)_accessibilityIgnoreInternalLabels
{
  v2 = [(UITableViewCellAccessibility__PhotoLibrary__UIKit *)self accessibilityIdentification];
  v3 = [v2 isEqualToString:@"CloudCreateCell"];

  return v3;
}

@end