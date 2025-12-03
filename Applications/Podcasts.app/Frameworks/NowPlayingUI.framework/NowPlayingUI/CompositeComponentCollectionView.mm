@interface CompositeComponentCollectionView
- (BOOL)_isEditing;
- (BOOL)beginInteractiveMovementForItemAtIndexPath:(id)path;
- (BOOL)isEditing;
- (CGPoint)convertPoint:(CGPoint)point fromView:(id)view;
- (CGPoint)convertPoint:(CGPoint)point toView:(id)view;
- (CGRect)frame;
- (NSArray)indexPathsForVisibleItems;
- (NSArray)visibleCells;
- (UIEdgeInsets)contentInset;
- (_TtC12NowPlayingUI32CompositeComponentCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndexPath:(id)path;
- (id)dequeueReusableSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier forIndexPath:(id)path;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)indexPathForCell:(id)cell;
- (id)indexPathForItemAtPoint:(CGPoint)point;
- (void)_invalidateLayoutWithContext:(id)context;
- (void)bringSubviewToFront:(id)front;
- (void)deselectItemAtIndexPath:(id)path animated:(BOOL)animated;
- (void)endInteractiveMovement;
- (void)layoutSubviews;
- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)moveSection:(int64_t)section toSection:(int64_t)toSection;
- (void)performBatchUpdates:(id)updates completion:(id)completion;
- (void)registerClass:(Class)class forCellWithReuseIdentifier:(id)identifier;
- (void)registerClass:(Class)class forSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier;
- (void)reloadData;
- (void)scrollToItemAtIndexPath:(id)path atScrollPosition:(unint64_t)position animated:(BOOL)animated;
- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position;
- (void)sendSubviewToBack:(id)back;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setEditing:(BOOL)editing;
- (void)setFrame:(CGRect)frame;
- (void)updateInteractiveMovementTargetPosition:(CGPoint)position;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)bringSubviewToFront:(id)front
{
  frontCopy = front;
  selfCopy = self;
  sub_12C128(frontCopy, &selRef_bringSubviewToFront_);
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

- (void)sendSubviewToBack:(id)back
{
  backCopy = back;
  selfCopy = self;
  sub_12C128(backCopy, &selRef_sendSubviewToBack_);
}

- (void)registerClass:(Class)class forCellWithReuseIdentifier:(id)identifier
{
  if (class)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  v6 = sub_1448DC();
  v8 = v7;
  selfCopy = self;
  sub_12C270(ObjCClassMetadata, v6, v8);
}

- (void)registerClass:(Class)class forSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier
{
  if (class)
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
  selfCopy = self;
  sub_12C4A0(ObjCClassMetadata, v7, v9, v10, v12);
}

- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndexPath:(id)path
{
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1448DC();
  v11 = v10;
  sub_140BAC();
  selfCopy = self;
  v13 = sub_12C748(v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (id)dequeueReusableSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier forIndexPath:(id)path
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
  selfCopy = self;
  v17 = sub_12CC78(v10, v12, v13, v15, v9);

  (*(v7 + 8))(v9, v6);

  return v17;
}

- (NSArray)indexPathsForVisibleItems
{
  selfCopy = self;
  sub_12D320();

  sub_140C2C();
  v3.super.isa = sub_1449CC().super.isa;

  return v3.super.isa;
}

- (NSArray)visibleCells
{
  selfCopy = self;
  sub_12DCE8();

  sub_2B860(0, &qword_1CA670);
  v3.super.isa = sub_1449CC().super.isa;

  return v3.super.isa;
}

- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  sub_140BAC();
  sub_140BAC();
  selfCopy = self;
  sub_12EBE8(v11, v8);

  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
}

- (void)deselectItemAtIndexPath:(id)path animated:(BOOL)animated
{
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  selfCopy = self;
  sub_12F2C8(v9, animated);

  (*(v7 + 8))(v9, v6);
}

- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position
{
  animatedCopy = animated;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  if (path)
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

  selfCopy = self;
  sub_12F6F8(v11, animatedCopy, position);

  sub_15340(v11, &unk_1C4A80);
}

- (void)scrollToItemAtIndexPath:(id)path atScrollPosition:(unint64_t)position animated:(BOOL)animated
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  selfCopy = self;
  sub_12FED0(v11, position, animated);

  (*(v9 + 8))(v11, v8);
}

- (id)indexPathForItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  selfCopy = self;
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

- (id)indexPathForCell:(id)cell
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  cellCopy = cell;
  selfCopy = self;
  sub_130AA8(cellCopy, v7);

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

- (void)moveSection:(int64_t)section toSection:(int64_t)toSection
{
  selfCopy = self;
  sub_131B54(section, toSection);
}

- (void)_invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_131E8C(context);
}

- (BOOL)beginInteractiveMovementForItemAtIndexPath:(id)path
{
  v4 = sub_140C2C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  selfCopy = self;
  v9 = sub_132220(v7);

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (void)updateInteractiveMovementTargetPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  selfCopy = self;
  sub_1324C8(x, y);
}

- (void)endInteractiveMovement
{
  selfCopy = self;
  sub_1329BC();
}

- (void)performBatchUpdates:(id)updates completion:(id)completion
{
  v6 = _Block_copy(updates);
  v7 = _Block_copy(completion);
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
  selfCopy = self;
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

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  selfCopy = self;
  sub_13303C(top, left, bottom, right);
}

- (BOOL)isEditing
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CompositeComponentCollectionView();
  return [(CompositeComponentCollectionView *)&v3 isEditing];
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for CompositeComponentCollectionView();
    [(CompositeComponentCollectionView *)&v6 setEditing:editingCopy];
  }
}

- (BOOL)_isEditing
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    mt_isEditing = [Strong mt_isEditing];

    return mt_isEditing;
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
  selfCopy = self;
  sub_133390();
}

- (CGPoint)convertPoint:(CGPoint)point toView:(id)view
{
  sub_133538(self, point.x, point.y, a2, view, &selRef_convertPoint_toView_);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromView:(id)view
{
  sub_133538(self, point.x, point.y, a2, view, &selRef_convertPoint_fromView_);
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong hitTest:event withEvent:{x, y}];

    v11 = v10;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = type metadata accessor for CompositeComponentCollectionView();
    v11 = [(CompositeComponentCollectionView *)&v13 hitTest:event withEvent:x, y];
  }

  return v11;
}

- (_TtC12NowPlayingUI32CompositeComponentCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_isInvalidatingLayout) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_registeredReusableViewClasses;
  layoutCopy = layout;
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
  height = [(CompositeComponentCollectionView *)&v20 initWithFrame:layoutCopy collectionViewLayout:x, y, width, height];

  return height;
}

@end