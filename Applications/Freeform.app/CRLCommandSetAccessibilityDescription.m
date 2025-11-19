@interface CRLCommandSetAccessibilityDescription
- (NSString)accessibilityDescription;
- (NSUUID)id;
- (_TtC8Freeform37CRLCommandSetAccessibilityDescription)init;
- (_TtC8Freeform37CRLCommandSetAccessibilityDescription)initWithBoardItem:(id)a3 accessibilityDescription:(id)a4;
- (_TtC8Freeform37CRLCommandSetAccessibilityDescription)initWithId:(id)a3 accessibilityDescription:(id)a4;
@end

@implementation CRLCommandSetAccessibilityDescription

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform37CRLCommandSetAccessibilityDescription_id, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (NSString)accessibilityDescription
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC8Freeform37CRLCommandSetAccessibilityDescription)initWithId:(id)a3 accessibilityDescription:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  (*(v6 + 16))(self + OBJC_IVAR____TtC8Freeform37CRLCommandSetAccessibilityDescription_id, v8, v5);
  v12 = (self + OBJC_IVAR____TtC8Freeform37CRLCommandSetAccessibilityDescription_accessibilityDescription);
  *v12 = v9;
  v12[1] = v11;
  v13 = type metadata accessor for CRLCommandSetAccessibilityDescription();
  v16.receiver = self;
  v16.super_class = v13;
  v14 = [(CRLCommand *)&v16 init];
  (*(v6 + 8))(v8, v5);
  return v14;
}

- (_TtC8Freeform37CRLCommandSetAccessibilityDescription)initWithBoardItem:(id)a3 accessibilityDescription:(id)a4
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *a3) + 0x88))(v9);
  v12 = a3;
  v13 = a4;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v15 = [(CRLCommandSetAccessibilityDescription *)self initWithId:isa accessibilityDescription:v13];

  return v15;
}

- (_TtC8Freeform37CRLCommandSetAccessibilityDescription)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end