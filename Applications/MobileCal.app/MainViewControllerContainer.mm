@interface MainViewControllerContainer
- (BOOL)allEventsIndividuallyRepresented:(id)represented;
- (BOOL)allowsOverriddenRightNavigationBarItems;
- (BOOL)allowsOverriddenToolbarItems;
- (BOOL)currentChildViewControllerIsLoaded;
- (BOOL)isDateVisible:(id)visible;
- (BOOL)isTodayVisible;
- (BOOL)isWaitingForBackgroundLoadingOfSelectedEventOccurrenceView;
- (BOOL)mainViewControllerCanChangeSelectedDate;
- (BOOL)mainViewControllerCanChangeSelectedEvent;
- (BOOL)performModalDialogsIfNeededWithContinue:(id)continue;
- (BOOL)respondsToSelector:(SEL)selector;
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
- (MainViewControllerContainer)initWithModel:(id)model window:(id)window;
- (NSString)description;
- (double)leftBarButtonBlankFixedSpaceWidth;
- (id)_childViewControllerForTraitCollection:(id)collection;
- (id)_todaysDate;
- (id)bestDateForNewEvent;
- (id)currentChildViewController;
- (id)emptyChildViewController;
- (id)managedNavigationController;
- (id)navigationBarDisplayedDateString;
- (id)preferredPreSizeClassTransitionSelectedDate;
- (id)sceneTitle;
- (id)updateBackButtonWhileTopViewControllerToDate:(id)date;
- (id)viewControllerToShowFrom;
- (int)supportedToggleMode;
- (int64_t)presentationStyleOverrideForChildViewControllers;
- (void)_addChildViewControllerForCurrentTraits;
- (void)_removeChildViewControllerForCurrentTraits;
- (void)_updateForCurrentTraits;
- (void)currentlyVisibleDateRangeFromStartDate:(id *)date toEndDate:(id *)endDate;
- (void)disableGestureRecognizers;
- (void)enableGestureRecognizers;
- (void)invalidateManagedNavigationController;
- (void)moveSelectedOccurrenceDown;
- (void)moveSelectedOccurrenceLeft;
- (void)moveSelectedOccurrenceRight;
- (void)moveSelectedOccurrenceUp;
- (void)navigateToNextDateComponentUnitAnimated:(BOOL)animated;
- (void)navigateToNextSelectableItem;
- (void)navigateToPreviousDateComponentUnitAnimated:(BOOL)animated;
- (void)navigateToPreviousSelectableItem;
- (void)selectDate:(id)date andTime:(BOOL)time animated:(BOOL)animated;
- (void)selectDate:(id)date animated:(BOOL)animated;
- (void)setShouldRespondToApplicationDidBecomeActiveStateChange:(BOOL)change;
- (void)setupForViewAppearance;
- (void)setupUIForTraitCollection:(id)collection;
- (void)showDetailsForCurrentSelectableItem;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)showNextOccurrenceOfSelectableItem;
- (void)showNowAnimated:(BOOL)animated;
- (void)showPreviousOccurrenceOfSelectableItem;
- (void)showTodayAnimated:(BOOL)animated;
- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion;
- (void)updateBackButtonToDate:(id)date;
- (void)updateNavigationBarDisplayedDateString;
- (void)updatePalette:(id)palette;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation MainViewControllerContainer

- (BOOL)currentChildViewControllerIsLoaded
{
  childViewControllers = [(MainViewControllerContainer *)self childViewControllers];
  firstObject = [childViewControllers firstObject];

  childViewControllers2 = [(MainViewControllerContainer *)self childViewControllers];
  if ([childViewControllers2 count] && objc_msgSend(firstObject, "isViewLoaded"))
  {
    view = [firstObject view];
    superview = [view superview];
    v8 = superview != 0;
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

  childViewControllers = [(MainViewControllerContainer *)self childViewControllers];
  v4 = [childViewControllers count];

  if (v4 >= 2)
  {
    v5 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      childViewControllers2 = [(MainViewControllerContainer *)self childViewControllers];
      v11 = 138412290;
      v12 = childViewControllers2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Extra calendar view children detected: %@", &v11, 0xCu);
    }
  }

  childViewControllers3 = [(MainViewControllerContainer *)self childViewControllers];
  firstObject = [childViewControllers3 firstObject];

  return firstObject;
}

- (void)_updateForCurrentTraits
{
  ekui_futureTraitCollection = [(MainViewControllerContainer *)self ekui_futureTraitCollection];

  if (ekui_futureTraitCollection)
  {
    navigationItem = [(MainViewControllerContainer *)self navigationItem];
    ekui_futureTraitCollection2 = [(MainViewControllerContainer *)self ekui_futureTraitCollection];
    v6 = [(MainViewControllerContainer *)self _childViewControllerForTraitCollection:ekui_futureTraitCollection2];

    if (v6)
    {
      emptyChildViewController = [(MainViewControllerContainer *)self emptyChildViewController];

      if (v6 != emptyChildViewController)
      {
        goto LABEL_15;
      }
    }

    if ([(MainViewControllerContainer *)self shouldRemoveSelfFromNavigationStackIfTraitCollectionIsUnsupported])
    {
      navigationController = [(MainViewControllerContainer *)self navigationController];
      viewControllers = [navigationController viewControllers];

      selfCopy = self;
      v10 = [NSArray arrayWithObjects:&selfCopy count:1];
      v11 = [viewControllers arrayByExcludingObjectsInArray:v10];

      [(MainViewControllerContainer *)self beginAppearanceTransition:0 animated:0];
      navigationController2 = [(MainViewControllerContainer *)self navigationController];
      [navigationController2 setViewControllers:v11];

      [(MainViewControllerContainer *)self endAppearanceTransition];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      reverseObjectEnumerator = [v11 reverseObjectEnumerator];
      v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        v15 = *v21;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v17 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v17;
              goto LABEL_18;
            }
          }

          v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
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

    childViewControllerForUnknownTraits = [(MainViewControllerContainer *)self childViewControllerForUnknownTraits];

    v6 = childViewControllerForUnknownTraits;
    if (childViewControllerForUnknownTraits)
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
    ekui_futureTraitCollection3 = [(MainViewControllerContainer *)self ekui_futureTraitCollection];
    [(MainViewController *)v6 setEkui_futureTraitCollection:ekui_futureTraitCollection3];
  }
}

- (id)emptyChildViewController
{
  emptyChildViewController = self->_emptyChildViewController;
  if (!emptyChildViewController)
  {
    v4 = [EmptyMainViewController alloc];
    window = [(MainViewController *)self window];
    model = [(MainViewController *)self model];
    v7 = [(MainViewController *)v4 initWithWindow:window model:model];
    v8 = self->_emptyChildViewController;
    self->_emptyChildViewController = v7;

    emptyChildViewController = self->_emptyChildViewController;
  }

  return emptyChildViewController;
}

- (void)_addChildViewControllerForCurrentTraits
{
  ekui_futureTraitCollection = [(MainViewControllerContainer *)self ekui_futureTraitCollection];
  v4 = [(MainViewControllerContainer *)self _childViewControllerForTraitCollection:ekui_futureTraitCollection];

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
    view = [(MainViewController *)self->_currentChildViewController view];
    [view removeFromSuperview];

    v5 = self->_currentChildViewController;

    [(MainViewController *)v5 removeFromParentViewController];
  }
}

- (BOOL)allowsOverriddenRightNavigationBarItems
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  allowsOverriddenRightNavigationBarItems = [currentChildViewController2 allowsOverriddenRightNavigationBarItems];

  return allowsOverriddenRightNavigationBarItems;
}

- (int)supportedToggleMode
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  supportedToggleMode = [currentChildViewController2 supportedToggleMode];

  return supportedToggleMode;
}

- (void)setupForViewAppearance
{
  view = [(MainViewControllerContainer *)self view];
  subviews = [view subviews];
  v5 = [subviews count];

  if (!v5)
  {
    navigationController = [(MainViewControllerContainer *)self navigationController];
    view2 = [navigationController view];
    window = [view2 window];

    if (window)
    {
      navigationController2 = [(MainViewControllerContainer *)self navigationController];
      view3 = [navigationController2 view];
      window2 = [view3 window];
      EKUIPushFallbackSizingContextWithViewHierarchy();
    }

    view4 = [(MainViewControllerContainer *)self view];
    [view4 frame];
    v14 = v13;
    view5 = [(MainViewControllerContainer *)self view];
    [view5 frame];
    v17 = v16;

    view6 = [(MainViewController *)self->_currentChildViewController view];
    [view6 setFrame:{0.0, 0.0, v14, v17}];

    currentChildViewController = self->_currentChildViewController;
    model = [(MainViewController *)self model];
    selectedDate = [model selectedDate];
    [(MainViewController *)currentChildViewController selectDate:selectedDate animated:0];

    [(MainViewControllerContainer *)self setEdgesForExtendedLayout:[(MainViewController *)self->_currentChildViewController edgesForExtendedLayout]];
    view7 = [(MainViewController *)self->_currentChildViewController view];
    superview = [view7 superview];

    if (superview)
    {
      view8 = [(MainViewController *)self->_currentChildViewController view];
      [view8 removeFromSuperview];
    }

    view9 = [(MainViewController *)self->_currentChildViewController view];
    [view9 setAlpha:1.0];

    view10 = [(MainViewControllerContainer *)self view];
    view11 = [(MainViewController *)self->_currentChildViewController view];
    [view10 addSubview:view11];

    if ((CalSolariumEnabled() & 1) != 0 || CalUIKitNavBarEnabled())
    {
      v28 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v28 userInterfaceIdiom];

      if (userInterfaceIdiom)
      {
        v30 = self->_currentChildViewController;
        if (v30)
        {
          if ([(MainViewController *)v30 intendedSizeClass]== 2)
          {
            view12 = [(MainViewController *)self->_currentChildViewController view];
            [view12 setTranslatesAutoresizingMaskIntoConstraints:0];

            view13 = [(MainViewController *)self->_currentChildViewController view];
            leadingAnchor = [view13 leadingAnchor];
            view14 = [(MainViewControllerContainer *)self view];
            safeAreaLayoutGuide = [view14 safeAreaLayoutGuide];
            leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
            v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
            v83[0] = v72;
            view15 = [(MainViewController *)self->_currentChildViewController view];
            trailingAnchor = [view15 trailingAnchor];
            view16 = [(MainViewControllerContainer *)self view];
            safeAreaLayoutGuide2 = [view16 safeAreaLayoutGuide];
            trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
            v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
            v83[1] = v58;
            view17 = [(MainViewController *)self->_currentChildViewController view];
            topAnchor = [view17 topAnchor];
            view18 = [(MainViewControllerContainer *)self view];
            topAnchor2 = [view18 topAnchor];
            v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
            v83[2] = v33;
            view19 = [(MainViewController *)self->_currentChildViewController view];
            bottomAnchor = [view19 bottomAnchor];
            view20 = [(MainViewControllerContainer *)self view];
            bottomAnchor2 = [view20 bottomAnchor];
            v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
            v83[3] = v38;
            v39 = [NSArray arrayWithObjects:v83 count:4];
            [NSLayoutConstraint activateConstraints:v39];

            view29 = view13;
          }

          else
          {
            view21 = [(MainViewController *)self->_currentChildViewController view];
            leadingAnchor3 = [view21 leadingAnchor];
            view22 = [(MainViewControllerContainer *)self view];
            safeAreaLayoutGuide3 = [view22 safeAreaLayoutGuide];
            leadingAnchor4 = [safeAreaLayoutGuide3 leadingAnchor];
            v71 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
            v82[0] = v71;
            view23 = [(MainViewController *)self->_currentChildViewController view];
            trailingAnchor3 = [view23 trailingAnchor];
            view24 = [(MainViewControllerContainer *)self view];
            safeAreaLayoutGuide4 = [view24 safeAreaLayoutGuide];
            trailingAnchor4 = [safeAreaLayoutGuide4 trailingAnchor];
            v59 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
            v82[1] = v59;
            view25 = [(MainViewController *)self->_currentChildViewController view];
            topAnchor3 = [view25 topAnchor];
            view26 = [(MainViewControllerContainer *)self view];
            topAnchor4 = [view26 topAnchor];
            v41 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
            v82[2] = v41;
            view27 = [(MainViewController *)self->_currentChildViewController view];
            bottomAnchor3 = [view27 bottomAnchor];
            view28 = [(MainViewControllerContainer *)self view];
            bottomAnchor4 = [view28 bottomAnchor];
            v46 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
            v82[3] = v46;
            v47 = [NSArray arrayWithObjects:v82 count:4];
            [NSLayoutConstraint deactivateConstraints:v47];

            view29 = [(MainViewController *)self->_currentChildViewController view];
            [view29 setTranslatesAutoresizingMaskIntoConstraints:1];
          }
        }
      }
    }

    if (window)
    {
      navigationController3 = [(MainViewControllerContainer *)self navigationController];
      view30 = [navigationController3 view];
      window3 = [view30 window];
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
  view = [(MainViewControllerContainer *)self view];
  [view setNeedsLayout];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)allowsOverriddenToolbarItems
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  allowsOverriddenToolbarItems = [currentChildViewController2 allowsOverriddenToolbarItems];

  return allowsOverriddenToolbarItems;
}

- (BOOL)shouldUpdateOwnBackButtonWhenTopViewController
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  shouldUpdateOwnBackButtonWhenTopViewController = [currentChildViewController2 shouldUpdateOwnBackButtonWhenTopViewController];

  return shouldUpdateOwnBackButtonWhenTopViewController;
}

- (void)viewWillLayoutSubviews
{
  [(MainViewControllerContainer *)self _updateForCurrentTraits];
  v3.receiver = self;
  v3.super_class = MainViewControllerContainer;
  [(MainViewControllerContainer *)&v3 viewWillLayoutSubviews];
}

- (MainViewControllerContainer)initWithModel:(id)model window:(id)window
{
  v8.receiver = self;
  v8.super_class = MainViewControllerContainer;
  v4 = [(MainViewController *)&v8 initWithWindow:window model:model];
  v5 = v4;
  if (v4)
  {
    navigationItem = [(MainViewControllerContainer *)v4 navigationItem];
    if (objc_opt_respondsToSelector())
    {
      [navigationItem _setAllowsInteractivePop:0];
    }
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if ("copy:" == selector || "paste:" == selector || "cut:" == selector)
  {
    v11.receiver = self;
    v11.super_class = MainViewControllerContainer;
    return [(MainViewControllerContainer *)&v11 respondsToSelector:selector];
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
      ekui_futureTraitCollection = [(MainViewControllerContainer *)self ekui_futureTraitCollection];
      v10 = [(objc_class *)[(MainViewControllerContainer *)self childViewControllerClassForTraits:ekui_futureTraitCollection] instancesRespondToSelector:selector];

      return v10;
    }
  }
}

- (NSString)description
{
  v12 = objc_opt_class();
  traitCollection = [(MainViewControllerContainer *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  traitCollection2 = [(MainViewControllerContainer *)self traitCollection];
  verticalSizeClass = [traitCollection2 verticalSizeClass];
  ekui_futureTraitCollection = [(MainViewControllerContainer *)self ekui_futureTraitCollection];
  horizontalSizeClass2 = [ekui_futureTraitCollection horizontalSizeClass];
  ekui_futureTraitCollection2 = [(MainViewControllerContainer *)self ekui_futureTraitCollection];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p  WidthClass: %ld  HeightClass: %ld  FutureWidthClass: %ld  FutureHeightClass: %ld  Showing %@ %p>", v12, self, horizontalSizeClass, verticalSizeClass, horizontalSizeClass2, [ekui_futureTraitCollection2 verticalSizeClass], objc_opt_class(), self->_currentChildViewController);

  return v10;
}

- (BOOL)performModalDialogsIfNeededWithContinue:(id)continue
{
  continueCopy = continue;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(MainViewController *)self->_currentChildViewController performModalDialogsIfNeededWithContinue:continueCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MainViewControllerContainer;
  [(MainViewControllerContainer *)&v4 viewWillAppear:appear];
  [(MainViewControllerContainer *)self setupForViewAppearance];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = MainViewControllerContainer;
  [(MainViewControllerContainer *)&v6 viewWillDisappear:?];
  if ([(MainViewControllerContainer *)self currentChildViewControllerIsLoaded])
  {
    currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController beginAppearanceTransition:0 animated:disappearCopy];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MainViewControllerContainer;
  [(MainViewControllerContainer *)&v5 viewDidDisappear:disappear];
  if ([(MainViewControllerContainer *)self currentChildViewControllerIsLoaded])
  {
    currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController endAppearanceTransition];
  }
}

- (void)setupUIForTraitCollection:(id)collection
{
  collectionCopy = collection;
  [(MainViewControllerContainer *)self _updateForCurrentTraits];
  [(MainViewController *)self->_currentChildViewController setupUIForTraitCollection:collectionCopy];

  view = [(MainViewControllerContainer *)self view];
  [view setNeedsLayout];
}

- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  senderCopy = sender;
  controllerCopy = controller;
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  [currentChildViewController showViewController:controllerCopy sender:senderCopy animated:animatedCopy completion:completionCopy];
}

- (int64_t)presentationStyleOverrideForChildViewControllers
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  presentationStyleOverrideForChildViewControllers = [currentChildViewController presentationStyleOverrideForChildViewControllers];

  return presentationStyleOverrideForChildViewControllers;
}

- (id)viewControllerToShowFrom
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  viewControllerToShowFrom = [currentChildViewController viewControllerToShowFrom];

  return viewControllerToShowFrom;
}

- (id)_childViewControllerForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy horizontalSizeClass] == 2 && objc_msgSend(collectionCopy, "verticalSizeClass") == 2)
  {
    childViewControllerForRegularWidthRegularHeight = [(MainViewControllerContainer *)self childViewControllerForRegularWidthRegularHeight];
  }

  else if ([collectionCopy horizontalSizeClass] == 2 && objc_msgSend(collectionCopy, "verticalSizeClass") == 1)
  {
    childViewControllerForRegularWidthRegularHeight = [(MainViewControllerContainer *)self childViewControllerForRegularWidthCompactHeight];
  }

  else if ([collectionCopy horizontalSizeClass] == 1 && objc_msgSend(collectionCopy, "verticalSizeClass") == 2)
  {
    childViewControllerForRegularWidthRegularHeight = [(MainViewControllerContainer *)self childViewControllerForCompactWidthRegularHeight];
  }

  else if ([collectionCopy horizontalSizeClass] == 1 && objc_msgSend(collectionCopy, "verticalSizeClass") == 1)
  {
    childViewControllerForRegularWidthRegularHeight = [(MainViewControllerContainer *)self childViewControllerForCompactWidthCompactHeight];
  }

  else
  {
    childViewControllerForRegularWidthRegularHeight = [(MainViewControllerContainer *)self emptyChildViewController];
  }

  v6 = childViewControllerForRegularWidthRegularHeight;

  return v6;
}

- (id)managedNavigationController
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  managedNavigationController = [currentChildViewController managedNavigationController];

  return managedNavigationController;
}

- (void)invalidateManagedNavigationController
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  [currentChildViewController invalidateManagedNavigationController];
}

- (BOOL)shouldInvalidateManagedNavigationControllerOnPresentationDismissal
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  shouldInvalidateManagedNavigationControllerOnPresentationDismissal = [currentChildViewController shouldInvalidateManagedNavigationControllerOnPresentationDismissal];

  return shouldInvalidateManagedNavigationControllerOnPresentationDismissal;
}

- (BOOL)shouldModallyPresentFirstShownViewController
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  shouldModallyPresentFirstShownViewController = [currentChildViewController shouldModallyPresentFirstShownViewController];

  return shouldModallyPresentFirstShownViewController;
}

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventCopy = event;
  contextCopy = context;
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 showEvent:eventCopy animated:animatedCopy showMode:mode context:contextCopy];
  }
}

- (void)selectDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 selectDate:dateCopy animated:animatedCopy];
  }
}

- (void)selectDate:(id)date andTime:(BOOL)time animated:(BOOL)animated
{
  animatedCopy = animated;
  timeCopy = time;
  dateCopy = date;
  if (timeCopy && ([(MainViewControllerContainer *)self currentChildViewController], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) != 0))
  {
    currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController selectDate:dateCopy andTime:1 animated:animatedCopy];
  }

  else
  {
    currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController selectDate:dateCopy animated:animatedCopy];
  }
}

- (BOOL)isDateVisible:(id)visible
{
  visibleCopy = visible;
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = [currentChildViewController isDateVisible:visibleCopy];

  return v6;
}

- (void)currentlyVisibleDateRangeFromStartDate:(id *)date toEndDate:(id *)endDate
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  [currentChildViewController currentlyVisibleDateRangeFromStartDate:date toEndDate:endDate];
}

- (void)showTodayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _todaysDate = [(MainViewControllerContainer *)self _todaysDate];
  view = [(MainViewControllerContainer *)self view];
  IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy();

  if (IsCompactInViewHierarchy && [(MainViewControllerContainer *)self shouldPushNextLevelViewControllerWhenTodayIsVisible]&& [(MainViewControllerContainer *)self isTodayVisible])
  {
    model = [(MainViewController *)self model];
    [model setSelectedDate:_todaysDate];

    v8 = [(MainViewControllerContainer *)self pushedNextLevelMainViewControllerContainerAnimated:animatedCopy];
  }

  else
  {
    [(MainViewControllerContainer *)self selectDate:_todaysDate animated:animatedCopy];
  }
}

- (id)sceneTitle
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  sceneTitle = [currentChildViewController sceneTitle];

  return sceneTitle;
}

- (id)preferredPreSizeClassTransitionSelectedDate
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  preferredPreSizeClassTransitionSelectedDate = [currentChildViewController preferredPreSizeClassTransitionSelectedDate];

  return preferredPreSizeClassTransitionSelectedDate;
}

- (BOOL)mainViewControllerCanChangeSelectedEvent
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  mainViewControllerCanChangeSelectedEvent = [currentChildViewController2 mainViewControllerCanChangeSelectedEvent];

  return mainViewControllerCanChangeSelectedEvent;
}

- (BOOL)mainViewControllerCanChangeSelectedDate
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  mainViewControllerCanChangeSelectedDate = [currentChildViewController2 mainViewControllerCanChangeSelectedDate];

  return mainViewControllerCanChangeSelectedDate;
}

- (BOOL)allEventsIndividuallyRepresented:(id)represented
{
  representedCopy = represented;
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    v8 = [currentChildViewController2 allEventsIndividuallyRepresented:representedCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)moveSelectedOccurrenceUp
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 moveSelectedOccurrenceUp];
  }
}

- (void)moveSelectedOccurrenceDown
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 moveSelectedOccurrenceDown];
  }
}

- (void)moveSelectedOccurrenceLeft
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 moveSelectedOccurrenceLeft];
  }
}

- (void)moveSelectedOccurrenceRight
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 moveSelectedOccurrenceRight];
  }
}

- (BOOL)wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder = [currentChildViewController wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder];

  return wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder;
}

- (void)navigateToNextSelectableItem
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 navigateToNextSelectableItem];
  }
}

- (void)navigateToPreviousSelectableItem
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 navigateToPreviousSelectableItem];
  }
}

- (void)showNextOccurrenceOfSelectableItem
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 showNextOccurrenceOfSelectableItem];
  }
}

- (void)showPreviousOccurrenceOfSelectableItem
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 showPreviousOccurrenceOfSelectableItem];
  }
}

- (void)showDetailsForCurrentSelectableItem
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 showDetailsForCurrentSelectableItem];
  }
}

- (void)navigateToNextDateComponentUnitAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 navigateToNextDateComponentUnitAnimated:animatedCopy];
  }
}

- (void)navigateToPreviousDateComponentUnitAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 navigateToPreviousDateComponentUnitAnimated:animatedCopy];
  }
}

- (BOOL)shouldRespondToApplicationDidBecomeActiveStateChange
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  shouldRespondToApplicationDidBecomeActiveStateChange = [currentChildViewController2 shouldRespondToApplicationDidBecomeActiveStateChange];

  return shouldRespondToApplicationDidBecomeActiveStateChange;
}

- (void)setShouldRespondToApplicationDidBecomeActiveStateChange:(BOOL)change
{
  changeCopy = change;
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 setShouldRespondToApplicationDidBecomeActiveStateChange:changeCopy];
  }
}

- (BOOL)shouldPushNextLevelViewControllerWhenTodayIsVisible
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
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
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  isTodayVisible = [currentChildViewController2 isTodayVisible];

  return isTodayVisible;
}

- (id)_todaysDate
{
  v3 = CUIKTodayDate();
  model = [(MainViewController *)self model];
  eventStore = [model eventStore];
  timeZone = [eventStore timeZone];

  v7 = [EKCalendarDate calendarDateWithDate:v3 timeZone:timeZone];

  return v7;
}

- (void)showNowAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 showNowAnimated:animatedCopy];
  }
}

- (void)enableGestureRecognizers
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 enableGestureRecognizers];
  }
}

- (void)disableGestureRecognizers
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 disableGestureRecognizers];
  }
}

- (double)leftBarButtonBlankFixedSpaceWidth
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  [currentChildViewController2 leftBarButtonBlankFixedSpaceWidth];
  v7 = v6;

  return v7;
}

- (void)updatePalette:(id)palette
{
  paletteCopy = palette;
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 updatePalette:paletteCopy];
  }
}

- (BOOL)useContainingPalette
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  useContainingPalette = [currentChildViewController2 useContainingPalette];

  return useContainingPalette;
}

- (id)bestDateForNewEvent
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    bestDateForNewEvent = [currentChildViewController2 bestDateForNewEvent];
  }

  else
  {
    bestDateForNewEvent = 0;
  }

  return bestDateForNewEvent;
}

- (BOOL)showEventDetailsWhenNewEventAdded
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  showEventDetailsWhenNewEventAdded = [currentChildViewController2 showEventDetailsWhenNewEventAdded];

  return showEventDetailsWhenNewEventAdded;
}

- (BOOL)shouldJournalMainViewControllerParent
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  shouldJournalMainViewControllerParent = [currentChildViewController2 shouldJournalMainViewControllerParent];

  return shouldJournalMainViewControllerParent;
}

- (BOOL)shouldAdaptEventViewControllers
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  shouldAdaptEventViewControllers = [currentChildViewController2 shouldAdaptEventViewControllers];

  return shouldAdaptEventViewControllers;
}

- (BOOL)useSolariumNavigationBarAppearance
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  useSolariumNavigationBarAppearance = [currentChildViewController2 useSolariumNavigationBarAppearance];

  return useSolariumNavigationBarAppearance;
}

- (id)navigationBarDisplayedDateString
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    navigationBarDisplayedDateString = [currentChildViewController2 navigationBarDisplayedDateString];
  }

  else
  {
    navigationBarDisplayedDateString = 0;
  }

  return navigationBarDisplayedDateString;
}

- (void)updateNavigationBarDisplayedDateString
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController2 updateNavigationBarDisplayedDateString];
  }
}

- (void)updateBackButtonToDate:(id)date
{
  dateCopy = date;
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  if (objc_opt_respondsToSelector())
  {
    v5 = CalSolariumEnabled();

    if (v5)
    {
      goto LABEL_5;
    }

    currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
    [currentChildViewController updateBackButtonToDate:dateCopy];
  }

LABEL_5:
}

- (BOOL)shouldShowNavigationTitleWhenTopViewController
{
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  shouldUpdateOwnBackButtonWhenTopViewController = [currentChildViewController2 shouldUpdateOwnBackButtonWhenTopViewController];

  return shouldUpdateOwnBackButtonWhenTopViewController;
}

- (id)updateBackButtonWhileTopViewControllerToDate:(id)date
{
  dateCopy = date;
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = CalSolariumEnabled();

    if (v6)
    {
      v7 = 0;
      goto LABEL_7;
    }

    currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
    v7 = [currentChildViewController updateBackButtonWhileTopViewControllerToDate:dateCopy];
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
  currentChildViewController = [(MainViewControllerContainer *)self currentChildViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  currentChildViewController2 = [(MainViewControllerContainer *)self currentChildViewController];
  isWaitingForBackgroundLoadingOfSelectedEventOccurrenceView = [currentChildViewController2 isWaitingForBackgroundLoadingOfSelectedEventOccurrenceView];

  return isWaitingForBackgroundLoadingOfSelectedEventOccurrenceView;
}

@end