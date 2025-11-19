@interface CRLiOSInsertPageViewController
- (BOOL)crl_isInDarkMode;
- (BOOL)searchBar:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (BOOL)supportsSearch;
- (CGSize)contentSize;
- (CRLiOSInsertPageViewController)initWithCoder:(id)a3;
- (CRLiOSInsertPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CRLiOSInsertPageViewController)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5;
- (CRLiOSInsertPageViewControllerDataSource)insertPageViewControllerDataSource;
- (CRLiOSInsertPageViewControllerDelegate)insertPageViewControllerDelegate;
- (CRLiOSInsertPageViewControllerNavigationDataSource)insertPageViewControllerNavigationDataSource;
- (UIView)p_searchOverlayView;
- (double)p_dotsPageControlHeight;
- (id)p_selectedViewController;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (unint64_t)p_pageControlType;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)p_addKeyboardObservation;
- (void)p_beginSearchingAnimated:(BOOL)a3;
- (void)p_clearSearching;
- (void)p_dotPageControlValueChanged;
- (void)p_endSearching;
- (void)p_keyboardWillHide:(id)a3;
- (void)p_keyboardWillShow:(id)a3;
- (void)p_moveOverlayView:(id)a3 toSelectedViewControllerView:(id)a4;
- (void)p_recursivelySetExclusiveTouchOnView:(id)a3;
- (void)p_removeKeyboardObservation;
- (void)p_restoreViewState;
- (void)p_selectPageAtIndex:(unint64_t)a3 animated:(BOOL)a4 scrollToBottom:(BOOL)a5;
- (void)p_setSearchBarHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)p_setSearchOverlayViewHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)p_setViewControllers:(id)a3 shouldUpdatePageViewController:(BOOL)a4 animated:(BOOL)a5;
- (void)p_setupConstraintsWithTopLevelView:(id)a3 searchBar:(id)a4 navigatorStackView:(id)a5 pageViewControllerView:(id)a6 dotsPageControlWrapper:(id)a7;
- (void)p_setupViews;
- (void)p_subpageNavigatorDidChangeSelectedSegment:(id)a3;
- (void)p_titlesPageControlValueChanged:(id)a3;
- (void)p_updateBottomConstraintsIfNeeded;
- (void)p_updatePageSelectionForViewAppearance;
- (void)p_updateTitlesPageControlAndBottomViewColorsInDarkUI:(BOOL)a3;
- (void)p_updateUIForChangeToPageNumber:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4;
- (void)resignFirstResponderIfNeeded;
- (void)scribbleInteractionDidFinishWriting:(id)a3;
- (void)scribbleInteractionWillBeginWriting:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)updateBottomViewVisibilityIfNeeded;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation CRLiOSInsertPageViewController

- (void)scribbleInteractionWillBeginWriting:(id)a3
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

- (void)scribbleInteractionDidFinishWriting:(id)a3
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

- (CRLiOSInsertPageViewController)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5
{
  v7 = a5;
  v12.receiver = self;
  v12.super_class = CRLiOSInsertPageViewController;
  v8 = [(CRLiOSInsertPageViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[UIPageViewController alloc] initWithTransitionStyle:1 navigationOrientation:a4 options:v7];
    pageViewController = v8->_pageViewController;
    v8->_pageViewController = v9;
  }

  return v8;
}

- (CRLiOSInsertPageViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRLiOSInsertPageViewController;
  v5 = [(CRLiOSInsertPageViewController *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [[UIPageViewController alloc] initWithCoder:v4];
    pageViewController = v5->_pageViewController;
    v5->_pageViewController = v6;
  }

  return v5;
}

- (CRLiOSInsertPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CRLiOSInsertPageViewController;
  v8 = [(CRLiOSInsertPageViewController *)&v12 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    v9 = [[UIPageViewController alloc] initWithNibName:v6 bundle:v7];
    pageViewController = v8->_pageViewController;
    v8->_pageViewController = v9;
  }

  return v8;
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v5 willMoveToParentViewController:?];
  if (!a3)
  {
    [(CRLiOSInsertPageViewController *)self p_removeKeyboardObservation];
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v5 didMoveToParentViewController:?];
  if (a3)
  {
    [(CRLiOSInsertPageViewController *)self p_updatePageSelectionForViewAppearance];
  }
}

- (void)p_updatePageSelectionForViewAppearance
{
  if (![(CRLiOSInsertPageViewController *)self p_isShowingSearchBar])
  {
    v3 = [(CRLiOSInsertPageViewController *)self p_currentPageNumber];
    v4 = [(CRLiOSInsertPageViewController *)self p_shouldScrollToBottomOfPage];

    [(CRLiOSInsertPageViewController *)self p_selectPageAtIndex:v3 animated:0 scrollToBottom:v4];
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(CRLiOSInsertPageViewController *)self p_restoreViewState];
  v5 = [(CRLiOSInsertPageViewController *)self p_pageViewController];
  v6 = [(CRLiOSInsertPageViewController *)self viewControllers];
  [v5 setViewControllers:v6 direction:0 animated:0 completion:0];

  v7.receiver = self;
  v7.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v7 viewWillAppear:v3];
  [(CRLiOSInsertPageViewController *)self p_addKeyboardObservation];
  [(CRLiOSInsertPageViewController *)self p_updateBottomConstraintsIfNeeded];
  [(CRLiOSInsertPageViewController *)self p_updateTitlesPageControlAndBottomViewColorsInDarkUI:[(CRLiOSInsertPageViewController *)self crl_isInDarkMode]];
  self->_shouldUpdatePageSelectionOnNextLayoutSubviews = 1;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v5 viewDidAppear:a3];
  [(CRLiOSInsertPageViewController *)self setP_isInViewHierarchy:1];
  [(CRLiOSInsertPageViewController *)self p_updatePageSelectionForViewAppearance];
  v4 = [(CRLiOSInsertPageViewController *)self p_searchButton];
  CRLAccessibilityPostLayoutChangedNotification(v4);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v5 viewWillDisappear:a3];
  [(CRLiOSInsertPageViewController *)self p_removeKeyboardObservation];
  v4 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  [v4 insertPageViewControllerWillDisappear:self];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v4 viewDidDisappear:a3];
  [(CRLiOSInsertPageViewController *)self p_setSearchOverlayViewHidden:1 animated:0];
  [(CRLiOSInsertPageViewController *)self setP_isInViewHierarchy:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CRLiOSInsertPageViewController;
  v7 = a4;
  [(CRLiOSInsertPageViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100205D7C;
  v8[3] = &unk_101848DD8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = CRLiOSInsertPageViewController;
  [(CRLiOSInsertPageViewController *)&v6 viewDidLayoutSubviews];
  if (![(CRLiOSInsertPageViewController *)self p_pageControlType])
  {
    v3 = [(CRLiOSInsertPageViewController *)self view];
    v4 = [v3 tintColor];
    v5 = [(CRLiOSInsertPageViewController *)self p_dotsPageControl];
    [v5 setCurrentPageIndicatorTintColor:v4];
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
    v3 = [(CRLiOSInsertPageViewController *)self p_bottomFadeBar];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [v3 superview];

    if (v4)
    {
      [v3 removeFromSuperview];
    }

    v5 = [(CRLiOSInsertPageViewController *)self view];
    [v5 addSubview:v3];
    [v5 bringSubviewToFront:v3];
    v6 = [v3 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    [v8 setActive:1];

    v9 = [v3 trailingAnchor];
    v10 = [v5 trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [v3 bottomAnchor];
    v13 = [(CRLiOSInsertPageViewController *)self p_dotsPageControl];
    v14 = [v13 topAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [v3 heightAnchor];
    v17 = [v16 constraintEqualToConstant:6.0];
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

- (void)p_recursivelySetExclusiveTouchOnView:(id)a3
{
  v4 = a3;
  [v4 setExclusiveTouch:1];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 subviews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(CRLiOSInsertPageViewController *)self p_recursivelySetExclusiveTouchOnView:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)p_setViewControllers:(id)a3 shouldUpdatePageViewController:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if ([(CRLiOSInsertPageViewController *)self p_isInViewHierarchy]&& v6)
  {
    if (v5)
    {
      v9 = 0.300000012;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = [(CRLiOSInsertPageViewController *)self p_pageViewController];
    v11 = [v10 view];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100206460;
    v28[3] = &unk_10183AE28;
    v29 = v10;
    v30 = v8;
    v12 = v10;
    [UIView transitionWithView:v11 duration:5242880 options:v28 animations:0 completion:v9];
  }

  v13 = [v8 copy];
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

        v20 = [*(*(&v24 + 1) + 8 * i) view];
        [(CRLiOSInsertPageViewController *)self p_recursivelySetExclusiveTouchOnView:v20];
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v17);
  }

  v21 = [(CRLiOSInsertPageViewController *)self p_searchOverlayView];
  v22 = [(CRLiOSInsertPageViewController *)self p_selectedViewController];
  v23 = [v22 view];
  [(CRLiOSInsertPageViewController *)self p_moveOverlayView:v21 toSelectedViewControllerView:v23];
}

- (CGSize)contentSize
{
  v3 = [(CRLiOSInsertPageViewController *)self p_pageControlType];
  v4 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerNavigationDataSource];
  Height = 0.0;
  if ([v4 showsSubpageNavigator])
  {
    v6 = [(CRLiOSInsertPageViewController *)self p_subpageNavigator];
    [v6 bounds];
    Height = CGRectGetHeight(v29);
  }

  if (v3 == 1)
  {
    v7 = 44.0;
  }

  else
  {
    v7 = 0.0;
  }

  [(CRLiOSInsertPageViewController *)self p_dotsPageControlHeight];
  v9 = v8;
  v10 = [(CRLiOSInsertPageViewController *)self view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  [(CRLiOSInsertPageViewController *)self preferredContentSize];
  v16 = fmax(v14, v15) - (v7 + Height + v9);
  v17 = [(CRLiOSInsertPageViewController *)self view];
  [v17 safeAreaInsets];
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
  v2 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerNavigationDataSource];
  v3 = [v2 supportsSearch];

  return v3;
}

- (void)resignFirstResponderIfNeeded
{
  v3 = [(CRLiOSInsertPageViewController *)self p_searchBar];
  v4 = [v3 isFirstResponder];

  if (v4)
  {
    v5 = [(CRLiOSInsertPageViewController *)self p_searchBar];
    [v5 resignFirstResponder];
  }
}

- (void)updateBottomViewVisibilityIfNeeded
{
  v3 = [(CRLiOSInsertPageViewController *)self view];
  [v3 layoutIfNeeded];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002066EC;
  v4[3] = &unk_10183AB38;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:0.300000012];
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v5 = a4;
  v6 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  v7 = [v6 insertPageViewController:self viewControllerBeforeViewController:v5];

  return v7;
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v5 = a4;
  v6 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  v7 = [v6 insertPageViewController:self viewControllerAfterViewController:v5];

  return v7;
}

- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count] != 1)
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
      v23 = v7;
      v24 = 2112;
      v25 = self;
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
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:667 isFatal:0 description:"Incorrectly transitioning to more than one view controller (%@) in %@.", v7, self];
  }

  v13 = [v6 view];
  [(CRLiOSInsertPageViewController *)self p_recursivelySetExclusiveTouchOnView:v13];
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v9 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  v10 = [v8 viewControllers];
  v11 = [v10 firstObject];
  v12 = [v9 insertPageViewController:self presentationIndexForViewController:v11];

  [(CRLiOSInsertPageViewController *)self setP_currentPageNumber:v12];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"AX_INSERT_PANEL_PAGE_SCROLLED" value:@"Page %1$lu of %2$lu" table:0];

  v15 = [(CRLiOSInsertPageViewController *)self p_pageControlType];
  if (v15 == 1)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100206CF4;
    v22[3] = &unk_101848E40;
    v22[4] = self;
    v23 = v8;
    v24 = v12;
    v25 = v6;
    [(CRLiOSInsertPageViewController *)self p_updateUIForChangeToPageNumber:v12 animated:1 completion:v22];
  }

  else if (!v15)
  {
    v16 = [(CRLiOSInsertPageViewController *)self p_dotsPageControl];
    [v16 setCurrentPage:v12];

    v17 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
    [v17 insertPageViewController:self didSelectPageNumber:v12];

    v18 = [v8 viewControllers];
    [(CRLiOSInsertPageViewController *)self p_setViewControllers:v18 shouldUpdatePageViewController:0 animated:0];

    if (v6)
    {
      v19 = UIAccessibilityPageScrolledNotification;
      v20 = [(CRLiOSInsertPageViewController *)self p_dotsPageControl];
      v21 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v14, v12 + 1, [v20 numberOfPages]);
      UIAccessibilityPostNotification(v19, v21);
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  if ([(CRLiOSInsertPageViewController *)self p_isShowingSearchBar])
  {
    [v4 bounds];
    [v4 setContentOffset:{CGRectGetWidth(v6), 0.0}];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v6 = a3;
  if ([(CRLiOSInsertPageViewController *)self p_isShowingSearchBar])
  {
    [v6 bounds];
    [v6 setContentOffset:{CGRectGetWidth(v8), 0.0}];
  }
}

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  v4 = [a3 text];
  v5 = [v4 length];

  if (!v5)
  {
    [(CRLiOSInsertPageViewController *)self p_setSearchOverlayViewHidden:0 animated:1];
  }

  return 1;
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100206FF4;
  v8[3] = &unk_10183AE28;
  v9 = v4;
  v10 = self;
  v5 = v8;
  v6 = v4;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, kCFRunLoopDefaultMode, v5);
  CFRunLoopWakeUp(Main);
}

- (BOOL)searchBar:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v5 = self;
  v6 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate:a3];
  LOBYTE(v5) = [v6 insertPageViewControllerShouldChangeSearchText:v5];

  return v5;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  v6 = [(CRLiOSInsertPageViewController *)self p_searchViewController];
  v7 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  [v7 insertPageViewController:self willSearchWithText:v5 inViewController:v6 searchViewController:v6];

  v8 = [(CRLiOSInsertPageViewController *)self p_selectedViewController];

  v9 = [v5 length];
  v10 = v6;
  if (v8 == v6)
  {
    if (!v9)
    {
      v12 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
      v10 = [v12 insertPageViewController:self viewControllerForPageAtIndex:{-[CRLiOSInsertPageViewController p_currentPageNumber](self, "p_currentPageNumber")}];

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
    v10 = v6;
    if (v6)
    {
      [(CRLiOSInsertPageViewController *)self p_setSearchOverlayViewHidden:1 animated:1];
      v15 = v6;
      v11 = [NSArray arrayWithObjects:&v15 count:1];
      [(CRLiOSInsertPageViewController *)self setViewControllers:v11 animated:0];

      v10 = v6;
    }
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  if (!self->_shouldIgnoreCancelBecauseOfWriting)
  {
    [(CRLiOSInsertPageViewController *)self setP_didExplicitlyCancelSearch:1];
    [(CRLiOSInsertPageViewController *)self p_endSearching];

    [(CRLiOSInsertPageViewController *)self setP_didExplicitlyCancelSearch:0];
  }
}

- (void)p_setSearchOverlayViewHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(CRLiOSInsertPageViewController *)self p_searchOverlayView];
  if (v6)
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

  if (v5)
  {
    v12 = 0.150000006;
  }

  else
  {
    v12 = 0.0;
  }

  v10[2] = v11;
  v10[3] = &unk_10183AB38;
  v13 = v9;
  v10[4] = v13;
  [UIView animateWithDuration:v10 animations:v8 completion:v12];
}

- (void)p_setSearchBarHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if ([(CRLiOSInsertPageViewController *)self supportsSearch])
  {
    [(CRLiOSInsertPageViewController *)self setP_isShowingSearchBar:!v6];
    v9 = [(CRLiOSInsertPageViewController *)self p_searchBar];
    if (!v6)
    {
      v10 = [(CRLiOSInsertPageViewController *)self view];
      [v10 bringSubviewToFront:v9];
    }

    if (v5)
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
    v19 = v6;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100207688;
    v13[3] = &unk_101848E68;
    v17 = v6;
    v14 = v9;
    v15 = self;
    v16 = v8;
    v12 = v9;
    [UIView animateWithDuration:v18 animations:v13 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 1);
  }
}

- (void)p_beginSearchingAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  [v5 insertPageViewControllerWillBeginSearch:self];

  [(CRLiOSInsertPageViewController *)self p_setSearchBarHidden:0 animated:v3 completion:0];
  v6 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  v7 = [v6 insertPageViewControllerViewControllerForSearch:self];
  [(CRLiOSInsertPageViewController *)self setP_searchViewController:v7];

  v8 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  [v8 insertPageViewControllerDidBeginSearch:self];
}

- (void)p_endSearching
{
  [(CRLiOSInsertPageViewController *)self p_clearSearching];
  v3 = [(CRLiOSInsertPageViewController *)self p_currentPageNumber];

  [(CRLiOSInsertPageViewController *)self p_selectPageAtIndex:v3];
}

- (void)p_clearSearching
{
  v3 = [(CRLiOSInsertPageViewController *)self p_didExplicitlyCancelSearch];
  v4 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  [v4 insertPageViewControllerWillEndSearch:self cancelledExplicitly:v3];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100207970;
  v6[3] = &unk_101848E90;
  v6[4] = self;
  v7 = v3;
  [(CRLiOSInsertPageViewController *)self p_setSearchOverlayViewHidden:1 animated:1 completion:v6];
  v5 = [(CRLiOSInsertPageViewController *)self p_searchBar];
  [v5 setText:&stru_1018BCA28];
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

- (void)p_keyboardWillShow:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSInsertPageViewController *)self view];
  [v5 layoutIfNeeded];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100207BC0;
  v6[3] = &unk_10183AB38;
  v6[4] = self;
  [UIView crl_animateWithKeyboardNotification:v4 animations:v6];
}

- (void)p_keyboardWillHide:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSInsertPageViewController *)self view];
  [v5 layoutIfNeeded];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100207CC8;
  v6[3] = &unk_10183AB38;
  v6[4] = self;
  [UIView crl_animateWithKeyboardNotification:v4 animations:v6];
}

- (void)p_updateBottomConstraintsIfNeeded
{
  [(CRLiOSInsertPageViewController *)self p_dotsPageControlHeight];
  v4 = v3;
  v5 = [(CRLiOSInsertPageViewController *)self presentingViewController];
  v6 = [v5 traitCollection];
  v7 = [v6 crl_isCompactWidth];

  if (v7)
  {
    v8 = +[CRLiOSKeyboardMonitor sharedKeyboardMonitor];
    [v8 onScreenHeight];
    v10 = -v9;
    v11 = [(CRLiOSInsertPageViewController *)self p_bottomLayoutConstraintAboveKeyboard];
    [v11 setConstant:v10];
  }

  else
  {
    v8 = [(CRLiOSInsertPageViewController *)self p_bottomLayoutConstraintAboveKeyboard];
    [v8 setConstant:0.0];
  }

  v12 = [(CRLiOSInsertPageViewController *)self view];
  [v12 safeAreaInsets];
  v14 = v4 + v13;

  v15 = [(CRLiOSInsertPageViewController *)self p_dotsPageControlHeightConstraint];
  [v15 setConstant:v14];
}

- (void)p_setupViews
{
  v3 = [(CRLiOSInsertPageViewController *)self view];
  v4 = [(CRLiOSInsertPageViewController *)self p_pageViewController];
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v5 = [v4 view];
  v6 = [v5 subviews];

  v7 = [v6 countByEnumeratingWithState:&v184 objects:v188 count:16];
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
          objc_enumerationMutation(v6);
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

      v8 = [v6 countByEnumeratingWithState:&v184 objects:v188 count:16];
    }

    while (v8);
  }

  [v4 setDataSource:self];
  [v4 setDelegate:self];
  [(CRLiOSInsertPageViewController *)self addChildViewController:v4];
  [v4 didMoveToParentViewController:self];
  v13 = [v4 view];
  [v3 addSubview:v13];

  v14 = [(CRLiOSInsertPageViewController *)self supportsSearch];
  v177 = v3;
  v179 = v4;
  if (v14)
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Search" value:0 table:0];

    v17 = [CRLiOSInsertPageViewControllerSearchBar alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v21 = [(CRLiOSInsertPageViewControllerSearchBar *)v17 initWithFrame:CGRectZero.origin.x, y, width, height];
    [(CRLiOSInsertPageViewControllerSearchBar *)v21 setDelegate:self];
    [(CRLiOSInsertPageViewControllerSearchBar *)v21 setSearchBarStyle:2];
    [(CRLiOSInsertPageViewControllerSearchBar *)v21 setShowsCancelButton:1];
    [(CRLiOSInsertPageViewControllerSearchBar *)v21 setPlaceholder:v16];
    [(CRLiOSInsertPageViewControllerSearchBar *)v21 setAlpha:0.0];
    [v3 addSubview:v21];
    [(CRLiOSInsertPageViewController *)self setP_searchBar:v21];
    v22 = [UIImage systemImageNamed:@"magnifyingglass"];
    v175 = v21;
    if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
    {
      v23 = +[UIColor labelColor];
      v24 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v23];
      v25 = [v22 imageByApplyingSymbolConfiguration:v24];
      v26 = [UIImageSymbolConfiguration configurationWithWeight:5];
      v27 = [v25 imageByApplyingSymbolConfiguration:v26];

      v22 = v27;
      v3 = v177;
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

    [v3 addSubview:v28];
    [(CRLiOSInsertPageViewController *)self setP_searchButton:v28];

    v4 = v179;
  }

  else
  {
    v28 = 0;
    v175 = 0;
  }

  v38 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerNavigationDataSource];
  v39 = [v38 showsSubpageNavigator];

  if (v39)
  {
    v40 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerNavigationDataSource];
    v41 = [v40 subpageNavigatorItems];

    v42 = [[CRLiOSMultipaneSegmentedControl alloc] initWithItems:v41];
    [(CRLiOSMultipaneSegmentedControl *)v42 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CRLiOSMultipaneSegmentedControl *)v42 setBackdropHidden:1];
    [(CRLiOSMultipaneSegmentedControl *)v42 setSegmentHuggingEnabled:1];
    [(CRLiOSMultipaneSegmentedControl *)v42 setAllEdgeInsets:0.0, 16.0, 0.0, 16.0];
    v43 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
    -[CRLiOSMultipaneSegmentedControl setSelectedSegmentIndex:](v42, "setSelectedSegmentIndex:", [v43 selectedSubpageIndexForInsertPageViewController:self]);

    [(CRLiOSMultipaneSegmentedControl *)v42 setExclusiveTouch:1];
    [(CRLiOSMultipaneSegmentedControl *)v42 addTarget:self action:"p_subpageNavigatorDidChangeSelectedSegment:" forControlEvents:4096];
    v182 = v42;
    [(CRLiOSInsertPageViewController *)self setP_subpageNavigator:v42];
  }

  else
  {
    v182 = 0;
  }

  v44 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  v45 = [(CRLiOSInsertPageViewController *)self p_selectedViewController];
  v46 = [v44 insertPageViewController:self presentationIndexForViewController:v45];

  [(CRLiOSInsertPageViewController *)self setP_currentPageNumber:v46];
  v47 = [(CRLiOSInsertPageViewController *)self p_pageControlType];
  if (!v47)
  {
    v77 = +[UIColor clearColor];
    v78 = [UIView alloc];
    x = CGRectZero.origin.x;
    v53 = CGRectZero.origin.y;
    v54 = CGRectZero.size.width;
    v55 = CGRectZero.size.height;
    v79 = [v78 initWithFrame:{CGRectZero.origin.x, v53, v54, v55}];
    [v79 setBackgroundColor:v77];
    [v3 addSubview:v79];
    v80 = [[UIPageControl alloc] initWithFrame:{CGRectZero.origin.x, v53, v54, v55}];
    [v79 addSubview:v80];
    [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
    v81 = [v80 topAnchor];
    v82 = [v79 topAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];
    [v83 setActive:1];

    v84 = [v80 leadingAnchor];
    v85 = [v79 leadingAnchor];
    v86 = [v84 constraintEqualToAnchor:v85];
    [v86 setActive:1];

    v87 = [v80 trailingAnchor];
    v88 = [v79 trailingAnchor];
    v89 = [v87 constraintEqualToAnchor:v88];
    [v89 setActive:1];

    v3 = v177;
    v90 = [v80 heightAnchor];
    v91 = [v90 constraintEqualToConstant:44.0];
    [v91 setActive:1];

    v4 = v179;
    v92 = [UIColor colorWithWhite:0.5 alpha:1.0];
    [v80 setPageIndicatorTintColor:v92];

    v93 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
    [v80 setNumberOfPages:{objc_msgSend(v93, "presentationCountForInsertPageViewController:", self)}];

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

  if (v47 != 1)
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

  v48 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerNavigationDataSource];
  v49 = [v48 pageControlTitles];

  v50 = [[CRLiOSInsertPageViewControllerTitlesPageControl alloc] initWithTitles:v49];
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
  v59 = [(CRLiOSTitlesPageControlScrollView *)v56 heightAnchor];
  v60 = [v59 constraintEqualToConstant:44.0];
  [v60 setActive:1];

  v61 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)v50 topAnchor];
  v62 = [(CRLiOSTitlesPageControlScrollView *)v56 topAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];
  [v63 setActive:1];

  v64 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)v50 leadingAnchor];
  v65 = [(CRLiOSTitlesPageControlScrollView *)v56 leadingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];
  [v66 setActive:1];

  v67 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)v50 trailingAnchor];
  v68 = [(CRLiOSTitlesPageControlScrollView *)v56 trailingAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];
  [v69 setActive:1];

  v3 = v177;
  v176 = v50;
  v70 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)v50 heightAnchor];
  v71 = [v70 constraintEqualToConstant:44.0];
  [v71 setActive:1];

  v181 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, v53, v54, v55}];
  [v177 addSubview:?];
  if (v14)
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
    v4 = v179;
    [(CRLiOSInsertPageViewControllerFadeView *)v95 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v95 = 0;
    v4 = v179;
  }

  v96 = v182;
  [(CRLiOSInsertPageViewController *)self setP_titlesPageControl:v176];
  [(CRLiOSInsertPageViewController *)self setP_titlesPageControlBottomBorder:v181];
  [(CRLiOSInsertPageViewController *)self setP_titlesPageControlScrollView:v56];

  v79 = 0;
LABEL_36:
  v97 = [[UIStackView alloc] initWithFrame:{x, v53, v54, v55}];
  [v97 setAxis:1];
  [v3 addSubview:v97];
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
      v99 = [v28 topAnchor];
      v100 = [v98 topAnchor];
      v101 = [v99 constraintEqualToAnchor:v100];
      [v101 setActive:1];

      v102 = [v28 leadingAnchor];
      v103 = [v98 safeAreaLayoutGuide];
      v104 = [v103 leadingAnchor];
      v105 = [v102 constraintEqualToAnchor:v104];
      [v105 setActive:1];

      v106 = [v28 bottomAnchor];
      v107 = [v98 bottomAnchor];
      v108 = [v106 constraintEqualToAnchor:v107];
      [v108 setActive:1];

      v109 = [v28 widthAnchor];
      v110 = [v109 constraintEqualToConstant:40.0];
      [v110 setActive:1];

      [v98 addSubview:v183];
      v111 = [[UIView alloc] initWithFrame:{x, v53, v54, v55}];
      [v111 setTranslatesAutoresizingMaskIntoConstraints:0];
      v112 = +[UIColor clearColor];
      [v111 setBackgroundColor:v112];

      [v98 addSubview:v111];
      v113 = [v111 topAnchor];
      v114 = [v98 topAnchor];
      v115 = [v113 constraintEqualToAnchor:v114];
      [v115 setActive:1];

      v116 = [v111 leadingAnchor];
      v117 = [v98 leadingAnchor];
      v118 = [v116 constraintEqualToAnchor:v117];
      [v118 setActive:1];

      v119 = [v111 bottomAnchor];
      v120 = [v98 bottomAnchor];
      v121 = [v119 constraintEqualToAnchor:v120];
      [v121 setActive:1];

      v122 = [v111 trailingAnchor];
      v123 = [(CRLiOSInsertPageViewControllerFadeView *)v183 leadingAnchor];
      v124 = [v122 constraintEqualToAnchor:v123];
      [v124 setActive:1];

      v125 = [(CRLiOSInsertPageViewControllerFadeView *)v183 topAnchor];
      v126 = [v98 topAnchor];
      v127 = [v125 constraintEqualToAnchor:v126];
      [v127 setActive:1];

      v128 = [(CRLiOSInsertPageViewControllerFadeView *)v183 trailingAnchor];
      v129 = [v28 trailingAnchor];
      v130 = [v128 constraintEqualToAnchor:v129];
      [v130 setActive:1];

      v131 = [(CRLiOSInsertPageViewControllerFadeView *)v183 bottomAnchor];
      v132 = [v98 bottomAnchor];
      v133 = [v131 constraintEqualToAnchor:v132];
      [v133 setActive:1];

      v134 = [(CRLiOSInsertPageViewControllerFadeView *)v183 widthAnchor];
      v135 = [v134 constraintEqualToConstant:8.0];
      [v135 setActive:1];

      [(CRLiOSInsertPageViewController *)self setP_searchButtonSpacerView:v111];
    }

    else
    {
      v111 = 0;
    }

    [v98 addSubview:v56];
    v136 = [(CRLiOSTitlesPageControlScrollView *)v56 topAnchor];
    v137 = [v98 topAnchor];
    v138 = [v136 constraintEqualToAnchor:v137];
    [v138 setActive:1];

    v139 = [(CRLiOSTitlesPageControlScrollView *)v56 bottomAnchor];
    v140 = [v98 bottomAnchor];
    v141 = [v139 constraintEqualToAnchor:v140];
    [v141 setActive:1];

    v142 = [(CRLiOSTitlesPageControlScrollView *)v56 trailingAnchor];
    v143 = [v98 trailingAnchor];
    v144 = [v142 constraintEqualToAnchor:v143];
    [v144 setActive:1];

    v145 = [(CRLiOSTitlesPageControlScrollView *)v56 leadingAnchor];
    if (v28)
    {
      v146 = [v28 trailingAnchor];
      v147 = [v145 constraintEqualToAnchor:v146];
      [v147 setActive:1];

      [v98 bringSubviewToFront:v111];
      v95 = v183;
      [v98 bringSubviewToFront:v183];
      [v98 bringSubviewToFront:v28];
    }

    else
    {
      v148 = [v98 safeAreaLayoutGuide];
      v149 = [v148 leadingAnchor];
      v150 = [v145 constraintEqualToAnchor:v149];
      [v150 setActive:1];

      v79 = v180;
      v95 = v183;
    }

    [v178 addArrangedSubview:v98];
    [v178 addArrangedSubview:v181];

    v97 = v178;
    v3 = v177;
    v4 = v179;
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
    v152 = [v151 heightAnchor];
    v153 = [v152 constraintEqualToConstant:44.0];
    [v153 setActive:1];

    v154 = [v151 topAnchor];
    v155 = [(CRLiOSMultipaneSegmentedControl *)v96 topAnchor];
    v156 = [v154 constraintEqualToAnchor:v155 constant:-8.0];
    [v156 setActive:1];

    v157 = [v151 bottomAnchor];
    v158 = [(CRLiOSMultipaneSegmentedControl *)v96 bottomAnchor];
    v159 = [v157 constraintEqualToAnchor:v158 constant:8.0];
    [v159 setActive:1];

    v160 = [v151 widthAnchor];
    v161 = [(CRLiOSMultipaneSegmentedControl *)v96 widthAnchor];
    v162 = [v160 constraintLessThanOrEqualToAnchor:v161 constant:64.0];
    [v162 setActive:1];

    v163 = [v151 widthAnchor];
    v164 = [(CRLiOSMultipaneSegmentedControl *)v96 widthAnchor];
    v165 = [v163 constraintGreaterThanOrEqualToAnchor:v164 constant:24.0];
    [v165 setActive:1];

    v166 = [v151 centerXAnchor];
    v167 = [(CRLiOSMultipaneSegmentedControl *)v96 centerXAnchor];
    v168 = [v166 constraintEqualToAnchor:v167];
    [v168 setActive:1];

    v97 = v178;
    v79 = v180;

    v95 = v183;
    [v178 addArrangedSubview:v151];
  }

  if (v95)
  {
    [v3 bringSubviewToFront:v95];
  }

  v169 = [v4 view];
  [(CRLiOSInsertPageViewController *)self p_setupConstraintsWithTopLevelView:v3 searchBar:v175 navigatorStackView:v97 pageViewControllerView:v169 dotsPageControlWrapper:v79];

  [(CRLiOSInsertPageViewController *)self p_updateTitlesPageControlAndBottomViewColorsInDarkUI:[(CRLiOSInsertPageViewController *)self crl_isInDarkMode]];
  v170 = [(CRLiOSInsertPageViewController *)self p_searchOverlayView];
  if (!v170)
  {
    v170 = [[UIView alloc] initWithFrame:{x, v53, v54, v55}];
    v171 = [UIColor colorWithWhite:0.0 alpha:1.0];
    [v170 setBackgroundColor:v171];

    [v170 setAlpha:0.0];
    [v170 setTranslatesAutoresizingMaskIntoConstraints:0];
    v172 = [[CRLiOSInsertPageViewControllerOverlayGestureRecognizer alloc] initWithTarget:self action:"p_searchOverlayTapped:"];
    [v170 addGestureRecognizer:v172];
    [(CRLiOSInsertPageViewController *)self setP_searchOverlayView:v170];
    v173 = [(CRLiOSInsertPageViewController *)self p_selectedViewController];
    v174 = [v173 view];
    [(CRLiOSInsertPageViewController *)self p_moveOverlayView:v170 toSelectedViewControllerView:v174];

    v97 = v178;
    v79 = v180;

    v95 = v183;
  }
}

- (void)p_moveOverlayView:(id)a3 toSelectedViewControllerView:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 removeFromSuperview];
  [v5 addSubview:v6];
  v7 = [v6 topAnchor];
  v8 = [v5 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [v6 trailingAnchor];
  v11 = [v5 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [v6 bottomAnchor];
  v14 = [v5 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v18 = [v6 leadingAnchor];

  v16 = [v5 leadingAnchor];

  v17 = [v18 constraintEqualToAnchor:v16];
  [v17 setActive:1];
}

- (void)p_dotPageControlValueChanged
{
  v3 = [(CRLiOSInsertPageViewController *)self p_currentPageNumber];
  v4 = [(CRLiOSInsertPageViewController *)self p_dotsPageControl];
  v5 = [v4 currentPage];

  v6 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  v7 = [v6 insertPageViewController:self viewControllerForPageAtIndex:v5];

  v16 = v7;
  v8 = [NSArray arrayWithObjects:&v16 count:1];
  v9 = [(CRLiOSInsertPageViewController *)self p_pageViewController];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1002096EC;
  v13 = &unk_101848EB8;
  v14 = self;
  v15 = v5;
  [v9 setViewControllers:v8 direction:v5 < v3 animated:1 completion:&v10];
  [(CRLiOSInsertPageViewController *)self p_setViewControllers:v8 shouldUpdatePageViewController:0 animated:0, v10, v11, v12, v13];
}

- (void)p_setupConstraintsWithTopLevelView:(id)a3 searchBar:(id)a4 navigatorStackView:(id)a5 pageViewControllerView:(id)a6 dotsPageControlWrapper:(id)a7
{
  v65 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [v12 leadingAnchor];
    v17 = [v65 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v18 setActive:1];

    v19 = [v12 trailingAnchor];
    v20 = [v65 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [v12 heightAnchor];
    v23 = [v22 constraintEqualToConstant:44.0];
    [v23 setActive:1];

    v24 = [v12 topAnchor];
    v25 = [v65 topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v26 setActive:1];
  }

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [v14 leadingAnchor];
  v28 = [v65 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v29 setActive:1];

  v30 = [v14 trailingAnchor];
  v31 = [v65 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [v32 setActive:1];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [v13 topAnchor];
  v34 = [v65 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v35 setActive:1];

  v36 = [v13 leadingAnchor];
  v37 = [v65 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  [v38 setActive:1];

  v39 = [v13 trailingAnchor];
  v40 = [v65 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  [v41 setActive:1];

  v42 = [v13 bottomAnchor];
  v43 = [v14 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  v45 = [v13 arrangedSubviews];
  v46 = [v45 count];

  v47 = [v13 heightAnchor];
  v48 = v47;
  v49 = 44.0;
  if (!v46)
  {
    v49 = 0.0;
  }

  v50 = [v47 constraintEqualToConstant:v49];
  [v50 setActive:1];

  if (v15)
  {
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v51 = [v15 leadingAnchor];
    v52 = [v65 leadingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];
    [v53 setActive:1];

    v54 = [v15 trailingAnchor];
    v55 = [v65 trailingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];
    [v56 setActive:1];

    v57 = [v15 heightAnchor];
    [(CRLiOSInsertPageViewController *)self p_dotsPageControlHeight];
    v58 = [v57 constraintEqualToConstant:?];

    [v58 setActive:1];
    [(CRLiOSInsertPageViewController *)self setP_dotsPageControlHeightConstraint:v58];
    v59 = [v15 bottomAnchor];
    v60 = [v65 bottomAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    v62 = [v14 bottomAnchor];
    v63 = [v15 topAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];
    [v64 setActive:1];
  }

  else
  {
    v58 = [v14 bottomAnchor];
    v62 = [v65 bottomAnchor];
    v61 = [v58 constraintEqualToAnchor:v62];
  }

  [v61 setActive:1];
  [(CRLiOSInsertPageViewController *)self setP_bottomLayoutConstraintAboveKeyboard:v61];
  if (v15)
  {
    [(CRLiOSInsertPageViewController *)self p_updateBottomConstraintsIfNeeded];
  }
}

- (void)p_subpageNavigatorDidChangeSelectedSegment:(id)a3
{
  v4 = a3;
  v6 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  v5 = [v4 selectedSegmentIndex];

  [v6 insertPageViewController:self didSelectSubpageAtIndex:v5];
}

- (unint64_t)p_pageControlType
{
  v2 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerNavigationDataSource];
  v3 = [v2 pageControlType];

  return v3;
}

- (double)p_dotsPageControlHeight
{
  v2 = [(CRLiOSInsertPageViewController *)self p_pageControlType];
  result = 0.0;
  if (!v2)
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

- (void)p_titlesPageControlValueChanged:(id)a3
{
  v4 = [a3 selectedTitleIndex];

  [(CRLiOSInsertPageViewController *)self p_selectPageAtIndex:v4];
}

- (void)p_selectPageAtIndex:(unint64_t)a3 animated:(BOOL)a4 scrollToBottom:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [(CRLiOSInsertPageViewController *)self setP_currentPageNumber:?];
  [(CRLiOSInsertPageViewController *)self setP_shouldScrollToBottomOfPage:v5];
  v9 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDataSource];
  v10 = [v9 insertPageViewController:self viewControllerForPageAtIndex:a3];

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
  v18 = a3;
  v19 = v6;
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
    [(CRLiOSInsertPageViewController *)self p_setSearchBarHidden:1 animated:v6 completion:v14];
  }

  else
  {
    (v13[2])(v13);
  }
}

- (void)p_updateUIForChangeToPageNumber:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v32 = a5;
  v8 = [(CRLiOSInsertPageViewController *)self view];
  [v8 layoutIfNeeded];

  v9 = [(CRLiOSInsertPageViewController *)self p_titlesPageControlScrollView];
  v10 = [(CRLiOSInsertPageViewController *)self p_titlesPageControl];
  [v10 setSelectedTitleIndex:a3];
  [v9 frame];
  Width = CGRectGetWidth(v34);
  if (Width != 0.0)
  {
    v12 = Width;
    v13 = [v10 selectedButton];
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v35.origin.x = v15;
    v35.origin.y = v17;
    v35.size.width = v19;
    v35.size.height = v21;
    v22 = CGRectGetMidX(v35) + v12 * -0.5;
    [v9 contentSize];
    v24 = v23;
    v25 = sub_1004A48FC();
    v26 = v24 - v12;
    v27 = 0.0;
    v28 = 14.0;
    if (a3 != 1)
    {
      v28 = 0.0;
    }

    v29 = fmin(fmax(v22, v28), v26);
    v30 = fmax(v22, 0.0);
    if (a3 == 1)
    {
      v27 = -14.0;
    }

    v31 = fmin(v30, v27 + v26);
    if (!v25)
    {
      v31 = v29;
    }

    [v9 setContentOffset:v5 animated:{v31, 0.0}];
    if (v32)
    {
      v32[2](v32, 1);
    }
  }
}

- (id)p_selectedViewController
{
  v2 = [(CRLiOSInsertPageViewController *)self viewControllers];
  v3 = [v2 firstObject];

  return v3;
}

- (void)p_restoreViewState
{
  v3 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
  v4 = [v3 insertPageViewControllerShouldAppearInSearchMode:self];

  if (v4)
  {
    [(CRLiOSInsertPageViewController *)self p_beginSearchingAnimated:0];
    v5 = [(CRLiOSInsertPageViewController *)self insertPageViewControllerDelegate];
    v8 = [v5 insertPageViewControllerDefaultSearchTerm:self];

    v6 = [(CRLiOSInsertPageViewController *)self p_searchBar];
    [v6 setText:v8];

    v7 = [(CRLiOSInsertPageViewController *)self p_searchBar];
    [(CRLiOSInsertPageViewController *)self searchBar:v7 textDidChange:v8];
  }
}

- (BOOL)crl_isInDarkMode
{
  v2 = +[UIScreen mainScreen];
  v3 = [v2 traitCollection];
  v4 = [v3 crl_isUserInterfaceStyleDark];

  return v4;
}

- (void)p_updateTitlesPageControlAndBottomViewColorsInDarkUI:(BOOL)a3
{
  v4 = [(CRLiOSInsertPageViewController *)self p_searchBarStyleInDarkUI:0];
  v5 = [(CRLiOSInsertPageViewController *)self p_searchBar];
  [v5 setBarStyle:v4];

  v6 = +[UIColor clearColor];
  v7 = [(CRLiOSInsertPageViewController *)self p_searchBar];
  [v7 setBackgroundColor:v6];

  v8 = +[UIColor clearColor];
  v9 = [(CRLiOSInsertPageViewController *)self p_searchButton];
  [v9 setBackgroundColor:v8];

  v11 = +[UIColor clearColor];
  v10 = [(CRLiOSInsertPageViewController *)self p_searchButtonSpacerView];
  [v10 setBackgroundColor:v11];
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