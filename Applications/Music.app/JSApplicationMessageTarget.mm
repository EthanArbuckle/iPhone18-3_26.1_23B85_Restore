@interface JSApplicationMessageTarget
- (NSString)targetIdentifier;
- (void)messageCoordinator:(id)coordinator didUpdatePriorityMessage:(id)message forTarget:(id)target;
- (void)setTargetIdentifier:(id)identifier;
@end

@implementation JSApplicationMessageTarget

- (NSString)targetIdentifier
{
  swift_beginAccess();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setTargetIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_targetIdentifier);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v4;
  v7[1] = v6;
  selfCopy = self;
  sub_100CE2574(v8, v9);
}

- (void)messageCoordinator:(id)coordinator didUpdatePriorityMessage:(id)message forTarget:(id)target
{
  coordinatorCopy = coordinator;
  messageCopy = message;
  selfCopy = self;
  sub_100CE5118(message);
}

@end