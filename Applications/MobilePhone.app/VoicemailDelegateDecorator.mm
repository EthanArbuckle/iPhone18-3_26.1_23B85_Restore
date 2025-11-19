@interface VoicemailDelegateDecorator
- (_TtC11MobilePhone26VoicemailDelegateDecorator)init;
- (void)greetingDidChangeByCarrier:(id)a3;
- (void)voicemailsDidChangeInitial:(BOOL)a3 added:(id)a4 deleted:(id)a5 updated:(id)a6;
@end

@implementation VoicemailDelegateDecorator

- (void)greetingDidChangeByCarrier:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self + OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_lastTask;
  v9 = self;
  os_unfair_lock_lock(v8);
  _s11MobilePhone26VoicemailDelegateDecoratorC17greetingDidChange9byCarriery10Foundation4UUIDV_tFyScTyyts5NeverOGSgzYuYTXEfU_(v8 + 1, v9, v7);
  os_unfair_lock_unlock(v8);

  (*(v5 + 8))(v7, v4);
}

- (_TtC11MobilePhone26VoicemailDelegateDecorator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)voicemailsDidChangeInitial:(BOOL)a3 added:(id)a4 deleted:(id)a5 updated:(id)a6
{
  v6 = self + OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_lastTask;
  v8 = self;
  os_unfair_lock_lock(v6);
  _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_Tm(v6 + 1, v8, v7, "VoicemailDelegateDecorator: received voicemailsDidChange");
  os_unfair_lock_unlock(v6);
}

@end