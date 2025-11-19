@interface YearViewContainerViewController
- (Class)childViewControllerClassForTraits:(id)a3;
- (id)_pushMonthViewControllerWithDate:(id)a3 animated:(BOOL)a4;
- (id)childViewControllerForCompactWidthRegularHeight;
- (id)childViewControllerForRegularWidthRegularHeight;
- (id)currentChildViewController;
- (id)pushedNextLevelMainViewControllerContainerAnimated:(BOOL)a3;
- (void)pushContentViewOfType:(int64_t)a3 date:(id)a4 animated:(BOOL)a5;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation YearViewContainerViewController

- (id)currentChildViewController
{
  v4.receiver = self;
  v4.super_class = YearViewContainerViewController;
  v2 = [(MainViewControllerContainer *)&v4 currentChildViewController];

  return v2;
}

- (id)childViewControllerForCompactWidthRegularHeight
{
  v3 = *(&self->_cachedMonthViewController + 1);
  if (!v3)
  {
    v4 = [(MainViewController *)self model];
    v5 = [v4 selectedDate];

    v6 = [CompactYearViewController alloc];
    v7 = [(MainViewController *)self model];
    v8 = [(MainViewController *)self window];
    v9 = [(YearViewController *)v6 initWithCalendarDate:v5 model:v7 window:v8];
    v10 = *(&self->_cachedMonthViewController + 1);
    *(&self->_cachedMonthViewController + 1) = v9;

    [*(&self->_cachedMonthViewController + 1) setPushDelegate:self];
    v3 = *(&self->_cachedMonthViewController + 1);
  }

  return v3;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = YearViewContainerViewController;
  [(YearViewContainerViewController *)&v7 viewIsAppearing:a3];
  if (CalSolariumEnabled())
  {
    v4 = [(YearViewContainerViewController *)self navigationController];
    v5 = [v4 navigationBar];

    v6 = [v5 standardAppearance];
    [v6 setBackgroundEffect:0];
    [v5 setScrollEdgeAppearance:v6];
  }
}

- (id)pushedNextLevelMainViewControllerContainerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(YearViewContainerViewController *)self currentChildViewController];
  v6 = [(MainViewController *)self model];
  v7 = [v6 selectedDate];
  v8 = [(YearViewContainerViewController *)self _pushMonthViewControllerWithDate:v7 animated:v3];

  return v8;
}

- (id)_pushMonthViewControllerWithDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MainViewController *)self model];
  [v7 setSelectedDate:v6];

  v8 = [(YearViewContainerViewController *)self navigationController];
  v9 = [v8 viewControllers];
  if ([v9 count] <= 1)
  {
  }

  else
  {
    v10 = [(YearViewContainerViewController *)self navigationController];
    v11 = [v10 viewControllers];
    v12 = [v11 objectAtIndex:1];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = [(YearViewContainerViewController *)self navigationController];
      v15 = [v14 viewControllers];
      v16 = [v15 objectAtIndex:1];

      goto LABEL_9;
    }
  }

  v17 = *(&self->super._animatingViewTransition + 1);
  v16 = v17;
  if (!v17)
  {
    v18 = [MonthViewContainerViewController alloc];
    v19 = [(MainViewController *)self model];
    v20 = [(MainViewController *)self window];
    v16 = [(MainViewControllerContainer *)v18 initWithModel:v19 window:v20];
  }

  v21 = [(YearViewContainerViewController *)self navigationController];
  [v21 pushViewController:v16 animated:v4];

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
    v4 = [(MainViewController *)self model];
    v5 = [v4 selectedDate];

    v6 = [LargeYearViewController alloc];
    v7 = [(MainViewController *)self model];
    v8 = [(MainViewController *)self window];
    v9 = [(YearViewController *)v6 initWithCalendarDate:v5 model:v7 window:v8];
    v10 = *(&self->_compactController + 1);
    *(&self->_compactController + 1) = v9;

    [*(&self->_compactController + 1) setPushDelegate:self];
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

- (void)pushContentViewOfType:(int64_t)a3 date:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v12 = v8;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v9 = [(YearViewContainerViewController *)self navigationController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 pushCalendarViewControllerWithViewType:a3 andDate:v12];
    }
  }

  else
  {
    v11 = [(YearViewContainerViewController *)self _pushMonthViewControllerWithDate:v8 animated:v5];
  }
}

@end