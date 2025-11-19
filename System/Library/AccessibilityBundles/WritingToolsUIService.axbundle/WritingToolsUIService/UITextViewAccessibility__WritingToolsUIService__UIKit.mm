@interface UITextViewAccessibility__WritingToolsUIService__UIKit
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
@end

@implementation UITextViewAccessibility__WritingToolsUIService__UIKit

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
  [(UITextViewAccessibility__WritingToolsUIService__UIKit *)v5 _accessibilitySelectedTextRange];
  if (!v6)
  {
    v7 = *MEMORY[0x29EDC7448];
    _UIAccessibilityBlockPostingOfNotification();
    [(UITextViewAccessibility__WritingToolsUIService__UIKit *)v5 select:v5];
    AXPerformBlockOnMainThreadAfterDelay();
  }

  v8.receiver = v5;
  v8.super_class = UITextViewAccessibility__WritingToolsUIService__UIKit;
  [(UITextViewAccessibility__WritingToolsUIService__UIKit *)&v8 _accessibilitySetSelectedTextRange:location, length];
}

@end