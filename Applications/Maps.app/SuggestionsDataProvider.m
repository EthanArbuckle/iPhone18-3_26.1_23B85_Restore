@interface SuggestionsDataProvider
- (GEOObserverHashTable)observers;
- (NSString)uniqueName;
- (SuggestionsDataProvider)initWithViewMode:(int64_t)a3 filter:(id)a4 includePlaceholderShortcuts:(BOOL)a5;
- (id)strippedData:(id)a3;
- (void)_addressbookDidChange:(id)a3;
- (void)_createMapsSuggestionEngineWithCallBack:(id)a3;
- (void)_fetchSuggestionsFromStorageFile;
- (void)_fetchSuggestionsWithCompletion:(id)a3;
- (void)_processTopSuggestions:(id)a3 error:(id)a4 wasFromStorageFile:(BOOL)a5;
- (void)_saveMapsSuggestionsEngineStateIfNeeded;
- (void)_scheduleFetch;
- (void)_setNeedsSaveMapsSuggestionsEngineState;
- (void)_startFetchingSuggestionsAndNotifyObservers:(BOOL)a3;
- (void)_startObservingAutoOptions;
- (void)_startObservingTitlesForEntry:(id)a3;
- (void)_startOrStopFetchingSuggestionsAsNeededAndNotifyObservers:(BOOL)a3;
- (void)_stopFetchingSuggestionsAndNotifyObservers:(BOOL)a3;
- (void)_stopObservingAutoOptions;
- (void)_stopObservingTitlesForEntry:(id)a3;
- (void)_updateAppConnectionSuggestionsEntriesIfNeeded:(id)a3;
- (void)_updateObservedShortcutsWithShortcuts:(id)a3;
- (void)_updateObservedSuggestionsWithSuggestions:(id)a3;
- (void)_updateTitlesForEntry:(id)a3;
- (void)_willEnterForeground:(id)a3;
- (void)attachAndFetchFromStorageFile:(BOOL)a3;
- (void)dealloc;
- (void)invalidateForMapsSuggestionsManager:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setActive:(BOOL)a3;
@end

@implementation SuggestionsDataProvider

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)_startObservingAutoOptions
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [&off_1016ED970 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(&off_1016ED970);
        }

        [v3 addObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7) options:1 context:off_10192A370];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [&off_1016ED970 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_fetchSuggestionsFromStorageFile
{
  if ([(SuggestionsDataProvider *)self attached])
  {
    objc_initWeak(&location, self);
    mapsSuggestionsEngine = self->_mapsSuggestionsEngine;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100707B50;
    v4[3] = &unk_10165F290;
    objc_copyWeak(&v5, &location);
    [(MapsSuggestionsEngine *)mapsSuggestionsEngine topSuggestionsFromStorageFile:0 sink:self count:99 transportType:4 callback:v4 onQueue:self->_msgQueue];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  if (off_10192A370 == a6)
  {
    v13 = [DrivePreferences alloc];
    v14 = +[NSUserDefaults standardUserDefaults];
    v15 = [(DrivePreferences *)v13 initWithDefaults:v14];
    v16 = [(DrivePreferences *)v15 automobileOptions];

    msgQueue = self->_msgQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100705508;
    block[3] = &unk_101661340;
    v18 = &v26;
    objc_copyWeak(&v26, &location);
    v25 = v16;
    v19 = v16;
    dispatch_async(msgQueue, block);

LABEL_6:
    objc_destroyWeak(v18);
    goto LABEL_7;
  }

  if (off_10192A378 == a6)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100705560;
    v21[3] = &unk_101661340;
    v18 = &v23;
    objc_copyWeak(&v23, &location);
    v22 = v11;
    dispatch_async(&_dispatch_main_q, v21);
    v19 = v22;
    goto LABEL_6;
  }

  v20.receiver = self;
  v20.super_class = SuggestionsDataProvider;
  [(SuggestionsDataProvider *)&v20 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_7:
  objc_destroyWeak(&location);
}

- (void)_addressbookDidChange:(id)a3
{
  v5 = sub_1000410AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    *buf = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  msgQueue = self->_msgQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100705718;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v11, buf);
  dispatch_async(msgQueue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_saveMapsSuggestionsEngineStateIfNeeded
{
  if (self->_needsSaveMapsSuggestionState)
  {
    v9 = v2;
    v10 = v3;
    self->_needsSaveMapsSuggestionState = 0;
    v4 = self->_mapsSuggestionsEngine;
    v5 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100705828;
    block[3] = &unk_101661B18;
    v8 = v4;
    v6 = v4;
    dispatch_async(v5, block);
  }
}

- (void)_setNeedsSaveMapsSuggestionsEngineState
{
  self->_needsSaveMapsSuggestionState = 1;
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 1000000000);
  msgQueue = self->_msgQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100705904;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, &location);
  dispatch_after(v3, msgQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_stopObservingTitlesForEntry:(id)a3
{
  v5 = a3;
  v6 = sub_1000410AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@ %@", &v10, 0x20u);
  }

  [v5 removeObserver:self forKeyPath:@"title" context:off_10192A378];
  [v5 removeObserver:self forKeyPath:@"subtitle" context:off_10192A378];
}

- (void)_startObservingTitlesForEntry:(id)a3
{
  v5 = a3;
  v6 = sub_1000410AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@ %@", &v10, 0x20u);
  }

  [v5 addObserver:self forKeyPath:@"title" options:1 context:off_10192A378];
  [v5 addObserver:self forKeyPath:@"subtitle" options:1 context:off_10192A378];
}

- (void)_updateTitlesForEntry:(id)a3
{
  v5 = a3;
  v6 = sub_1000410AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v27 = 138412802;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@ %@", &v27, 0x20u);
  }

  v10 = [(NSArray *)self->_observedSuggestions indexOfObjectIdenticalTo:v5];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v10, -[NSArray objectAtIndexedSubscript:](self->_suggestions, "objectAtIndexedSubscript:", v10), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isEqualToEntry:v5], v12, (v13 & 1) != 0))
  {
    v14 = 0;
  }

  else
  {
    v14 = [(SuggestionsDataProvider *)self attached];
    if (v14)
    {
      v15 = [NSMutableArray arrayWithArray:self->_suggestions];
      v16 = [v5 copy];
      [v15 setObject:v16 atIndexedSubscript:v11];

      v17 = [v15 copy];
      suggestions = self->_suggestions;
      self->_suggestions = v17;
    }

    [(SuggestionsDataProvider *)self _setNeedsSaveMapsSuggestionsEngineState];
  }

  v19 = [(NSArray *)self->_observedShortcuts indexOfObjectIdenticalTo:v5];
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_10:
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v20 = v19;
  v21 = [(NSArray *)self->_shortcuts objectAtIndexedSubscript:v19];
  v22 = [v21 isEqualToEntry:v5];

  if (v22)
  {
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (![(SuggestionsDataProvider *)self attached])
    {
      [(SuggestionsDataProvider *)self _setNeedsSaveMapsSuggestionsEngineState];
      goto LABEL_10;
    }

    v23 = [NSMutableArray arrayWithArray:self->_shortcuts];
    v24 = [v5 copy];
    [v23 setObject:v24 atIndexedSubscript:v20];

    v25 = [v23 copy];
    shortcuts = self->_shortcuts;
    self->_shortcuts = v25;

    [(SuggestionsDataProvider *)self _setNeedsSaveMapsSuggestionsEngineState];
  }

LABEL_17:
  [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
LABEL_18:
}

- (void)_updateObservedShortcutsWithShortcuts:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [NSMutableArray arrayWithArray:self->_observedShortcuts];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v4;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        [v6 removeObjectIdenticalTo:v12];
        if ([(NSArray *)self->_observedShortcuts indexOfObjectIdenticalTo:v12]== 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v9);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(SuggestionsDataProvider *)self _startObservingTitlesForEntry:*(*(&v28 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v15);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v6;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (k = 0; k != v20; k = k + 1)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(SuggestionsDataProvider *)self _stopObservingTitlesForEntry:*(*(&v24 + 1) + 8 * k), v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v20);
  }

  observedShortcuts = self->_observedShortcuts;
  self->_observedShortcuts = v7;
}

- (void)_updateObservedSuggestionsWithSuggestions:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [NSMutableArray arrayWithArray:self->_observedSuggestions];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v4;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        [v6 removeObjectIdenticalTo:v12];
        if ([(NSArray *)self->_observedSuggestions indexOfObjectIdenticalTo:v12]== 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v9);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(SuggestionsDataProvider *)self _startObservingTitlesForEntry:*(*(&v28 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v15);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v6;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (k = 0; k != v20; k = k + 1)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(SuggestionsDataProvider *)self _stopObservingTitlesForEntry:*(*(&v24 + 1) + 8 * k), v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v20);
  }

  observedSuggestions = self->_observedSuggestions;
  self->_observedSuggestions = v7;
}

- (void)_stopObservingAutoOptions
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [&off_1016ED970 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(&off_1016ED970);
        }

        [v3 removeObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [&off_1016ED970 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updateAppConnectionSuggestionsEntriesIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 type] == 12)
        {
          v12 = [v11 geoMapItem];

          if (!v12)
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = self->_requester;
    appConnectionMapsSuggestionsUpdateQueue = self->_appConnectionMapsSuggestionsUpdateQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100706660;
    v16[3] = &unk_101661A90;
    v17 = v5;
    v18 = v13;
    v15 = v13;
    dispatch_async(appConnectionMapsSuggestionsUpdateQueue, v16);
  }
}

- (void)attachAndFetchFromStorageFile:(BOOL)a3
{
  v3 = a3;
  self->_attached = 1;
  [(SuggestionsDataProvider *)self _startObservingAutoOptions];
  v5 = [DrivePreferences alloc];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [(DrivePreferences *)v5 initWithDefaults:v6];
  v8 = [(DrivePreferences *)v7 automobileOptions];

  [(MapsSuggestionsEngine *)self->_mapsSuggestionsEngine setAutomobileOptions:v8];
  [(MapsSuggestionsEngine *)self->_mapsSuggestionsEngine attachSink:self];
  if (v3)
  {
    [(SuggestionsDataProvider *)self _fetchSuggestionsFromStorageFile];
  }

  else
  {
    [(SuggestionsDataProvider *)self _scheduleFetch];
  }
}

- (void)_stopFetchingSuggestionsAndNotifyObservers:(BOOL)a3
{
  v3 = a3;
  v6 = sub_1000410AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = @"NO";
    if (v3)
    {
      v10 = @"YES";
    }

    v11 = v10;
    *buf = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@%@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  msgQueue = self->_msgQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100706A88;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v14, buf);
  dispatch_async(msgQueue, block);
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)_startFetchingSuggestionsAndNotifyObservers:(BOOL)a3
{
  v3 = a3;
  v6 = sub_1000410AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = @"NO";
    if (v3)
    {
      v10 = @"YES";
    }

    v11 = v10;
    *buf = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@%@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  msgQueue = self->_msgQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100706C94;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v14, buf);
  dispatch_async(msgQueue, block);
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)_startOrStopFetchingSuggestionsAsNeededAndNotifyObservers:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIApplication _maps_isAnySceneForeground];
  if (!self->_active || v5 == 0)
  {

    [(SuggestionsDataProvider *)self _stopFetchingSuggestionsAndNotifyObservers:v3];
  }

  else
  {

    [(SuggestionsDataProvider *)self _startFetchingSuggestionsAndNotifyObservers:v3];
  }
}

- (void)_willEnterForeground:(id)a3
{
  if (self->_active)
  {
    [(SuggestionsDataProvider *)self _startFetchingSuggestionsAndNotifyObservers:1];
  }
}

- (id)strippedData:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          [v10 type];
          v11 = NSStringFromMapsSuggestionsEntryType();
          v12 = [NSString stringWithFormat:@"%@ %p", v11, v10];

          [v4 addObject:v12];
        }

        else
        {
          v11 = [NSString stringWithFormat:@"%@ %p", objc_opt_class(), v9];
          [v4 addObject:v11];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)_processTopSuggestions:(id)a3 error:(id)a4 wasFromStorageFile:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  if ([(SuggestionsDataProvider *)self attached])
  {
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = sub_10070733C;
    v31[4] = sub_10070734C;
    v32 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_10070733C;
    v29 = sub_10070734C;
    v30 = 0;
    location[7] = _NSConcreteStackBlock;
    location[8] = 3221225472;
    location[9] = sub_100707354;
    location[10] = &unk_101627A28;
    location[11] = self;
    location[12] = v31;
    location[1] = _NSConcreteStackBlock;
    location[2] = 3221225472;
    location[3] = sub_100707478;
    location[4] = &unk_101627A28;
    location[5] = self;
    location[6] = &v25;
    MapsSuggestionsShortcutSplit();
    if (!self->_includePlaceholderShortcuts)
    {
      v11 = v26[5];
      v12 = [NSPredicate predicateWithBlock:&stru_1016274A0];
      v13 = [v11 filteredArrayUsingPredicate:v12];
      v14 = v26[5];
      v26[5] = v13;
    }

    hasInitialData = self->_hasInitialData;
    if (!hasInitialData)
    {
      self->_hasInitialData = 1;
    }

    v16 = !hasInitialData;
    objc_initWeak(location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10070759C;
    block[3] = &unk_1016274C8;
    objc_copyWeak(v21, location);
    v19 = v31;
    v20 = &v25;
    v22 = a5;
    v21[1] = a2;
    v23 = v16;
    v18 = v9;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(v21);
    objc_destroyWeak(location);
    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(v31, 8);
  }
}

- (void)_fetchSuggestionsWithCompletion:(id)a3
{
  v4 = a3;
  if ([(SuggestionsDataProvider *)self attached])
  {
    objc_initWeak(&location, self);
    mapsSuggestionsEngine = self->_mapsSuggestionsEngine;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100707AB8;
    v6[3] = &unk_10165E308;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    [(MapsSuggestionsEngine *)mapsSuggestionsEngine topSuggestionsForSink:self count:99 transportType:4 callback:v6 onQueue:self->_msgQueue];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (void)_scheduleFetch
{
  v4 = [(MapsThrottler *)self->_fetchThrottler value];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 BOOLValue] ^ 1);
  [(MapsThrottler *)self->_fetchThrottler setValue:v3];
}

- (void)_createMapsSuggestionEngineWithCallBack:(id)a3
{
  v4 = a3;
  v5 = sub_1000410AC();
  v6 = os_signpost_id_generate(v5);

  v7 = sub_1000410AC();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CreateMapsSuggestionEngine", "", buf, 2u);
  }

  v9 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_101627460];
  v10 = MapsSuggestionsEngineForMapsProcess();
  v11 = v10;
  v12 = self->_viewMode + 1;
  if (v12 > 7)
  {
    v13 = 1;
  }

  else
  {
    v13 = dword_101215C80[v12];
  }

  [v10 setMapType:v13];
  filter = self->_filter;
  if (filter)
  {
    [v11 addAdditionalFilter:filter forSink:self];
  }

  [v11 addAdditionalFilter:v9 forSink:self];
  objc_initWeak(buf, self);
  v15 = [MapsThrottler alloc];
  msgQueue = self->_msgQueue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100707ECC;
  v22[3] = &unk_101656988;
  objc_copyWeak(&v23, buf);
  v17 = [(MapsThrottler *)v15 initWithInitialValue:&__kCFBooleanTrue throttlingInterval:msgQueue queue:v22 updateHandler:0.0];
  fetchThrottler = self->_fetchThrottler;
  self->_fetchThrottler = v17;

  v19 = sub_1000410AC();
  v20 = v19;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v6, "CreateMapsSuggestionEngine", "", v21, 2u);
  }

  v4[2](v4, v11);
  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (void)invalidateForMapsSuggestionsManager:(id)a3
{
  v5 = sub_1000410AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    *buf = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  msgQueue = self->_msgQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007080EC;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v11, buf);
  dispatch_async(msgQueue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v4 = a3;
    self->_active = a3;
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = v6;
    if (v4)
    {
      [v6 addObserver:self selector:"_addressbookDidChange:" name:@"AddressBookManagerDidUpdateAddressesNotification" object:0];

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"_willEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

      v7 = +[NSNotificationCenter defaultCenter];
      [v7 addObserver:self selector:"_didEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];
    }

    else
    {
      [v6 removeObserver:self];
    }

    [(SuggestionsDataProvider *)self _startOrStopFetchingSuggestionsAsNeededAndNotifyObservers:0];
  }
}

- (void)dealloc
{
  filter = self->_filter;
  if (filter)
  {
    [(MapsSuggestionsEngine *)self->_mapsSuggestionsEngine removeAdditionalFilter:filter forSink:self];
  }

  if (self->_attached)
  {
    [(SuggestionsDataProvider *)self _stopObservingAutoOptions];
  }

  [(SuggestionsDataProvider *)self _updateObservedSuggestionsWithSuggestions:&__NSArray0__struct];
  [(SuggestionsDataProvider *)self _updateObservedShortcutsWithShortcuts:&__NSArray0__struct];
  v4.receiver = self;
  v4.super_class = SuggestionsDataProvider;
  [(SuggestionsDataProvider *)&v4 dealloc];
}

- (SuggestionsDataProvider)initWithViewMode:(int64_t)a3 filter:(id)a4 includePlaceholderShortcuts:(BOOL)a5
{
  v9 = a4;
  v26.receiver = self;
  v26.super_class = SuggestionsDataProvider;
  v10 = [(SuggestionsDataProvider *)&v26 init];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("ShortcutsDataProviderMapsSuggestionsQueue", v11);
    msgQueue = v10->_msgQueue;
    v10->_msgQueue = v12;

    v10->_viewMode = a3;
    objc_storeStrong(&v10->_filter, a4);
    v10->_includePlaceholderShortcuts = a5;
    suggestions = v10->_suggestions;
    v10->_suggestions = &__NSArray0__struct;

    shortcuts = v10->_shortcuts;
    v10->_shortcuts = &__NSArray0__struct;

    observedSuggestions = v10->_observedSuggestions;
    v10->_observedSuggestions = &__NSArray0__struct;

    observedShortcuts = v10->_observedShortcuts;
    v10->_observedShortcuts = &__NSArray0__struct;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("SuggestionsDataProvider.appConnectionSuggestionsUpdateQueue", v18);
    appConnectionMapsSuggestionsUpdateQueue = v10->_appConnectionMapsSuggestionsUpdateQueue;
    v10->_appConnectionMapsSuggestionsUpdateQueue = v19;

    v21 = [[MapsSuggestionsRealNetworkRequester alloc] initFromResourceDepot:0];
    requester = v10->_requester;
    v10->_requester = v21;

    v23 = objc_alloc_init(SuggestionsItemSource);
    suggestionsItemSource = v10->_suggestionsItemSource;
    v10->_suggestionsItemSource = v23;
  }

  return v10;
}

@end