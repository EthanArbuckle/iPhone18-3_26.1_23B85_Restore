@interface CRLWPShapeItem
- (BOOL)allowsChangeShape;
- (BOOL)hasVisibleContents;
- (BOOL)isAllowedOnSurface;
- (BOOL)isAutogrowingTextBox;
- (BOOL)shouldBeDeletedWhenEndEditing;
- (BOOL)shrinkToFit;
- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)geometry size:(id)size;
- (CGPoint)autosizePositionOffsetForGeometry:(id)geometry dynamicallyDraggedLayout:(id)layout;
- (CGPoint)autosizePositionOffsetForGeometry:(id)geometry size:(CGSize)size;
- (NSArray)childInfos;
- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem;
- (NSArray)stringContentForSearch;
- (_TtC8Freeform12CRLWPStorage)text;
- (float)textInset;
- (id)childEnumerator;
- (id)childEnumeratorForUserSearch;
- (id)infoForSelectionPath:(id)path;
- (id)promisedStringForCopy;
- (int64_t)verticalAlignment;
- (void)prepareBoardItemForConnectorModeDuplication;
- (void)setShrinkToFit:(BOOL)fit;
- (void)setTextInset:(float)inset;
- (void)setTextStorage:(id)storage;
- (void)setVerticalAlignment:(int64_t)alignment;
@end

@implementation CRLWPShapeItem

- (void)setTextStorage:(id)storage
{
  v4 = *&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  *&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage] = storage;
  storageCopy = storage;
}

- (_TtC8Freeform12CRLWPStorage)text
{
  result = *&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (BOOL)hasVisibleContents
{
  selfCopy = self;
  sub_100AB06A0();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isAutogrowingTextBox
{
  selfCopy = self;
  v3 = sub_100AB0948();

  return v3 & 1;
}

- (BOOL)isAllowedOnSurface
{
  selfCopy = self;
  v3 = sub_100AB0C14();

  return v3 & 1;
}

- (BOOL)shouldBeDeletedWhenEndEditing
{
  selfCopy = self;
  v3 = sub_100AB0E00();

  return v3;
}

- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_100AB06A0();
  if (v8)
  {
    sub_1005B981C(&unk_1019F61D0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10146C6B0;
    static UTType.utf8PlainText.getter();
    v10 = UTType.identifier.getter();
    v12 = v11;
    (*(v4 + 8))(v6, v3);
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
  }

  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (id)promisedStringForCopy
{
  selfCopy = self;
  sub_100AB10B0();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)prepareBoardItemForConnectorModeDuplication
{
  v2 = *&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  if (!v2)
  {
    goto LABEL_9;
  }

  selfCopy = self;
  v8 = v2;
  range = [v8 range];
  v6 = __OFADD__(range, v5);
  v7 = range + v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 < range)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  sub_100A2E55C(range, v7, 0, 0xE000000000000000, 1);
}

- (float)textInset
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLWPShapeItemData(0);
  v5 = *swift_dynamicCastClassUnconditional();
  (*(v5 + 896))();
  sub_1005B981C(&unk_101A0D9C0);
  CRRegister.wrappedValue.getter();
  sub_100AB78F8(v4, type metadata accessor for CRLWPShapeItemCRDTData);
  return *&v7[3];
}

- (void)setTextInset:(float)inset
{
  selfCopy = self;
  if (sub_1011255D0(selfCopy))
  {
    type metadata accessor for CRLWPShapeItemData(0);
    v3 = *(*swift_dynamicCastClassUnconditional() + 912);

    v4 = v3(v6);
    type metadata accessor for CRLWPShapeItemCRDTData(0);
    sub_1005B981C(&unk_101A0D9C0);
    CRRegister.wrappedValue.setter();
    v4(v6, 0);
  }

  else
  {
  }
}

- (int64_t)verticalAlignment
{
  type metadata accessor for CRLWPShapeItemData(0);
  swift_dynamicCastClassUnconditional();
  selfCopy = self;

  v4 = sub_100693C3C();

  return v4;
}

- (void)setVerticalAlignment:(int64_t)alignment
{
  selfCopy = self;
  sub_100AB2840();
}

- (BOOL)shrinkToFit
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CRLWPShapeItemData(0);
  v5 = *swift_dynamicCastClassUnconditional();
  (*(v5 + 896))();
  type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  sub_100AB78F8(v4, type metadata accessor for CRLWPShapeItemCRDTData);
  return v7[15];
}

- (void)setShrinkToFit:(BOOL)fit
{
  selfCopy = self;
  if (sub_1011255D0(selfCopy))
  {
    type metadata accessor for CRLWPShapeItemData(0);
    v3 = *(*swift_dynamicCastClassUnconditional() + 912);

    v4 = v3(v6);
    type metadata accessor for CRLWPShapeItemCRDTData(0);
    type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
    sub_1005B981C(&qword_101A2C810);
    CRRegister.wrappedValue.setter();
    v4(v6, 0);
  }

  else
  {
  }
}

- (CGPoint)autosizePositionOffsetForGeometry:(id)geometry dynamicallyDraggedLayout:(id)layout
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    geometryCopy = geometry;
    layoutCopy = layout;
    selfCopy = self;
    [v8 pathBoundsWithoutStroke];
    v14 = sub_100AB2F50(geometryCopy, v12, v13);
    v16 = v15;
  }

  else
  {
    v14 = 0.0;
    v16 = 0.0;
  }

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)autosizePositionOffsetForGeometry:(id)geometry size:(CGSize)size
{
  height = size.height;
  width = size.width;
  geometryCopy = geometry;
  selfCopy = self;
  v9 = sub_100AB2F50(geometryCopy, width, height);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)geometry size:(id)size
{
  height = a5.height;
  width = a5.width;
  sizeCopy = size;
  selfCopy = self;
  if ([sizeCopy widthValid])
  {
    v11 = width;
  }

  else
  {
    v11 = 0.0;
  }

  if ([sizeCopy heightValid])
  {
    v12 = height;
  }

  else
  {
    v12 = 0.0;
  }

  [sizeCopy transformBasedOnRect:{0.0, 0.0, v11, v12}];
  tx = v24.tx;
  ty = v24.ty;
  v19 = *&v24.c;
  v21 = *&v24.a;
  v15 = sub_100AB2F50(sizeCopy, width, height);
  *&v24.a = v21;
  *&v24.c = v19;
  v24.tx = tx;
  v24.ty = ty;
  CGAffineTransformTranslate(&v23, &v24, -v15, -v16);
  v20 = *&v23.c;
  v22 = *&v23.a;
  v18 = *&v23.tx;

  *&retstr->a = v22;
  *&retstr->c = v20;
  *&retstr->tx = v18;
  return result;
}

- (BOOL)allowsChangeShape
{
  selfCopy = self;
  v3 = sub_100AB346C();

  return v3 & 1;
}

- (NSArray)stringContentForSearch
{
  selfCopy = self;
  sub_100AB6F14();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSArray)childInfos
{
  v2 = *&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  if (v2)
  {
    sub_1005B981C(&unk_1019F4D60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101465920;
    *(v3 + 32) = v2;
  }

  v4 = v2;
  sub_1005B981C(&qword_1019F5720);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (id)infoForSelectionPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  v6 = sub_100AB73DC(pathCopy);

  return v6;
}

- (id)childEnumerator
{
  selfCopy = self;
  childInfos = [(CRLWPShapeItem *)selfCopy childInfos];
  sub_1005B981C(&qword_1019F5720);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1006410F4(v4);

  v5 = objc_allocWithZone(NSArray);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithArray:isa];

  objectEnumerator = [v7 objectEnumerator];

  return objectEnumerator;
}

- (id)childEnumeratorForUserSearch
{
  selfCopy = self;
  v3 = sub_100AB7704();

  return v3;
}

@end