@interface LayerResizableUIView
- (_TtC17AppleVisionProApp20LayerResizableUIView)initWithCoder:(id)a3;
- (_TtC17AppleVisionProApp20LayerResizableUIView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation LayerResizableUIView

- (void)layoutSubviews
{
  v2 = self;
  sub_10004AE18();
}

- (_TtC17AppleVisionProApp20LayerResizableUIView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LayerResizableUIView();
  return [(LayerResizableUIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC17AppleVisionProApp20LayerResizableUIView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LayerResizableUIView();
  v4 = a3;
  v5 = [(LayerResizableUIView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end