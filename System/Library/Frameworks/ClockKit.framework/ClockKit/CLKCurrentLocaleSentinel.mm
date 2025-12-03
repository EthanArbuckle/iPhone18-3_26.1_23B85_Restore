@interface CLKCurrentLocaleSentinel
+ (CLKCurrentLocaleSentinel)shared;
- (id)_init;
- (void)_handleLocaleChange;
@end

@implementation CLKCurrentLocaleSentinel

+ (CLKCurrentLocaleSentinel)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CLKCurrentLocaleSentinel_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = sharedCurrentLocaleSentinel;

  return v2;
}

uint64_t __34__CLKCurrentLocaleSentinel_shared__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedCurrentLocaleSentinel;
  sharedCurrentLocaleSentinel = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = CLKCurrentLocaleSentinel;
  v2 = [(CLKCurrentLocaleSentinel *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleLocaleChange name:*MEMORY[0x277CBE620] object:0];
  }

  return v2;
}

- (void)_handleLocaleChange
{
  _CLKUpdateIsLayoutRTL();
  _CLKUpdateLanguageIsTallScript();
  _CLKUpdateNumberSystem();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"CLKLocaleNumberSystemChangedNotification" object:0];
}

@end