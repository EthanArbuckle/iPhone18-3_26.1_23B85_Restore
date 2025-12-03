@interface OfflineMapPairedDeviceDetailsSectionController
- (OfflineMapPairedDeviceDetailsSectionController)initWithSubscriptionInfo:(id)info device:(id)device;
- (id)_actions;
- (id)_subscriptionState;
- (void)_didStopDownload;
@end

@implementation OfflineMapPairedDeviceDetailsSectionController

- (void)_didStopDownload
{
  [GEOAPPortal captureUserAction:483 target:112 value:0];
  actionDelegate = [(OfflineMapDeviceDetailsSectionController *)self actionDelegate];
  subscriptionInfo = [(OfflineMapSectionController *)self subscriptionInfo];
  [actionDelegate offlineMapDetailsActionSectionControllerDidSelectRemoveFromPairedDevice:subscriptionInfo];
}

- (id)_actions
{
  v3 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  _subscriptionState = [(OfflineMapPairedDeviceDetailsSectionController *)self _subscriptionState];
  v5 = _subscriptionState;
  if (_subscriptionState)
  {
    loadState = [_subscriptionState loadState];
    if ((loadState - 1) < 2)
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
      title = [(SimpleContaineeAction *)v11 title];
      [(FooterContaineeAction *)v11 setAccessibilityLabel:title];

      [v3 addObject:v11];
    }

    else
    {
      if (loadState && loadState != 3)
      {
        goto LABEL_13;
      }

      downloadState = [v5 downloadState];
      if (downloadState > 5)
      {
        goto LABEL_13;
      }

      if (((1 << downloadState) & 0x39) == 0)
      {
        goto LABEL_13;
      }

      if ([v5 downloadState] == 5)
      {
        userInfo = [v5 userInfo];
        v9 = [userInfo objectForKeyedSubscript:GEOMapDataSubscriptionStateWaitingReasonKey];
        unsignedIntegerValue = [v9 unsignedIntegerValue];

        if ((unsignedIntegerValue & 8) != 0)
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
      title2 = [(SimpleContaineeAction *)v11 title];
      [(FooterContaineeAction *)v11 setAccessibilityLabel:title2];

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
    title3 = [(SimpleContaineeAction *)v11 title];
    [(FooterContaineeAction *)v11 setAccessibilityLabel:title3];

    [v3 addObject:v11];
  }

  objc_destroyWeak(v14);

LABEL_13:
  objc_destroyWeak(&location);

  return v3;
}

- (id)_subscriptionState
{
  subscriptionInfo = [(OfflineMapSectionController *)self subscriptionInfo];
  pairedDeviceState = [subscriptionInfo pairedDeviceState];

  return pairedDeviceState;
}

- (OfflineMapPairedDeviceDetailsSectionController)initWithSubscriptionInfo:(id)info device:(id)device
{
  deviceCopy = device;
  v8 = NRDevicePropertyName;
  infoCopy = info;
  v10 = [deviceCopy valueForProperty:v8];
  v14.receiver = self;
  v14.super_class = OfflineMapPairedDeviceDetailsSectionController;
  v11 = [(OfflineMapDeviceDetailsSectionController *)&v14 initWithSubscriptionInfo:infoCopy deviceName:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_device, device);
    v12 = v11;
  }

  return v11;
}

@end