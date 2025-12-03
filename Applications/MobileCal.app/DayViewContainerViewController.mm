@interface DayViewContainerViewController
- (Class)childViewControllerClassForTraits:(id)traits;
- (id)childViewControllerForCompactWidthRegularHeight;
- (id)childViewControllerForRegularWidthRegularHeight;
- (id)currentChildViewController;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation DayViewContainerViewController

- (id)currentChildViewController
{
  v4.receiver = self;
  v4.super_class = DayViewContainerViewController;
  currentChildViewController = [(MainViewControllerContainer *)&v4 currentChildViewController];

  return currentChildViewController;
}

- (id)childViewControllerForCompactWidthRegularHeight
{
  v3 = *(&self->super._animatingViewTransition + 1);
  if (!v3)
  {
    model = [(MainViewController *)self model];
    selectedDate = [model selectedDate];

    v6 = [CompactDayViewController alloc];
    model2 = [(MainViewController *)self model];
    window = [(MainViewController *)self window];
    v9 = [(DayViewController *)v6 initWithDay:selectedDate model:model2 window:window];
    v10 = *(&self->super._animatingViewTransition + 1);
    *(&self->super._animatingViewTransition + 1) = v9;

    v3 = *(&self->super._animatingViewTransition + 1);
  }

  return v3;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v7.receiver = self;
  v7.super_class = DayViewContainerViewController;
  [(DayViewContainerViewController *)&v7 viewIsAppearing:appearing];
  navigationController = [(DayViewContainerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  standardAppearance = [navigationBar standardAppearance];
  [navigationBar setScrollEdgeAppearance:standardAppearance];
}

- (id)childViewControllerForRegularWidthRegularHeight
{
  v3 = *(&self->_compactController + 1);
  if (!v3)
  {
    model = [(MainViewController *)self model];
    selectedDate = [model selectedDate];

    v6 = [LargeDayViewController alloc];
    model2 = [(MainViewController *)self model];
    window = [(MainViewController *)self window];
    v9 = [(LargeDayViewController *)v6 initWithDay:selectedDate model:model2 window:window];
    v10 = *(&self->_compactController + 1);
    *(&self->_compactController + 1) = v9;

    v3 = *(&self->_compactController + 1);
  }

  return v3;
}

- (Class)childViewControllerClassForTraits:(id)traits
{
  [traits horizontalSizeClass];
  v3 = objc_opt_class();

  return v3;
}

@end