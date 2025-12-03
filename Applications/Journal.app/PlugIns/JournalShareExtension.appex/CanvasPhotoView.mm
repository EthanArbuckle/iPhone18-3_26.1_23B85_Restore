@interface CanvasPhotoView
- (_TtC21JournalShareExtension15CanvasPhotoView)initWithCoder:(id)coder;
- (_TtC21JournalShareExtension15CanvasPhotoView)initWithFrame:(CGRect)frame;
- (_TtC21JournalShareExtension15CanvasPhotoView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation CanvasPhotoView

- (_TtC21JournalShareExtension15CanvasPhotoView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CanvasPhotoView();
  height = [(CanvasPhotoView *)&v10 initWithFrame:x, y, width, height];
  [(CanvasPhotoView *)height setContentMode:2];
  layer = [(CanvasPhotoView *)height layer];
  [layer setCornerRadius:7.0];

  [(CanvasPhotoView *)height setClipsToBounds:1];
  return height;
}

- (_TtC21JournalShareExtension15CanvasPhotoView)initWithCoder:(id)coder
{
  result = sub_100101D94();
  __break(1u);
  return result;
}

- (_TtC21JournalShareExtension15CanvasPhotoView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end