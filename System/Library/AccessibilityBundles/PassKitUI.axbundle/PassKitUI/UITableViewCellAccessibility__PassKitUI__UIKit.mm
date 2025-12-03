@interface UITableViewCellAccessibility__PassKitUI__UIKit
- (id)_accessibilityChildren;
@end

@implementation UITableViewCellAccessibility__PassKitUI__UIKit

- (id)_accessibilityChildren
{
  if (([(UITableViewCellAccessibility__PassKitUI__UIKit *)self _accessibilityBoolValueForKey:kAXManualEntryCellIdentifier]& 1) != 0)
  {
    v7.receiver = self;
    v7.super_class = UITableViewCellAccessibility__PassKitUI__UIKit;
    _accessibilityChildren = [(UITableViewCellAccessibility__PassKitUI__UIKit *)&v7 _accessibilityChildren];
    v4 = [_accessibilityChildren indexOfObjectPassingTest:&__block_literal_global_7];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = [_accessibilityChildren objectAtIndex:v4];
    }

    [v5 setIsAccessibilityElement:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewCellAccessibility__PassKitUI__UIKit;
    _accessibilityChildren = [(UITableViewCellAccessibility__PassKitUI__UIKit *)&v8 _accessibilityChildren];
  }

  return _accessibilityChildren;
}

@end