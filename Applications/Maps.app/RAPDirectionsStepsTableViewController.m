@interface RAPDirectionsStepsTableViewController
- (BOOL)RAPDirectionsStepsList:(id)a3 shouldShowFlagForStep:(id)a4 listItem:(id)a5;
- (RAPDirectionsStepsTableViewController)init;
- (RAPDirectionsStepsTableViewControllerDelegate)instructionDelegate;
@end

@implementation RAPDirectionsStepsTableViewController

- (RAPDirectionsStepsTableViewControllerDelegate)instructionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_instructionDelegate);

  return WeakRetained;
}

- (BOOL)RAPDirectionsStepsList:(id)a3 shouldShowFlagForStep:(id)a4 listItem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(RAPDirectionsStepsTableViewController *)self instructionDelegate];
  LOBYTE(self) = [v9 viewController:self shouldShowFlagForStep:v8 listItem:v7];

  return self;
}

- (RAPDirectionsStepsTableViewController)init
{
  v6.receiver = self;
  v6.super_class = RAPDirectionsStepsTableViewController;
  v2 = [(DirectionsStepsTableViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(DirectionsStepsTableViewController *)v2 dataSource];
    [v4 setRapDelegate:v3];
  }

  return v3;
}

@end