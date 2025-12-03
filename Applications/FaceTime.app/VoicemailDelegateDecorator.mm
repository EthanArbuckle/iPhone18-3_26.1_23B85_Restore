@interface VoicemailDelegateDecorator
- (_TtC8FaceTime26VoicemailDelegateDecorator)init;
- (void)greetingDidChangeByCarrier:(id)carrier;
- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated;
@end

@implementation VoicemailDelegateDecorator

- (void)greetingDidChangeByCarrier:(id)carrier
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self + OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_lastTask;
  selfCopy = self;
  os_unfair_lock_lock(v8);
  sub_10008D798(v8 + 1, selfCopy, v7);
  os_unfair_lock_unlock(v8);

  (*(v5 + 8))(v7, v4);
}

- (_TtC8FaceTime26VoicemailDelegateDecorator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated
{
  v6 = self + OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_lastTask;
  selfCopy = self;
  os_unfair_lock_lock(v6);
  sub_10008E028(v6 + 1, selfCopy, v7, "VoicemailDelegateDecorator: received voicemailsDidChange");
  os_unfair_lock_unlock(v6);
}

@end