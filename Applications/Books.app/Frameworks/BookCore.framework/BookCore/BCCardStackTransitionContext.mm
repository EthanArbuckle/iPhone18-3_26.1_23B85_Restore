@interface BCCardStackTransitionContext
- (BCCardStackTransitionContext)initWithFromViewController:(id)controller toViewController:(id)viewController push:(BOOL)push;
- (CGAffineTransform)targetTransform;
- (CGRect)appearingFromRect;
- (CGRect)appearingToRect;
- (CGRect)finalFrameForViewController:(id)controller;
- (CGRect)initialFrameForViewController:(id)controller;
- (id)viewControllerForKey:(id)key;
- (id)viewForKey:(id)key;
- (void)completeTransition:(BOOL)transition;
@end

@implementation BCCardStackTransitionContext

- (BCCardStackTransitionContext)initWithFromViewController:(id)controller toViewController:(id)viewController push:(BOOL)push
{
  pushCopy = push;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v51.receiver = self;
  v51.super_class = BCCardStackTransitionContext;
  v10 = [(BCCardStackTransitionContext *)&v51 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_30;
  }

  [(BCCardStackTransitionContext *)v10 setPresentationStyle:4];
  if (!controllerCopy)
  {
    parentViewController = [viewControllerCopy parentViewController];
    view = [parentViewController view];
    [(BCCardStackTransitionContext *)v11 setContainerView:view];

    v14 = objc_opt_new();
    if (!viewControllerCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  parentViewController2 = [controllerCopy parentViewController];
  view2 = [parentViewController2 view];
  [(BCCardStackTransitionContext *)v11 setContainerView:view2];

  v14 = objc_opt_new();
  [v14 setObject:controllerCopy forKeyedSubscript:UITransitionContextFromViewControllerKey];
  if (viewControllerCopy)
  {
LABEL_4:
    [v14 setObject:viewControllerCopy forKeyedSubscript:UITransitionContextToViewControllerKey];
  }

LABEL_5:
  v15 = [v14 copy];
  [(BCCardStackTransitionContext *)v11 setViewControllers:v15];

  containerView = [(BCCardStackTransitionContext *)v11 containerView];
  [containerView bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  containerView2 = [(BCCardStackTransitionContext *)v11 containerView];
  [containerView2 bounds];
  Height = CGRectGetHeight(v52);
  v53.origin.x = v18;
  v53.origin.y = v20;
  v53.size.width = v22;
  v53.size.height = v24;
  v54 = CGRectOffset(v53, 0.0, Height);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  v30 = v54.size.height;

  containerView3 = [(BCCardStackTransitionContext *)v11 containerView];
  [containerView3 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  if (pushCopy)
  {
    v40 = v30;
  }

  else
  {
    v40 = v39;
  }

  if (pushCopy)
  {
    v41 = width;
  }

  else
  {
    v41 = v37;
  }

  if (pushCopy)
  {
    v42 = y;
  }

  else
  {
    v42 = v35;
  }

  if (pushCopy)
  {
    v43 = x;
  }

  else
  {
    v43 = v33;
  }

  [(BCCardStackTransitionContext *)v11 setAppearingFromRect:v43, v42, v41, v40];
  if (pushCopy)
  {
    v44 = v39;
  }

  else
  {
    v44 = v30;
  }

  if (pushCopy)
  {
    v45 = v37;
  }

  else
  {
    v45 = width;
  }

  if (pushCopy)
  {
    v46 = v35;
  }

  else
  {
    v46 = y;
  }

  if (pushCopy)
  {
    v47 = v33;
  }

  else
  {
    v47 = x;
  }

  [(BCCardStackTransitionContext *)v11 setAppearingToRect:v47, v46, v45, v44];

LABEL_30:
  return v11;
}

- (id)viewForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:UITransitionContextFromViewKey])
  {
    v5 = &UITransitionContextFromViewControllerKey;
LABEL_5:
    v6 = [(BCCardStackTransitionContext *)self viewControllerForKey:*v5];
    view = [v6 view];

    goto LABEL_13;
  }

  if ([keyCopy isEqualToString:UITransitionContextToViewKey])
  {
    v5 = &UITransitionContextToViewControllerKey;
    goto LABEL_5;
  }

  if ([keyCopy isEqualToString:@"BCUITransitionContextBackgroundViewKey"])
  {
    backgroundView = self->_backgroundView;
LABEL_12:
    view = backgroundView;
    goto LABEL_13;
  }

  if ([keyCopy isEqualToString:@"BCUITransitionContextTitleLabelKey"])
  {
    backgroundView = self->_titleLabel;
    goto LABEL_12;
  }

  if ([keyCopy isEqualToString:@"BCUITransitionContextClippedCoverContainerViewKey"])
  {
    backgroundView = self->_innerContainerView;
    goto LABEL_12;
  }

  view = 0;
LABEL_13:

  return view;
}

- (id)viewControllerForKey:(id)key
{
  keyCopy = key;
  viewControllers = [(BCCardStackTransitionContext *)self viewControllers];
  v6 = [viewControllers objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)completeTransition:(BOOL)transition
{
  transitionCopy = transition;
  outerContext = [(BCCardStackTransitionContext *)self outerContext];
  [outerContext completeTransition:transitionCopy];

  [(BCCardStackTransitionContext *)self setOuterContext:0];
  completionBlock = [(BCCardStackTransitionContext *)self completionBlock];
  if (completionBlock)
  {
    v7 = completionBlock;
    completionBlock[2](completionBlock, transitionCopy);
    completionBlock = v7;
  }
}

- (CGAffineTransform)targetTransform
{
  v3 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v3;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return self;
}

- (CGRect)initialFrameForViewController:(id)controller
{
  [(BCCardStackTransitionContext *)self appearingFromRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)finalFrameForViewController:(id)controller
{
  [(BCCardStackTransitionContext *)self appearingToRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)appearingFromRect
{
  x = self->_appearingFromRect.origin.x;
  y = self->_appearingFromRect.origin.y;
  width = self->_appearingFromRect.size.width;
  height = self->_appearingFromRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)appearingToRect
{
  x = self->_appearingToRect.origin.x;
  y = self->_appearingToRect.origin.y;
  width = self->_appearingToRect.size.width;
  height = self->_appearingToRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end