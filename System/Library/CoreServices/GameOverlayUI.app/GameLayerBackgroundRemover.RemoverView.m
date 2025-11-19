@interface GameLayerBackgroundRemover.RemoverView
- (_TtCV13GameOverlayUI26GameLayerBackgroundRemover11RemoverView)initWithCoder:(id)a3;
- (_TtCV13GameOverlayUI26GameLayerBackgroundRemover11RemoverView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation GameLayerBackgroundRemover.RemoverView

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GameLayerBackgroundRemover.RemoverView();
  v2 = v7.receiver;
  [(GameLayerBackgroundRemover.RemoverView *)&v7 layoutSubviews];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [objc_opt_self() clearColor];
      [v4 setBackgroundColor:v5];

      v6 = [v4 superview];
      v4 = v6;
    }

    while (v6);
  }
}

- (_TtCV13GameOverlayUI26GameLayerBackgroundRemover11RemoverView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GameLayerBackgroundRemover.RemoverView();
  return [(GameLayerBackgroundRemover.RemoverView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCV13GameOverlayUI26GameLayerBackgroundRemover11RemoverView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GameLayerBackgroundRemover.RemoverView();
  v4 = a3;
  v5 = [(GameLayerBackgroundRemover.RemoverView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end