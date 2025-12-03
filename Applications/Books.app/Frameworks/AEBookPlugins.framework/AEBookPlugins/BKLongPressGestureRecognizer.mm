@interface BKLongPressGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation BKLongPressGestureRecognizer

- (void)reset
{
  v2.receiver = self;
  v2.super_class = BKLongPressGestureRecognizer;
  [(BKLongPressGestureRecognizer *)&v2 reset];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = BKLongPressGestureRecognizer;
  [(BKLongPressGestureRecognizer *)&v9 touchesBegan:began withEvent:event];
  delegate = [(BKLongPressGestureRecognizer *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(BKLongPressGestureRecognizer *)self delegate];
    v8 = [delegate2 bkLongPressGestureCanTransitionToRecognizedState:self];

    if ((v8 & 1) == 0)
    {
      [(BKLongPressGestureRecognizer *)self setState:5];
    }
  }
}

@end