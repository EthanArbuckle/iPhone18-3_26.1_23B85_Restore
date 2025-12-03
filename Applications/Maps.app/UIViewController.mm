@interface UIViewController
+ (id)_maps_viewControllerForRenamingMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler;
- (MapsTheme)theme;
- (UIViewController)topMostPresentedViewController;
- (id)_maps_platformController;
- (id)_maps_uiScene;
- (id)carSceneDelegateForViewController:(id)controller;
- (id)mapsSceneDelegateForViewController:(id)controller;
- (void)_createAndPresentAlertControllerWithTitle:(id)title descriptionText:(id)text cancelString:(id)string cancelHandler:(id)handler;
- (void)_maps_presentSimpleAlertWithTitle:(id)title message:(id)message dismissalActionTitle:(id)actionTitle dismissalHandler:(id)handler;
- (void)_maps_topMostPresentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_presentInternalInstallRadarPromptAlertForUserInfo:(id)info response:(id)response;
- (void)presentLoginFailureAlertWithCancelHandler:(id)handler;
- (void)presentLookupFailureAlertWithCancelHandler:(id)handler;
- (void)presentSavedReportTooNewAlertWithCancelHandler:(id)handler;
- (void)presentSubmissionFailureAlertForResponse:(id)response withCancelHandler:(id)handler;
@end

@implementation UIViewController

- (MapsTheme)theme
{
  traitCollection = [(UIViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle)
  {
    traitCollection2 = [(UIViewController *)self traitCollection];
    v6 = [traitCollection2 userInterfaceStyle] != 1;

    v7 = +[MapsTheme sharedTheme];
    [v7 setMapsThemeStyle:v6];
  }

  return +[MapsTheme sharedTheme];
}

- (UIViewController)topMostPresentedViewController
{
  selfCopy = self;
  presentedViewController = [(UIViewController *)selfCopy presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [(UIViewController *)selfCopy presentedViewController];

      v4PresentedViewController = [(UIViewController *)presentedViewController2 presentedViewController];

      selfCopy = presentedViewController2;
    }

    while (v4PresentedViewController);
  }

  else
  {
    presentedViewController2 = selfCopy;
  }

  return presentedViewController2;
}

- (void)_maps_topMostPresentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  topMostPresentedViewController = [(UIViewController *)self topMostPresentedViewController];
  [topMostPresentedViewController presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)_maps_presentSimpleAlertWithTitle:(id)title message:(id)message dismissalActionTitle:(id)actionTitle dismissalHandler:(id)handler
{
  handlerCopy = handler;
  actionTitleCopy = actionTitle;
  v14 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  view = [v14 view];
  [view setAccessibilityIdentifier:@"SimpleAlert"];

  v13 = [UIAlertAction actionWithTitle:actionTitleCopy style:0 handler:handlerCopy];

  [v13 setAccessibilityIdentifier:@"AlertAction"];
  [v14 addAction:v13];
  [(UIViewController *)self _maps_topMostPresentViewController:v14 animated:1 completion:0];
}

- (id)_maps_platformController
{
  _maps_mapsSceneDelegate = [(UIViewController *)self _maps_mapsSceneDelegate];
  platformController = [_maps_mapsSceneDelegate platformController];

  return platformController;
}

- (id)carSceneDelegateForViewController:(id)controller
{
  view = [controller view];
  _maps_carSceneDelegate = [view _maps_carSceneDelegate];

  return _maps_carSceneDelegate;
}

- (id)mapsSceneDelegateForViewController:(id)controller
{
  view = [controller view];
  _maps_mapsSceneDelegate = [view _maps_mapsSceneDelegate];

  return _maps_mapsSceneDelegate;
}

- (id)_maps_uiScene
{
  view = [(UIViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  return windowScene;
}

+ (id)_maps_viewControllerForRenamingMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler
{
  itemCopy = item;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  v10 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v10 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v12 = [[MacCollectionRenameViewController alloc] initWithMapItem:itemCopy saveHandler:handlerCopy cancelHandler:cancelHandlerCopy];
    [(MacCollectionRenameViewController *)v12 setModalPresentationStyle:2];
  }

  else
  {
    v13 = +[NSBundle mainBundle];
    v24 = [v13 localizedStringForKey:@"Name_this_Location" value:@"localized string not found" table:0];

    v12 = [UIAlertController alertControllerWithTitle:v24 message:0 preferredStyle:1];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100B591FC;
    v30[3] = &unk_10165F640;
    v31 = itemCopy;
    [(MacCollectionRenameViewController *)v12 addTextFieldWithConfigurationHandler:v30];
    textFields = [(MacCollectionRenameViewController *)v12 textFields];
    firstObject = [textFields firstObject];

    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"Cancel_Editing_Name_Favorites" value:@"localized string not found" table:0];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100B59274;
    v28[3] = &unk_101660728;
    v29 = cancelHandlerCopy;
    v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:v28];

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Save_Editing_Name_Favorites" value:@"localized string not found" table:0];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100B5928C;
    v25[3] = &unk_10165F668;
    v26 = firstObject;
    v27 = handlerCopy;
    v21 = firstObject;
    v22 = [UIAlertAction actionWithTitle:v20 style:0 handler:v25];

    [(MacCollectionRenameViewController *)v12 addAction:v18];
    [(MacCollectionRenameViewController *)v12 addAction:v22];
    [(MacCollectionRenameViewController *)v12 setPreferredAction:v22];
  }

  return v12;
}

- (void)_presentInternalInstallRadarPromptAlertForUserInfo:(id)info response:(id)response
{
  infoCopy = info;
  responseCopy = response;
  v8 = +[MKSystemController sharedInstance];
  isInternalInstall = [v8 isInternalInstall];

  if (isInternalInstall)
  {
    v10 = objc_opt_new();
    [v10 setTitle:@"[ARP] Submission failure"];
    userCredentials = [infoCopy userCredentials];
    icloudUserPersonId = [userCredentials icloudUserPersonId];
    userCredentials2 = [infoCopy userCredentials];
    icloudUserMapsAuthToken = [userCredentials2 icloudUserMapsAuthToken];
    responseCopy = [NSString stringWithFormat:@"DSID: %@\nMaps auth token: %@\nResponse: %@", icloudUserPersonId, icloudUserMapsAuthToken, responseCopy];
    [v10 addNote:responseCopy];

    [v10 setClassification:6];
    v16 = +[MapsRadarComponent mapsAppCoreUIComponent];
    [v10 setComponent:v16];

    v17 = sub_10002E924();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      descriptionText = [v10 descriptionText];
      *buf = 138412290;
      v21 = descriptionText;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Presenting internal alert to file a radar: %@", buf, 0xCu);
    }

    v19 = +[MapsRadarController sharedInstance];
    [v19 launchTTRWithRadar:v10 promptTitle:@"ratings and photos failed to submit" fromViewController:self];
  }
}

- (void)_createAndPresentAlertControllerWithTitle:(id)title descriptionText:(id)text cancelString:(id)string cancelHandler:(id)handler
{
  handlerCopy = handler;
  stringCopy = string;
  v12 = [UIAlertController alertControllerWithTitle:title message:text preferredStyle:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100D3E178;
  v15[3] = &unk_101660728;
  v16 = handlerCopy;
  v13 = handlerCopy;
  v14 = [UIAlertAction actionWithTitle:stringCopy style:0 handler:v15];

  [v12 addAction:v14];
  [(UIViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)presentLoginFailureAlertWithCancelHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSBundle mainBundle];
  v10 = [v5 localizedStringForKey:@"Error Signing In [UGC]" value:@"localized string not found" table:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Error Signing In Description [UGC]" value:@"localized string not found" table:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK [UGC]" value:@"localized string not found" table:0];

  [(UIViewController *)self _createAndPresentAlertControllerWithTitle:v10 descriptionText:v7 cancelString:v9 cancelHandler:handlerCopy];
}

- (void)presentLookupFailureAlertWithCancelHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSBundle mainBundle];
  v9 = [v5 localizedStringForKey:@"Error Fetching Submission [UGC]" value:@"localized string not found" table:0];

  v6 = +[UGCErrorStringBuilder buildBestErrorStringForCurrentNetworkState];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK [UGC]" value:@"localized string not found" table:0];

  [(UIViewController *)self _createAndPresentAlertControllerWithTitle:v9 descriptionText:v6 cancelString:v8 cancelHandler:handlerCopy];
}

- (void)presentSavedReportTooNewAlertWithCancelHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSBundle mainBundle];
  v11 = [v5 localizedStringForKey:@"Error Saved Report Too New - iOS [UGC]" value:@"localized string not found" table:0];

  if (sub_10000FA08(self) == 1)
  {
    v6 = @"Error Saved Report Too New - iPadOS [UGC]";
  }

  else
  {
    if (sub_10000FA08(self) != 5)
    {
      goto LABEL_6;
    }

    v6 = @"Error Saved Report Too New - macOS [UGC]";
  }

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:v6 value:@"localized string not found" table:0];

  v11 = v8;
LABEL_6:
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"OK [UGC]" value:@"localized string not found" table:0];

  [(UIViewController *)self _createAndPresentAlertControllerWithTitle:0 descriptionText:v11 cancelString:v10 cancelHandler:handlerCopy];
}

- (void)presentSubmissionFailureAlertForResponse:(id)response withCancelHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v8 = +[UGCErrorStringBuilder buildFailToSubmitErrorTitle];
  v9 = +[UGCErrorStringBuilder buildFailToSubmitErrorDescription];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"OK [UGC]" value:@"localized string not found" table:0];

  v16 = 0;
  v12 = [UGCCredentialsBuilder buildICloudUserCredentialsWithError:&v16];
  v13 = v16;
  v14 = +[MKSystemController sharedInstance];
  isInternalInstall = [v14 isInternalInstall];

  if (isInternalInstall && v13)
  {
    [(UIViewController *)self _presentInternalInstallRadarPromptAlertForUserInfo:v12 response:responseCopy];
  }

  else
  {
    [(UIViewController *)self _createAndPresentAlertControllerWithTitle:v8 descriptionText:v9 cancelString:v11 cancelHandler:handlerCopy];
  }
}

@end