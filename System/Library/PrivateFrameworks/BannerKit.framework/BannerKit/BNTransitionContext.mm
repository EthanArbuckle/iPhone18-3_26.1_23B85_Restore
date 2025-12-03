@interface BNTransitionContext
+ (id)transitionContextForTransitionFromViewController:(id)controller toViewController:(id)viewController inContainerView:(id)view;
+ (id)transitionContextForTransitionOfViewController:(id)controller fromFrame:(CGRect)frame toFrame:(CGRect)toFrame inContainerView:(id)view;
- (BNTransitionContext)init;
- (CGAffineTransform)targetTransform;
- (CGRect)finalFrameForViewController:(id)controller;
- (CGRect)fromEndFrame;
- (CGRect)fromStartFrame;
- (CGRect)initialFrameForViewController:(id)controller;
- (CGRect)toEndFrame;
- (CGRect)toStartFrame;
- (void)completeTransition:(BOOL)transition;
- (void)performTransitionWithAnimator:(id)animator;
@end

@implementation BNTransitionContext

- (BNTransitionContext)init
{
  v6.receiver = self;
  v6.super_class = BNTransitionContext;
  v2 = [(BNTransitionContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD7F8]);
    transitionContext = v2->_transitionContext;
    v2->_transitionContext = v3;
  }

  return v2;
}

+ (id)transitionContextForTransitionFromViewController:(id)controller toViewController:(id)viewController inContainerView:(id)view
{
  viewCopy = view;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v11 = objc_alloc_init(self);
  v12 = v11[1];
  [v12 _setContainerView:viewCopy];

  [v12 _setFromViewController:controllerCopy];
  [v12 _setToViewController:viewControllerCopy];

  return v11;
}

+ (id)transitionContextForTransitionOfViewController:(id)controller fromFrame:(CGRect)frame toFrame:(CGRect)toFrame inContainerView:(id)view
{
  height = toFrame.size.height;
  width = toFrame.size.width;
  y = toFrame.origin.y;
  x = toFrame.origin.x;
  v10 = frame.size.height;
  v11 = frame.size.width;
  v12 = frame.origin.y;
  v13 = frame.origin.x;
  viewCopy = view;
  controllerCopy = controller;
  v18 = objc_alloc_init(self);
  v19 = v18[1];
  [v19 _setContainerView:viewCopy];

  [v19 _setToViewController:controllerCopy];
  [v19 _setToStartFrame:{v13, v12, v11, v10}];
  [v19 _setToEndFrame:{x, y, width, height}];

  return v18;
}

- (CGRect)fromStartFrame
{
  transitionContext = self->_transitionContext;
  fromViewController = [(_UIViewControllerOneToOneTransitionContext *)transitionContext fromViewController];
  [(_UIViewControllerOneToOneTransitionContext *)transitionContext initialFrameForViewController:fromViewController];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)fromEndFrame
{
  transitionContext = self->_transitionContext;
  fromViewController = [(_UIViewControllerOneToOneTransitionContext *)transitionContext fromViewController];
  [(_UIViewControllerOneToOneTransitionContext *)transitionContext finalFrameForViewController:fromViewController];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)toEndFrame
{
  transitionContext = self->_transitionContext;
  toViewController = [(_UIViewControllerOneToOneTransitionContext *)transitionContext toViewController];
  [(_UIViewControllerOneToOneTransitionContext *)transitionContext finalFrameForViewController:toViewController];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)toStartFrame
{
  transitionContext = self->_transitionContext;
  toViewController = [(_UIViewControllerOneToOneTransitionContext *)transitionContext toViewController];
  [(_UIViewControllerOneToOneTransitionContext *)transitionContext initialFrameForViewController:toViewController];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)performTransitionWithAnimator:(id)animator
{
  animatorCopy = animator;
  transitionContext = self->_transitionContext;
  v6 = animatorCopy;
  if (animatorCopy)
  {
    [(_UIViewControllerOneToOneTransitionContext *)transitionContext _setAnimator:animatorCopy];
    [v6 animateTransition:self];
  }

  else
  {
    [(_UIViewControllerOneToOneTransitionContext *)transitionContext __runAlongsideAnimations];
    [(BNTransitionContext *)self completeTransition:1];
  }
}

- (void)completeTransition:(BOOL)transition
{
  if (!self->_explicitCompletionRequired)
  {
    [(BNTransitionContext *)self explictlyCompleteTransition:transition];
  }
}

- (CGAffineTransform)targetTransform
{
  result = self->_transitionContext;
  if (result)
  {
    return [(CGAffineTransform *)result targetTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (CGRect)initialFrameForViewController:(id)controller
{
  [(_UIViewControllerOneToOneTransitionContext *)self->_transitionContext initialFrameForViewController:controller];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)finalFrameForViewController:(id)controller
{
  [(_UIViewControllerOneToOneTransitionContext *)self->_transitionContext finalFrameForViewController:controller];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end