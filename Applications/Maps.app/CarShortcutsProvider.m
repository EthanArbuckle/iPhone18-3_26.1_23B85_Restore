@interface CarShortcutsProvider
- (CarShortcutsProvider)init;
- (CarShortcutsProviderDelegate)delegate;
- (NSString)uniqueName;
- (void)_createMapsSuggestionEngineWithCallBack:(id)a3;
- (void)_fetchSuggestions;
- (void)_processTopSuggestions:(id)a3 error:(id)a4;
- (void)invalidateForMapsSuggestionsManager:(id)a3;
- (void)setSinkAttached:(BOOL)a3;
- (void)start;
- (void)stop;
@end

@implementation CarShortcutsProvider

- (CarShortcutsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)invalidateForMapsSuggestionsManager:(id)a3
{
  objc_initWeak(&location, self);
  msgQueue = self->_msgQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D0FB58;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, &location);
  dispatch_async(msgQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)_processTopSuggestions:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100D0FD8C;
  v23 = sub_100D0FD9C;
  v24 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100D0FDA4;
  v17 = &unk_1016514F0;
  v18 = &v19;
  MapsSuggestionsShortcutSplit();
  v8 = v20[5];
  v9 = [NSPredicate predicateWithBlock:&stru_101651510];
  v10 = [v8 filteredArrayUsingPredicate:v9];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D0FDB4;
  block[3] = &unk_101661A90;
  block[4] = self;
  v13 = v10;
  v11 = v10;
  dispatch_async(&_dispatch_main_q, block);

  _Block_object_dispose(&v19, 8);
}

- (void)_fetchSuggestions
{
  objc_initWeak(&location, self);
  mapsSuggestionsEngine = self->_mapsSuggestionsEngine;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100D0FF1C;
  v4[3] = &unk_10165F290;
  objc_copyWeak(&v5, &location);
  [(MapsSuggestionsEngine *)mapsSuggestionsEngine topSuggestionsForSink:self count:20 transportType:0 callback:v4 onQueue:self->_msgQueue];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_createMapsSuggestionEngineWithCallBack:(id)a3
{
  v3 = a3;
  v8 = MapsSuggestionsEngineForMapsProcess();
  [v8 setMapType:1];
  v4 = [DrivePreferences alloc];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [(DrivePreferences *)v4 initWithDefaults:v5];
  v7 = [(DrivePreferences *)v6 automobileOptions];

  [v8 setAutomobileOptions:v7];
  v3[2](v3, v8);
}

- (void)stop
{
  objc_initWeak(&location, self);
  msgQueue = self->_msgQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100D10104;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(msgQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)start
{
  objc_initWeak(&location, self);
  msgQueue = self->_msgQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100D101F0;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(msgQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setSinkAttached:(BOOL)a3
{
  if (self->_sinkAttached != a3)
  {
    self->_sinkAttached = a3;
    mapsSuggestionsEngine = self->_mapsSuggestionsEngine;
    if (a3)
    {
      [(MapsSuggestionsEngine *)mapsSuggestionsEngine addAdditionalFilter:self->_myAdditionalFilter forSink:self];
      [(MapsSuggestionsEngine *)self->_mapsSuggestionsEngine addAdditionalFilter:self->_offlineFilter forSink:self];
      [(MapsSuggestionsEngine *)self->_mapsSuggestionsEngine attachSink:self];

      [(CarShortcutsProvider *)self _fetchSuggestions];
    }

    else
    {
      [(MapsSuggestionsEngine *)mapsSuggestionsEngine detachSink:self];
      [(MapsSuggestionsEngine *)self->_mapsSuggestionsEngine removeAdditionalFilter:self->_myAdditionalFilter forSink:self];
      v5 = self->_mapsSuggestionsEngine;
      offlineFilter = self->_offlineFilter;

      [(MapsSuggestionsEngine *)v5 removeAdditionalFilter:offlineFilter forSink:self];
    }
  }
}

- (CarShortcutsProvider)init
{
  v11.receiver = self;
  v11.super_class = CarShortcutsProvider;
  v2 = [(CarShortcutsProvider *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("CarShortcutsProviderMapsSuggestionsQueue", v3);
    msgQueue = v2->_msgQueue;
    v2->_msgQueue = v4;

    v6 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_101651460];
    offlineFilter = v2->_offlineFilter;
    v2->_offlineFilter = v6;

    v8 = [MapsSuggestionsBlockFilter filterWithBlock:&stru_101651480];
    myAdditionalFilter = v2->_myAdditionalFilter;
    v2->_myAdditionalFilter = v8;
  }

  return v2;
}

@end