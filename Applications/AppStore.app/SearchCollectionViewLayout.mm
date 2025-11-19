@interface SearchCollectionViewLayout
+ (Class)layoutAttributesClass;
- (CGSize)collectionViewContentSize;
- (_TtC8AppStore26SearchCollectionViewLayout)initWithCoder:(id)a3;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)prepareLayout;
@end

@implementation SearchCollectionViewLayout

+ (Class)layoutAttributesClass
{
  type metadata accessor for SearchCollectionLayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

- (_TtC8AppStore26SearchCollectionViewLayout)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore26SearchCollectionViewLayout_backgroundCornerRadius) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore26SearchCollectionViewLayout_pendingPrepareObserver);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)collectionViewContentSize
{
  v2 = self;
  v3 = sub_100326394();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  x = a3.origin.x;
  v4 = self;
  v5 = sub_100326550(x);

  if (v5)
  {
    sub_100005744(0, &qword_1009759D0);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = type metadata accessor for SearchCollectionViewLayout();
  v14.receiver = v8;
  v14.super_class = v10;
  v11 = [(SearchCollectionViewLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    v12 = sub_1003271C4(v11);

    v8 = v11;
  }

  else
  {
    v12 = 0;
  }

  (*(v5 + 8))(v7, v4);

  return v12;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = self;
  v13 = sub_100327654(v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (void)prepareLayout
{
  v2 = self;
  sub_100328560();
}

@end