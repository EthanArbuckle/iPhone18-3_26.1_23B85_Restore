@interface ICRecoverNoteAlertController
- (BOOL)showFromViewController:(id)controller;
- (ICRecoverNoteAlertController)init;
- (_NSRange)selectedRange;
- (void)recoverNote;
- (void)recoverNotePostingNotifications;
- (void)setNotificationCenter:(id)center;
@end

@implementation ICRecoverNoteAlertController

- (void)setNotificationCenter:(id)center
{
  v4 = *(self + OBJC_IVAR___ICRecoverNoteAlertController_notificationCenter);
  *(self + OBJC_IVAR___ICRecoverNoteAlertController_notificationCenter) = center;
  centerCopy = center;
}

- (_NSRange)selectedRange
{
  v2 = self + OBJC_IVAR___ICRecoverNoteAlertController_selectedRange;
  v3 = *(self + OBJC_IVAR___ICRecoverNoteAlertController_selectedRange);
  v4 = *(v2 + 1);
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)recoverNote
{
  selfCopy = self;
  sub_1003E475C();
}

- (void)recoverNotePostingNotifications
{
  v2 = *(self + OBJC_IVAR___ICRecoverNoteAlertController_notificationCenter);
  selfCopy = self;
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  [v3 postNotificationName:v4 object:selfCopy];

  sub_1003E475C();
  sub_1003E4FCC();
}

- (BOOL)showFromViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  LOBYTE(self) = sub_1003E4B74(controllerCopy);

  return self & 1;
}

- (ICRecoverNoteAlertController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end