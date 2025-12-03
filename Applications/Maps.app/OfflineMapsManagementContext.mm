@interface OfflineMapsManagementContext
- (ChromeViewController)chromeViewController;
- (OfflineMapsManagementContext)init;
- (id)desiredCards;
- (id)renameOfflineMapControllerForDefaultText:(id)text saveHandler:(id)handler cancelHandler:(id)cancelHandler;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)closeAddNewMapSearchAutocomplete;
- (void)closeExpiredMapsManagement;
- (void)closeOfflineMapDetails;
- (void)dismiss;
- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)presentAddNewMapSearchAutocomplete;
- (void)presentExpiredMapsManagement;
- (void)presentOfflineMapDetailsForSubscriptionInfo:(id)info;
- (void)presentOfflineMapRegionSelectorForRegion:(id)region name:(id)name;
- (void)presentOfflineMapRegionSelectorForSubscriptionInfo:(id)info;
- (void)presentRenameOfflineMapForSubscriptionInfo:(id)info completionHandler:(id)handler;
- (void)restoreExpiredSubscriptions:(id)subscriptions completionHandler:(id)handler;
- (void)resumeDownloadingForSubscriptionInfo:(id)info;
- (void)setAutomaticUpdatesEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setSyncToWatch:(BOOL)watch completionHandler:(id)handler;
- (void)showPairedDeviceDiskSpaceDialogWithRequiredDiskSpace:(int64_t)space;
- (void)startUpdatingOfflineSubscriptions;
@end

@implementation OfflineMapsManagementContext

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)setAutomaticUpdatesEnabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  handlerCopy = handler;
  if (enabledCopy)
  {
    GEOConfigSetBOOL();
  }

  else
  {
    v7 = +[MapsOfflineUIHelper sharedHelper];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100F91BF8;
    v13 = &unk_10165F6D8;
    v14 = handlerCopy;
    v15 = 0;
    v8 = [v7 alertControllerForDisableAutomaticUpdatesWithActionHandler:&v10];

    v9 = [(OfflineMapsManagementContext *)self chromeViewController:v10];
    [v9 _maps_topMostPresentViewController:v8 animated:1 completion:0];
  }
}

- (void)showPairedDeviceDiskSpaceDialogWithRequiredDiskSpace:(int64_t)space
{
  v5 = +[MapsOfflineUIHelper sharedHelper];
  v7 = [v5 alertControllerForInsufficientDiskSpaceOnPairedDeviceForDownloadSize:space];

  chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:v7 animated:1 completion:0];
}

- (void)setSyncToWatch:(BOOL)watch completionHandler:(id)handler
{
  watchCopy = watch;
  handlerCopy = handler;
  if (watchCopy)
  {
    GEOConfigSetBOOL();
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    v7 = +[MapsOfflineUIHelper sharedHelper];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100F91E10;
    v14 = &unk_10165F6B0;
    v8 = handlerCopy;
    v15 = v8;
    v16 = 0;
    v9 = [v7 alertControllerForDisableSyncToWatchWithActionHandler:&v11];

    if (v9)
    {
      v10 = [(OfflineMapsManagementContext *)self chromeViewController:v11];
      [v10 _maps_topMostPresentViewController:v9 animated:1 completion:0];
    }

    else
    {
      GEOConfigSetBOOL();
      v8[2](v8, 1);
    }
  }
}

- (void)presentOfflineMapRegionSelectorForSubscriptionInfo:(id)info
{
  infoCopy = info;
  v4 = +[MapsOfflineUIHelper sharedHelper];
  alertControllerForAttemptedRegionDownload = [v4 alertControllerForAttemptedRegionDownload];

  chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
  v7 = chromeViewController;
  if (alertControllerForAttemptedRegionDownload)
  {
    [(OfflineRegionSelectorContext *)chromeViewController _maps_topMostPresentViewController:alertControllerForAttemptedRegionDownload animated:1 completion:0];
  }

  else
  {
    topContext = [(OfflineRegionSelectorContext *)chromeViewController topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_6;
    }

    v7 = [[OfflineRegionSelectorContext alloc] initWithSubscriptionInfo:infoCopy];
    chromeViewController2 = [(OfflineMapsManagementContext *)self chromeViewController];
    [chromeViewController2 pushContext:v7 animated:1 completion:0];
  }

LABEL_6:
}

- (void)presentOfflineMapRegionSelectorForRegion:(id)region name:(id)name
{
  regionCopy = region;
  nameCopy = name;
  v7 = +[MapsOfflineUIHelper sharedHelper];
  alertControllerForAttemptedRegionDownload = [v7 alertControllerForAttemptedRegionDownload];

  chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
  v10 = chromeViewController;
  if (alertControllerForAttemptedRegionDownload)
  {
    [(OfflineRegionSelectorContext *)chromeViewController _maps_topMostPresentViewController:alertControllerForAttemptedRegionDownload animated:1 completion:0];
  }

  else
  {
    topContext = [(OfflineRegionSelectorContext *)chromeViewController topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_6;
    }

    v10 = [[OfflineRegionSelectorContext alloc] initWithRegion:regionCopy name:nameCopy];
    chromeViewController2 = [(OfflineMapsManagementContext *)self chromeViewController];
    [chromeViewController2 pushContext:v10 animated:1 completion:0];
  }

LABEL_6:
}

- (id)renameOfflineMapControllerForDefaultText:(id)text saveHandler:(id)handler cancelHandler:(id)cancelHandler
{
  textCopy = text;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  v10 = +[NSBundle mainBundle];
  v25 = [v10 localizedStringForKey:@"Rename Map alert title" value:@"localized string not found" table:@"Offline"];

  v11 = [UIAlertController alertControllerWithTitle:v25 message:0 preferredStyle:1];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100F92554;
  v31[3] = &unk_10165F640;
  v32 = textCopy;
  v24 = textCopy;
  [v11 addTextFieldWithConfigurationHandler:v31];
  textFields = [v11 textFields];
  firstObject = [textFields firstObject];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Cancel - Rename Map alert button" value:@"localized string not found" table:@"Offline"];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100F925C4;
  v29[3] = &unk_101660728;
  v30 = cancelHandlerCopy;
  v16 = cancelHandlerCopy;
  v17 = [UIAlertAction actionWithTitle:v15 style:1 handler:v29];

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Save - Rename Map alert button" value:@"localized string not found" table:@"Offline"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100F925DC;
  v26[3] = &unk_10165F668;
  v27 = firstObject;
  v28 = handlerCopy;
  v20 = firstObject;
  v21 = handlerCopy;
  v22 = [UIAlertAction actionWithTitle:v19 style:0 handler:v26];

  [v11 addAction:v17];
  [v11 addAction:v22];
  [v11 setPreferredAction:v22];

  return v11;
}

- (void)presentRenameOfflineMapForSubscriptionInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  subscription = [infoCopy subscription];
  displayName = [subscription displayName];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100F92824;
  v16[3] = &unk_10165F618;
  v17 = infoCopy;
  v18 = handlerCopy;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100F9290C;
  v14[3] = &unk_101661760;
  v15 = v18;
  v10 = v18;
  v11 = infoCopy;
  v12 = [(OfflineMapsManagementContext *)self renameOfflineMapControllerForDefaultText:displayName saveHandler:v16 cancelHandler:v14];

  chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:v12 animated:1 completion:0];
}

- (void)closeOfflineMapDetails
{
  detailsViewController = self->_detailsViewController;
  self->_detailsViewController = 0;

  chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)startUpdatingOfflineSubscriptions
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100F92B00;
  v4[3] = &unk_101660FB0;
  v4[4] = self;
  [v3 fetchAllSubscriptionInfosWithCompletion:v4];
}

- (void)restoreExpiredSubscriptions:(id)subscriptions completionHandler:(id)handler
{
  subscriptionsCopy = subscriptions;
  handlerCopy = handler;
  v6 = +[MapsOfflineUIHelper sharedHelper];
  alertControllerForAttemptedRegionDownload = [v6 alertControllerForAttemptedRegionDownload];

  if (alertControllerForAttemptedRegionDownload)
  {
    chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
    [chromeViewController _maps_topMostPresentViewController:alertControllerForAttemptedRegionDownload animated:1 completion:0];

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 1;
    v8 = dispatch_group_create();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = subscriptionsCopy;
    v9 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v9)
    {
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          dispatch_group_enter(v8);
          v13 = +[MapsOfflineUIHelper sharedHelper];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100F932C4;
          v21[3] = &unk_101661628;
          v23 = v28;
          v22 = v8;
          [v13 restoreExpiredSubscription:v12 completionHandler:v21];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v9);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F932DC;
    block[3] = &unk_10165F5A0;
    v19 = handlerCopy;
    v20 = v28;
    dispatch_group_notify(v8, &_dispatch_main_q, block);

    _Block_object_dispose(v28, 8);
  }
}

- (void)resumeDownloadingForSubscriptionInfo:(id)info
{
  infoCopy = info;
  v5 = +[MapsOfflineUIHelper sharedHelper];
  alertControllerForAttemptedRegionDownload = [v5 alertControllerForAttemptedRegionDownload];

  if (alertControllerForAttemptedRegionDownload)
  {
    chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
    [chromeViewController _maps_topMostPresentViewController:alertControllerForAttemptedRegionDownload animated:1 completion:0];
LABEL_10:

    goto LABEL_11;
  }

  v8 = +[MapsOfflineUIHelper sharedHelper];
  v9 = [v8 cellularBehaviorForDownloadOfSize:-1 forForcedDownload:1];

  if (v9 == 2)
  {
    v10 = +[MapsOfflineUIHelper sharedHelper];
    chromeViewController = v10;
    v11 = infoCopy;
    v12 = 1;
    goto LABEL_9;
  }

  if (v9 == 1)
  {
    v13 = +[MapsOfflineUIHelper sharedHelper];
    subscription = [infoCopy subscription];
    displayName = [subscription displayName];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100F934E8;
    v18[3] = &unk_101661738;
    v19 = infoCopy;
    v16 = [v13 alertControllerForCellularDownloadConfirmationForRegionName:displayName size:-1 actionHandler:v18];

    chromeViewController2 = [(OfflineMapsManagementContext *)self chromeViewController];
    [chromeViewController2 _maps_topMostPresentViewController:v16 animated:1 completion:0];
  }

  else if (!v9)
  {
    v10 = +[MapsOfflineUIHelper sharedHelper];
    chromeViewController = v10;
    v11 = infoCopy;
    v12 = 0;
LABEL_9:
    [v10 resumeDownloadForSubscriptionInfo:v11 mode:v12];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)presentOfflineMapDetailsForSubscriptionInfo:(id)info
{
  infoCopy = info;
  v5 = [[OfflineMapDetailsViewController alloc] initWithSubscriptionInfo:infoCopy];

  detailsViewController = self->_detailsViewController;
  self->_detailsViewController = v5;

  [(OfflineMapDetailsViewController *)self->_detailsViewController setDelegate:self];
  chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)closeAddNewMapSearchAutocomplete
{
  searchViewController = self->_searchViewController;
  self->_searchViewController = 0;

  chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)presentAddNewMapSearchAutocomplete
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  alertControllerForAttemptedRegionDownload = [v3 alertControllerForAttemptedRegionDownload];

  if (alertControllerForAttemptedRegionDownload)
  {
    chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
    [chromeViewController _maps_topMostPresentViewController:alertControllerForAttemptedRegionDownload animated:1 completion:0];
  }

  else
  {
    v5 = objc_alloc_init(OfflineMapsManagementSearchAutocompleteViewController);
    searchViewController = self->_searchViewController;
    self->_searchViewController = v5;

    [(OfflineMapsManagementSearchAutocompleteViewController *)self->_searchViewController setDelegate:self];
    chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
    [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
  }
}

- (void)closeExpiredMapsManagement
{
  expiredMapsManagementViewController = self->_expiredMapsManagementViewController;
  self->_expiredMapsManagementViewController = 0;

  chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)presentExpiredMapsManagement
{
  v3 = objc_alloc_init(OfflineMapsManagementExpiredViewController);
  expiredMapsManagementViewController = self->_expiredMapsManagementViewController;
  self->_expiredMapsManagementViewController = v3;

  [(OfflineMapsManagementExpiredViewController *)self->_expiredMapsManagementViewController setDelegate:self];
  chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)dismiss
{
  iosBasedChromeViewController = [(OfflineMapsManagementContext *)self iosBasedChromeViewController];
  chromeViewController = [(OfflineMapsManagementContext *)self chromeViewController];
  [iosBasedChromeViewController popContext:self animated:objc_msgSend(chromeViewController completion:{"isTopContext:", self), 0}];
}

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4 = [MapsOfflineUIHelper sharedHelper:controller];
  [v4 stopMonitoringPairedDeviceSubscriptionStates];
}

- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4 = [MapsOfflineUIHelper sharedHelper:controller];
  [v4 startMonitoringPairedDeviceSubscriptionStates];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F93A10;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v8 = controllerCopy;
  v10 = v8;
  [animationCopy addPreparation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)desiredCards
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (self->_offlineMapsManagementViewController)
  {
    [v3 addObject:?];
  }

  if (self->_expiredMapsManagementViewController)
  {
    [v4 addObject:?];
  }

  if (self->_searchViewController)
  {
    [v4 addObject:?];
  }

  if (self->_detailsViewController)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (OfflineMapsManagementContext)init
{
  v6.receiver = self;
  v6.super_class = OfflineMapsManagementContext;
  v2 = [(OfflineMapsManagementContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(OfflineMapsManagementViewController);
    offlineMapsManagementViewController = v2->_offlineMapsManagementViewController;
    v2->_offlineMapsManagementViewController = v3;

    [(OfflineMapsManagementViewController *)v2->_offlineMapsManagementViewController setDelegate:v2];
  }

  return v2;
}

@end