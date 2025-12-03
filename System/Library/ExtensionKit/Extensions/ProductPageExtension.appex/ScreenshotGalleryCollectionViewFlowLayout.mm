@interface ScreenshotGalleryCollectionViewFlowLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (_TtC20ProductPageExtension41ScreenshotGalleryCollectionViewFlowLayout)init;
- (_TtC20ProductPageExtension41ScreenshotGalleryCollectionViewFlowLayout)initWithCoder:(id)coder;
- (void)dealloc;
- (void)panGestureRecognizedBy:(id)by;
- (void)prepareForTransitionToLayout:(id)layout;
- (void)prepareLayout;
@end

@implementation ScreenshotGalleryCollectionViewFlowLayout

- (_TtC20ProductPageExtension41ScreenshotGalleryCollectionViewFlowLayout)init
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
  v4 = sub_10075E11C();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v7.receiver = self;
  v7.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  v5 = [(ScreenshotGalleryCollectionViewFlowLayout *)&v7 init];
  [(ScreenshotGalleryCollectionViewFlowLayout *)v5 setScrollDirection:1];
  return v5;
}

- (_TtC20ProductPageExtension41ScreenshotGalleryCollectionViewFlowLayout)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
  v5 = sub_10075E11C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)dealloc
{
  selfCopy = self;
  collectionView = [(ScreenshotGalleryCollectionViewFlowLayout *)selfCopy collectionView];
  if (collectionView)
  {
    v4 = collectionView;
    panGestureRecognizer = [collectionView panGestureRecognizer];

    [panGestureRecognizer removeTarget:selfCopy action:0];
  }

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  [(ScreenshotGalleryCollectionViewFlowLayout *)&v6 dealloc];
}

- (void)prepareLayout
{
  selfCopy = self;
  sub_10075C0DC();
}

- (void)prepareForTransitionToLayout:(id)layout
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  layoutCopy = layout;
  v5 = v9.receiver;
  [(ScreenshotGalleryCollectionViewFlowLayout *)&v9 prepareForTransitionToLayout:layoutCopy];
  collectionView = [v5 collectionView];
  if (collectionView)
  {
    v7 = collectionView;
    panGestureRecognizer = [collectionView panGestureRecognizer];

    [panGestureRecognizer removeTarget:v5 action:0];
  }
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = offset.y;
  v7 = offset.x;
  selfCopy = self;
  sub_10075C2E8(v7, v6, x, y);
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)panGestureRecognizedBy:(id)by
{
  byCopy = by;
  selfCopy = self;
  sub_10075C98C(byCopy);
}

@end