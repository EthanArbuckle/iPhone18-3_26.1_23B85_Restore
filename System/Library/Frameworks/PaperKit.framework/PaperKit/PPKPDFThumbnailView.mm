@interface PPKPDFThumbnailView
- (_TtC8PaperKit19PPKPDFThumbnailView)initWithFrame:(CGRect)frame;
@end

@implementation PPKPDFThumbnailView

- (_TtC8PaperKit19PPKPDFThumbnailView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for PPKPDFThumbnailView();
  return [(PPKPDFThumbnailViewBase *)&v9 initWithFrame:x, y, width, height];
}

@end