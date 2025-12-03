@interface CAMHapticContactRecognizer
- (void)contactBeganWithAction:(id)action;
- (void)contactEndedWithAction:(id)action;
- (void)contactUpdatedWithAction:(id)action;
@end

@implementation CAMHapticContactRecognizer

- (void)contactBeganWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_10001FF14();
}

- (void)contactUpdatedWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_10001F9AC(actionCopy);
}

- (void)contactEndedWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_10001FD78(action);
}

@end