@interface MultiDayWeekViewContainerViewController
- (id)childViewControllerForCompactWidthRegularHeight;
- (id)currentChildViewController;
@end

@implementation MultiDayWeekViewContainerViewController

- (id)currentChildViewController
{
  v4.receiver = self;
  v4.super_class = MultiDayWeekViewContainerViewController;
  currentChildViewController = [(WeekViewContainerViewController *)&v4 currentChildViewController];

  return currentChildViewController;
}

- (id)childViewControllerForCompactWidthRegularHeight
{
  v3 = *(&self->super._regularController + 1);
  if (!v3)
  {
    v4 = [MultiDayWeekViewController alloc];
    model = [(MainViewController *)self model];
    window = [(MainViewController *)self window];
    v7 = [(MultiDayWeekViewController *)v4 initWithModel:model window:window];
    v8 = *(&self->super._regularController + 1);
    *(&self->super._regularController + 1) = v7;

    v9 = *(&self->super._regularController + 1);
    navigationController = [(MultiDayWeekViewContainerViewController *)self navigationController];
    [v9 setDelegate:navigationController];

    v3 = *(&self->super._regularController + 1);
  }

  return v3;
}

@end