@interface ATXAppLaunchLogger
+ (id)sharedInstance;
- (id)_init;
- (void)logAppLaunchFrom:(unint64_t)from at:(id)at;
@end

@implementation ATXAppLaunchLogger

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_0 != -1)
  {
    +[ATXAppLaunchLogger sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_13;

  return v3;
}

void __36__ATXAppLaunchLogger_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXAppLaunchLogger alloc] _init];
  v2 = sharedInstance__pasExprOnceResult_13;
  sharedInstance__pasExprOnceResult_13 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = ATXAppLaunchLogger;
  result = [(ATXAbstractVersionedDatabase *)&v3 initWithDefaultPath:@"_ATXLoggerStore.db"];
  if (result)
  {
    *(result + 33) = 1;
  }

  return result;
}

- (void)logAppLaunchFrom:(unint64_t)from at:(id)at
{
  atCopy = at;
  queue = self->super._queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__ATXAppLaunchLogger_logAppLaunchFrom_at___block_invoke;
  v14[3] = &unk_278599E28;
  v14[4] = self;
  v15 = atCopy;
  fromCopy = from;
  v9 = v14;
  v10 = queue;
  v11 = atCopy;
  sel_getName(a2);
  v12 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __dispatch_async_txn_block_invoke;
  block[3] = &unk_278596F88;
  v18 = v12;
  v19 = v9;
  v13 = v12;
  dispatch_async(v10, block);
}

void __42__ATXAppLaunchLogger_logAppLaunchFrom_at___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[33] == 1)
  {
    v3 = [v2 db];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__ATXAppLaunchLogger_logAppLaunchFrom_at___block_invoke_2;
    v6[3] = &unk_278599E00;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = v4;
    v8 = v5;
    [v3 prepAndRunQuery:@"INSERT OR IGNORE INTO launches (ts onPrep:launchType) VALUES (:ts onRow::launchType)" onError:{v6, 0, 0}];
  }
}

void __42__ATXAppLaunchLogger_logAppLaunchFrom_at___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 timeIntervalSince1970];
  [v5 bindNamedParam:":ts" toInt64:(v4 * 1000.0)];
  [v5 bindNamedParam:":launchType" toInteger:*(a1 + 40)];
}

@end