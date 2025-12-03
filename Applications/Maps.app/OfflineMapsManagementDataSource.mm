@interface OfflineMapsManagementDataSource
- (BOOL)_canItemIdentifierBeSelected:(id)selected;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (OfflineMapsManagementDataSource)initWithCollectionView:(id)view updateLocation:(BOOL)location;
- (OfflineMapsManagementDataSourceDelegate)offlineDelegate;
- (id)_automaticUpdatesModel;
- (id)_createAutomaticUpdatesModel:(BOOL)model;
- (id)_createForceOfflineModel:(BOOL)model;
- (id)_createSyncToWatchModel:(BOOL)model;
- (id)_disabledAutomaticUpdatesModel;
- (id)_disabledForceOfflineModel;
- (id)_disabledSyncToWatchModel;
- (id)_downloadNewMapModel;
- (id)_downloadSettingsModel;
- (id)_expiredMapsModel;
- (id)_forceOfflineModel;
- (id)_optimizeStorageModel;
- (id)_syncToWatchModel;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)sectionForSectionIndex:(unint64_t)index;
- (id)swipeActionsConfigurationForIndexPath:(id)path;
- (void)_fetchExpiredSubscriptionsAnimated:(BOOL)animated;
- (void)_fetchLastUpdatedDateAnimated:(BOOL)animated;
- (void)_showPairedDeviceDiskSpaceDialogIfNeeded;
- (void)_updateAutoUpdateRowSubtitle;
- (void)_updateContentAnimated:(BOOL)animated;
- (void)_updateSyncToWatchModel;
- (void)_updateUpdateAllModels;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)commonInit;
- (void)dealloc;
- (void)setActive:(BOOL)active;
- (void)subscriptionInfosDidChange:(id)change;
- (void)subscriptionsBeingUpdatedDidChange:(BOOL)change;
- (void)subscriptionsNeedUpdatingDidChange:(BOOL)change;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation OfflineMapsManagementDataSource

- (OfflineMapsManagementDataSourceDelegate)offlineDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_offlineDelegate);

  return WeakRetained;
}

- (id)_disabledForceOfflineModel
{
  disabledForceOfflineModel = self->_disabledForceOfflineModel;
  if (!disabledForceOfflineModel)
  {
    v4 = [(OfflineMapsManagementDataSource *)self _createForceOfflineModel:0];
    v5 = self->_disabledForceOfflineModel;
    self->_disabledForceOfflineModel = v4;

    disabledForceOfflineModel = self->_disabledForceOfflineModel;
  }

  return disabledForceOfflineModel;
}

- (id)_forceOfflineModel
{
  forceOfflineModel = self->_forceOfflineModel;
  if (!forceOfflineModel)
  {
    v4 = [(OfflineMapsManagementDataSource *)self _createForceOfflineModel:1];
    v5 = self->_forceOfflineModel;
    self->_forceOfflineModel = v4;

    forceOfflineModel = self->_forceOfflineModel;
  }

  return forceOfflineModel;
}

- (id)_createForceOfflineModel:(BOOL)model
{
  modelCopy = model;
  v4 = objc_alloc_init(MapsDebugSwitchTableRow);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Only Use Offline Maps [cell title]" value:@"localized string not found" table:@"Offline"];
  [(MapsDebugTableRow *)v4 setTitle:v6];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10086CE24;
  v14[3] = &unk_10162C338;
  v15 = modelCopy;
  [(MapsDebugSwitchTableRow *)v4 setGet:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10086CE48;
  v12[3] = &unk_10162C420;
  v13 = modelCopy;
  [(MapsDebugSwitchTableRow *)v4 setSet:v12];
  title = [(MapsDebugTableRow *)v4 title];
  [(MapsDebugSwitchTableRow *)v4 setAccessibilityLabel:title];

  [(MapsDebugSwitchTableRow *)v4 setEnabled:modelCopy];
  [(MapsDebugTableRow *)v4 setSelectionAction:0];
  [(MapsDebugTableRow *)v4 setConfigureCollectionViewCellBlock:&stru_10162C440];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Force offline footer text" value:@"localized string not found" table:@"Offline"];
  [(MapsDebugTableRow *)v4 setSubtitle:v9];

  v10 = objc_alloc_init(OfflineMapsManagementCellModel);
  [(OfflineMapsManagementCellModel *)v10 setCellType:6];
  [(OfflineMapsManagementCellModel *)v10 setTableRow:v4];
  [(OfflineMapsManagementCellModel *)v10 setEnabled:modelCopy];

  return v10;
}

- (void)_updateSyncToWatchModel
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDeviceExcludingAltAccount = [v3 getActivePairedDeviceExcludingAltAccount];

  if (getActivePairedDeviceExcludingAltAccount)
  {
    tableRow2 = [getActivePairedDeviceExcludingAltAccount valueForProperty:NRDevicePropertyName];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Sync with Watch [cell subtitle]" value:@"localized string not found" table:@"Offline"];
    v7 = [NSString localizedStringWithFormat:v6, tableRow2];
    tableRow = [(OfflineMapsManagementCellModel *)self->_syncToWatchModel tableRow];
    [tableRow setSubtitle:v7];
  }

  else
  {
    tableRow2 = [(OfflineMapsManagementCellModel *)self->_syncToWatchModel tableRow];
    [tableRow2 setSubtitle:0];
  }
}

- (id)_disabledSyncToWatchModel
{
  disabledSyncToWatchModel = self->_disabledSyncToWatchModel;
  if (!disabledSyncToWatchModel)
  {
    v4 = [(OfflineMapsManagementDataSource *)self _createSyncToWatchModel:0];
    v5 = self->_disabledSyncToWatchModel;
    self->_disabledSyncToWatchModel = v4;

    disabledSyncToWatchModel = self->_disabledSyncToWatchModel;
  }

  return disabledSyncToWatchModel;
}

- (id)_syncToWatchModel
{
  syncToWatchModel = self->_syncToWatchModel;
  if (!syncToWatchModel)
  {
    v4 = [(OfflineMapsManagementDataSource *)self _createSyncToWatchModel:1];
    v5 = self->_syncToWatchModel;
    self->_syncToWatchModel = v4;

    [(OfflineMapsManagementDataSource *)self _updateSyncToWatchModel];
    syncToWatchModel = self->_syncToWatchModel;
  }

  return syncToWatchModel;
}

- (id)_createSyncToWatchModel:(BOOL)model
{
  modelCopy = model;
  v5 = objc_alloc_init(OfflineMapsManagementCellModel);
  [(OfflineMapsManagementCellModel *)v5 setCellType:5];
  v6 = objc_alloc_init(MapsDebugSwitchTableRow);
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Sync with Watch [cell title]" value:@"localized string not found" table:@"Offline"];
  [(MapsDebugTableRow *)v6 setTitle:v8];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10086D428;
  v20[3] = &unk_10162C338;
  v21 = modelCopy;
  [(MapsDebugSwitchTableRow *)v6 setGet:v20];
  objc_initWeak(&location, v5);
  objc_initWeak(&from, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10086D44C;
  v14 = &unk_10162C360;
  v17 = modelCopy;
  objc_copyWeak(&v15, &from);
  objc_copyWeak(&v16, &location);
  [(MapsDebugSwitchTableRow *)v6 setSet:&v11];
  v9 = [(MapsDebugTableRow *)v6 title:v11];
  [(MapsDebugSwitchTableRow *)v6 setAccessibilityLabel:v9];

  [(MapsDebugSwitchTableRow *)v6 setEnabled:modelCopy];
  [(MapsDebugTableRow *)v6 setSelectionAction:0];
  [(MapsDebugTableRow *)v6 setConfigureCollectionViewCellBlock:&stru_10162C400];
  [(OfflineMapsManagementCellModel *)v5 setTableRow:v6];
  [(OfflineMapsManagementCellModel *)v5 setEnabled:modelCopy];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v5;
}

- (id)_optimizeStorageModel
{
  optimizeStorageModel = self->_optimizeStorageModel;
  if (!optimizeStorageModel)
  {
    v4 = objc_alloc_init(MapsDebugSwitchTableRow);
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Optimize Storage [cell title]" value:@"localized string not found" table:@"Offline"];
    [(MapsDebugTableRow *)v4 setTitle:v6];

    [(MapsDebugSwitchTableRow *)v4 setGet:&stru_10162C3A0];
    [(MapsDebugSwitchTableRow *)v4 setSet:&stru_10162C3C0];
    title = [(MapsDebugTableRow *)v4 title];
    [(MapsDebugSwitchTableRow *)v4 setAccessibilityLabel:title];

    [(MapsDebugTableRow *)v4 setSelectionAction:0];
    [(MapsDebugTableRow *)v4 setConfigureCollectionViewCellBlock:&stru_10162C3E0];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Optimize Storage [cell subtitle]" value:@"localized string not found" table:@"Offline"];
    [(MapsDebugTableRow *)v4 setSubtitle:v9];

    v10 = objc_alloc_init(OfflineMapsManagementCellModel);
    v11 = self->_optimizeStorageModel;
    self->_optimizeStorageModel = v10;

    [(OfflineMapsManagementCellModel *)self->_optimizeStorageModel setCellType:4];
    [(OfflineMapsManagementCellModel *)self->_optimizeStorageModel setTableRow:v4];

    optimizeStorageModel = self->_optimizeStorageModel;
  }

  return optimizeStorageModel;
}

- (void)_updateAutoUpdateRowSubtitle
{
  if (self->_disabledAutomaticUpdatesModel)
  {
    v8 = objc_alloc_init(NSByteCountFormatter);
    v3 = [v8 stringFromByteCount:GEOMaximumAutomaticUpdateOfflineDataSize()];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Automatic Updates [disabled cell subtitle]" value:@"localized string not found" table:@"Offline"];
    v6 = [NSString localizedStringWithFormat:v5, v3];
    tableRow = [(OfflineMapsManagementCellModel *)self->_disabledAutomaticUpdatesModel tableRow];
    [tableRow setSubtitle:v6];
  }
}

- (id)_disabledAutomaticUpdatesModel
{
  disabledAutomaticUpdatesModel = self->_disabledAutomaticUpdatesModel;
  if (!disabledAutomaticUpdatesModel)
  {
    v4 = [(OfflineMapsManagementDataSource *)self _createAutomaticUpdatesModel:0];
    v5 = self->_disabledAutomaticUpdatesModel;
    self->_disabledAutomaticUpdatesModel = v4;

    [(OfflineMapsManagementDataSource *)self _updateAutoUpdateRowSubtitle];
    disabledAutomaticUpdatesModel = self->_disabledAutomaticUpdatesModel;
  }

  return disabledAutomaticUpdatesModel;
}

- (id)_automaticUpdatesModel
{
  automaticUpdatesModel = self->_automaticUpdatesModel;
  if (!automaticUpdatesModel)
  {
    v4 = [(OfflineMapsManagementDataSource *)self _createAutomaticUpdatesModel:1];
    v5 = self->_automaticUpdatesModel;
    self->_automaticUpdatesModel = v4;

    automaticUpdatesModel = self->_automaticUpdatesModel;
  }

  return automaticUpdatesModel;
}

- (id)_createAutomaticUpdatesModel:(BOOL)model
{
  modelCopy = model;
  v5 = objc_alloc_init(OfflineMapsManagementCellModel);
  [(OfflineMapsManagementCellModel *)v5 setCellType:3];
  v6 = objc_alloc_init(MapsDebugSwitchTableRow);
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Automatic Updates [cell title]" value:@"localized string not found" table:@"Offline"];
  [(MapsDebugTableRow *)v6 setTitle:v8];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Automatic Updates [cell subtitle]" value:@"localized string not found" table:@"Offline"];
  [(MapsDebugTableRow *)v6 setSubtitle:v10];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10086DF3C;
  v22[3] = &unk_10162C338;
  v23 = modelCopy;
  [(MapsDebugSwitchTableRow *)v6 setGet:v22];
  objc_initWeak(&location, v5);
  objc_initWeak(&from, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10086DF60;
  v16 = &unk_10162C360;
  v19 = modelCopy;
  objc_copyWeak(&v17, &from);
  objc_copyWeak(&v18, &location);
  [(MapsDebugSwitchTableRow *)v6 setSet:&v13];
  v11 = [(MapsDebugTableRow *)v6 title:v13];
  [(MapsDebugSwitchTableRow *)v6 setAccessibilityLabel:v11];

  [(MapsDebugSwitchTableRow *)v6 setEnabled:modelCopy];
  [(MapsDebugTableRow *)v6 setSelectionAction:0];
  [(MapsDebugTableRow *)v6 setConfigureCollectionViewCellBlock:&stru_10162C380];
  [(OfflineMapsManagementCellModel *)v5 setTableRow:v6];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v5;
}

- (id)_downloadSettingsModel
{
  v3 = &OBJC_IVAR___OfflineMapsManagementDataSource__hasCreatedDownloadSettingsModel;
  if (!self->_hasCreatedDownloadSettingsModel)
  {
    v4 = +[CellularReachability cellularStatus];
    if (!v4)
    {
LABEL_16:
      self->_hasCreatedDownloadSettingsModel = 1;
      goto LABEL_17;
    }

    v5 = v4;
    v6 = MGGetBoolAnswer();
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    if (v6)
    {
      v9 = @"WLAN Only [menu option]";
    }

    else
    {
      v9 = @"Wi-Fi Only [menu option]";
    }

    if (v6)
    {
      v10 = @"WLAN + Cellular [menu option]";
    }

    else
    {
      v10 = @"Wi-Fi + Cellular [menu option]";
    }

    v11 = [v7 localizedStringForKey:v9 value:@"localized string not found" table:@"Offline"];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:v10 value:@"localized string not found" table:@"Offline"];

    v14 = [UIAction actionWithTitle:v11 image:0 identifier:0 handler:&stru_10162C2D8];
    [v14 setAccessibilityIdentifier:@"WifiOnlyAction"];
    [v14 setAccessibilityLabel:v11];
    v15 = [UIAction actionWithTitle:v13 image:0 identifier:0 handler:&stru_10162C2F8];
    [v15 setAccessibilityIdentifier:@"WifiAndCellularAction"];
    [v15 setAccessibilityLabel:v13];
    BOOL = GEOConfigGetBOOL();
    if (v5 == 3 && BOOL)
    {
      [v15 setState:1];
      v17 = 0;
    }

    else
    {
      [v14 setState:1];
      if (v5 > 3)
      {
LABEL_15:
        v28[0] = v14;
        v28[1] = v15;
        v18 = [NSArray arrayWithObjects:v28 count:2];
        v19 = [UIMenu menuWithChildren:v18];

        v20 = objc_alloc_init(MapsDebugMenuRow);
        v21 = +[NSBundle mainBundle];
        v22 = [v21 localizedStringForKey:@"Downloads [cell title]" value:@"localized string not found" table:@"Offline"];
        [(MapsDebugTableRow *)v20 setTitle:v22];

        [(MapsDebugMenuRow *)v20 setMenu:v19];
        title = [(MapsDebugTableRow *)v20 title];
        [(MapsDebugMenuRow *)v20 setAccessibilityLabel:title];

        [(MapsDebugTableRow *)v20 setSelectionAction:0];
        [(MapsDebugTableRow *)v20 setConfigureCollectionViewCellBlock:&stru_10162C318];
        v24 = objc_alloc_init(OfflineMapsManagementCellModel);
        v3 = &OBJC_IVAR___OfflineMapsManagementDataSource__hasCreatedDownloadSettingsModel;
        downloadSettingsModel = self->_downloadSettingsModel;
        self->_downloadSettingsModel = v24;

        [(OfflineMapsManagementCellModel *)self->_downloadSettingsModel setCellType:2];
        [(OfflineMapsManagementCellModel *)self->_downloadSettingsModel setTableRow:v20];

        goto LABEL_16;
      }

      v17 = qword_101215590[v5 - 1];
    }

    [v15 setAttributes:v17];
    goto LABEL_15;
  }

LABEL_17:
  v26 = *(&self->super.super.isa + v3[1]);

  return v26;
}

- (void)_updateUpdateAllModels
{
  if (MapsFeature_IsEnabled_OfflineMapsUIEnhancementsEnabled())
  {
    return;
  }

  v4 = &OBJC_IVAR___FlyoverContainerViewController__statusView;
  if (!self->_updateAllModel && !self->_disabledUpdateAllModel)
  {
    return;
  }

  if (self->_hasInProgressUpdate)
  {
    subscriptionInfos = +[NSBundle mainBundle];
    v42 = [subscriptionInfos localizedStringForKey:@"Updating footer text" value:@"localized string not found" table:@"Offline"];
LABEL_19:

    v20 = v42;
    goto LABEL_20;
  }

  subscriptionInfos = [(OfflineMapsManagementDataSource *)self subscriptionInfos];
  if (![subscriptionInfos count])
  {
    v42 = 0;
    goto LABEL_19;
  }

  subtitle = 128;
  lastUpdatedDate = self->_lastUpdatedDate;

  if (lastUpdatedDate)
  {
    v7 = +[NSBundle mainBundle];
    subscriptionInfos = [v7 localizedStringForKey:@"Last updated footer text" value:@"localized string not found" table:@"Offline"];

    v8 = +[NSDate now];
    [v8 timeIntervalSinceDate:self->_lastUpdatedDate];
    v10 = v9;

    if (v10 >= 0.0 && v10 < 60.0)
    {
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"OFFLINE_LAST_UPDATED_JUST_NOW" value:@"localized string not found" table:@"Offline"];
    }

    else
    {
      dateFormatter = self->_dateFormatter;
      if (!dateFormatter)
      {
        v13 = objc_alloc_init(NSRelativeDateTimeFormatter);
        v14 = self->_dateFormatter;
        self->_dateFormatter = v13;

        v15 = +[NSLocale autoupdatingCurrentLocale];
        [(NSRelativeDateTimeFormatter *)self->_dateFormatter setLocale:v15];

        [(NSRelativeDateTimeFormatter *)self->_dateFormatter setDateTimeStyle:1];
        [(NSRelativeDateTimeFormatter *)self->_dateFormatter setFormattingContext:1];
        dateFormatter = self->_dateFormatter;
      }

      calendar = [(NSRelativeDateTimeFormatter *)dateFormatter calendar];
      v17 = +[NSDate now];
      v18 = [calendar components:4124 fromDate:v17 toDate:self->_lastUpdatedDate options:0];

      v19 = [(NSRelativeDateTimeFormatter *)self->_dateFormatter localizedStringFromDateComponents:v18];
    }

    v21 = v19;

    v42 = [NSString stringWithFormat:subscriptionInfos, v21];

    goto LABEL_19;
  }

  v20 = 0;
LABEL_20:
  v43 = v20;
  updateAllModel = self->_updateAllModel;
  if (!updateAllModel || (-[OfflineMapsManagementCellModel tableRow](self->_updateAllModel, "tableRow"), v23 = objc_claimAutoreleasedReturnValue(), [v23 subtitle], subscriptionInfos = objc_claimAutoreleasedReturnValue(), v41 = v23, v43 == subscriptionInfos))
  {
    v28 = 0;
    p_disabledUpdateAllModel = &self->_disabledUpdateAllModel;
    disabledUpdateAllModel = self->_disabledUpdateAllModel;
    if (!disabledUpdateAllModel)
    {
      goto LABEL_30;
    }
  }

  else
  {
    tableRow = [(OfflineMapsManagementCellModel *)self->_updateAllModel tableRow];
    subtitle = [tableRow subtitle];
    v25 = [v43 isEqualToString:subtitle];
    if ((v25 & 1) == 0 || (p_disabledUpdateAllModel = &self->_disabledUpdateAllModel, (disabledUpdateAllModel = self->_disabledUpdateAllModel) == 0))
    {
      v28 = v25 ^ 1;

      goto LABEL_33;
    }

    v40 = tableRow;
    v28 = 1;
  }

  tableRow2 = [(OfflineMapsManagementCellModel *)disabledUpdateAllModel tableRow];
  subtitle2 = [tableRow2 subtitle];
  if (v43 == subtitle2)
  {

    v33 = 0;
    if (!v28)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  tableRow3 = [(OfflineMapsManagementCellModel *)*p_disabledUpdateAllModel tableRow];
  subtitle3 = [tableRow3 subtitle];
  v33 = [v43 isEqualToString:subtitle3] ^ 1;

  v4 = &OBJC_IVAR___FlyoverContainerViewController__statusView;
  if (v28)
  {
LABEL_28:
  }

LABEL_29:
  v28 = v33;
LABEL_30:
  if (updateAllModel)
  {
LABEL_33:
  }

  tableRow4 = [(OfflineMapsManagementCellModel *)self->_updateAllModel tableRow];
  [tableRow4 setSubtitle:v43];

  tableRow5 = [*(&self->super.super.isa + v4[1022]) tableRow];
  [tableRow5 setSubtitle:v43];

  if (v28 && self->_actionButtonsSection)
  {
    diffableDataSource = [(OfflineMapsManagementDataSource *)self diffableDataSource];
    snapshot = [diffableDataSource snapshot];

    if ([snapshot indexOfSectionIdentifier:self->_actionButtonsSection] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = [snapshot itemIdentifiersInSectionWithIdentifier:self->_actionButtonsSection];
      [snapshot reconfigureItemsWithIdentifiers:v38];
      diffableDataSource2 = [(OfflineMapsManagementDataSource *)self diffableDataSource];
      [diffableDataSource2 applySnapshot:snapshot animatingDifferences:1];
    }
  }
}

- (id)_downloadNewMapModel
{
  downloadNewMapModel = self->_downloadNewMapModel;
  if (!downloadNewMapModel)
  {
    objc_initWeak(&location, self);
    v4 = [_TtC4Maps37MapsGridButtonCollectionViewCellModel alloc];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Download New Map [button title]" value:@"localized string not found" table:@"Offline"];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10086ED88;
    v10[3] = &unk_101661B98;
    objc_copyWeak(&v11, &location);
    v7 = [(MapsGridButtonCollectionViewCellModel *)v4 initWithTitleString:v6 symbolName:0 actionStyle:0 actionBlock:v10];
    v8 = self->_downloadNewMapModel;
    self->_downloadNewMapModel = v7;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    downloadNewMapModel = self->_downloadNewMapModel;
  }

  return downloadNewMapModel;
}

- (id)_expiredMapsModel
{
  if (!self->_expiredMapsModel)
  {
    objc_initWeak(&location, self);
    v3 = objc_alloc_init(MapsDebugNavigationTableRow);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Expired Maps [row title]" value:@"localized string not found" table:@"Offline"];
    [(MapsDebugTableRow *)v3 setTitle:v5];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10086F00C;
    v13[3] = &unk_101661B98;
    objc_copyWeak(&v14, &location);
    [(MapsDebugTableRow *)v3 setSelectionAction:v13];
    title = [(MapsDebugTableRow *)v3 title];
    [(MapsDebugNavigationTableRow *)v3 setAccessibilityLabel:title];

    [(MapsDebugTableRow *)v3 setConfigureCollectionViewCellBlock:&stru_10162C2B8];
    v7 = objc_alloc_init(OfflineMapsManagementCellModel);
    expiredMapsModel = self->_expiredMapsModel;
    self->_expiredMapsModel = v7;

    [(OfflineMapsManagementCellModel *)self->_expiredMapsModel setCellType:7];
    [(OfflineMapsManagementCellModel *)self->_expiredMapsModel setTableRow:v3];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }

  v9 = [NSString localizedStringWithFormat:@"%ld", [(NSArray *)self->_expiredSubscriptions count]];
  tableRow = [(OfflineMapsManagementCellModel *)self->_expiredMapsModel tableRow];
  [tableRow setSubtitle:v9];

  v11 = self->_expiredMapsModel;

  return v11;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectItemAtIndexPath:pathCopy animated:1];
  diffableDataSource = [(OfflineMapsManagementDataSource *)self diffableDataSource];
  v9 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  delegate = [(DataSource *)self delegate];
  [delegate dataSource:self itemTapped:v9];
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(OfflineMapsManagementDataSource *)self diffableDataSource];
  v7 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  LOBYTE(self) = [(OfflineMapsManagementDataSource *)self _canItemIdentifierBeSelected:v7];
  return self;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(OfflineMapsManagementDataSource *)self diffableDataSource];
  v7 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  LOBYTE(self) = [(OfflineMapsManagementDataSource *)self _canItemIdentifierBeSelected:v7];
  return self;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v11 = -[OfflineMapsManagementDataSource sectionForSectionIndex:](self, "sectionForSectionIndex:", [pathCopy section]);
  if ([kindCopy isEqualToString:UICollectionElementKindSectionHeader])
  {
    headerText = [v11 headerText];
    if ([headerText length])
    {
      v13 = +[SectionHeaderCollectionReusableView reuseIdentifier];
      v14 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v13 forIndexPath:pathCopy];

      [v14 setTitle:headerText];
      [v14 setShowsBottomHairline:0];
      [v14 setFirstNonEmptySection:{objc_msgSend(pathCopy, "section") == objc_msgSend(viewCopy, "_maps_indexOfFirstNonEmptySection")}];
      goto LABEL_11;
    }
  }

  if (![kindCopy isEqualToString:UICollectionElementKindSectionFooter])
  {
    v14 = 0;
    goto LABEL_12;
  }

  footerText = [v11 footerText];
  v16 = [footerText length];

  if (v16)
  {
    v17 = [NSAttributedString alloc];
    footerText2 = [v11 footerText];
    headerText = [v17 initWithString:footerText2];
  }

  else
  {
    headerText = 0;
  }

  v19 = [[UserProfileSectionFooterViewModel alloc] initWithContentString:headerText];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v14 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v21 forIndexPath:pathCopy];

  [v14 configureWithViewModel:v19];
LABEL_11:

LABEL_12:

  return v14;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = identifierCopy;
    v12 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:pathCopy];

    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_10086FCE8;
    v55[3] = &unk_101661B18;
    v14 = v11;
    v56 = v14;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10086FD40;
    v52[3] = &unk_101661340;
    objc_copyWeak(&v54, &location);
    v15 = v14;
    v53 = v15;
    v16 = [TwoLinesContentViewModelComposer cellModelForOfflineMapSubscriptionInfo:v15 cancelDownloadBlock:v55 resumeDownloadBlock:v52];
    [v13 setViewModel:v16];

    objc_destroyWeak(&v54);
LABEL_21:

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = identifierCopy;
    v18 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v18 forIndexPath:pathCopy];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10086FDA4;
    v48[3] = &unk_101661480;
    objc_copyWeak(&v51, &location);
    v49 = pathCopy;
    v15 = v17;
    v50 = v15;
    v19 = [TwoLinesContentViewModelComposer cellModelForOfflineMapSuggestion:v15 downloadBlock:v48];
    [v13 setViewModel:v19];

    objc_destroyWeak(&v51);
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSArray *)self->_expiredSubscriptions containsObject:identifierCopy])
  {
    v20 = identifierCopy;
    v21 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v21 forIndexPath:pathCopy];

    v22 = sub_10086FE68(v20);
    BOOL = GEOConfigGetBOOL();
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10086FF14;
    v46[3] = &unk_101661A90;
    v46[4] = self;
    v15 = v20;
    v47 = v15;
    v24 = [TwoLinesContentViewModelComposer cellModelForExpiredOfflineMapSubscription:v15 isAvailable:v22 isSupportedOSVersion:BOOL ^ 1u downloadBlock:v46];
    [v13 setViewModel:v24];

    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = identifierCopy;
    tableRow = [v15 tableRow];
    v13 = [tableRow cellForCollectionView:viewCopy forIndexPath:pathCopy];

    [v13 setAccessibilityIdentifier:@"OfflineMapSettingsCell"];
    tableRow2 = [v15 tableRow];
    title = [tableRow2 title];
    [v13 setAccessibilityLabel:title];

    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = identifierCopy;
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v29 forIndexPath:pathCopy];

    [v13 setAccessibilityIdentifier:@"DownloadMap"];
    titleString = [v15 titleString];
    [v13 setAccessibilityLabel:titleString];

    [v13 setViewModel:v15];
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [identifierCopy isEqualToString:@"EmptyState"])
  {
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v32 forIndexPath:pathCopy];

    v33 = +[NSBundle mainBundle];
    v34 = [v33 localizedStringForKey:@"OFFLINE_MANAGEMENT_EMPTY_TITLE" value:@"localized string not found" table:@"Offline"];
    emptyStateView = [v13 emptyStateView];
    [emptyStateView setTitle:v34];

    v36 = +[NSBundle mainBundle];
    v37 = [v36 localizedStringForKey:@"OFFLINE_MANAGEMENT_EMPTY_MESSAGE" value:@"localized string not found" table:@"Offline"];
    emptyStateView2 = [v13 emptyStateView];
    [emptyStateView2 setSubtitle:v37];

    v15 = [UIImage systemImageNamed:@"icloud.slash"];
    emptyStateView3 = [v13 emptyStateView];
    [emptyStateView3 setImage:v15];

    goto LABEL_21;
  }

  v40 = sub_10006D178();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v43 = [NSString stringWithFormat:@"Unhandled cell model type %@", v42];
    *buf = 136315906;
    v59 = "[OfflineMapsManagementDataSource collectionView:cellForItemAtIndexPath:itemIdentifier:]";
    v60 = 2080;
    v61 = "OfflineMapsManagementDataSource.m";
    v62 = 1024;
    v63 = 595;
    v64 = 2112;
    v65 = v43;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
  }

  if (sub_100E03634())
  {
    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v44 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v59 = v44;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v13 = 0;
    goto LABEL_21;
  }

  v13 = 0;
LABEL_22:
  objc_destroyWeak(&location);

  return v13;
}

- (void)subscriptionsBeingUpdatedDidChange:(BOOL)change
{
  self->_hasInProgressUpdate = change;
  [(OfflineMapsManagementDataSource *)self _updateUpdateAllModels];

  [(OfflineMapsManagementDataSource *)self _updateContentAnimated:1];
}

- (void)subscriptionsNeedUpdatingDidChange:(BOOL)change
{
  self->_hasSubscriptionsNeedingUpdate = change;
  [(OfflineMapsManagementDataSource *)self _updateContentAnimated:1];

  [(OfflineMapsManagementDataSource *)self _fetchLastUpdatedDateAnimated:1];
}

- (void)subscriptionInfosDidChange:(id)change
{
  [(OfflineMapsManagementDataSource *)self setSubscriptionInfos:change];
  [(OfflineMapsManagementDataSource *)self _updateUpdateAllModels];
  [(OfflineMapsManagementDataSource *)self _updateContentAnimated:1];

  [(OfflineMapsManagementDataSource *)self _fetchExpiredSubscriptionsAnimated:1];
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  if (key.var0 == 628 && key.var1 == &unk_101643798 || (key.var0 == GeoOfflineConfig_AutomaticUpdatesEnabled ? (v4 = key.var1 == *(&GeoOfflineConfig_AutomaticUpdatesEnabled + 1)) : (v4 = 0), v4 || (key.var0 == GeoOfflineConfig_OptimizeStorageEnabled ? (v5 = key.var1 == *(&GeoOfflineConfig_OptimizeStorageEnabled + 1)) : (v5 = 0), v5 || (key.var0 == GeoOfflineConfig_SyncToWatchEnabled ? (v6 = key.var1 == *(&GeoOfflineConfig_SyncToWatchEnabled + 1)) : (v6 = 0), v6 || key.var0 == 569 && key.var1 == &unk_101642C20))))
  {
    if (self->_settingsSection && self->_forceOfflineSection)
    {
      diffableDataSource = [(OfflineMapsManagementDataSource *)self diffableDataSource];
      snapshot = [diffableDataSource snapshot];

      v8 = [snapshot itemIdentifiersInSectionWithIdentifier:self->_settingsSection];
      v9 = [NSMutableArray arrayWithArray:v8];

      v10 = [snapshot itemIdentifiersInSectionWithIdentifier:self->_forceOfflineSection];
      [v9 addObjectsFromArray:v10];

      [snapshot reconfigureItemsWithIdentifiers:v9];
      diffableDataSource2 = [(OfflineMapsManagementDataSource *)self diffableDataSource];
      [diffableDataSource2 applySnapshot:snapshot animatingDifferences:0];
    }
  }
}

- (void)_showPairedDeviceDiskSpaceDialogIfNeeded
{
  if (GEOConfigGetBOOL())
  {
    val = self;
    v3 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDeviceExcludingAltAccount = [v3 getActivePairedDeviceExcludingAltAccount];

    if (getActivePairedDeviceExcludingAltAccount)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v4 = +[MapsOfflineUIHelper sharedHelper];
      subscriptionInfos = [v4 subscriptionInfos];

      v6 = [subscriptionInfos countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        v9 = *v31;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v31 != v9)
            {
              objc_enumerationMutation(subscriptionInfos);
            }

            v11 = *(*(&v30 + 1) + 8 * i);
            pairedDeviceState = [v11 pairedDeviceState];
            if (pairedDeviceState)
            {
              pairedDeviceState2 = [v11 pairedDeviceState];
              v14 = [pairedDeviceState2 downloadState] == 0;

              if (!v14)
              {
                state = [v11 state];
                downloadedDataSize = [state downloadedDataSize];

                v8 += downloadedDataSize;
              }
            }

            state2 = [v11 state];
            v18 = [state2 downloadState] == 2;

            v7 |= v18;
          }

          v6 = [subscriptionInfos countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v6);

        if (v7)
        {
          GEOConfigGetDouble();
          v20 = v19;
          objc_initWeak(location, val);
          v21 = +[MapsOfflineUIHelper sharedHelper];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1008709F0;
          v27[3] = &unk_10165EC70;
          objc_copyWeak(v28, location);
          v28[1] = (v8 + (v20 * v8));
          [v21 getAvailableDiskSpaceForPairedDeviceWithCompletionHandler:v27];

          objc_destroyWeak(v28);
          objc_destroyWeak(location);
LABEL_24:
          v22 = getActivePairedDeviceExcludingAltAccount;
          goto LABEL_25;
        }
      }

      else
      {
      }

      v24 = sub_10003D9F4();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "No map is currently downloading, will not calculate paired device low disk space alert", location, 2u);
      }

      goto LABEL_24;
    }

    v23 = sub_10003D9F4();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "No paired device, will not show disk space alert.", location, 2u);
    }

    v22 = 0;
  }

  else
  {
    v22 = sub_10003D9F4();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Maps config has disabled the disk space alert, will not attempt to display.", location, 2u);
    }
  }

LABEL_25:
}

- (BOOL)_canItemIdentifierBeSelected:(id)selected
{
  selectedCopy = selected;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tableRow = [selectedCopy tableRow];
    selectionAction = [tableRow selectionAction];
    isKindOfClass = selectionAction != 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([selectedCopy state], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "loadState"), v7, v8))
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  return isKindOfClass & 1;
}

- (void)_fetchExpiredSubscriptionsAnimated:(BOOL)animated
{
  objc_initWeak(&location, self);
  v5 = [NSString stringWithFormat:@"%@*", @"com.apple.Maps.offline."];
  subscriptionManager = [(OfflineMapsManagementDataSource *)self subscriptionManager];
  v13 = v5;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  v8 = &_dispatch_main_q;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100870DC0;
  v9[3] = &unk_10162E3B8;
  objc_copyWeak(&v10, &location);
  animatedCopy = animated;
  [subscriptionManager fetchExpiredSubscriptionsWithIdentifiers:v7 callbackQueue:&_dispatch_main_q completionHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_fetchLastUpdatedDateAnimated:(BOOL)animated
{
  objc_initWeak(&location, self);
  subscriptionManager = [(OfflineMapsManagementDataSource *)self subscriptionManager];
  v6 = &_dispatch_main_q;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1008710C0;
  v7[3] = &unk_10162C278;
  objc_copyWeak(&v8, &location);
  animatedCopy = animated;
  [subscriptionManager fetchLastUpdatedDateForOfflineSubscriptionsWithQueue:&_dispatch_main_q completionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_updateContentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v4 = GEOSupportsOfflineMaps();
  BOOL = GEOConfigGetBOOL();
  v6 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  if (v4)
  {
    subscriptionInfos = [(OfflineMapsManagementDataSource *)self subscriptionInfos];
    v8 = [subscriptionInfos count] != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSArray *)self->_expiredSubscriptions count];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8;
  }

  if (MapsFeature_IsEnabled_StandaloneWatchOffline() && !(v10 & 1 | (((v4 | BOOL) & 1) == 0)) && self->_hasFetchedInitialSubscriptions)
  {
    v11 = [[OfflineMapsManagementSection alloc] initWithSectionType:0];
    v75 = v11;
    v12 = [NSArray arrayWithObjects:&v75 count:1];
    [v6 appendSectionsWithIdentifiers:v12];

    v74 = @"EmptyState";
    v13 = [NSArray arrayWithObjects:&v74 count:1];
    [v6 appendItemsWithIdentifiers:v13 intoSectionWithIdentifier:v11];
  }

  if (v10)
  {
    v14 = [[OfflineMapsManagementSection alloc] initWithSectionType:1];
    v73 = v14;
    v15 = [NSArray arrayWithObjects:&v73 count:1];
    [v6 appendSectionsWithIdentifiers:v15];

    if (v8)
    {
      subscriptionInfos2 = [(OfflineMapsManagementDataSource *)self subscriptionInfos];
      [v6 appendItemsWithIdentifiers:subscriptionInfos2 intoSectionWithIdentifier:v14];
    }

    if (v9)
    {
      [v6 appendItemsWithIdentifiers:self->_expiredSubscriptions intoSectionWithIdentifier:v14];
    }

    downloadedAndExpiredSection = self->_downloadedAndExpiredSection;
    self->_downloadedAndExpiredSection = v14;
  }

  if (!v4)
  {
    goto LABEL_29;
  }

  v18 = [[OfflineMapsManagementSection alloc] initWithSectionType:3];
  actionButtonsSection = self->_actionButtonsSection;
  self->_actionButtonsSection = v18;

  v72 = self->_actionButtonsSection;
  v20 = [NSArray arrayWithObjects:&v72 count:1];
  [v6 appendSectionsWithIdentifiers:v20];

  _downloadNewMapModel = [(OfflineMapsManagementDataSource *)self _downloadNewMapModel];
  v71 = _downloadNewMapModel;
  v22 = [NSArray arrayWithObjects:&v71 count:1];
  [v6 appendItemsWithIdentifiers:v22 intoSectionWithIdentifier:self->_actionButtonsSection];

  suggestedRegions = [(OfflineMapsManagementDataSource *)self suggestedRegions];
  v24 = [suggestedRegions count];

  if (v24)
  {
    suggestedRegions2 = [(OfflineMapsManagementDataSource *)self suggestedRegions];
    v26 = [suggestedRegions2 _geo_filtered:&stru_10162C250];

    if ([v26 count])
    {
      UInteger = GEOConfigGetUInteger();
      if ([v26 count] > UInteger)
      {
        v28 = [v26 subarrayWithRange:{0, UInteger}];

        v26 = v28;
      }

      v29 = [[OfflineMapsManagementSection alloc] initWithSectionType:4];
      v70 = v29;
      v30 = [NSArray arrayWithObjects:&v70 count:1];
      [v6 appendSectionsWithIdentifiers:v30];

      [v6 appendItemsWithIdentifiers:v26 intoSectionWithIdentifier:v29];
      v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v26 count]);
      stringValue = [v31 stringValue];
      [GEOAPPortal captureUserAction:397 target:88 value:stringValue];
    }
  }

  if (v10)
  {
    v33 = [[OfflineMapsManagementSection alloc] initWithSectionType:5];
    settingsSection = self->_settingsSection;
    self->_settingsSection = v33;

    v69 = self->_settingsSection;
    v35 = [NSArray arrayWithObjects:&v69 count:1];
    [v6 appendSectionsWithIdentifiers:v35];

    _downloadSettingsModel = [(OfflineMapsManagementDataSource *)self _downloadSettingsModel];
    v37 = _downloadSettingsModel;
    if (_downloadSettingsModel)
    {
      v68 = _downloadSettingsModel;
      v38 = [NSArray arrayWithObjects:&v68 count:1];
      [v6 appendItemsWithIdentifiers:v38 intoSectionWithIdentifier:self->_settingsSection];
    }

    v39 = +[MapsOfflineUIHelper sharedHelper];
    totalOfflineDataSize = [v39 totalOfflineDataSize];
    updated = GEOMaximumAutomaticUpdateOfflineDataSize();

    if (totalOfflineDataSize <= updated)
    {
      [(OfflineMapsManagementDataSource *)self _automaticUpdatesModel];
    }

    else
    {
      [(OfflineMapsManagementDataSource *)self _disabledAutomaticUpdatesModel];
    }
    v43 = ;
    v67[0] = v43;
    _optimizeStorageModel = [(OfflineMapsManagementDataSource *)self _optimizeStorageModel];
    v67[1] = _optimizeStorageModel;
    v45 = [NSArray arrayWithObjects:v67 count:2];
    [v6 appendItemsWithIdentifiers:v45 intoSectionWithIdentifier:self->_settingsSection];

    if (MapsFeature_IsEnabled_StandaloneWatchOffline())
    {
      v46 = +[NRPairedDeviceRegistry sharedInstance];
      getActivePairedDeviceExcludingAltAccount = [v46 getActivePairedDeviceExcludingAltAccount];

      if (getActivePairedDeviceExcludingAltAccount)
      {
        v48 = [[NSUUID alloc] initWithUUIDString:@"3B512C1E-F8D5-4FE7-B109-1AD8EF7F924D"];
        v49 = [getActivePairedDeviceExcludingAltAccount supportsCapability:v48];

        if (v49)
        {
          _syncToWatchModel = [(OfflineMapsManagementDataSource *)self _syncToWatchModel];
          v66 = _syncToWatchModel;
          v51 = &v66;
        }

        else
        {
          _syncToWatchModel = [(OfflineMapsManagementDataSource *)self _disabledSyncToWatchModel];
          v65 = _syncToWatchModel;
          v51 = &v65;
        }

        v52 = [NSArray arrayWithObjects:v51 count:1];
        [v6 appendItemsWithIdentifiers:v52 intoSectionWithIdentifier:self->_settingsSection];
      }
    }

    v53 = [[OfflineMapsManagementSection alloc] initWithSectionType:6];
    forceOfflineSection = self->_forceOfflineSection;
    self->_forceOfflineSection = v53;

    v64 = self->_forceOfflineSection;
    v55 = [NSArray arrayWithObjects:&v64 count:1];
    [v6 appendSectionsWithIdentifiers:v55];

    v56 = +[MapsOfflineUIHelper sharedHelper];
    if ([v56 hasFullyLoadedSubscriptions])
    {
      [(OfflineMapsManagementDataSource *)self _forceOfflineModel];
    }

    else
    {
      [(OfflineMapsManagementDataSource *)self _disabledForceOfflineModel];
    }
    v57 = ;
    v63 = v57;
    v58 = [NSArray arrayWithObjects:&v63 count:1];
    [v6 appendItemsWithIdentifiers:v58 intoSectionWithIdentifier:self->_forceOfflineSection];
  }

  else
  {
LABEL_29:
    v42 = self->_settingsSection;
    self->_settingsSection = 0;

    v37 = self->_forceOfflineSection;
    self->_forceOfflineSection = 0;
  }

  sectionIdentifiers = [v6 sectionIdentifiers];
  [(OfflineMapsManagementDataSource *)self setSections:sectionIdentifiers];

  diffableDataSource = [(OfflineMapsManagementDataSource *)self diffableDataSource];
  [diffableDataSource applySnapshot:v6 animatingDifferences:animatedCopy];

  delegate = [(DataSource *)self delegate];
  [delegate dataSourceUpdated:self];
}

- (id)swipeActionsConfigurationForIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(OfflineMapsManagementDataSource *)self diffableDataSource];
  v6 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v7 = v6;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100872054;
    v43[3] = &unk_1016603D0;
    objc_copyWeak(&v45, &location);
    v8 = v7;
    v44 = v8;
    v9 = sub_100DCC9E8(v43);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100872228;
    v40[3] = &unk_1016603D0;
    objc_copyWeak(&v42, &location);
    v10 = v8;
    v41 = v10;
    v11 = v40;
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"RowSwipe_Rename" value:@"localized string not found" table:0];
    v47 = _NSConcreteStackBlock;
    v48 = 3221225472;
    v49 = sub_100DCCE30;
    v50 = &unk_101654E38;
    v51 = v11;
    v14 = v11;
    v15 = [UIContextualAction contextualActionWithStyle:0 title:v13 handler:&v47];

    v16 = +[UIColor systemGrayColor];
    [v15 setBackgroundColor:v16];

    v17 = [UIImage systemImageNamed:@"square.and.pencil"];
    [v15 setImage:v17];

    v52[0] = v9;
    v52[1] = v15;
    v18 = [NSArray arrayWithObjects:v52 count:2];
    v19 = [UISwipeActionsConfiguration configurationWithActions:v18];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&v45);

    objc_destroyWeak(&location);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_initWeak(&location, self);
      v20 = v6;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1008722D8;
      v37[3] = &unk_1016603D0;
      objc_copyWeak(&v39, &location);
      v21 = v20;
      v38 = v21;
      v22 = v37;
      v23 = +[NSBundle mainBundle];
      v24 = [v23 localizedStringForKey:@"RowSwipe_Clear" value:@"localized string not found" table:@"Offline"];
      v47 = _NSConcreteStackBlock;
      v48 = 3221225472;
      v49 = sub_100DCCB34;
      v50 = &unk_101654E38;
      v51 = v22;
      v25 = v22;
      v26 = [UIContextualAction contextualActionWithStyle:1 title:v24 handler:&v47];

      v27 = [UIImage systemImageNamed:@"clear.fill"];
      [v26 setImage:v27];

      v28 = [NSMutableArray arrayWithObject:v26];
      if (sub_10086FE68(v21))
      {
        v29 = +[NSBundle mainBundle];
        v30 = [v29 localizedStringForKey:@"RowSwipe_Restore" value:@"localized string not found" table:@"Offline"];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100872494;
        v34[3] = &unk_10162C210;
        objc_copyWeak(&v36, &location);
        v34[4] = self;
        v35 = v21;
        v31 = [UIContextualAction contextualActionWithStyle:1 title:v30 handler:v34];

        v32 = +[UIColor systemBlueColor];
        [v31 setBackgroundColor:v32];

        [v28 addObject:v31];
        objc_destroyWeak(&v36);
      }

      v19 = [UISwipeActionsConfiguration configurationWithActions:v28];

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)sectionForSectionIndex:(unint64_t)index
{
  sections = [(OfflineMapsManagementDataSource *)self sections];
  v6 = [sections count];

  if (v6 >= index)
  {
    sections2 = [(OfflineMapsManagementDataSource *)self sections];
    v7 = [sections2 objectAtIndex:index];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  v7.receiver = self;
  v7.super_class = OfflineMapsManagementDataSource;
  [(DataSource *)&v7 setActive:?];
  v5 = +[MapsOfflineUIHelper sharedHelper];
  v6 = v5;
  if (activeCopy)
  {
    [v5 addObserver:self];
  }

  else
  {
    [v5 removeObserver:self];
  }
}

- (void)dealloc
{
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = OfflineMapsManagementDataSource;
  [(OfflineMapsManagementDataSource *)&v3 dealloc];
}

- (void)commonInit
{
  v3 = objc_alloc_init(GEOMapDataSubscriptionManager);
  [(OfflineMapsManagementDataSource *)self setSubscriptionManager:v3];

  v4 = [[OfflineMapsSuggestionsDataProvider alloc] initWithClientType:2 callbackQueue:&_dispatch_main_q];
  [(OfflineMapsManagementDataSource *)self setSuggestionsProvider:v4];

  collectionView = [(DataSource *)self collectionView];
  [collectionView setDelegate:self];

  collectionView2 = [(DataSource *)self collectionView];
  [MapsDebugTableRow registerCellsInCollectionView:collectionView2];

  collectionView3 = [(DataSource *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
  [collectionView3 registerClass:v8 forCellWithReuseIdentifier:v9];

  collectionView4 = [(DataSource *)self collectionView];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [collectionView4 registerClass:v11 forCellWithReuseIdentifier:v13];

  collectionView5 = [(DataSource *)self collectionView];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [collectionView5 registerClass:v15 forCellWithReuseIdentifier:v17];

  collectionView6 = [(DataSource *)self collectionView];
  v19 = objc_opt_class();
  v20 = +[SectionHeaderCollectionReusableView reuseIdentifier];
  [collectionView6 registerClass:v19 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v20];

  collectionView7 = [(DataSource *)self collectionView];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  [collectionView7 registerClass:v22 forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v24];

  v25 = [UICollectionViewDiffableDataSource alloc];
  collectionView8 = [(DataSource *)self collectionView];
  v27 = sub_1007CDFC8(self);
  v28 = [v25 initWithCollectionView:collectionView8 cellProvider:v27];
  [(OfflineMapsManagementDataSource *)self setDiffableDataSource:v28];

  v29 = sub_1007CE178(self);
  diffableDataSource = [(OfflineMapsManagementDataSource *)self diffableDataSource];
  [diffableDataSource setSupplementaryViewProvider:v29];

  v31 = +[MapsOfflineUIHelper sharedHelper];
  self->_hasSubscriptionsNeedingUpdate = [v31 hasSubscriptionsNeedingUpdate];

  v32 = +[MapsOfflineUIHelper sharedHelper];
  self->_hasInProgressUpdate = [v32 hasSubscriptionsBeingUpdated];

  objc_initWeak(&location, self);
  v33 = +[MapsOfflineUIHelper sharedHelper];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100872E1C;
  v41[3] = &unk_10165F290;
  objc_copyWeak(&v42, &location);
  [v33 fetchAllSubscriptionInfosWithCompletion:v41];

  [(OfflineMapsManagementDataSource *)self _fetchExpiredSubscriptionsAnimated:0];
  [(OfflineMapsManagementDataSource *)self _fetchLastUpdatedDateAnimated:0];
  suggestionsProvider = [(OfflineMapsManagementDataSource *)self suggestionsProvider];
  currentLocation = [(DataSource *)self currentLocation];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100872EA4;
  v39[3] = &unk_101654BC0;
  objc_copyWeak(&v40, &location);
  [suggestionsProvider offlineSuggestionsForLocation:currentLocation completion:v39];

  objc_copyWeak(&v38, &location);
  v36 = _GEOConfigAddBlockListenerForKey();
  autoupdateFrequencyBucketsListener = self->_autoupdateFrequencyBucketsListener;
  self->_autoupdateFrequencyBucketsListener = v36;

  _GEOConfigAddDelegateListenerForKey();
  _GEOConfigAddDelegateListenerForKey();

  _GEOConfigAddDelegateListenerForKey();
  _GEOConfigAddDelegateListenerForKey();

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

- (OfflineMapsManagementDataSource)initWithCollectionView:(id)view updateLocation:(BOOL)location
{
  v7.receiver = self;
  v7.super_class = OfflineMapsManagementDataSource;
  v4 = [(DataSource *)&v7 initWithCollectionView:view updateLocation:location];
  v5 = v4;
  if (v4)
  {
    [(OfflineMapsManagementDataSource *)v4 commonInit];
  }

  return v5;
}

@end