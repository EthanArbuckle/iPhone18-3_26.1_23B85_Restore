@interface DOCSBCollectionViewCellContentView
- (_TtC21DockFolderViewService34DOCSBCollectionViewCellContentView)initWithFrame:(CGRect)a3;
@end

@implementation DOCSBCollectionViewCellContentView

- (_TtC21DockFolderViewService34DOCSBCollectionViewCellContentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_labelContainer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_thumbnailShadow) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCSBCollectionViewCellContentView();
  return [(DOCSBCollectionViewCellContentView *)&v8 initWithFrame:x, y, width, height];
}

@end