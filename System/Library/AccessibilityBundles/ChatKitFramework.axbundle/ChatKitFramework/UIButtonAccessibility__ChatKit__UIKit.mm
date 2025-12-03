@interface UIButtonAccessibility__ChatKit__UIKit
- (BOOL)isAccessibilityElement;
@end

@implementation UIButtonAccessibility__ChatKit__UIKit

- (BOOL)isAccessibilityElement
{
  accessibilityIdentification = [(UIButtonAccessibility__ChatKit__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"CKTranscriptStatusButton"];

  if (v4)
  {
    accessibilityLabel = [(UIButtonAccessibility__ChatKit__UIKit *)self accessibilityLabel];
    v6 = [accessibilityLabel length];

    if (!v6)
    {
      return 0;
    }
  }

  v8.receiver = self;
  v8.super_class = UIButtonAccessibility__ChatKit__UIKit;
  return [(UIButtonAccessibility__ChatKit__UIKit *)&v8 isAccessibilityElement];
}

@end