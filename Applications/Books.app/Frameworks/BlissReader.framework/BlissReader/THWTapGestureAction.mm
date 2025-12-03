@interface THWTapGestureAction
- (BOOL)handleGesture:(id)gesture;
- (THWTapGestureAction)initWithAction:(id)action;
- (void)dealloc;
@end

@implementation THWTapGestureAction

- (THWTapGestureAction)initWithAction:(id)action
{
  v7.receiver = self;
  v7.super_class = THWTapGestureAction;
  v4 = [(THWTapGestureAction *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THWTapGestureAction *)v4 setAction:action];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWTapGestureAction;
  [(THWTapGestureAction *)&v3 dealloc];
}

- (BOOL)handleGesture:(id)gesture
{
  if ([gesture gestureState] == 3)
  {
    action = self->_action;
    if (action)
    {
      action[2]();
    }

    [(THWTapGestureAction *)self setAction:0];
  }

  return 1;
}

@end