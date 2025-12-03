@interface VoicemailDelegateDecorator
- (_TtC9IntentsUI26VoicemailDelegateDecorator)init;
- (void)greetingDidChangeByCarrier:(id)carrier;
- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated;
@end

@implementation VoicemailDelegateDecorator

- (void)greetingDidChangeByCarrier:(id)carrier
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v8 = self + OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_lastTask;
  selfCopy = self;
  os_unfair_lock_lock(v8);
  sub_10002FE4C(v8 + 1, selfCopy, v7);
  os_unfair_lock_unlock(v8);

  (*(v5 + 8))(v7, v4);
}

- (_TtC9IntentsUI26VoicemailDelegateDecorator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated
{
  v6 = self + OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_lastTask;
  selfCopy = self;
  os_unfair_lock_lock(v6);
  sub_10003078C(v6 + 1, selfCopy, v7, "VoicemailDelegateDecorator: received voicemailsDidChange");
  os_unfair_lock_unlock(v6);
}

@end