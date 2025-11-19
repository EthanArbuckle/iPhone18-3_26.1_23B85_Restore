@interface Sidebar.StickyButton
- (void)_buttonDownWithSender:(id)a3;
- (void)_buttonUpWithSender:(id)a3;
- (void)_keyboardButtonGestureTriggeredWithRecognizer:(id)a3;
@end

@implementation Sidebar.StickyButton

- (void)_keyboardButtonGestureTriggeredWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003A4B0(v4);
}

- (void)_buttonDownWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003A618();
}

- (void)_buttonUpWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003A880();
}

@end