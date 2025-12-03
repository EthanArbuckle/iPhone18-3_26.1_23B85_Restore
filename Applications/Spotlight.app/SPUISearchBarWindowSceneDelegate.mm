@interface SPUISearchBarWindowSceneDelegate
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)didFocusHeader;
- (void)didSizeWithHeight:(double)height;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sizeBar;
@end

@implementation SPUISearchBarWindowSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  [sceneCopy _setKeepContextAssociationInBackground:1];
  selfCopy = self;
  v7 = [NSArray arrayWithObjects:&selfCopy count:1];
  _FBSScene = [sceneCopy _FBSScene];
  identifier = [_FBSScene identifier];
  [sceneCopy _registerSettingsDiffActionArray:v7 forKey:identifier];

  v10 = objc_opt_new();
  v11 = +[SPUISearchViewControllerHolder sharedInstance];
  searchViewController = [v11 searchViewController];
  createAdditionalHeaderView = [searchViewController createAdditionalHeaderView];

  [createAdditionalHeaderView setInteractionDelegate:self];
  [v10 setView:createAdditionalHeaderView];
  [(SPUISearchBarWindowSceneDelegate *)self setView:createAdditionalHeaderView];
  [createAdditionalHeaderView setActiveInterfaceOrientation:1];
  v14 = objc_alloc_init(SPUISearchBarWindow);
  [(SPUISearchBarWindowSceneDelegate *)self setSearchBarWindow:v14];

  searchBarWindow = [(SPUISearchBarWindowSceneDelegate *)self searchBarWindow];
  [searchBarWindow setBackgroundColor:0];

  searchBarWindow2 = [(SPUISearchBarWindowSceneDelegate *)self searchBarWindow];
  [searchBarWindow2 setWindowScene:sceneCopy];

  searchBarWindow3 = [(SPUISearchBarWindowSceneDelegate *)self searchBarWindow];
  [searchBarWindow3 setRootViewController:v10];

  searchBarWindow4 = [(SPUISearchBarWindowSceneDelegate *)self searchBarWindow];
  [searchBarWindow4 setHidden:0];

  [(SPUISearchBarWindowSceneDelegate *)self sizeBar];
  v19 = +[NSNotificationCenter defaultCenter];
  [v19 addObserver:self selector:"sizeBar" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)sizeBar
{
  view = [(SPUISearchBarWindowSceneDelegate *)self view];
  [view setNeedsLayout];

  view2 = [(SPUISearchBarWindowSceneDelegate *)self view];
  [view2 layoutIfNeeded];

  view3 = [(SPUISearchBarWindowSceneDelegate *)self view];
  [view3 systemLayoutSizeFittingSize:{UILayoutFittingExpandedSize.width, UILayoutFittingExpandedSize.height}];
  [(SPUISearchBarWindowSceneDelegate *)self didSizeWithHeight:v5];
}

- (void)didSizeWithHeight:(double)height
{
  [(SPUISearchBarWindowSceneDelegate *)self headerHeight];
  if (v5 != height)
  {
    [(SPUISearchBarWindowSceneDelegate *)self setHeaderHeight:height];
    searchBarWindow = [(SPUISearchBarWindowSceneDelegate *)self searchBarWindow];
    _scene = [searchBarWindow _scene];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000350C;
    v8[3] = &unk_10000C478;
    *&v8[4] = height;
    [_scene updateClientSettingsWithBlock:v8];
  }
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sSceneCopy = sScene;
  settings = [sSceneCopy settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v11 = sSceneCopy;
  if (isKindOfClass)
  {
    settings2 = [sSceneCopy settings];
    interfaceOrientation = [settings2 interfaceOrientation];
    view = [(SPUISearchBarWindowSceneDelegate *)self view];
    activeInterfaceOrientation = [view activeInterfaceOrientation];

    if (activeInterfaceOrientation != interfaceOrientation)
    {
      view2 = [(SPUISearchBarWindowSceneDelegate *)self view];
      [view2 setActiveInterfaceOrientation:interfaceOrientation];

      [(SPUISearchBarWindowSceneDelegate *)self sizeBar];
    }

    v11 = sSceneCopy;
  }
}

- (void)didFocusHeader
{
  v3 = +[SPUISearchViewControllerHolder sharedInstance];
  searchViewController = [v3 searchViewController];
  headerView = [searchViewController headerView];
  [headerView showCancelButton:0 animated:0];

  searchBarWindow = [(SPUISearchBarWindowSceneDelegate *)self searchBarWindow];
  _scene = [searchBarWindow _scene];
  [_scene updateClientSettingsWithTransitionBlock:&stru_10000C4B8];

  searchBarWindow2 = [(SPUISearchBarWindowSceneDelegate *)self searchBarWindow];
  rootViewController = [searchBarWindow2 rootViewController];
  view = [rootViewController view];
  [view endEditing:1];
}

@end