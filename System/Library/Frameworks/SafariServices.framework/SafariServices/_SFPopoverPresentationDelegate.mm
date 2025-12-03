@interface _SFPopoverPresentationDelegate
+ (void)attachDelegateToPopoverPresentationController:(id)controller anchoredToReloadButtonInNavigationBar:(id)bar;
+ (void)attachDelegateToPopoverPresentationController:(id)controller anchoredToURLOutlineInNavigationBar:(id)bar usesAdaptivePresentationInCompact:(BOOL)compact;
- (_SFPopoverPresentationDelegate)initWithSourceInfo:(id)info;
- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)attachToPopoverPresentationController:(id)controller;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)updatePopoverPosition;
@end

@implementation _SFPopoverPresentationDelegate

- (_SFPopoverPresentationDelegate)initWithSourceInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = _SFPopoverPresentationDelegate;
  v6 = [(_SFPopoverPresentationDelegate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_nestsAdaptiveSheetPresentationInNavigationController = 257;
    objc_storeStrong(&v6->_sourceInfo, info);
    v8 = v7;
  }

  return v7;
}

- (void)attachToPopoverPresentationController:(id)controller
{
  if (controller)
  {
    object = controller;
    objc_storeWeak(&self->_popoverPresentationController, object);
    [object setDelegate:self];
    [object setPassthroughViews:0];
    [object setPermittedArrowDirections:3];
    [object _setIgnoreBarButtonItemSiblings:1];
    [(_SFPopoverPresentationDelegate *)self updatePopoverPosition];
    objc_setAssociatedObject(object, &popoverPresentationDelegateKey, self, 1);
  }
}

- (void)updatePopoverPosition
{
  WeakRetained = objc_loadWeakRetained(&self->_popoverPresentationController);
  v3 = MEMORY[0x1E696AEC0];
  presentedViewController = [WeakRetained presentedViewController];
  v5 = [v3 stringWithFormat:@"popover presentation delegate (%@)", presentedViewController];
  presentingViewController = [WeakRetained presentingViewController];
  view = [presentingViewController view];
  window = [view window];
  windowScene = [window windowScene];
  v10 = _SFContextInfoWithComment();

  v12 = WeakRetained;
  v11 = v12;
  _SFPopoverSourceInfoUnwrap();
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  controllerCopy = controller;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    if (!self->_popoverUsesAdaptivePresentationInCompact || ([controllerCopy presentingViewController], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "view"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "bounds"), IsNarrow = SFWidthIsNarrow(), v7, v6, (IsNarrow & 1) == 0))
    {
LABEL_8:
      v12 = -1;
      goto LABEL_9;
    }
  }

  else
  {
    if (!self->_popoverUsesAdaptivePresentationInCompact)
    {
      goto LABEL_8;
    }

    presentingViewController = [controllerCopy presentingViewController];
    traitCollection = [presentingViewController traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass != 1)
    {
      goto LABEL_8;
    }
  }

  v12 = 2;
LABEL_9:

  return v12;
}

- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style
{
  if (self->_nestsAdaptiveSheetPresentationInNavigationController)
  {
    presentedViewController = [controller presentedViewController];
    if (style != 2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = presentedViewController;
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:presentedViewController];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  controllerCopy = controller;
  v6 = MEMORY[0x1E696AEC0];
  presentedViewController = [controllerCopy presentedViewController];
  v8 = [v6 stringWithFormat:@"popover presentation delegate (%@)", presentedViewController];
  presentingViewController = [controllerCopy presentingViewController];
  view = [presentingViewController view];
  window = [view window];
  windowScene = [window windowScene];
  v13 = _SFContextInfoWithComment();

  v15 = controllerCopy;
  v14 = controllerCopy;
  _SFPopoverSourceInfoUnwrap();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  object = objc_loadWeakRetained(&self->_popoverPresentationController);
  [object setDelegate:0];
  objc_setAssociatedObject(object, &popoverPresentationDelegateKey, 0, 1);
}

+ (void)attachDelegateToPopoverPresentationController:(id)controller anchoredToReloadButtonInNavigationBar:(id)bar
{
  barCopy = bar;
  controllerCopy = controller;
  v7 = [_SFPopoverPresentationDelegate alloc];
  reloadButtonPopoverSourceInfo = [barCopy reloadButtonPopoverSourceInfo];

  v9 = [(_SFPopoverPresentationDelegate *)v7 initWithSourceInfo:reloadButtonPopoverSourceInfo];
  [(_SFPopoverPresentationDelegate *)v9 attachToPopoverPresentationController:controllerCopy];
}

+ (void)attachDelegateToPopoverPresentationController:(id)controller anchoredToURLOutlineInNavigationBar:(id)bar usesAdaptivePresentationInCompact:(BOOL)compact
{
  compactCopy = compact;
  barCopy = bar;
  controllerCopy = controller;
  v9 = [_SFPopoverPresentationDelegate alloc];
  uRLOutlinePopoverSourceInfo = [barCopy URLOutlinePopoverSourceInfo];

  v11 = [(_SFPopoverPresentationDelegate *)v9 initWithSourceInfo:uRLOutlinePopoverSourceInfo];
  [(_SFPopoverPresentationDelegate *)v11 setPopoverUsesAdaptivePresentationInCompact:compactCopy];
  [(_SFPopoverPresentationDelegate *)v11 attachToPopoverPresentationController:controllerCopy];
}

@end