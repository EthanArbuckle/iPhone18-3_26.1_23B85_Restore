@interface UITextViewAccessibility__WritingToolsUIService__UIKit
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
@end

@implementation UITextViewAccessibility__WritingToolsUIService__UIKit

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  [(UITextViewAccessibility__WritingToolsUIService__UIKit *)selfCopy _accessibilitySelectedTextRange];
  if (!v6)
  {
    v7 = *MEMORY[0x29EDC7448];
    _UIAccessibilityBlockPostingOfNotification();
    [(UITextViewAccessibility__WritingToolsUIService__UIKit *)selfCopy select:selfCopy];
    AXPerformBlockOnMainThreadAfterDelay();
  }

  v8.receiver = selfCopy;
  v8.super_class = UITextViewAccessibility__WritingToolsUIService__UIKit;
  [(UITextViewAccessibility__WritingToolsUIService__UIKit *)&v8 _accessibilitySetSelectedTextRange:location, length];
}

@end