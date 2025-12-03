@interface LongPressableButtonItem
- (LongPressableButtonItem)init;
- (LongPressableButtonItem)initWithCoder:(id)coder;
- (void)longPressGestureRecognized:(id)recognized;
- (void)setLongPressEnabled:(BOOL)enabled;
- (void)setLongPressTarget:(id)target action:(SEL)action;
@end

@implementation LongPressableButtonItem

- (LongPressableButtonItem)init
{
  v3.receiver = self;
  v3.super_class = LongPressableButtonItem;
  result = [(LongPressableButtonItem *)&v3 init];
  if (result)
  {
    result->_longPressEnabled = 1;
  }

  return result;
}

- (LongPressableButtonItem)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = LongPressableButtonItem;
  result = [(LongPressableButtonItem *)&v4 initWithCoder:coder];
  if (result)
  {
    result->_longPressEnabled = 1;
  }

  return result;
}

- (void)longPressGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if ([recognizedCopy state] == 1)
  {
    v4 = +[UIApplication sharedApplication];
    if (self->_longPressAction)
    {
      longPressAction = self->_longPressAction;
    }

    else
    {
      longPressAction = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_longPressTarget);
    [v4 sendAction:longPressAction to:WeakRetained from:self forEvent:0];
  }
}

- (void)setLongPressTarget:(id)target action:(SEL)action
{
  objc_storeWeak(&self->_longPressTarget, target);
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_longPressAction = actionCopy;
  longPressGestureRecognizer = [(LongPressableButtonItem *)self longPressGestureRecognizer];

  if (!longPressGestureRecognizer)
  {
    v11 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"longPressGestureRecognized:"];
    [v11 setEnabled:{-[LongPressableButtonItem isLongPressEnabled](self, "isLongPressEnabled")}];
    [(LongPressableButtonItem *)self setLongPressGestureRecognizer:v11];
    _gestureRecognizers = [(LongPressableButtonItem *)self _gestureRecognizers];
    v9 = [_gestureRecognizers mutableCopy];

    longPressGestureRecognizer2 = [(LongPressableButtonItem *)self longPressGestureRecognizer];
    [v9 addObject:longPressGestureRecognizer2];

    [(LongPressableButtonItem *)self _setGestureRecognizers:v9];
  }
}

- (void)setLongPressEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_longPressEnabled = enabled;
  longPressGestureRecognizer = [(LongPressableButtonItem *)self longPressGestureRecognizer];
  [longPressGestureRecognizer setEnabled:enabledCopy];
}

@end