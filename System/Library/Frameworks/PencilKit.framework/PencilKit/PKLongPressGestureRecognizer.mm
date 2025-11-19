@interface PKLongPressGestureRecognizer
- (PKLongPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation PKLongPressGestureRecognizer

- (PKLongPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return PKLongPressGestureRecognizer.init(target:action:)(v6, a4);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = self;
  if ([(PKLongPressGestureRecognizer *)v5 state]== 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 5;
  }

  [(PKLongPressGestureRecognizer *)v5 setState:v4];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = self;
  if ([(PKLongPressGestureRecognizer *)v5 state]== 2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  [(PKLongPressGestureRecognizer *)v5 setState:v4];
}

@end