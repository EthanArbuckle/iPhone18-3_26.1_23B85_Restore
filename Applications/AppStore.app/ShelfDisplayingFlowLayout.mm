@interface ShelfDisplayingFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (_TtC8AppStore25ShelfDisplayingFlowLayout)initWithCoder:(id)coder;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation ShelfDisplayingFlowLayout

- (_TtC8AppStore25ShelfDisplayingFlowLayout)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  *(&self->super.super.super.isa + v4) = sub_100398C2C(_swiftEmptyArrayStorage);
  v5 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnOrigins;
  *(&self->super.super.super.isa + v5) = sub_100398D0C(_swiftEmptyArrayStorage);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareLayout
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v2 = v3.receiver;
  [(ShelfDisplayingFlowLayout *)&v3 prepareLayout];
  sub_10013CA00();
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_10013B9FC(x, y, width, height);
  v9 = v8;

  if (v9)
  {
    sub_100005744(0, &qword_1009759D0);
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  return v10.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = sub_10013BF18();

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (v10 == 0xD00000000000001FLL && 0x8000000100802E30 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    selfCopy = self;
    v14 = sub_10013C60C();
  }

  else
  {
    selfCopy2 = self;
    kindCopy = kind;

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v18 = type metadata accessor for ShelfDisplayingFlowLayout();
    v20.receiver = selfCopy2;
    v20.super_class = v18;
    v14 = [(ShelfDisplayingFlowLayout *)&v20 layoutAttributesForDecorationViewOfKind:kindCopy atIndexPath:isa];
  }

  (*(v7 + 8))(v9, v6);

  return v14;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  collectionView = [(ShelfDisplayingFlowLayout *)selfCopy collectionView];
  if (collectionView)
  {
    v9 = collectionView;
    [collectionView bounds];
    v11 = v10;
    v13 = v12;

    if (v11 != width)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0.0;
    if (width != 0.0)
    {
      goto LABEL_7;
    }
  }

  if (v13 == height)
  {
    v16.receiver = selfCopy;
    v16.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
    height = [(ShelfDisplayingFlowLayout *)&v16 shouldInvalidateLayoutForBoundsChange:x, y, width, height];

    return height;
  }

LABEL_7:

  return 1;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v8 = sub_10013C470(x, y, width, height);

  return v8;
}

@end