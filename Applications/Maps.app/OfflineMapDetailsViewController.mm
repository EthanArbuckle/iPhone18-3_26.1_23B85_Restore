@interface OfflineMapDetailsViewController
- (OfflineMapDetailsViewController)initWithSubscriptionInfo:(id)info;
- (OfflineMapsManagementActionCoordination)delegate;
- (void)_dismiss;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateActiveWatchSection:(BOOL)section;
- (void)_updateCurrentSubscriptionInfo:(id)info;
- (void)didDismissByGesture;
- (void)lastUpdatedDateDidChange:(id)change;
- (void)lastUpdatedDateForPairedDeviceDidChange:(id)change;
- (void)offlineMapDetailsActionSectionControllerDidSelectAddToPairedDevice:(id)device;
- (void)offlineMapDetailsActionSectionControllerDidSelectDeleteMap:(id)map;
- (void)offlineMapDetailsActionSectionControllerDidSelectDownloadNowOnPairedDevice:(id)device;
- (void)offlineMapDetailsActionSectionControllerDidSelectPauseDownload:(id)download;
- (void)offlineMapDetailsActionSectionControllerDidSelectRemoveFromPairedDevice:(id)device;
- (void)offlineMapDetailsActionSectionControllerDidSelectRenameMap:(id)map completionHandler:(id)handler;
- (void)offlineMapDetailsActionSectionControllerDidSelectResizeMap:(id)map;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setSubscriptionInfo:(id)info;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation OfflineMapDetailsViewController

- (OfflineMapsManagementActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)lastUpdatedDateForPairedDeviceDidChange:(id)change
{
  changeCopy = change;
  activeWatchDetailsController = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
  [activeWatchDetailsController setLastUpdatedDate:changeCopy];
}

- (void)lastUpdatedDateDidChange:(id)change
{
  changeCopy = change;
  currentDeviceDetailsController = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
  [currentDeviceDetailsController setLastUpdatedDate:changeCopy];
}

- (void)offlineMapDetailsActionSectionControllerDidSelectDownloadNowOnPairedDevice:(id)device
{
  deviceCopy = device;
  subscriptionManager = [(OfflineMapDetailsViewController *)self subscriptionManager];
  subscription = [deviceCopy subscription];

  identifier = [subscription identifier];
  [subscriptionManager startDownloadForPairedDeviceSubscriptionIdentifier:identifier mode:1];
}

- (void)offlineMapDetailsActionSectionControllerDidSelectRemoveFromPairedDevice:(id)device
{
  deviceCopy = device;
  subscriptionInfo = [(OfflineMapDetailsViewController *)self subscriptionInfo];
  subscription = [subscriptionInfo subscription];
  displayName = [subscription displayName];
  if ([displayName length])
  {
    subscriptionInfo2 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    subscription2 = [subscriptionInfo2 subscription];
    displayName2 = [subscription2 displayName];
  }

  else
  {
    subscriptionInfo2 = +[NSBundle mainBundle];
    displayName2 = [subscriptionInfo2 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];
  }

  v10 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v10 getActivePairedDevice];

  v26 = getActivePairedDevice;
  v12 = [getActivePairedDevice valueForProperty:NRDevicePropertyName];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"REMOVE_OFFLINE_MAP_FROM_PAIRED_DEVICE_CONFIRMATION_MESSAGE" value:@"localized string not found" table:@"Offline"];
  v27 = displayName2;
  v15 = [NSString localizedStringWithFormat:v14, displayName2, v12];

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
  v24 = deviceCopy;
  v30 = v24;
  v25 = [UIAlertAction actionWithTitle:v23 style:2 handler:v29];

  [v18 addAction:v25];
  [v18 setPreferredAction:v25];
  [(OfflineMapDetailsViewController *)self presentViewController:v18 animated:1 completion:0];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)offlineMapDetailsActionSectionControllerDidSelectAddToPairedDevice:(id)device
{
  deviceCopy = device;
  subscriptionManager = [(OfflineMapDetailsViewController *)self subscriptionManager];
  subscription = [deviceCopy subscription];
  identifier = [subscription identifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100DA2894;
  v9[3] = &unk_10165F7B8;
  v10 = deviceCopy;
  v8 = deviceCopy;
  [subscriptionManager setSubscriptionWithIdentifier:identifier shouldSyncToPairedDevice:1 callbackQueue:&_dispatch_main_q completionHandler:v9];
}

- (void)offlineMapDetailsActionSectionControllerDidSelectPauseDownload:(id)download
{
  downloadCopy = download;
  subscriptionManager = [(OfflineMapDetailsViewController *)self subscriptionManager];
  subscription = [downloadCopy subscription];

  identifier = [subscription identifier];
  [subscriptionManager cancelDownloadForSubscriptionIdentifier:identifier];
}

- (void)offlineMapDetailsActionSectionControllerDidSelectResizeMap:(id)map
{
  mapCopy = map;
  delegate = [(OfflineMapDetailsViewController *)self delegate];
  [delegate presentOfflineMapRegionSelectorForSubscriptionInfo:mapCopy];
}

- (void)offlineMapDetailsActionSectionControllerDidSelectRenameMap:(id)map completionHandler:(id)handler
{
  handlerCopy = handler;
  mapCopy = map;
  delegate = [(OfflineMapDetailsViewController *)self delegate];
  [delegate presentRenameOfflineMapForSubscriptionInfo:mapCopy completionHandler:handlerCopy];
}

- (void)offlineMapDetailsActionSectionControllerDidSelectDeleteMap:(id)map
{
  mapCopy = map;
  subscriptionInfo = [(OfflineMapDetailsViewController *)self subscriptionInfo];
  subscription = [subscriptionInfo subscription];
  displayName = [subscription displayName];
  if ([displayName length])
  {
    subscriptionInfo2 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    subscription2 = [subscriptionInfo2 subscription];
    displayName2 = [subscription2 displayName];
  }

  else
  {
    subscriptionInfo2 = +[NSBundle mainBundle];
    displayName2 = [subscriptionInfo2 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];
  }

  v33 = mapCopy;
  pairedDeviceState = [mapCopy pairedDeviceState];

  if (!pairedDeviceState || (+[NRPairedDeviceRegistry sharedInstance](NRPairedDeviceRegistry, "sharedInstance"), v12 = objc_claimAutoreleasedReturnValue(), [v12 getActivePairedDevice], v13 = objc_claimAutoreleasedReturnValue(), v12, !v13) || (objc_msgSend(v13, "valueForProperty:", NRDevicePropertyName), v14 = objc_claimAutoreleasedReturnValue(), +[NSBundle mainBundle](NSBundle, "mainBundle"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "localizedStringForKey:value:table:", @"DELETE_OFFLINE_MAP_CONFIRMATION_MESSAGE_PAIRED_DEVICE", @"localized string not found", @"Offline"), v16 = objc_claimAutoreleasedReturnValue(), +[UIDevice currentDevice](UIDevice, "currentDevice"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "name"), v18 = displayName2, v19 = objc_claimAutoreleasedReturnValue(), +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v16, v18, v19, v14), v20 = objc_claimAutoreleasedReturnValue(), v19, displayName2 = v18, v17, v16, v15, v14, v13, !v20))
  {
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"DELETE_OFFLINE_MAP_CONFIRMATION_MESSAGE" value:@"localized string not found" table:@"Offline"];
    v20 = [NSString localizedStringWithFormat:v22, displayName2];
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

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v5 = v4;
  if (v4 > 0.0 != [scrollCopy clipsToBounds])
  {
    [scrollCopy setClipsToBounds:v5 > 0.0];
  }

  [scrollCopy contentOffset];
  v7 = v6;
  detailsSectionController = [(OfflineMapDetailsViewController *)self detailsSectionController];
  sectionView = [detailsSectionController sectionView];
  [sectionView frame];
  MinY = CGRectGetMinY(v18);
  detailsSectionController2 = [(OfflineMapDetailsViewController *)self detailsSectionController];
  [detailsSectionController2 regionNameBottomOffsetFromTop];
  v13 = v12 + MinY;

  titleHeaderView = [(OfflineMapDetailsViewController *)self titleHeaderView];
  LODWORD(sectionView) = [titleHeaderView showTitle];

  if (v7 >= v13 != sectionView)
  {
    titleHeaderView2 = [(OfflineMapDetailsViewController *)self titleHeaderView];
    [titleHeaderView2 setShowTitle:v7 >= v13];
  }
}

- (void)didDismissByGesture
{
  [(OfflineMapDetailsViewController *)self _dismiss];
  v3.receiver = self;
  v3.super_class = OfflineMapDetailsViewController;
  [(ContaineeViewController *)&v3 didDismissByGesture];
}

- (void)setSubscriptionInfo:(id)info
{
  infoCopy = info;
  if (self->_subscriptionInfo != infoCopy)
  {
    v22 = infoCopy;
    objc_storeStrong(&self->_subscriptionInfo, info);
    subscriptionInfo = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    subscription = [subscriptionInfo subscription];
    displayName = [subscription displayName];
    v10 = [displayName length];
    if (v10)
    {
      subscriptionInfo2 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
      subscription2 = [subscriptionInfo2 subscription];
      [subscription2 displayName];
    }

    else
    {
      subscriptionInfo2 = +[NSBundle mainBundle];
      [subscriptionInfo2 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];
    }
    v12 = ;
    titleHeaderView = [(OfflineMapDetailsViewController *)self titleHeaderView];
    [titleHeaderView setTitle:v12];

    if (v10)
    {

      v12 = subscription2;
    }

    subscriptionInfo3 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    detailsSectionController = [(OfflineMapDetailsViewController *)self detailsSectionController];
    [detailsSectionController setSubscriptionInfo:subscriptionInfo3];

    subscriptionInfo4 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    currentDeviceDetailsController = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
    [currentDeviceDetailsController setSubscriptionInfo:subscriptionInfo4];

    subscriptionInfo5 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    activeWatchDetailsController = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
    [activeWatchDetailsController setSubscriptionInfo:subscriptionInfo5];

    subscriptionInfo6 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    footerSectionController = [(OfflineMapDetailsViewController *)self footerSectionController];
    [footerSectionController setSubscriptionInfo:subscriptionInfo6];

    infoCopy = v22;
  }
}

- (void)_updateCurrentSubscriptionInfo:(id)info
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = info;
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
        subscriptionInfo = [(OfflineMapDetailsViewController *)self subscriptionInfo];
        subscription = [subscriptionInfo subscription];
        identifier = [subscription identifier];
        subscription2 = [v7 subscription];
        identifier2 = [subscription2 identifier];
        v13 = [identifier isEqualToString:identifier2];

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
  delegate = [(OfflineMapDetailsViewController *)self delegate];
  [delegate closeOfflineMapDetails];
}

- (void)_setupConstraints
{
  titleHeaderView = [(OfflineMapDetailsViewController *)self titleHeaderView];
  topAnchor = [titleHeaderView topAnchor];
  headerView = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v44[0] = v39;
  titleHeaderView2 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  leadingAnchor = [titleHeaderView2 leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[1] = v34;
  titleHeaderView3 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  trailingAnchor = [titleHeaderView3 trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v44[2] = v29;
  titleHeaderView4 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  bottomAnchor = [titleHeaderView4 bottomAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView4 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v44[3] = v24;
  contentStackView = [(OfflineMapDetailsViewController *)self contentStackView];
  topAnchor3 = [contentStackView topAnchor];
  contentView = [(ContaineeViewController *)self contentView];
  topAnchor4 = [contentView topAnchor];
  v19 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v44[4] = v19;
  contentStackView2 = [(OfflineMapDetailsViewController *)self contentStackView];
  leadingAnchor3 = [contentStackView2 leadingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  leadingAnchor4 = [contentView2 leadingAnchor];
  v14 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v44[5] = v14;
  contentStackView3 = [(OfflineMapDetailsViewController *)self contentStackView];
  trailingAnchor3 = [contentStackView3 trailingAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView3 trailingAnchor];
  v6 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v44[6] = v6;
  contentStackView4 = [(OfflineMapDetailsViewController *)self contentStackView];
  bottomAnchor3 = [contentStackView4 bottomAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  bottomAnchor4 = [contentView4 bottomAnchor];
  v11 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v44[7] = v11;
  v12 = [NSArray arrayWithObjects:v44 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_updateActiveWatchSection:(BOOL)section
{
  sectionCopy = section;
  if (section)
  {
    activeWatchDetailsController = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];

    if (activeWatchDetailsController)
    {
      contentStackView = self->_contentStackView;
      activeWatchDetailsController2 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
      sectionView = [activeWatchDetailsController2 sectionView];
      [(MUScrollableStackView *)contentStackView removeArrangedSubview:sectionView];
    }

    if ((MapsFeature_IsEnabled_StandaloneWatchOffline() & 1) == 0)
    {
      v9 = self->_contentStackView;
      currentDeviceDetailsController = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
      sectionView2 = [currentDeviceDetailsController sectionView];
      [(MUScrollableStackView *)v9 setCustomSpacing:sectionView2 afterView:3.40282347e38];

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
  getActivePairedDeviceExcludingAltAccount = [v12 getActivePairedDeviceExcludingAltAccount];

  if (getActivePairedDeviceExcludingAltAccount && (v13 = [[NSUUID alloc] initWithUUIDString:@"3B512C1E-F8D5-4FE7-B109-1AD8EF7F924D"], v14 = objc_msgSend(getActivePairedDeviceExcludingAltAccount, "supportsCapability:", v13), v13, v14))
  {
    v15 = [OfflineMapPairedDeviceDetailsSectionController alloc];
    subscriptionInfo = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    v17 = [(OfflineMapPairedDeviceDetailsSectionController *)v15 initWithSubscriptionInfo:subscriptionInfo device:getActivePairedDeviceExcludingAltAccount];
    [(OfflineMapDetailsViewController *)self setActiveWatchDetailsController:v17];

    activeWatchDetailsController3 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
    [activeWatchDetailsController3 setActionDelegate:self];

    v19 = +[MapsOfflineUIHelper sharedHelper];
    lastUpdatedDateForPairedDevice = [v19 lastUpdatedDateForPairedDevice];
    activeWatchDetailsController4 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
    [activeWatchDetailsController4 setLastUpdatedDate:lastUpdatedDateForPairedDevice];

    if (sectionCopy)
    {
      arrangedSubviews = [(MUScrollableStackView *)self->_contentStackView arrangedSubviews];
      currentDeviceDetailsController2 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
      sectionView3 = [currentDeviceDetailsController2 sectionView];
      v25 = [arrangedSubviews indexOfObject:sectionView3];

      v26 = self->_contentStackView;
      activeWatchDetailsController5 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
      sectionView4 = [activeWatchDetailsController5 sectionView];
      [(MUScrollableStackView *)v26 insertArrangedSubview:sectionView4 atIndex:v25 + 1];

      v29 = self->_contentStackView;
      currentDeviceDetailsController3 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
      sectionView5 = [currentDeviceDetailsController3 sectionView];
      [(MUScrollableStackView *)v29 setCustomSpacing:sectionView5 afterView:24.0];
    }
  }

  else
  {
    if (sectionCopy)
    {
      v32 = self->_contentStackView;
      currentDeviceDetailsController4 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
      sectionView6 = [currentDeviceDetailsController4 sectionView];
      [(MUScrollableStackView *)v32 setCustomSpacing:sectionView6 afterView:3.40282347e38];
    }

    [(OfflineMapDetailsViewController *)self setActiveWatchDetailsController:0];
  }
}

- (void)_setupViews
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setPresentedModally:1];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 setTakesAvailableHeight:1];

  v6 = +[UIColor clearColor];
  view = [(OfflineMapDetailsViewController *)self view];
  [view setBackgroundColor:v6];

  v8 = [_TtC4Maps22MapsSubtitleHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(MapsSubtitleHeaderView *)v8 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(OfflineMapDetailsViewController *)self setTitleHeaderView:height];

  titleHeaderView = [(OfflineMapDetailsViewController *)self titleHeaderView];
  [titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];

  subscriptionInfo = [(OfflineMapDetailsViewController *)self subscriptionInfo];
  subscription = [subscriptionInfo subscription];
  displayName = [subscription displayName];
  v17 = [displayName length];
  if (v17)
  {
    subscriptionInfo2 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
    subscription2 = [subscriptionInfo2 subscription];
    [subscription2 displayName];
  }

  else
  {
    subscriptionInfo2 = +[NSBundle mainBundle];
    [subscriptionInfo2 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];
  }
  v19 = ;
  titleHeaderView2 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  [titleHeaderView2 setTitle:v19];

  if (v17)
  {

    v19 = subscription2;
  }

  titleHeaderView3 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  [titleHeaderView3 setDelegate:self];

  titleHeaderView4 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  [titleHeaderView4 setTrailingButtons:&off_1016EDA78];

  titleHeaderView5 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  [titleHeaderView5 setShowTitle:0];

  headerView = [(ContaineeViewController *)self headerView];
  titleHeaderView6 = [(OfflineMapDetailsViewController *)self titleHeaderView];
  [headerView addSubview:titleHeaderView6];

  v26 = [[MUScrollableStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(OfflineMapDetailsViewController *)self setContentStackView:v26];

  contentStackView = [(OfflineMapDetailsViewController *)self contentStackView];
  [contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentStackView2 = [(OfflineMapDetailsViewController *)self contentStackView];
  [contentStackView2 setSpacing:16.0];

  contentStackView3 = [(OfflineMapDetailsViewController *)self contentStackView];
  [contentStackView3 setAlwaysBounceVertical:1];

  contentStackView4 = [(OfflineMapDetailsViewController *)self contentStackView];
  [contentStackView4 setScrollEnabled:1];

  contentStackView5 = [(OfflineMapDetailsViewController *)self contentStackView];
  [contentStackView5 setDelegate:self];

  contentStackView6 = [(OfflineMapDetailsViewController *)self contentStackView];
  [contentStackView6 setClipsToBounds:0];

  contentView = [(ContaineeViewController *)self contentView];
  contentStackView7 = [(OfflineMapDetailsViewController *)self contentStackView];
  [contentView addSubview:contentStackView7];

  v35 = [[NSMutableArray alloc] initWithCapacity:2];
  v36 = [OfflineMapDetailsSectionController alloc];
  subscriptionInfo3 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
  v38 = [(OfflineMapDetailsSectionController *)v36 initWithSubscriptionInfo:subscriptionInfo3];
  [(OfflineMapDetailsViewController *)self setDetailsSectionController:v38];

  detailsSectionController = [(OfflineMapDetailsViewController *)self detailsSectionController];
  [detailsSectionController setActionDelegate:self];

  detailsSectionController2 = [(OfflineMapDetailsViewController *)self detailsSectionController];
  [v35 addObject:detailsSectionController2];

  v41 = [OfflineMapDeviceDetailsSectionController alloc];
  subscriptionInfo4 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
  v43 = [(OfflineMapDeviceDetailsSectionController *)v41 initWithSubscriptionInfo:subscriptionInfo4];
  [(OfflineMapDetailsViewController *)self setCurrentDeviceDetailsController:v43];

  v44 = +[MapsOfflineUIHelper sharedHelper];
  lastUpdatedDate = [v44 lastUpdatedDate];
  currentDeviceDetailsController = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
  [currentDeviceDetailsController setLastUpdatedDate:lastUpdatedDate];

  currentDeviceDetailsController2 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
  [v35 addObject:currentDeviceDetailsController2];

  [(OfflineMapDetailsViewController *)self _updateActiveWatchSection:0];
  activeWatchDetailsController = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];

  if (activeWatchDetailsController)
  {
    activeWatchDetailsController2 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];
    [v35 addObject:activeWatchDetailsController2];
  }

  v50 = [OfflineMapFooterActionsSectionController alloc];
  subscriptionInfo5 = [(OfflineMapDetailsViewController *)self subscriptionInfo];
  v52 = [(OfflineMapFooterActionsSectionController *)v50 initWithSubscriptionInfo:subscriptionInfo5];
  [(OfflineMapDetailsViewController *)self setFooterSectionController:v52];

  footerSectionController = [(OfflineMapDetailsViewController *)self footerSectionController];
  [footerSectionController setActionDelegate:self];

  footerSectionController2 = [(OfflineMapDetailsViewController *)self footerSectionController];
  [v35 addObject:footerSectionController2];

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
        sectionView = [*(*(&v100 + 1) + 8 * i) sectionView];
        [(MUScrollableStackView *)contentStackView addArrangedSubview:sectionView];
      }

      v57 = [v55 countByEnumeratingWithState:&v100 objects:v105 count:16];
    }

    while (v57);
  }

  activeWatchDetailsController3 = [(OfflineMapDetailsViewController *)self activeWatchDetailsController];

  if (activeWatchDetailsController3)
  {
    v63 = self->_contentStackView;
    currentDeviceDetailsController3 = [(OfflineMapDetailsViewController *)self currentDeviceDetailsController];
    sectionView2 = [currentDeviceDetailsController3 sectionView];
    [(MUScrollableStackView *)v63 setCustomSpacing:sectionView2 afterView:24.0];
  }

  if (GEOConfigGetBOOL())
  {
    v66 = objc_alloc_init(UIView);
    v67 = objc_alloc_init(UILabel);
    [(OfflineMapDetailsViewController *)self setLegalDisclaimerLabel:v67];

    v68 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:0];
    legalDisclaimerLabel = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    [legalDisclaimerLabel setFont:v68];

    v70 = +[UIColor secondaryLabelColor];
    legalDisclaimerLabel2 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    [legalDisclaimerLabel2 setTextColor:v70];

    legalDisclaimerLabel3 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    [legalDisclaimerLabel3 setNumberOfLines:0];

    v73 = +[NSBundle mainBundle];
    v74 = [v73 localizedStringForKey:@"REGION_DETAILS_FOOTER_TEXT" value:@"localized string not found" table:@"Offline"];
    legalDisclaimerLabel4 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    [legalDisclaimerLabel4 setText:v74];

    legalDisclaimerLabel5 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    [legalDisclaimerLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

    legalDisclaimerLabel6 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    [v66 addSubview:legalDisclaimerLabel6];

    legalDisclaimerLabel7 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    topAnchor = [legalDisclaimerLabel7 topAnchor];
    topAnchor2 = [v66 topAnchor];
    v96 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v104[0] = v96;
    legalDisclaimerLabel8 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    leadingAnchor = [legalDisclaimerLabel8 leadingAnchor];
    leadingAnchor2 = [v66 leadingAnchor];
    v92 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:32.0];
    v104[1] = v92;
    legalDisclaimerLabel9 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    trailingAnchor = [legalDisclaimerLabel9 trailingAnchor];
    v78 = v66;
    v91 = v66;
    trailingAnchor2 = [v66 trailingAnchor];
    v80 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-32.0];
    v104[2] = v80;
    legalDisclaimerLabel10 = [(OfflineMapDetailsViewController *)self legalDisclaimerLabel];
    bottomAnchor = [legalDisclaimerLabel10 bottomAnchor];
    bottomAnchor2 = [v78 bottomAnchor];
    v84 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v104[3] = v84;
    v85 = [NSArray arrayWithObjects:v104 count:4];
    [NSLayoutConstraint activateConstraints:v85];

    [(MUScrollableStackView *)self->_contentStackView addArrangedSubview:v91];
    v86 = self->_contentStackView;
    lastObject = [v55 lastObject];
    sectionView3 = [lastObject sectionView];
    [(MUScrollableStackView *)v86 setCustomSpacing:sectionView3 afterView:8.0];
  }

  [(OfflineMapDetailsViewController *)self setAccessibilityIdentifier:@"OfflineMapDetailsView"];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = OfflineMapDetailsViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:disappear];
  v4 = +[MapsOfflineUIHelper sharedHelper];
  [v4 removeObserver:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = OfflineMapDetailsViewController;
  [(ContaineeViewController *)&v5 viewWillAppear:appear];
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

- (OfflineMapDetailsViewController)initWithSubscriptionInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = OfflineMapDetailsViewController;
  v6 = [(OfflineMapDetailsViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionInfo, info);
    v8 = objc_alloc_init(GEOMapDataSubscriptionManager);
    [(OfflineMapDetailsViewController *)v7 setSubscriptionManager:v8];
  }

  return v7;
}

@end