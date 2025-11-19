@interface ChartDragGestureRecognizer
- (_TtC6Charts26ChartDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation ChartDragGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_1AAEBE00C();
  sub_1AAD135EC(&qword_1EB426A90, sub_1AAEBE00C);
  v6 = sub_1AAF8FA44();
  v7 = a4;
  v8 = self;
  sub_1AAEBC670(v6, v7);
}

- (void)reset
{
  v2 = self;
  sub_1AAEBD560();
}

- (_TtC6Charts26ChartDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_1AAF8FF34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1AAEBD718(v6, a4);
}

@end