@interface CollectionViewTableFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGSize)collectionViewContentSize;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
- (void)setSectionFootersPinToVisibleBounds:(BOOL)bounds;
- (void)setSectionHeadersPinToVisibleBounds:(BOOL)bounds;
@end

@implementation CollectionViewTableFlowLayout

- (void)setSectionHeadersPinToVisibleBounds:(BOOL)bounds
{
  selfCopy = self;
  sub_10025A0D8();
}

- (void)setSectionFootersPinToVisibleBounds:(BOOL)bounds
{
  selfCopy = self;
  sub_10025A1F8();
}

- (void)prepareLayout
{
  selfCopy = self;
  sub_100258B10();
}

- (CGSize)collectionViewContentSize
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v2 = v10.receiver;
  [(CollectionViewTableFlowLayout *)&v10 collectionViewContentSize];
  v4 = v3;
  v6 = v5;
  v7 = *&v2[OBJC_IVAR____TtC8AppStore29CollectionViewTableFlowLayout_globalHeaderSize + 8];

  v8 = v6 + v7;
  v9 = v4;
  result.height = v8;
  result.width = v9;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = sub_100258D88();

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = sub_10025935C(x, y, width, height);

  if (v8)
  {
    sub_10025A08C();
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v8 = sub_1002599BC(x, y, width, height);

  return v8 & 1;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v8 = sub_100259B54(x, y, width, height);

  return v8;
}

- (void)invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_100259DF8(contextCopy);
}

@end