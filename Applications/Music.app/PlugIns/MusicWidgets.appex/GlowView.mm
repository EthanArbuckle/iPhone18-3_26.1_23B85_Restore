@interface GlowView
- (_TtC11MusicCoreUI8GlowView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation GlowView

- (_TtC11MusicCoreUI8GlowView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer) = 0;
  result = sub_1005740F8();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  GlowView.layoutSubviews()();
}

@end