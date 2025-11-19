@interface WeekViewContainerViewController
- (BOOL)allEventsIndividuallyRepresented:(id)a3;
- (BOOL)hidesBackButton;
- (Class)childViewControllerClassForTraits:(id)a3;
- (id)childViewControllerForCompactWidthCompactHeight;
- (id)childViewControllerForRegularWidthRegularHeight;
- (id)currentChildViewController;
- (id)pushedNextLevelMainViewControllerContainerAnimated:(BOOL)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewSwitcherSwitchedToViewWithDate:(id)a3;
@end

@implementation WeekViewContainerViewController

- (void)viewIsAppearing:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = WeekViewContainerViewController;
  [(WeekViewContainerViewController *)&v7 viewIsAppearing:a3];
  v4 = [(WeekViewContainerViewController *)self navigationController];
  v5 = [v4 navigationBar];

  v6 = [v5 standardAppearance];
  [v5 setScrollEdgeAppearance:v6];
}

- (id)currentChildViewController
{
  v4.receiver = self;
  v4.super_class = WeekViewContainerViewController;
  v2 = [(MainViewControllerContainer *)&v4 currentChildViewController];

  return v2;
}

- (id)pushedNextLevelMainViewControllerContainerAnimated:(BOOL)a3
{
  v4 = [(MainViewController *)self model];
  v5 = [v4 selectedDate];

  v6 = +[CUIKPreferences sharedPreferences];
  if ([v6 showExperimentalUI])
  {
    v7 = [(MainViewController *)self model];
    v8 = [v7 showDayAsList];

    if (v8)
    {
      v9 = [(WeekViewContainerViewController *)self currentChildViewController];
      v10 = [v9 pushedListViewControllerWithDate:v5 animated:0];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = [(WeekViewContainerViewController *)self currentChildViewController];
  v10 = [v9 pushedDayViewControllerWithDate:v5 animated:0];
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
    v5 = [(MainViewController *)self model];
    v6 = [(MainViewController *)self window];
    v7 = [(CompactWidthWeekViewController *)v4 initWithModel:v5 window:v6];
    v8 = *(&self->super._animatingViewTransition + 1);
    *(&self->super._animatingViewTransition + 1) = v7;

    v9 = *(&self->super._animatingViewTransition + 1);
    v10 = [(WeekViewContainerViewController *)self navigationController];
    [v9 setDelegate:v10];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"Week" value:&stru_1002133B8 table:0];
    v13 = [(WeekViewContainerViewController *)self navigationItem];
    [v13 setBackButtonTitle:v12];

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
    v5 = [(MainViewController *)self model];
    v6 = [(MainViewController *)self window];
    v7 = [(LargeWeekViewController *)v4 initWithModel:v5 window:v6];
    v8 = *(&self->_compactController + 1);
    *(&self->_compactController + 1) = v7;

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

- (void)viewSwitcherSwitchedToViewWithDate:(id)a3
{
  v7 = a3;
  v4 = [(WeekViewContainerViewController *)self currentChildViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WeekViewContainerViewController *)self currentChildViewController];
    [v6 viewSwitcherSwitchedToViewWithDate:v7];
  }
}

- (BOOL)hidesBackButton
{
  v2 = [(WeekViewContainerViewController *)self currentChildViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)allEventsIndividuallyRepresented:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      v10 = [(WeekViewContainerViewController *)self currentChildViewController];
      v11 = [v10 occurrenceViewForEvent:v9];

      if (!v11)
      {
        break;
      }

      v12 = [v11 occurrences];
      v13 = [v12 count];

      if (v13 > 1)
      {
        LOBYTE(v11) = 0;
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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