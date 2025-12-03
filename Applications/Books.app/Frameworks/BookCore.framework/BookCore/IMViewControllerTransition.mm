@interface IMViewControllerTransition
- (CATransform3D)fillBoundsScaleTransformFromTransform:(SEL)transform sourceRect:(CATransform3D *)rect;
- (CGRect)fillBoundsTargetRect;
- (IMViewControllerTransition)init;
- (UIImageView)fromViewSnapshot;
- (UIImageView)toViewSnapshot;
- (UIView)fromView;
- (UIView)toView;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)parentView;
- (int)roleForViewController:(id)controller;
- (void)_updateParentViewBackgroundColorForToView:(id)view;
- (void)beginAppearanceTransition;
- (void)beginTransition;
- (void)cleanupTransition;
- (void)endAppearanceTransition;
- (void)loadToView;
- (void)p_setFrame:(CGRect)frame onViewController:(id)controller;
- (void)performNonAnimatedTransition;
- (void)prepareTransition;
- (void)setReverse:(BOOL)reverse;
- (void)transitionDidEnd;
@end

@implementation IMViewControllerTransition

- (IMViewControllerTransition)init
{
  v5.receiver = self;
  v5.super_class = IMViewControllerTransition;
  v2 = [(IMTransition *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_class();
    if (v3 == objc_opt_class())
    {
      [(IMTransition *)v2 setAnimated:0];
    }
  }

  return v2;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = IMViewControllerTransition;
  v3 = [(IMViewControllerTransition *)&v8 description];
  fromViewController = [(IMViewControllerTransition *)self fromViewController];
  toViewController = [(IMViewControllerTransition *)self toViewController];
  v6 = [NSString stringWithFormat:@"%@\nfromViewController:%@\ntoViewController:%@", v3, fromViewController, toViewController];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = IMViewControllerTransition;
  v4 = [(IMTransition *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setFromViewController:self->_fromViewController];
    [v5 setToViewController:self->_toViewController];
    [v5 setFromViewSnapshot:self->_fromViewSnapshot];
    [v5 setToViewSnapshot:self->_toViewSnapshot];
  }

  return v5;
}

- (void)beginTransition
{
  v2.receiver = self;
  v2.super_class = IMViewControllerTransition;
  [(IMTransition *)&v2 beginTransition];
}

- (void)p_setFrame:(CGRect)frame onViewController:(id)controller
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  controllerCopy = controller;
  parentViewController = [(IMTransition *)self parentViewController];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0 || (-[IMTransition parentViewController](self, "parentViewController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 setFrameOnViewController:controllerCopy forTransition:self], v11, (v12 & 1) == 0))
  {
    view = [controllerCopy view];
    [view setFrame:{x, y, width, height}];
  }
}

- (id)parentView
{
  parentViewController = [(IMTransition *)self parentViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    parentViewController2 = [(IMTransition *)self parentViewController];
    parentView = [parentViewController2 containerViewForIMTransition:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = IMViewControllerTransition;
    parentView = [(IMTransition *)&v8 parentView];
  }

  return parentView;
}

- (void)prepareTransition
{
  v67.receiver = self;
  v67.super_class = IMViewControllerTransition;
  [(IMTransition *)&v67 prepareTransition];
  fromView = [(IMViewControllerTransition *)self fromView];
  superview = [fromView superview];
  parentView = [(IMViewControllerTransition *)self parentView];

  if (superview == parentView)
  {
    parentView2 = [(IMViewControllerTransition *)self parentView];
    view = [(IMTransition *)self view];
    fromView2 = [(IMViewControllerTransition *)self fromView];
    [parentView2 insertSubview:view aboveSubview:fromView2];
  }

  [(IMViewControllerTransition *)self loadToView];
  parentViewController = [(IMTransition *)self parentViewController];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0 || (-[IMTransition parentViewController](self, "parentViewController"), v11 = objc_claimAutoreleasedReturnValue(), -[IMTransition view](self, "view"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v11 setFrameOnTransitioningView:v12 forTransition:self], v12, v11, (v13 & 1) == 0))
  {
    fromViewController = [(IMViewControllerTransition *)self fromViewController];
    view2 = [fromViewController view];
    [view2 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    view3 = [(IMTransition *)self view];
    [view3 setFrame:{v17, v19, v21, v23}];
  }

  parentViewController2 = [(IMTransition *)self parentViewController];
  view4 = [parentViewController2 view];
  [view4 frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  view5 = [(IMTransition *)self view];
  [view5 setFrame:{v28, v30, v32, v34}];

  parentView3 = [(IMViewControllerTransition *)self parentView];
  fromViewController2 = [(IMViewControllerTransition *)self fromViewController];
  view6 = [fromViewController2 view];
  [view6 frame];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  view7 = [(IMTransition *)self view];
  [parentView3 convertRect:view7 toView:{v40, v42, v44, v46}];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  fromViewController3 = [(IMViewControllerTransition *)self fromViewController];
  [(IMViewControllerTransition *)self p_setFrame:fromViewController3 onViewController:v49, v51, v53, v55];

  toViewController = [(IMViewControllerTransition *)self toViewController];
  [(IMViewControllerTransition *)self p_setFrame:toViewController onViewController:v49, v51, v53, v55];

  [(IMViewControllerTransition *)self beginAppearanceTransition];
  fromView3 = [(IMViewControllerTransition *)self fromView];
  fromViewController4 = [(IMViewControllerTransition *)self fromViewController];
  view8 = [fromViewController4 view];

  if (fromView3 != view8)
  {
    fromViewController5 = [(IMViewControllerTransition *)self fromViewController];
    view9 = [fromViewController5 view];
    [view9 removeFromSuperview];
  }

  view10 = [(IMTransition *)self view];
  fromView4 = [(IMViewControllerTransition *)self fromView];
  [view10 addSubview:fromView4];

  view11 = [(IMTransition *)self view];
  toView = [(IMViewControllerTransition *)self toView];
  [view11 addSubview:toView];
}

- (void)cleanupTransition
{
  toViewController = [(IMViewControllerTransition *)self toViewController];
  view = [toViewController view];

  parentView = [(IMViewControllerTransition *)self parentView];
  view2 = [(IMTransition *)self view];
  [view2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view3 = [(IMTransition *)self view];
  [parentView convertRect:view3 fromView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  toViewController2 = [(IMViewControllerTransition *)self toViewController];
  [(IMViewControllerTransition *)self p_setFrame:toViewController2 onViewController:v17, v19, v21, v23];

  [(UIImageView *)self->_fromViewSnapshot removeFromSuperview];
  [(UIImageView *)self->_toViewSnapshot removeFromSuperview];
  view4 = [(IMTransition *)self view];
  superview = [view4 superview];
  parentView2 = [(IMViewControllerTransition *)self parentView];

  parentView3 = [(IMViewControllerTransition *)self parentView];
  v29 = parentView3;
  if (superview == parentView2)
  {
    view5 = [(IMTransition *)self view];
    [v29 insertSubview:view aboveSubview:view5];
  }

  else
  {
    [parentView3 addSubview:view];
  }

  [(IMViewControllerTransition *)self _updateParentViewBackgroundColorForToView:view];
  v31.receiver = self;
  v31.super_class = IMViewControllerTransition;
  [(IMTransition *)&v31 cleanupTransition];
  [(IMViewControllerTransition *)self endAppearanceTransition];
}

- (void)performNonAnimatedTransition
{
  parentViewController = [(IMTransition *)self parentViewController];
  isViewLoaded = [parentViewController isViewLoaded];

  if (isViewLoaded)
  {
    fromViewController = [(IMViewControllerTransition *)self fromViewController];
    view = [fromViewController view];

    toViewController = [(IMViewControllerTransition *)self toViewController];
    view2 = [toViewController view];

    [(IMViewControllerTransition *)self beginAppearanceTransition];
    [view frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    toViewController2 = [(IMViewControllerTransition *)self toViewController];
    [(IMViewControllerTransition *)self p_setFrame:toViewController2 onViewController:v10, v12, v14, v16];

    superview = [view superview];
    parentView = [(IMViewControllerTransition *)self parentView];

    parentView2 = [(IMViewControllerTransition *)self parentView];
    v21 = parentView2;
    if (superview == parentView)
    {
      parentView3 = [(IMViewControllerTransition *)self parentView];
      [v21 insertSubview:view2 aboveSubview:parentView3];
    }

    else
    {
      [parentView2 addSubview:view2];
    }

    [(IMViewControllerTransition *)self _updateParentViewBackgroundColorForToView:view2];
    [view removeFromSuperview];
    [(IMViewControllerTransition *)self endAppearanceTransition];
  }

  v23.receiver = self;
  v23.super_class = IMViewControllerTransition;
  [(IMTransition *)&v23 performNonAnimatedTransition];
}

- (void)transitionDidEnd
{
  v3.receiver = self;
  v3.super_class = IMViewControllerTransition;
  [(IMTransition *)&v3 transitionDidEnd];
  [(IMViewControllerTransition *)self setFromViewController:0];
  [(IMViewControllerTransition *)self setToViewController:0];
  [(IMViewControllerTransition *)self setFromViewSnapshot:0];
  [(IMViewControllerTransition *)self setToViewSnapshot:0];
}

- (int)roleForViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    fromViewController = [(IMViewControllerTransition *)self fromViewController];

    if (fromViewController == controllerCopy)
    {
      v7 = 2;
    }

    else
    {
      toViewController = [(IMViewControllerTransition *)self toViewController];

      if (toViewController == controllerCopy)
      {
        v7 = 1;
      }

      else
      {
        v9.receiver = self;
        v9.super_class = IMViewControllerTransition;
        v7 = [(IMTransition *)&v9 roleForViewController:controllerCopy];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGRect)fillBoundsTargetRect
{
  view = [(IMTransition *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CATransform3D)fillBoundsScaleTransformFromTransform:(SEL)transform sourceRect:(CATransform3D *)rect
{
  rect = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  [(IMViewControllerTransition *)self fillBoundsTargetRect];
  v10 = v25.origin.x;
  v11 = v25.origin.y;
  v12 = v25.size.width;
  height = v25.size.height;
  v14 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = rect;
  v15 = v14 / CGRectGetWidth(v26);
  v27.origin.x = v10;
  v27.origin.y = v11;
  v27.size.width = v12;
  v27.size.height = height;
  v16 = CGRectGetHeight(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = rect;
  v17 = CGRectGetHeight(v28);
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  v18 = *&rect->m33;
  *&v24.m31 = *&rect->m31;
  *&v24.m33 = v18;
  v19 = *&rect->m43;
  *&v24.m41 = *&rect->m41;
  *&v24.m43 = v19;
  v20 = *&rect->m13;
  *&v24.m11 = *&rect->m11;
  *&v24.m13 = v20;
  v21 = *&rect->m23;
  *&v24.m21 = *&rect->m21;
  *&v24.m23 = v21;
  return CATransform3DScale(retstr, &v24, v15, v16 / v17, 1.0);
}

- (UIView)fromView
{
  if ([(IMTransition *)self useSnapshots])
  {
    fromViewSnapshot = [(IMViewControllerTransition *)self fromViewSnapshot];
  }

  else
  {
    fromViewController = [(IMViewControllerTransition *)self fromViewController];
    fromViewSnapshot = [fromViewController view];
  }

  return fromViewSnapshot;
}

- (UIView)toView
{
  if ([(IMTransition *)self useSnapshots])
  {
    toViewSnapshot = [(IMViewControllerTransition *)self toViewSnapshot];
  }

  else
  {
    toViewController = [(IMViewControllerTransition *)self toViewController];
    toViewSnapshot = [toViewController view];
  }

  return toViewSnapshot;
}

- (UIImageView)fromViewSnapshot
{
  fromViewSnapshot = self->_fromViewSnapshot;
  if (!fromViewSnapshot)
  {
    fromViewController = [(IMViewControllerTransition *)self fromViewController];
    view = [fromViewController view];
    im_snapshotInContext = [view im_snapshotInContext];

    if (im_snapshotInContext)
    {
      v7 = [[UIImageView alloc] initWithImage:im_snapshotInContext];
      v8 = self->_fromViewSnapshot;
      self->_fromViewSnapshot = v7;

      fromViewController2 = [(IMViewControllerTransition *)self fromViewController];
      view2 = [fromViewController2 view];
      [view2 frame];
      [(UIImageView *)self->_fromViewSnapshot setFrame:?];
    }

    fromViewSnapshot = self->_fromViewSnapshot;
  }

  return fromViewSnapshot;
}

- (UIImageView)toViewSnapshot
{
  toViewSnapshot = self->_toViewSnapshot;
  if (!toViewSnapshot)
  {
    toViewController = [(IMViewControllerTransition *)self toViewController];
    view = [toViewController view];
    im_snapshotInContext = [view im_snapshotInContext];

    if (im_snapshotInContext)
    {
      v7 = [[UIImageView alloc] initWithImage:im_snapshotInContext];
      v8 = self->_toViewSnapshot;
      self->_toViewSnapshot = v7;

      toViewController2 = [(IMViewControllerTransition *)self toViewController];
      view2 = [toViewController2 view];
      [view2 frame];
      [(UIImageView *)self->_toViewSnapshot setFrame:?];
    }

    toViewSnapshot = self->_toViewSnapshot;
  }

  return toViewSnapshot;
}

- (void)setReverse:(BOOL)reverse
{
  reverseCopy = reverse;
  reverse = [(IMTransition *)self reverse];
  v6.receiver = self;
  v6.super_class = IMViewControllerTransition;
  [(IMTransition *)&v6 setReverse:reverseCopy];
  if (reverse != [(IMTransition *)self reverse])
  {
    if (self->_toViewSnapshot)
    {
      [(IMViewControllerTransition *)self setToViewSnapshot:0];
    }

    if (self->_fromViewSnapshot)
    {
      [(IMViewControllerTransition *)self setFromViewSnapshot:0];
    }
  }
}

- (void)loadToView
{
  toViewController = [(IMViewControllerTransition *)self toViewController];
  view = [toViewController view];
}

- (void)beginAppearanceTransition
{
  parentViewController = [(IMTransition *)self parentViewController];
  if ([parentViewController isViewLoaded])
  {
    parentViewController2 = [(IMTransition *)self parentViewController];
    view = [parentViewController2 view];
    window = [view window];

    if (!window)
    {
      return;
    }

    animated = [(IMTransition *)self animated];
    parentViewController3 = [(IMTransition *)self parentViewController];
    shouldAutomaticallyForwardAppearanceMethods = [parentViewController3 shouldAutomaticallyForwardAppearanceMethods];

    fromViewController = [(IMViewControllerTransition *)self fromViewController];
    v10 = fromViewController;
    if (shouldAutomaticallyForwardAppearanceMethods)
    {
      [fromViewController beginAppearanceTransition:0 animated:animated];

      parentViewController = [(IMViewControllerTransition *)self toViewController];
      [parentViewController beginAppearanceTransition:1 animated:animated];
    }

    else
    {
      [fromViewController viewWillDisappear:animated];

      parentViewController = [(IMViewControllerTransition *)self toViewController];
      [parentViewController viewWillAppear:animated];
    }
  }
}

- (void)endAppearanceTransition
{
  parentViewController = [(IMTransition *)self parentViewController];
  if ([parentViewController isViewLoaded])
  {
    parentViewController2 = [(IMTransition *)self parentViewController];
    view = [parentViewController2 view];
    window = [view window];

    if (!window)
    {
      return;
    }

    parentViewController3 = [(IMTransition *)self parentViewController];
    shouldAutomaticallyForwardAppearanceMethods = [parentViewController3 shouldAutomaticallyForwardAppearanceMethods];

    if (shouldAutomaticallyForwardAppearanceMethods)
    {
      fromViewController = [(IMViewControllerTransition *)self fromViewController];
      [fromViewController endAppearanceTransition];

      parentViewController = [(IMViewControllerTransition *)self toViewController];
      [parentViewController endAppearanceTransition];
    }

    else
    {
      animated = [(IMTransition *)self animated];
      fromViewController2 = [(IMViewControllerTransition *)self fromViewController];
      [fromViewController2 viewDidDisappear:animated];

      parentViewController = [(IMViewControllerTransition *)self toViewController];
      [parentViewController viewDidAppear:animated];
    }
  }
}

- (void)_updateParentViewBackgroundColorForToView:(id)view
{
  backgroundColor = [view backgroundColor];
  parentViewController = [(IMTransition *)self parentViewController];
  view = [parentViewController view];
  [view setBackgroundColor:backgroundColor];
}

@end