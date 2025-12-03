@interface UITextViewAccessibility__Social__UIKit
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UITextViewAccessibility__Social__UIKit

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = UITextViewAccessibility__Social__UIKit;
  accessibilityTraits = [(UITextViewAccessibility__Social__UIKit *)&v8 accessibilityTraits];
  accessibilityIdentification = [(UITextViewAccessibility__Social__UIKit *)self accessibilityIdentification];
  v5 = [accessibilityIdentification isEqualToString:@"FacebookTextView"];

  if (v5)
  {
    v6 = *MEMORY[0x29EDBDC00];
    return _AXTraitsRemoveTrait();
  }

  return accessibilityTraits;
}

- (id)accessibilityLabel
{
  accessibilityIdentification = [(UITextViewAccessibility__Social__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"FacebookTextView"];

  if (v4)
  {
    accessibilityLabel = accessibilityLocalizedString(@"post.composition");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITextViewAccessibility__Social__UIKit;
    accessibilityLabel = [(UITextViewAccessibility__Social__UIKit *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end