@interface AXPronunciationDictationView
- (void)finishReturnToKeyboard;
@end

@implementation AXPronunciationDictationView

- (void)finishReturnToKeyboard
{
  v3 = [(AXPronunciationDictationView *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AXPronunciationDictationView"];

  if (v4)
  {
    v5 = [(AXPronunciationDictationView *)self displayDelegate];
    [v5 doneButtonPressed];
  }

  v6.receiver = self;
  v6.super_class = AXPronunciationDictationView;
  [(AXPronunciationDictationView *)&v6 finishReturnToKeyboard];
}

@end