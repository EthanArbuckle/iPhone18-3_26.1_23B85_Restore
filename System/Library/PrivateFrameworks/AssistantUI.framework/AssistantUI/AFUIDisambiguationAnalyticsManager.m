@interface AFUIDisambiguationAnalyticsManager
+ (id)sharedManager;
- (AFUIDisambiguationAnalyticsManagerDataSource)dataSource;
- (id)_allListItems;
- (id)_listItemMatchingAceId:(id)a3;
- (void)_logDisambiguationSelectedEventWithListItem:(id)a3;
- (void)logDisambiguationDismissedEvent;
- (void)logDisambiguationItemSelected:(id)a3;
@end

@implementation AFUIDisambiguationAnalyticsManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AFUIDisambiguationAnalyticsManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (void)logDisambiguationItemSelected:(id)a3
{
  v4 = a3;
  v5 = [v4 selectedAceId];
  v6 = [(AFUIDisambiguationAnalyticsManager *)self _listItemMatchingAceId:v5];

  if (v6)
  {
    v7 = [(AFUIDisambiguationAnalyticsManager *)self disambiguationAssistance];
    [v7 af_saveItemSelection:v6 forType:0];

    [(AFUIDisambiguationAnalyticsManager *)self _logDisambiguationSelectedEventWithListItem:v6];
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(AFUIDisambiguationAnalyticsManager *)v8 logDisambiguationItemSelected:v4];
    }
  }
}

- (void)logDisambiguationDismissedEvent
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(AFUIDisambiguationAnalyticsManager *)self _allListItems];
  v4 = NSStringFromSelector(sel_sruif_appInfo);
  v5 = [v3 valueForKey:v4];

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
          v13 = [v12 metricsContext];
          if (v13)
          {
            v8 = v13;

            v14 = [(AFUIDisambiguationAnalyticsManager *)self _allListItems];
            v15 = [v14 firstObject];
            v16 = [v15 aceId];
            [(AFUIDisambiguationAnalyticsManager *)self _recordSASMetrics:v8 withSelectedBundleId:0 originalCommandId:v16];

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

- (void)_logDisambiguationSelectedEventWithListItem:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 aceId];
  v6 = [v4 title];
  v7 = [MEMORY[0x277CEF158] sharedAnalytics];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __82__AFUIDisambiguationAnalyticsManager__logDisambiguationSelectedEventWithListItem___block_invoke;
  v28[3] = &unk_278CD65D8;
  v28[4] = v5;
  v28[5] = v6;
  [v7 logEventWithType:1426 contextProvider:v28];

  v8 = [v4 sruif_appInfo];
  v9 = [(AFUIDisambiguationAnalyticsManager *)self _allListItems];
  v10 = NSStringFromSelector(sel_sruif_appInfo);
  v11 = [v9 valueForKey:v10];

  v12 = [v8 appIdentifyingInfo];
  v13 = [v12 sruif_bundleId];

  if (v8)
  {
    v14 = [v8 metricsContext];
    if (v14)
    {
LABEL_13:
      v21 = [v4 aceId];
      [(AFUIDisambiguationAnalyticsManager *)self _recordSASMetrics:v14 withSelectedBundleId:v13 originalCommandId:v21];
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v22 = self;
        v23 = v5;
        v17 = *v25;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v24 + 1) + 8 * i) metricsContext];
            if (v19)
            {
              v20 = v19;

              v14 = v20;
              self = v22;
              v5 = v23;
              goto LABEL_13;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        v5 = v23;
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

- (id)_listItemMatchingAceId:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(AFUIDisambiguationAnalyticsManager *)self _allListItems];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 aceId];
          if ([v11 isEqualToString:v4])
          {

LABEL_15:
            v15 = v10;
            goto LABEL_16;
          }

          v12 = [v10 sruif_appInfo];
          v13 = [v12 aceId];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v2 = [(AFUIDisambiguationAnalyticsManager *)self listItems];
  v3 = [v2 valueForKeyPath:@"@unionOfArrays.self"];

  return v3;
}

- (AFUIDisambiguationAnalyticsManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end