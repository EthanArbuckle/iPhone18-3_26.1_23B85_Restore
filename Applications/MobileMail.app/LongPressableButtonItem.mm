@interface LongPressableButtonItem
- (LongPressableButtonItem)init;
- (LongPressableButtonItem)initWithCoder:(id)a3;
- (void)longPressGestureRecognized:(id)a3;
- (void)setLongPressEnabled:(BOOL)a3;
- (void)setLongPressTarget:(id)a3 action:(SEL)a4;
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

- (LongPressableButtonItem)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = LongPressableButtonItem;
  result = [(LongPressableButtonItem *)&v4 initWithCoder:a3];
  if (result)
  {
    result->_longPressEnabled = 1;
  }

  return result;
}

- (void)longPressGestureRecognized:(id)a3
{
  v7 = a3;
  if ([v7 state] == 1)
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

- (void)setLongPressTarget:(id)a3 action:(SEL)a4
{
  objc_storeWeak(&self->_longPressTarget, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_longPressAction = v6;
  v7 = [(LongPressableButtonItem *)self longPressGestureRecognizer];

  if (!v7)
  {
    v11 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"longPressGestureRecognized:"];
    [v11 setEnabled:{-[LongPressableButtonItem isLongPressEnabled](self, "isLongPressEnabled")}];
    [(LongPressableButtonItem *)self setLongPressGestureRecognizer:v11];
    v8 = [(LongPressableButtonItem *)self _gestureRecognizers];
    v9 = [v8 mutableCopy];

    v10 = [(LongPressableButtonItem *)self longPressGestureRecognizer];
    [v9 addObject:v10];

    [(LongPressableButtonItem *)self _setGestureRecognizers:v9];
  }
}

- (void)setLongPressEnabled:(BOOL)a3
{
  v3 = a3;
  self->_longPressEnabled = a3;
  v4 = [(LongPressableButtonItem *)self longPressGestureRecognizer];
  [v4 setEnabled:v3];
}

@end