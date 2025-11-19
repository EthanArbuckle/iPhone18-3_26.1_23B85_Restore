@interface BCCardStackTransitionContext
- (BCCardStackTransitionContext)initWithFromViewController:(id)a3 toViewController:(id)a4 push:(BOOL)a5;
- (CGAffineTransform)targetTransform;
- (CGRect)appearingFromRect;
- (CGRect)appearingToRect;
- (CGRect)finalFrameForViewController:(id)a3;
- (CGRect)initialFrameForViewController:(id)a3;
- (id)viewControllerForKey:(id)a3;
- (id)viewForKey:(id)a3;
- (void)completeTransition:(BOOL)a3;
@end

@implementation BCCardStackTransitionContext

- (BCCardStackTransitionContext)initWithFromViewController:(id)a3 toViewController:(id)a4 push:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v51.receiver = self;
  v51.super_class = BCCardStackTransitionContext;
  v10 = [(BCCardStackTransitionContext *)&v51 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_30;
  }

  [(BCCardStackTransitionContext *)v10 setPresentationStyle:4];
  if (!v8)
  {
    v49 = [v9 parentViewController];
    v50 = [v49 view];
    [(BCCardStackTransitionContext *)v11 setContainerView:v50];

    v14 = objc_opt_new();
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v12 = [v8 parentViewController];
  v13 = [v12 view];
  [(BCCardStackTransitionContext *)v11 setContainerView:v13];

  v14 = objc_opt_new();
  [v14 setObject:v8 forKeyedSubscript:UITransitionContextFromViewControllerKey];
  if (v9)
  {
LABEL_4:
    [v14 setObject:v9 forKeyedSubscript:UITransitionContextToViewControllerKey];
  }

LABEL_5:
  v15 = [v14 copy];
  [(BCCardStackTransitionContext *)v11 setViewControllers:v15];

  v16 = [(BCCardStackTransitionContext *)v11 containerView];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(BCCardStackTransitionContext *)v11 containerView];
  [v25 bounds];
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

  v31 = [(BCCardStackTransitionContext *)v11 containerView];
  [v31 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  if (v5)
  {
    v40 = v30;
  }

  else
  {
    v40 = v39;
  }

  if (v5)
  {
    v41 = width;
  }

  else
  {
    v41 = v37;
  }

  if (v5)
  {
    v42 = y;
  }

  else
  {
    v42 = v35;
  }

  if (v5)
  {
    v43 = x;
  }

  else
  {
    v43 = v33;
  }

  [(BCCardStackTransitionContext *)v11 setAppearingFromRect:v43, v42, v41, v40];
  if (v5)
  {
    v44 = v39;
  }

  else
  {
    v44 = v30;
  }

  if (v5)
  {
    v45 = v37;
  }

  else
  {
    v45 = width;
  }

  if (v5)
  {
    v46 = v35;
  }

  else
  {
    v46 = y;
  }

  if (v5)
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

- (id)viewForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:UITransitionContextFromViewKey])
  {
    v5 = &UITransitionContextFromViewControllerKey;
LABEL_5:
    v6 = [(BCCardStackTransitionContext *)self viewControllerForKey:*v5];
    v7 = [v6 view];

    goto LABEL_13;
  }

  if ([v4 isEqualToString:UITransitionContextToViewKey])
  {
    v5 = &UITransitionContextToViewControllerKey;
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"BCUITransitionContextBackgroundViewKey"])
  {
    backgroundView = self->_backgroundView;
LABEL_12:
    v7 = backgroundView;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"BCUITransitionContextTitleLabelKey"])
  {
    backgroundView = self->_titleLabel;
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"BCUITransitionContextClippedCoverContainerViewKey"])
  {
    backgroundView = self->_innerContainerView;
    goto LABEL_12;
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (id)viewControllerForKey:(id)a3
{
  v4 = a3;
  v5 = [(BCCardStackTransitionContext *)self viewControllers];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)completeTransition:(BOOL)a3
{
  v3 = a3;
  v5 = [(BCCardStackTransitionContext *)self outerContext];
  [v5 completeTransition:v3];

  [(BCCardStackTransitionContext *)self setOuterContext:0];
  v6 = [(BCCardStackTransitionContext *)self completionBlock];
  if (v6)
  {
    v7 = v6;
    v6[2](v6, v3);
    v6 = v7;
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

- (CGRect)initialFrameForViewController:(id)a3
{
  [(BCCardStackTransitionContext *)self appearingFromRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)finalFrameForViewController:(id)a3
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