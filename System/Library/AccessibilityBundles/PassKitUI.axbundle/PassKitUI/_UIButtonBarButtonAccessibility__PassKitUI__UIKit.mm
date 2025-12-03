@interface _UIButtonBarButtonAccessibility__PassKitUI__UIKit
- (unint64_t)accessibilityTraits;
@end

@implementation _UIButtonBarButtonAccessibility__PassKitUI__UIKit

- (unint64_t)accessibilityTraits
{
  accessibilityIdentification = [(_UIButtonBarButtonAccessibility__PassKitUI__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:kAXCustomButtonIdentifier];

  if (v4)
  {
    return *MEMORY[0x29EDC7F80];
  }

  v6.receiver = self;
  v6.super_class = _UIButtonBarButtonAccessibility__PassKitUI__UIKit;
  return [(_UIButtonBarButtonAccessibility__PassKitUI__UIKit *)&v6 accessibilityTraits];
}

@end