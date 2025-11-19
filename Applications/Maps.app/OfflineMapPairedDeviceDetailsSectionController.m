@interface OfflineMapPairedDeviceDetailsSectionController
- (OfflineMapPairedDeviceDetailsSectionController)initWithSubscriptionInfo:(id)a3 device:(id)a4;
- (id)_actions;
- (id)_subscriptionState;
- (void)_didStopDownload;
@end

@implementation OfflineMapPairedDeviceDetailsSectionController

- (void)_didStopDownload
{
  [GEOAPPortal captureUserAction:483 target:112 value:0];
  v4 = [(OfflineMapDeviceDetailsSectionController *)self actionDelegate];
  v3 = [(OfflineMapSectionController *)self subscriptionInfo];
  [v4 offlineMapDetailsActionSectionControllerDidSelectRemoveFromPairedDevice:v3];
}

- (id)_actions
{
  v3 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  v4 = [(OfflineMapPairedDeviceDetailsSectionController *)self _subscriptionState];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 loadState];
    if ((v6 - 1) < 2)
    {
      v11 = objc_alloc_init(FooterContaineeAction);
      v19 = +[NSBundle mainBundle];
      v20 = [v19 localizedStringForKey:@"MAP_DETAILS_DELETE_FROM_WATCH_ACTION" value:@"localized string not found" table:@"Offline"];
      [(SimpleContaineeAction *)v11 setTitle:v20];

      [(SimpleContaineeAction *)v11 setStyle:1];
      [(FooterContaineeAction *)v11 setCellStyle:1];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1008A6BE0;
      v28[3] = &unk_101656BC8;
      v14 = &v29;
      objc_copyWeak(&v29, &location);
      [(FooterContaineeAction *)v11 setActionBlock:v28];
      [(SimpleContaineeAction *)v11 setAccessibilityIdentifier:@"DeleteFromWatchButton"];
      v21 = [(SimpleContaineeAction *)v11 title];
      [(FooterContaineeAction *)v11 setAccessibilityLabel:v21];

      [v3 addObject:v11];
    }

    else
    {
      if (v6 && v6 != 3)
      {
        goto LABEL_13;
      }

      v7 = [v5 downloadState];
      if (v7 > 5)
      {
        goto LABEL_13;
      }

      if (((1 << v7) & 0x39) == 0)
      {
        goto LABEL_13;
      }

      if ([v5 downloadState] == 5)
      {
        v8 = [v5 userInfo];
        v9 = [v8 objectForKeyedSubscript:GEOMapDataSubscriptionStateWaitingReasonKey];
        v10 = [v9 unsignedIntegerValue];

        if ((v10 & 8) != 0)
        {
          goto LABEL_13;
        }
      }

      v11 = objc_alloc_init(FooterContaineeAction);
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"MAP_DETAILS_DOWNLOAD_NOW_WATCH_ACTION" value:@"localized string not found" table:@"Offline"];
      [(SimpleContaineeAction *)v11 setTitle:v13];

      [(SimpleContaineeAction *)v11 setStyle:0];
      [(FooterContaineeAction *)v11 setCellStyle:1];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1008A6B3C;
      v30[3] = &unk_101656BC8;
      v14 = &v31;
      objc_copyWeak(&v31, &location);
      [(FooterContaineeAction *)v11 setActionBlock:v30];
      [(SimpleContaineeAction *)v11 setAccessibilityIdentifier:@"DownloadNowWatchButton"];
      v15 = [(SimpleContaineeAction *)v11 title];
      [(FooterContaineeAction *)v11 setAccessibilityLabel:v15];

      [v3 addObject:v11];
    }
  }

  else
  {
    v11 = objc_alloc_init(FooterContaineeAction);
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"MAP_DETAILS_ADD_TO_WATCH_ACTION" value:@"localized string not found" table:@"Offline"];
    [(SimpleContaineeAction *)v11 setTitle:v17];

    [(SimpleContaineeAction *)v11 setStyle:0];
    [(FooterContaineeAction *)v11 setCellStyle:1];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1008A6C6C;
    v26 = &unk_101656BC8;
    v14 = &v27;
    objc_copyWeak(&v27, &location);
    [(FooterContaineeAction *)v11 setActionBlock:&v23];
    [(SimpleContaineeAction *)v11 setAccessibilityIdentifier:@"DownloadToWatchButton", v23, v24, v25, v26];
    v18 = [(SimpleContaineeAction *)v11 title];
    [(FooterContaineeAction *)v11 setAccessibilityLabel:v18];

    [v3 addObject:v11];
  }

  objc_destroyWeak(v14);

LABEL_13:
  objc_destroyWeak(&location);

  return v3;
}

- (id)_subscriptionState
{
  v2 = [(OfflineMapSectionController *)self subscriptionInfo];
  v3 = [v2 pairedDeviceState];

  return v3;
}

- (OfflineMapPairedDeviceDetailsSectionController)initWithSubscriptionInfo:(id)a3 device:(id)a4
{
  v7 = a4;
  v8 = NRDevicePropertyName;
  v9 = a3;
  v10 = [v7 valueForProperty:v8];
  v14.receiver = self;
  v14.super_class = OfflineMapPairedDeviceDetailsSectionController;
  v11 = [(OfflineMapDeviceDetailsSectionController *)&v14 initWithSubscriptionInfo:v9 deviceName:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_device, a4);
    v12 = v11;
  }

  return v11;
}

@end