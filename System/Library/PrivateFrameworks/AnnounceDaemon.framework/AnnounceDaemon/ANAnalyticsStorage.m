@interface ANAnalyticsStorage
- (ANAnalyticsStorage)init;
- (ANAnalyticsStorage)initWithDefaults:(id)a3;
- (NSDictionary)eventsToReport;
- (void)_synchronizedSave;
- (void)erase;
- (void)save:(id)a3 counter:(id)a4;
- (void)save:(id)a3 payload:(id)a4;
@end

@implementation ANAnalyticsStorage

- (ANAnalyticsStorage)init
{
  v3 = [MEMORY[0x277CEAB80] sharedInstance];
  v4 = [(ANAnalyticsStorage *)self initWithDefaults:v3];

  return v4;
}

- (ANAnalyticsStorage)initWithDefaults:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ANAnalyticsStorage;
  v6 = [(ANAnalyticsStorage *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaults, a3);
    v8 = [(ANDefaults *)v7->_defaults objectForDefault:*MEMORY[0x277CEA828]];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 mutableCopy];
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;
    [(ANAnalyticsStorage *)v7 setEventPayloads:v10];
  }

  return v7;
}

- (void)erase
{
  obj = self;
  objc_sync_enter(obj);
  v2 = objc_opt_new();
  [(ANAnalyticsStorage *)obj setEventPayloads:v2];

  [(ANAnalyticsStorage *)obj _synchronizedSave];
  objc_sync_exit(obj);
}

- (NSDictionary)eventsToReport
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ANAnalyticsStorage *)v2 eventPayloads];
  v4 = [v3 copy];

  objc_sync_exit(v2);

  return v4;
}

- (void)save:(id)a3 payload:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(ANAnalyticsStorage *)v7 eventPayloads];
  [v8 setObject:v6 forKeyedSubscript:v9];

  [(ANAnalyticsStorage *)v7 _synchronizedSave];
  objc_sync_exit(v7);
}

- (void)save:(id)a3 counter:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 finished];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v6 hexCount];

  v10 = [v8 numberWithUnsignedLongLong:v9];
  [(ANAnalyticsStorage *)self save:v7 payload:v10];
}

- (void)_synchronizedSave
{
  v5 = [(ANAnalyticsStorage *)self defaults];
  v3 = [(ANAnalyticsStorage *)self eventPayloads];
  v4 = [v3 copy];
  [v5 setObject:v4 forDefault:*MEMORY[0x277CEA828]];
}

@end