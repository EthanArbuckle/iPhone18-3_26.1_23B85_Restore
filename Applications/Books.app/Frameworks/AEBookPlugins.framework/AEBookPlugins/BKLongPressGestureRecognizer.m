@interface BKLongPressGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation BKLongPressGestureRecognizer

- (void)reset
{
  v2.receiver = self;
  v2.super_class = BKLongPressGestureRecognizer;
  [(BKLongPressGestureRecognizer *)&v2 reset];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = BKLongPressGestureRecognizer;
  [(BKLongPressGestureRecognizer *)&v9 touchesBegan:a3 withEvent:a4];
  v5 = [(BKLongPressGestureRecognizer *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(BKLongPressGestureRecognizer *)self delegate];
    v8 = [v7 bkLongPressGestureCanTransitionToRecognizedState:self];

    if ((v8 & 1) == 0)
    {
      [(BKLongPressGestureRecognizer *)self setState:5];
    }
  }
}

@end