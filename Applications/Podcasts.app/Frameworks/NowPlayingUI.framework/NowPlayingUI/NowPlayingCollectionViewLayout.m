@interface NowPlayingCollectionViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (_TtC12NowPlayingUI30NowPlayingCollectionViewLayout)initWithCoder:(id)a3;
- (id)gestureRecognizerViewForSwipeActionController:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4;
@end

@implementation NowPlayingCollectionViewLayout

- (_TtC12NowPlayingUI30NowPlayingCollectionViewLayout)initWithCoder:(id)a3
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

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
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

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1448DC();
  v11 = v10;
  sub_140BAC();
  v12 = self;
  v13 = sub_A2640(v9, v11);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (id)gestureRecognizerViewForSwipeActionController:(id)a3
{
  if (self->UICollectionViewTableLayout_opaque[OBJC_IVAR____TtC12NowPlayingUI30NowPlayingCollectionViewLayout_cellSwipeActionEnabled] == 1)
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = swift_getObjectType();
    v6 = [(NowPlayingCollectionViewLayout *)&v8 gestureRecognizerViewForSwipeActionController:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = sub_140C2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v11 = self;
  v12 = sub_A2B74(x, y);

  (*(v8 + 8))(v10, v7);

  return v12;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  v3 = self;
  v4 = [(NowPlayingCollectionViewLayout *)v3 collectionView];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  [v4 bounds];
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

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_A32E4(x, y, width, height);

  return v8;
}

@end