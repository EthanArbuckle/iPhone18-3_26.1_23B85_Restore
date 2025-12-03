@interface CarKeyboardModeController
- (CarKeyboardModeController)initWithRequestedInteractionModel:(unint64_t)model resultsProvider:(id)provider;
- (ChromeViewController)chromeViewController;
- (id)fullscreenViewController;
- (id)fullscreenViewControllerDismissalTransition;
- (id)fullscreenViewControllerPresentationTransition;
- (void)_forciblyHideTouchKeyboard;
- (void)_forciblyShowTouchKeyboard;
- (void)_ppt_selectKeyboardSearchButton;
- (void)_setPlaceholder;
- (void)_toggleTouchKeyboard;
- (void)_updatePreferredInputViewHeightWithPreferredMinimumRowHeight:(double)height;
- (void)didDismissSearchController:(id)controller;
- (void)enumerateKeyboardSubviewsWithBlock:(id)block;
- (void)pptEndEditing;
- (void)pptHandleTextChange:(id)change;
- (void)pptInvokeSearch:(id)search;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)wantsKeyboardVisible:(BOOL)visible;
@end

@implementation CarKeyboardModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)pptInvokeSearch:(id)search
{
  searchCopy = search;
  resultsProvider = [(CarKeyboardModeController *)self resultsProvider];
  [resultsProvider handleSearchButtonPressedWithText:searchCopy];
}

- (void)pptEndEditing
{
  searchController = [(CarKeyboardModeController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar resignFirstResponder];
}

- (void)pptHandleTextChange:(id)change
{
  changeCopy = change;
  searchController = [(CarKeyboardModeController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar setText:changeCopy];
}

- (void)_ppt_selectKeyboardSearchButton
{
  searchController = [(CarKeyboardModeController *)self searchController];
  searchBar = [searchController searchBar];
  text = [searchBar text];
  v6 = [text length];

  if (v6)
  {
    resultsProvider = [(CarKeyboardModeController *)self resultsProvider];
    searchController2 = [(CarKeyboardModeController *)self searchController];
    searchBar2 = [searchController2 searchBar];
    text2 = [searchBar2 text];
    [resultsProvider handleSearchButtonPressedWithText:text2];
  }
}

- (void)didDismissSearchController:(id)controller
{
  v4 = +[CarChromeModeCoordinator sharedInstance];
  [v4 popFromContext:self];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  changeCopy = change;
  resultsProvider = [(CarKeyboardModeController *)self resultsProvider];
  [resultsProvider handleSearchTextDidChange:changeCopy];
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  chromeViewController = [(CarKeyboardModeController *)self chromeViewController];
  [chromeViewController captureUserAction:2002];

  resultsProvider = [(CarKeyboardModeController *)self resultsProvider];
  [resultsProvider handleCancelButtonPressed];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  resultsProvider = [(CarKeyboardModeController *)self resultsProvider];
  text = [clickedCopy text];

  [resultsProvider handleSearchButtonPressedWithText:text];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  resultsProvider = [(CarKeyboardModeController *)self resultsProvider];
  [resultsProvider updateSearchResultsForSearchController:controllerCopy];
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

- (void)enumerateKeyboardSubviewsWithBlock:(id)block
{
  blockCopy = block;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  searchController = [(CarKeyboardModeController *)self searchController];
  view = [searchController view];
  subviews = [view subviews];

  v8 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        resultsProvider = [(CarKeyboardModeController *)self resultsProvider];
        view2 = [resultsProvider view];
        v15 = [view2 isDescendantOfView:v12];

        if ((v15 & 1) == 0)
        {
          backgroundColor = [v12 backgroundColor];

          if (backgroundColor)
          {
            blockCopy[2](blockCopy, v12);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
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
    searchController = [(CarKeyboardModeController *)self searchController];
    searchBar = [searchController searchBar];
    [searchBar becomeFirstResponder];

    resultsProvider = [(CarKeyboardModeController *)self resultsProvider];
    [resultsProvider didUpdateKeyboardVisibility:1];
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
    searchController = [(CarKeyboardModeController *)self searchController];
    searchBar = [searchController searchBar];
    [searchBar resignFirstResponder];

    resultsProvider = [(CarKeyboardModeController *)self resultsProvider];
    [resultsProvider didUpdateKeyboardVisibility:0];
  }
}

- (void)wantsKeyboardVisible:(BOOL)visible
{
  if (visible)
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

- (void)_updatePreferredInputViewHeightWithPreferredMinimumRowHeight:(double)height
{
  view = [(CarKeyboardModeController *)self view];
  [view bounds];
  Height = CGRectGetHeight(v21);

  navigationBar = [(UINavigationController *)self->_wrapperNavigationController navigationBar];
  [navigationBar frame];
  v8 = CGRectGetHeight(v22);

  v9 = Height - fmax(height, 44.0) - v8;
  searchController = [(CarKeyboardModeController *)self searchController];
  searchBar = [searchController searchBar];
  searchTextField = [searchBar searchTextField];
  textInputTraits = [searchTextField textInputTraits];
  [textInputTraits preferredInputViewHeight];
  v15 = v14;

  if (vabdd_f64(v15, v9) > 2.22044605e-16)
  {
    searchController2 = [(CarKeyboardModeController *)self searchController];
    searchBar2 = [searchController2 searchBar];
    searchTextField2 = [searchBar2 searchTextField];
    textInputTraits2 = [searchTextField2 textInputTraits];
    [textInputTraits2 setPreferredInputViewHeight:v9];
  }
}

- (void)_setPlaceholder
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v3 isUsingOfflineMaps];

  v5 = +[NSBundle mainBundle];
  v10 = v5;
  if (isUsingOfflineMaps)
  {
    v6 = @"[Offline CarPlay Search] Search Offline Maps";
  }

  else
  {
    v6 = @"[CarPlay Search] Search";
  }

  v7 = [v5 localizedStringForKey:v6 value:@"localized string not found" table:0];
  searchController = [(CarKeyboardModeController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar setPlaceholder:v7];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CarKeyboardModeController;
  [(CarKeyboardModeController *)&v7 viewDidAppear:appear];
  searchController = [(CarKeyboardModeController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar becomeFirstResponder];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"PPTTest_CarKeyboardModeController_DidDisplayKeyboard" object:0 userInfo:0];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v12.receiver = self;
  v12.super_class = CarKeyboardModeController;
  [(CarKeyboardModeController *)&v12 viewIsAppearing:appearing];
  if (GEOConfigGetBOOL())
  {
    v4 = +[CarFocusableButton button];
    [v4 setShowsEllipticalFocusIndicator:1];
    v5 = [UIImage systemImageNamed:@"list.bullet.circle.fill"];
    [v4 setImage:v5 forState:0];

    [v4 addTarget:self action:"_toggleTouchKeyboard" forControlEvents:64];
    searchController = [(CarKeyboardModeController *)self searchController];
    searchBar = [searchController searchBar];
    searchTextField = [searchBar searchTextField];
    [searchTextField setRightView:v4];

    searchController2 = [(CarKeyboardModeController *)self searchController];
    searchBar2 = [searchController2 searchBar];
    searchTextField2 = [searchBar2 searchTextField];
    [searchTextField2 setRightViewMode:3];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CarKeyboardModeController;
  [(CarKeyboardModeController *)&v7 viewWillAppear:appear];
  resultsProvider = [(CarKeyboardModeController *)self resultsProvider];
  [resultsProvider preferredMinimumRowHeight];
  [(CarKeyboardModeController *)self _updatePreferredInputViewHeightWithPreferredMinimumRowHeight:?];

  v5 = MapsSuggestionsResourceDepotForMapsProcess();
  oneInsights = [v5 oneInsights];
  [oneInsights preload];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = CarKeyboardModeController;
  [(CarKeyboardModeController *)&v17 viewDidLoad];
  [(CarKeyboardModeController *)self setDefinesPresentationContext:1];
  searchController = [(CarKeyboardModeController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar setDelegate:self];

  searchController2 = [(CarKeyboardModeController *)self searchController];
  searchBar2 = [searchController2 searchBar];
  [searchBar2 setShowsCancelButton:1];

  searchController3 = [(CarKeyboardModeController *)self searchController];
  searchBar3 = [searchController3 searchBar];
  navigationItem = [(CarKeyboardModeController *)self navigationItem];
  [navigationItem setTitleView:searchBar3];

  navigationItem2 = [(CarKeyboardModeController *)self navigationItem];
  [navigationItem2 setHidesBackButton:1];

  [(CarKeyboardModeController *)self setExtendedLayoutIncludesOpaqueBars:1];
  [(CarKeyboardModeController *)self setEdgesForExtendedLayout:1];
  view = [(CarKeyboardModeController *)self view];
  [view setAccessibilityIdentifier:@"CarKeyboardSearch"];

  searchController4 = [(CarKeyboardModeController *)self searchController];
  searchBar4 = [searchController4 searchBar];
  [searchBar4 setAccessibilityIdentifier:@"CarSearchBar"];

  v14 = +[UIColor tableBackgroundColor];
  view2 = [(CarKeyboardModeController *)self view];
  [view2 setBackgroundColor:v14];

  [(CarKeyboardModeController *)self _setPlaceholder];
  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_offlineSettingChangeHandler" name:@"UsingOfflineMapsStateChangedNotification" object:0];
}

- (CarKeyboardModeController)initWithRequestedInteractionModel:(unint64_t)model resultsProvider:(id)provider
{
  providerCopy = provider;
  v8 = [[UISearchController alloc] initWithSearchResultsController:providerCopy];
  v14.receiver = self;
  v14.super_class = CarKeyboardModeController;
  v9 = [(CarKeyboardModeController *)&v14 initWithSearchController:v8];
  if (v9)
  {
    if (!model)
    {
      v10 = +[CarDisplayController sharedInstance];
      if ([v10 primaryInteractionModel])
      {
        v11 = +[CarDisplayController sharedInstance];
        model = [v11 primaryInteractionModel];
      }

      else
      {
        model = 1;
      }
    }

    v9->_requestedInteractionModel = model;
    objc_storeStrong(&v9->_resultsProvider, provider);
    [v8 _setRequestedInteractionModel:model];
    [v8 setHidesNavigationBarDuringPresentation:0];
    [v8 setActive:1];
    [v8 setDelegate:v9];
    [v8 setSearchResultsUpdater:v9];
    searchBar = [v8 searchBar];
    [searchBar setSpellCheckingType:1];

    [v8 setShowsSearchResultsController:{objc_msgSend(providerCopy, "shouldAlwaysBeVisible")}];
  }

  return v9;
}

@end