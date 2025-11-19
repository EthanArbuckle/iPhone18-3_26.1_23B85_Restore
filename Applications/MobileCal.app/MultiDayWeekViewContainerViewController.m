@interface MultiDayWeekViewContainerViewController
- (id)childViewControllerForCompactWidthRegularHeight;
- (id)currentChildViewController;
@end

@implementation MultiDayWeekViewContainerViewController

- (id)currentChildViewController
{
  v4.receiver = self;
  v4.super_class = MultiDayWeekViewContainerViewController;
  v2 = [(WeekViewContainerViewController *)&v4 currentChildViewController];

  return v2;
}

- (id)childViewControllerForCompactWidthRegularHeight
{
  v3 = *(&self->super._regularController + 1);
  if (!v3)
  {
    v4 = [MultiDayWeekViewController alloc];
    v5 = [(MainViewController *)self model];
    v6 = [(MainViewController *)self window];
    v7 = [(MultiDayWeekViewController *)v4 initWithModel:v5 window:v6];
    v8 = *(&self->super._regularController + 1);
    *(&self->super._regularController + 1) = v7;

    v9 = *(&self->super._regularController + 1);
    v10 = [(MultiDayWeekViewContainerViewController *)self navigationController];
    [v9 setDelegate:v10];

    v3 = *(&self->super._regularController + 1);
  }

  return v3;
}

@end