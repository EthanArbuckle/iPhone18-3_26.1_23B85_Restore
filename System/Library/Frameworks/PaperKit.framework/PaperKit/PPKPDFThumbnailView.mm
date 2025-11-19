@interface PPKPDFThumbnailView
- (_TtC8PaperKit19PPKPDFThumbnailView)initWithFrame:(CGRect)a3;
@end

@implementation PPKPDFThumbnailView

- (_TtC8PaperKit19PPKPDFThumbnailView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for PPKPDFThumbnailView();
  return [(PPKPDFThumbnailViewBase *)&v9 initWithFrame:x, y, width, height];
}

@end