@interface PRXCardContentViewController.VideoPlayerView
- (_TtCE21TDGSharingViewServiceCSo28PRXCardContentViewController15VideoPlayerView)initWithCoder:(id)a3;
- (_TtCE21TDGSharingViewServiceCSo28PRXCardContentViewController15VideoPlayerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PRXCardContentViewController.VideoPlayerView

- (void)layoutSubviews
{
  v2 = self;
  sub_10000687C();
}

- (_TtCE21TDGSharingViewServiceCSo28PRXCardContentViewController15VideoPlayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = _s15VideoPlayerViewCMa();
  return [(PRXCardContentViewController.VideoPlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCE21TDGSharingViewServiceCSo28PRXCardContentViewController15VideoPlayerView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _s15VideoPlayerViewCMa();
  v4 = a3;
  v5 = [(PRXCardContentViewController.VideoPlayerView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end