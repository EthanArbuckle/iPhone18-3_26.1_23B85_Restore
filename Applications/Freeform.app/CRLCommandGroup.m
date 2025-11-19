@interface CRLCommandGroup
- (BOOL)committed;
- (BOOL)isEmpty;
- (BOOL)supportsSimultaneousExecutionWithOtherCommands;
- (NSArray)commands;
- (NSString)actionString;
- (_TtC8Freeform15CRLCommandGroup)init;
- (_TtC8Freeform15CRLCommandGroup)initWithCommands:(id)a3;
- (void)addCommand:(id)a3;
- (void)addCommandIfNotNil:(id)a3;
- (void)addCommands:(id)a3;
- (void)setActionString:(id)a3;
- (void)setCommands:(id)a3;
@end

@implementation CRLCommandGroup

- (BOOL)committed
{
  v2 = self;
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

- (void)setCommands:(id)a3
{
  type metadata accessor for CRLCommand();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (_TtC8Freeform15CRLCommandGroup)initWithCommands:(id)a3
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
  v2 = self;
  sub_10097D1AC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)setActionString:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC8Freeform15CRLCommandGroup__actionString);
  *v5 = v4;
  v5[1] = v6;
}

- (BOOL)supportsSimultaneousExecutionWithOtherCommands
{
  v2 = self;
  v3 = sub_10097DB74();

  return v3;
}

- (BOOL)isEmpty
{
  v2 = self;
  v3 = sub_10097DCE4();

  return v3 & 1;
}

- (void)addCommandIfNotNil:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10097DE1C(a3);
}

- (void)addCommand:(id)a3
{
  v5 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  v6 = a3;
  v7 = self;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(self + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(self + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

- (void)addCommands:(id)a3
{
  type metadata accessor for CRLCommand();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  v5 = self;
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