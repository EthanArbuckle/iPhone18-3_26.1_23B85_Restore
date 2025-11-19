@interface OfflineMapsManagementContext
- (ChromeViewController)chromeViewController;
- (OfflineMapsManagementContext)init;
- (id)desiredCards;
- (id)renameOfflineMapControllerForDefaultText:(id)a3 saveHandler:(id)a4 cancelHandler:(id)a5;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)closeAddNewMapSearchAutocomplete;
- (void)closeExpiredMapsManagement;
- (void)closeOfflineMapDetails;
- (void)dismiss;
- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)presentAddNewMapSearchAutocomplete;
- (void)presentExpiredMapsManagement;
- (void)presentOfflineMapDetailsForSubscriptionInfo:(id)a3;
- (void)presentOfflineMapRegionSelectorForRegion:(id)a3 name:(id)a4;
- (void)presentOfflineMapRegionSelectorForSubscriptionInfo:(id)a3;
- (void)presentRenameOfflineMapForSubscriptionInfo:(id)a3 completionHandler:(id)a4;
- (void)restoreExpiredSubscriptions:(id)a3 completionHandler:(id)a4;
- (void)resumeDownloadingForSubscriptionInfo:(id)a3;
- (void)setAutomaticUpdatesEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)setSyncToWatch:(BOOL)a3 completionHandler:(id)a4;
- (void)showPairedDeviceDiskSpaceDialogWithRequiredDiskSpace:(int64_t)a3;
- (void)startUpdatingOfflineSubscriptions;
@end

@implementation OfflineMapsManagementContext

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)setAutomaticUpdatesEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
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
    v14 = v6;
    v15 = 0;
    v8 = [v7 alertControllerForDisableAutomaticUpdatesWithActionHandler:&v10];

    v9 = [(OfflineMapsManagementContext *)self chromeViewController:v10];
    [v9 _maps_topMostPresentViewController:v8 animated:1 completion:0];
  }
}

- (void)showPairedDeviceDiskSpaceDialogWithRequiredDiskSpace:(int64_t)a3
{
  v5 = +[MapsOfflineUIHelper sharedHelper];
  v7 = [v5 alertControllerForInsufficientDiskSpaceOnPairedDeviceForDownloadSize:a3];

  v6 = [(OfflineMapsManagementContext *)self chromeViewController];
  [v6 _maps_topMostPresentViewController:v7 animated:1 completion:0];
}

- (void)setSyncToWatch:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    GEOConfigSetBOOL();
    v6[2](v6, 1);
  }

  else
  {
    v7 = +[MapsOfflineUIHelper sharedHelper];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100F91E10;
    v14 = &unk_10165F6B0;
    v8 = v6;
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

- (void)presentOfflineMapRegionSelectorForSubscriptionInfo:(id)a3
{
  v11 = a3;
  v4 = +[MapsOfflineUIHelper sharedHelper];
  v5 = [v4 alertControllerForAttemptedRegionDownload];

  v6 = [(OfflineMapsManagementContext *)self chromeViewController];
  v7 = v6;
  if (v5)
  {
    [(OfflineRegionSelectorContext *)v6 _maps_topMostPresentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v8 = [(OfflineRegionSelectorContext *)v6 topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_6;
    }

    v7 = [[OfflineRegionSelectorContext alloc] initWithSubscriptionInfo:v11];
    v10 = [(OfflineMapsManagementContext *)self chromeViewController];
    [v10 pushContext:v7 animated:1 completion:0];
  }

LABEL_6:
}

- (void)presentOfflineMapRegionSelectorForRegion:(id)a3 name:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = +[MapsOfflineUIHelper sharedHelper];
  v8 = [v7 alertControllerForAttemptedRegionDownload];

  v9 = [(OfflineMapsManagementContext *)self chromeViewController];
  v10 = v9;
  if (v8)
  {
    [(OfflineRegionSelectorContext *)v9 _maps_topMostPresentViewController:v8 animated:1 completion:0];
  }

  else
  {
    v11 = [(OfflineRegionSelectorContext *)v9 topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_6;
    }

    v10 = [[OfflineRegionSelectorContext alloc] initWithRegion:v14 name:v6];
    v13 = [(OfflineMapsManagementContext *)self chromeViewController];
    [v13 pushContext:v10 animated:1 completion:0];
  }

LABEL_6:
}

- (id)renameOfflineMapControllerForDefaultText:(id)a3 saveHandler:(id)a4 cancelHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSBundle mainBundle];
  v25 = [v10 localizedStringForKey:@"Rename Map alert title" value:@"localized string not found" table:@"Offline"];

  v11 = [UIAlertController alertControllerWithTitle:v25 message:0 preferredStyle:1];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100F92554;
  v31[3] = &unk_10165F640;
  v32 = v7;
  v24 = v7;
  [v11 addTextFieldWithConfigurationHandler:v31];
  v12 = [v11 textFields];
  v13 = [v12 firstObject];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Cancel - Rename Map alert button" value:@"localized string not found" table:@"Offline"];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100F925C4;
  v29[3] = &unk_101660728;
  v30 = v9;
  v16 = v9;
  v17 = [UIAlertAction actionWithTitle:v15 style:1 handler:v29];

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Save - Rename Map alert button" value:@"localized string not found" table:@"Offline"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100F925DC;
  v26[3] = &unk_10165F668;
  v27 = v13;
  v28 = v8;
  v20 = v13;
  v21 = v8;
  v22 = [UIAlertAction actionWithTitle:v19 style:0 handler:v26];

  [v11 addAction:v17];
  [v11 addAction:v22];
  [v11 setPreferredAction:v22];

  return v11;
}

- (void)presentRenameOfflineMapForSubscriptionInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 subscription];
  v9 = [v8 displayName];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100F92824;
  v16[3] = &unk_10165F618;
  v17 = v6;
  v18 = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100F9290C;
  v14[3] = &unk_101661760;
  v15 = v18;
  v10 = v18;
  v11 = v6;
  v12 = [(OfflineMapsManagementContext *)self renameOfflineMapControllerForDefaultText:v9 saveHandler:v16 cancelHandler:v14];

  v13 = [(OfflineMapsManagementContext *)self chromeViewController];
  [v13 _maps_topMostPresentViewController:v12 animated:1 completion:0];
}

- (void)closeOfflineMapDetails
{
  detailsViewController = self->_detailsViewController;
  self->_detailsViewController = 0;

  v4 = [(OfflineMapsManagementContext *)self chromeViewController];
  [v4 setNeedsUpdateComponent:@"cards" animated:1];
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

- (void)restoreExpiredSubscriptions:(id)a3 completionHandler:(id)a4
{
  v14 = a3;
  v15 = a4;
  v6 = +[MapsOfflineUIHelper sharedHelper];
  v16 = [v6 alertControllerForAttemptedRegionDownload];

  if (v16)
  {
    v7 = [(OfflineMapsManagementContext *)self chromeViewController];
    [v7 _maps_topMostPresentViewController:v16 animated:1 completion:0];

    if (v15)
    {
      v15[2](v15, 0);
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
    obj = v14;
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
    v19 = v15;
    v20 = v28;
    dispatch_group_notify(v8, &_dispatch_main_q, block);

    _Block_object_dispose(v28, 8);
  }
}

- (void)resumeDownloadingForSubscriptionInfo:(id)a3
{
  v4 = a3;
  v5 = +[MapsOfflineUIHelper sharedHelper];
  v6 = [v5 alertControllerForAttemptedRegionDownload];

  if (v6)
  {
    v7 = [(OfflineMapsManagementContext *)self chromeViewController];
    [v7 _maps_topMostPresentViewController:v6 animated:1 completion:0];
LABEL_10:

    goto LABEL_11;
  }

  v8 = +[MapsOfflineUIHelper sharedHelper];
  v9 = [v8 cellularBehaviorForDownloadOfSize:-1 forForcedDownload:1];

  if (v9 == 2)
  {
    v10 = +[MapsOfflineUIHelper sharedHelper];
    v7 = v10;
    v11 = v4;
    v12 = 1;
    goto LABEL_9;
  }

  if (v9 == 1)
  {
    v13 = +[MapsOfflineUIHelper sharedHelper];
    v14 = [v4 subscription];
    v15 = [v14 displayName];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100F934E8;
    v18[3] = &unk_101661738;
    v19 = v4;
    v16 = [v13 alertControllerForCellularDownloadConfirmationForRegionName:v15 size:-1 actionHandler:v18];

    v17 = [(OfflineMapsManagementContext *)self chromeViewController];
    [v17 _maps_topMostPresentViewController:v16 animated:1 completion:0];
  }

  else if (!v9)
  {
    v10 = +[MapsOfflineUIHelper sharedHelper];
    v7 = v10;
    v11 = v4;
    v12 = 0;
LABEL_9:
    [v10 resumeDownloadForSubscriptionInfo:v11 mode:v12];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)presentOfflineMapDetailsForSubscriptionInfo:(id)a3
{
  v4 = a3;
  v5 = [[OfflineMapDetailsViewController alloc] initWithSubscriptionInfo:v4];

  detailsViewController = self->_detailsViewController;
  self->_detailsViewController = v5;

  [(OfflineMapDetailsViewController *)self->_detailsViewController setDelegate:self];
  v7 = [(OfflineMapsManagementContext *)self chromeViewController];
  [v7 setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)closeAddNewMapSearchAutocomplete
{
  searchViewController = self->_searchViewController;
  self->_searchViewController = 0;

  v4 = [(OfflineMapsManagementContext *)self chromeViewController];
  [v4 setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)presentAddNewMapSearchAutocomplete
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  v7 = [v3 alertControllerForAttemptedRegionDownload];

  if (v7)
  {
    v4 = [(OfflineMapsManagementContext *)self chromeViewController];
    [v4 _maps_topMostPresentViewController:v7 animated:1 completion:0];
  }

  else
  {
    v5 = objc_alloc_init(OfflineMapsManagementSearchAutocompleteViewController);
    searchViewController = self->_searchViewController;
    self->_searchViewController = v5;

    [(OfflineMapsManagementSearchAutocompleteViewController *)self->_searchViewController setDelegate:self];
    v4 = [(OfflineMapsManagementContext *)self chromeViewController];
    [v4 setNeedsUpdateComponent:@"cards" animated:1];
  }
}

- (void)closeExpiredMapsManagement
{
  expiredMapsManagementViewController = self->_expiredMapsManagementViewController;
  self->_expiredMapsManagementViewController = 0;

  v4 = [(OfflineMapsManagementContext *)self chromeViewController];
  [v4 setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)presentExpiredMapsManagement
{
  v3 = objc_alloc_init(OfflineMapsManagementExpiredViewController);
  expiredMapsManagementViewController = self->_expiredMapsManagementViewController;
  self->_expiredMapsManagementViewController = v3;

  [(OfflineMapsManagementExpiredViewController *)self->_expiredMapsManagementViewController setDelegate:self];
  v5 = [(OfflineMapsManagementContext *)self chromeViewController];
  [v5 setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)dismiss
{
  v4 = [(OfflineMapsManagementContext *)self iosBasedChromeViewController];
  v3 = [(OfflineMapsManagementContext *)self chromeViewController];
  [v4 popContext:self animated:objc_msgSend(v3 completion:{"isTopContext:", self), 0}];
}

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4 = [MapsOfflineUIHelper sharedHelper:a3];
  [v4 stopMonitoringPairedDeviceSubscriptionStates];
}

- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4 = [MapsOfflineUIHelper sharedHelper:a3];
  [v4 startMonitoringPairedDeviceSubscriptionStates];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F93A10;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [v7 addPreparation:v9];

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