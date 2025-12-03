@interface PresentRAPActionHandler
+ (void)_showErrorMessageinContext:(id)context;
+ (void)_showRAPForMapItem:(id)item inContext:(id)context;
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation PresentRAPActionHandler

+ (void)_showErrorMessageinContext:(id)context
{
  chrome = [context chrome];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Location Details Not Available [Report a Problem]" value:@"localized string not found" table:0];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OK [Report a Problem push]" value:@"localized string not found" table:0];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];
  [v5 addAction:v8];

  [chrome _maps_topMostPresentViewController:v5 animated:1 completion:0];
}

+ (void)_showRAPForMapItem:(id)item inContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  if (_MKRAPIsAvailable() && !sub_1007413D0())
  {
    if (([itemCopy _isMapItemTypeBrand] & 1) == 0)
    {
      [itemCopy _coordinate];
      if (fabs(v16) > 180.0 || v15 < -90.0 || v15 > 90.0)
      {
        [self _showErrorMessageinContext:contextCopy];
        goto LABEL_5;
      }
    }

    chrome3 = [[SearchResult alloc] initWithMapItem:itemCopy];
    if (_MKRAPIsAvailable() && (sub_1007413D0() & 1) == 0 && chrome3)
    {
      chrome = [contextCopy chrome];
      mapSelectionManager = [chrome mapSelectionManager];
      [mapSelectionManager selectMapItem:itemCopy animated:0];

      chrome2 = [contextCopy chrome];
      _maps_mapsSceneDelegate = [chrome2 _maps_mapsSceneDelegate];
      rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10071F890;
      v22[3] = &unk_10163BCB0;
      v23 = chrome3;
      [rapPresenter presentReportAProblemFromPlaceCardViewController:0 editingContext:v22 overriddenUserInterfaceStyle:0 sourceView:0 entryPoint:201 completion:0];
    }
  }

  else
  {
    chrome3 = [contextCopy chrome];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"This feature isn’t available to you [Report a Problem]" value:@"localized string not found" table:0];
    v11 = [UIAlertController alertControllerWithTitle:0 message:v10 preferredStyle:1];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"OK [Report a Problem push]" value:@"localized string not found" table:0];
    v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
    [v11 addAction:v14];

    [(SearchResult *)chrome3 _maps_topMostPresentViewController:v11 animated:1 completion:0];
  }

LABEL_5:
}

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = actionCopy;
    mapItem = [v8 mapItem];

    if (mapItem)
    {
      mapItem2 = [v8 mapItem];
      [self _showRAPForMapItem:mapItem2 inContext:contextCopy];
LABEL_4:

LABEL_15:
      goto LABEL_16;
    }

    response = [v8 response];

    if (!response)
    {
      rapInfo = [v8 rapInfo];

      if (rapInfo)
      {
        chrome = [contextCopy chrome];
        rapInfo2 = [v8 rapInfo];
        rapId = [rapInfo2 rapId];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10071FEF8;
        v38[3] = &unk_101638D38;
        v39 = contextCopy;
        v40 = chrome;
        coordinator = chrome;
        [RAPRecordManager fetchRAPRecordsMatchingProblemId:rapId completion:v38];
      }

      else
      {
        locationQueryItem = [v8 locationQueryItem];

        if (locationQueryItem)
        {
          chrome2 = [contextCopy chrome];
          mapItem2 = [chrome2 currentTraits];

          objc_initWeak(&location, self);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_100720010;
          v34[3] = &unk_101627808;
          objc_copyWeak(&v36, &location);
          v35 = contextCopy;
          [v8 resolveMapItemWithTraits:mapItem2 completion:v34];

          objc_destroyWeak(&v36);
          objc_destroyWeak(&location);
          goto LABEL_4;
        }

        if (![v8 showReports])
        {
          goto LABEL_15;
        }

        coordinator = [contextCopy coordinator];
        [coordinator viewControllerShowReports:0];
      }

LABEL_14:

      goto LABEL_15;
    }

    v12 = +[UIApplication sharedMapsDelegate];
    poiSearchManager = [v12 poiSearchManager];
    [poiSearchManager didReceiveRAPNotification];

    response2 = [v8 response];
    LOBYTE(location) = 0;
    canDisplayAdditionalUI = [response2 canDisplayAdditionalUI];
    v50 = 0;
    v51[0] = 0;
    v16 = [response2 getSingleServerSideAlertTitle:v51 message:&v50 messageIsSameAsNotificationTitle:&location];
    v17 = v51[0];
    v18 = v50;
    if (v16)
    {
      if (location != 1)
      {
        v19 = 1;
LABEL_13:
        chrome3 = [contextCopy chrome];
        appCoordinator = [contextCopy appCoordinator];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_10071FCF8;
        v41[3] = &unk_1016277C0;
        v46 = v19;
        v42 = v17;
        v43 = v18;
        v47 = canDisplayAdditionalUI;
        v44 = response2;
        v45 = chrome3;
        v29 = chrome3;
        coordinator = response2;
        v30 = v18;
        v31 = v17;
        [appCoordinator displayOrScheduleDisplayOfEnqueuedFixedProblem:v41];

        goto LABEL_14;
      }
    }

    else
    {
      v48 = 0;
      v49 = 0;
      [response2 getDefaultAlertTitle:&v49 alertMessage:&v48];
      v25 = v49;

      v26 = v48;
      v17 = v25;
      v18 = v26;
    }

    v19 = canDisplayAdditionalUI ^ 1;
    goto LABEL_13;
  }

LABEL_16:
}

@end