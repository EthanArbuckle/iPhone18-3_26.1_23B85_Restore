@interface CanvasPhotoView
- (_TtC7Journal15CanvasPhotoView)initWithCoder:(id)a3;
- (_TtC7Journal15CanvasPhotoView)initWithFrame:(CGRect)a3;
- (_TtC7Journal15CanvasPhotoView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation CanvasPhotoView

- (_TtC7Journal15CanvasPhotoView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CanvasPhotoView();
  v7 = [(CanvasPhotoView *)&v10 initWithFrame:x, y, width, height];
  [(CanvasPhotoView *)v7 setContentMode:2];
  v8 = [(CanvasPhotoView *)v7 layer];
  [v8 setCornerRadius:7.0];

  [(CanvasPhotoView *)v7 setClipsToBounds:1];
  return v7;
}

- (_TtC7Journal15CanvasPhotoView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Journal15CanvasPhotoView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end