@interface CRLPasteboardObject
- (BOOL)hasNativeText;
- (NSArray)boardItems;
- (NSString)description;
- (_TtC8Freeform19CRLPasteboardObject)init;
- (_TtC8Freeform19CRLPasteboardObject)initWithContext:(id)context;
- (id)makeTextboxFromCopiedTextWith:(id)with;
- (void)copyTextFrom:(id)from;
- (void)setBoardItems:(id)items;
@end

@implementation CRLPasteboardObject

- (_TtC8Freeform19CRLPasteboardObject)initWithContext:(id)context
{
  swift_getObjectType();
  v6[0] = 0x1000000000000;
  v6[1] = 0x2000400000000;
  v6[2] = 0x1000000000000;
  v6[3] = 0;
  v7 = 1;
  v4 = sub_100881284(context, v6);
  swift_deallocPartialClassInstance();
  return v4;
}

- (NSArray)boardItems
{
  type metadata accessor for CRLBoardItem(0);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setBoardItems:(id)items
{
  type metadata accessor for CRLBoardItem(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10087A324(v4);
}

- (void)copyTextFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_10087B4DC(fromCopy);
}

- (id)makeTextboxFromCopiedTextWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v6 = sub_10087BD0C(withCopy);

  return v6;
}

- (BOOL)hasNativeText
{
  v3 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData);
  v7 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_textCRDT;
  swift_beginAccess();
  sub_10000BE14(v6 + v7, v5, &unk_101A0B1C0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  LOBYTE(v6) = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_10000CAAC(v5, &unk_101A0B1C0);
  return v6;
}

- (_TtC8Freeform19CRLPasteboardObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  sub_10087FE2C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end