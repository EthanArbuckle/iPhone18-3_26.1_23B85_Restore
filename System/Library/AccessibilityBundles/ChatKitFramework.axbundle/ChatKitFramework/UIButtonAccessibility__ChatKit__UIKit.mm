@interface UIButtonAccessibility__ChatKit__UIKit
- (BOOL)isAccessibilityElement;
@end

@implementation UIButtonAccessibility__ChatKit__UIKit

- (BOOL)isAccessibilityElement
{
  v3 = [(UIButtonAccessibility__ChatKit__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"CKTranscriptStatusButton"];

  if (v4)
  {
    v5 = [(UIButtonAccessibility__ChatKit__UIKit *)self accessibilityLabel];
    v6 = [v5 length];

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