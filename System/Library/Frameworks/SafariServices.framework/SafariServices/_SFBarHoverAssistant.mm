@interface _SFBarHoverAssistant
+ (void)attachToBar:(id)bar withAnimator:(id)animator inContainerView:(id)view;
- (BOOL)_gestureIsOverBar;
- (UIView)containerView;
- (_SFBarCommon)bar;
- (_SFBarHoverAssistant)initWithBar:(id)bar withAnimator:(id)animator inContainerView:(id)view;
- (_SFDynamicBarAnimator)dynamicBarAnimator;
- (void)_hover:(id)_hover;
- (void)dealloc;
- (void)dynamicBarAnimatorStateDidChange:(id)change;
- (void)dynamicBarAnimatorWillLeaveSteadyState:(id)state;
@end

@implementation _SFBarHoverAssistant

- (_SFBarHoverAssistant)initWithBar:(id)bar withAnimator:(id)animator inContainerView:(id)view
{
  barCopy = bar;
  animatorCopy = animator;
  viewCopy = view;
  v17.receiver = self;
  v17.super_class = _SFBarHoverAssistant;
  v11 = [(_SFBarHoverAssistant *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_bar, barCopy);
    objc_storeWeak(&v12->_dynamicBarAnimator, animatorCopy);
    [animatorCopy addObserver:v12];
    v13 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v12 action:sel__hover_];
    hoverRecognizer = v12->_hoverRecognizer;
    v12->_hoverRecognizer = v13;

    objc_storeWeak(&v12->_containerView, viewCopy);
    [viewCopy addGestureRecognizer:v12->_hoverRecognizer];
    v15 = v12;
  }

  return v12;
}

+ (void)attachToBar:(id)bar withAnimator:(id)animator inContainerView:(id)view
{
  viewCopy = view;
  animatorCopy = animator;
  barCopy = bar;
  value = [[_SFBarHoverAssistant alloc] initWithBar:barCopy withAnimator:animatorCopy inContainerView:viewCopy];

  objc_setAssociatedObject(barCopy, "hoverAssistant", value, 1);
}

- (void)_hover:(id)_hover
{
  if (([_hover state] - 1) <= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dynamicBarAnimator);
    targetState = [WeakRetained targetState];
    _gestureIsOverBar = [(_SFBarHoverAssistant *)self _gestureIsOverBar];
    v6 = objc_loadWeakRetained(&self->_containerView);
    window = [v6 window];
    rootViewController = [window rootViewController];
    presentedViewController = [rootViewController presentedViewController];

    if (targetState || !_gestureIsOverBar)
    {
      if (targetState == 1 && !_gestureIsOverBar && self->_didShowBarFromHover && !presentedViewController)
      {
        [WeakRetained attemptTransitionToState:0 animated:1];
      }
    }

    else
    {
      [WeakRetained attemptTransitionToState:1 animated:1];
      self->_didShowBarFromHover = 1;
    }
  }
}

- (BOOL)_gestureIsOverBar
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);
  v4 = objc_loadWeakRetained(&self->_bar);
  [(UIHoverGestureRecognizer *)self->_hoverRecognizer locationInView:WeakRetained];
  v6 = v5;
  [v4 bounds];
  [WeakRetained convertRect:v4 fromView:?];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MinY = CGRectGetMinY(v15);
  [WeakRetained bounds];
  v12 = CGRectGetHeight(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (MinY >= v12 - CGRectGetMaxY(v17))
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v13 = v6 >= CGRectGetMinY(v19);
  }

  else
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v13 = v6 <= CGRectGetMaxY(v18);
  }

  return v13;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);
  [WeakRetained removeGestureRecognizer:self->_hoverRecognizer];

  v4.receiver = self;
  v4.super_class = _SFBarHoverAssistant;
  [(_SFBarHoverAssistant *)&v4 dealloc];
}

- (void)dynamicBarAnimatorStateDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_dynamicBarAnimator);
  targetState = [WeakRetained targetState];

  if (!targetState)
  {
    self->_didShowBarFromHover = 0;
  }
}

- (void)dynamicBarAnimatorWillLeaveSteadyState:(id)state
{
  WeakRetained = objc_loadWeakRetained(&self->_dynamicBarAnimator);
  targetState = [WeakRetained targetState];

  if (!targetState)
  {
    self->_didShowBarFromHover = 0;
  }
}

- (_SFBarCommon)bar
{
  WeakRetained = objc_loadWeakRetained(&self->_bar);

  return WeakRetained;
}

- (_SFDynamicBarAnimator)dynamicBarAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_dynamicBarAnimator);

  return WeakRetained;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

@end