@interface AFUIDisambiguationAnalyticsManager
+ (id)sharedManager;
- (AFUIDisambiguationAnalyticsManagerDataSource)dataSource;
- (id)_allListItems;
- (id)_listItemMatchingAceId:(id)id;
- (void)_logDisambiguationSelectedEventWithListItem:(id)item;
- (void)logDisambiguationDismissedEvent;
- (void)logDisambiguationItemSelected:(id)selected;
@end

@implementation AFUIDisambiguationAnalyticsManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AFUIDisambiguationAnalyticsManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_0 != -1)
  {
    dispatch_once(&sharedManager_onceToken_0, block);
  }

  v2 = sharedManager_sharedManager_0;

  return v2;
}

uint64_t __51__AFUIDisambiguationAnalyticsManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedManager_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)logDisambiguationItemSelected:(id)selected
{
  selectedCopy = selected;
  selectedAceId = [selectedCopy selectedAceId];
  v6 = [(AFUIDisambiguationAnalyticsManager *)self _listItemMatchingAceId:selectedAceId];

  if (v6)
  {
    disambiguationAssistance = [(AFUIDisambiguationAnalyticsManager *)self disambiguationAssistance];
    [disambiguationAssistance af_saveItemSelection:v6 forType:0];

    [(AFUIDisambiguationAnalyticsManager *)self _logDisambiguationSelectedEventWithListItem:v6];
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(AFUIDisambiguationAnalyticsManager *)v8 logDisambiguationItemSelected:selectedCopy];
    }
  }
}

- (void)logDisambiguationDismissedEvent
{
  v22 = *MEMORY[0x277D85DE8];
  _allListItems = [(AFUIDisambiguationAnalyticsManager *)self _allListItems];
  v4 = NSStringFromSelector(sel_sruif_appInfo);
  v5 = [_allListItems valueForKey:v4];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v8 = v6;
  if (v7)
  {
    v9 = v7;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          metricsContext = [v12 metricsContext];
          if (metricsContext)
          {
            v8 = metricsContext;

            _allListItems2 = [(AFUIDisambiguationAnalyticsManager *)self _allListItems];
            firstObject = [_allListItems2 firstObject];
            aceId = [firstObject aceId];
            [(AFUIDisambiguationAnalyticsManager *)self _recordSASMetrics:v8 withSelectedBundleId:0 originalCommandId:aceId];

            goto LABEL_12;
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v8 = v6;
  }

LABEL_12:
}

- (void)_logDisambiguationSelectedEventWithListItem:(id)item
{
  v30 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  aceId = [itemCopy aceId];
  title = [itemCopy title];
  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __82__AFUIDisambiguationAnalyticsManager__logDisambiguationSelectedEventWithListItem___block_invoke;
  v28[3] = &unk_278CD65D8;
  v28[4] = aceId;
  v28[5] = title;
  [mEMORY[0x277CEF158] logEventWithType:1426 contextProvider:v28];

  sruif_appInfo = [itemCopy sruif_appInfo];
  _allListItems = [(AFUIDisambiguationAnalyticsManager *)self _allListItems];
  v10 = NSStringFromSelector(sel_sruif_appInfo);
  v11 = [_allListItems valueForKey:v10];

  appIdentifyingInfo = [sruif_appInfo appIdentifyingInfo];
  sruif_bundleId = [appIdentifyingInfo sruif_bundleId];

  if (sruif_appInfo)
  {
    metricsContext = [sruif_appInfo metricsContext];
    if (metricsContext)
    {
LABEL_13:
      aceId2 = [itemCopy aceId];
      [(AFUIDisambiguationAnalyticsManager *)self _recordSASMetrics:metricsContext withSelectedBundleId:sruif_bundleId originalCommandId:aceId2];
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      metricsContext = v11;
      v15 = [metricsContext countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        selfCopy = self;
        v23 = aceId;
        v17 = *v25;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(metricsContext);
            }

            metricsContext2 = [*(*(&v24 + 1) + 8 * i) metricsContext];
            if (metricsContext2)
            {
              v20 = metricsContext2;

              metricsContext = v20;
              self = selfCopy;
              aceId = v23;
              goto LABEL_13;
            }
          }

          v16 = [metricsContext countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        aceId = v23;
      }
    }
  }
}

id __82__AFUIDisambiguationAnalyticsManager__logDisambiguationSelectedEventWithListItem___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:@"manual" forKey:@"type"];
  v3 = *(a1 + 32);
  if (v3)
  {
    [v2 setObject:v3 forKey:@"aceId"];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"title"];
  }

  return v2;
}

- (id)_listItemMatchingAceId:(id)id
{
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (idCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    _allListItems = [(AFUIDisambiguationAnalyticsManager *)self _allListItems];
    v6 = [_allListItems countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(_allListItems);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          aceId = [v10 aceId];
          if ([aceId isEqualToString:idCopy])
          {

LABEL_15:
            v15 = v10;
            goto LABEL_16;
          }

          sruif_appInfo = [v10 sruif_appInfo];
          aceId2 = [sruif_appInfo aceId];
          v14 = [aceId2 isEqualToString:idCopy];

          if (v14)
          {
            goto LABEL_15;
          }
        }

        v7 = [_allListItems countByEnumeratingWithState:&v17 objects:v21 count:16];
        v15 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_16:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_allListItems
{
  listItems = [(AFUIDisambiguationAnalyticsManager *)self listItems];
  v3 = [listItems valueForKeyPath:@"@unionOfArrays.self"];

  return v3;
}

- (AFUIDisambiguationAnalyticsManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end