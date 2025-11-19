@interface BrowseCollectionViewFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGPoint)_contentOffsetFromProposedContentOffset:(CGPoint)a3 forScrollingToItemAtIndexPath:(id)a4 atScrollPosition:(unint64_t)a5;
- (CGSize)collectionViewContentSize;
- (_TtC16MusicApplication30BrowseCollectionViewFlowLayout)init;
- (_TtC16MusicApplication30BrowseCollectionViewFlowLayout)initWithCoder:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
@end

@implementation BrowseCollectionViewFlowLayout

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  v3 = self;
  v4 = sub_2AC344();

  return v4 & 1;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_2AC448(x, y, width, height);
  v9 = v8;

  return v9;
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2AC768(v4);
}

- (void)prepareLayout
{
  v2 = self;
  sub_2ACEF4();
}

- (CGSize)collectionViewContentSize
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for BrowseCollectionViewFlowLayout();
  v2 = v10.receiver;
  [(BrowseCollectionViewFlowLayout *)&v10 collectionViewContentSize];
  v4 = v3;
  v6 = v5 + *&v2[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalHeaderHeight];
  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight];

  v8 = v6 + v7;
  v9 = v4;
  result.height = v8;
  result.width = v9;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_2AD0E4(x, y, width, height);

  if (v8)
  {
    sub_2AED30();
    v9.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v9 = a3;
  v10 = self;
  v11 = sub_2ADD4C();

  (*(v6 + 8))(v8, v5);

  return v11;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB92A0();
  v13 = v12;
  sub_AB3790();
  v14 = a3;
  v15 = a4;
  v16 = self;
  v17 = sub_2ADF84(v11, v13);

  (*(v8 + 8))(v10, v7);

  return v17;
}

- (CGPoint)_contentOffsetFromProposedContentOffset:(CGPoint)a3 forScrollingToItemAtIndexPath:(id)a4 atScrollPosition:(unint64_t)a5
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v12 = a4;
  v13 = self;
  sub_2AE734(v11, a5);
  v15 = v14;
  v17 = v16;

  (*(v9 + 8))(v11, v8);
  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (_TtC16MusicApplication30BrowseCollectionViewFlowLayout)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_customSectionHeadersPinToVisibleBounds) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalHeaderHeight) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_returnedSupplementaryViewIndexPaths;
  *(&self->super.super.super.isa + v3) = sub_98FF4(_swiftEmptyArrayStorage);
  v5.receiver = self;
  v5.super_class = type metadata accessor for BrowseCollectionViewFlowLayout();
  return [(BrowseCollectionViewFlowLayout *)&v5 init];
}

- (_TtC16MusicApplication30BrowseCollectionViewFlowLayout)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_customSectionHeadersPinToVisibleBounds) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalHeaderHeight) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_returnedSupplementaryViewIndexPaths;
  v5 = a3;
  *(&self->super.super.super.isa + v4) = sub_98FF4(_swiftEmptyArrayStorage);
  v8.receiver = self;
  v8.super_class = type metadata accessor for BrowseCollectionViewFlowLayout();
  v6 = [(BrowseCollectionViewFlowLayout *)&v8 initWithCoder:v5];

  return v6;
}

@end