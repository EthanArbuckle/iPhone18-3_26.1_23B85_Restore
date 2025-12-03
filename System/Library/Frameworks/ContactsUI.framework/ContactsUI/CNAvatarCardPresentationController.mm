@interface CNAvatarCardPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (CGRect)sourceRect;
- (CGRect)sourceTargetRect;
- (CNAvatarCardPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)_layoutViews;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container;
- (void)tapGestureRecognized:(id)recognized;
@end

@implementation CNAvatarCardPresentationController

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

- (CGRect)sourceTargetRect
{
  x = self->_sourceTargetRect.origin.x;
  y = self->_sourceTargetRect.origin.y;
  width = self->_sourceTargetRect.size.width;
  height = self->_sourceTargetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)tapGestureRecognized:(id)recognized
{
  presentedViewController = [(CNAvatarCardPresentationController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container
{
  containerView = [(CNAvatarCardPresentationController *)self containerView];
  [containerView setNeedsLayout];
}

- (CGRect)frameOfPresentedViewInContainerView
{
  presentedViewController = [(CNAvatarCardPresentationController *)self presentedViewController];
  [presentedViewController preferredContentSize];
  v5 = v4;
  v7 = v6;

  containerView = [(CNAvatarCardPresentationController *)self containerView];
  [containerView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (v5 == 0.0)
  {
    v32.origin.x = v10;
    v32.origin.y = v12;
    v32.size.width = v14;
    v32.size.height = v16;
    v5 = CGRectGetWidth(v32) + -14.0;
  }

  if (v7 == 0.0)
  {
    v33.origin.x = v10;
    v33.origin.y = v12;
    v33.size.width = v14;
    v33.size.height = v16;
    v7 = CGRectGetHeight(v33) + -48.0;
  }

  v34.origin.x = v10;
  v34.origin.y = v12;
  v34.size.width = v14;
  v34.size.height = v16;
  MidX = CGRectGetMidX(v34);
  v35.origin.x = v10;
  v35.origin.y = v12;
  v35.size.width = v14;
  v35.size.height = v16;
  v18 = CGRectGetMidY(v35) + v7 * -0.5;
  [(CNAvatarCardPresentationController *)self alignmentY];
  if (v19 >= 0.0)
  {
    if ([(CNAvatarCardPresentationController *)self alignmentEdge]== 1)
    {
      [(CNAvatarCardPresentationController *)self alignmentY];
      v18 = 48.0;
      if (v20 >= 48.0)
      {
        [(CNAvatarCardPresentationController *)self alignmentY];
        v22 = v7 + v21;
        v36.origin.x = v10;
        v36.origin.y = v12;
        v36.size.width = v14;
        v36.size.height = v16;
        if (v22 <= CGRectGetMaxY(v36) + -48.0)
        {
          [(CNAvatarCardPresentationController *)self alignmentY];
          v18 = v23;
        }

        else
        {
          v37.origin.x = v10;
          v37.origin.y = v12;
          v37.size.width = v14;
          v37.size.height = v16;
          v18 = CGRectGetMaxY(v37) - v7 + -48.0;
        }
      }
    }

    if ([(CNAvatarCardPresentationController *)self alignmentEdge]== 3)
    {
      [(CNAvatarCardPresentationController *)self alignmentY];
      v25 = v24;
      v38.origin.x = v10;
      v38.origin.y = v12;
      v38.size.width = v14;
      v38.size.height = v16;
      if (v25 <= CGRectGetMaxY(v38) + -48.0)
      {
        [(CNAvatarCardPresentationController *)self alignmentY];
        v18 = 48.0;
        if (v26 - v7 >= 48.0)
        {
          [(CNAvatarCardPresentationController *)self alignmentY];
          v18 = v27 - v7;
        }
      }

      else
      {
        v39.origin.x = v10;
        v39.origin.y = v12;
        v39.size.width = v14;
        v39.size.height = v16;
        v18 = CGRectGetMaxY(v39) - v7 + -48.0;
      }
    }
  }

  v28 = MidX + v5 * -0.5;
  v29 = v18;
  v30 = v5;
  v31 = v7;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    [(UIVisualEffectView *)self->_backgroundView removeGestureRecognizer:self->_tapGestureRecognizer];
    [(UIVisualEffectView *)self->_backgroundView removeFromSuperview];
    originalTransitioning = [(CNAvatarCardPresentationController *)self originalTransitioning];
    [originalTransitioning setTransitioningImageVisible:1];
  }
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    [(UIVisualEffectView *)self->_backgroundView addGestureRecognizer:self->_tapGestureRecognizer];
  }
}

- (void)presentationTransitionWillBegin
{
  containerView = [(CNAvatarCardPresentationController *)self containerView];
  [containerView addSubview:self->_backgroundView];
  presentedViewController = [(CNAvatarCardPresentationController *)self presentedViewController];
  view = [presentedViewController view];

  [view setBackgroundColor:0];
  presentedViewController2 = [(CNAvatarCardPresentationController *)self presentedViewController];
  [presentedViewController2 viewWillAppear:0];

  [(UIView *)self->_contentView addSubview:view];
  cardView = [(CNAvatarCardPresentationController *)self cardView];
  [cardView setAlpha:0.0];

  [(CNAvatarCardPresentationController *)self _layoutViews];
}

- (void)_layoutViews
{
  containerView = [(CNAvatarCardPresentationController *)self containerView];
  presentedViewController = [(CNAvatarCardPresentationController *)self presentedViewController];
  view = [presentedViewController view];

  [containerView bounds];
  [(UIVisualEffectView *)self->_backgroundView setFrame:?];
  contentView = [(UIVisualEffectView *)self->_backgroundView contentView];
  [contentView bounds];
  [(UIVisualEffectView *)self->_vibrancyView setFrame:?];

  contentView2 = [(UIVisualEffectView *)self->_vibrancyView contentView];
  [contentView2 bounds];
  [(UIView *)self->_dimmingView setFrame:?];

  [(CNAvatarCardPresentationController *)self frameOfPresentedViewInContainerView];
  [(UIView *)self->_cardView setFrame:?];
  [(UIView *)self->_cardView bounds];
  [(UIView *)self->_contentView setFrame:?];
  [(UIView *)self->_contentView bounds];
  [view setFrame:?];
}

- (void)containerViewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CNAvatarCardPresentationController;
  [(CNAvatarCardPresentationController *)&v3 containerViewWillLayoutSubviews];
  [(CNAvatarCardPresentationController *)self _layoutViews];
}

- (CNAvatarCardPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v34.receiver = self;
  v34.super_class = CNAvatarCardPresentationController;
  v4 = [(CNAvatarCardPresentationController *)&v34 initWithPresentedViewController:controller presentingViewController:viewController];
  v5 = objc_alloc_init(CNAvatarCardTransition);
  transition = v4->_transition;
  v4->_transition = v5;

  v7 = [MEMORY[0x1E69DC730] effectWithStyle:1];
  v8 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v7];
  backgroundView = v4->_backgroundView;
  v4->_backgroundView = v8;

  v10 = objc_alloc(MEMORY[0x1E69DD250]);
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v15 = [v10 initWithFrame:{*MEMORY[0x1E695F058], v12, v13, v14}];
  dimmingView = v4->_dimmingView;
  v4->_dimmingView = v15;

  v17 = +[CNUIColorRepository orbCardBackgroundDimmedColor];
  [(UIView *)v4->_dimmingView setBackgroundColor:v17];

  contentView = [(UIVisualEffectView *)v4->_backgroundView contentView];
  [contentView addSubview:v4->_dimmingView];

  v19 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v7];
  vibrancyView = v4->_vibrancyView;
  v4->_vibrancyView = v19;

  contentView2 = [(UIVisualEffectView *)v4->_backgroundView contentView];
  [contentView2 addSubview:v4->_vibrancyView];

  v22 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v11, v12, v13, v14}];
  cardView = v4->_cardView;
  v4->_cardView = v22;

  [(UIView *)v4->_cardView setBackgroundColor:0];
  contentView3 = [(UIVisualEffectView *)v4->_vibrancyView contentView];
  [contentView3 addSubview:v4->_cardView];

  v25 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v11, v12, v13, v14}];
  contentView = v4->_contentView;
  v4->_contentView = v25;

  [(UIView *)v4->_cardView addSubview:v4->_contentView];
  layer = [(UIView *)v4->_cardView layer];
  v28 = +[CNUIColorRepository orbCardBackgroundShadowColor];
  [layer setShadowColor:{objc_msgSend(v28, "CGColor")}];

  [layer setShadowRadius:10.0];
  LODWORD(v29) = 1036831949;
  [layer setShadowOpacity:v29];
  [layer setShadowOffset:{0.0, 4.0}];
  layer2 = [(UIView *)v4->_contentView layer];
  [layer2 setCornerRadius:23.0];
  v31 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_tapGestureRecognized_];
  tapGestureRecognizer = v4->_tapGestureRecognizer;
  v4->_tapGestureRecognizer = v31;

  return v4;
}

@end