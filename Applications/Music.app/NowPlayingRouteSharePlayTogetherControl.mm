@interface NowPlayingRouteSharePlayTogetherControl
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
@end

@implementation NowPlayingRouteSharePlayTogetherControl

- (CGSize)intrinsicContentSize
{
  if (self->routeButton[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style] == 1)
  {
    if (*(&self->super.super.super.isa + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style))
    {
      v4 = 32.0;
      v5 = 97.0;
    }

    else
    {
      [*(&self->super.super.super.isa + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton) intrinsicContentSize];
    }
  }

  else
  {
    v5 = UIViewNoIntrinsicMetric;
    v4 = UIViewNoIntrinsicMetric;
  }

  result.height = v4;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100461E6C();
}

@end