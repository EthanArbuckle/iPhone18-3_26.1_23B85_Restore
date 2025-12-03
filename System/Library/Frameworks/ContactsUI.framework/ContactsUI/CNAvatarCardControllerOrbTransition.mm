@interface CNAvatarCardControllerOrbTransition
- (CGAffineTransform)endActionListTransform;
- (CGAffineTransform)endHeaderTransform;
- (CGRect)_sourceRectInContainerView:(id)view;
- (CGRect)sourceRect;
- (CNAvatarCardControllerOrbTransition)initWithCardViewController:(id)controller headerView:(id)view sourceView:(id)sourceView highlightedView:(id)highlightedView sourceRect:(CGRect)rect backgroundVisualEffectView:(id)effectView isDismissing:(BOOL)dismissing;
- (CNAvatarCardControllerOrbTransitionDelegate)delegate;
- (CNAvatarCardViewController)cardViewController;
- (CNContactOrbHeaderView)headerView;
- (UIView)highlightedView;
- (UIView)sourceView;
- (void)performTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView;
- (void)prepareTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView;
- (void)setEndActionListTransform:(CGAffineTransform *)transform;
- (void)setEndHeaderTransform:(CGAffineTransform *)transform;
- (void)setupTransitionFromView:(id)view toView:(id)toView withContainerView:(id)containerView;
- (void)transitionDidEnd:(BOOL)end;
@end

@implementation CNAvatarCardControllerOrbTransition

- (void)setEndActionListTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_endActionListTransform.tx = *&transform->tx;
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

- (void)setEndHeaderTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_endHeaderTransform.tx = *&transform->tx;
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

- (CGRect)_sourceRectInContainerView:(id)view
{
  viewCopy = view;
  [(CNAvatarCardControllerOrbTransition *)self sourceRect];
  if (CGRectIsEmpty(v65))
  {
    sourceView = [(CNAvatarCardControllerOrbTransition *)self sourceView];
    [sourceView bounds];
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

  sourceView2 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
  if (sourceView2)
  {
    v19 = sourceView2;
    sourceView3 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
    [sourceView3 bounds];
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
      sourceView4 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
      window = [sourceView4 window];

      if (window)
      {
        sourceView5 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
        sourceView6 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
        window2 = [sourceView6 window];
        safeAreaLayoutGuide = [window2 safeAreaLayoutGuide];
        [safeAreaLayoutGuide layoutFrame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        sourceView7 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
        window3 = [sourceView7 window];
        [sourceView5 convertRect:window3 fromCoordinateSpace:{v32, v34, v36, v38}];
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

  sourceView8 = [(CNAvatarCardControllerOrbTransition *)self sourceView];

  if (!sourceView8)
  {
    [viewCopy bounds];
    UIRectGetCenter();
    v52 = v59;
    v54 = v60;
    v56 = 0.0;
    v58 = 0.0;
    goto LABEL_13;
  }

LABEL_11:
  sourceView9 = [(CNAvatarCardControllerOrbTransition *)self sourceView];
  [viewCopy convertRect:sourceView9 fromView:{x, y, width, height}];
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

- (void)transitionDidEnd:(BOOL)end
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
  delegate = [(CNAvatarCardControllerOrbTransition *)self delegate];
  [delegate orbTransitionDidEndTransition:self];
}

- (void)performTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView
{
  toViewCopy = toView;
  viewCopy = view;
  cardViewController = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  headerContainerView = [cardViewController headerContainerView];
  [(CNAvatarCardControllerOrbTransition *)self endHeaderTransform];
  [headerContainerView setTransform:v25];

  cardViewController2 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  actionsListView = [cardViewController2 actionsListView];
  [(CNAvatarCardControllerOrbTransition *)self endActionListTransform];
  [actionsListView setTransform:v25];

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
    v14 = toViewCopy;
  }

  else
  {
    v14 = viewCopy;
  }

  v15 = v14;
  cardViewController3 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  headerContainerView2 = [cardViewController3 headerContainerView];
  [headerContainerView2 setAlpha:v13];

  cardViewController4 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  actionsListView2 = [cardViewController4 actionsListView];
  [actionsListView2 setAlpha:v13];

  visualEffectView = [(CNAvatarCardControllerOrbTransition *)self visualEffectView];
  [visualEffectView setAlpha:v13];

  [(CNAvatarCardControllerOrbTransition *)self isDismissing];
  v21 = _UIClickPresentationBackgroundEffects();
  visualEffectView2 = [(CNAvatarCardControllerOrbTransition *)self visualEffectView];
  [visualEffectView2 setBackgroundEffects:v21];

  [(CNAvatarCardControllerOrbTransition *)self isDismissing];
  v23 = _UIClickPresentationBackgroundColor();
  visualEffectView3 = [(CNAvatarCardControllerOrbTransition *)self visualEffectView];
  [visualEffectView3 setBackgroundColor:v23];

  [(CNAvatarCardControllerOrbTransition *)self highlightViewToAlpha];
  [v15 setAlpha:?];
}

- (void)setupTransitionFromView:(id)view toView:(id)toView withContainerView:(id)containerView
{
  v6 = [(CNAvatarCardControllerOrbTransition *)self cardViewController:view];
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
  isDismissing = [(CNAvatarCardControllerOrbTransition *)self isDismissing];
  v9 = MEMORY[0x1E695EFD0];
  if (isDismissing)
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
  cardViewController = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  headerContainerView = [cardViewController headerContainerView];
  t2 = v28;
  [headerContainerView setTransform:&t2];

  if ([(CNAvatarCardControllerOrbTransition *)self isDismissing])
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  cardViewController2 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  headerContainerView2 = [cardViewController2 headerContainerView];
  [headerContainerView2 setAlpha:v13];

  if ([(CNAvatarCardControllerOrbTransition *)self isDismissing])
  {
    v16 = v9;
  }

  else
  {
    v16 = &v31;
  }

  v17 = [(CNAvatarCardControllerOrbTransition *)self cardViewController:*&v16->a];
  actionsListView = [v17 actionsListView];
  t2 = v27;
  [actionsListView setTransform:&t2];

  if ([(CNAvatarCardControllerOrbTransition *)self isDismissing])
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  cardViewController3 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
  actionsListView2 = [cardViewController3 actionsListView];
  [actionsListView2 setAlpha:v19];

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

- (void)prepareTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView
{
  viewCopy = view;
  toViewCopy = toView;
  containerViewCopy = containerView;
  if (![(CNAvatarCardControllerOrbTransition *)self isDismissing])
  {
    cardViewController = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
    view = [cardViewController view];
    [view layoutIfNeeded];

    visualEffectView = [(CNAvatarCardControllerOrbTransition *)self visualEffectView];
    [visualEffectView setAutoresizingMask:18];

    [containerViewCopy bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    visualEffectView2 = [(CNAvatarCardControllerOrbTransition *)self visualEffectView];
    [visualEffectView2 setFrame:{v14, v16, v18, v20}];

    visualEffectView3 = [(CNAvatarCardControllerOrbTransition *)self visualEffectView];
    [containerViewCopy addSubview:visualEffectView3];

    cardViewController2 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
    view2 = [cardViewController2 view];
    [containerViewCopy addSubview:view2];

    cardViewController3 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
    view3 = [cardViewController3 view];
    [view3 frame];
    v58 = v27;
    v60 = v28;
    v62 = v29;

    headerView = [(CNAvatarCardControllerOrbTransition *)self headerView];
    [headerView bounds];
    v32 = v31 * 0.5;

    [(CNAvatarCardControllerOrbTransition *)self _sourceRectInContainerView:containerViewCopy];
    v34 = v33;
    v36 = v35;
    headerView2 = [(CNAvatarCardControllerOrbTransition *)self headerView];
    [headerView2 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    headerView3 = [(CNAvatarCardControllerOrbTransition *)self headerView];
    [containerViewCopy convertRect:headerView3 fromView:{v39, v41, v43, v45}];
    v48 = v47;

    cardViewController4 = [(CNAvatarCardControllerOrbTransition *)self cardViewController];
    LODWORD(headerView3) = [cardViewController4 headerOnTop];

    v50 = v34 + v36 * 0.5;
    v51 = v50 - (v32 + v48);
    v52 = v50 - v32;
    if (!headerView3)
    {
      v52 = v51;
    }

    v53 = v52;
    v54 = floorf(v53);
    v55 = [(CNAvatarCardControllerOrbTransition *)self cardViewController:v58];
    view4 = [v55 view];
    [view4 setFrame:{v59, v54, v63, v61}];
  }

  [(CNAvatarCardControllerOrbTransition *)self setupTransitionFromView:viewCopy toView:toViewCopy withContainerView:containerViewCopy];
  delegate = [(CNAvatarCardControllerOrbTransition *)self delegate];
  [delegate orbTransitionDidPrepareTransition:self withContainerView:containerViewCopy];
}

- (CNAvatarCardControllerOrbTransition)initWithCardViewController:(id)controller headerView:(id)view sourceView:(id)sourceView highlightedView:(id)highlightedView sourceRect:(CGRect)rect backgroundVisualEffectView:(id)effectView isDismissing:(BOOL)dismissing
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  viewCopy = view;
  sourceViewCopy = sourceView;
  highlightedViewCopy = highlightedView;
  effectViewCopy = effectView;
  v28.receiver = self;
  v28.super_class = CNAvatarCardControllerOrbTransition;
  v24 = [(CNAvatarCardControllerOrbTransition *)&v28 init];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_cardViewController, controllerCopy);
    objc_storeWeak(&v25->_headerView, viewCopy);
    objc_storeWeak(&v25->_sourceView, sourceViewCopy);
    objc_storeWeak(&v25->_highlightedView, highlightedViewCopy);
    v25->_sourceRect.origin.x = x;
    v25->_sourceRect.origin.y = y;
    v25->_sourceRect.size.width = width;
    v25->_sourceRect.size.height = height;
    v25->_isDismissing = dismissing;
    objc_storeStrong(&v25->_visualEffectView, effectView);
    v26 = v25;
  }

  return v25;
}

@end