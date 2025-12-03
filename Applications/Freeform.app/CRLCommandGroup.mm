@interface CRLCommandGroup
- (BOOL)committed;
- (BOOL)isEmpty;
- (BOOL)supportsSimultaneousExecutionWithOtherCommands;
- (NSArray)commands;
- (NSString)actionString;
- (_TtC8Freeform15CRLCommandGroup)init;
- (_TtC8Freeform15CRLCommandGroup)initWithCommands:(id)commands;
- (void)addCommand:(id)command;
- (void)addCommandIfNotNil:(id)nil;
- (void)addCommands:(id)commands;
- (void)setActionString:(id)string;
- (void)setCommands:(id)commands;
@end

@implementation CRLCommandGroup

- (BOOL)committed
{
  selfCopy = self;
  v3 = sub_10097D344();

  return v3 & 1;
}

- (NSArray)commands
{
  swift_beginAccess();
  type metadata accessor for CRLCommand();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setCommands:(id)commands
{
  type metadata accessor for CRLCommand();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (_TtC8Freeform15CRLCommandGroup)initWithCommands:(id)commands
{
  type metadata accessor for CRLCommand();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = [(CRLCommandGroup *)self init];
  v6 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  *(v5 + v6) = v4;

  return v5;
}

- (NSString)actionString
{
  selfCopy = self;
  sub_10097D1AC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)setActionString:(id)string
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC8Freeform15CRLCommandGroup__actionString);
  *v5 = v4;
  v5[1] = v6;
}

- (BOOL)supportsSimultaneousExecutionWithOtherCommands
{
  selfCopy = self;
  v3 = sub_10097DB74();

  return v3;
}

- (BOOL)isEmpty
{
  selfCopy = self;
  v3 = sub_10097DCE4();

  return v3 & 1;
}

- (void)addCommandIfNotNil:(id)nil
{
  nilCopy = nil;
  selfCopy = self;
  sub_10097DE1C(nil);
}

- (void)addCommand:(id)command
{
  v5 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  commandCopy = command;
  selfCopy = self;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(self + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(self + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

- (void)addCommands:(id)commands
{
  type metadata accessor for CRLCommand();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  selfCopy = self;
  sub_100799F10(v4);
  swift_endAccess();
}

- (_TtC8Freeform15CRLCommandGroup)init
{
  *(self + OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands) = _swiftEmptyArrayStorage;
  v3 = (self + OBJC_IVAR____TtC8Freeform15CRLCommandGroup__actionString);
  v4 = type metadata accessor for CRLCommandGroup();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(CRLCommand *)&v6 init];
}

@end