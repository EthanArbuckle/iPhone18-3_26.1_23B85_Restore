@interface ScreenshotGalleryCollectionViewFlowLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (_TtC22SubscribePageExtension41ScreenshotGalleryCollectionViewFlowLayout)init;
- (_TtC22SubscribePageExtension41ScreenshotGalleryCollectionViewFlowLayout)initWithCoder:(id)a3;
- (void)dealloc;
- (void)panGestureRecognizedBy:(id)a3;
- (void)prepareForTransitionToLayout:(id)a3;
- (void)prepareLayout;
@end

@implementation ScreenshotGalleryCollectionViewFlowLayout

- (_TtC22SubscribePageExtension41ScreenshotGalleryCollectionViewFlowLayout)init
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
  v4 = sub_1007417F4();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v7.receiver = self;
  v7.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  v5 = [(ScreenshotGalleryCollectionViewFlowLayout *)&v7 init];
  [(ScreenshotGalleryCollectionViewFlowLayout *)v5 setScrollDirection:1];
  return v5;
}

- (_TtC22SubscribePageExtension41ScreenshotGalleryCollectionViewFlowLayout)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
  v5 = sub_1007417F4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v2 = self;
  v3 = [(ScreenshotGalleryCollectionViewFlowLayout *)v2 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 panGestureRecognizer];

    [v5 removeTarget:v2 action:0];
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  [(ScreenshotGalleryCollectionViewFlowLayout *)&v6 dealloc];
}

- (void)prepareLayout
{
  v2 = self;
  sub_1005FAA30();
}

- (void)prepareForTransitionToLayout:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  v4 = a3;
  v5 = v9.receiver;
  [(ScreenshotGalleryCollectionViewFlowLayout *)&v9 prepareForTransitionToLayout:v4];
  v6 = [v5 collectionView];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 panGestureRecognizer];

    [v8 removeTarget:v5 action:0];
  }
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v8 = self;
  sub_1005FAC3C(v7, v6, x, y);
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)panGestureRecognizedBy:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005FB2E0(v4);
}

@end