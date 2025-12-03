@interface ComposeButtonsView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)updateTransparencyEffects;
@end

@implementation ComposeButtonsView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ComposeButtonsView();
  v2 = v5.receiver;
  [(ComposeButtonsView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7Journal18ComposeButtonsView_blurEffectView];
  v4 = *&v2[OBJC_IVAR____TtC7Journal18ComposeButtonsView_blurGradientLayer];
  [v3 bounds];
  [v4 setFrame:?];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_100111DF4(event, x, y);

  return v10;
}

- (void)updateTransparencyEffects
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal18ComposeButtonsView_blurView);
  selfCopy = self;
  [v2 setHidden:UIAccessibilityIsReduceTransparencyEnabled()];
}

@end