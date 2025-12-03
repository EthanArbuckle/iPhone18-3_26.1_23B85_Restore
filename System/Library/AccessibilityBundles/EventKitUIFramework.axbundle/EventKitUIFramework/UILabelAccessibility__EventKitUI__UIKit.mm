@interface UILabelAccessibility__EventKitUI__UIKit
- (BOOL)_accessibilitySupportsContentSizeCategory:(id)category;
@end

@implementation UILabelAccessibility__EventKitUI__UIKit

- (BOOL)_accessibilitySupportsContentSizeCategory:(id)category
{
  categoryCopy = category;
  accessibilityIdentifier = [(UILabelAccessibility__EventKitUI__UIKit *)self accessibilityIdentifier];
  v6 = [accessibilityIdentifier isEqualToString:@"AllDayLabel"];

  if (v6)
  {
    v8 = *MEMORY[0x29EDC80A0] != categoryCopy && *MEMORY[0x29EDC8058] != categoryCopy && *MEMORY[0x29EDC8050] != categoryCopy;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UILabelAccessibility__EventKitUI__UIKit;
    v8 = [(UILabelAccessibility__EventKitUI__UIKit *)&v10 _accessibilitySupportsContentSizeCategory:categoryCopy];
  }

  return v8;
}

@end