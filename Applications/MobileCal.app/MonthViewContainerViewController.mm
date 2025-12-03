@interface MonthViewContainerViewController
- (Class)childViewControllerClassForTraits:(id)traits;
- (LargeMonthViewController)standardRegularController;
- (LargeTextLargeMonthViewController)largeTextRegularController;
- (id)childViewControllerForCompactWidthRegularHeight;
- (id)childViewControllerForRegularWidthCompactHeight;
- (id)childViewControllerForRegularWidthRegularHeight;
- (id)currentChildViewController;
- (id)nextLevelWeekViewController;
- (id)pushedNextLevelMainViewControllerContainerAnimated:(BOOL)animated;
- (void)childViewControllerChangedForCurrentTraits;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation MonthViewContainerViewController

- (id)childViewControllerForCompactWidthRegularHeight
{
  v3 = *(&self->super._animatingViewTransition + 1);
  if (!v3)
  {
    model = [(MainViewController *)self model];
    selectedDate = [model selectedDate];

    v6 = [CompactWidthMonthViewController alloc];
    model2 = [(MainViewController *)self model];
    window = [(MainViewController *)self window];
    v9 = [(CompactWidthMonthViewController *)v6 initWithCalendarDate:selectedDate model:model2 window:window];
    v10 = *(&self->super._animatingViewTransition + 1);
    *(&self->super._animatingViewTransition + 1) = v9;

    v3 = *(&self->super._animatingViewTransition + 1);
  }

  return v3;
}

- (void)childViewControllerChangedForCurrentTraits
{
  traitCollection = [(MonthViewContainerViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    isViewLoaded = [(MonthViewContainerViewController *)self isViewLoaded];

    if (isViewLoaded)
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
  currentChildViewController = [(MainViewControllerContainer *)&v4 currentChildViewController];

  return currentChildViewController;
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  traitCollection = [(MonthViewContainerViewController *)self traitCollection];
  currentChildViewController = [(MonthViewContainerViewController *)self currentChildViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentChildViewController2 = [(MonthViewContainerViewController *)self currentChildViewController];
    dividedListMode = [currentChildViewController2 dividedListMode];

    v12 = dividedListMode ^ 1;
  }

  else
  {
    v12 = 1;
  }

  if ([traitCollection horizontalSizeClass] == 1)
  {
    navigationController = [(MonthViewContainerViewController *)self navigationController];
    topViewController = [navigationController topViewController];
    v15 = (topViewController == self) & v12;

    if (v15 == 1)
    {
      bestDateForNewEvent = [(MainViewControllerContainer *)self bestDateForNewEvent];
      if (bestDateForNewEvent)
      {
        model = [(MainViewController *)self model];
        [model setSelectedDate:bestDateForNewEvent];
      }

      else
      {
        v18 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@ was unable to find bestDateForNewEvent!", buf, 0xCu);
        }
      }
    }
  }

  v19.receiver = self;
  v19.super_class = MonthViewContainerViewController;
  [(MainViewController *)&v19 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
}

- (id)pushedNextLevelMainViewControllerContainerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];

  currentChildViewController = [(MonthViewContainerViewController *)self currentChildViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = 0;
  }

  else
  {
    currentChildViewController2 = [(MonthViewContainerViewController *)self currentChildViewController];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
  }

  currentChildViewController3 = [(MonthViewContainerViewController *)self currentChildViewController];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  currentChildViewController4 = [(MonthViewContainerViewController *)self currentChildViewController];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if (v9)
  {
    model2 = [(MainViewController *)self model];
    showDayAsList = [model2 showDayAsList];

    if (showDayAsList)
    {
      currentChildViewController5 = [(MonthViewContainerViewController *)self currentChildViewController];
      v18 = [currentChildViewController5 pushedListViewControllerWithDate:selectedDate animated:animatedCopy];
    }

    else
    {
      v19 = (_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl();
      model3 = [(MainViewController *)self model];
      numDaysToShow = [model3 numDaysToShow];

      currentChildViewController6 = [(MonthViewContainerViewController *)self currentChildViewController];
      currentChildViewController5 = currentChildViewController6;
      if (v19 && numDaysToShow == 2)
      {
        v18 = [currentChildViewController6 pushedMultiDayViewControllerWithDate:selectedDate animated:animatedCopy];
      }

      else
      {
        v18 = [currentChildViewController6 pushedDayViewControllerWithDate:selectedDate animated:animatedCopy];
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

    currentChildViewController5 = [(MonthViewContainerViewController *)self currentChildViewController];
    v18 = [currentChildViewController5 pushedWeekViewControllerWithDate:selectedDate animated:0];
  }

  v20 = v18;

LABEL_21:

  return v20;
}

- (id)nextLevelWeekViewController
{
  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];

  currentChildViewController = [(MonthViewContainerViewController *)self currentChildViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  currentChildViewController2 = [(MonthViewContainerViewController *)self currentChildViewController];
  if (isKindOfClass)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  currentChildViewController2 = [(MonthViewContainerViewController *)self currentChildViewController];
  if (v8)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    currentChildViewController2 = [(MonthViewContainerViewController *)self currentChildViewController];
LABEL_5:
    v10 = [currentChildViewController2 nextLevelWeekViewControllerWithDate:selectedDate];

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
    model = [(MainViewController *)self model];
    selectedDate = [model selectedDate];

    v6 = [MultiColumnMonthViewController alloc];
    model2 = [(MainViewController *)self model];
    window = [(MainViewController *)self window];
    v9 = [(MultiColumnMonthViewController *)v6 initWithCalendarDate:selectedDate model:model2 window:window];
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
    model = [(MainViewController *)self model];
    selectedDate = [model selectedDate];

    v6 = [LargeMonthViewController alloc];
    model2 = [(MainViewController *)self model];
    window = [(MainViewController *)self window];
    v9 = [(LargeMonthViewController *)v6 initWithCalendarDate:selectedDate model:model2 window:window];
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
    model = [(MainViewController *)self model];
    selectedDate = [model selectedDate];

    v6 = [LargeTextLargeMonthViewController alloc];
    model2 = [(MainViewController *)self model];
    window = [(MainViewController *)self window];
    v9 = [(CompactWidthMonthViewController *)v6 initWithCalendarDate:selectedDate model:model2 window:window];
    v10 = *(&self->_standardRegularController + 1);
    *(&self->_standardRegularController + 1) = v9;

    v3 = *(&self->_standardRegularController + 1);
  }

  return v3;
}

- (id)childViewControllerForRegularWidthRegularHeight
{
  traitCollection = [(MonthViewContainerViewController *)self traitCollection];
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

- (Class)childViewControllerClassForTraits:(id)traits
{
  traitsCopy = traits;
  if ([traitsCopy horizontalSizeClass] == 2 && objc_msgSend(traitsCopy, "verticalSizeClass") != 1)
  {
    traitCollection = [(MonthViewContainerViewController *)self traitCollection];
    EKUIUsesLargeTextLayout();
  }

  v6 = objc_opt_class();

  return v6;
}

@end