@interface OfflineMapDeviceDetailsSectionController
- (OfflineMapDetailsActionSectionControllerDelegate)actionDelegate;
- (OfflineMapDeviceDetailsSectionController)initWithSubscriptionInfo:(id)info;
- (OfflineMapDeviceDetailsSectionController)initWithSubscriptionInfo:(id)info deviceName:(id)name;
- (id)_subscriptionState;
- (void)_commonInit;
- (void)_didStopDownload;
- (void)_registerKVOObservers;
- (void)_unregisterKVOObservers;
- (void)_updateRowViews;
- (void)_updateStateRow;
- (void)_updateWaitingRowWithDownloadState:(int64_t)state waitingReasons:(unint64_t)reasons userInfo:(id)info;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setLastUpdatedDate:(id)date;
- (void)setSubscriptionInfo:(id)info;
@end

@implementation OfflineMapDeviceDetailsSectionController

- (OfflineMapDetailsActionSectionControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_10192C8B0 == context)
  {
    if ([NSThread isMainThread:path])
    {

      [(OfflineMapDeviceDetailsSectionController *)self _updateRowViews];
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1008A5044;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = OfflineMapDeviceDetailsSectionController;
    [(OfflineMapDeviceDetailsSectionController *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_didStopDownload
{
  actionDelegate = [(OfflineMapDeviceDetailsSectionController *)self actionDelegate];
  subscriptionInfo = [(OfflineMapSectionController *)self subscriptionInfo];
  [actionDelegate offlineMapDetailsActionSectionControllerDidSelectPauseDownload:subscriptionInfo];
}

- (void)_updateWaitingRowWithDownloadState:(int64_t)state waitingReasons:(unint64_t)reasons userInfo:(id)info
{
  reasonsCopy = reasons;
  infoCopy = info;
  if (self->_waitingReasonRow)
  {
    v25 = infoCopy;
    if (state == 4)
    {
      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"MAP_DETAILS_STATE_DESCRIPTION_FAILED";
    }

    else
    {
      v12 = [infoCopy objectForKeyedSubscript:GEOMapDataSubscriptionStateWaitingMinimumBatteryLevelKey];
      unsignedIntegerValue = [v12 unsignedIntegerValue];

      if ((reasonsCopy & 8) != 0)
      {
        v15 = MGGetBoolAnswer();
        v10 = +[NSBundle mainBundle];
        if (v15)
        {
          v11 = @"MAP_DETAILS_WATCH_STATE_DESCRIPTION_WAITING_PAIRED_DEVICE_WLAN";
        }

        else
        {
          v11 = @"MAP_DETAILS_WATCH_STATE_DESCRIPTION_WAITING_PAIRED_DEVICE_WIFI";
        }
      }

      else
      {
        if ((reasonsCopy & 4) != 0)
        {
          v10 = objc_alloc_init(NSNumberFormatter);
          [v10 setNumberStyle:3];
          [v10 setMaximumFractionDigits:0];
          v16 = +[NSLocale autoupdatingCurrentLocale];
          [v10 setLocale:v16];

          v17 = [NSNumber numberWithDouble:unsignedIntegerValue * 0.01];
          v18 = [v10 stringFromNumber:v17];

          LODWORD(v17) = MGGetBoolAnswer();
          v19 = +[NSBundle mainBundle];
          v20 = v19;
          if (v17)
          {
            v21 = @"MAP_DETAILS_WATCH_STATE_DESCRIPTION_WAITING_WLAN_POWER_MIN_BATTERY";
          }

          else
          {
            v21 = @"MAP_DETAILS_WATCH_STATE_DESCRIPTION_WAITING_WIFI_POWER_MIN_BATTERY";
          }

          v22 = [v19 localizedStringForKey:v21 value:@"localized string not found" table:@"Offline"];
          v23 = [NSString localizedStringWithFormat:v22, v18];
          [(OfflineMapDeviceExplanatoryRowView *)self->_waitingReasonRow setText:v23];

          goto LABEL_18;
        }

        if ((~reasonsCopy & 3) != 0)
        {
          if ((reasonsCopy & 2) != 0)
          {
            v9 = +[NSBundle mainBundle];
            v10 = v9;
            v11 = @"MAP_DETAILS_WATCH_STATE_DESCRIPTION_WAITING_POWER";
            goto LABEL_17;
          }

          if ((reasonsCopy & 1) == 0)
          {
            v9 = +[NSBundle mainBundle];
            v10 = v9;
            v11 = @"MAP_DETAILS_WATCH_STATE_DESCRIPTION_WAITING_GENERIC";
            goto LABEL_17;
          }

          v24 = MGGetBoolAnswer();
          v10 = +[NSBundle mainBundle];
          if (v24)
          {
            v11 = @"MAP_DETAILS_WATCH_STATE_DESCRIPTION_WAITING_WLAN";
          }

          else
          {
            v11 = @"MAP_DETAILS_WATCH_STATE_DESCRIPTION_WAITING_WIFI";
          }
        }

        else
        {
          v14 = MGGetBoolAnswer();
          v10 = +[NSBundle mainBundle];
          if (v14)
          {
            v11 = @"MAP_DETAILS_WATCH_STATE_DESCRIPTION_WAITING_WLAN_POWER";
          }

          else
          {
            v11 = @"MAP_DETAILS_WATCH_STATE_DESCRIPTION_WAITING_WIFI_POWER";
          }
        }
      }

      v9 = v10;
    }

LABEL_17:
    v18 = [v9 localizedStringForKey:v11 value:@"localized string not found" table:@"Offline"];
    [(OfflineMapDeviceExplanatoryRowView *)self->_waitingReasonRow setText:v18];
LABEL_18:

    infoCopy = v25;
  }
}

- (void)_updateStateRow
{
  _subscriptionState = [(OfflineMapDeviceDetailsSectionController *)self _subscriptionState];
  loadState = [_subscriptionState loadState];
  if ((loadState - 1) < 2)
  {
    if (!self->_dateTimeFormatter)
    {
      v11 = objc_alloc_init(NSRelativeDateTimeFormatter);
      dateTimeFormatter = self->_dateTimeFormatter;
      self->_dateTimeFormatter = v11;

      v13 = +[NSLocale autoupdatingCurrentLocale];
      [(NSRelativeDateTimeFormatter *)self->_dateTimeFormatter setLocale:v13];

      [(NSRelativeDateTimeFormatter *)self->_dateTimeFormatter setDateTimeStyle:1];
      [(NSRelativeDateTimeFormatter *)self->_dateTimeFormatter setFormattingContext:2];
    }

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Last Updated [Offline Maps Details]" value:@"localized string not found" table:@"Offline"];
    [(OfflineMapDeviceStateRowView *)self->_stateRow setLabelText:v15];

    lastUpdatedDate = [(OfflineMapDeviceDetailsSectionController *)self lastUpdatedDate];
    if (lastUpdatedDate)
    {
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:lastUpdatedDate];
      v18 = v17;

      if (v18 >= 60.0)
      {
        v30 = self->_dateTimeFormatter;
        v20 = +[NSDate now];
        v22 = [(NSRelativeDateTimeFormatter *)v30 localizedStringForDate:lastUpdatedDate relativeToDate:v20];
        goto LABEL_20;
      }

      v19 = +[NSBundle mainBundle];
      v20 = v19;
      v21 = @"MAP_DETAILS_LAST_UPDATED_VALUE_JUST_NOW";
    }

    else
    {
      v19 = +[NSBundle mainBundle];
      v20 = v19;
      v21 = @"MAP_DETAILS_LAST_UPDATED_VALUE_NEVER";
    }

    v22 = [v19 localizedStringForKey:v21 value:@"localized string not found" table:@"Offline"];
LABEL_20:
    v31 = v22;
    [(OfflineMapDeviceStateRowView *)self->_stateRow setValueText:v22];

    [(OfflineMapDeviceStateRowView *)self->_stateRow setTrailingAccessoryView:0];
LABEL_21:

    goto LABEL_22;
  }

  if ((loadState == 3 || !loadState) && [_subscriptionState downloadState] - 1 <= 1)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"MAP_DETAILS_LOADING_STATE_LABEL" value:@"localized string not found" table:@"Offline"];
    [(OfflineMapDeviceStateRowView *)self->_stateRow setLabelText:v6];

    lastUpdatedDate = [_subscriptionState downloadProgress];
    downloadState = [_subscriptionState downloadState];
    localizedAdditionalDescription = [lastUpdatedDate localizedAdditionalDescription];
    v10 = localizedAdditionalDescription;
    if (downloadState == 1 || ![localizedAdditionalDescription length])
    {
      v23 = +[NSBundle mainBundle];
      v24 = [v23 localizedStringForKey:@"MAP_DETAILS_LOADING_STATE_VALUE_WAITING" value:@"localized string not found" table:@"Offline"];
      [(OfflineMapDeviceStateRowView *)self->_stateRow setValueText:v24];
    }

    else
    {
      [(OfflineMapDeviceStateRowView *)self->_stateRow setValueText:v10];
    }

    progressView = self->_progressView;
    if (!progressView)
    {
      v26 = objc_alloc_init(MUCircleProgressObservingView);
      v27 = self->_progressView;
      self->_progressView = v26;

      [(MUCircleProgressObservingView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
      v28 = [UIImageSymbolConfiguration configurationWithPointSize:10.0];
      v29 = [UIImage systemImageNamed:@"stop.fill" withConfiguration:v28];
      [(MUCircleProgressObservingView *)self->_progressView setImage:v29];

      [(MUCircleProgressObservingView *)self->_progressView setAccessibilityIdentifier:@"DownloadProgress"];
      objc_initWeak(&location, self);
      v32 = _NSConcreteStackBlock;
      v33 = 3221225472;
      v34 = sub_1008A5844;
      v35 = &unk_101661B98;
      objc_copyWeak(&v36, &location);
      [(MUCircleProgressObservingView *)self->_progressView setPrimaryAction:&v32];
      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
      progressView = self->_progressView;
    }

    [(MUCircleProgressObservingView *)progressView setProgress:lastUpdatedDate, v32, v33, v34, v35];
    [(OfflineMapDeviceStateRowView *)self->_stateRow setTrailingAccessoryView:self->_progressView];

    goto LABEL_21;
  }

LABEL_22:
}

- (void)_updateRowViews
{
  v3 = +[NSMutableArray array];
  _subscriptionState = [(OfflineMapDeviceDetailsSectionController *)self _subscriptionState];
  v5 = _subscriptionState;
  if (_subscriptionState)
  {
    loadState = [_subscriptionState loadState];
    if ((loadState - 1) < 2)
    {
      goto LABEL_11;
    }

    if (loadState == 3 || !loadState)
    {
      downloadState = [v5 downloadState];
      if (downloadState <= 5)
      {
        if (((1 << downloadState) & 0x31) != 0)
        {
          p_waitingReasonRow = &self->_waitingReasonRow;
          if (!self->_waitingReasonRow)
          {
            v9 = objc_alloc_init(OfflineMapDeviceExplanatoryRowView);
            v10 = *p_waitingReasonRow;
            *p_waitingReasonRow = v9;

            [*p_waitingReasonRow setAccessibilityIdentifier:@"WaitingRowView"];
          }

          downloadState2 = [v5 downloadState];
          userInfo = [v5 userInfo];
          v13 = [userInfo objectForKeyedSubscript:GEOMapDataSubscriptionStateWaitingReasonKey];
          unsignedIntegerValue = [v13 unsignedIntegerValue];
          userInfo2 = [v5 userInfo];
          [(OfflineMapDeviceDetailsSectionController *)self _updateWaitingRowWithDownloadState:downloadState2 waitingReasons:unsignedIntegerValue userInfo:userInfo2];

          goto LABEL_12;
        }

        if (((1 << downloadState) & 6) == 0)
        {
          goto LABEL_13;
        }

LABEL_11:
        [(OfflineMapDeviceDetailsSectionController *)self _updateStateRow];
        p_waitingReasonRow = &self->_stateRow;
LABEL_12:
        [v3 addObject:*p_waitingReasonRow];
      }
    }
  }

LABEL_13:
  _actions = [(OfflineMapDeviceDetailsSectionController *)self _actions];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = [_actions countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(_actions);
        }

        v24 = *(*(&v26 + 1) + 8 * i);
        v25 = [[MUButtonCellRowView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
        [v25 setViewModel:v24];
        [v3 addObject:v25];
      }

      v18 = [_actions countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  [(MUPlaceVerticalCardContainerView *)self->_stackView setRowViews:v3];
}

- (void)setLastUpdatedDate:(id)date
{
  objc_storeStrong(&self->_lastUpdatedDate, date);

  [(OfflineMapDeviceDetailsSectionController *)self _updateStateRow];
}

- (void)setSubscriptionInfo:(id)info
{
  infoCopy = info;
  subscriptionInfo = [(OfflineMapSectionController *)self subscriptionInfo];

  if (subscriptionInfo != infoCopy)
  {
    [(OfflineMapDeviceDetailsSectionController *)self _unregisterKVOObservers];
    v6.receiver = self;
    v6.super_class = OfflineMapDeviceDetailsSectionController;
    [(OfflineMapSectionController *)&v6 setSubscriptionInfo:infoCopy];
    [(OfflineMapDeviceDetailsSectionController *)self _registerKVOObservers];
  }
}

- (void)_unregisterKVOObservers
{
  subscriptionInfo = [(OfflineMapSectionController *)self subscriptionInfo];
  if (subscriptionInfo)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    _keyPathsToObserve = [objc_opt_class() _keyPathsToObserve];
    v5 = [_keyPathsToObserve countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(_keyPathsToObserve);
          }

          [subscriptionInfo removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8) context:off_10192C8B0];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [_keyPathsToObserve countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_registerKVOObservers
{
  subscriptionInfo = [(OfflineMapSectionController *)self subscriptionInfo];
  if (subscriptionInfo)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    _keyPathsToObserve = [objc_opt_class() _keyPathsToObserve];
    v5 = [_keyPathsToObserve countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(_keyPathsToObserve);
          }

          [subscriptionInfo addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8) options:0 context:off_10192C8B0];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [_keyPathsToObserve countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)dealloc
{
  [(OfflineMapDeviceDetailsSectionController *)self _unregisterKVOObservers];
  v3.receiver = self;
  v3.super_class = OfflineMapDeviceDetailsSectionController;
  [(OfflineMapDeviceDetailsSectionController *)&v3 dealloc];
}

- (void)_commonInit
{
  v3 = objc_alloc_init(UIView);
  containerView = self->_containerView;
  self->_containerView = v3;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (MapsFeature_IsEnabled_StandaloneWatchOffline())
  {
    v5 = objc_alloc_init(SectionHeaderView);
    sectionHeader = self->_sectionHeader;
    self->_sectionHeader = v5;

    [(SectionHeaderView *)self->_sectionHeader setTitle:self->_deviceName];
    [(SectionHeaderView *)self->_sectionHeader setFirstNonEmptySection:1];
    [(SectionHeaderView *)self->_sectionHeader setShowsBottomHairline:0];
    [(SectionHeaderView *)self->_sectionHeader setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = objc_alloc_init(UIView);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addSubview:self->_sectionHeader];
    topAnchor = [(SectionHeaderView *)self->_sectionHeader topAnchor];
    topAnchor2 = [v7 topAnchor];
    v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v50[0] = v42;
    leadingAnchor = [(SectionHeaderView *)self->_sectionHeader leadingAnchor];
    leadingAnchor2 = [v7 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v50[1] = v38;
    trailingAnchor = [(SectionHeaderView *)self->_sectionHeader trailingAnchor];
    trailingAnchor2 = [v7 trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v50[2] = v9;
    bottomAnchor = [(SectionHeaderView *)self->_sectionHeader bottomAnchor];
    bottomAnchor2 = [v7 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v50[3] = v12;
    v13 = [NSArray arrayWithObjects:v50 count:4];
    [NSLayoutConstraint activateConstraints:v13];

    v47 = v7;
    [(UIView *)self->_containerView addSubview:v7];
  }

  else
  {
    v47 = 0;
  }

  v14 = [[MUPlaceVerticalCardContainerView alloc] initWithShowsSeparators:1];
  stackView = self->_stackView;
  self->_stackView = v14;

  [(MUPlaceVerticalCardContainerView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v16) = 1148846080;
  [(MUPlaceVerticalCardContainerView *)self->_stackView setContentHuggingPriority:1 forAxis:v16];
  v17 = [MUPlaceSectionView insetPlatterSectionViewForContentView:self->_stackView sectionHeaderViewModel:0 sectionFooterViewModel:0];
  sectionView = self->_sectionView;
  self->_sectionView = v17;

  [(MUPlaceSectionView *)self->_sectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containerView addSubview:self->_sectionView];
  leadingAnchor3 = [(MUPlaceSectionView *)self->_sectionView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_containerView leadingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v49[0] = v19;
  trailingAnchor3 = [(MUPlaceSectionView *)self->_sectionView trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_containerView trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v49[1] = v22;
  bottomAnchor3 = [(MUPlaceSectionView *)self->_sectionView bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_containerView bottomAnchor];
  v25 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v49[2] = v25;
  v26 = [NSArray arrayWithObjects:v49 count:3];
  v45 = [v26 mutableCopy];

  if (v47)
  {
    topAnchor3 = [v47 topAnchor];
    topAnchor4 = [(UIView *)self->_containerView topAnchor];
    v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v48[0] = v29;
    topAnchor5 = [(MUPlaceSectionView *)self->_sectionView topAnchor];
    bottomAnchor5 = [v47 bottomAnchor];
    v32 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5];
    v48[1] = v32;
    v33 = [NSArray arrayWithObjects:v48 count:2];
    v34 = v45;
    [v45 addObjectsFromArray:v33];
  }

  else
  {
    topAnchor3 = [(MUPlaceSectionView *)self->_sectionView topAnchor];
    topAnchor4 = [(UIView *)self->_containerView topAnchor];
    v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v34 = v45;
    [v45 addObject:v29];
  }

  [NSLayoutConstraint activateConstraints:v34];
  v35 = [[OfflineMapDeviceStateRowView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  stateRow = self->_stateRow;
  self->_stateRow = v35;

  [(OfflineMapDeviceStateRowView *)self->_stateRow setAccessibilityIdentifier:@"DownloadStateRowView"];
  [(OfflineMapDeviceDetailsSectionController *)self _updateStateRow];
  [(OfflineMapDeviceDetailsSectionController *)self _updateRowViews];
  [(OfflineMapDeviceDetailsSectionController *)self _registerKVOObservers];
}

- (id)_subscriptionState
{
  subscriptionInfo = [(OfflineMapSectionController *)self subscriptionInfo];
  state = [subscriptionInfo state];

  return state;
}

- (OfflineMapDeviceDetailsSectionController)initWithSubscriptionInfo:(id)info deviceName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = OfflineMapDeviceDetailsSectionController;
  v7 = [(OfflineMapSectionController *)&v12 initWithSubscriptionInfo:info];
  if (v7)
  {
    v8 = [nameCopy copy];
    deviceName = v7->_deviceName;
    v7->_deviceName = v8;

    [(OfflineMapDeviceDetailsSectionController *)v7 _commonInit];
    v10 = v7;
  }

  return v7;
}

- (OfflineMapDeviceDetailsSectionController)initWithSubscriptionInfo:(id)info
{
  infoCopy = info;
  v5 = +[UIDevice currentDevice];
  name = [v5 name];
  v7 = [(OfflineMapDeviceDetailsSectionController *)self initWithSubscriptionInfo:infoCopy deviceName:name];

  return v7;
}

@end