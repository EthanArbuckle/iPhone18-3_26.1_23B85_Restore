@interface StocksSyncAppPreferences
- (BOOL)hasWatchlistBeenSet;
- (NSArray)stocklist;
- (NSArray)watchlist;
- (StocksSyncAppPreferences)initWithPersistence:(id)persistence delegate:(id)delegate;
- (id)_stockDictionaries;
- (void)_notifyDelegateOfUpdate;
- (void)dealloc;
- (void)setWatchlist:(id)watchlist;
- (void)updateStockData:(id)data;
@end

@implementation StocksSyncAppPreferences

- (StocksSyncAppPreferences)initWithPersistence:(id)persistence delegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = StocksSyncAppPreferences;
  v4 = [(StocksSyncPreferences *)&v8 initWithPersistence:persistence delegate:delegate];
  if (v4)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_4138, @"com.apple.stocks.PreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDrop);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v4, sub_4138, kNPSInitialSyncCompletionDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v4;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = StocksSyncAppPreferences;
  [(StocksSyncAppPreferences *)&v4 dealloc];
}

- (void)updateStockData:(id)data
{
  dataCopy = data;
  _stockDictionaries = [(StocksSyncAppPreferences *)self _stockDictionaries];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_stockDictionaries count]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = _stockDictionaries;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = +[StocksSyncPreferenceKeys symbol];
        v13 = [v11 objectForKeyedSubscript:v12];

        if (v13)
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_44A0;
          v24[3] = &unk_C498;
          v25 = v13;
          v14 = objc_retainBlock(v24);
          v15 = [dataCopy indexOfObjectPassingTest:v14];
          if (v15 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v6 addObject:v11];
          }

          else
          {
            v16 = [dataCopy objectAtIndexedSubscript:v15];
            dictionaryRepresentation = [v16 dictionaryRepresentation];
            [v6 addObject:dictionaryRepresentation];
          }
        }

        else
        {
          [v6 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  if (([obj isEqualToArray:v6] & 1) == 0)
  {
    persistence = [(StocksSyncPreferences *)self persistence];
    [persistence setObject:v6 forKey:@"watch_stocks"];

    persistence2 = [(StocksSyncPreferences *)self persistence];
    v20 = +[NSDate date];
    [v20 timeIntervalSince1970];
    v21 = [NSNumber numberWithDouble:?];
    [persistence2 setObject:v21 forKey:@"watch_lastModified"];

    persistence3 = [(StocksSyncPreferences *)self persistence];
    [persistence3 synchronize];
  }
}

- (void)_notifyDelegateOfUpdate
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  delegate = [(StocksSyncPreferences *)self delegate];
  [delegate preferencesUpdated:self];
}

- (id)_stockDictionaries
{
  persistence = [(StocksSyncPreferences *)self persistence];
  v3 = [persistence objectForKey:@"watch_stocks"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (BOOL)hasWatchlistBeenSet
{
  persistence = [(StocksSyncPreferences *)self persistence];
  [persistence synchronize];

  persistence2 = [(StocksSyncPreferences *)self persistence];
  v5 = [persistence2 objectForKey:@"watch_stocks"];
  LOBYTE(persistence) = v5 != 0;

  return persistence;
}

- (NSArray)watchlist
{
  persistence = [(StocksSyncPreferences *)self persistence];
  [persistence synchronize];

  _stockDictionaries = [(StocksSyncAppPreferences *)self _stockDictionaries];
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(_stockDictionaries, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = _stockDictionaries;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = +[StocksSyncPreferenceKeys symbol];
          v13 = [v11 objectForKeyedSubscript:v12];

          if (v13)
          {
            [v5 addObject:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (void)setWatchlist:(id)watchlist
{
  watchlistCopy = watchlist;
  selfCopy = self;
  _stockDictionaries = [(StocksSyncAppPreferences *)self _stockDictionaries];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [watchlistCopy count]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = watchlistCopy;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_4ADC;
        v23[3] = &unk_C4C0;
        v23[4] = v11;
        v12 = objc_retainBlock(v23);
        v13 = [_stockDictionaries indexOfObjectPassingTest:v12];
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = +[StocksSyncPreferenceKeys symbol];
          v28 = v14;
          v29 = v11;
          v15 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        }

        else
        {
          v15 = [_stockDictionaries objectAtIndexedSubscript:v13];
        }

        [v6 addObject:v15];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v8);
  }

  persistence = [(StocksSyncPreferences *)selfCopy persistence];
  [persistence setObject:v6 forKey:@"watch_stocks"];

  persistence2 = [(StocksSyncPreferences *)selfCopy persistence];
  v18 = +[NSDate date];
  [v18 timeIntervalSince1970];
  v19 = [NSNumber numberWithDouble:?];
  [persistence2 setObject:v19 forKey:@"watch_lastModified"];

  persistence3 = [(StocksSyncPreferences *)selfCopy persistence];
  [persistence3 synchronize];
}

- (NSArray)stocklist
{
  persistence = [(StocksSyncPreferences *)self persistence];
  [persistence synchronize];

  _stockDictionaries = [(StocksSyncAppPreferences *)self _stockDictionaries];
  v26 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(_stockDictionaries, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = _stockDictionaries;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v8 = &objc_alloc_ptr;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = v8[87];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = +[StocksSyncPreferenceKeys symbol];
          v13 = [v10 objectForKeyedSubscript:v12];

          if (v13)
          {
            v14 = +[StocksSyncPreferenceKeys companyName];
            v15 = [v10 objectForKeyedSubscript:v14];

            +[StocksSyncPreferenceKeys listName];
            v17 = v16 = v7;
            v18 = [v10 objectForKeyedSubscript:v17];

            v19 = +[StocksSyncPreferenceKeys compactListName];
            v20 = [v10 objectForKeyedSubscript:v19];

            v21 = +[StocksSyncPreferenceKeys type];
            v22 = [v10 objectForKeyedSubscript:v21];

            v23 = [[StocksSyncStock alloc] initWithSymbol:v13 companyName:v15 listName:v18 compactListName:v20 type:v22];
            [v26 addObject:v23];

            v7 = v16;
            v8 = &objc_alloc_ptr;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  v24 = [v26 copy];

  return v24;
}

@end