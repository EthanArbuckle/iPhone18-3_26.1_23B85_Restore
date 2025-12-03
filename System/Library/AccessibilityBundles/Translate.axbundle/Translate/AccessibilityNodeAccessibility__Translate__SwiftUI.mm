@interface AccessibilityNodeAccessibility__Translate__SwiftUI
- (id)accessibilityAttributedLabel;
- (id)accessibilityLabel;
@end

@implementation AccessibilityNodeAccessibility__Translate__SwiftUI

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(AccessibilityNodeAccessibility__Translate__SwiftUI *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"moreButton"])
  {
    v4 = @"more.button";
LABEL_5:
    accessibilityLabel = accessibilityLocalizedString(v4);
    goto LABEL_7;
  }

  if ([accessibilityIdentifier isEqualToString:@"conversationViewOptionsButton"])
  {
    v4 = @"conversation.style.button";
    goto LABEL_5;
  }

  v8.receiver = self;
  v8.super_class = AccessibilityNodeAccessibility__Translate__SwiftUI;
  accessibilityLabel = [(AccessibilityNodeAccessibility__Translate__SwiftUI *)&v8 accessibilityLabel];
LABEL_7:
  v6 = accessibilityLabel;

  return v6;
}

- (id)accessibilityAttributedLabel
{
  v3 = objc_alloc(MEMORY[0x29EDBD7E8]);
  accessibilityLabel = [(AccessibilityNodeAccessibility__Translate__SwiftUI *)self accessibilityLabel];
  v5 = [v3 initWithStringOrAttributedString:accessibilityLabel];

  attributedString = [v5 attributedString];

  return attributedString;
}

@end