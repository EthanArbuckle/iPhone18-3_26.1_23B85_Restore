@interface StocksSyncComplicationPreferences
+ (StocksSyncComplicationPreferences)sharedPreferences;
- (NSArray)stocks;
- (NSBundle)bundle;
- (NSString)defaultStockSymbol;
- (id)complicationDisplayModeDescription:(unint64_t)a3;
- (id)initPrivate;
- (unint64_t)complicationDisplayMode;
- (void)_notifyObservers;
- (void)addPreferencesObserver:(id)a3;
- (void)removePreferencesObserver:(id)a3;
- (void)setComplicationDisplayMode:(unint64_t)a3;
- (void)setDefaultStockSymbol:(id)a3;
@end

@implementation StocksSyncComplicationPreferences

+ (StocksSyncComplicationPreferences)sharedPreferences
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1BD8;
  block[3] = &unk_C328;
  block[4] = a1;
  if (qword_11738 != -1)
  {
    dispatch_once(&qword_11738, block);
  }

  v2 = qword_11730;

  return v2;
}

- (id)initPrivate
{
  v13.receiver = self;
  v13.super_class = StocksSyncComplicationPreferences;
  v2 = [(StocksSyncComplicationPreferences *)&v13 init];
  if (v2)
  {
    v3 = [StocksSyncAppPreferences alloc];
    v4 = objc_opt_new();
    v5 = [(StocksSyncAppPreferences *)v3 initWithPersistence:v4 delegate:v2];
    appPreferences = v2->_appPreferences;
    v2->_appPreferences = v5;

    v7 = objc_opt_new();
    v8 = [[StocksSyncBridgePreferences alloc] initWithPersistence:v7 delegate:v2];
    bridgePreferences = v2->_bridgePreferences;
    v2->_bridgePreferences = v8;

    v10 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v10;
  }

  return v2;
}

- (void)addPreferencesObserver:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(StocksSyncComplicationPreferences *)self observers];
  [v5 addObject:v4];
}

- (void)removePreferencesObserver:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(StocksSyncComplicationPreferences *)self observers];
  [v5 removeObject:v4];
}

- (id)complicationDisplayModeDescription:(unint64_t)a3
{
  v4 = +[StocksSyncComplicationPreferences sharedPreferences];
  v5 = [v4 bundle];
  v6 = [v5 localizedStringForKey:@"METRIC_OPTIONS_CURRENT_PRICE" value:&stru_C5A0 table:@"MetricSettings"];

  v7 = +[StocksSyncComplicationPreferences sharedPreferences];
  v8 = [v7 bundle];
  v9 = [v8 localizedStringForKey:@"METRIC_OPTIONS_POINTS_CHANGE" value:&stru_C5A0 table:@"MetricSettings"];

  v10 = +[StocksSyncComplicationPreferences sharedPreferences];
  v11 = [v10 bundle];
  v12 = [v11 localizedStringForKey:@"METRIC_OPTIONS_PERCENTAGE_CHANGE" value:&stru_C5A0 table:@"MetricSettings"];

  v13 = +[StocksSyncComplicationPreferences sharedPreferences];
  v14 = [v13 bundle];
  v15 = [v14 localizedStringForKey:@"METRIC_OPTIONS_MARKET_CAP" value:&stru_C5A0 table:@"MetricSettings"];

  v19[0] = v6;
  v19[1] = v9;
  v19[2] = v12;
  v19[3] = v15;
  v16 = v19[a3];
  for (i = 3; i != -1; --i)
  {
  }

  return v16;
}

- (void)_notifyObservers
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = [(StocksSyncComplicationPreferences *)self observers];
  v3 = [v4 allObjects];
  [v3 makeObjectsPerformSelector:"preferencesObservedUpdate:" withObject:self];
}

- (NSBundle)bundle
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_20B0;
  block[3] = &unk_C350;
  block[4] = self;
  if (qword_11748 != -1)
  {
    dispatch_once(&qword_11748, block);
  }

  return qword_11740;
}

- (unint64_t)complicationDisplayMode
{
  v2 = [(StocksSyncComplicationPreferences *)self bridgePreferences];
  v3 = [v2 complicationDisplayMode];

  return v3;
}

- (void)setComplicationDisplayMode:(unint64_t)a3
{
  v5 = [(StocksSyncComplicationPreferences *)self bridgePreferences];
  [v5 setComplicationDisplayMode:a3];

  [(StocksSyncComplicationPreferences *)self _notifyObservers];
}

- (NSString)defaultStockSymbol
{
  v2 = [(StocksSyncComplicationPreferences *)self bridgePreferences];
  v3 = [v2 defaultStockSymbol];

  return v3;
}

- (void)setDefaultStockSymbol:(id)a3
{
  v4 = a3;
  v5 = [(StocksSyncComplicationPreferences *)self bridgePreferences];
  [v5 setDefaultStockSymbol:v4];

  [(StocksSyncComplicationPreferences *)self _notifyObservers];
}

- (NSArray)stocks
{
  v2 = [(StocksSyncComplicationPreferences *)self appPreferences];
  v3 = [v2 stocklist];

  return v3;
}

@end