@interface VideoHeaderPlayButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC16MusicApplication21VideoHeaderPlayButton)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation VideoHeaderPlayButton

- (_TtC16MusicApplication21VideoHeaderPlayButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_isBlurBackgroundEnabled) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_backgroundView;
  *(&self->super.super.super.super.super.isa + v3) = [objc_allocWithZone(UIView) init];
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_41AF4C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (fits.height >= fits.width)
  {
    width = fits.width;
  }

  else
  {
    width = fits.height;
  }

  sub_471A4();
  v4 = sub_AB38F0();
  v5 = 64.0;
  if ((v4 & 1) == 0)
  {
    v5 = width;
  }

  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

@end