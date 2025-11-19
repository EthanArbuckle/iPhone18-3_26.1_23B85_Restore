@interface PresentRAPActionHandler
+ (void)_showErrorMessageinContext:(id)a3;
+ (void)_showRAPForMapItem:(id)a3 inContext:(id)a4;
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation PresentRAPActionHandler

+ (void)_showErrorMessageinContext:(id)a3
{
  v9 = [a3 chrome];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Location Details Not Available [Report a Problem]" value:@"localized string not found" table:0];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OK [Report a Problem push]" value:@"localized string not found" table:0];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];
  [v5 addAction:v8];

  [v9 _maps_topMostPresentViewController:v5 animated:1 completion:0];
}

+ (void)_showRAPForMapItem:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_MKRAPIsAvailable() && !sub_1007413D0())
  {
    if (([v6 _isMapItemTypeBrand] & 1) == 0)
    {
      [v6 _coordinate];
      if (fabs(v16) > 180.0 || v15 < -90.0 || v15 > 90.0)
      {
        [a1 _showErrorMessageinContext:v7];
        goto LABEL_5;
      }
    }

    v8 = [[SearchResult alloc] initWithMapItem:v6];
    if (_MKRAPIsAvailable() && (sub_1007413D0() & 1) == 0 && v8)
    {
      v17 = [v7 chrome];
      v18 = [v17 mapSelectionManager];
      [v18 selectMapItem:v6 animated:0];

      v19 = [v7 chrome];
      v20 = [v19 _maps_mapsSceneDelegate];
      v21 = [v20 rapPresenter];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10071F890;
      v22[3] = &unk_10163BCB0;
      v23 = v8;
      [v21 presentReportAProblemFromPlaceCardViewController:0 editingContext:v22 overriddenUserInterfaceStyle:0 sourceView:0 entryPoint:201 completion:0];
    }
  }

  else
  {
    v8 = [v7 chrome];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"This feature isn’t available to you [Report a Problem]" value:@"localized string not found" table:0];
    v11 = [UIAlertController alertControllerWithTitle:0 message:v10 preferredStyle:1];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"OK [Report a Problem push]" value:@"localized string not found" table:0];
    v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
    [v11 addAction:v14];

    [(SearchResult *)v8 _maps_topMostPresentViewController:v11 animated:1 completion:0];
  }

LABEL_5:
}

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 mapItem];

    if (v9)
    {
      v10 = [v8 mapItem];
      [a1 _showRAPForMapItem:v10 inContext:v7];
LABEL_4:

LABEL_15:
      goto LABEL_16;
    }

    v11 = [v8 response];

    if (!v11)
    {
      v20 = [v8 rapInfo];

      if (v20)
      {
        v21 = [v7 chrome];
        v22 = [v8 rapInfo];
        v23 = [v22 rapId];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10071FEF8;
        v38[3] = &unk_101638D38;
        v39 = v7;
        v40 = v21;
        v24 = v21;
        [RAPRecordManager fetchRAPRecordsMatchingProblemId:v23 completion:v38];
      }

      else
      {
        v32 = [v8 locationQueryItem];

        if (v32)
        {
          v33 = [v7 chrome];
          v10 = [v33 currentTraits];

          objc_initWeak(&location, a1);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_100720010;
          v34[3] = &unk_101627808;
          objc_copyWeak(&v36, &location);
          v35 = v7;
          [v8 resolveMapItemWithTraits:v10 completion:v34];

          objc_destroyWeak(&v36);
          objc_destroyWeak(&location);
          goto LABEL_4;
        }

        if (![v8 showReports])
        {
          goto LABEL_15;
        }

        v24 = [v7 coordinator];
        [v24 viewControllerShowReports:0];
      }

LABEL_14:

      goto LABEL_15;
    }

    v12 = +[UIApplication sharedMapsDelegate];
    v13 = [v12 poiSearchManager];
    [v13 didReceiveRAPNotification];

    v14 = [v8 response];
    LOBYTE(location) = 0;
    v15 = [v14 canDisplayAdditionalUI];
    v50 = 0;
    v51[0] = 0;
    v16 = [v14 getSingleServerSideAlertTitle:v51 message:&v50 messageIsSameAsNotificationTitle:&location];
    v17 = v51[0];
    v18 = v50;
    if (v16)
    {
      if (location != 1)
      {
        v19 = 1;
LABEL_13:
        v27 = [v7 chrome];
        v28 = [v7 appCoordinator];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_10071FCF8;
        v41[3] = &unk_1016277C0;
        v46 = v19;
        v42 = v17;
        v43 = v18;
        v47 = v15;
        v44 = v14;
        v45 = v27;
        v29 = v27;
        v24 = v14;
        v30 = v18;
        v31 = v17;
        [v28 displayOrScheduleDisplayOfEnqueuedFixedProblem:v41];

        goto LABEL_14;
      }
    }

    else
    {
      v48 = 0;
      v49 = 0;
      [v14 getDefaultAlertTitle:&v49 alertMessage:&v48];
      v25 = v49;

      v26 = v48;
      v17 = v25;
      v18 = v26;
    }

    v19 = v15 ^ 1;
    goto LABEL_13;
  }

LABEL_16:
}

@end