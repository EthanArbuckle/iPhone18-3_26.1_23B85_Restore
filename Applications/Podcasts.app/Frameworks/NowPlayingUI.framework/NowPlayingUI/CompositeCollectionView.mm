@interface CompositeCollectionView
- (BOOL)_allowsMultipleSelectionDuringEditing;
- (BOOL)_allowsSelectionDuringEditing;
- (BOOL)allowsMultipleSelection;
- (BOOL)allowsSelection;
- (_TtC12NowPlayingUI23CompositeCollectionView)initWithCoder:(id)coder;
- (_TtC12NowPlayingUI23CompositeCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)_applyLayoutAttributes:(id)attributes toView:(id)view;
- (void)layoutSubviews;
- (void)performBatchUpdates:(id)updates completion:(id)completion;
- (void)setCollectionViewLayout:(id)layout;
@end

@implementation CompositeCollectionView

- (void)layoutSubviews
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_layoutSubviewsIgnoreCount))
  {
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_didIgnoreLayoutSubviews) = 1;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = swift_getObjectType();
    [(CompositeCollectionView *)&v4 layoutSubviews];
  }
}

- (void)_applyLayoutAttributes:(id)attributes toView:(id)view
{
  attributesCopy = attributes;
  viewCopy = view;
  selfCopy = self;
  sub_BCA0C(attributes, view);
}

- (BOOL)allowsMultipleSelection
{
  selfCopy = self;
  sub_BD224(&selRef_allowsMultipleSelection);
  v4 = v3;

  return v4 & 1;
}

- (BOOL)_allowsMultipleSelectionDuringEditing
{
  selfCopy = self;
  sub_BD224(&selRef__allowsMultipleSelectionDuringEditing);
  v4 = v3;

  return v4 & 1;
}

- (BOOL)allowsSelection
{
  selfCopy = self;
  sub_BD224(&selRef_allowsSelection);
  v4 = v3;

  return v4 & 1;
}

- (BOOL)_allowsSelectionDuringEditing
{
  selfCopy = self;
  sub_BD224(&selRef__allowsSelectionDuringEditing);
  v4 = v3;

  return v4 & 1;
}

- (void)setCollectionViewLayout:(id)layout
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  layoutCopy = layout;
  v5 = v6.receiver;
  [(CompositeCollectionView *)&v6 setCollectionViewLayout:layoutCopy];
  sub_BD484();
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
    v6 = sub_BDCB0;
    if (v8)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = sub_BDC70;
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
  sub_BC770(v6, v9, v11, v10);
  sub_2173C(v11);
  sub_2173C(v6);
}

- (_TtC12NowPlayingUI23CompositeCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_layoutSubviewsIgnoreCount) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_didIgnoreLayoutSubviews) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_isPerformingBatchUpdates) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(CompositeCollectionView *)&v12 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

- (_TtC12NowPlayingUI23CompositeCollectionView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_layoutSubviewsIgnoreCount) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_didIgnoreLayoutSubviews) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_isPerformingBatchUpdates) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(CompositeCollectionView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end