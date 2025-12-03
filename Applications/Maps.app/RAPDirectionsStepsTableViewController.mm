@interface RAPDirectionsStepsTableViewController
- (BOOL)RAPDirectionsStepsList:(id)list shouldShowFlagForStep:(id)step listItem:(id)item;
- (RAPDirectionsStepsTableViewController)init;
- (RAPDirectionsStepsTableViewControllerDelegate)instructionDelegate;
@end

@implementation RAPDirectionsStepsTableViewController

- (RAPDirectionsStepsTableViewControllerDelegate)instructionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_instructionDelegate);

  return WeakRetained;
}

- (BOOL)RAPDirectionsStepsList:(id)list shouldShowFlagForStep:(id)step listItem:(id)item
{
  itemCopy = item;
  stepCopy = step;
  instructionDelegate = [(RAPDirectionsStepsTableViewController *)self instructionDelegate];
  LOBYTE(self) = [instructionDelegate viewController:self shouldShowFlagForStep:stepCopy listItem:itemCopy];

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
    dataSource = [(DirectionsStepsTableViewController *)v2 dataSource];
    [dataSource setRapDelegate:v3];
  }

  return v3;
}

@end