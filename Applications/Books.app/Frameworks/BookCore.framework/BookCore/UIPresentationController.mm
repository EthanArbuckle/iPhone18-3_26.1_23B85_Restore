@interface UIPresentationController
- (BOOL)im_isFullScreen;
- (void)bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:(id)controller;
@end

@implementation UIPresentationController

- (BOOL)im_isFullScreen
{
  presentingViewController = [(UIPresentationController *)self presentingViewController];

  if (!presentingViewController)
  {
    sub_1E97AC(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  if ([(UIPresentationController *)self presentationStyle]!= &dword_4 + 3)
  {
    return 1;
  }

  return [(UIPresentationController *)self _isAdapted];
}

- (void)bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:(id)controller
{
  overrideUserInterfaceStyle = [controller overrideUserInterfaceStyle];
  if (overrideUserInterfaceStyle)
  {
    v5 = overrideUserInterfaceStyle;
    traitOverrides = [(UIPresentationController *)self traitOverrides];
    [traitOverrides setUserInterfaceStyle:v5];
  }
}

@end