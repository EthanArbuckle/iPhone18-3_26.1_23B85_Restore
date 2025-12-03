@interface CRLiOSInsertPageViewController
- (BOOL)crl_isInDarkMode;
- (BOOL)searchBar:(id)bar shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (BOOL)supportsSearch;
- (CGSize)contentSize;
- (CRLiOSInsertPageViewController)initWithCoder:(id)coder;
- (CRLiOSInsertPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CRLiOSInsertPageViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options;
- (CRLiOSInsertPageViewControllerDataSource)insertPageViewControllerDataSource;
- (CRLiOSInsertPageViewControllerDelegate)insertPageViewControllerDelegate;
- (CRLiOSInsertPageViewControllerNavigationDataSource)insertPageViewControllerNavigationDataSource;
- (UIView)p_searchOverlayView;
- (double)p_dotsPageControlHeight;
- (id)p_selectedViewController;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (unint64_t)p_pageControlType;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)p_addKeyboardObservation;
- (void)p_beginSearchingAnimated:(BOOL)animated;
- (void)p_clearSearching;
- (void)p_dotPageControlValueChanged;
- (void)p_endSearching;
- (void)p_keyboardWillHide:(id)hide;
- (void)p_keyboardWillShow:(id)show;
- (void)p_moveOverlayView:(id)view toSelectedViewControllerView:(id)controllerView;
- (void)p_recursivelySetExclusiveTouchOnView:(id)view;
- (void)p_removeKeyboardObservation;
- (void)p_restoreViewState;
- (void)p_selectPageAtIndex:(unint64_t)index animated:(BOOL)animated scrollToBottom:(BOOL)bottom;
- (void)p_setSearchBarHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)p_setSearchOverlayViewHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)p_setViewControllers:(id)controllers shouldUpdatePageViewController:(BOOL)controller animated:(BOOL)animated;
- (void)p_setupConstraintsWithTopLevelView:(id)view searchBar:(id)bar navigatorStackView:(id)stackView pageViewControllerView:(id)controllerView dotsPageControlWrapper:(id)wrapper;
- (void)p_setupViews;
- (void)p_subpageNavigatorDidChangeSelectedSegment:(id)segment;
- (void)p_titlesPageControlValueChanged:(id)changed;
- (void)p_updateBottomConstraintsIfNeeded;
- (void)p_updatePageSelectionForViewAppearance;
- (void)p_updateTitlesPageControlAndBottomViewColorsInDarkUI:(BOOL)i;
- (void)p_updateUIForChangeToPageNumber:(unint64_t)number animated:(BOOL)animated completion:(id)completion;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers;
- (void)resignFirstResponderIfNeeded;
- (void)scribbleInteractionDidFinishWriting:(id)writing;
- (void)scribbleInteractionWillBeginWriting:(id)writing;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)updateBottomViewVisibilityIfNeeded;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation CRLiOSInsertPageViewController

- (void)scribbleInteractionWillBeginWriting:(id)writing
{
  if (self->_shouldIgnoreCancelBecauseOfWriting)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013337F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101333808();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133389C();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLiOSInsertPageViewController scribbleInteractionWillBeginWriting:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSInsertPageViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:396 isFatal:0 description:"bad state on _shouldIgnoreCancelBecauseOfWriting"];
  }

  self->_shouldIgnoreCancelBecauseOfWriting = 1;
}

- (void)scribbleInteractionDidFinishWriting:(id)writing
{
  if (!self->_shouldIgnoreCancelBecauseOfWriting)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013338C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013338D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133396C();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLiOSInsertPageViewController scribbleInteractionDidFinishWriting:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSInsertPageViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:402 isFatal:0 description:"bad state on _shouldIgnoreCancelBecauseOfWriting"];
  }

  self->_shouldIgnoreCancelBecauseOfWriting = 0;
}

- (CRLiOSInsertPageViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = CRLiOSInsertPageViewController;
  v8 = [(CRLiOSInsertPageViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[UIPageViewController alloc] initWithTransitionStyle:1 navigationOrientation:orientation options:optionsCopy];
    pageViewController = v8->_pageViewController;
    v8->_pageViewController = v9;
  }

  return v8;
}

- (CRLiOSInsertPageViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CRLiOSInsertPageViewController;
  v5 = [(CRLiOSInsertPageViewController *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [[UIPageViewController alloc] initWithCoder:coderCopy];
    pageViewController = v5->_pageViewController;
    v5->_pageViewController = v6;
  }

  return v5;
}

- (CRLiOSInsertPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v12.receiver = self;
  v12.super_class = CRLiOSInsertPageViewController;
  v8 = [(CRLiOSInsertPageViewController *)&v12 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    v9 = [[UIPageViewController alloc] initWithNibName:nameCopy bundle:bundleCopy];
    pageViewController = v8->_pageViewController;
    v8->_pageViewController = v9;
  }

  return v8;
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v5 willMoveToParentViewController:?];
  if (!controller)
  {
    [(CRLiOSInsertPageViewController *)self p_removeKeyboardObservation];
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v5 didMoveToParentViewController:?];
  if (controller)
  {
    [(CRLiOSInsertPageViewController *)self p_updatePageSelectionForViewAppearance];
  }
}

- (void)p_updatePageSelectionForViewAppearance
{
  if (![(CRLiOSInsertPageViewController *)self p_isShowingSearchBar])
  {
    p_currentPageNumber = [(CRLiOSInsertPageViewController *)self p_currentPageNumber];
    p_shouldScrollToBottomOfPage = [(CRLiOSInsertPageViewController *)self p_shouldScrollToBottomOfPage];

    [(CRLiOSInsertPageViewController *)self p_selectPageAtIndex:p_currentPageNumber animated:0 scrollToBottom:p_shouldScrollToBottomOfPage];
  }
}

- (void)loadView
{
  v3 = [[CRLiOSInspectorPaneView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CRLiOSInsertPageViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v3 viewDidLoad];
  [(CRLiOSInsertPageViewController *)self p_setupViews];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(CRLiOSInsertPageViewController *)self p_restoreViewState];
  p_pageViewController = [(CRLiOSInsertPageViewController *)self p_pageViewController];
  viewControllers = [(CRLiOSInsertPageViewController *)self viewControllers];
  [p_pageViewController setViewControllers:viewControllers direction:0 animated:0 completion:0];

  v7.receiver = self;
  v7.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v7 viewWillAppear:appearCopy];
  [(CRLiOSInsertPageViewController *)self p_addKeyboardObservation];
  [(CRLiOSInsertPageViewController *)self p_updateBottomConstraintsIfNeeded];
  [(CRLiOSInsertPageViewController *)self p_updateTitlesPageControlAndBottomViewColorsInDarkUI:[(CRLiOSInsertPageViewController *)self crl_isInDarkMode]];
  self->_shouldUpdatePageSelectionOnNextLayoutSubviews = 1;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v5 viewDidAppear:appear];
  [(CRLiOSInsertPageViewController *)self setP_isInViewHierarchy:1];
  [(CRLiOSInsertPageViewController *)self p_updatePageSelectionForViewAppearance];
  p_searchButton = [(CRLiOSInsertPageViewController *)self p_searchButton];
  CRLAccessibilityPostLayoutChangedNotification(p_searchButton);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v5 viewWillDisappear:disappear];
  [(CRLiOSInsertPageViewController *)self p_removeKeyboardObservation];
  insertPageViewControllerDelegate = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  [insertPageViewControllerDelegate insertPageViewControllerWillDisappear:self];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v4 viewDidDisappear:disappear];
  [(CRLiOSInsertPageViewController *)self p_setSearchOverlayViewHidden:1 animated:0];
  [(CRLiOSInsertPageViewController *)self setP_isInViewHierarchy:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CRLiOSInsertPageViewController;
  coordinatorCopy = coordinator;
  [(CRLiOSInsertPageViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100205D7C;
  v8[3] = &unk_101848DD8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v6 viewDidLayoutSubviews];
  if (![(CRLiOSInsertPageViewController *)self p_pageControlType])
  {
    view = [(CRLiOSInsertPageViewController *)self view];
    tintColor = [view tintColor];
    p_dotsPageControl = [(CRLiOSInsertPageViewController *)self p_dotsPageControl];
    [p_dotsPageControl setCurrentPageIndicatorTintColor:tintColor];
  }

  if (self->_shouldUpdatePageSelectionOnNextLayoutSubviews)
  {
    self->_shouldUpdatePageSelectionOnNextLayoutSubviews = 0;
    [(CRLiOSInsertPageViewController *)self p_updatePageSelectionForViewAppearance];
  }
}

- (void)updateViewConstraints
{
  v18.receiver = self;
  v18.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v18 updateViewConstraints];
  if (![(CRLiOSInsertPageViewController *)self p_pageControlType])
  {
    p_bottomFadeBar = [(CRLiOSInsertPageViewController *)self p_bottomFadeBar];
    [p_bottomFadeBar setTranslatesAutoresizingMaskIntoConstraints:0];
    superview = [p_bottomFadeBar superview];

    if (superview)
    {
      [p_bottomFadeBar removeFromSuperview];
    }

    view = [(CRLiOSInsertPageViewController *)self view];
    [view addSubview:p_bottomFadeBar];
    [view bringSubviewToFront:p_bottomFadeBar];
    leadingAnchor = [p_bottomFadeBar leadingAnchor];
    leadingAnchor2 = [view leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v8 setActive:1];

    trailingAnchor = [p_bottomFadeBar trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v11 setActive:1];

    bottomAnchor = [p_bottomFadeBar bottomAnchor];
    p_dotsPageControl = [(CRLiOSInsertPageViewController *)self p_dotsPageControl];
    topAnchor = [p_dotsPageControl topAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:topAnchor];
    [v15 setActive:1];

    heightAnchor = [p_bottomFadeBar heightAnchor];
    v17 = [heightAnchor constraintEqualToConstant:6.0];
    [v17 setActive:1];
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(CRLiOSInsertPageViewController *)self p_updateBottomConstraintsIfNeeded];
}

- (void)p_recursivelySetExclusiveTouchOnView:(id)view
{
  viewCopy = view;
  [viewCopy setExclusiveTouch:1];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  subviews = [viewCopy subviews];
  v6 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        [(CRLiOSInsertPageViewController *)self p_recursivelySetExclusiveTouchOnView:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)p_setViewControllers:(id)controllers shouldUpdatePageViewController:(BOOL)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  controllersCopy = controllers;
  if ([(CRLiOSInsertPageViewController *)self p_isInViewHierarchy]&& controllerCopy)
  {
    if (animatedCopy)
    {
      v9 = 0.300000012;
    }

    else
    {
      v9 = 0.0;
    }

    p_pageViewController = [(CRLiOSInsertPageViewController *)self p_pageViewController];
    view = [p_pageViewController view];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100206460;
    v28[3] = &unk_10183AE28;
    v29 = p_pageViewController;
    v30 = controllersCopy;
    v12 = p_pageViewController;
    [UIView transitionWithView:view duration:5242880 options:v28 animations:0 completion:v9];
  }

  v13 = [controllersCopy copy];
  viewControllers = self->_viewControllers;
  self->_viewControllers = v13;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = self->_viewControllers;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        view2 = [*(*(&v24 + 1) + 8 * i) view];
        [(CRLiOSInsertPageViewController *)self p_recursivelySetExclusiveTouchOnView:view2];
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v17);
  }

  p_searchOverlayView = [(CRLiOSInsertPageViewController *)self p_searchOverlayView];
  p_selectedViewController = [(CRLiOSInsertPageViewController *)self p_selectedViewController];
  view3 = [p_selectedViewController view];
  [(CRLiOSInsertPageViewController *)self p_moveOverlayView:p_searchOverlayView toSelectedViewControllerView:view3];
}

- (CGSize)contentSize
{
  p_pageControlType = [(CRLiOSInsertPageViewController *)self p_pageControlType];
  insertPageViewControllerNavigationDataSource = [(CRLiOSInsertPageViewController *)self insertPageViewControllerNavigationDataSource];
  Height = 0.0;
  if ([insertPageViewControllerNavigationDataSource showsSubpageNavigator])
  {
    p_subpageNavigator = [(CRLiOSInsertPageViewController *)self p_subpageNavigator];
    [p_subpageNavigator bounds];
    Height = CGRectGetHeight(v29);
  }

  if (p_pageControlType == 1)
  {
    v7 = 44.0;
  }

  else
  {
    v7 = 0.0;
  }

  [(CRLiOSInsertPageViewController *)self p_dotsPageControlHeight];
  v9 = v8;
  view = [(CRLiOSInsertPageViewController *)self view];
  [view bounds];
  v12 = v11;
  v14 = v13;

  [(CRLiOSInsertPageViewController *)self preferredContentSize];
  v16 = fmax(v14, v15) - (v7 + Height + v9);
  view2 = [(CRLiOSInsertPageViewController *)self view];
  [view2 safeAreaInsets];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v12 - v21 - v25;
  v27 = v16 - v19 - v23;
  result.height = v27;
  result.width = v26;
  return result;
}

- (BOOL)supportsSearch
{
  insertPageViewControllerNavigationDataSource = [(CRLiOSInsertPageViewController *)self insertPageViewControllerNavigationDataSource];
  supportsSearch = [insertPageViewControllerNavigationDataSource supportsSearch];

  return supportsSearch;
}

- (void)resignFirstResponderIfNeeded
{
  p_searchBar = [(CRLiOSInsertPageViewController *)self p_searchBar];
  isFirstResponder = [p_searchBar isFirstResponder];

  if (isFirstResponder)
  {
    p_searchBar2 = [(CRLiOSInsertPageViewController *)self p_searchBar];
    [p_searchBar2 resignFirstResponder];
  }
}

- (void)updateBottomViewVisibilityIfNeeded
{
  view = [(CRLiOSInsertPageViewController *)self view];
  [view layoutIfNeeded];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002066EC;
  v4[3] = &unk_10183AB38;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:0.300000012];
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  viewControllerCopy = viewController;
  insertPageViewControllerDataSource = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  v7 = [insertPageViewControllerDataSource insertPageViewController:self viewControllerBeforeViewController:viewControllerCopy];

  return v7;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  viewControllerCopy = viewController;
  insertPageViewControllerDataSource = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  v7 = [insertPageViewControllerDataSource insertPageViewController:self viewControllerAfterViewController:viewControllerCopy];

  return v7;
}

- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers
{
  controllerCopy = controller;
  controllersCopy = controllers;
  if ([controllersCopy count] != 1)
  {
    v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101333994();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110402;
      v15 = v8;
      v16 = 2082;
      v17 = "[CRLiOSInsertPageViewController pageViewController:willTransitionToViewControllers:]";
      v18 = 2082;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSInsertPageViewController.m";
      v20 = 1024;
      v21 = 667;
      v22 = 2112;
      v23 = controllersCopy;
      v24 = 2112;
      selfCopy = self;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Incorrectly transitioning to more than one view controller (%@) in %@.", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013339A8();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLiOSInsertPageViewController pageViewController:willTransitionToViewControllers:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSInsertPageViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:667 isFatal:0 description:"Incorrectly transitioning to more than one view controller (%@) in %@.", controllersCopy, self];
  }

  view = [controllerCopy view];
  [(CRLiOSInsertPageViewController *)self p_recursivelySetExclusiveTouchOnView:view];
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  completedCopy = completed;
  controllerCopy = controller;
  insertPageViewControllerDataSource = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  viewControllers = [controllerCopy viewControllers];
  firstObject = [viewControllers firstObject];
  v12 = [insertPageViewControllerDataSource insertPageViewController:self presentationIndexForViewController:firstObject];

  [(CRLiOSInsertPageViewController *)self setP_currentPageNumber:v12];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"AX_INSERT_PANEL_PAGE_SCROLLED" value:@"Page %1$lu of %2$lu" table:0];

  p_pageControlType = [(CRLiOSInsertPageViewController *)self p_pageControlType];
  if (p_pageControlType == 1)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100206CF4;
    v22[3] = &unk_101848E40;
    v22[4] = self;
    v23 = controllerCopy;
    v24 = v12;
    v25 = completedCopy;
    [(CRLiOSInsertPageViewController *)self p_updateUIForChangeToPageNumber:v12 animated:1 completion:v22];
  }

  else if (!p_pageControlType)
  {
    p_dotsPageControl = [(CRLiOSInsertPageViewController *)self p_dotsPageControl];
    [p_dotsPageControl setCurrentPage:v12];

    insertPageViewControllerDelegate = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
    [insertPageViewControllerDelegate insertPageViewController:self didSelectPageNumber:v12];

    viewControllers2 = [controllerCopy viewControllers];
    [(CRLiOSInsertPageViewController *)self p_setViewControllers:viewControllers2 shouldUpdatePageViewController:0 animated:0];

    if (completedCopy)
    {
      v19 = UIAccessibilityPageScrolledNotification;
      p_dotsPageControl2 = [(CRLiOSInsertPageViewController *)self p_dotsPageControl];
      v21 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v14, v12 + 1, [p_dotsPageControl2 numberOfPages]);
      UIAccessibilityPostNotification(v19, v21);
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(CRLiOSInsertPageViewController *)self p_isShowingSearchBar])
  {
    [scrollCopy bounds];
    [scrollCopy setContentOffset:{CGRectGetWidth(v6), 0.0}];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  if ([(CRLiOSInsertPageViewController *)self p_isShowingSearchBar])
  {
    [draggingCopy bounds];
    [draggingCopy setContentOffset:{CGRectGetWidth(v8), 0.0}];
  }
}

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  text = [editing text];
  v5 = [text length];

  if (!v5)
  {
    [(CRLiOSInsertPageViewController *)self p_setSearchOverlayViewHidden:0 animated:1];
  }

  return 1;
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100206FF4;
  v8[3] = &unk_10183AE28;
  v9 = editingCopy;
  selfCopy = self;
  v5 = v8;
  v6 = editingCopy;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, kCFRunLoopDefaultMode, v5);
  CFRunLoopWakeUp(Main);
}

- (BOOL)searchBar:(id)bar shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  selfCopy = self;
  v6 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate:bar];
  LOBYTE(selfCopy) = [v6 insertPageViewControllerShouldChangeSearchText:selfCopy];

  return selfCopy;
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  changeCopy = change;
  p_searchViewController = [(CRLiOSInsertPageViewController *)self p_searchViewController];
  insertPageViewControllerDelegate = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  [insertPageViewControllerDelegate insertPageViewController:self willSearchWithText:changeCopy inViewController:p_searchViewController searchViewController:p_searchViewController];

  p_selectedViewController = [(CRLiOSInsertPageViewController *)self p_selectedViewController];

  v9 = [changeCopy length];
  v10 = p_searchViewController;
  if (p_selectedViewController == p_searchViewController)
  {
    if (!v9)
    {
      insertPageViewControllerDataSource = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
      v10 = [insertPageViewControllerDataSource insertPageViewController:self viewControllerForPageAtIndex:{-[CRLiOSInsertPageViewController p_currentPageNumber](self, "p_currentPageNumber")}];

      if (v10)
      {
        v14 = v10;
        v13 = [NSArray arrayWithObjects:&v14 count:1];
        [(CRLiOSInsertPageViewController *)self setViewControllers:v13 animated:0];
      }

      [(CRLiOSInsertPageViewController *)self p_setSearchOverlayViewHidden:0 animated:1];
    }
  }

  else if (v9)
  {
    v10 = p_searchViewController;
    if (p_searchViewController)
    {
      [(CRLiOSInsertPageViewController *)self p_setSearchOverlayViewHidden:1 animated:1];
      v15 = p_searchViewController;
      v11 = [NSArray arrayWithObjects:&v15 count:1];
      [(CRLiOSInsertPageViewController *)self setViewControllers:v11 animated:0];

      v10 = p_searchViewController;
    }
  }
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  if (!self->_shouldIgnoreCancelBecauseOfWriting)
  {
    [(CRLiOSInsertPageViewController *)self setP_didExplicitlyCancelSearch:1];
    [(CRLiOSInsertPageViewController *)self p_endSearching];

    [(CRLiOSInsertPageViewController *)self setP_didExplicitlyCancelSearch:0];
  }
}

- (void)p_setSearchOverlayViewHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  completionCopy = completion;
  p_searchOverlayView = [(CRLiOSInsertPageViewController *)self p_searchOverlayView];
  if (hiddenCopy)
  {
    v10 = v15;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v11 = sub_100207408;
  }

  else
  {
    v10 = v14;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v11 = sub_100207414;
  }

  if (animatedCopy)
  {
    v12 = 0.150000006;
  }

  else
  {
    v12 = 0.0;
  }

  v10[2] = v11;
  v10[3] = &unk_10183AB38;
  v13 = p_searchOverlayView;
  v10[4] = v13;
  [UIView animateWithDuration:v10 animations:completionCopy completion:v12];
}

- (void)p_setSearchBarHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  completionCopy = completion;
  if ([(CRLiOSInsertPageViewController *)self supportsSearch])
  {
    [(CRLiOSInsertPageViewController *)self setP_isShowingSearchBar:!hiddenCopy];
    p_searchBar = [(CRLiOSInsertPageViewController *)self p_searchBar];
    if (!hiddenCopy)
    {
      view = [(CRLiOSInsertPageViewController *)self view];
      [view bringSubviewToFront:p_searchBar];
    }

    if (animatedCopy)
    {
      v11 = 0.300000012;
    }

    else
    {
      v11 = 0.0;
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1002075C0;
    v18[3] = &unk_10183C3C8;
    v18[4] = self;
    v19 = hiddenCopy;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100207688;
    v13[3] = &unk_101848E68;
    v17 = hiddenCopy;
    v14 = p_searchBar;
    selfCopy = self;
    v16 = completionCopy;
    v12 = p_searchBar;
    [UIView animateWithDuration:v18 animations:v13 completion:v11];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)p_beginSearchingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  insertPageViewControllerDelegate = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  [insertPageViewControllerDelegate insertPageViewControllerWillBeginSearch:self];

  [(CRLiOSInsertPageViewController *)self p_setSearchBarHidden:0 animated:animatedCopy completion:0];
  insertPageViewControllerDataSource = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  v7 = [insertPageViewControllerDataSource insertPageViewControllerViewControllerForSearch:self];
  [(CRLiOSInsertPageViewController *)self setP_searchViewController:v7];

  insertPageViewControllerDelegate2 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  [insertPageViewControllerDelegate2 insertPageViewControllerDidBeginSearch:self];
}

- (void)p_endSearching
{
  [(CRLiOSInsertPageViewController *)self p_clearSearching];
  p_currentPageNumber = [(CRLiOSInsertPageViewController *)self p_currentPageNumber];

  [(CRLiOSInsertPageViewController *)self p_selectPageAtIndex:p_currentPageNumber];
}

- (void)p_clearSearching
{
  p_didExplicitlyCancelSearch = [(CRLiOSInsertPageViewController *)self p_didExplicitlyCancelSearch];
  insertPageViewControllerDelegate = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  [insertPageViewControllerDelegate insertPageViewControllerWillEndSearch:self cancelledExplicitly:p_didExplicitlyCancelSearch];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100207970;
  v6[3] = &unk_101848E90;
  v6[4] = self;
  v7 = p_didExplicitlyCancelSearch;
  [(CRLiOSInsertPageViewController *)self p_setSearchOverlayViewHidden:1 animated:1 completion:v6];
  p_searchBar = [(CRLiOSInsertPageViewController *)self p_searchBar];
  [p_searchBar setText:&stru_1018BCA28];
}

- (void)p_addKeyboardObservation
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"p_keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"p_keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
}

- (void)p_removeKeyboardObservation
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIKeyboardWillHideNotification object:0];
}

- (void)p_keyboardWillShow:(id)show
{
  showCopy = show;
  view = [(CRLiOSInsertPageViewController *)self view];
  [view layoutIfNeeded];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100207BC0;
  v6[3] = &unk_10183AB38;
  v6[4] = self;
  [UIView crl_animateWithKeyboardNotification:showCopy animations:v6];
}

- (void)p_keyboardWillHide:(id)hide
{
  hideCopy = hide;
  view = [(CRLiOSInsertPageViewController *)self view];
  [view layoutIfNeeded];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100207CC8;
  v6[3] = &unk_10183AB38;
  v6[4] = self;
  [UIView crl_animateWithKeyboardNotification:hideCopy animations:v6];
}

- (void)p_updateBottomConstraintsIfNeeded
{
  [(CRLiOSInsertPageViewController *)self p_dotsPageControlHeight];
  v4 = v3;
  presentingViewController = [(CRLiOSInsertPageViewController *)self presentingViewController];
  traitCollection = [presentingViewController traitCollection];
  crl_isCompactWidth = [traitCollection crl_isCompactWidth];

  if (crl_isCompactWidth)
  {
    p_bottomLayoutConstraintAboveKeyboard2 = +[CRLiOSKeyboardMonitor sharedKeyboardMonitor];
    [p_bottomLayoutConstraintAboveKeyboard2 onScreenHeight];
    v10 = -v9;
    p_bottomLayoutConstraintAboveKeyboard = [(CRLiOSInsertPageViewController *)self p_bottomLayoutConstraintAboveKeyboard];
    [p_bottomLayoutConstraintAboveKeyboard setConstant:v10];
  }

  else
  {
    p_bottomLayoutConstraintAboveKeyboard2 = [(CRLiOSInsertPageViewController *)self p_bottomLayoutConstraintAboveKeyboard];
    [p_bottomLayoutConstraintAboveKeyboard2 setConstant:0.0];
  }

  view = [(CRLiOSInsertPageViewController *)self view];
  [view safeAreaInsets];
  v14 = v4 + v13;

  p_dotsPageControlHeightConstraint = [(CRLiOSInsertPageViewController *)self p_dotsPageControlHeightConstraint];
  [p_dotsPageControlHeightConstraint setConstant:v14];
}

- (void)p_setupViews
{
  view = [(CRLiOSInsertPageViewController *)self view];
  p_pageViewController = [(CRLiOSInsertPageViewController *)self p_pageViewController];
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  view2 = [p_pageViewController view];
  subviews = [view2 subviews];

  v7 = [subviews countByEnumeratingWithState:&v184 objects:v188 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v185;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v185 != v9)
        {
          objc_enumerationMutation(subviews);
        }

        v11 = *(*(&v184 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          [v12 setDelaysContentTouches:0];
          [v12 setDelegate:self];
        }
      }

      v8 = [subviews countByEnumeratingWithState:&v184 objects:v188 count:16];
    }

    while (v8);
  }

  [p_pageViewController setDataSource:self];
  [p_pageViewController setDelegate:self];
  [(CRLiOSInsertPageViewController *)self addChildViewController:p_pageViewController];
  [p_pageViewController didMoveToParentViewController:self];
  view3 = [p_pageViewController view];
  [view addSubview:view3];

  supportsSearch = [(CRLiOSInsertPageViewController *)self supportsSearch];
  v177 = view;
  v179 = p_pageViewController;
  if (supportsSearch)
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Search" value:0 table:0];

    v17 = [CRLiOSInsertPageViewControllerSearchBar alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(CRLiOSInsertPageViewControllerSearchBar *)v17 initWithFrame:CGRectZero.origin.x, y, width, height];
    [(CRLiOSInsertPageViewControllerSearchBar *)height setDelegate:self];
    [(CRLiOSInsertPageViewControllerSearchBar *)height setSearchBarStyle:2];
    [(CRLiOSInsertPageViewControllerSearchBar *)height setShowsCancelButton:1];
    [(CRLiOSInsertPageViewControllerSearchBar *)height setPlaceholder:v16];
    [(CRLiOSInsertPageViewControllerSearchBar *)height setAlpha:0.0];
    [view addSubview:height];
    [(CRLiOSInsertPageViewController *)self setP_searchBar:height];
    v22 = [UIImage systemImageNamed:@"magnifyingglass"];
    v175 = height;
    if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
    {
      v23 = +[UIColor labelColor];
      v24 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v23];
      v25 = [v22 imageByApplyingSymbolConfiguration:v24];
      v26 = [UIImageSymbolConfiguration configurationWithWeight:5];
      v27 = [v25 imageByApplyingSymbolConfiguration:v26];

      v22 = v27;
      view = v177;
    }

    v28 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v28 setIsAccessibilityElement:1];
    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"AX_INSERT_PANEL_SEARCH_BUTTON" value:@"Search" table:0];
    [v28 setAccessibilityLabel:v30];

    [v28 setImage:v22 forState:0];
    v31 = sub_1004A48FC();
    if (v31)
    {
      v32 = 2.0;
    }

    else
    {
      v32 = 0.0;
    }

    if (v31)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = 2.0;
    }

    [v28 setImageEdgeInsets:{0.0, v33, 0.0, v32}];
    [v28 addTarget:self action:"p_searchButtonTapped:" forControlEvents:64];
    v34 = +[UIColor clearColor];
    [v28 setBackgroundColor:v34];

    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v28 setShowsLargeContentViewer:1];
    v35 = +[NSBundle mainBundle];
    v36 = [v35 localizedStringForKey:@"Search" value:0 table:0];
    [v28 setLargeContentTitle:v36];

    [v28 setLargeContentImage:v22];
    v37 = objc_alloc_init(UILargeContentViewerInteraction);
    [v28 addInteraction:v37];

    [view addSubview:v28];
    [(CRLiOSInsertPageViewController *)self setP_searchButton:v28];

    p_pageViewController = v179;
  }

  else
  {
    v28 = 0;
    v175 = 0;
  }

  insertPageViewControllerNavigationDataSource = [(CRLiOSInsertPageViewController *)self insertPageViewControllerNavigationDataSource];
  showsSubpageNavigator = [insertPageViewControllerNavigationDataSource showsSubpageNavigator];

  if (showsSubpageNavigator)
  {
    insertPageViewControllerNavigationDataSource2 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerNavigationDataSource];
    subpageNavigatorItems = [insertPageViewControllerNavigationDataSource2 subpageNavigatorItems];

    v42 = [[CRLiOSMultipaneSegmentedControl alloc] initWithItems:subpageNavigatorItems];
    [(CRLiOSMultipaneSegmentedControl *)v42 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CRLiOSMultipaneSegmentedControl *)v42 setBackdropHidden:1];
    [(CRLiOSMultipaneSegmentedControl *)v42 setSegmentHuggingEnabled:1];
    [(CRLiOSMultipaneSegmentedControl *)v42 setAllEdgeInsets:0.0, 16.0, 0.0, 16.0];
    insertPageViewControllerDataSource = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
    -[CRLiOSMultipaneSegmentedControl setSelectedSegmentIndex:](v42, "setSelectedSegmentIndex:", [insertPageViewControllerDataSource selectedSubpageIndexForInsertPageViewController:self]);

    [(CRLiOSMultipaneSegmentedControl *)v42 setExclusiveTouch:1];
    [(CRLiOSMultipaneSegmentedControl *)v42 addTarget:self action:"p_subpageNavigatorDidChangeSelectedSegment:" forControlEvents:4096];
    v182 = v42;
    [(CRLiOSInsertPageViewController *)self setP_subpageNavigator:v42];
  }

  else
  {
    v182 = 0;
  }

  insertPageViewControllerDataSource2 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  p_selectedViewController = [(CRLiOSInsertPageViewController *)self p_selectedViewController];
  v46 = [insertPageViewControllerDataSource2 insertPageViewController:self presentationIndexForViewController:p_selectedViewController];

  [(CRLiOSInsertPageViewController *)self setP_currentPageNumber:v46];
  p_pageControlType = [(CRLiOSInsertPageViewController *)self p_pageControlType];
  if (!p_pageControlType)
  {
    v77 = +[UIColor clearColor];
    v78 = [UIView alloc];
    x = CGRectZero.origin.x;
    v53 = CGRectZero.origin.y;
    v54 = CGRectZero.size.width;
    v55 = CGRectZero.size.height;
    v79 = [v78 initWithFrame:{CGRectZero.origin.x, v53, v54, v55}];
    [v79 setBackgroundColor:v77];
    [view addSubview:v79];
    v80 = [[UIPageControl alloc] initWithFrame:{CGRectZero.origin.x, v53, v54, v55}];
    [v79 addSubview:v80];
    [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [v80 topAnchor];
    topAnchor2 = [v79 topAnchor];
    v83 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v83 setActive:1];

    leadingAnchor = [v80 leadingAnchor];
    leadingAnchor2 = [v79 leadingAnchor];
    v86 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v86 setActive:1];

    trailingAnchor = [v80 trailingAnchor];
    trailingAnchor2 = [v79 trailingAnchor];
    v89 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v89 setActive:1];

    view = v177;
    heightAnchor = [v80 heightAnchor];
    v91 = [heightAnchor constraintEqualToConstant:44.0];
    [v91 setActive:1];

    p_pageViewController = v179;
    v92 = [UIColor colorWithWhite:0.5 alpha:1.0];
    [v80 setPageIndicatorTintColor:v92];

    insertPageViewControllerDataSource3 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
    [v80 setNumberOfPages:{objc_msgSend(insertPageViewControllerDataSource3, "presentationCountForInsertPageViewController:", self)}];

    [v80 setCurrentPage:v46];
    [v80 setBackgroundColor:v77];
    [v80 setAllowsContinuousInteraction:0];
    [v80 addTarget:self action:"p_dotPageControlValueChanged" forControlEvents:4096];
    [(CRLiOSInsertPageViewController *)self setP_dotsPageControl:v80];
    v94 = [[CRLiOSInsertPageViewControllerFadeView alloc] initWithStartPoint:1 endPoint:0.5 shouldAddDividerView:0.0, 0.5, 1.0];
    [(CRLiOSInsertPageViewControllerFadeView *)v94 setBackgroundColor:v77];
    [(CRLiOSInsertPageViewController *)self setP_bottomFadeBar:v94];

    v95 = 0;
    v181 = 0;
    v176 = 0;
    v56 = 0;
LABEL_31:
    v96 = v182;
    goto LABEL_36;
  }

  if (p_pageControlType != 1)
  {
    v95 = 0;
    v181 = 0;
    v176 = 0;
    v56 = 0;
    v79 = 0;
    x = CGRectZero.origin.x;
    v53 = CGRectZero.origin.y;
    v54 = CGRectZero.size.width;
    v55 = CGRectZero.size.height;
    goto LABEL_31;
  }

  insertPageViewControllerNavigationDataSource3 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerNavigationDataSource];
  pageControlTitles = [insertPageViewControllerNavigationDataSource3 pageControlTitles];

  v50 = [[CRLiOSInsertPageViewControllerTitlesPageControl alloc] initWithTitles:pageControlTitles];
  [(CRLiOSInsertPageViewControllerTitlesPageControl *)v50 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CRLiOSInsertPageViewControllerTitlesPageControl *)v50 addTarget:self action:"p_titlesPageControlValueChanged:" forControlEvents:4096];
  v51 = [CRLiOSTitlesPageControlScrollView alloc];
  x = CGRectZero.origin.x;
  v53 = CGRectZero.origin.y;
  v54 = CGRectZero.size.width;
  v55 = CGRectZero.size.height;
  v56 = [(CRLiOSTitlesPageControlScrollView *)v51 initWithFrame:CGRectZero.origin.x, v53, v54, v55];
  [(CRLiOSTitlesPageControlScrollView *)v56 setShowsVerticalScrollIndicator:0];
  [(CRLiOSTitlesPageControlScrollView *)v56 setShowsHorizontalScrollIndicator:0];
  [(CRLiOSInsertPageViewControllerTitlesPageControl *)v50 frame];
  [(CRLiOSTitlesPageControlScrollView *)v56 setContentSize:v57, v58];
  [(CRLiOSTitlesPageControlScrollView *)v56 setAccessibilityIdentifier:@"presetScrollView"];
  [(CRLiOSTitlesPageControlScrollView *)v56 addSubview:v50];
  [(CRLiOSTitlesPageControlScrollView *)v56 setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor2 = [(CRLiOSTitlesPageControlScrollView *)v56 heightAnchor];
  v60 = [heightAnchor2 constraintEqualToConstant:44.0];
  [v60 setActive:1];

  topAnchor3 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)v50 topAnchor];
  topAnchor4 = [(CRLiOSTitlesPageControlScrollView *)v56 topAnchor];
  v63 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v63 setActive:1];

  leadingAnchor3 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)v50 leadingAnchor];
  leadingAnchor4 = [(CRLiOSTitlesPageControlScrollView *)v56 leadingAnchor];
  v66 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v66 setActive:1];

  trailingAnchor3 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)v50 trailingAnchor];
  trailingAnchor4 = [(CRLiOSTitlesPageControlScrollView *)v56 trailingAnchor];
  v69 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v69 setActive:1];

  view = v177;
  v176 = v50;
  heightAnchor3 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)v50 heightAnchor];
  v71 = [heightAnchor3 constraintEqualToConstant:44.0];
  [v71 setActive:1];

  v181 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, v53, v54, v55}];
  [v177 addSubview:?];
  if (supportsSearch)
  {
    v72 = sub_1004A48FC();
    v73 = [CRLiOSInsertPageViewControllerFadeView alloc];
    if (v72)
    {
      v74 = 0.0;
      v75 = 0.5;
      v76 = 1.0;
    }

    else
    {
      v74 = 1.0;
      v75 = 0.5;
      v76 = 0.0;
    }

    v95 = [(CRLiOSInsertPageViewControllerFadeView *)v73 initWithStartPoint:0 endPoint:v74 shouldAddDividerView:v75, v76, 0.5];
    p_pageViewController = v179;
    [(CRLiOSInsertPageViewControllerFadeView *)v95 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v95 = 0;
    p_pageViewController = v179;
  }

  v96 = v182;
  [(CRLiOSInsertPageViewController *)self setP_titlesPageControl:v176];
  [(CRLiOSInsertPageViewController *)self setP_titlesPageControlBottomBorder:v181];
  [(CRLiOSInsertPageViewController *)self setP_titlesPageControlScrollView:v56];

  v79 = 0;
LABEL_36:
  v97 = [[UIStackView alloc] initWithFrame:{x, v53, v54, v55}];
  [v97 setAxis:1];
  [view addSubview:v97];
  v180 = v79;
  v183 = v95;
  v178 = v97;
  if (v56)
  {
    v98 = [[UIView alloc] initWithFrame:{x, v53, v54, v55}];
    [v98 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (v28)
    {
      [v98 addSubview:v28];
      topAnchor5 = [v28 topAnchor];
      topAnchor6 = [v98 topAnchor];
      v101 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      [v101 setActive:1];

      leadingAnchor5 = [v28 leadingAnchor];
      safeAreaLayoutGuide = [v98 safeAreaLayoutGuide];
      leadingAnchor6 = [safeAreaLayoutGuide leadingAnchor];
      v105 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      [v105 setActive:1];

      bottomAnchor = [v28 bottomAnchor];
      bottomAnchor2 = [v98 bottomAnchor];
      v108 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v108 setActive:1];

      widthAnchor = [v28 widthAnchor];
      v110 = [widthAnchor constraintEqualToConstant:40.0];
      [v110 setActive:1];

      [v98 addSubview:v183];
      v111 = [[UIView alloc] initWithFrame:{x, v53, v54, v55}];
      [v111 setTranslatesAutoresizingMaskIntoConstraints:0];
      v112 = +[UIColor clearColor];
      [v111 setBackgroundColor:v112];

      [v98 addSubview:v111];
      topAnchor7 = [v111 topAnchor];
      topAnchor8 = [v98 topAnchor];
      v115 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
      [v115 setActive:1];

      leadingAnchor7 = [v111 leadingAnchor];
      leadingAnchor8 = [v98 leadingAnchor];
      v118 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
      [v118 setActive:1];

      bottomAnchor3 = [v111 bottomAnchor];
      bottomAnchor4 = [v98 bottomAnchor];
      v121 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [v121 setActive:1];

      trailingAnchor5 = [v111 trailingAnchor];
      leadingAnchor9 = [(CRLiOSInsertPageViewControllerFadeView *)v183 leadingAnchor];
      v124 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor9];
      [v124 setActive:1];

      topAnchor9 = [(CRLiOSInsertPageViewControllerFadeView *)v183 topAnchor];
      topAnchor10 = [v98 topAnchor];
      v127 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
      [v127 setActive:1];

      trailingAnchor6 = [(CRLiOSInsertPageViewControllerFadeView *)v183 trailingAnchor];
      trailingAnchor7 = [v28 trailingAnchor];
      v130 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
      [v130 setActive:1];

      bottomAnchor5 = [(CRLiOSInsertPageViewControllerFadeView *)v183 bottomAnchor];
      bottomAnchor6 = [v98 bottomAnchor];
      v133 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      [v133 setActive:1];

      widthAnchor2 = [(CRLiOSInsertPageViewControllerFadeView *)v183 widthAnchor];
      v135 = [widthAnchor2 constraintEqualToConstant:8.0];
      [v135 setActive:1];

      [(CRLiOSInsertPageViewController *)self setP_searchButtonSpacerView:v111];
    }

    else
    {
      v111 = 0;
    }

    [v98 addSubview:v56];
    topAnchor11 = [(CRLiOSTitlesPageControlScrollView *)v56 topAnchor];
    topAnchor12 = [v98 topAnchor];
    v138 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
    [v138 setActive:1];

    bottomAnchor7 = [(CRLiOSTitlesPageControlScrollView *)v56 bottomAnchor];
    bottomAnchor8 = [v98 bottomAnchor];
    v141 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    [v141 setActive:1];

    trailingAnchor8 = [(CRLiOSTitlesPageControlScrollView *)v56 trailingAnchor];
    trailingAnchor9 = [v98 trailingAnchor];
    v144 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    [v144 setActive:1];

    leadingAnchor10 = [(CRLiOSTitlesPageControlScrollView *)v56 leadingAnchor];
    if (v28)
    {
      trailingAnchor10 = [v28 trailingAnchor];
      v147 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor10];
      [v147 setActive:1];

      [v98 bringSubviewToFront:v111];
      v95 = v183;
      [v98 bringSubviewToFront:v183];
      [v98 bringSubviewToFront:v28];
    }

    else
    {
      safeAreaLayoutGuide2 = [v98 safeAreaLayoutGuide];
      leadingAnchor11 = [safeAreaLayoutGuide2 leadingAnchor];
      v150 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
      [v150 setActive:1];

      v79 = v180;
      v95 = v183;
    }

    [v178 addArrangedSubview:v98];
    [v178 addArrangedSubview:v181];

    v97 = v178;
    view = v177;
    p_pageViewController = v179;
  }

  else if (v28)
  {
    [v97 addArrangedSubview:v28];
  }

  if (v96)
  {
    v151 = [[UIView alloc] initWithFrame:{x, v53, v54, v55}];
    [v151 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v151 addSubview:v96];
    heightAnchor4 = [v151 heightAnchor];
    v153 = [heightAnchor4 constraintEqualToConstant:44.0];
    [v153 setActive:1];

    topAnchor13 = [v151 topAnchor];
    topAnchor14 = [(CRLiOSMultipaneSegmentedControl *)v96 topAnchor];
    v156 = [topAnchor13 constraintEqualToAnchor:topAnchor14 constant:-8.0];
    [v156 setActive:1];

    bottomAnchor9 = [v151 bottomAnchor];
    bottomAnchor10 = [(CRLiOSMultipaneSegmentedControl *)v96 bottomAnchor];
    v159 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:8.0];
    [v159 setActive:1];

    widthAnchor3 = [v151 widthAnchor];
    widthAnchor4 = [(CRLiOSMultipaneSegmentedControl *)v96 widthAnchor];
    v162 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4 constant:64.0];
    [v162 setActive:1];

    widthAnchor5 = [v151 widthAnchor];
    widthAnchor6 = [(CRLiOSMultipaneSegmentedControl *)v96 widthAnchor];
    v165 = [widthAnchor5 constraintGreaterThanOrEqualToAnchor:widthAnchor6 constant:24.0];
    [v165 setActive:1];

    centerXAnchor = [v151 centerXAnchor];
    centerXAnchor2 = [(CRLiOSMultipaneSegmentedControl *)v96 centerXAnchor];
    v168 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v168 setActive:1];

    v97 = v178;
    v79 = v180;

    v95 = v183;
    [v178 addArrangedSubview:v151];
  }

  if (v95)
  {
    [view bringSubviewToFront:v95];
  }

  view4 = [p_pageViewController view];
  [(CRLiOSInsertPageViewController *)self p_setupConstraintsWithTopLevelView:view searchBar:v175 navigatorStackView:v97 pageViewControllerView:view4 dotsPageControlWrapper:v79];

  [(CRLiOSInsertPageViewController *)self p_updateTitlesPageControlAndBottomViewColorsInDarkUI:[(CRLiOSInsertPageViewController *)self crl_isInDarkMode]];
  p_searchOverlayView = [(CRLiOSInsertPageViewController *)self p_searchOverlayView];
  if (!p_searchOverlayView)
  {
    p_searchOverlayView = [[UIView alloc] initWithFrame:{x, v53, v54, v55}];
    v171 = [UIColor colorWithWhite:0.0 alpha:1.0];
    [p_searchOverlayView setBackgroundColor:v171];

    [p_searchOverlayView setAlpha:0.0];
    [p_searchOverlayView setTranslatesAutoresizingMaskIntoConstraints:0];
    v172 = [[CRLiOSInsertPageViewControllerOverlayGestureRecognizer alloc] initWithTarget:self action:"p_searchOverlayTapped:"];
    [p_searchOverlayView addGestureRecognizer:v172];
    [(CRLiOSInsertPageViewController *)self setP_searchOverlayView:p_searchOverlayView];
    p_selectedViewController2 = [(CRLiOSInsertPageViewController *)self p_selectedViewController];
    view5 = [p_selectedViewController2 view];
    [(CRLiOSInsertPageViewController *)self p_moveOverlayView:p_searchOverlayView toSelectedViewControllerView:view5];

    v97 = v178;
    v79 = v180;

    v95 = v183;
  }
}

- (void)p_moveOverlayView:(id)view toSelectedViewControllerView:(id)controllerView
{
  controllerViewCopy = controllerView;
  viewCopy = view;
  [viewCopy removeFromSuperview];
  [controllerViewCopy addSubview:viewCopy];
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [controllerViewCopy topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v9 setActive:1];

  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [controllerViewCopy trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v12 setActive:1];

  bottomAnchor = [viewCopy bottomAnchor];
  bottomAnchor2 = [controllerViewCopy bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v15 setActive:1];

  leadingAnchor = [viewCopy leadingAnchor];

  leadingAnchor2 = [controllerViewCopy leadingAnchor];

  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v17 setActive:1];
}

- (void)p_dotPageControlValueChanged
{
  p_currentPageNumber = [(CRLiOSInsertPageViewController *)self p_currentPageNumber];
  p_dotsPageControl = [(CRLiOSInsertPageViewController *)self p_dotsPageControl];
  currentPage = [p_dotsPageControl currentPage];

  insertPageViewControllerDataSource = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  v7 = [insertPageViewControllerDataSource insertPageViewController:self viewControllerForPageAtIndex:currentPage];

  v16 = v7;
  v8 = [NSArray arrayWithObjects:&v16 count:1];
  p_pageViewController = [(CRLiOSInsertPageViewController *)self p_pageViewController];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1002096EC;
  v13 = &unk_101848EB8;
  selfCopy = self;
  v15 = currentPage;
  [p_pageViewController setViewControllers:v8 direction:currentPage < p_currentPageNumber animated:1 completion:&v10];
  [(CRLiOSInsertPageViewController *)self p_setViewControllers:v8 shouldUpdatePageViewController:0 animated:0, v10, v11, v12, v13];
}

- (void)p_setupConstraintsWithTopLevelView:(id)view searchBar:(id)bar navigatorStackView:(id)stackView pageViewControllerView:(id)controllerView dotsPageControlWrapper:(id)wrapper
{
  viewCopy = view;
  barCopy = bar;
  stackViewCopy = stackView;
  controllerViewCopy = controllerView;
  wrapperCopy = wrapper;
  if (barCopy)
  {
    [barCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [barCopy leadingAnchor];
    leadingAnchor2 = [viewCopy leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v18 setActive:1];

    trailingAnchor = [barCopy trailingAnchor];
    trailingAnchor2 = [viewCopy trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v21 setActive:1];

    heightAnchor = [barCopy heightAnchor];
    v23 = [heightAnchor constraintEqualToConstant:44.0];
    [v23 setActive:1];

    topAnchor = [barCopy topAnchor];
    topAnchor2 = [viewCopy topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v26 setActive:1];
  }

  [controllerViewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor3 = [controllerViewCopy leadingAnchor];
  leadingAnchor4 = [viewCopy leadingAnchor];
  v29 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v29 setActive:1];

  trailingAnchor3 = [controllerViewCopy trailingAnchor];
  trailingAnchor4 = [viewCopy trailingAnchor];
  v32 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v32 setActive:1];

  [stackViewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor3 = [stackViewCopy topAnchor];
  topAnchor4 = [viewCopy topAnchor];
  v35 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v35 setActive:1];

  leadingAnchor5 = [stackViewCopy leadingAnchor];
  leadingAnchor6 = [viewCopy leadingAnchor];
  v38 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v38 setActive:1];

  trailingAnchor5 = [stackViewCopy trailingAnchor];
  trailingAnchor6 = [viewCopy trailingAnchor];
  v41 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v41 setActive:1];

  bottomAnchor = [stackViewCopy bottomAnchor];
  topAnchor5 = [controllerViewCopy topAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:topAnchor5];
  [v44 setActive:1];

  arrangedSubviews = [stackViewCopy arrangedSubviews];
  v46 = [arrangedSubviews count];

  heightAnchor2 = [stackViewCopy heightAnchor];
  v48 = heightAnchor2;
  v49 = 44.0;
  if (!v46)
  {
    v49 = 0.0;
  }

  v50 = [heightAnchor2 constraintEqualToConstant:v49];
  [v50 setActive:1];

  if (wrapperCopy)
  {
    [wrapperCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor7 = [wrapperCopy leadingAnchor];
    leadingAnchor8 = [viewCopy leadingAnchor];
    v53 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    [v53 setActive:1];

    trailingAnchor7 = [wrapperCopy trailingAnchor];
    trailingAnchor8 = [viewCopy trailingAnchor];
    v56 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    [v56 setActive:1];

    heightAnchor3 = [wrapperCopy heightAnchor];
    [(CRLiOSInsertPageViewController *)self p_dotsPageControlHeight];
    bottomAnchor5 = [heightAnchor3 constraintEqualToConstant:?];

    [bottomAnchor5 setActive:1];
    [(CRLiOSInsertPageViewController *)self setP_dotsPageControlHeightConstraint:bottomAnchor5];
    bottomAnchor2 = [wrapperCopy bottomAnchor];
    bottomAnchor3 = [viewCopy bottomAnchor];
    v61 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];

    bottomAnchor4 = [controllerViewCopy bottomAnchor];
    topAnchor6 = [wrapperCopy topAnchor];
    v64 = [bottomAnchor4 constraintEqualToAnchor:topAnchor6];
    [v64 setActive:1];
  }

  else
  {
    bottomAnchor5 = [controllerViewCopy bottomAnchor];
    bottomAnchor4 = [viewCopy bottomAnchor];
    v61 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor4];
  }

  [v61 setActive:1];
  [(CRLiOSInsertPageViewController *)self setP_bottomLayoutConstraintAboveKeyboard:v61];
  if (wrapperCopy)
  {
    [(CRLiOSInsertPageViewController *)self p_updateBottomConstraintsIfNeeded];
  }
}

- (void)p_subpageNavigatorDidChangeSelectedSegment:(id)segment
{
  segmentCopy = segment;
  insertPageViewControllerDelegate = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  selectedSegmentIndex = [segmentCopy selectedSegmentIndex];

  [insertPageViewControllerDelegate insertPageViewController:self didSelectSubpageAtIndex:selectedSegmentIndex];
}

- (unint64_t)p_pageControlType
{
  insertPageViewControllerNavigationDataSource = [(CRLiOSInsertPageViewController *)self insertPageViewControllerNavigationDataSource];
  pageControlType = [insertPageViewControllerNavigationDataSource pageControlType];

  return pageControlType;
}

- (double)p_dotsPageControlHeight
{
  p_pageControlType = [(CRLiOSInsertPageViewController *)self p_pageControlType];
  result = 0.0;
  if (!p_pageControlType)
  {
    if (+[UIScreen crl_deviceIsLandscape](UIScreen, "crl_deviceIsLandscape", 0.0) && +[UIScreen crl_screenClassPhoneUIRegularOrLarge])
    {
      return 39.0;
    }

    else
    {
      return 44.0;
    }
  }

  return result;
}

- (void)p_titlesPageControlValueChanged:(id)changed
{
  selectedTitleIndex = [changed selectedTitleIndex];

  [(CRLiOSInsertPageViewController *)self p_selectPageAtIndex:selectedTitleIndex];
}

- (void)p_selectPageAtIndex:(unint64_t)index animated:(BOOL)animated scrollToBottom:(BOOL)bottom
{
  bottomCopy = bottom;
  animatedCopy = animated;
  [(CRLiOSInsertPageViewController *)self setP_currentPageNumber:?];
  [(CRLiOSInsertPageViewController *)self setP_shouldScrollToBottomOfPage:bottomCopy];
  insertPageViewControllerDataSource = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  v10 = [insertPageViewControllerDataSource insertPageViewController:self viewControllerForPageAtIndex:index];

  if (v10)
  {
    v20 = v10;
    v11 = [NSArray arrayWithObjects:&v20 count:1];
    [(CRLiOSInsertPageViewController *)self setViewControllers:v11];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100209FD8;
  v16[3] = &unk_101848F08;
  v16[4] = self;
  indexCopy = index;
  v19 = animatedCopy;
  v12 = v10;
  v17 = v12;
  v13 = objc_retainBlock(v16);
  if ([(CRLiOSInsertPageViewController *)self p_isShowingSearchBar])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10020A118;
    v14[3] = &unk_10183D168;
    v15 = v13;
    [(CRLiOSInsertPageViewController *)self p_setSearchBarHidden:1 animated:animatedCopy completion:v14];
  }

  else
  {
    (v13[2])(v13);
  }
}

- (void)p_updateUIForChangeToPageNumber:(unint64_t)number animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  view = [(CRLiOSInsertPageViewController *)self view];
  [view layoutIfNeeded];

  p_titlesPageControlScrollView = [(CRLiOSInsertPageViewController *)self p_titlesPageControlScrollView];
  p_titlesPageControl = [(CRLiOSInsertPageViewController *)self p_titlesPageControl];
  [p_titlesPageControl setSelectedTitleIndex:number];
  [p_titlesPageControlScrollView frame];
  Width = CGRectGetWidth(v34);
  if (Width != 0.0)
  {
    v12 = Width;
    selectedButton = [p_titlesPageControl selectedButton];
    [selectedButton frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v35.origin.x = v15;
    v35.origin.y = v17;
    v35.size.width = v19;
    v35.size.height = v21;
    v22 = CGRectGetMidX(v35) + v12 * -0.5;
    [p_titlesPageControlScrollView contentSize];
    v24 = v23;
    v25 = sub_1004A48FC();
    v26 = v24 - v12;
    v27 = 0.0;
    v28 = 14.0;
    if (number != 1)
    {
      v28 = 0.0;
    }

    v29 = fmin(fmax(v22, v28), v26);
    v30 = fmax(v22, 0.0);
    if (number == 1)
    {
      v27 = -14.0;
    }

    v31 = fmin(v30, v27 + v26);
    if (!v25)
    {
      v31 = v29;
    }

    [p_titlesPageControlScrollView setContentOffset:animatedCopy animated:{v31, 0.0}];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }
}

- (id)p_selectedViewController
{
  viewControllers = [(CRLiOSInsertPageViewController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (void)p_restoreViewState
{
  insertPageViewControllerDelegate = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  v4 = [insertPageViewControllerDelegate insertPageViewControllerShouldAppearInSearchMode:self];

  if (v4)
  {
    [(CRLiOSInsertPageViewController *)self p_beginSearchingAnimated:0];
    insertPageViewControllerDelegate2 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
    v8 = [insertPageViewControllerDelegate2 insertPageViewControllerDefaultSearchTerm:self];

    p_searchBar = [(CRLiOSInsertPageViewController *)self p_searchBar];
    [p_searchBar setText:v8];

    p_searchBar2 = [(CRLiOSInsertPageViewController *)self p_searchBar];
    [(CRLiOSInsertPageViewController *)self searchBar:p_searchBar2 textDidChange:v8];
  }
}

- (BOOL)crl_isInDarkMode
{
  v2 = +[UIScreen mainScreen];
  traitCollection = [v2 traitCollection];
  crl_isUserInterfaceStyleDark = [traitCollection crl_isUserInterfaceStyleDark];

  return crl_isUserInterfaceStyleDark;
}

- (void)p_updateTitlesPageControlAndBottomViewColorsInDarkUI:(BOOL)i
{
  v4 = [(CRLiOSInsertPageViewController *)self p_searchBarStyleInDarkUI:0];
  p_searchBar = [(CRLiOSInsertPageViewController *)self p_searchBar];
  [p_searchBar setBarStyle:v4];

  v6 = +[UIColor clearColor];
  p_searchBar2 = [(CRLiOSInsertPageViewController *)self p_searchBar];
  [p_searchBar2 setBackgroundColor:v6];

  v8 = +[UIColor clearColor];
  p_searchButton = [(CRLiOSInsertPageViewController *)self p_searchButton];
  [p_searchButton setBackgroundColor:v8];

  v11 = +[UIColor clearColor];
  p_searchButtonSpacerView = [(CRLiOSInsertPageViewController *)self p_searchButtonSpacerView];
  [p_searchButtonSpacerView setBackgroundColor:v11];
}

- (CRLiOSInsertPageViewControllerDataSource)insertPageViewControllerDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_insertPageViewControllerDataSource);

  return WeakRetained;
}

- (CRLiOSInsertPageViewControllerDelegate)insertPageViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_insertPageViewControllerDelegate);

  return WeakRetained;
}

- (CRLiOSInsertPageViewControllerNavigationDataSource)insertPageViewControllerNavigationDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_insertPageViewControllerNavigationDataSource);

  return WeakRetained;
}

- (UIView)p_searchOverlayView
{
  WeakRetained = objc_loadWeakRetained(&self->_searchOverlayView);

  return WeakRetained;
}

@end