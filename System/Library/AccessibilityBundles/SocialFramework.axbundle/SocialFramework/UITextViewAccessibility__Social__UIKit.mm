@interface UITextViewAccessibility__Social__UIKit
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UITextViewAccessibility__Social__UIKit

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = UITextViewAccessibility__Social__UIKit;
  v3 = [(UITextViewAccessibility__Social__UIKit *)&v8 accessibilityTraits];
  v4 = [(UITextViewAccessibility__Social__UIKit *)self accessibilityIdentification];
  v5 = [v4 isEqualToString:@"FacebookTextView"];

  if (v5)
  {
    v6 = *MEMORY[0x29EDBDC00];
    return _AXTraitsRemoveTrait();
  }

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(UITextViewAccessibility__Social__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"FacebookTextView"];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"post.composition");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITextViewAccessibility__Social__UIKit;
    v5 = [(UITextViewAccessibility__Social__UIKit *)&v7 accessibilityLabel];
  }

  return v5;
}

@end