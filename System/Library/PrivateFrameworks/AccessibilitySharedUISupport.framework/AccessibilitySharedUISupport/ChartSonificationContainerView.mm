@interface ChartSonificationContainerView
- (NSAttributedString)accessibilityAttributedLabel;
- (_TtC28AccessibilitySharedUISupport30ChartSonificationContainerView)initWithCoder:(id)coder;
- (_TtC28AccessibilitySharedUISupport30ChartSonificationContainerView)initWithFrame:(CGRect)frame;
- (void)_accessibilitySonificationPlaybackStatusChanged:(unint64_t)changed;
- (void)updatePlayhead:(void *)playhead;
@end

@implementation ChartSonificationContainerView

- (_TtC28AccessibilitySharedUISupport30ChartSonificationContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadTimer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_displayLink) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_state) = 0;
  result = sub_23DB70D4C();
  __break(1u);
  return result;
}

- (void)updatePlayhead:(void *)playhead
{
  playheadCopy = playhead;
  sub_23DAB912C(a2);
}

- (void)_accessibilitySonificationPlaybackStatusChanged:(unint64_t)changed
{
  selfCopy = self;
  sub_23DAB8F20(changed);
}

- (NSAttributedString)accessibilityAttributedLabel
{
  attributedTitle = [*(&self->super.super.super.isa + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_chartDescriptor) attributedTitle];

  return attributedTitle;
}

- (_TtC28AccessibilitySharedUISupport30ChartSonificationContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end