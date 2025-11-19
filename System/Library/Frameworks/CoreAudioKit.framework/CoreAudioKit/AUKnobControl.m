@interface AUKnobControl
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)tintColorDidChange;
@end

@implementation AUKnobControl

- (void)accessibilityIncrement
{
  v2 = self;
  sub_237140658();
}

- (void)accessibilityDecrement
{
  v2 = self;
  sub_2371406EC();
}

- (void)tintColorDidChange
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_valueLayer);
  v3 = self;
  v4 = [(AUKnobControl *)v3 tintColor];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 CGColor];

    [v2 setStrokeColor_];
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_237141A10(v6);

  return v9 & 1;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_237141BEC(v6);

  return v9 & 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_237141E84();
}

@end