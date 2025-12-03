@interface ATXWalletDataSourceSharedData
+ (id)sharedInstance;
- (ATXWalletDataSourceSharedData)init;
- (BOOL)hasEmptyWalletPasses;
- (void)_passesDidChange;
- (void)setHasEmptyWalletPasses:(BOOL)passes;
@end

@implementation ATXWalletDataSourceSharedData

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken1 != -1)
  {
    +[ATXWalletDataSourceSharedData sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __47__ATXWalletDataSourceSharedData_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXWalletDataSourceSharedData)init
{
  v5.receiver = self;
  v5.super_class = ATXWalletDataSourceSharedData;
  v2 = [(ATXWalletDataSourceSharedData *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__passesDidChange name:*MEMORY[0x277D386D0] object:0];
    [defaultCenter addObserver:v2 selector:sel__passesDidChange name:*MEMORY[0x277D386F0] object:0];
    [defaultCenter addObserver:v2 selector:sel__passesDidChange name:*MEMORY[0x277D386E8] object:0];
  }

  return v2;
}

- (void)_passesDidChange
{
  obj = self;
  objc_sync_enter(obj);
  lastWalletPassCheckDate = obj->_lastWalletPassCheckDate;
  obj->_lastWalletPassCheckDate = 0;

  obj->_hasEmptyWalletPasses = 0;
  objc_sync_exit(obj);
}

- (BOOL)hasEmptyWalletPasses
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = 0;
  if (selfCopy->_hasEmptyWalletPasses)
  {
    [(NSDate *)selfCopy->_lastWalletPassCheckDate timeIntervalSinceNow];
    if (fabs(v3) < 7200.0)
    {
      v4 = 1;
    }
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)setHasEmptyWalletPasses:(BOOL)passes
{
  obj = self;
  objc_sync_enter(obj);
  obj->_hasEmptyWalletPasses = passes;
  v4 = objc_opt_new();
  lastWalletPassCheckDate = obj->_lastWalletPassCheckDate;
  obj->_lastWalletPassCheckDate = v4;

  objc_sync_exit(obj);
}

@end