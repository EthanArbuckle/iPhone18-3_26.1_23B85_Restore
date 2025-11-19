@interface OfflineMapDeviceDetailsSectionController
- (OfflineMapDetailsActionSectionControllerDelegate)actionDelegate;
- (OfflineMapDeviceDetailsSectionController)initWithSubscriptionInfo:(id)a3;
- (OfflineMapDeviceDetailsSectionController)initWithSubscriptionInfo:(id)a3 deviceName:(id)a4;
- (id)_subscriptionState;
- (void)_commonInit;
- (void)_didStopDownload;
- (void)_registerKVOObservers;
- (void)_unregisterKVOObservers;
- (void)_updateRowViews;
- (void)_updateStateRow;
- (void)_updateWaitingRowWithDownloadState:(int64_t)a3 waitingReasons:(unint64_t)a4 userInfo:(id)a5;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setLastUpdatedDate:(id)a3;
- (void)setSubscriptionInfo:(id)a3;
@end

@implementation OfflineMapDeviceDetailsSectionController

- (OfflineMapDetailsActionSectionControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_10192C8B0 == a6)
  {
    if ([NSThread isMainThread:a3])
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
    [(OfflineMapDeviceDetailsSectionController *)&v7 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_didStopDownload
{
  v4 = [(OfflineMapDeviceDetailsSectionController *)self actionDelegate];
  v3 = [(OfflineMapSectionController *)self subscriptionInfo];
  [v4 offlineMapDetailsActionSectionControllerDidSelectPauseDownload:v3];
}

- (void)_updateWaitingRowWithDownloadState:(int64_t)a3 waitingReasons:(unint64_t)a4 userInfo:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (self->_waitingReasonRow)
  {
    v25 = v8;
    if (a3 == 4)
    {
      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"MAP_DETAILS_STATE_DESCRIPTION_FAILED";
    }

    else
    {
      v12 = [v8 objectForKeyedSubscript:GEOMapDataSubscriptionStateWaitingMinimumBatteryLevelKey];
      v13 = [v12 unsignedIntegerValue];

      if ((v5 & 8) != 0)
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
        if ((v5 & 4) != 0)
        {
          v10 = objc_alloc_init(NSNumberFormatter);
          [v10 setNumberStyle:3];
          [v10 setMaximumFractionDigits:0];
          v16 = +[NSLocale autoupdatingCurrentLocale];
          [v10 setLocale:v16];

          v17 = [NSNumber numberWithDouble:v13 * 0.01];
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

        if ((~v5 & 3) != 0)
        {
          if ((v5 & 2) != 0)
          {
            v9 = +[NSBundle mainBundle];
            v10 = v9;
            v11 = @"MAP_DETAILS_WATCH_STATE_DESCRIPTION_WAITING_POWER";
            goto LABEL_17;
          }

          if ((v5 & 1) == 0)
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

    v8 = v25;
  }
}

- (void)_updateStateRow
{
  v3 = [(OfflineMapDeviceDetailsSectionController *)self _subscriptionState];
  v4 = [v3 loadState];
  if ((v4 - 1) < 2)
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

    v7 = [(OfflineMapDeviceDetailsSectionController *)self lastUpdatedDate];
    if (v7)
    {
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:v7];
      v18 = v17;

      if (v18 >= 60.0)
      {
        v30 = self->_dateTimeFormatter;
        v20 = +[NSDate now];
        v22 = [(NSRelativeDateTimeFormatter *)v30 localizedStringForDate:v7 relativeToDate:v20];
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

  if ((v4 == 3 || !v4) && [v3 downloadState] - 1 <= 1)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"MAP_DETAILS_LOADING_STATE_LABEL" value:@"localized string not found" table:@"Offline"];
    [(OfflineMapDeviceStateRowView *)self->_stateRow setLabelText:v6];

    v7 = [v3 downloadProgress];
    v8 = [v3 downloadState];
    v9 = [v7 localizedAdditionalDescription];
    v10 = v9;
    if (v8 == 1 || ![v9 length])
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

    [(MUCircleProgressObservingView *)progressView setProgress:v7, v32, v33, v34, v35];
    [(OfflineMapDeviceStateRowView *)self->_stateRow setTrailingAccessoryView:self->_progressView];

    goto LABEL_21;
  }

LABEL_22:
}

- (void)_updateRowViews
{
  v3 = +[NSMutableArray array];
  v4 = [(OfflineMapDeviceDetailsSectionController *)self _subscriptionState];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 loadState];
    if ((v6 - 1) < 2)
    {
      goto LABEL_11;
    }

    if (v6 == 3 || !v6)
    {
      v7 = [v5 downloadState];
      if (v7 <= 5)
      {
        if (((1 << v7) & 0x31) != 0)
        {
          p_waitingReasonRow = &self->_waitingReasonRow;
          if (!self->_waitingReasonRow)
          {
            v9 = objc_alloc_init(OfflineMapDeviceExplanatoryRowView);
            v10 = *p_waitingReasonRow;
            *p_waitingReasonRow = v9;

            [*p_waitingReasonRow setAccessibilityIdentifier:@"WaitingRowView"];
          }

          v11 = [v5 downloadState];
          v12 = [v5 userInfo];
          v13 = [v12 objectForKeyedSubscript:GEOMapDataSubscriptionStateWaitingReasonKey];
          v14 = [v13 unsignedIntegerValue];
          v15 = [v5 userInfo];
          [(OfflineMapDeviceDetailsSectionController *)self _updateWaitingRowWithDownloadState:v11 waitingReasons:v14 userInfo:v15];

          goto LABEL_12;
        }

        if (((1 << v7) & 6) == 0)
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
  v16 = [(OfflineMapDeviceDetailsSectionController *)self _actions];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v26 + 1) + 8 * i);
        v25 = [[MUButtonCellRowView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
        [v25 setViewModel:v24];
        [v3 addObject:v25];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  [(MUPlaceVerticalCardContainerView *)self->_stackView setRowViews:v3];
}

- (void)setLastUpdatedDate:(id)a3
{
  objc_storeStrong(&self->_lastUpdatedDate, a3);

  [(OfflineMapDeviceDetailsSectionController *)self _updateStateRow];
}

- (void)setSubscriptionInfo:(id)a3
{
  v4 = a3;
  v5 = [(OfflineMapSectionController *)self subscriptionInfo];

  if (v5 != v4)
  {
    [(OfflineMapDeviceDetailsSectionController *)self _unregisterKVOObservers];
    v6.receiver = self;
    v6.super_class = OfflineMapDeviceDetailsSectionController;
    [(OfflineMapSectionController *)&v6 setSubscriptionInfo:v4];
    [(OfflineMapDeviceDetailsSectionController *)self _registerKVOObservers];
  }
}

- (void)_unregisterKVOObservers
{
  v3 = [(OfflineMapSectionController *)self subscriptionInfo];
  if (v3)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [objc_opt_class() _keyPathsToObserve];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [v3 removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8) context:off_10192C8B0];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_registerKVOObservers
{
  v3 = [(OfflineMapSectionController *)self subscriptionInfo];
  if (v3)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [objc_opt_class() _keyPathsToObserve];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [v3 addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8) options:0 context:off_10192C8B0];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    v46 = [(SectionHeaderView *)self->_sectionHeader topAnchor];
    v44 = [v7 topAnchor];
    v42 = [v46 constraintEqualToAnchor:v44];
    v50[0] = v42;
    v40 = [(SectionHeaderView *)self->_sectionHeader leadingAnchor];
    v39 = [v7 leadingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:16.0];
    v50[1] = v38;
    v37 = [(SectionHeaderView *)self->_sectionHeader trailingAnchor];
    v8 = [v7 trailingAnchor];
    v9 = [v37 constraintEqualToAnchor:v8];
    v50[2] = v9;
    v10 = [(SectionHeaderView *)self->_sectionHeader bottomAnchor];
    v11 = [v7 bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
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
  v43 = [(MUPlaceSectionView *)self->_sectionView leadingAnchor];
  v41 = [(UIView *)self->_containerView leadingAnchor];
  v19 = [v43 constraintEqualToAnchor:v41];
  v49[0] = v19;
  v20 = [(MUPlaceSectionView *)self->_sectionView trailingAnchor];
  v21 = [(UIView *)self->_containerView trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v49[1] = v22;
  v23 = [(MUPlaceSectionView *)self->_sectionView bottomAnchor];
  v24 = [(UIView *)self->_containerView bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v49[2] = v25;
  v26 = [NSArray arrayWithObjects:v49 count:3];
  v45 = [v26 mutableCopy];

  if (v47)
  {
    v27 = [v47 topAnchor];
    v28 = [(UIView *)self->_containerView topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v48[0] = v29;
    v30 = [(MUPlaceSectionView *)self->_sectionView topAnchor];
    v31 = [v47 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v48[1] = v32;
    v33 = [NSArray arrayWithObjects:v48 count:2];
    v34 = v45;
    [v45 addObjectsFromArray:v33];
  }

  else
  {
    v27 = [(MUPlaceSectionView *)self->_sectionView topAnchor];
    v28 = [(UIView *)self->_containerView topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
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
  v2 = [(OfflineMapSectionController *)self subscriptionInfo];
  v3 = [v2 state];

  return v3;
}

- (OfflineMapDeviceDetailsSectionController)initWithSubscriptionInfo:(id)a3 deviceName:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = OfflineMapDeviceDetailsSectionController;
  v7 = [(OfflineMapSectionController *)&v12 initWithSubscriptionInfo:a3];
  if (v7)
  {
    v8 = [v6 copy];
    deviceName = v7->_deviceName;
    v7->_deviceName = v8;

    [(OfflineMapDeviceDetailsSectionController *)v7 _commonInit];
    v10 = v7;
  }

  return v7;
}

- (OfflineMapDeviceDetailsSectionController)initWithSubscriptionInfo:(id)a3
{
  v4 = a3;
  v5 = +[UIDevice currentDevice];
  v6 = [v5 name];
  v7 = [(OfflineMapDeviceDetailsSectionController *)self initWithSubscriptionInfo:v4 deviceName:v6];

  return v7;
}

@end