@interface LayerResizableUIView
- (_TtC17AppleVisionProApp20LayerResizableUIView)initWithCoder:(id)coder;
- (_TtC17AppleVisionProApp20LayerResizableUIView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation LayerResizableUIView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10004AE18();
}

- (_TtC17AppleVisionProApp20LayerResizableUIView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LayerResizableUIView();
  return [(LayerResizableUIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC17AppleVisionProApp20LayerResizableUIView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LayerResizableUIView();
  coderCopy = coder;
  v5 = [(LayerResizableUIView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end