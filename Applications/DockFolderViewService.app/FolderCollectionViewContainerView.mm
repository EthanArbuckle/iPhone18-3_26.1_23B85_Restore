@interface FolderCollectionViewContainerView
- (_TtC21DockFolderViewService33FolderCollectionViewContainerView)initWithCoder:(id)coder;
- (_TtC21DockFolderViewService33FolderCollectionViewContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation FolderCollectionViewContainerView

- (_TtC21DockFolderViewService33FolderCollectionViewContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC21DockFolderViewService33FolderCollectionViewContainerView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_100062FF4();
}

@end