@interface WeekViewContainerViewController
- (BOOL)allEventsIndividuallyRepresented:(id)represented;
- (BOOL)hidesBackButton;
- (Class)childViewControllerClassForTraits:(id)traits;
- (id)childViewControllerForCompactWidthCompactHeight;
- (id)childViewControllerForRegularWidthRegularHeight;
- (id)currentChildViewController;
- (id)pushedNextLevelMainViewControllerContainerAnimated:(BOOL)animated;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewSwitcherSwitchedToViewWithDate:(id)date;
@end

@implementation WeekViewContainerViewController

- (void)viewIsAppearing:(BOOL)appearing
{
  v7.receiver = self;
  v7.super_class = WeekViewContainerViewController;
  [(WeekViewContainerViewController *)&v7 viewIsAppearing:appearing];
  navigationController = [(WeekViewContainerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  standardAppearance = [navigationBar standardAppearance];
  [navigationBar setScrollEdgeAppearance:standardAppearance];
}

- (id)currentChildViewController
{
  v4.receiver = self;
  v4.super_class = WeekViewContainerViewController;
  currentChildViewController = [(MainViewControllerContainer *)&v4 currentChildViewController];

  return currentChildViewController;
}

- (id)pushedNextLevelMainViewControllerContainerAnimated:(BOOL)animated
{
  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];

  v6 = +[CUIKPreferences sharedPreferences];
  if ([v6 showExperimentalUI])
  {
    model2 = [(MainViewController *)self model];
    showDayAsList = [model2 showDayAsList];

    if (showDayAsList)
    {
      currentChildViewController = [(WeekViewContainerViewController *)self currentChildViewController];
      v10 = [currentChildViewController pushedListViewControllerWithDate:selectedDate animated:0];
      goto LABEL_6;
    }
  }

  else
  {
  }

  currentChildViewController = [(WeekViewContainerViewController *)self currentChildViewController];
  v10 = [currentChildViewController pushedDayViewControllerWithDate:selectedDate animated:0];
LABEL_6:
  v11 = v10;

  return v11;
}

- (id)childViewControllerForCompactWidthCompactHeight
{
  v3 = *(&self->super._animatingViewTransition + 1);
  if (!v3)
  {
    v4 = [CompactWidthWeekViewController alloc];
    model = [(MainViewController *)self model];
    window = [(MainViewController *)self window];
    v7 = [(CompactWidthWeekViewController *)v4 initWithModel:model window:window];
    v8 = *(&self->super._animatingViewTransition + 1);
    *(&self->super._animatingViewTransition + 1) = v7;

    v9 = *(&self->super._animatingViewTransition + 1);
    navigationController = [(WeekViewContainerViewController *)self navigationController];
    [v9 setDelegate:navigationController];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"Week" value:&stru_1002133B8 table:0];
    navigationItem = [(WeekViewContainerViewController *)self navigationItem];
    [navigationItem setBackButtonTitle:v12];

    v3 = *(&self->super._animatingViewTransition + 1);
  }

  return v3;
}

- (id)childViewControllerForRegularWidthRegularHeight
{
  v3 = *(&self->_compactController + 1);
  if (!v3)
  {
    v4 = [LargeWeekViewController alloc];
    model = [(MainViewController *)self model];
    window = [(MainViewController *)self window];
    v7 = [(LargeWeekViewController *)v4 initWithModel:model window:window];
    v8 = *(&self->_compactController + 1);
    *(&self->_compactController + 1) = v7;

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

- (void)viewSwitcherSwitchedToViewWithDate:(id)date
{
  dateCopy = date;
  currentChildViewController = [(WeekViewContainerViewController *)self currentChildViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    currentChildViewController2 = [(WeekViewContainerViewController *)self currentChildViewController];
    [currentChildViewController2 viewSwitcherSwitchedToViewWithDate:dateCopy];
  }
}

- (BOOL)hidesBackButton
{
  currentChildViewController = [(WeekViewContainerViewController *)self currentChildViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)allEventsIndividuallyRepresented:(id)represented
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  representedCopy = represented;
  v5 = [representedCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(representedCopy);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      currentChildViewController = [(WeekViewContainerViewController *)self currentChildViewController];
      v11 = [currentChildViewController occurrenceViewForEvent:v9];

      if (!v11)
      {
        break;
      }

      occurrences = [v11 occurrences];
      v13 = [occurrences count];

      if (v13 > 1)
      {
        LOBYTE(v11) = 0;
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [representedCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
        LOBYTE(v11) = 1;
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

@end