@interface UIPresentationController
- (BOOL)im_isFullScreen;
- (void)bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:(id)a3;
@end

@implementation UIPresentationController

- (BOOL)im_isFullScreen
{
  v3 = [(UIPresentationController *)self presentingViewController];

  if (!v3)
  {
    sub_1E97AC(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  if ([(UIPresentationController *)self presentationStyle]!= &dword_4 + 3)
  {
    return 1;
  }

  return [(UIPresentationController *)self _isAdapted];
}

- (void)bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:(id)a3
{
  v4 = [a3 overrideUserInterfaceStyle];
  if (v4)
  {
    v5 = v4;
    v6 = [(UIPresentationController *)self traitOverrides];
    [v6 setUserInterfaceStyle:v5];
  }
}

@end