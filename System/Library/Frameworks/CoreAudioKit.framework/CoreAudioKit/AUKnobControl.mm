@interface AUKnobControl
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)tintColorDidChange;
@end

@implementation AUKnobControl

- (void)accessibilityIncrement
{
  selfCopy = self;
  sub_237140658();
}

- (void)accessibilityDecrement
{
  selfCopy = self;
  sub_2371406EC();
}

- (void)tintColorDidChange
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_valueLayer);
  selfCopy = self;
  tintColor = [(AUKnobControl *)selfCopy tintColor];
  if (tintColor)
  {
    v5 = tintColor;
    cGColor = [tintColor CGColor];

    [v2 setStrokeColor_];
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  v9 = sub_237141A10(touchCopy);

  return v9 & 1;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  v9 = sub_237141BEC(touchCopy);

  return v9 & 1;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  sub_237141E84();
}

@end