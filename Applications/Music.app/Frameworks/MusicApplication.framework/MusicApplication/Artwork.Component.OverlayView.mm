@interface Artwork.Component.OverlayView
- (UIColor)backgroundColor;
- (_TtCCE16MusicApplicationV11MusicCoreUI7Artwork9ComponentP33_D3E2C4694A53E203D54C2C75409DDB7B11OverlayView)initWithCoder:(id)coder;
- (_TtCCE16MusicApplicationV11MusicCoreUI7Artwork9ComponentP33_D3E2C4694A53E203D54C2C75409DDB7B11OverlayView)initWithFrame:(CGRect)frame;
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
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtCCE16MusicApplicationV11MusicCoreUI7Artwork9ComponentP33_D3E2C4694A53E203D54C2C75409DDB7B11OverlayView_enforcedBackgroundColor);
  colorCopy = v4;
  if (!v4)
  {
    colorCopy = color;
    colorCopy2 = color;
  }

  v9.receiver = self;
  v9.super_class = _s9ComponentC11OverlayViewCMa();
  selfCopy = self;
  v8 = v4;
  [(Artwork.Component.OverlayView *)&v9 setBackgroundColor:colorCopy];
}

- (_TtCCE16MusicApplicationV11MusicCoreUI7Artwork9ComponentP33_D3E2C4694A53E203D54C2C75409DDB7B11OverlayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCCE16MusicApplicationV11MusicCoreUI7Artwork9ComponentP33_D3E2C4694A53E203D54C2C75409DDB7B11OverlayView_enforcedBackgroundColor) = 0;
  v8.receiver = self;
  v8.super_class = _s9ComponentC11OverlayViewCMa();
  return [(Artwork.Component.OverlayView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCCE16MusicApplicationV11MusicCoreUI7Artwork9ComponentP33_D3E2C4694A53E203D54C2C75409DDB7B11OverlayView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCCE16MusicApplicationV11MusicCoreUI7Artwork9ComponentP33_D3E2C4694A53E203D54C2C75409DDB7B11OverlayView_enforcedBackgroundColor) = 0;
  v7.receiver = self;
  v7.super_class = _s9ComponentC11OverlayViewCMa();
  coderCopy = coder;
  v5 = [(Artwork.Component.OverlayView *)&v7 initWithCoder:coderCopy];

  return v5;
}

@end