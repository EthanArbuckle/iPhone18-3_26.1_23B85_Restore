@interface ProgressView
- (CGSize)sizeThatFits:(CGSize)result;
- (_TtC16MusicApplication12ProgressView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setProgress:(double)progress;
@end

@implementation ProgressView

- (_TtC16MusicApplication12ProgressView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication12ProgressView_progress) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication12ProgressView_isBlurBackgroundEnabled) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication12ProgressView_progressFillView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC16MusicApplication12ProgressView_backgroundView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIView) init];
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)setProgress:(double)progress
{
  selfCopy = self;
  sub_3E47F0(progress);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_3E4A20();
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = fmin(result.height, 5.0);
  result.height = v3;
  return result;
}

@end