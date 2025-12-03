@interface ANAnalyticsStorage
- (ANAnalyticsStorage)init;
- (ANAnalyticsStorage)initWithDefaults:(id)defaults;
- (NSDictionary)eventsToReport;
- (void)_synchronizedSave;
- (void)erase;
- (void)save:(id)save counter:(id)counter;
- (void)save:(id)save payload:(id)payload;
@end

@implementation ANAnalyticsStorage

- (ANAnalyticsStorage)init
{
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v4 = [(ANAnalyticsStorage *)self initWithDefaults:mEMORY[0x277CEAB80]];

  return v4;
}

- (ANAnalyticsStorage)initWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v13.receiver = self;
  v13.super_class = ANAnalyticsStorage;
  v6 = [(ANAnalyticsStorage *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaults, defaults);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  eventPayloads = [(ANAnalyticsStorage *)selfCopy eventPayloads];
  v4 = [eventPayloads copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)save:(id)save payload:(id)payload
{
  saveCopy = save;
  payloadCopy = payload;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  eventPayloads = [(ANAnalyticsStorage *)selfCopy eventPayloads];
  [eventPayloads setObject:payloadCopy forKeyedSubscript:saveCopy];

  [(ANAnalyticsStorage *)selfCopy _synchronizedSave];
  objc_sync_exit(selfCopy);
}

- (void)save:(id)save counter:(id)counter
{
  counterCopy = counter;
  saveCopy = save;
  [counterCopy finished];
  v8 = MEMORY[0x277CCABB0];
  hexCount = [counterCopy hexCount];

  v10 = [v8 numberWithUnsignedLongLong:hexCount];
  [(ANAnalyticsStorage *)self save:saveCopy payload:v10];
}

- (void)_synchronizedSave
{
  defaults = [(ANAnalyticsStorage *)self defaults];
  eventPayloads = [(ANAnalyticsStorage *)self eventPayloads];
  v4 = [eventPayloads copy];
  [defaults setObject:v4 forDefault:*MEMORY[0x277CEA828]];
}

@end