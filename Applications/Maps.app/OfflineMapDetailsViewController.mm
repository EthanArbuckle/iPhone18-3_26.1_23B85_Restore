@interface OfflineMapDetailsViewController
- (OfflineMapDetailsViewController)initWithSubscriptionInfo:(id)a3;
- (OfflineMapsManagementActionCoordination)delegate;
- (void)_dismiss;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateActiveWatchSection:(BOOL)a3;
- (void)_updateCurrentSubscriptionInfo:(id)a3;
- (void)didDismissByGesture;
- (void)lastUpdatedDateDidChange:(id)a3;
- (void)lastUpdatedDateForPairedDeviceDidChange:(id)a3;
- (void)offlineMapDetailsActionSectionControllerDidSelectAddToPairedDevice:(id)a3;
- (void)offlineMapDetailsActionSectionControllerDidSelectDeleteMap:(id)a3;
- (void)offlineMapDetailsActionSectionControllerDidSelectDownloadNowOnPairedDevice:(id)a3;
- (void)offlineMapDetailsActionSectionControllerDidSelectPauseDownload:(id)a3;
- (void)offlineMapDetailsActionSectionControllerDidSelectRemoveFromPairedDevice:(id)a3;
- (void)offlineMapDetailsActionSectionControllerDidSelectRenameMap:(id)a3 completionHandler:(id)a4;
- (void)offlineMapDetailsActionSectionControllerDidSelectResizeMap:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setSubscriptionInfo:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation OfflineMapDetailsViewController

- (OfflineMapsManagementActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)lastUpdatedDateForPairedDeviceDidChange:(id)a3
{
  v4 = a3;
  v5 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
  [v5 setLastUpdatedDate:v4];
}

- (void)lastUpdatedDateDidChange:(id)a3
{
  v4 = a3;
  v5 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
  [v5 setLastUpdatedDate:v4];
}

- (void)offlineMapDetailsActionSectionControllerDidSelectDownloadNowOnPairedDevice:(id)a3
{
  v4 = a3;
  v7 = [(OfflineMapDetailsViewController *)self subscriptionManager];
  v5 = [v4 subscription];

  v6 = [v5 identifier];
  [v7 startDownloadForPairedDeviceSubscriptionIdentifier:v6 mode:1];
}

- (void)offlineMapDetailsActionSectionControllerDidSelectRemoveFromPairedDevice:(id)a3
{
  v28 = a3;
  v4 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
  v5 = [v4 subscription];
  v6 = [v5 displayName];
  if ([v6 length])
  {
    v7 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    v8 = [v7 subscription];
    v9 = [v8 displayName];
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v9 = [v7 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];
  }

  v10 = +[NRPairedDeviceRegistry sharedInstance];
  v11 = [v10 getActivePairedDevice];

  v26 = v11;
  v12 = [v11 valueForProperty:NRDevicePropertyName];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"REMOVE_OFFLINE_MAP_FROM_PAIRED_DEVICE_CONFIRMATION_MESSAGE" value:@"localized string not found" table:@"Offline"];
  v27 = v9;
  v15 = [NSString localizedStringWithFormat:v14, v9, v12];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"REMOVE_OFFLINE_MAP_FROM_PAIRED_DEVICE_CONFIRMATION_TITLE" value:@"localized string not found" table:@"Offline"];
  v18 = [UIAlertController alertControllerWithTitle:v17 message:v15 preferredStyle:1];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"REMOVE_OFFLINE_MAP_FROM_PAIRED_DEVICE_CONFIRMATION_ACTION_CANCEL" value:@"localized string not found" table:@"Offline"];
  v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:0];

  [v18 addAction:v21];
  objc_initWeak(&location, self);
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"REMOVE_OFFLINE_MAP_FROM_PAIRED_DEVICE_CONFIRMATION_ACTION_REMOVE" value:@"localized string not found" table:@"Offline"];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100DA25E8;
  v29[3] = &unk_1016540D8;
  objc_copyWeak(&v31, &location);
  v24 = v28;
  v30 = v24;
  v25 = [UIAlertAction actionWithTitle:v23 style:2 handler:v29];

  [v18 addAction:v25];
  [v18 setPreferredAction:v25];
  [(OfflineMapDetailsViewController *)self presentViewController:v18 animated:1 completion:0];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)offlineMapDetailsActionSectionControllerDidSelectAddToPairedDevice:(id)a3
{
  v4 = a3;
  v5 = [(OfflineMapDetailsViewController *)self subscriptionManager];
  v6 = [v4 subscription];
  v7 = [v6 identifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100DA2894;
  v9[3] = &unk_10165F7B8;
  v10 = v4;
  v8 = v4;
  [v5 setSubscriptionWithIdentifier:v7 shouldSyncToPairedDevice:1 callbackQueue:&_dispatch_main_q completionHandler:v9];
}

- (void)offlineMapDetailsActionSectionControllerDidSelectPauseDownload:(id)a3
{
  v4 = a3;
  v7 = [(OfflineMapDetailsViewController *)self subscriptionManager];
  v5 = [v4 subscription];

  v6 = [v5 identifier];
  [v7 cancelDownloadForSubscriptionIdentifier:v6];
}

- (void)offlineMapDetailsActionSectionControllerDidSelectResizeMap:(id)a3
{
  v4 = a3;
  v5 = [(OfflineMapDetailsViewController *)self delegate];
  [v5 presentOfflineMapRegionSelectorForSubscriptionInfo:v4];
}

- (void)offlineMapDetailsActionSectionControllerDidSelectRenameMap:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(OfflineMapDetailsViewController *)self delegate];
  [v8 presentRenameOfflineMapForSubscriptionInfo:v7 completionHandler:v6];
}

- (void)offlineMapDetailsActionSectionControllerDidSelectDeleteMap:(id)a3
{
  v4 = a3;
  v5 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
  v6 = [v5 subscription];
  v7 = [v6 displayName];
  if ([v7 length])
  {
    v8 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    v9 = [v8 subscription];
    v10 = [v9 displayName];
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v10 = [v8 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];
  }

  v33 = v4;
  v11 = [v4 pairedDeviceState];

  if (!v11 || (+[NRPairedDeviceRegistry sharedInstance](NRPairedDeviceRegistry, "sharedInstance"), v12 = objc_claimAutoreleasedReturnValue(), [v12 getActivePairedDevice], v13 = objc_claimAutoreleasedReturnValue(), v12, !v13) || (objc_msgSend(v13, "valueForProperty:", NRDevicePropertyName), v14 = objc_claimAutoreleasedReturnValue(), +[NSBundle mainBundle](NSBundle, "mainBundle"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "localizedStringForKey:value:table:", @"DELETE_OFFLINE_MAP_CONFIRMATION_MESSAGE_PAIRED_DEVICE", @"localized string not found", @"Offline"), v16 = objc_claimAutoreleasedReturnValue(), +[UIDevice currentDevice](UIDevice, "currentDevice"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "name"), v18 = v10, v19 = objc_claimAutoreleasedReturnValue(), +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v16, v18, v19, v14), v20 = objc_claimAutoreleasedReturnValue(), v19, v10 = v18, v17, v16, v15, v14, v13, !v20))
  {
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"DELETE_OFFLINE_MAP_CONFIRMATION_MESSAGE" value:@"localized string not found" table:@"Offline"];
    v20 = [NSString localizedStringWithFormat:v22, v10];
  }

  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"DELETE_OFFLINE_MAP_CONFIRMATION_TITLE" value:@"localized string not found" table:@"Offline"];
  v25 = [UIAlertController alertControllerWithTitle:v24 message:v20 preferredStyle:1];

  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"DELETE_OFFLINE_MAP_CONFIRMATION_ACTION_CANCEL" value:@"localized string not found" table:@"Offline"];
  v28 = [UIAlertAction actionWithTitle:v27 style:1 handler:0];

  [v25 addAction:v28];
  objc_initWeak(&location, self);
  v29 = +[NSBundle mainBundle];
  v30 = [v29 localizedStringForKey:@"DELETE_OFFLINE_MAP_CONFIRMATION_ACTION_DELETE" value:@"localized string not found" table:@"Offline"];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100DA2F34;
  v34[3] = &unk_1016540D8;
  objc_copyWeak(&v36, &location);
  v31 = v33;
  v35 = v31;
  v32 = [UIAlertAction actionWithTitle:v30 style:2 handler:v34];

  [v25 addAction:v32];
  [v25 setPreferredAction:v32];
  [(OfflineMapDetailsViewController *)self presentViewController:v25 animated:1 completion:0];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

- (void)scrollViewDidScroll:(id)a3
{
  v16 = a3;
  [v16 contentOffset];
  v5 = v4;
  if (v4 > 0.0 != [v16 clipsToBounds])
  {
    [v16 setClipsToBounds:v5 > 0.0];
  }

  [v16 contentOffset];
  v7 = v6;
  v8 = [(OfflineMapDetailsViewController *)self detailsSectionController];
  v9 = [v8 sectionView];
  [v9 frame];
  MinY = CGRectGetMinY(v18);
  v11 = [(OfflineMapDetailsViewController *)self detailsSectionController];
  [v11 regionNameBottomOffsetFromTop];
  v13 = v12 + MinY;

  v14 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  LODWORD(v9) = [v14 showTitle];

  if (v7 >= v13 != v9)
  {
    v15 = [(OfflineMapDetailsViewController *)self titleHeaderView];
    [v15 setShowTitle:v7 >= v13];
  }
}

- (void)didDismissByGesture
{
  [(OfflineMapDetailsViewController *)self _dismiss];
  v3.receiver = self;
  v3.super_class = OfflineMapDetailsViewController;
  [(ContaineeViewController *)&v3 didDismissByGesture];
}

- (void)setSubscriptionInfo:(id)a3
{
  v6 = a3;
  if (self->_subscriptionInfo != v6)
  {
    v22 = v6;
    objc_storeStrong(&self->_subscriptionInfo, a3);
    v7 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    v8 = [v7 subscription];
    v9 = [v8 displayName];
    v10 = [v9 length];
    if (v10)
    {
      v11 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
      v3 = [v11 subscription];
      [v3 displayName];
    }

    else
    {
      v11 = +[NSBundle mainBundle];
      [v11 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];
    }
    v12 = ;
    v13 = [(OfflineMapDetailsViewController *)self titleHeaderView];
    [v13 setTitle:v12];

    if (v10)
    {

      v12 = v3;
    }

    v14 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    v15 = [(OfflineMapDetailsViewController *)self detailsSectionController];
    [v15 setSubscriptionInfo:v14];

    v16 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    v17 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
    [v17 setSubscriptionInfo:v16];

    v18 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    v19 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
    [v19 setSubscriptionInfo:v18];

    v20 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    v21 = [(OfflineMapDetailsViewController *)self footerSectionController];
    [v21 setSubscriptionInfo:v20];

    v6 = v22;
  }
}

- (void)_updateCurrentSubscriptionInfo:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
        v9 = [v8 subscription];
        v10 = [v9 identifier];
        v11 = [v7 subscription];
        v12 = [v11 identifier];
        v13 = [v10 isEqualToString:v12];

        if (v13)
        {
          [(OfflineMapDetailsViewController *)self setSubscriptionInfo:v7];
          goto LABEL_11;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_dismiss
{
  v2 = [(OfflineMapDetailsViewController *)self delegate];
  [v2 closeOfflineMapDetails];
}

- (void)_setupConstraints
{
  v43 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  v41 = [v43 topAnchor];
  v42 = [(ContaineeViewController *)self headerView];
  v40 = [v42 topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v44[0] = v39;
  v38 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  v36 = [v38 leadingAnchor];
  v37 = [(ContaineeViewController *)self headerView];
  v35 = [v37 leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v44[1] = v34;
  v33 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  v31 = [v33 trailingAnchor];
  v32 = [(ContaineeViewController *)self headerView];
  v30 = [v32 trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v44[2] = v29;
  v28 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  v26 = [v28 bottomAnchor];
  v27 = [(ContaineeViewController *)self headerView];
  v25 = [v27 bottomAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v44[3] = v24;
  v23 = [(OfflineMapDetailsViewController *)self contentStackView];
  v21 = [v23 topAnchor];
  v22 = [(ContaineeViewController *)self contentView];
  v20 = [v22 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v44[4] = v19;
  v18 = [(OfflineMapDetailsViewController *)self contentStackView];
  v16 = [v18 leadingAnchor];
  v17 = [(ContaineeViewController *)self contentView];
  v15 = [v17 leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v44[5] = v14;
  v13 = [(OfflineMapDetailsViewController *)self contentStackView];
  v3 = [v13 trailingAnchor];
  v4 = [(ContaineeViewController *)self contentView];
  v5 = [v4 trailingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v44[6] = v6;
  v7 = [(OfflineMapDetailsViewController *)self contentStackView];
  v8 = [v7 bottomAnchor];
  v9 = [(ContaineeViewController *)self contentView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v44[7] = v11;
  v12 = [NSArray arrayWithObjects:v44 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_updateActiveWatchSection:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];

    if (v5)
    {
      contentStackView = self->_contentStackView;
      v7 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
      v8 = [v7 sectionView];
      [(MUScrollableStackView *)contentStackView removeArrangedSubview:v8];
    }

    if ((MapsFeature_IsEnabled_StandaloneWatchOffline() & 1) == 0)
    {
      v9 = self->_contentStackView;
      v10 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
      v11 = [v10 sectionView];
      [(MUScrollableStackView *)v9 setCustomSpacing:v11 afterView:3.40282347e38];

LABEL_11:

      [(OfflineMapDetailsViewController *)self setActiveWatchDetailsController:0];
      return;
    }
  }

  else if ((MapsFeature_IsEnabled_StandaloneWatchOffline() & 1) == 0)
  {
    goto LABEL_11;
  }

  v12 = +[NRPairedDeviceRegistry sharedInstance];
  v35 = [v12 getActivePairedDeviceExcludingAltAccount];

  if (v35 && (v13 = [[NSUUID alloc] initWithUUIDString:@"3B512C1E-F8D5-4FE7-B109-1AD8EF7F924D"], v14 = objc_msgSend(v35, "supportsCapability:", v13), v13, v14))
  {
    v15 = [OfflineMapPairedDeviceDetailsSectionController alloc];
    v16 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    v17 = [(OfflineMapPairedDeviceDetailsSectionController *)v15 initWithSubscriptionInfo:v16 device:v35];
    [(OfflineMapDetailsViewController *)self setActiveWatchDetailsController:v17];

    v18 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
    [v18 setActionDelegate:self];

    v19 = +[MapsOfflineUIHelper sharedHelper];
    v20 = [v19 lastUpdatedDateForPairedDevice];
    v21 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
    [v21 setLastUpdatedDate:v20];

    if (v3)
    {
      v22 = [(MUScrollableStackView *)self->_contentStackView arrangedSubviews];
      v23 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
      v24 = [v23 sectionView];
      v25 = [v22 indexOfObject:v24];

      v26 = self->_contentStackView;
      v27 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
      v28 = [v27 sectionView];
      [(MUScrollableStackView *)v26 insertArrangedSubview:v28 atIndex:v25 + 1];

      v29 = self->_contentStackView;
      v30 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
      v31 = [v30 sectionView];
      [(MUScrollableStackView *)v29 setCustomSpacing:v31 afterView:24.0];
    }
  }

  else
  {
    if (v3)
    {
      v32 = self->_contentStackView;
      v33 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
      v34 = [v33 sectionView];
      [(MUScrollableStackView *)v32 setCustomSpacing:v34 afterView:3.40282347e38];
    }

    [(OfflineMapDetailsViewController *)self setActiveWatchDetailsController:0];
  }
}

- (void)_setupViews
{
  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 setPresentedModally:1];

  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 setTakesAvailableHeight:1];

  v6 = +[UIColor clearColor];
  v7 = [(OfflineMapDetailsViewController *)self view];
  [v7 setBackgroundColor:v6];

  v8 = [_TtC4Maps22MapsSubtitleHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v12 = [(MapsSubtitleHeaderView *)v8 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(OfflineMapDetailsViewController *)self setTitleHeaderView:v12];

  v13 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
  v15 = [v14 subscription];
  v16 = [v15 displayName];
  v17 = [v16 length];
  if (v17)
  {
    v18 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    v2 = [v18 subscription];
    [v2 displayName];
  }

  else
  {
    v18 = +[NSBundle mainBundle];
    [v18 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];
  }
  v19 = ;
  v20 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  [v20 setTitle:v19];

  if (v17)
  {

    v19 = v2;
  }

  v21 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  [v21 setDelegate:self];

  v22 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  [v22 setTrailingButtons:&off_1016EDA78];

  v23 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  [v23 setShowTitle:0];

  v24 = [(ContaineeViewController *)self headerView];
  v25 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  [v24 addSubview:v25];

  v26 = [[MUScrollableStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(OfflineMapDetailsViewController *)self setContentStackView:v26];

  v27 = [(OfflineMapDetailsViewController *)self contentStackView];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = [(OfflineMapDetailsViewController *)self contentStackView];
  [v28 setSpacing:16.0];

  v29 = [(OfflineMapDetailsViewController *)self contentStackView];
  [v29 setAlwaysBounceVertical:1];

  v30 = [(OfflineMapDetailsViewController *)self contentStackView];
  [v30 setScrollEnabled:1];

  v31 = [(OfflineMapDetailsViewController *)self contentStackView];
  [v31 setDelegate:self];

  v32 = [(OfflineMapDetailsViewController *)self contentStackView];
  [v32 setClipsToBounds:0];

  v33 = [(ContaineeViewController *)self contentView];
  v34 = [(OfflineMapDetailsViewController *)self contentStackView];
  [v33 addSubview:v34];

  v35 = [[NSMutableArray alloc] initWithCapacity:2];
  v36 = [OfflineMapDetailsSectionController alloc];
  v37 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
  v38 = [(OfflineMapDetailsSectionController *)v36 initWithSubscriptionInfo:v37];
  [(OfflineMapDetailsViewController *)self setDetailsSectionController:v38];

  v39 = [(OfflineMapDetailsViewController *)self detailsSectionController];
  [v39 setActionDelegate:self];

  v40 = [(OfflineMapDetailsViewController *)self detailsSectionController];
  [v35 addObject:v40];

  v41 = [OfflineMapDeviceDetailsSectionController alloc];
  v42 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
  v43 = [(OfflineMapDeviceDetailsSectionController *)v41 initWithSubscriptionInfo:v42];
  [(OfflineMapDetailsViewController *)self setCurrentDeviceDetailsController:v43];

  v44 = +[MapsOfflineUIHelper sharedHelper];
  v45 = [v44 lastUpdatedDate];
  v46 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
  [v46 setLastUpdatedDate:v45];

  v47 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
  [v35 addObject:v47];

  [(OfflineMapDetailsViewController *)self _updateActiveWatchSection:0];
  v48 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];

  if (v48)
  {
    v49 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
    [v35 addObject:v49];
  }

  v50 = [OfflineMapFooterActionsSectionController alloc];
  v51 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
  v52 = [(OfflineMapFooterActionsSectionController *)v50 initWithSubscriptionInfo:v51];
  [(OfflineMapDetailsViewController *)self setFooterSectionController:v52];

  v53 = [(OfflineMapDetailsViewController *)self footerSectionController];
  [v53 setActionDelegate:self];

  v54 = [(OfflineMapDetailsViewController *)self footerSectionController];
  [v35 addObject:v54];

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v55 = v35;
  v56 = [v55 countByEnumeratingWithState:&v100 objects:v105 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v101;
    do
    {
      for (i = 0; i != v57; i = i + 1)
      {
        if (*v101 != v58)
        {
          objc_enumerationMutation(v55);
        }

        contentStackView = self->_contentStackView;
        v61 = [*(*(&v100 + 1) + 8 * i) sectionView];
        [(MUScrollableStackView *)contentStackView addArrangedSubview:v61];
      }

      v57 = [v55 countByEnumeratingWithState:&v100 objects:v105 count:16];
    }

    while (v57);
  }

  v62 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];

  if (v62)
  {
    v63 = self->_contentStackView;
    v64 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
    v65 = [v64 sectionView];
    [(MUScrollableStackView *)v63 setCustomSpacing:v65 afterView:24.0];
  }

  if (GEOConfigGetBOOL())
  {
    v66 = objc_alloc_init(UIView);
    v67 = objc_alloc_init(UILabel);
    [(OfflineMapDetailsViewController *)self setLegalDisclaimerLabel:v67];

    v68 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:0];
    v69 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    [v69 setFont:v68];

    v70 = +[UIColor secondaryLabelColor];
    v71 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    [v71 setTextColor:v70];

    v72 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    [v72 setNumberOfLines:0];

    v73 = +[NSBundle mainBundle];
    v74 = [v73 localizedStringForKey:@"REGION_DETAILS_FOOTER_TEXT" value:@"localized string not found" table:@"Offline"];
    v75 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    [v75 setText:v74];

    v76 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    [v76 setTranslatesAutoresizingMaskIntoConstraints:0];

    v77 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    [v66 addSubview:v77];

    v99 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    v98 = [v99 topAnchor];
    v97 = [v66 topAnchor];
    v96 = [v98 constraintEqualToAnchor:v97];
    v104[0] = v96;
    v95 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    v94 = [v95 leadingAnchor];
    v93 = [v66 leadingAnchor];
    v92 = [v94 constraintEqualToAnchor:v93 constant:32.0];
    v104[1] = v92;
    v90 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    v89 = [v90 trailingAnchor];
    v78 = v66;
    v91 = v66;
    v79 = [v66 trailingAnchor];
    v80 = [v89 constraintEqualToAnchor:v79 constant:-32.0];
    v104[2] = v80;
    v81 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    v82 = [v81 bottomAnchor];
    v83 = [v78 bottomAnchor];
    v84 = [v82 constraintEqualToAnchor:v83];
    v104[3] = v84;
    v85 = [NSArray arrayWithObjects:v104 count:4];
    [NSLayoutConstraint activateConstraints:v85];

    [(MUScrollableStackView *)self->_contentStackView addArrangedSubview:v91];
    v86 = self->_contentStackView;
    v87 = [v55 lastObject];
    v88 = [v87 sectionView];
    [(MUScrollableStackView *)v86 setCustomSpacing:v88 afterView:8.0];
  }

  [(OfflineMapDetailsViewController *)self setAccessibilityIdentifier:@"OfflineMapDetailsView"];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = OfflineMapDetailsViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:a3];
  v4 = +[MapsOfflineUIHelper sharedHelper];
  [v4 removeObserver:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = OfflineMapDetailsViewController;
  [(ContaineeViewController *)&v5 viewWillAppear:a3];
  v4 = +[MapsOfflineUIHelper sharedHelper];
  [v4 addObserver:self];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OfflineMapDetailsViewController;
  [(ContaineeViewController *)&v3 viewDidLoad];
  [(OfflineMapDetailsViewController *)self _setupViews];
  [(OfflineMapDetailsViewController *)self _setupConstraints];
}

- (OfflineMapDetailsViewController)initWithSubscriptionInfo:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = OfflineMapDetailsViewController;
  v6 = [(OfflineMapDetailsViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionInfo, a3);
    v8 = objc_alloc_init(GEOMapDataSubscriptionManager);
    [(OfflineMapDetailsViewController *)v7 setSubscriptionManager:v8];
  }

  return v7;
}

@end