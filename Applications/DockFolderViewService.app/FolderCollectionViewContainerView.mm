@interface FolderCollectionViewContainerView
- (_TtC21DockFolderViewService33FolderCollectionViewContainerView)initWithCoder:(id)a3;
- (_TtC21DockFolderViewService33FolderCollectionViewContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation FolderCollectionViewContainerView

- (_TtC21DockFolderViewService33FolderCollectionViewContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_roundCorners) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_usesMaterialBackgroundView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_materialBackgroundView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView__cornerRadiusSpec) = 0x402E000000000000;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(FolderCollectionViewContainerView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC21DockFolderViewService33FolderCollectionViewContainerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_roundCorners) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_usesMaterialBackgroundView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_materialBackgroundView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView__cornerRadiusSpec) = 0x402E000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100062FF4();
}

@end