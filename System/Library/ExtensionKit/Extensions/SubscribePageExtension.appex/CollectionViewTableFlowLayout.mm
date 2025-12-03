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
  sub_1004BE398();
}

- (void)setSectionFootersPinToVisibleBounds:(BOOL)bounds
{
  selfCopy = self;
  sub_1004BE4B8();
}

- (void)prepareLayout
{
  selfCopy = self;
  sub_1004BCE1C();
}

- (CGSize)collectionViewContentSize
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v2 = v10.receiver;
  [(CollectionViewTableFlowLayout *)&v10 collectionViewContentSize];
  v4 = v3;
  v6 = v5;
  v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8];

  v8 = v6 + v7;
  v9 = v4;
  result.height = v8;
  result.width = v9;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = sub_1007417F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  selfCopy = self;
  v9 = sub_1004BD094();

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
  v8 = sub_1004BD668(x, y, width, height);

  if (v8)
  {
    sub_1000E5AA4();
    v9.super.isa = sub_100753294().super.isa;
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
  v8 = sub_1004BDCC8(x, y, width, height);

  return v8 & 1;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v8 = sub_1004BDE60(x, y, width, height);

  return v8;
}

- (void)invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1004BE104(contextCopy);
}

@end