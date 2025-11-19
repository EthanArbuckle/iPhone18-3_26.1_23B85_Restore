@interface ContainerDetailCollectionTableLayout
- (CGSize)collectionViewContentSize;
- (_TtC16MusicApplication36ContainerDetailCollectionTableLayout)init;
- (_TtC16MusicApplication36ContainerDetailCollectionTableLayout)initWithCoder:(id)a3;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4;
- (void)prepareLayout;
@end

@implementation ContainerDetailCollectionTableLayout

- (void)prepareLayout
{
  v3 = type metadata accessor for ContainerDetailCollectionTableLayout();
  v9.receiver = self;
  v9.super_class = v3;
  v4 = self;
  [(ContainerDetailCollectionTableLayout *)&v9 prepareLayout];
  v8.receiver = v4;
  v8.super_class = v3;
  [(ContainerDetailCollectionTableLayout *)&v8 collectionViewContentSize];
  v5 = &v4->UICollectionViewTableLayout_opaque[OBJC_IVAR____TtC16MusicApplication36ContainerDetailCollectionTableLayout__collectionViewContentSize];
  *v5 = v6;
  v5[1] = v7 + *&v4->UICollectionViewTableLayout_opaque[OBJC_IVAR____TtC16MusicApplication36ContainerDetailCollectionTableLayout_contentHeightAdjustment];
}

- (CGSize)collectionViewContentSize
{
  v2 = *&self->UICollectionViewTableLayout_opaque[OBJC_IVAR____TtC16MusicApplication36ContainerDetailCollectionTableLayout__collectionViewContentSize];
  v3 = *&self->contentHeightAdjustment[OBJC_IVAR____TtC16MusicApplication36ContainerDetailCollectionTableLayout__collectionViewContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v12 = a3;
  v13 = self;
  v14 = sub_28F43C(x, y);

  (*(v9 + 8))(v11, v8);

  return v14;
}

- (_TtC16MusicApplication36ContainerDetailCollectionTableLayout)init
{
  *&self->UICollectionViewTableLayout_opaque[OBJC_IVAR____TtC16MusicApplication36ContainerDetailCollectionTableLayout_contentHeightAdjustment] = 0;
  v3 = &self->UICollectionViewTableLayout_opaque[OBJC_IVAR____TtC16MusicApplication36ContainerDetailCollectionTableLayout__collectionViewContentSize];
  v4 = type metadata accessor for ContainerDetailCollectionTableLayout();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(ContainerDetailCollectionTableLayout *)&v6 init];
}

- (_TtC16MusicApplication36ContainerDetailCollectionTableLayout)initWithCoder:(id)a3
{
  *&self->UICollectionViewTableLayout_opaque[OBJC_IVAR____TtC16MusicApplication36ContainerDetailCollectionTableLayout_contentHeightAdjustment] = 0;
  v4 = &self->UICollectionViewTableLayout_opaque[OBJC_IVAR____TtC16MusicApplication36ContainerDetailCollectionTableLayout__collectionViewContentSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContainerDetailCollectionTableLayout();
  v5 = a3;
  v6 = [(ContainerDetailCollectionTableLayout *)&v8 initWithCoder:v5];

  return v6;
}

@end