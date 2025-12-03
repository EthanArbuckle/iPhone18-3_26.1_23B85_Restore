@interface UILabelAccessibility__MusicApplication__UIKit
- (BOOL)isAccessibilityElement;
@end

@implementation UILabelAccessibility__MusicApplication__UIKit

- (BOOL)isAccessibilityElement
{
  accessibilityIdentifier = [(UILabelAccessibility__MusicApplication__UIKit *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"AXUIButtonLabelEmptyLabel"];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = UILabelAccessibility__MusicApplication__UIKit;
  return [(UILabelAccessibility__MusicApplication__UIKit *)&v6 isAccessibilityElement];
}

@end