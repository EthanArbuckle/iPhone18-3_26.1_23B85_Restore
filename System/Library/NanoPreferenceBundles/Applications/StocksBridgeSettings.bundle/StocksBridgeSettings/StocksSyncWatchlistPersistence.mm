@interface StocksSyncWatchlistPersistence
- (StocksSyncWatchlistPersistence)init;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
- (int64_t)integerForKey:(id)key;
- (void)removeObjectForKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
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

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  companionDefaults = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  v6 = [companionDefaults integerForKey:keyCopy];

  return v6;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  companionDefaults = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  [companionDefaults setInteger:integer forKey:keyCopy];

  keysToSynchronize = [(StocksSyncWatchlistPersistence *)self keysToSynchronize];
  [keysToSynchronize addObject:keyCopy];
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  companionDefaults = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  v6 = [companionDefaults stringForKey:keyCopy];

  return v6;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  companionDefaults = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  v6 = [companionDefaults objectForKey:keyCopy];

  return v6;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  companionDefaults = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  [companionDefaults removeObjectForKey:keyCopy];

  keysToSynchronize = [(StocksSyncWatchlistPersistence *)self keysToSynchronize];
  [keysToSynchronize addObject:keyCopy];
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  companionDefaults = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  [companionDefaults setObject:objectCopy forKey:keyCopy];

  keysToSynchronize = [(StocksSyncWatchlistPersistence *)self keysToSynchronize];
  [keysToSynchronize addObject:keyCopy];
}

- (void)synchronize
{
  companionDefaults = [(StocksSyncWatchlistPersistence *)self companionDefaults];
  [companionDefaults synchronize];

  keysToSynchronize = [(StocksSyncWatchlistPersistence *)self keysToSynchronize];
  v5 = [keysToSynchronize count];

  if (v5)
  {
    syncManager = [(StocksSyncWatchlistPersistence *)self syncManager];
    keysToSynchronize2 = [(StocksSyncWatchlistPersistence *)self keysToSynchronize];
    [syncManager synchronizeUserDefaultsDomain:@"group.com.apple.stocks" keys:keysToSynchronize2 container:@"com.apple.stocks.watchapp" appGroupContainer:@"group.com.apple.stocks"];

    keysToSynchronize3 = [(StocksSyncWatchlistPersistence *)self keysToSynchronize];
    [keysToSynchronize3 removeAllObjects];
  }
}

@end