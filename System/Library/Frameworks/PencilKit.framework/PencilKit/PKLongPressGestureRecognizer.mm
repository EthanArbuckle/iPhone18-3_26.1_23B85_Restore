@interface PKLongPressGestureRecognizer
- (PKLongPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation PKLongPressGestureRecognizer

- (PKLongPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return PKLongPressGestureRecognizer.init(target:action:)(v6, action);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  selfCopy = self;
  if ([(PKLongPressGestureRecognizer *)selfCopy state]== 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 5;
  }

  [(PKLongPressGestureRecognizer *)selfCopy setState:v4];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  selfCopy = self;
  if ([(PKLongPressGestureRecognizer *)selfCopy state]== 2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  [(PKLongPressGestureRecognizer *)selfCopy setState:v4];
}

@end