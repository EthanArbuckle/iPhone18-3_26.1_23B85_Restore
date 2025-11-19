@interface UILabelAccessibility__EventKitUI__UIKit
- (BOOL)_accessibilitySupportsContentSizeCategory:(id)a3;
@end

@implementation UILabelAccessibility__EventKitUI__UIKit

- (BOOL)_accessibilitySupportsContentSizeCategory:(id)a3
{
  v4 = a3;
  v5 = [(UILabelAccessibility__EventKitUI__UIKit *)self accessibilityIdentifier];
  v6 = [v5 isEqualToString:@"AllDayLabel"];

  if (v6)
  {
    v8 = *MEMORY[0x29EDC80A0] != v4 && *MEMORY[0x29EDC8058] != v4 && *MEMORY[0x29EDC8050] != v4;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UILabelAccessibility__EventKitUI__UIKit;
    v8 = [(UILabelAccessibility__EventKitUI__UIKit *)&v10 _accessibilitySupportsContentSizeCategory:v4];
  }

  return v8;
}

@end