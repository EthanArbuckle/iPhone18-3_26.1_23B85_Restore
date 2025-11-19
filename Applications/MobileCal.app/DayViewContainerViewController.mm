@interface DayViewContainerViewController
- (Class)childViewControllerClassForTraits:(id)a3;
- (id)childViewControllerForCompactWidthRegularHeight;
- (id)childViewControllerForRegularWidthRegularHeight;
- (id)currentChildViewController;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation DayViewContainerViewController

- (id)currentChildViewController
{
  v4.receiver = self;
  v4.super_class = DayViewContainerViewController;
  v2 = [(MainViewControllerContainer *)&v4 currentChildViewController];

  return v2;
}

- (id)childViewControllerForCompactWidthRegularHeight
{
  v3 = *(&self->super._animatingViewTransition + 1);
  if (!v3)
  {
    v4 = [(MainViewController *)self model];
    v5 = [v4 selectedDate];

    v6 = [CompactDayViewController alloc];
    v7 = [(MainViewController *)self model];
    v8 = [(MainViewController *)self window];
    v9 = [(DayViewController *)v6 initWithDay:v5 model:v7 window:v8];
    v10 = *(&self->super._animatingViewTransition + 1);
    *(&self->super._animatingViewTransition + 1) = v9;

    v3 = *(&self->super._animatingViewTransition + 1);
  }

  return v3;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = DayViewContainerViewController;
  [(DayViewContainerViewController *)&v7 viewIsAppearing:a3];
  v4 = [(DayViewContainerViewController *)self navigationController];
  v5 = [v4 navigationBar];

  v6 = [v5 standardAppearance];
  [v5 setScrollEdgeAppearance:v6];
}

- (id)childViewControllerForRegularWidthRegularHeight
{
  v3 = *(&self->_compactController + 1);
  if (!v3)
  {
    v4 = [(MainViewController *)self model];
    v5 = [v4 selectedDate];

    v6 = [LargeDayViewController alloc];
    v7 = [(MainViewController *)self model];
    v8 = [(MainViewController *)self window];
    v9 = [(LargeDayViewController *)v6 initWithDay:v5 model:v7 window:v8];
    v10 = *(&self->_compactController + 1);
    *(&self->_compactController + 1) = v9;

    v3 = *(&self->_compactController + 1);
  }

  return v3;
}

- (Class)childViewControllerClassForTraits:(id)a3
{
  [a3 horizontalSizeClass];
  v3 = objc_opt_class();

  return v3;
}

@end