@interface IMViewControllerOneToOneTransitionContext
- (CGRect)finalFrameForViewController:(id)a3;
- (CGRect)fromEndFrame;
- (CGRect)fromStartFrame;
- (CGRect)initialFrameForViewController:(id)a3;
- (CGRect)toEndFrame;
- (CGRect)toStartFrame;
- (id)viewControllerForKey:(id)a3;
- (id)viewForKey:(id)a3;
- (void)dealloc;
@end

@implementation IMViewControllerOneToOneTransitionContext

- (void)dealloc
{
  [(IMViewControllerOneToOneTransitionContext *)self _setFromViewController:0];
  [(IMViewControllerOneToOneTransitionContext *)self _setToViewController:0];
  [(IMViewControllerTransitionContext *)self _setAnimator:0];
  [(IMViewControllerTransitionContext *)self _setInteractor:0];
  v3.receiver = self;
  v3.super_class = IMViewControllerOneToOneTransitionContext;
  [(IMViewControllerTransitionContext *)&v3 dealloc];
}

- (id)viewControllerForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (UITransitionContextToViewControllerKey == v4)
  {
    v7 = [(IMViewControllerOneToOneTransitionContext *)self toViewController];
  }

  else
  {
    if (UITransitionContextFromViewControllerKey != v4)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v7 = [(IMViewControllerOneToOneTransitionContext *)self fromViewController];
  }

  v6 = v7;
LABEL_7:

  return v6;
}

- (id)viewForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (UITransitionContextFromViewKey == v4)
  {
    v7 = [(IMViewControllerOneToOneTransitionContext *)self fromViewController];
  }

  else
  {
    if (UITransitionContextToViewKey != v4)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v7 = [(IMViewControllerOneToOneTransitionContext *)self toViewController];
  }

  v8 = v7;
  v6 = [v7 view];

LABEL_7:

  return v6;
}

- (CGRect)initialFrameForViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_toViewController == v4)
  {
    [(IMViewControllerOneToOneTransitionContext *)self toStartFrame];
LABEL_6:
    x = v10;
    y = v11;
    width = v12;
    height = v13;
    goto LABEL_7;
  }

  if (self->_fromViewController == v4)
  {
    [(IMViewControllerOneToOneTransitionContext *)self fromStartFrame];
    goto LABEL_6;
  }

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
LABEL_7:

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)finalFrameForViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_toViewController == v4)
  {
    [(IMViewControllerOneToOneTransitionContext *)self toEndFrame];
LABEL_6:
    x = v10;
    y = v11;
    width = v12;
    height = v13;
    goto LABEL_7;
  }

  if (self->_fromViewController == v4)
  {
    [(IMViewControllerOneToOneTransitionContext *)self fromEndFrame];
    goto LABEL_6;
  }

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
LABEL_7:

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)fromStartFrame
{
  x = self->_fromStartFrame.origin.x;
  y = self->_fromStartFrame.origin.y;
  width = self->_fromStartFrame.size.width;
  height = self->_fromStartFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)fromEndFrame
{
  x = self->_fromEndFrame.origin.x;
  y = self->_fromEndFrame.origin.y;
  width = self->_fromEndFrame.size.width;
  height = self->_fromEndFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)toEndFrame
{
  x = self->_toEndFrame.origin.x;
  y = self->_toEndFrame.origin.y;
  width = self->_toEndFrame.size.width;
  height = self->_toEndFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)toStartFrame
{
  x = self->_toStartFrame.origin.x;
  y = self->_toStartFrame.origin.y;
  width = self->_toStartFrame.size.width;
  height = self->_toStartFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end