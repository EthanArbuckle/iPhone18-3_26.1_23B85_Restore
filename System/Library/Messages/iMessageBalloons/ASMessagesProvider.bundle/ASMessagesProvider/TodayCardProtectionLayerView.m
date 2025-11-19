@interface TodayCardProtectionLayerView
- (_TtC18ASMessagesProvider28TodayCardProtectionLayerView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation TodayCardProtectionLayerView

- (void)layoutSubviews
{
  v2 = self;
  sub_307D50();
}

- (void)didMoveToSuperview
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView);
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_includeTopGradientFade) == 1)
  {
    [(TodayCardProtectionLayerView *)self insertSubview:v3 aboveSubview:*(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView)];
  }

  else
  {
    [*(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView) removeFromSuperview];
  }
}

- (_TtC18ASMessagesProvider28TodayCardProtectionLayerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end