@interface ProgressiveBlurView
- (_TtC11MusicCoreUI19ProgressiveBlurView)initWithCoder:(id)coder;
- (_TtC11MusicCoreUI19ProgressiveBlurView)initWithEffect:(id)effect;
- (void)layoutSubviews;
@end

@implementation ProgressiveBlurView

- (_TtC11MusicCoreUI19ProgressiveBlurView)initWithCoder:(id)coder
{
  result = sub_1004BD624();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProgressiveBlurView();
  v2 = v3.receiver;
  [(ProgressiveBlurView *)&v3 layoutSubviews];
  ProgressiveBlurView.updateEffect()();
}

- (_TtC11MusicCoreUI19ProgressiveBlurView)initWithEffect:(id)effect
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end