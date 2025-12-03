@interface VideoMirrorView
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation VideoMirrorView

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for VideoMirrorView();
  backgroundColor = [(MirrorView *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for VideoMirrorView();
  v4 = v10.receiver;
  colorCopy = color;
  [(MirrorView *)&v10 setBackgroundColor:colorCopy];
  v6 = *&v4[OBJC_IVAR____TtC20ProductPageExtension15VideoMirrorView_videoLayer];
  backgroundColor = [v4 backgroundColor];
  if (backgroundColor)
  {
    v8 = backgroundColor;
    cGColor = [backgroundColor CGColor];
  }

  else
  {
    cGColor = 0;
  }

  [v6 setBackgroundColor:cGColor];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VideoMirrorView();
  v2 = v7.receiver;
  [(MirrorView *)&v7 layoutSubviews];
  v3 = OBJC_IVAR____TtC20ProductPageExtension15VideoMirrorView_videoLayer;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15VideoMirrorView_videoLayer];
  v5 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
  [*&v2[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer] bounds];
  [v4 setBounds:?];
  v6 = *&v2[v3];
  [*&v2[v5] position];
  [v6 setPosition:?];
}

@end