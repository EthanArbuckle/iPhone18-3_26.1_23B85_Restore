@interface VideoMirrorView
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation VideoMirrorView

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for VideoMirrorView();
  v2 = [(MirrorView *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for VideoMirrorView();
  v4 = v10.receiver;
  v5 = a3;
  [(MirrorView *)&v10 setBackgroundColor:v5];
  v6 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer];
  v7 = [v4 backgroundColor];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 CGColor];
  }

  else
  {
    v9 = 0;
  }

  [v6 setBackgroundColor:v9];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VideoMirrorView();
  v2 = v7.receiver;
  [(MirrorView *)&v7 layoutSubviews];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer;
  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer] bounds];
  [v4 setBounds:?];
  v6 = *&v2[v3];
  [*&v2[v5] position];
  [v6 setPosition:?];
}

@end