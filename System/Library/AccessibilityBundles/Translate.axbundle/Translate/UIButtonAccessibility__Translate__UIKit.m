@interface UIButtonAccessibility__Translate__UIKit
- (unint64_t)accessibilityTraits;
@end

@implementation UIButtonAccessibility__Translate__UIKit

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = UIButtonAccessibility__Translate__UIKit;
  v3 = [(UIButtonAccessibility__Translate__UIKit *)&v8 accessibilityTraits];
  v4 = [(UIButtonAccessibility__Translate__UIKit *)self accessibilityIdentifier];
  v5 = [v4 isEqualToString:@"Play_at_1×"];

  v6 = *MEMORY[0x29EDC7FC8];
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | v3;
}

@end