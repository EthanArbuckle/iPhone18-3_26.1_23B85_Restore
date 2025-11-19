@interface VerticalToggleSlider
- (BOOL)accessibilityAutomaticallyDisablesOnMaxValue;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (void)accessibilitySetSliderValue:(double)a3;
- (void)didMoveToWindow;
- (void)dragged:(id)a3;
- (void)layoutSubviews;
- (void)longPressed:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation VerticalToggleSlider

- (CGSize)intrinsicContentSize
{
  v2 = 78.0;
  v3 = 38.0;
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) == 2)
  {
    v2 = 38.0;
  }

  result.height = v2;
  result.width = v3;
  return result;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for VerticalToggleSlider();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(VerticalToggleSlider *)&v9 isEnabled];
  v8.receiver = v6;
  v8.super_class = v5;
  [(VerticalToggleSlider *)&v8 setEnabled:v3];
  if (v7 != [(VerticalToggleSlider *)v6 isEnabled])
  {
    sub_10047AD50();
  }
}

- (void)layoutSubviews
{
  v3 = sub_100009DCC(&qword_1006F5C30);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for VerticalToggleSlider();
  v10.receiver = self;
  v10.super_class = v6;
  v7 = self;
  [(VerticalToggleSlider *)&v10 layoutSubviews];
  v8 = sub_10047A728();
  sub_100573988();
  v9 = sub_100573998();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  sub_1005739A8();
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VerticalToggleSlider();
  v2 = v3.receiver;
  [(VerticalToggleSlider *)&v3 tintColorDidChange];
  sub_10047AA1C();
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(VerticalToggleSlider *)v6 bounds];
  v11 = CGRectInset(v10, -14.0, -14.0);
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v11, v9);

  return v7;
}

- (void)didMoveToWindow
{
  v2 = self;
  VerticalToggleSlider.didMoveToWindow()();
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for VerticalToggleSlider();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(VerticalToggleSlider *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(VerticalToggleSlider *)&v8 setHighlighted:v3];
  sub_10047FA10(v7);
}

- (void)longPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10047BD64(v4);
}

- (void)dragged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10047BEA0(v4);
}

- (BOOL)accessibilityAutomaticallyDisablesOnMaxValue
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)accessibilitySetSliderValue:(double)a3
{
  v4 = self;
  VerticalToggleSlider.accessibilitySetSliderValue(_:)(a3);
}

@end