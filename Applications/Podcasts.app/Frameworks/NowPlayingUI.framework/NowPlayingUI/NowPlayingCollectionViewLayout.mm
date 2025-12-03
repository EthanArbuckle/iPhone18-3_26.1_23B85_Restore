@interface NowPlayingCollectionViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (_TtC12NowPlayingUI30NowPlayingCollectionViewLayout)initWithCoder:(id)coder;
- (id)gestureRecognizerViewForSwipeActionController:(id)controller;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position;
@end

@implementation NowPlayingCollectionViewLayout

- (_TtC12NowPlayingUI30NowPlayingCollectionViewLayout)initWithCoder:(id)coder
{
  self->UICollectionViewTableLayout_opaque[OBJC_IVAR____TtC12NowPlayingUI30NowPlayingCollectionViewLayout_cellSwipeActionEnabled] = 1;
  *&self->UICollectionViewTableLayout_opaque[OBJC_IVAR____TtC12NowPlayingUI30NowPlayingCollectionViewLayout_orientationWhenLastInvalidatedTableLayout] = 0;
  v3 = &self->UICollectionViewTableLayout_opaque[OBJC_IVAR____TtC12NowPlayingUI30NowPlayingCollectionViewLayout__lastBackgroundDecorationRect];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  result = sub_1452FC();
  __break(1u);
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = sub_A23AC(x, y, width, height);

  if (v8)
  {
    sub_A3FC8();
    v9.super.isa = sub_1449CC().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1448DC();
  v11 = v10;
  sub_140BAC();
  selfCopy = self;
  v13 = sub_A2640(v9, v11);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (id)gestureRecognizerViewForSwipeActionController:(id)controller
{
  if (self->UICollectionViewTableLayout_opaque[OBJC_IVAR____TtC12NowPlayingUI30NowPlayingCollectionViewLayout_cellSwipeActionEnabled] == 1)
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = swift_getObjectType();
    v6 = [(NowPlayingCollectionViewLayout *)&v8 gestureRecognizerViewForSwipeActionController:controller];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v7 = sub_140C2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  selfCopy = self;
  v12 = sub_A2B74(x, y);

  (*(v8 + 8))(v10, v7);

  return v12;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  selfCopy = self;
  collectionView = [(NowPlayingCollectionViewLayout *)selfCopy collectionView];
  if (!collectionView)
  {
    goto LABEL_5;
  }

  v5 = collectionView;
  [collectionView bounds];
  if ((sub_144F5C() & 1) == 0)
  {

LABEL_5:
    v7 = 1;
    return v7 & 1;
  }

  [v5 bounds];
  v6 = sub_141AFC();

  v7 = v6 ^ 1;
  return v7 & 1;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v8 = sub_A32E4(x, y, width, height);

  return v8;
}

@end