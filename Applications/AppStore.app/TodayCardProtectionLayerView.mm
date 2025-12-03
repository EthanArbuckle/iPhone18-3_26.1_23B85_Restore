@interface TodayCardProtectionLayerView
- (_TtC8AppStore28TodayCardProtectionLayerView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation TodayCardProtectionLayerView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001DD8B0();
}

- (void)didMoveToSuperview
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView);
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_includeTopGradientFade) == 1)
  {
    [(TodayCardProtectionLayerView *)self insertSubview:v3 aboveSubview:*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView)];
  }

  else
  {
    [*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView) removeFromSuperview];
  }
}

- (_TtC8AppStore28TodayCardProtectionLayerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end