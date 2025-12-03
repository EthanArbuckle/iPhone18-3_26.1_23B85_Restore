@interface StocksSyncComplicationPreferences
+ (StocksSyncComplicationPreferences)sharedPreferences;
- (NSArray)stocks;
- (NSBundle)bundle;
- (NSString)defaultStockSymbol;
- (id)complicationDisplayModeDescription:(unint64_t)description;
- (id)initPrivate;
- (unint64_t)complicationDisplayMode;
- (void)_notifyObservers;
- (void)addPreferencesObserver:(id)observer;
- (void)removePreferencesObserver:(id)observer;
- (void)setComplicationDisplayMode:(unint64_t)mode;
- (void)setDefaultStockSymbol:(id)symbol;
@end

@implementation StocksSyncComplicationPreferences

+ (StocksSyncComplicationPreferences)sharedPreferences
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1BD8;
  block[3] = &unk_C328;
  block[4] = self;
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

- (void)addPreferencesObserver:(id)observer
{
  observerCopy = observer;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  observers = [(StocksSyncComplicationPreferences *)self observers];
  [observers addObject:observerCopy];
}

- (void)removePreferencesObserver:(id)observer
{
  observerCopy = observer;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  observers = [(StocksSyncComplicationPreferences *)self observers];
  [observers removeObject:observerCopy];
}

- (id)complicationDisplayModeDescription:(unint64_t)description
{
  v4 = +[StocksSyncComplicationPreferences sharedPreferences];
  bundle = [v4 bundle];
  v6 = [bundle localizedStringForKey:@"METRIC_OPTIONS_CURRENT_PRICE" value:&stru_C5A0 table:@"MetricSettings"];

  v7 = +[StocksSyncComplicationPreferences sharedPreferences];
  bundle2 = [v7 bundle];
  v9 = [bundle2 localizedStringForKey:@"METRIC_OPTIONS_POINTS_CHANGE" value:&stru_C5A0 table:@"MetricSettings"];

  v10 = +[StocksSyncComplicationPreferences sharedPreferences];
  bundle3 = [v10 bundle];
  v12 = [bundle3 localizedStringForKey:@"METRIC_OPTIONS_PERCENTAGE_CHANGE" value:&stru_C5A0 table:@"MetricSettings"];

  v13 = +[StocksSyncComplicationPreferences sharedPreferences];
  bundle4 = [v13 bundle];
  v15 = [bundle4 localizedStringForKey:@"METRIC_OPTIONS_MARKET_CAP" value:&stru_C5A0 table:@"MetricSettings"];

  v19[0] = v6;
  v19[1] = v9;
  v19[2] = v12;
  v19[3] = v15;
  v16 = v19[description];
  for (i = 3; i != -1; --i)
  {
  }

  return v16;
}

- (void)_notifyObservers
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  observers = [(StocksSyncComplicationPreferences *)self observers];
  allObjects = [observers allObjects];
  [allObjects makeObjectsPerformSelector:"preferencesObservedUpdate:" withObject:self];
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
  bridgePreferences = [(StocksSyncComplicationPreferences *)self bridgePreferences];
  complicationDisplayMode = [bridgePreferences complicationDisplayMode];

  return complicationDisplayMode;
}

- (void)setComplicationDisplayMode:(unint64_t)mode
{
  bridgePreferences = [(StocksSyncComplicationPreferences *)self bridgePreferences];
  [bridgePreferences setComplicationDisplayMode:mode];

  [(StocksSyncComplicationPreferences *)self _notifyObservers];
}

- (NSString)defaultStockSymbol
{
  bridgePreferences = [(StocksSyncComplicationPreferences *)self bridgePreferences];
  defaultStockSymbol = [bridgePreferences defaultStockSymbol];

  return defaultStockSymbol;
}

- (void)setDefaultStockSymbol:(id)symbol
{
  symbolCopy = symbol;
  bridgePreferences = [(StocksSyncComplicationPreferences *)self bridgePreferences];
  [bridgePreferences setDefaultStockSymbol:symbolCopy];

  [(StocksSyncComplicationPreferences *)self _notifyObservers];
}

- (NSArray)stocks
{
  appPreferences = [(StocksSyncComplicationPreferences *)self appPreferences];
  stocklist = [appPreferences stocklist];

  return stocklist;
}

@end