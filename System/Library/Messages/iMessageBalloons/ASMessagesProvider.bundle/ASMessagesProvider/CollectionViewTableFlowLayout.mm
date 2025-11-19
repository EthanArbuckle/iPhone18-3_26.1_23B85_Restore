@interface CollectionViewTableFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGSize)collectionViewContentSize;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
- (void)setSectionFootersPinToVisibleBounds:(BOOL)a3;
- (void)setSectionHeadersPinToVisibleBounds:(BOOL)a3;
@end

@implementation CollectionViewTableFlowLayout

- (void)setSectionHeadersPinToVisibleBounds:(BOOL)a3
{
  v3 = self;
  sub_165A58();
}

- (void)setSectionFootersPinToVisibleBounds:(BOOL)a3
{
  v3 = self;
  sub_165B78();
}

- (void)prepareLayout
{
  v2 = self;
  sub_1644DC();
}

- (CGSize)collectionViewContentSize
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v2 = v10.receiver;
  [(CollectionViewTableFlowLayout *)&v10 collectionViewContentSize];
  v4 = v3;
  v6 = v5;
  v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize + 8];

  v8 = v6 + v7;
  v9 = v4;
  result.height = v8;
  result.width = v9;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v8 = self;
  v9 = sub_164754();

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_164D28(x, y, width, height);

  if (v8)
  {
    sub_E59C4();
    v9.super.isa = sub_769450().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_165388(x, y, width, height);

  return v8 & 1;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_165520(x, y, width, height);

  return v8;
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1657C4(v4);
}

@end