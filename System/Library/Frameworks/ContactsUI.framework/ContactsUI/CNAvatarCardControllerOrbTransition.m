@interface CNAvatarCardControllerOrbTransition
- (CGAffineTransform)endActionListTransform;
- (CGAffineTransform)endHeaderTransform;
- (CGRect)_sourceRectInContainerView:(id)a3;
- (CGRect)sourceRect;
- (CNAvatarCardControllerOrbTransition)initWithCardViewController:(id)a3 headerView:(id)a4 sourceView:(id)a5 highlightedView:(id)a6 sourceRect:(CGRect)a7 backgroundVisualEffectView:(id)a8 isDismissing:(BOOL)a9;
- (CNAvatarCardControllerOrbTransitionDelegate)delegate;
- (CNAvatarCardViewController)cardViewController;
- (CNContactOrbHeaderView)headerView;
- (UIView)highlightedView;
- (UIView)sourceView;
- (void)performTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5;
- (void)prepareTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5;
- (void)setEndActionListTransform:(CGAffineTransform *)a3;
- (void)setEndHeaderTransform:(CGAffineTransform *)a3;
- (void)setupTransitionFromView:(id)a3 toView:(id)a4 withContainerView:(id)a5;
- (void)transitionDidEnd:(BOOL)a3;
@end

@implementation CNAvatarCardControllerOrbTransition

- (void)setEndActionListTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_endActionListTransform.tx = *&a3->tx;
  *&self->_endActionListTransform.c = v4;
  *&self->_endActionListTransform.a = v3;
}

- (CGAffineTransform)endActionListTransform
{
  v3 = *&self[3].d;
  *&retstr->a = *&self[3].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].ty;
  return self;
}

- (void)setEndHeaderTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_endHeaderTransform.tx = *&a3->tx;
  *&self->_endHeaderTransform.c = v4;
  *&self->_endHeaderTransform.a = v3;
}

- (CGAffineTransform)endHeaderTransform
{
  v3 = *&self[2].d;
  *&retstr->a = *&self[2].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].ty;
  return self;
}

- (CNAvatarCardControllerOrbTransitionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)highlightedView
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightedView);

  return WeakRetained;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (CNAvatarCardViewController)cardViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_cardViewController);

  return WeakRetained;
}

- (CNContactOrbHeaderView)headerView
{
  WeakRetained = objc_loadWeakRetained(&self->_headerView);

  return WeakRetained;
}

- (CGRect)_sourceRectInContainerView:(id)a3
{
  v4 = a3;
  [(CNAvatarCardControllerOrbTransition *)self sourceRect];
  if (CGRectIsEmpty(v65))
  {
    v5 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
    [v5 bounds];
    x = v6;
    y = v8;
    width = v10;
    height = v12;
  }

  else
  {
    [(CNAvatarCardControllerOrbTransition *)self sourceRect];
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  v18 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
  if (v18)
  {
    v19 = v18;
    v20 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
    [v20 bounds];
    v71.origin.x = v21;
    v71.origin.y = v22;
    v71.size.width = v23;
    v71.size.height = v24;
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    if (CGRectEqualToRect(v66, v71))
    {
      v25 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
      v26 = [v25 window];

      if (v26)
      {
        v27 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
        v28 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
        v29 = [v28 window];
        v30 = [v29 safeAreaLayoutGuide];
        [v30 layoutFrame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v39 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
        v40 = [v39 window];
        [v27 convertRect:v40 fromCoordinateSpace:{v32, v34, v36, v38}];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;

        v67.origin.x = v42;
        v67.origin.y = v44;
        v67.size.width = v46;
        v67.size.height = v48;
        v72.origin.x = x;
        v72.origin.y = y;
        v72.size.width = width;
        v72.size.height = height;
        if (CGRectIntersectsRect(v67, v72))
        {
          v68.origin.x = v42;
          v68.origin.y = v44;
          v68.size.width = v46;
          v68.size.height = v48;
          v73.origin.x = x;
          v73.origin.y = y;
          v73.size.width = width;
          v73.size.height = height;
          v69 = CGRectIntersection(v68, v73);
          x = v69.origin.x;
          y = v69.origin.y;
          width = v69.size.width;
          height = v69.size.height;
        }

        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v49 = [(CNAvatarCardControllerOrbTransition *)self sourceView];

  if (!v49)
  {
    [v4 bounds];
    UIRectGetCenter();
    v52 = v59;
    v54 = v60;
    v56 = 0.0;
    v58 = 0.0;
    goto LABEL_13;
  }

LABEL_11:
  v50 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
  [v4 convertRect:v50 fromView:{x, y, width, height}];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;

LABEL_13:
  v61 = v52;
  v62 = v54;
  v63 = v56;
  v64 = v58;
  result.size.height = v64;
  result.size.width = v63;
  result.origin.y = v62;
  result.origin.x = v61;
  return result;
}

- (void)transitionDidEnd:(BOOL)a3
{
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v8 = *MEMORY[0x1E695EFD0];
  v7 = v8;
  v9 = v6;
  v10 = *(MEMORY[0x1E695EFD0] + 32);
  v5 = v10;
  [(CNAvatarCardControllerOrbTransition *)self setEndHeaderTransform:&v8];
  v8 = v7;
  v9 = v6;
  v10 = v5;
  [(CNAvatarCardControllerOrbTransition *)self setEndActionListTransform:&v8];
  v4 = [(CNAvatarCardControllerOrbTransition *)self delegate];
  [v4 orbTransitionDidEndTransition:self];
}

- (void)performTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  v10 = [v9 headerContainerView];
  [(CNAvatarCardControllerOrbTransition *)self endHeaderTransform];
  [v10 setTransform:v25];

  v11 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  v12 = [v11 actionsListView];
  [(CNAvatarCardControllerOrbTransition *)self endActionListTransform];
  [v12 setTransform:v25];

  if ([(CNAvatarCardControllerOrbTransition *)self isDismissing])
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  if ([(CNAvatarCardControllerOrbTransition *)self isDismissing])
  {
    v14 = v7;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;
  v16 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  v17 = [v16 headerContainerView];
  [v17 setAlpha:v13];

  v18 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  v19 = [v18 actionsListView];
  [v19 setAlpha:v13];

  v20 = [(CNAvatarCardControllerOrbTransition *)self visualEffectView];
  [v20 setAlpha:v13];

  [(CNAvatarCardControllerOrbTransition *)self isDismissing];
  v21 = _UIClickPresentationBackgroundEffects();
  v22 = [(CNAvatarCardControllerOrbTransition *)self visualEffectView];
  [v22 setBackgroundEffects:v21];

  [(CNAvatarCardControllerOrbTransition *)self isDismissing];
  v23 = _UIClickPresentationBackgroundColor();
  v24 = [(CNAvatarCardControllerOrbTransition *)self visualEffectView];
  [v24 setBackgroundColor:v23];

  [(CNAvatarCardControllerOrbTransition *)self highlightViewToAlpha];
  [v15 setAlpha:?];
}

- (void)setupTransitionFromView:(id)a3 toView:(id)a4 withContainerView:(id)a5
{
  v6 = [(CNAvatarCardControllerOrbTransition *)self cardViewController:a3];
  if ([v6 headerOnTop])
  {
    v7 = -180.0;
  }

  else
  {
    v7 = 180.0;
  }

  memset(&v31, 0, sizeof(v31));
  CGAffineTransformMakeTranslation(&t1, 0.0, v7);
  CGAffineTransformMakeScale(&t2, 0.5, 0.5);
  CGAffineTransformConcat(&v31, &t1, &t2);
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformMakeScale(&t1, 0.5, 0.5);
  v8 = [(CNAvatarCardControllerOrbTransition *)self isDismissing];
  v9 = MEMORY[0x1E695EFD0];
  if (v8)
  {
    p_t1 = MEMORY[0x1E695EFD0];
  }

  else
  {
    p_t1 = &t1;
  }

  *&v28.a = *&p_t1->a;
  *&v28.c = *&p_t1->c;
  *&v28.tx = *&p_t1->tx;
  v11 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  v12 = [v11 headerContainerView];
  t2 = v28;
  [v12 setTransform:&t2];

  if ([(CNAvatarCardControllerOrbTransition *)self isDismissing])
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  v15 = [v14 headerContainerView];
  [v15 setAlpha:v13];

  if ([(CNAvatarCardControllerOrbTransition *)self isDismissing])
  {
    v16 = v9;
  }

  else
  {
    v16 = &v31;
  }

  v17 = [(CNAvatarCardControllerOrbTransition *)self cardViewController:*&v16->a];
  v18 = [v17 actionsListView];
  t2 = v27;
  [v18 setTransform:&t2];

  if ([(CNAvatarCardControllerOrbTransition *)self isDismissing])
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  v21 = [v20 actionsListView];
  [v21 setAlpha:v19];

  if ([(CNAvatarCardControllerOrbTransition *)self isDismissing])
  {
    v22 = &t1;
  }

  else
  {
    v22 = v9;
  }

  v23 = *&v22->c;
  *&t2.a = *&v22->a;
  *&t2.c = v23;
  *&t2.tx = *&v22->tx;
  [(CNAvatarCardControllerOrbTransition *)self setEndHeaderTransform:&t2];
  if ([(CNAvatarCardControllerOrbTransition *)self isDismissing])
  {
    v24 = &v31;
  }

  else
  {
    v24 = v9;
  }

  v25 = *&v24->c;
  *&t2.a = *&v24->a;
  *&t2.c = v25;
  *&t2.tx = *&v24->tx;
  [(CNAvatarCardControllerOrbTransition *)self setEndActionListTransform:&t2];
  if ([(CNAvatarCardControllerOrbTransition *)self isDismissing])
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  [(CNAvatarCardControllerOrbTransition *)self setHighlightViewToAlpha:v26];
}

- (void)prepareTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5
{
  v64 = a3;
  v8 = a4;
  v9 = a5;
  if (![(CNAvatarCardControllerOrbTransition *)self isDismissing])
  {
    v10 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
    v11 = [v10 view];
    [v11 layoutIfNeeded];

    v12 = [(CNAvatarCardControllerOrbTransition *)self visualEffectView];
    [v12 setAutoresizingMask:18];

    [v9 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(CNAvatarCardControllerOrbTransition *)self visualEffectView];
    [v21 setFrame:{v14, v16, v18, v20}];

    v22 = [(CNAvatarCardControllerOrbTransition *)self visualEffectView];
    [v9 addSubview:v22];

    v23 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
    v24 = [v23 view];
    [v9 addSubview:v24];

    v25 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
    v26 = [v25 view];
    [v26 frame];
    v58 = v27;
    v60 = v28;
    v62 = v29;

    v30 = [(CNAvatarCardControllerOrbTransition *)self headerView];
    [v30 bounds];
    v32 = v31 * 0.5;

    [(CNAvatarCardControllerOrbTransition *)self _sourceRectInContainerView:v9];
    v34 = v33;
    v36 = v35;
    v37 = [(CNAvatarCardControllerOrbTransition *)self headerView];
    [v37 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = [(CNAvatarCardControllerOrbTransition *)self headerView];
    [v9 convertRect:v46 fromView:{v39, v41, v43, v45}];
    v48 = v47;

    v49 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
    LODWORD(v46) = [v49 headerOnTop];

    v50 = v34 + v36 * 0.5;
    v51 = v50 - (v32 + v48);
    v52 = v50 - v32;
    if (!v46)
    {
      v52 = v51;
    }

    v53 = v52;
    v54 = floorf(v53);
    v55 = [(CNAvatarCardControllerOrbTransition *)self cardViewController:v58];
    v56 = [v55 view];
    [v56 setFrame:{v59, v54, v63, v61}];
  }

  [(CNAvatarCardControllerOrbTransition *)self setupTransitionFromView:v64 toView:v8 withContainerView:v9];
  v57 = [(CNAvatarCardControllerOrbTransition *)self delegate];
  [v57 orbTransitionDidPrepareTransition:self withContainerView:v9];
}

- (CNAvatarCardControllerOrbTransition)initWithCardViewController:(id)a3 headerView:(id)a4 sourceView:(id)a5 highlightedView:(id)a6 sourceRect:(CGRect)a7 backgroundVisualEffectView:(id)a8 isDismissing:(BOOL)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a8;
  v28.receiver = self;
  v28.super_class = CNAvatarCardControllerOrbTransition;
  v24 = [(CNAvatarCardControllerOrbTransition *)&v28 init];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_cardViewController, v19);
    objc_storeWeak(&v25->_headerView, v20);
    objc_storeWeak(&v25->_sourceView, v21);
    objc_storeWeak(&v25->_highlightedView, v22);
    v25->_sourceRect.origin.x = x;
    v25->_sourceRect.origin.y = y;
    v25->_sourceRect.size.width = width;
    v25->_sourceRect.size.height = height;
    v25->_isDismissing = a9;
    objc_storeStrong(&v25->_visualEffectView, a8);
    v26 = v25;
  }

  return v25;
}

@end