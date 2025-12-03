@interface Artwork.Component.OverlayView
- (UIColor)backgroundColor;
- (_TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView)initWithCoder:(id)coder;
- (_TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView)initWithFrame:(CGRect)frame;
- (void)setBackgroundColor:(id)color;
@end

@implementation Artwork.Component.OverlayView

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = _s9ComponentC11OverlayViewCMa();
  backgroundColor = [(Artwork.Component.OverlayView *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView_enforcedBackgroundColor);
  colorCopy = v4;
  if (!v4)
  {
    colorCopy = color;
    colorCopy2 = color;
  }

  v8.receiver = self;
  v8.super_class = _s9ComponentC11OverlayViewCMa();
  v7 = v4;
  [(Artwork.Component.OverlayView *)&v8 setBackgroundColor:colorCopy];
}

- (_TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView_enforcedBackgroundColor) = 0;
  v8.receiver = self;
  v8.super_class = _s9ComponentC11OverlayViewCMa();
  return [(Artwork.Component.OverlayView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView_enforcedBackgroundColor) = 0;
  v7.receiver = self;
  v7.super_class = _s9ComponentC11OverlayViewCMa();
  coderCopy = coder;
  v5 = [(Artwork.Component.OverlayView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end