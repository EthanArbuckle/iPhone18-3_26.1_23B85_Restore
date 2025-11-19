@interface AKToolsPickerController
- (AKController)controller;
- (AKToolsPickerController)initWithController:(id)a3;
@end

@implementation AKToolsPickerController

- (AKToolsPickerController)initWithController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AKToolsPickerController;
  v5 = [(AKToolsPickerController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(AKToolsPickerController *)v5 setController:v4];
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