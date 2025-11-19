@interface BNTransitionContext
+ (id)transitionContextForTransitionFromViewController:(id)a3 toViewController:(id)a4 inContainerView:(id)a5;
+ (id)transitionContextForTransitionOfViewController:(id)a3 fromFrame:(CGRect)a4 toFrame:(CGRect)a5 inContainerView:(id)a6;
- (BNTransitionContext)init;
- (CGAffineTransform)targetTransform;
- (CGRect)finalFrameForViewController:(id)a3;
- (CGRect)fromEndFrame;
- (CGRect)fromStartFrame;
- (CGRect)initialFrameForViewController:(id)a3;
- (CGRect)toEndFrame;
- (CGRect)toStartFrame;
- (void)completeTransition:(BOOL)a3;
- (void)performTransitionWithAnimator:(id)a3;
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

+ (id)transitionContextForTransitionFromViewController:(id)a3 toViewController:(id)a4 inContainerView:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  v12 = v11[1];
  [v12 _setContainerView:v8];

  [v12 _setFromViewController:v10];
  [v12 _setToViewController:v9];

  return v11;
}

+ (id)transitionContextForTransitionOfViewController:(id)a3 fromFrame:(CGRect)a4 toFrame:(CGRect)a5 inContainerView:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4.size.height;
  v11 = a4.size.width;
  v12 = a4.origin.y;
  v13 = a4.origin.x;
  v16 = a6;
  v17 = a3;
  v18 = objc_alloc_init(a1);
  v19 = v18[1];
  [v19 _setContainerView:v16];

  [v19 _setToViewController:v17];
  [v19 _setToStartFrame:{v13, v12, v11, v10}];
  [v19 _setToEndFrame:{x, y, width, height}];

  return v18;
}

- (CGRect)fromStartFrame
{
  transitionContext = self->_transitionContext;
  v3 = [(_UIViewControllerOneToOneTransitionContext *)transitionContext fromViewController];
  [(_UIViewControllerOneToOneTransitionContext *)transitionContext initialFrameForViewController:v3];
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
  v3 = [(_UIViewControllerOneToOneTransitionContext *)transitionContext fromViewController];
  [(_UIViewControllerOneToOneTransitionContext *)transitionContext finalFrameForViewController:v3];
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
  v3 = [(_UIViewControllerOneToOneTransitionContext *)transitionContext toViewController];
  [(_UIViewControllerOneToOneTransitionContext *)transitionContext finalFrameForViewController:v3];
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
  v3 = [(_UIViewControllerOneToOneTransitionContext *)transitionContext toViewController];
  [(_UIViewControllerOneToOneTransitionContext *)transitionContext initialFrameForViewController:v3];
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

- (void)performTransitionWithAnimator:(id)a3
{
  v4 = a3;
  transitionContext = self->_transitionContext;
  v6 = v4;
  if (v4)
  {
    [(_UIViewControllerOneToOneTransitionContext *)transitionContext _setAnimator:v4];
    [v6 animateTransition:self];
  }

  else
  {
    [(_UIViewControllerOneToOneTransitionContext *)transitionContext __runAlongsideAnimations];
    [(BNTransitionContext *)self completeTransition:1];
  }
}

- (void)completeTransition:(BOOL)a3
{
  if (!self->_explicitCompletionRequired)
  {
    [(BNTransitionContext *)self explictlyCompleteTransition:a3];
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

- (CGRect)initialFrameForViewController:(id)a3
{
  [(_UIViewControllerOneToOneTransitionContext *)self->_transitionContext initialFrameForViewController:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)finalFrameForViewController:(id)a3
{
  [(_UIViewControllerOneToOneTransitionContext *)self->_transitionContext finalFrameForViewController:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end