@interface CarKeyboardModeController
- (CarKeyboardModeController)initWithRequestedInteractionModel:(unint64_t)a3 resultsProvider:(id)a4;
- (ChromeViewController)chromeViewController;
- (id)fullscreenViewController;
- (id)fullscreenViewControllerDismissalTransition;
- (id)fullscreenViewControllerPresentationTransition;
- (void)_forciblyHideTouchKeyboard;
- (void)_forciblyShowTouchKeyboard;
- (void)_ppt_selectKeyboardSearchButton;
- (void)_setPlaceholder;
- (void)_toggleTouchKeyboard;
- (void)_updatePreferredInputViewHeightWithPreferredMinimumRowHeight:(double)a3;
- (void)didDismissSearchController:(id)a3;
- (void)enumerateKeyboardSubviewsWithBlock:(id)a3;
- (void)pptEndEditing;
- (void)pptHandleTextChange:(id)a3;
- (void)pptInvokeSearch:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)wantsKeyboardVisible:(BOOL)a3;
@end

@implementation CarKeyboardModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)pptInvokeSearch:(id)a3
{
  v4 = a3;
  v5 = [(CarKeyboardModeController *)self resultsProvider];
  [v5 handleSearchButtonPressedWithText:v4];
}

- (void)pptEndEditing
{
  v3 = [(CarKeyboardModeController *)self searchController];
  v2 = [v3 searchBar];
  [v2 resignFirstResponder];
}

- (void)pptHandleTextChange:(id)a3
{
  v4 = a3;
  v6 = [(CarKeyboardModeController *)self searchController];
  v5 = [v6 searchBar];
  [v5 setText:v4];
}

- (void)_ppt_selectKeyboardSearchButton
{
  v3 = [(CarKeyboardModeController *)self searchController];
  v4 = [v3 searchBar];
  v5 = [v4 text];
  v6 = [v5 length];

  if (v6)
  {
    v10 = [(CarKeyboardModeController *)self resultsProvider];
    v7 = [(CarKeyboardModeController *)self searchController];
    v8 = [v7 searchBar];
    v9 = [v8 text];
    [v10 handleSearchButtonPressedWithText:v9];
  }
}

- (void)didDismissSearchController:(id)a3
{
  v4 = +[CarChromeModeCoordinator sharedInstance];
  [v4 popFromContext:self];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  v6 = [(CarKeyboardModeController *)self resultsProvider];
  [v6 handleSearchTextDidChange:v5];
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = [(CarKeyboardModeController *)self chromeViewController];
  [v4 captureUserAction:2002];

  v5 = [(CarKeyboardModeController *)self resultsProvider];
  [v5 handleCancelButtonPressed];
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  v6 = [(CarKeyboardModeController *)self resultsProvider];
  v5 = [v4 text];

  [v6 handleSearchButtonPressedWithText:v5];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = [(CarKeyboardModeController *)self resultsProvider];
  [v5 updateSearchResultsForSearchController:v4];
}

- (id)fullscreenViewControllerDismissalTransition
{
  v2 = objc_alloc_init(CarKeyboardModeTransition);

  return v2;
}

- (id)fullscreenViewControllerPresentationTransition
{
  v2 = objc_alloc_init(CarKeyboardModeTransition);

  return v2;
}

- (id)fullscreenViewController
{
  wrapperNavigationController = self->_wrapperNavigationController;
  if (!wrapperNavigationController)
  {
    v4 = [[UINavigationController alloc] initWithRootViewController:self];
    v5 = self->_wrapperNavigationController;
    self->_wrapperNavigationController = v4;

    [(UINavigationController *)self->_wrapperNavigationController loadViewIfNeeded];
    wrapperNavigationController = self->_wrapperNavigationController;
  }

  return wrapperNavigationController;
}

- (void)enumerateKeyboardSubviewsWithBlock:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(CarKeyboardModeController *)self searchController];
  v6 = [v5 view];
  v7 = [v6 subviews];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [(CarKeyboardModeController *)self resultsProvider];
        v14 = [v13 view];
        v15 = [v14 isDescendantOfView:v12];

        if ((v15 & 1) == 0)
        {
          v16 = [v12 backgroundColor];

          if (v16)
          {
            v4[2](v4, v12);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_forciblyShowTouchKeyboard
{
  if ([(NSHashTable *)self->_hiddenKeyboardViews count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_hiddenKeyboardViews;
    v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v11 + 1) + 8 * v7) setHidden:{0, v11}];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    [(NSHashTable *)self->_hiddenKeyboardViews removeAllObjects];
    v8 = [(CarKeyboardModeController *)self searchController];
    v9 = [v8 searchBar];
    [v9 becomeFirstResponder];

    v10 = [(CarKeyboardModeController *)self resultsProvider];
    [v10 didUpdateKeyboardVisibility:1];
  }
}

- (void)_forciblyHideTouchKeyboard
{
  if (GEOConfigGetBOOL() && self->_requestedInteractionModel == 1)
  {
    if (!self->_hiddenKeyboardViews)
    {
      v3 = +[NSHashTable weakObjectsHashTable];
      hiddenKeyboardViews = self->_hiddenKeyboardViews;
      self->_hiddenKeyboardViews = v3;
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1006AFC40;
    v8[3] = &unk_101626268;
    v8[4] = self;
    [(CarKeyboardModeController *)self enumerateKeyboardSubviewsWithBlock:v8];
    v5 = [(CarKeyboardModeController *)self searchController];
    v6 = [v5 searchBar];
    [v6 resignFirstResponder];

    v7 = [(CarKeyboardModeController *)self resultsProvider];
    [v7 didUpdateKeyboardVisibility:0];
  }
}

- (void)wantsKeyboardVisible:(BOOL)a3
{
  if (a3)
  {
    [(CarKeyboardModeController *)self _forciblyShowTouchKeyboard];
  }

  else
  {
    [(CarKeyboardModeController *)self _forciblyHideTouchKeyboard];
  }
}

- (void)_toggleTouchKeyboard
{
  if ([(NSHashTable *)self->_hiddenKeyboardViews count])
  {

    [(CarKeyboardModeController *)self _forciblyShowTouchKeyboard];
  }

  else
  {

    [(CarKeyboardModeController *)self _forciblyHideTouchKeyboard];
  }
}

- (void)_updatePreferredInputViewHeightWithPreferredMinimumRowHeight:(double)a3
{
  v5 = [(CarKeyboardModeController *)self view];
  [v5 bounds];
  Height = CGRectGetHeight(v21);

  v7 = [(UINavigationController *)self->_wrapperNavigationController navigationBar];
  [v7 frame];
  v8 = CGRectGetHeight(v22);

  v9 = Height - fmax(a3, 44.0) - v8;
  v10 = [(CarKeyboardModeController *)self searchController];
  v11 = [v10 searchBar];
  v12 = [v11 searchTextField];
  v13 = [v12 textInputTraits];
  [v13 preferredInputViewHeight];
  v15 = v14;

  if (vabdd_f64(v15, v9) > 2.22044605e-16)
  {
    v19 = [(CarKeyboardModeController *)self searchController];
    v16 = [v19 searchBar];
    v17 = [v16 searchTextField];
    v18 = [v17 textInputTraits];
    [v18 setPreferredInputViewHeight:v9];
  }
}

- (void)_setPlaceholder
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  v4 = [v3 isUsingOfflineMaps];

  v5 = +[NSBundle mainBundle];
  v10 = v5;
  if (v4)
  {
    v6 = @"[Offline CarPlay Search] Search Offline Maps";
  }

  else
  {
    v6 = @"[CarPlay Search] Search";
  }

  v7 = [v5 localizedStringForKey:v6 value:@"localized string not found" table:0];
  v8 = [(CarKeyboardModeController *)self searchController];
  v9 = [v8 searchBar];
  [v9 setPlaceholder:v7];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CarKeyboardModeController;
  [(CarKeyboardModeController *)&v7 viewDidAppear:a3];
  v4 = [(CarKeyboardModeController *)self searchController];
  v5 = [v4 searchBar];
  [v5 becomeFirstResponder];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"PPTTest_CarKeyboardModeController_DidDisplayKeyboard" object:0 userInfo:0];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = CarKeyboardModeController;
  [(CarKeyboardModeController *)&v12 viewIsAppearing:a3];
  if (GEOConfigGetBOOL())
  {
    v4 = +[CarFocusableButton button];
    [v4 setShowsEllipticalFocusIndicator:1];
    v5 = [UIImage systemImageNamed:@"list.bullet.circle.fill"];
    [v4 setImage:v5 forState:0];

    [v4 addTarget:self action:"_toggleTouchKeyboard" forControlEvents:64];
    v6 = [(CarKeyboardModeController *)self searchController];
    v7 = [v6 searchBar];
    v8 = [v7 searchTextField];
    [v8 setRightView:v4];

    v9 = [(CarKeyboardModeController *)self searchController];
    v10 = [v9 searchBar];
    v11 = [v10 searchTextField];
    [v11 setRightViewMode:3];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CarKeyboardModeController;
  [(CarKeyboardModeController *)&v7 viewWillAppear:a3];
  v4 = [(CarKeyboardModeController *)self resultsProvider];
  [v4 preferredMinimumRowHeight];
  [(CarKeyboardModeController *)self _updatePreferredInputViewHeightWithPreferredMinimumRowHeight:?];

  v5 = MapsSuggestionsResourceDepotForMapsProcess();
  v6 = [v5 oneInsights];
  [v6 preload];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = CarKeyboardModeController;
  [(CarKeyboardModeController *)&v17 viewDidLoad];
  [(CarKeyboardModeController *)self setDefinesPresentationContext:1];
  v3 = [(CarKeyboardModeController *)self searchController];
  v4 = [v3 searchBar];
  [v4 setDelegate:self];

  v5 = [(CarKeyboardModeController *)self searchController];
  v6 = [v5 searchBar];
  [v6 setShowsCancelButton:1];

  v7 = [(CarKeyboardModeController *)self searchController];
  v8 = [v7 searchBar];
  v9 = [(CarKeyboardModeController *)self navigationItem];
  [v9 setTitleView:v8];

  v10 = [(CarKeyboardModeController *)self navigationItem];
  [v10 setHidesBackButton:1];

  [(CarKeyboardModeController *)self setExtendedLayoutIncludesOpaqueBars:1];
  [(CarKeyboardModeController *)self setEdgesForExtendedLayout:1];
  v11 = [(CarKeyboardModeController *)self view];
  [v11 setAccessibilityIdentifier:@"CarKeyboardSearch"];

  v12 = [(CarKeyboardModeController *)self searchController];
  v13 = [v12 searchBar];
  [v13 setAccessibilityIdentifier:@"CarSearchBar"];

  v14 = +[UIColor tableBackgroundColor];
  v15 = [(CarKeyboardModeController *)self view];
  [v15 setBackgroundColor:v14];

  [(CarKeyboardModeController *)self _setPlaceholder];
  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_offlineSettingChangeHandler" name:@"UsingOfflineMapsStateChangedNotification" object:0];
}

- (CarKeyboardModeController)initWithRequestedInteractionModel:(unint64_t)a3 resultsProvider:(id)a4
{
  v7 = a4;
  v8 = [[UISearchController alloc] initWithSearchResultsController:v7];
  v14.receiver = self;
  v14.super_class = CarKeyboardModeController;
  v9 = [(CarKeyboardModeController *)&v14 initWithSearchController:v8];
  if (v9)
  {
    if (!a3)
    {
      v10 = +[CarDisplayController sharedInstance];
      if ([v10 primaryInteractionModel])
      {
        v11 = +[CarDisplayController sharedInstance];
        a3 = [v11 primaryInteractionModel];
      }

      else
      {
        a3 = 1;
      }
    }

    v9->_requestedInteractionModel = a3;
    objc_storeStrong(&v9->_resultsProvider, a4);
    [v8 _setRequestedInteractionModel:a3];
    [v8 setHidesNavigationBarDuringPresentation:0];
    [v8 setActive:1];
    [v8 setDelegate:v9];
    [v8 setSearchResultsUpdater:v9];
    v12 = [v8 searchBar];
    [v12 setSpellCheckingType:1];

    [v8 setShowsSearchResultsController:{objc_msgSend(v7, "shouldAlwaysBeVisible")}];
  }

  return v9;
}

@end