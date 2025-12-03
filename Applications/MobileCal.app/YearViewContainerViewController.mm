@interface YearViewContainerViewController
- (Class)childViewControllerClassForTraits:(id)traits;
- (id)_pushMonthViewControllerWithDate:(id)date animated:(BOOL)animated;
- (id)childViewControllerForCompactWidthRegularHeight;
- (id)childViewControllerForRegularWidthRegularHeight;
- (id)currentChildViewController;
- (id)pushedNextLevelMainViewControllerContainerAnimated:(BOOL)animated;
- (void)pushContentViewOfType:(int64_t)type date:(id)date animated:(BOOL)animated;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation YearViewContainerViewController

- (id)currentChildViewController
{
  v4.receiver = self;
  v4.super_class = YearViewContainerViewController;
  currentChildViewController = [(MainViewControllerContainer *)&v4 currentChildViewController];

  return currentChildViewController;
}

- (id)childViewControllerForCompactWidthRegularHeight
{
  v3 = *(&self->_cachedMonthViewController + 1);
  if (!v3)
  {
    model = [(MainViewController *)self model];
    selectedDate = [model selectedDate];

    v6 = [CompactYearViewController alloc];
    model2 = [(MainViewController *)self model];
    window = [(MainViewController *)self window];
    v9 = [(YearViewController *)v6 initWithCalendarDate:selectedDate model:model2 window:window];
    v10 = *(&self->_cachedMonthViewController + 1);
    *(&self->_cachedMonthViewController + 1) = v9;

    [*(&self->_cachedMonthViewController + 1) setPushDelegate:self];
    v3 = *(&self->_cachedMonthViewController + 1);
  }

  return v3;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v7.receiver = self;
  v7.super_class = YearViewContainerViewController;
  [(YearViewContainerViewController *)&v7 viewIsAppearing:appearing];
  if (CalSolariumEnabled())
  {
    navigationController = [(YearViewContainerViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];

    standardAppearance = [navigationBar standardAppearance];
    [standardAppearance setBackgroundEffect:0];
    [navigationBar setScrollEdgeAppearance:standardAppearance];
  }
}

- (id)pushedNextLevelMainViewControllerContainerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentChildViewController = [(YearViewContainerViewController *)self currentChildViewController];
  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];
  v8 = [(YearViewContainerViewController *)self _pushMonthViewControllerWithDate:selectedDate animated:animatedCopy];

  return v8;
}

- (id)_pushMonthViewControllerWithDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  model = [(MainViewController *)self model];
  [model setSelectedDate:dateCopy];

  navigationController = [(YearViewContainerViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  if ([viewControllers count] <= 1)
  {
  }

  else
  {
    navigationController2 = [(YearViewContainerViewController *)self navigationController];
    viewControllers2 = [navigationController2 viewControllers];
    v12 = [viewControllers2 objectAtIndex:1];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      navigationController3 = [(YearViewContainerViewController *)self navigationController];
      viewControllers3 = [navigationController3 viewControllers];
      v16 = [viewControllers3 objectAtIndex:1];

      goto LABEL_9;
    }
  }

  v17 = *(&self->super._animatingViewTransition + 1);
  v16 = v17;
  if (!v17)
  {
    v18 = [MonthViewContainerViewController alloc];
    model2 = [(MainViewController *)self model];
    window = [(MainViewController *)self window];
    v16 = [(MainViewControllerContainer *)v18 initWithModel:model2 window:window];
  }

  navigationController4 = [(YearViewContainerViewController *)self navigationController];
  [navigationController4 pushViewController:v16 animated:animatedCopy];

  if (v17)
  {
    [(MainViewController *)v16 traitCollectionDidChange:0];
  }

LABEL_9:
  objc_storeStrong((&self->super._animatingViewTransition + 1), v16);

  return v16;
}

- (id)childViewControllerForRegularWidthRegularHeight
{
  v3 = *(&self->_compactController + 1);
  if (!v3)
  {
    model = [(MainViewController *)self model];
    selectedDate = [model selectedDate];

    v6 = [LargeYearViewController alloc];
    model2 = [(MainViewController *)self model];
    window = [(MainViewController *)self window];
    v9 = [(YearViewController *)v6 initWithCalendarDate:selectedDate model:model2 window:window];
    v10 = *(&self->_compactController + 1);
    *(&self->_compactController + 1) = v9;

    [*(&self->_compactController + 1) setPushDelegate:self];
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

- (void)pushContentViewOfType:(int64_t)type date:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  v12 = dateCopy;
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    navigationController = [(YearViewContainerViewController *)self navigationController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [navigationController pushCalendarViewControllerWithViewType:type andDate:v12];
    }
  }

  else
  {
    v11 = [(YearViewContainerViewController *)self _pushMonthViewControllerWithDate:dateCopy animated:animatedCopy];
  }
}

@end