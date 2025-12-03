@interface VerticalToggleSlider
- (BOOL)accessibilityAutomaticallyDisablesOnMaxValue;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)intrinsicContentSize;
- (void)accessibilitySetSliderValue:(double)value;
- (void)didMoveToWindow;
- (void)dragged:(id)dragged;
- (void)layoutSubviews;
- (void)longPressed:(id)pressed;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
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

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = type metadata accessor for VerticalToggleSlider();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isEnabled = [(VerticalToggleSlider *)&v9 isEnabled];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(VerticalToggleSlider *)&v8 setEnabled:enabledCopy];
  if (isEnabled != [(VerticalToggleSlider *)selfCopy isEnabled])
  {
    sub_8AAF94();
  }
}

- (void)layoutSubviews
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for VerticalToggleSlider();
  v10.receiver = self;
  v10.super_class = v6;
  selfCopy = self;
  [(VerticalToggleSlider *)&v10 layoutSubviews];
  v8 = sub_8AA96C();
  sub_ABA670();
  v9 = sub_ABA680();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  sub_ABA6A0();
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VerticalToggleSlider();
  v2 = v3.receiver;
  [(VerticalToggleSlider *)&v3 tintColorDidChange];
  sub_8AAC60();
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(VerticalToggleSlider *)selfCopy bounds];
  v11 = CGRectInset(v10, -14.0, -14.0);
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v11, v9);

  return v7;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  VerticalToggleSlider.didMoveToWindow()();
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = type metadata accessor for VerticalToggleSlider();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(VerticalToggleSlider *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(VerticalToggleSlider *)&v8 setHighlighted:highlightedCopy];
  sub_8AFC54(isHighlighted);
}

- (void)longPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_8ABFA8(pressedCopy);
}

- (void)dragged:(id)dragged
{
  draggedCopy = dragged;
  selfCopy = self;
  sub_8AC0E4(draggedCopy);
}

- (BOOL)accessibilityAutomaticallyDisablesOnMaxValue
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)accessibilitySetSliderValue:(double)value
{
  selfCopy = self;
  VerticalToggleSlider.accessibilitySetSliderValue(_:)(value);
}

@end