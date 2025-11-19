@interface IMViewControllerTransition
- (CATransform3D)fillBoundsScaleTransformFromTransform:(SEL)a3 sourceRect:(CATransform3D *)a4;
- (CGRect)fillBoundsTargetRect;
- (IMViewControllerTransition)init;
- (UIImageView)fromViewSnapshot;
- (UIImageView)toViewSnapshot;
- (UIView)fromView;
- (UIView)toView;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)parentView;
- (int)roleForViewController:(id)a3;
- (void)_updateParentViewBackgroundColorForToView:(id)a3;
- (void)beginAppearanceTransition;
- (void)beginTransition;
- (void)cleanupTransition;
- (void)endAppearanceTransition;
- (void)loadToView;
- (void)p_setFrame:(CGRect)a3 onViewController:(id)a4;
- (void)performNonAnimatedTransition;
- (void)prepareTransition;
- (void)setReverse:(BOOL)a3;
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
  v4 = [(IMViewControllerTransition *)self fromViewController];
  v5 = [(IMViewControllerTransition *)self toViewController];
  v6 = [NSString stringWithFormat:@"%@\nfromViewController:%@\ntoViewController:%@", v3, v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = IMViewControllerTransition;
  v4 = [(IMTransition *)&v7 copyWithZone:a3];
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

- (void)p_setFrame:(CGRect)a3 onViewController:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a4;
  v9 = [(IMTransition *)self parentViewController];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0 || (-[IMTransition parentViewController](self, "parentViewController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 setFrameOnViewController:v14 forTransition:self], v11, (v12 & 1) == 0))
  {
    v13 = [v14 view];
    [v13 setFrame:{x, y, width, height}];
  }
}

- (id)parentView
{
  v3 = [(IMTransition *)self parentViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(IMTransition *)self parentViewController];
    v6 = [v5 containerViewForIMTransition:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = IMViewControllerTransition;
    v6 = [(IMTransition *)&v8 parentView];
  }

  return v6;
}

- (void)prepareTransition
{
  v67.receiver = self;
  v67.super_class = IMViewControllerTransition;
  [(IMTransition *)&v67 prepareTransition];
  v3 = [(IMViewControllerTransition *)self fromView];
  v4 = [v3 superview];
  v5 = [(IMViewControllerTransition *)self parentView];

  if (v4 == v5)
  {
    v6 = [(IMViewControllerTransition *)self parentView];
    v7 = [(IMTransition *)self view];
    v8 = [(IMViewControllerTransition *)self fromView];
    [v6 insertSubview:v7 aboveSubview:v8];
  }

  [(IMViewControllerTransition *)self loadToView];
  v9 = [(IMTransition *)self parentViewController];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0 || (-[IMTransition parentViewController](self, "parentViewController"), v11 = objc_claimAutoreleasedReturnValue(), -[IMTransition view](self, "view"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v11 setFrameOnTransitioningView:v12 forTransition:self], v12, v11, (v13 & 1) == 0))
  {
    v14 = [(IMViewControllerTransition *)self fromViewController];
    v15 = [v14 view];
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(IMTransition *)self view];
    [v24 setFrame:{v17, v19, v21, v23}];
  }

  v25 = [(IMTransition *)self parentViewController];
  v26 = [v25 view];
  [v26 frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = [(IMTransition *)self view];
  [v35 setFrame:{v28, v30, v32, v34}];

  v36 = [(IMViewControllerTransition *)self parentView];
  v37 = [(IMViewControllerTransition *)self fromViewController];
  v38 = [v37 view];
  [v38 frame];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = [(IMTransition *)self view];
  [v36 convertRect:v47 toView:{v40, v42, v44, v46}];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v56 = [(IMViewControllerTransition *)self fromViewController];
  [(IMViewControllerTransition *)self p_setFrame:v56 onViewController:v49, v51, v53, v55];

  v57 = [(IMViewControllerTransition *)self toViewController];
  [(IMViewControllerTransition *)self p_setFrame:v57 onViewController:v49, v51, v53, v55];

  [(IMViewControllerTransition *)self beginAppearanceTransition];
  v58 = [(IMViewControllerTransition *)self fromView];
  v59 = [(IMViewControllerTransition *)self fromViewController];
  v60 = [v59 view];

  if (v58 != v60)
  {
    v61 = [(IMViewControllerTransition *)self fromViewController];
    v62 = [v61 view];
    [v62 removeFromSuperview];
  }

  v63 = [(IMTransition *)self view];
  v64 = [(IMViewControllerTransition *)self fromView];
  [v63 addSubview:v64];

  v65 = [(IMTransition *)self view];
  v66 = [(IMViewControllerTransition *)self toView];
  [v65 addSubview:v66];
}

- (void)cleanupTransition
{
  v3 = [(IMViewControllerTransition *)self toViewController];
  v4 = [v3 view];

  v5 = [(IMViewControllerTransition *)self parentView];
  v6 = [(IMTransition *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(IMTransition *)self view];
  [v5 convertRect:v15 fromView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(IMViewControllerTransition *)self toViewController];
  [(IMViewControllerTransition *)self p_setFrame:v24 onViewController:v17, v19, v21, v23];

  [(UIImageView *)self->_fromViewSnapshot removeFromSuperview];
  [(UIImageView *)self->_toViewSnapshot removeFromSuperview];
  v25 = [(IMTransition *)self view];
  v26 = [v25 superview];
  v27 = [(IMViewControllerTransition *)self parentView];

  v28 = [(IMViewControllerTransition *)self parentView];
  v29 = v28;
  if (v26 == v27)
  {
    v30 = [(IMTransition *)self view];
    [v29 insertSubview:v4 aboveSubview:v30];
  }

  else
  {
    [v28 addSubview:v4];
  }

  [(IMViewControllerTransition *)self _updateParentViewBackgroundColorForToView:v4];
  v31.receiver = self;
  v31.super_class = IMViewControllerTransition;
  [(IMTransition *)&v31 cleanupTransition];
  [(IMViewControllerTransition *)self endAppearanceTransition];
}

- (void)performNonAnimatedTransition
{
  v3 = [(IMTransition *)self parentViewController];
  v4 = [v3 isViewLoaded];

  if (v4)
  {
    v5 = [(IMViewControllerTransition *)self fromViewController];
    v6 = [v5 view];

    v7 = [(IMViewControllerTransition *)self toViewController];
    v8 = [v7 view];

    [(IMViewControllerTransition *)self beginAppearanceTransition];
    [v6 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(IMViewControllerTransition *)self toViewController];
    [(IMViewControllerTransition *)self p_setFrame:v17 onViewController:v10, v12, v14, v16];

    v18 = [v6 superview];
    v19 = [(IMViewControllerTransition *)self parentView];

    v20 = [(IMViewControllerTransition *)self parentView];
    v21 = v20;
    if (v18 == v19)
    {
      v22 = [(IMViewControllerTransition *)self parentView];
      [v21 insertSubview:v8 aboveSubview:v22];
    }

    else
    {
      [v20 addSubview:v8];
    }

    [(IMViewControllerTransition *)self _updateParentViewBackgroundColorForToView:v8];
    [v6 removeFromSuperview];
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

- (int)roleForViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(IMViewControllerTransition *)self fromViewController];

    if (v5 == v4)
    {
      v7 = 2;
    }

    else
    {
      v6 = [(IMViewControllerTransition *)self toViewController];

      if (v6 == v4)
      {
        v7 = 1;
      }

      else
      {
        v9.receiver = self;
        v9.super_class = IMViewControllerTransition;
        v7 = [(IMTransition *)&v9 roleForViewController:v4];
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
  v2 = [(IMTransition *)self view];
  [v2 bounds];
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

- (CATransform3D)fillBoundsScaleTransformFromTransform:(SEL)a3 sourceRect:(CATransform3D *)a4
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
  v18 = *&a4->m33;
  *&v24.m31 = *&a4->m31;
  *&v24.m33 = v18;
  v19 = *&a4->m43;
  *&v24.m41 = *&a4->m41;
  *&v24.m43 = v19;
  v20 = *&a4->m13;
  *&v24.m11 = *&a4->m11;
  *&v24.m13 = v20;
  v21 = *&a4->m23;
  *&v24.m21 = *&a4->m21;
  *&v24.m23 = v21;
  return CATransform3DScale(retstr, &v24, v15, v16 / v17, 1.0);
}

- (UIView)fromView
{
  if ([(IMTransition *)self useSnapshots])
  {
    v3 = [(IMViewControllerTransition *)self fromViewSnapshot];
  }

  else
  {
    v4 = [(IMViewControllerTransition *)self fromViewController];
    v3 = [v4 view];
  }

  return v3;
}

- (UIView)toView
{
  if ([(IMTransition *)self useSnapshots])
  {
    v3 = [(IMViewControllerTransition *)self toViewSnapshot];
  }

  else
  {
    v4 = [(IMViewControllerTransition *)self toViewController];
    v3 = [v4 view];
  }

  return v3;
}

- (UIImageView)fromViewSnapshot
{
  fromViewSnapshot = self->_fromViewSnapshot;
  if (!fromViewSnapshot)
  {
    v4 = [(IMViewControllerTransition *)self fromViewController];
    v5 = [v4 view];
    v6 = [v5 im_snapshotInContext];

    if (v6)
    {
      v7 = [[UIImageView alloc] initWithImage:v6];
      v8 = self->_fromViewSnapshot;
      self->_fromViewSnapshot = v7;

      v9 = [(IMViewControllerTransition *)self fromViewController];
      v10 = [v9 view];
      [v10 frame];
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
    v4 = [(IMViewControllerTransition *)self toViewController];
    v5 = [v4 view];
    v6 = [v5 im_snapshotInContext];

    if (v6)
    {
      v7 = [[UIImageView alloc] initWithImage:v6];
      v8 = self->_toViewSnapshot;
      self->_toViewSnapshot = v7;

      v9 = [(IMViewControllerTransition *)self toViewController];
      v10 = [v9 view];
      [v10 frame];
      [(UIImageView *)self->_toViewSnapshot setFrame:?];
    }

    toViewSnapshot = self->_toViewSnapshot;
  }

  return toViewSnapshot;
}

- (void)setReverse:(BOOL)a3
{
  v3 = a3;
  v5 = [(IMTransition *)self reverse];
  v6.receiver = self;
  v6.super_class = IMViewControllerTransition;
  [(IMTransition *)&v6 setReverse:v3];
  if (v5 != [(IMTransition *)self reverse])
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
  v2 = [(IMViewControllerTransition *)self toViewController];
  v3 = [v2 view];
}

- (void)beginAppearanceTransition
{
  v11 = [(IMTransition *)self parentViewController];
  if ([v11 isViewLoaded])
  {
    v3 = [(IMTransition *)self parentViewController];
    v4 = [v3 view];
    v5 = [v4 window];

    if (!v5)
    {
      return;
    }

    v6 = [(IMTransition *)self animated];
    v7 = [(IMTransition *)self parentViewController];
    v8 = [v7 shouldAutomaticallyForwardAppearanceMethods];

    v9 = [(IMViewControllerTransition *)self fromViewController];
    v10 = v9;
    if (v8)
    {
      [v9 beginAppearanceTransition:0 animated:v6];

      v11 = [(IMViewControllerTransition *)self toViewController];
      [v11 beginAppearanceTransition:1 animated:v6];
    }

    else
    {
      [v9 viewWillDisappear:v6];

      v11 = [(IMViewControllerTransition *)self toViewController];
      [v11 viewWillAppear:v6];
    }
  }
}

- (void)endAppearanceTransition
{
  v11 = [(IMTransition *)self parentViewController];
  if ([v11 isViewLoaded])
  {
    v3 = [(IMTransition *)self parentViewController];
    v4 = [v3 view];
    v5 = [v4 window];

    if (!v5)
    {
      return;
    }

    v6 = [(IMTransition *)self parentViewController];
    v7 = [v6 shouldAutomaticallyForwardAppearanceMethods];

    if (v7)
    {
      v8 = [(IMViewControllerTransition *)self fromViewController];
      [v8 endAppearanceTransition];

      v11 = [(IMViewControllerTransition *)self toViewController];
      [v11 endAppearanceTransition];
    }

    else
    {
      v9 = [(IMTransition *)self animated];
      v10 = [(IMViewControllerTransition *)self fromViewController];
      [v10 viewDidDisappear:v9];

      v11 = [(IMViewControllerTransition *)self toViewController];
      [v11 viewDidAppear:v9];
    }
  }
}

- (void)_updateParentViewBackgroundColorForToView:(id)a3
{
  v6 = [a3 backgroundColor];
  v4 = [(IMTransition *)self parentViewController];
  v5 = [v4 view];
  [v5 setBackgroundColor:v6];
}

@end