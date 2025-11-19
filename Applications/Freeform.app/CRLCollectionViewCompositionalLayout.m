@interface CRLCollectionViewCompositionalLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGSize)collectionViewContentSize;
- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSection:(id)a3;
- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSection:(id)a3 configuration:(id)a4;
- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSectionProvider:(id)a3;
- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)prepareLayout;
@end

@implementation CRLCollectionViewCompositionalLayout

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_1000710F8(x, y, width, height);

  return v8 & 1;
}

- (void)prepareLayout
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_coreLayout);
  v3 = self;

  sub_1000757A8(v3, v2, v3);
}

- (CGSize)collectionViewContentSize
{
  v2 = self;
  sub_10007752C();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v7 = v15.receiver;
  v8 = [(CRLCollectionViewCompositionalLayout *)&v15 layoutAttributesForElementsInRect:x, y, width, height];
  if (v8)
  {
    v9 = v8;
    sub_10007775C();
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = sub_1000777A8(v10);

    if (v11)
    {
      isa = Array._bridgeToObjectiveC()().super.isa;

      v13 = isa;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  v11 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v16.receiver = v10;
  v16.super_class = ObjectType;
  v13 = [(CRLCollectionViewCompositionalLayout *)&v16 layoutAttributesForSupplementaryViewOfKind:v11 atIndexPath:isa];

  if (v13)
  {

    v14 = v13;
    v13 = sub_100719788(v13);
  }

  else
  {
  }

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSection:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSection:(id)a3 configuration:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSectionProvider:(id)a3
{
  _Block_copy(a3);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  _Block_copy(a3);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end