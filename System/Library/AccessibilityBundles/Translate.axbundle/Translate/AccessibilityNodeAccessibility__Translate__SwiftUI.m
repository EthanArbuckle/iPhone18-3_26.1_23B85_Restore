@interface AccessibilityNodeAccessibility__Translate__SwiftUI
- (id)accessibilityAttributedLabel;
- (id)accessibilityLabel;
@end

@implementation AccessibilityNodeAccessibility__Translate__SwiftUI

- (id)accessibilityLabel
{
  v3 = [(AccessibilityNodeAccessibility__Translate__SwiftUI *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"moreButton"])
  {
    v4 = @"more.button";
LABEL_5:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"conversationViewOptionsButton"])
  {
    v4 = @"conversation.style.button";
    goto LABEL_5;
  }

  v8.receiver = self;
  v8.super_class = AccessibilityNodeAccessibility__Translate__SwiftUI;
  v5 = [(AccessibilityNodeAccessibility__Translate__SwiftUI *)&v8 accessibilityLabel];
LABEL_7:
  v6 = v5;

  return v6;
}

- (id)accessibilityAttributedLabel
{
  v3 = objc_alloc(MEMORY[0x29EDBD7E8]);
  v4 = [(AccessibilityNodeAccessibility__Translate__SwiftUI *)self accessibilityLabel];
  v5 = [v3 initWithStringOrAttributedString:v4];

  v6 = [v5 attributedString];

  return v6;
}

@end