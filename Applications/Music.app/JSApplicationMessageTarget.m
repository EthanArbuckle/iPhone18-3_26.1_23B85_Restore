@interface JSApplicationMessageTarget
- (NSString)targetIdentifier;
- (void)messageCoordinator:(id)a3 didUpdatePriorityMessage:(id)a4 forTarget:(id)a5;
- (void)setTargetIdentifier:(id)a3;
@end

@implementation JSApplicationMessageTarget

- (NSString)targetIdentifier
{
  swift_beginAccess();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setTargetIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_targetIdentifier);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v4;
  v7[1] = v6;
  v10 = self;
  sub_100CE2574(v8, v9);
}

- (void)messageCoordinator:(id)a3 didUpdatePriorityMessage:(id)a4 forTarget:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_100CE5118(a4);
}

@end