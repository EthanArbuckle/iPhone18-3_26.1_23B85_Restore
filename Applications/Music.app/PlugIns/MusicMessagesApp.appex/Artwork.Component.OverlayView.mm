@interface Artwork.Component.OverlayView
- (UIColor)backgroundColor;
- (_TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView)initWithCoder:(id)a3;
- (_TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView)initWithFrame:(CGRect)a3;
- (void)setBackgroundColor:(id)a3;
@end

@implementation Artwork.Component.OverlayView

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = _s9ComponentC11OverlayViewCMa();
  v2 = [(Artwork.Component.OverlayView *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView_enforcedBackgroundColor);
  v5 = v4;
  if (!v4)
  {
    v5 = a3;
    v6 = a3;
  }

  v8.receiver = self;
  v8.super_class = _s9ComponentC11OverlayViewCMa();
  v7 = v4;
  [(Artwork.Component.OverlayView *)&v8 setBackgroundColor:v5];
}

- (_TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView_enforcedBackgroundColor) = 0;
  v8.receiver = self;
  v8.super_class = _s9ComponentC11OverlayViewCMa();
  return [(Artwork.Component.OverlayView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCCE16MusicMessagesAppV11MusicCoreUI7Artwork9ComponentP33_F6B6DCEFF56A9DC1390A9746FE4F657811OverlayView_enforcedBackgroundColor) = 0;
  v7.receiver = self;
  v7.super_class = _s9ComponentC11OverlayViewCMa();
  v4 = a3;
  v5 = [(Artwork.Component.OverlayView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end