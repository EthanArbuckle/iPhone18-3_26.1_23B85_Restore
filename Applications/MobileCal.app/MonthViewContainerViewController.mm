@interface MonthViewContainerViewController
- (Class)childViewControllerClassForTraits:(id)a3;
- (LargeMonthViewController)standardRegularController;
- (LargeTextLargeMonthViewController)largeTextRegularController;
- (id)childViewControllerForCompactWidthRegularHeight;
- (id)childViewControllerForRegularWidthCompactHeight;
- (id)childViewControllerForRegularWidthRegularHeight;
- (id)currentChildViewController;
- (id)nextLevelWeekViewController;
- (id)pushedNextLevelMainViewControllerContainerAnimated:(BOOL)a3;
- (void)childViewControllerChangedForCurrentTraits;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MonthViewContainerViewController

- (id)childViewControllerForCompactWidthRegularHeight
{
  v3 = *(&self->super._animatingViewTransition + 1);
  if (!v3)
  {
    v4 = [(MainViewController *)self model];
    v5 = [v4 selectedDate];

    v6 = [CompactWidthMonthViewController alloc];
    v7 = [(MainViewController *)self model];
    v8 = [(MainViewController *)self window];
    v9 = [(CompactWidthMonthViewController *)v6 initWithCalendarDate:v5 model:v7 window:v8];
    v10 = *(&self->super._animatingViewTransition + 1);
    *(&self->super._animatingViewTransition + 1) = v9;

    v3 = *(&self->super._animatingViewTransition + 1);
  }

  return v3;
}

- (void)childViewControllerChangedForCurrentTraits
{
  v4 = [(MonthViewContainerViewController *)self traitCollection];
  if ([v4 horizontalSizeClass] == 2)
  {
    v3 = [(MonthViewContainerViewController *)self isViewLoaded];

    if (v3)
    {

      [(MainViewControllerContainer *)self setupForViewAppearance];
    }
  }

  else
  {
  }
}

- (id)currentChildViewController
{
  v4.receiver = self;
  v4.super_class = MonthViewContainerViewController;
  v2 = [(MainViewControllerContainer *)&v4 currentChildViewController];

  return v2;
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MonthViewContainerViewController *)self traitCollection];
  v9 = [(MonthViewContainerViewController *)self currentChildViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(MonthViewContainerViewController *)self currentChildViewController];
    v11 = [v10 dividedListMode];

    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  if ([v8 horizontalSizeClass] == 1)
  {
    v13 = [(MonthViewContainerViewController *)self navigationController];
    v14 = [v13 topViewController];
    v15 = (v14 == self) & v12;

    if (v15 == 1)
    {
      v16 = [(MainViewControllerContainer *)self bestDateForNewEvent];
      if (v16)
      {
        v17 = [(MainViewController *)self model];
        [v17 setSelectedDate:v16];
      }

      else
      {
        v18 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = self;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@ was unable to find bestDateForNewEvent!", buf, 0xCu);
        }
      }
    }
  }

  v19.receiver = self;
  v19.super_class = MonthViewContainerViewController;
  [(MainViewController *)&v19 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
}

- (id)pushedNextLevelMainViewControllerContainerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MainViewController *)self model];
  v6 = [v5 selectedDate];

  v7 = [(MonthViewContainerViewController *)self currentChildViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(MonthViewContainerViewController *)self currentChildViewController];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
  }

  v11 = [(MonthViewContainerViewController *)self currentChildViewController];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  v13 = [(MonthViewContainerViewController *)self currentChildViewController];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if (v9)
  {
    v15 = [(MainViewController *)self model];
    v16 = [v15 showDayAsList];

    if (v16)
    {
      v17 = [(MonthViewContainerViewController *)self currentChildViewController];
      v18 = [v17 pushedListViewControllerWithDate:v6 animated:v3];
    }

    else
    {
      v19 = (_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl();
      v21 = [(MainViewController *)self model];
      v22 = [v21 numDaysToShow];

      v23 = [(MonthViewContainerViewController *)self currentChildViewController];
      v17 = v23;
      if (v19 && v22 == 2)
      {
        v18 = [v23 pushedMultiDayViewControllerWithDate:v6 animated:v3];
      }

      else
      {
        v18 = [v23 pushedDayViewControllerWithDate:v6 animated:v3];
      }
    }
  }

  else
  {
    if ((v12 & 1) == 0 && (v14 & 1) == 0 && (isKindOfClass & 1) == 0)
    {
      v20 = 0;
      goto LABEL_21;
    }

    v17 = [(MonthViewContainerViewController *)self currentChildViewController];
    v18 = [v17 pushedWeekViewControllerWithDate:v6 animated:0];
  }

  v20 = v18;

LABEL_21:

  return v20;
}

- (id)nextLevelWeekViewController
{
  v3 = [(MainViewController *)self model];
  v4 = [v3 selectedDate];

  v5 = [(MonthViewContainerViewController *)self currentChildViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [(MonthViewContainerViewController *)self currentChildViewController];
  if (isKindOfClass)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  v7 = [(MonthViewContainerViewController *)self currentChildViewController];
  if (v8)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v7 = [(MonthViewContainerViewController *)self currentChildViewController];
LABEL_5:
    v10 = [v7 nextLevelWeekViewControllerWithDate:v4];

    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (id)childViewControllerForRegularWidthCompactHeight
{
  v3 = *(&self->_compactWidthController + 1);
  if (!v3)
  {
    v4 = [(MainViewController *)self model];
    v5 = [v4 selectedDate];

    v6 = [MultiColumnMonthViewController alloc];
    v7 = [(MainViewController *)self model];
    v8 = [(MainViewController *)self window];
    v9 = [(MultiColumnMonthViewController *)v6 initWithCalendarDate:v5 model:v7 window:v8];
    v10 = *(&self->_compactWidthController + 1);
    *(&self->_compactWidthController + 1) = v9;

    v3 = *(&self->_compactWidthController + 1);
  }

  return v3;
}

- (LargeMonthViewController)standardRegularController
{
  v3 = *(&self->_compactHeightController + 1);
  if (!v3)
  {
    v4 = [(MainViewController *)self model];
    v5 = [v4 selectedDate];

    v6 = [LargeMonthViewController alloc];
    v7 = [(MainViewController *)self model];
    v8 = [(MainViewController *)self window];
    v9 = [(LargeMonthViewController *)v6 initWithCalendarDate:v5 model:v7 window:v8];
    v10 = *(&self->_compactHeightController + 1);
    *(&self->_compactHeightController + 1) = v9;

    v3 = *(&self->_compactHeightController + 1);
  }

  return v3;
}

- (LargeTextLargeMonthViewController)largeTextRegularController
{
  v3 = *(&self->_standardRegularController + 1);
  if (!v3)
  {
    v4 = [(MainViewController *)self model];
    v5 = [v4 selectedDate];

    v6 = [LargeTextLargeMonthViewController alloc];
    v7 = [(MainViewController *)self model];
    v8 = [(MainViewController *)self window];
    v9 = [(CompactWidthMonthViewController *)v6 initWithCalendarDate:v5 model:v7 window:v8];
    v10 = *(&self->_standardRegularController + 1);
    *(&self->_standardRegularController + 1) = v9;

    v3 = *(&self->_standardRegularController + 1);
  }

  return v3;
}

- (id)childViewControllerForRegularWidthRegularHeight
{
  v3 = [(MonthViewContainerViewController *)self traitCollection];
  v4 = EKUIUsesLargeTextLayout();

  if (v4)
  {
    [(MonthViewContainerViewController *)self largeTextRegularController];
  }

  else
  {
    [(MonthViewContainerViewController *)self standardRegularController];
  }
  v5 = ;

  return v5;
}

- (Class)childViewControllerClassForTraits:(id)a3
{
  v4 = a3;
  if ([v4 horizontalSizeClass] == 2 && objc_msgSend(v4, "verticalSizeClass") != 1)
  {
    v5 = [(MonthViewContainerViewController *)self traitCollection];
    EKUIUsesLargeTextLayout();
  }

  v6 = objc_opt_class();

  return v6;
}

@end