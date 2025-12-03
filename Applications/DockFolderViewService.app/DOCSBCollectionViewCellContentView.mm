@interface DOCSBCollectionViewCellContentView
- (_TtC21DockFolderViewService34DOCSBCollectionViewCellContentView)initWithFrame:(CGRect)frame;
@end

@implementation DOCSBCollectionViewCellContentView

- (_TtC21DockFolderViewService34DOCSBCollectionViewCellContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_labelContainer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_thumbnailShadow) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCSBCollectionViewCellContentView();
  return [(DOCSBCollectionViewCellContentView *)&v8 initWithFrame:x, y, width, height];
}

@end