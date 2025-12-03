@interface PRXCardContentViewController.VideoPlayerView
- (_TtCE21TDGSharingViewServiceCSo28PRXCardContentViewController15VideoPlayerView)initWithCoder:(id)coder;
- (_TtCE21TDGSharingViewServiceCSo28PRXCardContentViewController15VideoPlayerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PRXCardContentViewController.VideoPlayerView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10000687C();
}

- (_TtCE21TDGSharingViewServiceCSo28PRXCardContentViewController15VideoPlayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = _s15VideoPlayerViewCMa();
  return [(PRXCardContentViewController.VideoPlayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCE21TDGSharingViewServiceCSo28PRXCardContentViewController15VideoPlayerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _s15VideoPlayerViewCMa();
  coderCopy = coder;
  v5 = [(PRXCardContentViewController.VideoPlayerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end