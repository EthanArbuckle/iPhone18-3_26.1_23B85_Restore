@interface ChartDragGestureRecognizer
- (_TtC6Charts26ChartDragGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation ChartDragGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_1AAEBE00C();
  sub_1AAD135EC(&qword_1EB426A90, sub_1AAEBE00C);
  v6 = sub_1AAF8FA44();
  eventCopy = event;
  selfCopy = self;
  sub_1AAEBC670(v6, eventCopy);
}

- (void)reset
{
  selfCopy = self;
  sub_1AAEBD560();
}

- (_TtC6Charts26ChartDragGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_1AAF8FF34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1AAEBD718(v6, action);
}

@end