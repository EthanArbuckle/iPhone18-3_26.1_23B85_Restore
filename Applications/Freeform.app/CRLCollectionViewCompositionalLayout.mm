@interface CRLCollectionViewCompositionalLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGSize)collectionViewContentSize;
- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSection:(id)section;
- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSectionProvider:(id)provider;
- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation CRLCollectionViewCompositionalLayout

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v8 = sub_1000710F8(x, y, width, height);

  return v8 & 1;
}

- (void)prepareLayout
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_coreLayout);
  selfCopy = self;

  sub_1000757A8(selfCopy, v2, selfCopy);
}

- (CGSize)collectionViewContentSize
{
  selfCopy = self;
  sub_10007752C();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v7 = v15.receiver;
  height = [(CRLCollectionViewCompositionalLayout *)&v15 layoutAttributesForElementsInRect:x, y, width, height];
  if (height)
  {
    v9 = height;
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

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v11 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v16.receiver = selfCopy;
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

- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSection:(id)section
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSection:(id)section configuration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSectionProvider:(id)provider
{
  _Block_copy(provider);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform36CRLCollectionViewCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  _Block_copy(provider);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end