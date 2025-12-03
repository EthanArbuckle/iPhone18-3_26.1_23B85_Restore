@interface AEPreferences
+ (id)defaultPreferences;
+ (id)preferencesWithPreferencePrimitives:(id)primitives systemNotificationPrimitives:(id)notificationPrimitives queue:(id)queue;
- (AEPreference)expirationTime;
- (AEPreferences)initWithPreferencePrimitives:(id)primitives systemNotificationPrimitives:(id)notificationPrimitives queue:(id)queue;
- (id)preferenceForKey:(id)key defaultArrayValue:(id)value;
- (id)preferenceForKey:(id)key defaultNumberValue:(id)value;
- (void)dealloc;
- (void)preferencesDidUpdate;
@end

@implementation AEPreferences

- (void)dealloc
{
  notificationObservation = [(AEPreferences *)self notificationObservation];
  [notificationObservation invalidate];

  v4.receiver = self;
  v4.super_class = AEPreferences;
  [(AEPreferences *)&v4 dealloc];
}

+ (id)defaultPreferences
{
  v2 = [[self alloc] initWithPreferencePrimitives:0 systemNotificationPrimitives:0 queue:0];

  return v2;
}

+ (id)preferencesWithPreferencePrimitives:(id)primitives systemNotificationPrimitives:(id)notificationPrimitives queue:(id)queue
{
  queueCopy = queue;
  notificationPrimitivesCopy = notificationPrimitives;
  primitivesCopy = primitives;
  v11 = [[self alloc] initWithPreferencePrimitives:primitivesCopy systemNotificationPrimitives:notificationPrimitivesCopy queue:queueCopy];

  return v11;
}

- (AEPreferences)initWithPreferencePrimitives:(id)primitives systemNotificationPrimitives:(id)notificationPrimitives queue:(id)queue
{
  primitivesCopy = primitives;
  notificationPrimitivesCopy = notificationPrimitives;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = AEPreferences;
  v12 = [(AEPreferences *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preferencePrimitives, primitives);
    objc_storeStrong(&v13->_systemNotificationPrimitives, notificationPrimitives);
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    cachedPreferencesByKey = v13->_cachedPreferencesByKey;
    v13->_cachedPreferencesByKey = strongToWeakObjectsMapTable;

    if (notificationPrimitivesCopy)
    {
      if (queueCopy)
      {
        objc_initWeak(&location, v13);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __81__AEPreferences_initWithPreferencePrimitives_systemNotificationPrimitives_queue___block_invoke;
        v19[3] = &unk_278BB6CF0;
        objc_copyWeak(&v20, &location);
        v16 = [notificationPrimitivesCopy observeSystemNotificationWithName:@"com.apple.assessmentmode.preferencesDidChangeNotification" onQueue:queueCopy withHandler:v19];
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

- (id)preferenceForKey:(id)key defaultNumberValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  cachedPreferencesByKey = [(AEPreferences *)self cachedPreferencesByKey];
  v9 = [cachedPreferencesByKey objectForKey:keyCopy];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [AEPreference alloc];
    preferencePrimitives = [(AEPreferences *)self preferencePrimitives];
    systemNotificationPrimitives = [(AEPreferences *)self systemNotificationPrimitives];
    v10 = [(AEPreference *)v11 initWithKey:keyCopy preferencesPrimitives:preferencePrimitives systemNotificationPrimitives:systemNotificationPrimitives defaultValue:valueCopy];

    cachedPreferencesByKey2 = [(AEPreferences *)self cachedPreferencesByKey];
    [cachedPreferencesByKey2 setObject:v10 forKey:keyCopy];
  }

  return v10;
}

- (id)preferenceForKey:(id)key defaultArrayValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  cachedPreferencesByKey = [(AEPreferences *)self cachedPreferencesByKey];
  v9 = [cachedPreferencesByKey objectForKey:keyCopy];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [AEPreference alloc];
    preferencePrimitives = [(AEPreferences *)self preferencePrimitives];
    systemNotificationPrimitives = [(AEPreferences *)self systemNotificationPrimitives];
    v10 = [(AEPreference *)v11 initWithKey:keyCopy preferencesPrimitives:preferencePrimitives systemNotificationPrimitives:systemNotificationPrimitives defaultValue:valueCopy];

    cachedPreferencesByKey2 = [(AEPreferences *)self cachedPreferencesByKey];
    [cachedPreferencesByKey2 setObject:v10 forKey:keyCopy];
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
  cachedPreferencesByKey = [(AEPreferences *)self cachedPreferencesByKey];
  objectEnumerator = [cachedPreferencesByKey objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v10 + 1) + 8 * v8++) preferenceDidUpdate];
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end