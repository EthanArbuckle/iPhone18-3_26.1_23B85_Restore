@interface AKToolsPickerController
- (AKController)controller;
- (AKToolsPickerController)initWithController:(id)controller;
@end

@implementation AKToolsPickerController

- (AKToolsPickerController)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AKToolsPickerController;
  v5 = [(AKToolsPickerController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(AKToolsPickerController *)v5 setController:controllerCopy];
    v7 = [[AKToolsListViewController alloc] initWithNibName:0 bundle:0];
    [(AKToolsPickerController *)v6 setToolsListController:v7];
  }

  return v6;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end