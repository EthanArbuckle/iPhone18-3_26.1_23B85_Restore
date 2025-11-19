@interface ProgressiveBlurView
- (_TtC11MusicCoreUI19ProgressiveBlurView)initWithCoder:(id)a3;
- (_TtC11MusicCoreUI19ProgressiveBlurView)initWithEffect:(id)a3;
- (void)layoutSubviews;
@end

@implementation ProgressiveBlurView

- (_TtC11MusicCoreUI19ProgressiveBlurView)initWithCoder:(id)a3
{
  result = sub_1005740F8();
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

- (_TtC11MusicCoreUI19ProgressiveBlurView)initWithEffect:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end