@interface ICRecoverNoteAlertController
- (BOOL)showFromViewController:(id)a3;
- (ICRecoverNoteAlertController)init;
- (_NSRange)selectedRange;
- (void)recoverNote;
- (void)recoverNotePostingNotifications;
- (void)setNotificationCenter:(id)a3;
@end

@implementation ICRecoverNoteAlertController

- (void)setNotificationCenter:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICRecoverNoteAlertController_notificationCenter);
  *(self + OBJC_IVAR___ICRecoverNoteAlertController_notificationCenter) = a3;
  v3 = a3;
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
  v2 = self;
  sub_1003E475C();
}

- (void)recoverNotePostingNotifications
{
  v2 = *(self + OBJC_IVAR___ICRecoverNoteAlertController_notificationCenter);
  v5 = self;
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  [v3 postNotificationName:v4 object:v5];

  sub_1003E475C();
  sub_1003E4FCC();
}

- (BOOL)showFromViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1003E4B74(v4);

  return self & 1;
}

- (ICRecoverNoteAlertController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end