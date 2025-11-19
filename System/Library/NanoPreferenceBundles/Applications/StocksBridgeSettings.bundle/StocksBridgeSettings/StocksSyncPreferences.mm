@interface StocksSyncPreferences
- (StocksSyncPreferences)initWithPersistence:(id)a3 delegate:(id)a4;
- (StocksSyncPreferencesDelegate)delegate;
@end

@implementation StocksSyncPreferences

- (StocksSyncPreferences)initWithPersistence:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = StocksSyncPreferences;
  v9 = [(StocksSyncPreferences *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistence, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

- (StocksSyncPreferencesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end