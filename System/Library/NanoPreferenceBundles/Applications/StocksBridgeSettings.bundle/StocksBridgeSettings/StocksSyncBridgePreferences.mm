@interface StocksSyncBridgePreferences
- (BOOL)hasComplicationDisplayModeBeenSet;
- (NSString)defaultStockSymbol;
- (StocksSyncBridgePreferences)initWithPersistence:(id)a3 delegate:(id)a4;
- (unint64_t)complicationDisplayMode;
- (void)_notifyDelegateOfUpdate;
- (void)dealloc;
- (void)setComplicationDisplayMode:(unint64_t)a3;
- (void)setDefaultStockSymbol:(id)a3;
@end

@implementation StocksSyncBridgePreferences

- (StocksSyncBridgePreferences)initWithPersistence:(id)a3 delegate:(id)a4
{
  v8.receiver = self;
  v8.super_class = StocksSyncBridgePreferences;
  v4 = [(StocksSyncPreferences *)&v8 initWithPersistence:a3 delegate:a4];
  if (v4)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_3424, @"com.apple.stocks.watchapp.bridge-preferences-updated", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v4, sub_3424, kNPSInitialSyncCompletionDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v4;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = StocksSyncBridgePreferences;
  [(StocksSyncBridgePreferences *)&v4 dealloc];
}

- (void)_notifyDelegateOfUpdate
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = [(StocksSyncPreferences *)self delegate];
  [v3 preferencesUpdated:self];
}

- (unint64_t)complicationDisplayMode
{
  v3 = [(StocksSyncPreferences *)self persistence];
  [v3 synchronize];

  v4 = [(StocksSyncPreferences *)self persistence];
  v5 = [v4 integerForKey:@"DefaultComplication"];

  if (v5 <= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (void)setComplicationDisplayMode:(unint64_t)a3
{
  v5 = [(StocksSyncPreferences *)self persistence];
  [v5 setInteger:a3 forKey:@"DefaultComplication"];

  v6 = [(StocksSyncPreferences *)self persistence];
  [v6 synchronize];
}

- (NSString)defaultStockSymbol
{
  v3 = [(StocksSyncPreferences *)self persistence];
  [v3 synchronize];

  v4 = [(StocksSyncPreferences *)self persistence];
  v5 = [v4 stringForKey:@"DefaultStock"];

  return v5;
}

- (void)setDefaultStockSymbol:(id)a3
{
  v4 = a3;
  v5 = [(StocksSyncPreferences *)self persistence];
  [v5 setObject:v4 forKey:@"DefaultStock"];

  v6 = [(StocksSyncPreferences *)self persistence];
  [v6 synchronize];
}

- (BOOL)hasComplicationDisplayModeBeenSet
{
  v3 = [(StocksSyncPreferences *)self persistence];
  [v3 synchronize];

  v4 = [(StocksSyncPreferences *)self persistence];
  v5 = [v4 objectForKey:@"DefaultComplication"];
  LOBYTE(v3) = v5 != 0;

  return v3;
}

@end