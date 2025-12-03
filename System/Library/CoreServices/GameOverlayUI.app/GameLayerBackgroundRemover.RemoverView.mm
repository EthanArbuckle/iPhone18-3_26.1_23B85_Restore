@interface GameLayerBackgroundRemover.RemoverView
- (_TtCV13GameOverlayUI26GameLayerBackgroundRemover11RemoverView)initWithCoder:(id)coder;
- (_TtCV13GameOverlayUI26GameLayerBackgroundRemover11RemoverView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation GameLayerBackgroundRemover.RemoverView

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GameLayerBackgroundRemover.RemoverView();
  v2 = v7.receiver;
  [(GameLayerBackgroundRemover.RemoverView *)&v7 layoutSubviews];
  superview = [v2 superview];
  if (superview)
  {
    v4 = superview;
    do
    {
      clearColor = [objc_opt_self() clearColor];
      [v4 setBackgroundColor:clearColor];

      superview2 = [v4 superview];
      v4 = superview2;
    }

    while (superview2);
  }
}

- (_TtCV13GameOverlayUI26GameLayerBackgroundRemover11RemoverView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GameLayerBackgroundRemover.RemoverView();
  return [(GameLayerBackgroundRemover.RemoverView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCV13GameOverlayUI26GameLayerBackgroundRemover11RemoverView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GameLayerBackgroundRemover.RemoverView();
  coderCopy = coder;
  v5 = [(GameLayerBackgroundRemover.RemoverView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end