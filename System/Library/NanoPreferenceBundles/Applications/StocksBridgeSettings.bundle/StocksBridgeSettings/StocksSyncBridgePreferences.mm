@interface StocksSyncBridgePreferences
- (BOOL)hasComplicationDisplayModeBeenSet;
- (NSString)defaultStockSymbol;
- (StocksSyncBridgePreferences)initWithPersistence:(id)persistence delegate:(id)delegate;
- (unint64_t)complicationDisplayMode;
- (void)_notifyDelegateOfUpdate;
- (void)dealloc;
- (void)setComplicationDisplayMode:(unint64_t)mode;
- (void)setDefaultStockSymbol:(id)symbol;
@end

@implementation StocksSyncBridgePreferences

- (StocksSyncBridgePreferences)initWithPersistence:(id)persistence delegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = StocksSyncBridgePreferences;
  v4 = [(StocksSyncPreferences *)&v8 initWithPersistence:persistence delegate:delegate];
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
  delegate = [(StocksSyncPreferences *)self delegate];
  [delegate preferencesUpdated:self];
}

- (unint64_t)complicationDisplayMode
{
  persistence = [(StocksSyncPreferences *)self persistence];
  [persistence synchronize];

  persistence2 = [(StocksSyncPreferences *)self persistence];
  v5 = [persistence2 integerForKey:@"DefaultComplication"];

  if (v5 <= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (void)setComplicationDisplayMode:(unint64_t)mode
{
  persistence = [(StocksSyncPreferences *)self persistence];
  [persistence setInteger:mode forKey:@"DefaultComplication"];

  persistence2 = [(StocksSyncPreferences *)self persistence];
  [persistence2 synchronize];
}

- (NSString)defaultStockSymbol
{
  persistence = [(StocksSyncPreferences *)self persistence];
  [persistence synchronize];

  persistence2 = [(StocksSyncPreferences *)self persistence];
  v5 = [persistence2 stringForKey:@"DefaultStock"];

  return v5;
}

- (void)setDefaultStockSymbol:(id)symbol
{
  symbolCopy = symbol;
  persistence = [(StocksSyncPreferences *)self persistence];
  [persistence setObject:symbolCopy forKey:@"DefaultStock"];

  persistence2 = [(StocksSyncPreferences *)self persistence];
  [persistence2 synchronize];
}

- (BOOL)hasComplicationDisplayModeBeenSet
{
  persistence = [(StocksSyncPreferences *)self persistence];
  [persistence synchronize];

  persistence2 = [(StocksSyncPreferences *)self persistence];
  v5 = [persistence2 objectForKey:@"DefaultComplication"];
  LOBYTE(persistence) = v5 != 0;

  return persistence;
}

@end