@interface _SFPopoverPresentationDelegate
+ (void)attachDelegateToPopoverPresentationController:(id)a3 anchoredToReloadButtonInNavigationBar:(id)a4;
+ (void)attachDelegateToPopoverPresentationController:(id)a3 anchoredToURLOutlineInNavigationBar:(id)a4 usesAdaptivePresentationInCompact:(BOOL)a5;
- (_SFPopoverPresentationDelegate)initWithSourceInfo:(id)a3;
- (id)presentationController:(id)a3 viewControllerForAdaptivePresentationStyle:(int64_t)a4;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)attachToPopoverPresentationController:(id)a3;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)updatePopoverPosition;
@end

@implementation _SFPopoverPresentationDelegate

- (_SFPopoverPresentationDelegate)initWithSourceInfo:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _SFPopoverPresentationDelegate;
  v6 = [(_SFPopoverPresentationDelegate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_nestsAdaptiveSheetPresentationInNavigationController = 257;
    objc_storeStrong(&v6->_sourceInfo, a3);
    v8 = v7;
  }

  return v7;
}

- (void)attachToPopoverPresentationController:(id)a3
{
  if (a3)
  {
    object = a3;
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
  v4 = [WeakRetained presentedViewController];
  v5 = [v3 stringWithFormat:@"popover presentation delegate (%@)", v4];
  v6 = [WeakRetained presentingViewController];
  v7 = [v6 view];
  v8 = [v7 window];
  v9 = [v8 windowScene];
  v10 = _SFContextInfoWithComment();

  v12 = WeakRetained;
  v11 = v12;
  _SFPopoverSourceInfoUnwrap();
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    if (!self->_popoverUsesAdaptivePresentationInCompact || ([v5 presentingViewController], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "view"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "bounds"), IsNarrow = SFWidthIsNarrow(), v7, v6, (IsNarrow & 1) == 0))
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

    v9 = [v5 presentingViewController];
    v10 = [v9 traitCollection];
    v11 = [v10 horizontalSizeClass];

    if (v11 != 1)
    {
      goto LABEL_8;
    }
  }

  v12 = 2;
LABEL_9:

  return v12;
}

- (id)presentationController:(id)a3 viewControllerForAdaptivePresentationStyle:(int64_t)a4
{
  if (self->_nestsAdaptiveSheetPresentationInNavigationController)
  {
    v5 = [a3 presentedViewController];
    if (a4 != 2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = v5;
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v5 presentedViewController];
  v8 = [v6 stringWithFormat:@"popover presentation delegate (%@)", v7];
  v9 = [v5 presentingViewController];
  v10 = [v9 view];
  v11 = [v10 window];
  v12 = [v11 windowScene];
  v13 = _SFContextInfoWithComment();

  v15 = v5;
  v14 = v5;
  _SFPopoverSourceInfoUnwrap();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  object = objc_loadWeakRetained(&self->_popoverPresentationController);
  [object setDelegate:0];
  objc_setAssociatedObject(object, &popoverPresentationDelegateKey, 0, 1);
}

+ (void)attachDelegateToPopoverPresentationController:(id)a3 anchoredToReloadButtonInNavigationBar:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [_SFPopoverPresentationDelegate alloc];
  v8 = [v5 reloadButtonPopoverSourceInfo];

  v9 = [(_SFPopoverPresentationDelegate *)v7 initWithSourceInfo:v8];
  [(_SFPopoverPresentationDelegate *)v9 attachToPopoverPresentationController:v6];
}

+ (void)attachDelegateToPopoverPresentationController:(id)a3 anchoredToURLOutlineInNavigationBar:(id)a4 usesAdaptivePresentationInCompact:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [_SFPopoverPresentationDelegate alloc];
  v10 = [v7 URLOutlinePopoverSourceInfo];

  v11 = [(_SFPopoverPresentationDelegate *)v9 initWithSourceInfo:v10];
  [(_SFPopoverPresentationDelegate *)v11 setPopoverUsesAdaptivePresentationInCompact:v5];
  [(_SFPopoverPresentationDelegate *)v11 attachToPopoverPresentationController:v8];
}

@end