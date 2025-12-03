@interface NPHCSBridgeCellularSettingsBaseViewController
- (id)parentController;
- (id)rootController;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)setSpecifier:(id)specifier;
- (void)showController:(id)controller animate:(BOOL)animate;
- (void)viewDidLoad;
@end

@implementation NPHCSBridgeCellularSettingsBaseViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = NPHCSBridgeCellularSettingsBaseViewController;
  [(NPHCSBridgeCellularSettingsBaseViewController *)&v2 viewDidLoad];
}

- (id)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

- (id)rootController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootController);

  return WeakRetained;
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_specifier != specifierCopy)
  {
    v6 = specifierCopy;
    objc_storeStrong(&self->_specifier, specifier);
    specifierCopy = v6;
  }
}

- (void)showController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  controllerCopy = controller;
  if (animateCopy)
  {
    [(NPHCSBridgeCellularSettingsBaseViewController *)self showViewController:controllerCopy sender:self];
    v6 = controllerCopy;
  }

  else
  {
    navigationController = [(NPHCSBridgeCellularSettingsBaseViewController *)self navigationController];
    [navigationController pushViewController:controllerCopy animated:0];

    v6 = navigationController;
  }
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

@end