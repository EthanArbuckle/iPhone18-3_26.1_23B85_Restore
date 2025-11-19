@interface ChartSonificationContainerView
- (NSAttributedString)accessibilityAttributedLabel;
- (_TtC28AccessibilitySharedUISupport30ChartSonificationContainerView)initWithCoder:(id)a3;
- (_TtC28AccessibilitySharedUISupport30ChartSonificationContainerView)initWithFrame:(CGRect)a3;
- (void)_accessibilitySonificationPlaybackStatusChanged:(unint64_t)a3;
- (void)updatePlayhead:(void *)a1;
@end

@implementation ChartSonificationContainerView

- (_TtC28AccessibilitySharedUISupport30ChartSonificationContainerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadTimer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_displayLink) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_state) = 0;
  result = sub_23DB70D4C();
  __break(1u);
  return result;
}

- (void)updatePlayhead:(void *)a1
{
  v3 = a1;
  sub_23DAB912C(a2);
}

- (void)_accessibilitySonificationPlaybackStatusChanged:(unint64_t)a3
{
  v4 = self;
  sub_23DAB8F20(a3);
}

- (NSAttributedString)accessibilityAttributedLabel
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_chartDescriptor) attributedTitle];

  return v2;
}

- (_TtC28AccessibilitySharedUISupport30ChartSonificationContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end