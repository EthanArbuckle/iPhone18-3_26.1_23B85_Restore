@interface THWTapGestureAction
- (BOOL)handleGesture:(id)a3;
- (THWTapGestureAction)initWithAction:(id)a3;
- (void)dealloc;
@end

@implementation THWTapGestureAction

- (THWTapGestureAction)initWithAction:(id)a3
{
  v7.receiver = self;
  v7.super_class = THWTapGestureAction;
  v4 = [(THWTapGestureAction *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THWTapGestureAction *)v4 setAction:a3];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWTapGestureAction;
  [(THWTapGestureAction *)&v3 dealloc];
}

- (BOOL)handleGesture:(id)a3
{
  if ([a3 gestureState] == 3)
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