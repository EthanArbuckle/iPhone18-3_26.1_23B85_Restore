@interface AEPreferences
+ (id)defaultPreferences;
+ (id)preferencesWithPreferencePrimitives:(id)a3 systemNotificationPrimitives:(id)a4 queue:(id)a5;
- (AEPreference)expirationTime;
- (AEPreferences)initWithPreferencePrimitives:(id)a3 systemNotificationPrimitives:(id)a4 queue:(id)a5;
- (id)preferenceForKey:(id)a3 defaultArrayValue:(id)a4;
- (id)preferenceForKey:(id)a3 defaultNumberValue:(id)a4;
- (void)dealloc;
- (void)preferencesDidUpdate;
@end

@implementation AEPreferences

- (void)dealloc
{
  v3 = [(AEPreferences *)self notificationObservation];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = AEPreferences;
  [(AEPreferences *)&v4 dealloc];
}

+ (id)defaultPreferences
{
  v2 = [[a1 alloc] initWithPreferencePrimitives:0 systemNotificationPrimitives:0 queue:0];

  return v2;
}

+ (id)preferencesWithPreferencePrimitives:(id)a3 systemNotificationPrimitives:(id)a4 queue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithPreferencePrimitives:v10 systemNotificationPrimitives:v9 queue:v8];

  return v11;
}

- (AEPreferences)initWithPreferencePrimitives:(id)a3 systemNotificationPrimitives:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = AEPreferences;
  v12 = [(AEPreferences *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preferencePrimitives, a3);
    objc_storeStrong(&v13->_systemNotificationPrimitives, a4);
    v14 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    cachedPreferencesByKey = v13->_cachedPreferencesByKey;
    v13->_cachedPreferencesByKey = v14;

    if (v10)
    {
      if (v11)
      {
        objc_initWeak(&location, v13);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __81__AEPreferences_initWithPreferencePrimitives_systemNotificationPrimitives_queue___block_invoke;
        v19[3] = &unk_278BB6CF0;
        objc_copyWeak(&v20, &location);
        v16 = [v10 observeSystemNotificationWithName:@"com.apple.assessmentmode.preferencesDidChangeNotification" onQueue:v11 withHandler:v19];
        notificationObservation = v13->_notificationObservation;
        v13->_notificationObservation = v16;

        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);
      }
    }
  }

  return v13;
}

void __81__AEPreferences_initWithPreferencePrimitives_systemNotificationPrimitives_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained preferencesDidUpdate];
}

- (AEPreference)expirationTime
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:28800.0];
  v4 = [(AEPreferences *)self preferenceForKey:@"ExpirationTime" defaultNumberValue:v3];

  return v4;
}

- (id)preferenceForKey:(id)a3 defaultNumberValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AEPreferences *)self cachedPreferencesByKey];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [AEPreference alloc];
    v12 = [(AEPreferences *)self preferencePrimitives];
    v13 = [(AEPreferences *)self systemNotificationPrimitives];
    v10 = [(AEPreference *)v11 initWithKey:v6 preferencesPrimitives:v12 systemNotificationPrimitives:v13 defaultValue:v7];

    v14 = [(AEPreferences *)self cachedPreferencesByKey];
    [v14 setObject:v10 forKey:v6];
  }

  return v10;
}

- (id)preferenceForKey:(id)a3 defaultArrayValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AEPreferences *)self cachedPreferencesByKey];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [AEPreference alloc];
    v12 = [(AEPreferences *)self preferencePrimitives];
    v13 = [(AEPreferences *)self systemNotificationPrimitives];
    v10 = [(AEPreference *)v11 initWithKey:v6 preferencesPrimitives:v12 systemNotificationPrimitives:v13 defaultValue:v7];

    v14 = [(AEPreferences *)self cachedPreferencesByKey];
    [v14 setObject:v10 forKey:v6];
  }

  return v10;
}

- (void)preferencesDidUpdate
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(AEPreferences *)self cachedPreferencesByKey];
  v3 = [v2 objectEnumerator];
  v4 = [v3 allObjects];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) preferenceDidUpdate];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end