@interface CompositeComponentCollectionView
- (BOOL)_isEditing;
- (BOOL)beginInteractiveMovementForItemAtIndexPath:(id)a3;
- (BOOL)isEditing;
- (CGPoint)convertPoint:(CGPoint)a3 fromView:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toView:(id)a4;
- (CGRect)frame;
- (NSArray)indexPathsForVisibleItems;
- (NSArray)visibleCells;
- (UIEdgeInsets)contentInset;
- (_TtC12NowPlayingUI32CompositeComponentCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (id)dequeueReusableCellWithReuseIdentifier:(id)a3 forIndexPath:(id)a4;
- (id)dequeueReusableSupplementaryViewOfKind:(id)a3 withReuseIdentifier:(id)a4 forIndexPath:(id)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)indexPathForCell:(id)a3;
- (id)indexPathForItemAtPoint:(CGPoint)a3;
- (void)_invalidateLayoutWithContext:(id)a3;
- (void)bringSubviewToFront:(id)a3;
- (void)deselectItemAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)endInteractiveMovement;
- (void)layoutSubviews;
- (void)moveItemAtIndexPath:(id)a3 toIndexPath:(id)a4;
- (void)moveSection:(int64_t)a3 toSection:(int64_t)a4;
- (void)performBatchUpdates:(id)a3 completion:(id)a4;
- (void)registerClass:(Class)a3 forCellWithReuseIdentifier:(id)a4;
- (void)registerClass:(Class)a3 forSupplementaryViewOfKind:(id)a4 withReuseIdentifier:(id)a5;
- (void)reloadData;
- (void)scrollToItemAtIndexPath:(id)a3 atScrollPosition:(unint64_t)a4 animated:(BOOL)a5;
- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5;
- (void)sendSubviewToBack:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setEditing:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)updateInteractiveMovementTargetPosition:(CGPoint)a3;
@end

@implementation CompositeComponentCollectionView

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CompositeComponentCollectionView();
  [(CompositeComponentCollectionView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v9.receiver = self;
    v9.super_class = type metadata accessor for CompositeComponentCollectionView();
    [(CompositeComponentCollectionView *)&v9 setFrame:x, y, width, height];
  }
}

- (void)bringSubviewToFront:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_12C128(v4, &selRef_bringSubviewToFront_);
}

- (void)layoutSubviews
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v4.receiver = self;
    v4.super_class = type metadata accessor for CompositeComponentCollectionView();
    [(CompositeComponentCollectionView *)&v4 layoutSubviews];
  }
}

- (void)sendSubviewToBack:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_12C128(v4, &selRef_sendSubviewToBack_);
}

- (void)registerClass:(Class)a3 forCellWithReuseIdentifier:(id)a4
{
  if (a3)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  v6 = sub_1448DC();
  v8 = v7;
  v9 = self;
  sub_12C270(ObjCClassMetadata, v6, v8);
}

- (void)registerClass:(Class)a3 forSupplementaryViewOfKind:(id)a4 withReuseIdentifier:(id)a5
{
  if (a3)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  v7 = sub_1448DC();
  v9 = v8;
  v10 = sub_1448DC();
  v12 = v11;
  v13 = self;
  sub_12C4A0(ObjCClassMetadata, v7, v9, v10, v12);
}

- (id)dequeueReusableCellWithReuseIdentifier:(id)a3 forIndexPath:(id)a4
{
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1448DC();
  v11 = v10;
  sub_140BAC();
  v12 = self;
  v13 = sub_12C748(v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (id)dequeueReusableSupplementaryViewOfKind:(id)a3 withReuseIdentifier:(id)a4 forIndexPath:(id)a5
{
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1448DC();
  v12 = v11;
  v13 = sub_1448DC();
  v15 = v14;
  sub_140BAC();
  v16 = self;
  v17 = sub_12CC78(v10, v12, v13, v15, v9);

  (*(v7 + 8))(v9, v6);

  return v17;
}

- (NSArray)indexPathsForVisibleItems
{
  v2 = self;
  sub_12D320();

  sub_140C2C();
  v3.super.isa = sub_1449CC().super.isa;

  return v3.super.isa;
}

- (NSArray)visibleCells
{
  v2 = self;
  sub_12DCE8();

  sub_2B860(0, &qword_1CA670);
  v3.super.isa = sub_1449CC().super.isa;

  return v3.super.isa;
}

- (void)moveItemAtIndexPath:(id)a3 toIndexPath:(id)a4
{
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  sub_140BAC();
  sub_140BAC();
  v12 = self;
  sub_12EBE8(v11, v8);

  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
}

- (void)deselectItemAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v10 = self;
  sub_12F2C8(v9, a4);

  (*(v7 + 8))(v9, v6);
}

- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5
{
  v6 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  if (a3)
  {
    sub_140BAC();
    v12 = sub_140C2C();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_140C2C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = self;
  sub_12F6F8(v11, v6, a5);

  sub_15340(v11, &unk_1C4A80);
}

- (void)scrollToItemAtIndexPath:(id)a3 atScrollPosition:(unint64_t)a4 animated:(BOOL)a5
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v12 = self;
  sub_12FED0(v11, a4, a5);

  (*(v9 + 8))(v11, v8);
}

- (id)indexPathForItemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = self;
  sub_130318(v8, x, y);

  v10 = sub_140C2C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    isa = sub_140B9C().super.isa;
    (*(v11 + 8))(v8, v10);
    v13 = isa;
  }

  return v13;
}

- (id)indexPathForCell:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = a3;
  v9 = self;
  sub_130AA8(v8, v7);

  v10 = sub_140C2C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    isa = sub_140B9C().super.isa;
    (*(v11 + 8))(v7, v10);
    v13 = isa;
  }

  return v13;
}

- (void)moveSection:(int64_t)a3 toSection:(int64_t)a4
{
  v6 = self;
  sub_131B54(a3, a4);
}

- (void)_invalidateLayoutWithContext:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_131E8C(a3);
}

- (BOOL)beginInteractiveMovementForItemAtIndexPath:(id)a3
{
  v4 = sub_140C2C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v8 = self;
  v9 = sub_132220(v7);

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (void)updateInteractiveMovementTargetPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_1324C8(x, y);
}

- (void)endInteractiveMovement
{
  v2 = self;
  sub_1329BC();
}

- (void)performBatchUpdates:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = _Block_copy(a4);
  v8 = v7;
  if (v6)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v6 = sub_13B160;
    if (v8)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = sub_13B148;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_6:
  v12 = self;
  sub_132B30(v6, v9, v11, v10);
  sub_2173C(v11);
  sub_2173C(v6);
}

- (UIEdgeInsets)contentInset
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CompositeComponentCollectionView();
  [(CompositeComponentCollectionView *)&v6 contentInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
  sub_13303C(top, left, bottom, right);
}

- (BOOL)isEditing
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CompositeComponentCollectionView();
  return [(CompositeComponentCollectionView *)&v3 isEditing];
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for CompositeComponentCollectionView();
    [(CompositeComponentCollectionView *)&v6 setEditing:v3];
  }
}

- (BOOL)_isEditing
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong mt_isEditing];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = type metadata accessor for CompositeComponentCollectionView();
    return [(CompositeComponentCollectionView *)&v7 _isEditing];
  }
}

- (void)reloadData
{
  v2 = self;
  sub_133390();
}

- (CGPoint)convertPoint:(CGPoint)a3 toView:(id)a4
{
  sub_133538(self, a3.x, a3.y, a2, a4, &selRef_convertPoint_toView_);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromView:(id)a4
{
  sub_133538(self, a3.x, a3.y, a2, a4, &selRef_convertPoint_fromView_);
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong hitTest:a4 withEvent:{x, y}];

    v11 = v10;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = type metadata accessor for CompositeComponentCollectionView();
    v11 = [(CompositeComponentCollectionView *)&v13 hitTest:a4 withEvent:x, y];
  }

  return v11;
}

- (_TtC12NowPlayingUI32CompositeComponentCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_isInvalidatingLayout) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_registeredReusableViewClasses;
  v11 = a4;
  *(&self->super.super.super.super.super.isa + v10) = sub_13AFB4(_swiftEmptyArrayStorage);
  v12 = OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_reorderingItemGlobalIndexPath;
  v13 = sub_140C2C();
  (*(*(v13 - 8) + 56))(self + v12, 1, 1, v13);
  v14 = (self + OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView__contentInset);
  v15 = *&UIEdgeInsetsZero.bottom;
  *v14 = *&UIEdgeInsetsZero.top;
  v14[1] = v15;
  v16 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_componentReuseIdentifierAddition);
  v17 = type metadata accessor for CompositeComponentCollectionView();
  *v16 = 0;
  v16[1] = 0;
  v20.receiver = self;
  v20.super_class = v17;
  v18 = [(CompositeComponentCollectionView *)&v20 initWithFrame:v11 collectionViewLayout:x, y, width, height];

  return v18;
}

@end