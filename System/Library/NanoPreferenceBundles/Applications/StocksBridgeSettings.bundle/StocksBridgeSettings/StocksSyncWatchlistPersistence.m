@interface StocksSyncWatchlistPersistence
- (StocksSyncWatchlistPersistence)init;
- (id)objectForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (int64_t)integerForKey:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)synchronize;
@end

@implementation StocksSyncWatchlistPersistence

- (StocksSyncWatchlistPersistence)init
{
  v12.receiver = self;
  v12.super_class = StocksSyncWatchlistPersistence;
  v2 = [(StocksSyncWatchlistPersistence *)&v12 init];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.stocks"];

    v5 = [[NSUserDefaults alloc] _initWithSuiteName:@"group.com.apple.stocks" container:v4];
    companionDefaults = v2->_companionDefaults;
    v2->_companionDefaults = v5;

    v7 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v7;

    v9 = objc_opt_new();
    keysToSynchronize = v2->_keysToSynchronize;
    v2->_keysToSynchronize = v9;
  }

  return v2;
}

- (int64_t)integerForKey:(id)a3
{
  v4 = a3;
  v5 = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  v6 = [v5 integerForKey:v4];

  return v6;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  [v7 setInteger:a3 forKey:v6];

  v8 = [(StocksSyncWatchlistPersistence *)self keysToSynchronize];
  [v8 addObject:v6];
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  v6 = [v5 stringForKey:v4];

  return v6;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  [v5 removeObjectForKey:v4];

  v6 = [(StocksSyncWatchlistPersistence *)self keysToSynchronize];
  [v6 addObject:v4];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  [v8 setObject:v7 forKey:v6];

  v9 = [(StocksSyncWatchlistPersistence *)self keysToSynchronize];
  [v9 addObject:v6];
}

- (void)synchronize
{
  v3 = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  [v3 synchronize];

  v4 = [(StocksSyncWatchlistPersistence *)self keysToSynchronize];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(StocksSyncWatchlistPersistence *)self syncManager];
    v7 = [(StocksSyncWatchlistPersistence *)self keysToSynchronize];
    [v6 synchronizeUserDefaultsDomain:@"group.com.apple.stocks" keys:v7 container:@"com.apple.stocks.watchapp" appGroupContainer:@"group.com.apple.stocks"];

    v8 = [(StocksSyncWatchlistPersistence *)self keysToSynchronize];
    [v8 removeAllObjects];
  }
}

@end