@interface CRLBoardSelection
- (BOOL)isEqual:(id)a3;
- (_TtC8Freeform17CRLBoardSelection)init;
- (int64_t)hash;
@end

@implementation CRLBoardSelection

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v5 = self;
  }

  sub_100601584(v11, v9);
  if (!v10)
  {
    sub_1005E09AC(v9);
    goto LABEL_8;
  }

  type metadata accessor for CRLBoardSelection();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = 1;
LABEL_9:
  sub_1005E09AC(v11);
  return v6;
}

- (int64_t)hash
{
  type metadata accessor for CRLBoardSelection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100017CD8();
  v4 = StringProtocol.hash.getter();

  return v4;
}

- (_TtC8Freeform17CRLBoardSelection)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLBoardSelection();
  return [(CRLBoardSelection *)&v3 init];
}

@end