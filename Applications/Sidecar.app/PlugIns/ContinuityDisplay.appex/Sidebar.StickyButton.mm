@interface Sidebar.StickyButton
- (void)_buttonDownWithSender:(id)sender;
- (void)_buttonUpWithSender:(id)sender;
- (void)_keyboardButtonGestureTriggeredWithRecognizer:(id)recognizer;
@end

@implementation Sidebar.StickyButton

- (void)_keyboardButtonGestureTriggeredWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_10003A4B0(recognizerCopy);
}

- (void)_buttonDownWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10003A618();
}

- (void)_buttonUpWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10003A880();
}

@end