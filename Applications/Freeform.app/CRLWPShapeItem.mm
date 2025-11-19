@interface CRLWPShapeItem
- (BOOL)allowsChangeShape;
- (BOOL)hasVisibleContents;
- (BOOL)isAllowedOnSurface;
- (BOOL)isAutogrowingTextBox;
- (BOOL)shouldBeDeletedWhenEndEditing;
- (BOOL)shrinkToFit;
- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)a3 size:(id)a4;
- (CGPoint)autosizePositionOffsetForGeometry:(id)a3 dynamicallyDraggedLayout:(id)a4;
- (CGPoint)autosizePositionOffsetForGeometry:(id)a3 size:(CGSize)a4;
- (NSArray)childInfos;
- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem;
- (NSArray)stringContentForSearch;
- (_TtC8Freeform12CRLWPStorage)text;
- (float)textInset;
- (id)childEnumerator;
- (id)childEnumeratorForUserSearch;
- (id)infoForSelectionPath:(id)a3;
- (id)promisedStringForCopy;
- (int64_t)verticalAlignment;
- (void)prepareBoardItemForConnectorModeDuplication;
- (void)setShrinkToFit:(BOOL)a3;
- (void)setTextInset:(float)a3;
- (void)setTextStorage:(id)a3;
- (void)setVerticalAlignment:(int64_t)a3;
@end

@implementation CRLWPShapeItem

- (void)setTextStorage:(id)a3
{
  v4 = *&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  *&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage] = a3;
  v3 = a3;
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
  v2 = self;
  sub_100AB06A0();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isAutogrowingTextBox
{
  v2 = self;
  v3 = sub_100AB0948();

  return v3 & 1;
}

- (BOOL)isAllowedOnSurface
{
  v2 = self;
  v3 = sub_100AB0C14();

  return v3 & 1;
}

- (BOOL)shouldBeDeletedWhenEndEditing
{
  v2 = self;
  v3 = sub_100AB0E00();

  return v3;
}

- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
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
  v2 = self;
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

  v3 = self;
  v8 = v2;
  v4 = [v8 range];
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 < v4)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  sub_100A2E55C(v4, v7, 0, 0xE000000000000000, 1);
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

- (void)setTextInset:(float)a3
{
  v5 = self;
  if (sub_1011255D0(v5))
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
  v3 = self;

  v4 = sub_100693C3C();

  return v4;
}

- (void)setVerticalAlignment:(int64_t)a3
{
  v3 = self;
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

- (void)setShrinkToFit:(BOOL)a3
{
  v5 = self;
  if (sub_1011255D0(v5))
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

- (CGPoint)autosizePositionOffsetForGeometry:(id)a3 dynamicallyDraggedLayout:(id)a4
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a3;
    v10 = a4;
    v11 = self;
    [v8 pathBoundsWithoutStroke];
    v14 = sub_100AB2F50(v9, v12, v13);
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

- (CGPoint)autosizePositionOffsetForGeometry:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = self;
  v9 = sub_100AB2F50(v7, width, height);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)a3 size:(id)a4
{
  height = a5.height;
  width = a5.width;
  v9 = a4;
  v10 = self;
  if ([v9 widthValid])
  {
    v11 = width;
  }

  else
  {
    v11 = 0.0;
  }

  if ([v9 heightValid])
  {
    v12 = height;
  }

  else
  {
    v12 = 0.0;
  }

  [v9 transformBasedOnRect:{0.0, 0.0, v11, v12}];
  tx = v24.tx;
  ty = v24.ty;
  v19 = *&v24.c;
  v21 = *&v24.a;
  v15 = sub_100AB2F50(v9, width, height);
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
  v2 = self;
  v3 = sub_100AB346C();

  return v3 & 1;
}

- (NSArray)stringContentForSearch
{
  v2 = self;
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

- (id)infoForSelectionPath:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100AB73DC(v4);

  return v6;
}

- (id)childEnumerator
{
  v2 = self;
  v3 = [(CRLWPShapeItem *)v2 childInfos];
  sub_1005B981C(&qword_1019F5720);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1006410F4(v4);

  v5 = objc_allocWithZone(NSArray);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithArray:isa];

  v8 = [v7 objectEnumerator];

  return v8;
}

- (id)childEnumeratorForUserSearch
{
  v2 = self;
  v3 = sub_100AB7704();

  return v3;
}

@end