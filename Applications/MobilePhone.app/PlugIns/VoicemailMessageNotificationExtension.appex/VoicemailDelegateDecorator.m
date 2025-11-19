@interface VoicemailDelegateDecorator
- (_TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator)init;
- (void)greetingDidChangeByCarrier:(id)a3;
- (void)voicemailsDidChangeInitial:(BOOL)a3 added:(id)a4 deleted:(id)a5 updated:(id)a6;
@end

@implementation VoicemailDelegateDecorator

- (void)greetingDidChangeByCarrier:(id)a3
{
  v4 = sub_10006036C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006035C();
  v8 = self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_lastTask;
  v9 = self;
  os_unfair_lock_lock(v8);
  sub_1000326E0(v8 + 1, v9, v7);
  os_unfair_lock_unlock(v8);

  (*(v5 + 8))(v7, v4);
}

- (_TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)voicemailsDidChangeInitial:(BOOL)a3 added:(id)a4 deleted:(id)a5 updated:(id)a6
{
  v6 = self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_lastTask;
  v8 = self;
  os_unfair_lock_lock(v6);
  sub_100032FA0(v6 + 1, v8, v7, "VoicemailDelegateDecorator: received voicemailsDidChange");
  os_unfair_lock_unlock(v6);
}

@end