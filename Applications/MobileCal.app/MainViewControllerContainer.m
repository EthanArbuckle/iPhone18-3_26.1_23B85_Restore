@interface MainViewControllerContainer
- (BOOL)allEventsIndividuallyRepresented:(id)a3;
- (BOOL)allowsOverriddenRightNavigationBarItems;
- (BOOL)allowsOverriddenToolbarItems;
- (BOOL)currentChildViewControllerIsLoaded;
- (BOOL)isDateVisible:(id)a3;
- (BOOL)isTodayVisible;
- (BOOL)isWaitingForBackgroundLoadingOfSelectedEventOccurrenceView;
- (BOOL)mainViewControllerCanChangeSelectedDate;
- (BOOL)mainViewControllerCanChangeSelectedEvent;
- (BOOL)performModalDialogsIfNeededWithContinue:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)shouldAdaptEventViewControllers;
- (BOOL)shouldInvalidateManagedNavigationControllerOnPresentationDismissal;
- (BOOL)shouldJournalMainViewControllerParent;
- (BOOL)shouldModallyPresentFirstShownViewController;
- (BOOL)shouldPushNextLevelViewControllerWhenTodayIsVisible;
- (BOOL)shouldRespondToApplicationDidBecomeActiveStateChange;
- (BOOL)shouldShowNavigationTitleWhenTopViewController;
- (BOOL)shouldUpdateOwnBackButtonWhenTopViewController;
- (BOOL)showEventDetailsWhenNewEventAdded;
- (BOOL)useContainingPalette;
- (BOOL)useSolariumNavigationBarAppearance;
- (BOOL)wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder;
- (MainViewControllerContainer)initWithModel:(id)a3 window:(id)a4;
- (NSString)description;
- (double)leftBarButtonBlankFixedSpaceWidth;
- (id)_childViewControllerForTraitCollection:(id)a3;
- (id)_todaysDate;
- (id)bestDateForNewEvent;
- (id)currentChildViewController;
- (id)emptyChildViewController;
- (id)managedNavigationController;
- (id)navigationBarDisplayedDateString;
- (id)preferredPreSizeClassTransitionSelectedDate;
- (id)sceneTitle;
- (id)updateBackButtonWhileTopViewControllerToDate:(id)a3;
- (id)viewControllerToShowFrom;
- (int)supportedToggleMode;
- (int64_t)presentationStyleOverrideForChildViewControllers;
- (void)_addChildViewControllerForCurrentTraits;
- (void)_removeChildViewControllerForCurrentTraits;
- (void)_updateForCurrentTraits;
- (void)currentlyVisibleDateRangeFromStartDate:(id *)a3 toEndDate:(id *)a4;
- (void)disableGestureRecognizers;
- (void)enableGestureRecognizers;
- (void)invalidateManagedNavigationController;
- (void)moveSelectedOccurrenceDown;
- (void)moveSelectedOccurrenceLeft;
- (void)moveSelectedOccurrenceRight;
- (void)moveSelectedOccurrenceUp;
- (void)navigateToNextDateComponentUnitAnimated:(BOOL)a3;
- (void)navigateToNextSelectableItem;
- (void)navigateToPreviousDateComponentUnitAnimated:(BOOL)a3;
- (void)navigateToPreviousSelectableItem;
- (void)selectDate:(id)a3 andTime:(BOOL)a4 animated:(BOOL)a5;
- (void)selectDate:(id)a3 animated:(BOOL)a4;
- (void)setShouldRespondToApplicationDidBecomeActiveStateChange:(BOOL)a3;
- (void)setupForViewAppearance;
- (void)setupUIForTraitCollection:(id)a3;
- (void)showDetailsForCurrentSelectableItem;
- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)showNextOccurrenceOfSelectableItem;
- (void)showNowAnimated:(BOOL)a3;
- (void)showPreviousOccurrenceOfSelectableItem;
- (void)showTodayAnimated:(BOOL)a3;
- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)updateBackButtonToDate:(id)a3;
- (void)updateNavigationBarDisplayedDateString;
- (void)updatePalette:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation MainViewControllerContainer

- (BOOL)currentChildViewControllerIsLoaded
{
  v3 = [(MainViewControllerContainer *)self childViewControllers];
  v4 = [v3 firstObject];

  v5 = [(MainViewControllerContainer *)self childViewControllers];
  if ([v5 count] && objc_msgSend(v4, "isViewLoaded"))
  {
    v6 = [v4 view];
    v7 = [v6 superview];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)currentChildViewController
{
  if (![(MainViewControllerContainer *)self currentChildViewControllerIsLoaded])
  {
    [(MainViewControllerContainer *)self _updateForCurrentTraits];
  }

  v3 = [(MainViewControllerContainer *)self childViewControllers];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v5 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [(MainViewControllerContainer *)self childViewControllers];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Extra calendar view children detected: %@", &v11, 0xCu);
    }
  }

  v8 = [(MainViewControllerContainer *)self childViewControllers];
  v9 = [v8 firstObject];

  return v9;
}

- (void)_updateForCurrentTraits
{
  v3 = [(MainViewControllerContainer *)self ekui_futureTraitCollection];

  if (v3)
  {
    v4 = [(MainViewControllerContainer *)self navigationItem];
    v5 = [(MainViewControllerContainer *)self ekui_futureTraitCollection];
    v6 = [(MainViewControllerContainer *)self _childViewControllerForTraitCollection:v5];

    if (v6)
    {
      v7 = [(MainViewControllerContainer *)self emptyChildViewController];

      if (v6 != v7)
      {
        goto LABEL_15;
      }
    }

    if ([(MainViewControllerContainer *)self shouldRemoveSelfFromNavigationStackIfTraitCollectionIsUnsupported])
    {
      v8 = [(MainViewControllerContainer *)self navigationController];
      v9 = [v8 viewControllers];

      v25 = self;
      v10 = [NSArray arrayWithObjects:&v25 count:1];
      v11 = [v9 arrayByExcludingObjectsInArray:v10];

      [(MainViewControllerContainer *)self beginAppearanceTransition:0 animated:0];
      v12 = [(MainViewControllerContainer *)self navigationController];
      [v12 setViewControllers:v11];

      [(MainViewControllerContainer *)self endAppearanceTransition];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v13 = [v11 reverseObjectEnumerator];
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        v15 = *v21;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v17;
              goto LABEL_18;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:

      [v14 setupForViewAppearance];
      v6 = 0;
      goto LABEL_19;
    }

    v18 = [(MainViewControllerContainer *)self childViewControllerForUnknownTraits];

    v6 = v18;
    if (v18)
    {
LABEL_15:
      if (v6 != self->_currentChildViewController)
      {
        [(MainViewControllerContainer *)self _removeChildViewControllerForCurrentTraits];
        [(MainViewControllerContainer *)self _addChildViewControllerForCurrentTraits];
        [(MainViewControllerContainer *)self childViewControllerChangedForCurrentTraits];
      }
    }

LABEL_19:
    v19 = [(MainViewControllerContainer *)self ekui_futureTraitCollection];
    [(MainViewController *)v6 setEkui_futureTraitCollection:v19];
  }
}

- (id)emptyChildViewController
{
  emptyChildViewController = self->_emptyChildViewController;
  if (!emptyChildViewController)
  {
    v4 = [EmptyMainViewController alloc];
    v5 = [(MainViewController *)self window];
    v6 = [(MainViewController *)self model];
    v7 = [(MainViewController *)v4 initWithWindow:v5 model:v6];
    v8 = self->_emptyChildViewController;
    self->_emptyChildViewController = v7;

    emptyChildViewController = self->_emptyChildViewController;
  }

  return emptyChildViewController;
}

- (void)_addChildViewControllerForCurrentTraits
{
  v3 = [(MainViewControllerContainer *)self ekui_futureTraitCollection];
  v4 = [(MainViewControllerContainer *)self _childViewControllerForTraitCollection:v3];

  if (v4)
  {
    [(MainViewControllerContainer *)self addChildViewController:v4];
    [(MainViewController *)v4 didMoveToParentViewController:self];
  }

  currentChildViewController = self->_currentChildViewController;
  self->_currentChildViewController = v4;
}

- (void)_removeChildViewControllerForCurrentTraits
{
  currentChildViewController = self->_currentChildViewController;
  if (currentChildViewController)
  {
    [(MainViewController *)currentChildViewController willMoveToParentViewController:0];
    v4 = [(MainViewController *)self->_currentChildViewController view];
    [v4 removeFromSuperview];

    v5 = self->_currentChildViewController;

    [(MainViewController *)v5 removeFromParentViewController];
  }
}

- (BOOL)allowsOverriddenRightNavigationBarItems
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 allowsOverriddenRightNavigationBarItems];

  return v6;
}

- (int)supportedToggleMode
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 supportedToggleMode];

  return v6;
}

- (void)setupForViewAppearance
{
  v3 = [(MainViewControllerContainer *)self view];
  v4 = [v3 subviews];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [(MainViewControllerContainer *)self navigationController];
    v7 = [v6 view];
    v8 = [v7 window];

    if (v8)
    {
      v9 = [(MainViewControllerContainer *)self navigationController];
      v10 = [v9 view];
      v11 = [v10 window];
      EKUIPushFallbackSizingContextWithViewHierarchy();
    }

    v12 = [(MainViewControllerContainer *)self view];
    [v12 frame];
    v14 = v13;
    v15 = [(MainViewControllerContainer *)self view];
    [v15 frame];
    v17 = v16;

    v18 = [(MainViewController *)self->_currentChildViewController view];
    [v18 setFrame:{0.0, 0.0, v14, v17}];

    currentChildViewController = self->_currentChildViewController;
    v20 = [(MainViewController *)self model];
    v21 = [v20 selectedDate];
    [(MainViewController *)currentChildViewController selectDate:v21 animated:0];

    [(MainViewControllerContainer *)self setEdgesForExtendedLayout:[(MainViewController *)self->_currentChildViewController edgesForExtendedLayout]];
    v22 = [(MainViewController *)self->_currentChildViewController view];
    v23 = [v22 superview];

    if (v23)
    {
      v24 = [(MainViewController *)self->_currentChildViewController view];
      [v24 removeFromSuperview];
    }

    v25 = [(MainViewController *)self->_currentChildViewController view];
    [v25 setAlpha:1.0];

    v26 = [(MainViewControllerContainer *)self view];
    v27 = [(MainViewController *)self->_currentChildViewController view];
    [v26 addSubview:v27];

    if ((CalSolariumEnabled() & 1) != 0 || CalUIKitNavBarEnabled())
    {
      v28 = +[UIDevice currentDevice];
      v29 = [v28 userInterfaceIdiom];

      if (v29)
      {
        v30 = self->_currentChildViewController;
        if (v30)
        {
          if ([(MainViewController *)v30 intendedSizeClass]== 2)
          {
            v31 = [(MainViewController *)self->_currentChildViewController view];
            [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

            v66 = [(MainViewController *)self->_currentChildViewController view];
            v78 = [v66 leadingAnchor];
            v80 = [(MainViewControllerContainer *)self view];
            v76 = [v80 safeAreaLayoutGuide];
            v74 = [v76 leadingAnchor];
            v72 = [v78 constraintEqualToAnchor:v74];
            v83[0] = v72;
            v70 = [(MainViewController *)self->_currentChildViewController view];
            v64 = [v70 trailingAnchor];
            v68 = [(MainViewControllerContainer *)self view];
            v62 = [v68 safeAreaLayoutGuide];
            v60 = [v62 trailingAnchor];
            v58 = [v64 constraintEqualToAnchor:v60];
            v83[1] = v58;
            v56 = [(MainViewController *)self->_currentChildViewController view];
            v52 = [v56 topAnchor];
            v54 = [(MainViewControllerContainer *)self view];
            v32 = [v54 topAnchor];
            v33 = [v52 constraintEqualToAnchor:v32];
            v83[2] = v33;
            v34 = [(MainViewController *)self->_currentChildViewController view];
            v35 = [v34 bottomAnchor];
            v36 = [(MainViewControllerContainer *)self view];
            v37 = [v36 bottomAnchor];
            v38 = [v35 constraintEqualToAnchor:v37];
            v83[3] = v38;
            v39 = [NSArray arrayWithObjects:v83 count:4];
            [NSLayoutConstraint activateConstraints:v39];

            v40 = v66;
          }

          else
          {
            v81 = [(MainViewController *)self->_currentChildViewController view];
            v77 = [v81 leadingAnchor];
            v79 = [(MainViewControllerContainer *)self view];
            v75 = [v79 safeAreaLayoutGuide];
            v73 = [v75 leadingAnchor];
            v71 = [v77 constraintEqualToAnchor:v73];
            v82[0] = v71;
            v69 = [(MainViewController *)self->_currentChildViewController view];
            v65 = [v69 trailingAnchor];
            v67 = [(MainViewControllerContainer *)self view];
            v63 = [v67 safeAreaLayoutGuide];
            v61 = [v63 trailingAnchor];
            v59 = [v65 constraintEqualToAnchor:v61];
            v82[1] = v59;
            v57 = [(MainViewController *)self->_currentChildViewController view];
            v53 = [v57 topAnchor];
            v55 = [(MainViewControllerContainer *)self view];
            v51 = [v55 topAnchor];
            v41 = [v53 constraintEqualToAnchor:v51];
            v82[2] = v41;
            v42 = [(MainViewController *)self->_currentChildViewController view];
            v43 = [v42 bottomAnchor];
            v44 = [(MainViewControllerContainer *)self view];
            v45 = [v44 bottomAnchor];
            v46 = [v43 constraintEqualToAnchor:v45];
            v82[3] = v46;
            v47 = [NSArray arrayWithObjects:v82 count:4];
            [NSLayoutConstraint deactivateConstraints:v47];

            v40 = [(MainViewController *)self->_currentChildViewController view];
            [v40 setTranslatesAutoresizingMaskIntoConstraints:1];
          }
        }
      }
    }

    if (v8)
    {
      v48 = [(MainViewControllerContainer *)self navigationController];
      v49 = [v48 view];
      v50 = [v49 window];
      EKUIPopFallbackSizingContextWithViewHierarchy();
    }
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MainViewControllerContainer;
  [(MainViewControllerContainer *)&v5 viewDidLoad];
  v3 = objc_autoreleasePoolPush();
  [(MainViewControllerContainer *)self _updateForCurrentTraits];
  [(MainViewControllerContainer *)self setupForViewAppearance];
  v4 = [(MainViewControllerContainer *)self view];
  [v4 setNeedsLayout];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)allowsOverriddenToolbarItems
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 allowsOverriddenToolbarItems];

  return v6;
}

- (BOOL)shouldUpdateOwnBackButtonWhenTopViewController
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 shouldUpdateOwnBackButtonWhenTopViewController];

  return v6;
}

- (void)viewWillLayoutSubviews
{
  [(MainViewControllerContainer *)self _updateForCurrentTraits];
  v3.receiver = self;
  v3.super_class = MainViewControllerContainer;
  [(MainViewControllerContainer *)&v3 viewWillLayoutSubviews];
}

- (MainViewControllerContainer)initWithModel:(id)a3 window:(id)a4
{
  v8.receiver = self;
  v8.super_class = MainViewControllerContainer;
  v4 = [(MainViewController *)&v8 initWithWindow:a4 model:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [(MainViewControllerContainer *)v4 navigationItem];
    if (objc_opt_respondsToSelector())
    {
      [v6 _setAllowsInteractivePop:0];
    }
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if ("copy:" == a3 || "paste:" == a3 || "cut:" == a3)
  {
    v11.receiver = self;
    v11.super_class = MainViewControllerContainer;
    return [(MainViewControllerContainer *)&v11 respondsToSelector:a3];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();
    if (v8)
    {
      return 1;
    }

    else
    {
      v9 = [(MainViewControllerContainer *)self ekui_futureTraitCollection];
      v10 = [(objc_class *)[(MainViewControllerContainer *)self childViewControllerClassForTraits:v9] instancesRespondToSelector:a3];

      return v10;
    }
  }
}

- (NSString)description
{
  v12 = objc_opt_class();
  v3 = [(MainViewControllerContainer *)self traitCollection];
  v4 = [v3 horizontalSizeClass];
  v5 = [(MainViewControllerContainer *)self traitCollection];
  v6 = [v5 verticalSizeClass];
  v7 = [(MainViewControllerContainer *)self ekui_futureTraitCollection];
  v8 = [v7 horizontalSizeClass];
  v9 = [(MainViewControllerContainer *)self ekui_futureTraitCollection];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p  WidthClass: %ld  HeightClass: %ld  FutureWidthClass: %ld  FutureHeightClass: %ld  Showing %@ %p>", v12, self, v4, v6, v8, [v9 verticalSizeClass], objc_opt_class(), self->_currentChildViewController);

  return v10;
}

- (BOOL)performModalDialogsIfNeededWithContinue:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(MainViewController *)self->_currentChildViewController performModalDialogsIfNeededWithContinue:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MainViewControllerContainer;
  [(MainViewControllerContainer *)&v4 viewWillAppear:a3];
  [(MainViewControllerContainer *)self setupForViewAppearance];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MainViewControllerContainer;
  [(MainViewControllerContainer *)&v6 viewWillDisappear:?];
  if ([(MainViewControllerContainer *)self currentChildViewControllerIsLoaded])
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    [v5 beginAppearanceTransition:0 animated:v3];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MainViewControllerContainer;
  [(MainViewControllerContainer *)&v5 viewDidDisappear:a3];
  if ([(MainViewControllerContainer *)self currentChildViewControllerIsLoaded])
  {
    v4 = [(MainViewControllerContainer *)self currentChildViewController];
    [v4 endAppearanceTransition];
  }
}

- (void)setupUIForTraitCollection:(id)a3
{
  v4 = a3;
  [(MainViewControllerContainer *)self _updateForCurrentTraits];
  [(MainViewController *)self->_currentChildViewController setupUIForTraitCollection:v4];

  v5 = [(MainViewControllerContainer *)self view];
  [v5 setNeedsLayout];
}

- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(MainViewControllerContainer *)self currentChildViewController];
  [v13 showViewController:v12 sender:v11 animated:v6 completion:v10];
}

- (int64_t)presentationStyleOverrideForChildViewControllers
{
  v2 = [(MainViewControllerContainer *)self currentChildViewController];
  v3 = [v2 presentationStyleOverrideForChildViewControllers];

  return v3;
}

- (id)viewControllerToShowFrom
{
  v2 = [(MainViewControllerContainer *)self currentChildViewController];
  v3 = [v2 viewControllerToShowFrom];

  return v3;
}

- (id)_childViewControllerForTraitCollection:(id)a3
{
  v4 = a3;
  if ([v4 horizontalSizeClass] == 2 && objc_msgSend(v4, "verticalSizeClass") == 2)
  {
    v5 = [(MainViewControllerContainer *)self childViewControllerForRegularWidthRegularHeight];
  }

  else if ([v4 horizontalSizeClass] == 2 && objc_msgSend(v4, "verticalSizeClass") == 1)
  {
    v5 = [(MainViewControllerContainer *)self childViewControllerForRegularWidthCompactHeight];
  }

  else if ([v4 horizontalSizeClass] == 1 && objc_msgSend(v4, "verticalSizeClass") == 2)
  {
    v5 = [(MainViewControllerContainer *)self childViewControllerForCompactWidthRegularHeight];
  }

  else if ([v4 horizontalSizeClass] == 1 && objc_msgSend(v4, "verticalSizeClass") == 1)
  {
    v5 = [(MainViewControllerContainer *)self childViewControllerForCompactWidthCompactHeight];
  }

  else
  {
    v5 = [(MainViewControllerContainer *)self emptyChildViewController];
  }

  v6 = v5;

  return v6;
}

- (id)managedNavigationController
{
  v2 = [(MainViewControllerContainer *)self currentChildViewController];
  v3 = [v2 managedNavigationController];

  return v3;
}

- (void)invalidateManagedNavigationController
{
  v2 = [(MainViewControllerContainer *)self currentChildViewController];
  [v2 invalidateManagedNavigationController];
}

- (BOOL)shouldInvalidateManagedNavigationControllerOnPresentationDismissal
{
  v2 = [(MainViewControllerContainer *)self currentChildViewController];
  v3 = [v2 shouldInvalidateManagedNavigationControllerOnPresentationDismissal];

  return v3;
}

- (BOOL)shouldModallyPresentFirstShownViewController
{
  v2 = [(MainViewControllerContainer *)self currentChildViewController];
  v3 = [v2 shouldModallyPresentFirstShownViewController];

  return v3;
}

- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v8 = a4;
  v14 = a3;
  v10 = a6;
  v11 = [(MainViewControllerContainer *)self currentChildViewController];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(MainViewControllerContainer *)self currentChildViewController];
    [v13 showEvent:v14 animated:v8 showMode:a5 context:v10];
  }
}

- (void)selectDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(MainViewControllerContainer *)self currentChildViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MainViewControllerContainer *)self currentChildViewController];
    [v8 selectDate:v9 animated:v4];
  }
}

- (void)selectDate:(id)a3 andTime:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v11 = a3;
  if (v6 && ([(MainViewControllerContainer *)self currentChildViewController], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) != 0))
  {
    v10 = [(MainViewControllerContainer *)self currentChildViewController];
    [v10 selectDate:v11 andTime:1 animated:v5];
  }

  else
  {
    v10 = [(MainViewControllerContainer *)self currentChildViewController];
    [v10 selectDate:v11 animated:v5];
  }
}

- (BOOL)isDateVisible:(id)a3
{
  v4 = a3;
  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 isDateVisible:v4];

  return v6;
}

- (void)currentlyVisibleDateRangeFromStartDate:(id *)a3 toEndDate:(id *)a4
{
  v6 = [(MainViewControllerContainer *)self currentChildViewController];
  [v6 currentlyVisibleDateRangeFromStartDate:a3 toEndDate:a4];
}

- (void)showTodayAnimated:(BOOL)a3
{
  v3 = a3;
  v9 = [(MainViewControllerContainer *)self _todaysDate];
  v5 = [(MainViewControllerContainer *)self view];
  IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy();

  if (IsCompactInViewHierarchy && [(MainViewControllerContainer *)self shouldPushNextLevelViewControllerWhenTodayIsVisible]&& [(MainViewControllerContainer *)self isTodayVisible])
  {
    v7 = [(MainViewController *)self model];
    [v7 setSelectedDate:v9];

    v8 = [(MainViewControllerContainer *)self pushedNextLevelMainViewControllerContainerAnimated:v3];
  }

  else
  {
    [(MainViewControllerContainer *)self selectDate:v9 animated:v3];
  }
}

- (id)sceneTitle
{
  v2 = [(MainViewControllerContainer *)self currentChildViewController];
  v3 = [v2 sceneTitle];

  return v3;
}

- (id)preferredPreSizeClassTransitionSelectedDate
{
  v2 = [(MainViewControllerContainer *)self currentChildViewController];
  v3 = [v2 preferredPreSizeClassTransitionSelectedDate];

  return v3;
}

- (BOOL)mainViewControllerCanChangeSelectedEvent
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 mainViewControllerCanChangeSelectedEvent];

  return v6;
}

- (BOOL)mainViewControllerCanChangeSelectedDate
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 mainViewControllerCanChangeSelectedDate];

  return v6;
}

- (BOOL)allEventsIndividuallyRepresented:(id)a3
{
  v4 = a3;
  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MainViewControllerContainer *)self currentChildViewController];
    v8 = [v7 allEventsIndividuallyRepresented:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)moveSelectedOccurrenceUp
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    [v5 moveSelectedOccurrenceUp];
  }
}

- (void)moveSelectedOccurrenceDown
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    [v5 moveSelectedOccurrenceDown];
  }
}

- (void)moveSelectedOccurrenceLeft
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    [v5 moveSelectedOccurrenceLeft];
  }
}

- (void)moveSelectedOccurrenceRight
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    [v5 moveSelectedOccurrenceRight];
  }
}

- (BOOL)wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder
{
  v2 = [(MainViewControllerContainer *)self currentChildViewController];
  v3 = [v2 wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder];

  return v3;
}

- (void)navigateToNextSelectableItem
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    [v5 navigateToNextSelectableItem];
  }
}

- (void)navigateToPreviousSelectableItem
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    [v5 navigateToPreviousSelectableItem];
  }
}

- (void)showNextOccurrenceOfSelectableItem
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    [v5 showNextOccurrenceOfSelectableItem];
  }
}

- (void)showPreviousOccurrenceOfSelectableItem
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    [v5 showPreviousOccurrenceOfSelectableItem];
  }
}

- (void)showDetailsForCurrentSelectableItem
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    [v5 showDetailsForCurrentSelectableItem];
  }
}

- (void)navigateToNextDateComponentUnitAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MainViewControllerContainer *)self currentChildViewController];
    [v7 navigateToNextDateComponentUnitAnimated:v3];
  }
}

- (void)navigateToPreviousDateComponentUnitAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MainViewControllerContainer *)self currentChildViewController];
    [v7 navigateToPreviousDateComponentUnitAnimated:v3];
  }
}

- (BOOL)shouldRespondToApplicationDidBecomeActiveStateChange
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 shouldRespondToApplicationDidBecomeActiveStateChange];

  return v6;
}

- (void)setShouldRespondToApplicationDidBecomeActiveStateChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MainViewControllerContainer *)self currentChildViewController];
    [v7 setShouldRespondToApplicationDidBecomeActiveStateChange:v3];
  }
}

- (BOOL)shouldPushNextLevelViewControllerWhenTodayIsVisible
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) != 0 && (-[MainViewControllerContainer currentChildViewController](self, "currentChildViewController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 shouldPushNextLevelViewControllerWhenTodayIsVisible], v5, v6))
  {
    v7 = +[CUIKPreferences sharedPreferences];
    v8 = [v7 disableTodayPushes] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)isTodayVisible
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 isTodayVisible];

  return v6;
}

- (id)_todaysDate
{
  v3 = CUIKTodayDate();
  v4 = [(MainViewController *)self model];
  v5 = [v4 eventStore];
  v6 = [v5 timeZone];

  v7 = [EKCalendarDate calendarDateWithDate:v3 timeZone:v6];

  return v7;
}

- (void)showNowAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MainViewControllerContainer *)self currentChildViewController];
    [v7 showNowAnimated:v3];
  }
}

- (void)enableGestureRecognizers
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    [v5 enableGestureRecognizers];
  }
}

- (void)disableGestureRecognizers
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    [v5 disableGestureRecognizers];
  }
}

- (double)leftBarButtonBlankFixedSpaceWidth
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  [v5 leftBarButtonBlankFixedSpaceWidth];
  v7 = v6;

  return v7;
}

- (void)updatePalette:(id)a3
{
  v7 = a3;
  v4 = [(MainViewControllerContainer *)self currentChildViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MainViewControllerContainer *)self currentChildViewController];
    [v6 updatePalette:v7];
  }
}

- (BOOL)useContainingPalette
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 useContainingPalette];

  return v6;
}

- (id)bestDateForNewEvent
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    v6 = [v5 bestDateForNewEvent];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)showEventDetailsWhenNewEventAdded
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 showEventDetailsWhenNewEventAdded];

  return v6;
}

- (BOOL)shouldJournalMainViewControllerParent
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 shouldJournalMainViewControllerParent];

  return v6;
}

- (BOOL)shouldAdaptEventViewControllers
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 shouldAdaptEventViewControllers];

  return v6;
}

- (BOOL)useSolariumNavigationBarAppearance
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 useSolariumNavigationBarAppearance];

  return v6;
}

- (id)navigationBarDisplayedDateString
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    v6 = [v5 navigationBarDisplayedDateString];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateNavigationBarDisplayedDateString
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    [v5 updateNavigationBarDisplayedDateString];
  }
}

- (void)updateBackButtonToDate:(id)a3
{
  v6 = a3;
  v4 = [(MainViewControllerContainer *)self currentChildViewController];
  if (objc_opt_respondsToSelector())
  {
    v5 = CalSolariumEnabled();

    if (v5)
    {
      goto LABEL_5;
    }

    v4 = [(MainViewControllerContainer *)self currentChildViewController];
    [v4 updateBackButtonToDate:v6];
  }

LABEL_5:
}

- (BOOL)shouldShowNavigationTitleWhenTopViewController
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 shouldUpdateOwnBackButtonWhenTopViewController];

  return v6;
}

- (id)updateBackButtonWhileTopViewControllerToDate:(id)a3
{
  v4 = a3;
  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = CalSolariumEnabled();

    if (v6)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v5 = [(MainViewControllerContainer *)self currentChildViewController];
    v7 = [v5 updateBackButtonWhileTopViewControllerToDate:v4];
  }

  else
  {
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (BOOL)isWaitingForBackgroundLoadingOfSelectedEventOccurrenceView
{
  v3 = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [v5 isWaitingForBackgroundLoadingOfSelectedEventOccurrenceView];

  return v6;
}

@end