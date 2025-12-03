@interface AXPronunciationDictationView
- (void)finishReturnToKeyboard;
@end

@implementation AXPronunciationDictationView

- (void)finishReturnToKeyboard
{
  accessibilityIdentifier = [(AXPronunciationDictationView *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"AXPronunciationDictationView"];

  if (v4)
  {
    displayDelegate = [(AXPronunciationDictationView *)self displayDelegate];
    [displayDelegate doneButtonPressed];
  }

  v6.receiver = self;
  v6.super_class = AXPronunciationDictationView;
  [(AXPronunciationDictationView *)&v6 finishReturnToKeyboard];
}

@end