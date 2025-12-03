@interface StocksSyncPreferences
- (StocksSyncPreferences)initWithPersistence:(id)persistence delegate:(id)delegate;
- (StocksSyncPreferencesDelegate)delegate;
@end

@implementation StocksSyncPreferences

- (StocksSyncPreferences)initWithPersistence:(id)persistence delegate:(id)delegate
{
  persistenceCopy = persistence;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = StocksSyncPreferences;
  v9 = [(StocksSyncPreferences *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistence, persistence);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

- (StocksSyncPreferencesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end