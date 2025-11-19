@interface ADWatchDogManager
+ (id)sharedInstance;
- (ADWatchDogManager)init;
- (BOOL)removeWatchdogWithToken:(id)a3;
- (BOOL)updateReason:(id)a3 forToken:(id)a4;
- (id)createNewWatchdog:(id)a3 withTimer:(unint64_t)a4;
- (id)getNextToken;
- (void)incrementToken;
- (void)simulateCrash:(id)a3 becauseOf:(unint64_t)a4 actuallyTook:(double)a5;
@end

@implementation ADWatchDogManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ADWatchDogManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance__onceToken_2, block);
  }

  v2 = sharedInstance__instance_2;

  return v2;
}

uint64_t __35__ADWatchDogManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance_2 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ADWatchDogManager)init
{
  v10.receiver = self;
  v10.super_class = ADWatchDogManager;
  v2 = [(ADWatchDogManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    currentToken = v2->_currentToken;
    v2->_currentToken = &unk_285104B30;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    tokenCollection = v3->_tokenCollection;
    v3->_tokenCollection = v5;

    v7 = dispatch_queue_create("com.apple.queue.adplatforms.watchdog", 0);
    watchdogQueue = v3->_watchdogQueue;
    v3->_watchdogQueue = v7;
  }

  return v3;
}

- (id)createNewWatchdog:(id)a3 withTimer:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ADWatchDogManager *)self getNextToken];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Creating a new watchdog with token %@ and waiting %lu seconds for: %@", v7, a4, v6];
  _ADLog(@"ToroLogging", v8, 0);

  v9 = [[ADWatchDog alloc] initWithReason:v6 andDelay:a4];
  v10 = self;
  objc_sync_enter(v10);
  [(NSMutableDictionary *)v10->_tokenCollection setObject:v9 forKey:v7];
  objc_sync_exit(v10);

  objc_initWeak(&location, v10);
  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = dispatch_time(0, 1000000000 * a4);
  watchdogQueue = v10->_watchdogQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ADWatchDogManager_createNewWatchdog_withTimer___block_invoke;
  block[3] = &unk_278C553B0;
  objc_copyWeak(&v24, &location);
  v14 = v7;
  v21 = v14;
  v22 = v11;
  v23 = v6;
  v15 = v6;
  v16 = v11;
  dispatch_after(v12, watchdogQueue, block);
  v17 = v23;
  v18 = v14;

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v18;
}

void __49__ADWatchDogManager_createNewWatchdog_withTimer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Watchdog timer has been reached for token %@", *(a1 + 32)];
    _ADLog(@"ToroLogging", v2, 0);

    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = [v3 tokenCollection];
    v5 = [v4 objectForKey:*(a1 + 32)];

    objc_sync_exit(v3);
    if (v5)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Token %@ has been found. We will now crash...", *(a1 + 32)];
      _ADLog(@"iAdInternalLogging", v6, 16);

      v7 = [MEMORY[0x277CBEAA8] date];
      [v7 timeIntervalSinceDate:*(a1 + 40)];
      v9 = v8;

      v10 = [v5 reason];
      [v3 simulateCrash:v10 becauseOf:objc_msgSend(v5 actuallyTook:{"delayTime"), v9}];
    }

    else
    {
      v11 = *(a1 + 48);
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' has passed successfully. Removing watchdog %@.", v11, *(a1 + 32)];
      _ADLog(@"ToroLogging", v10, 0);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: weakSelf wasn't valid when completion handler called."];
    _ADLog(@"iAdInternalLogging", v5, 16);
  }
}

- (BOOL)removeWatchdogWithToken:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_tokenCollection objectForKey:v4];
  v7 = v6;
  v8 = MEMORY[0x277CCACA8];
  if (v6)
  {
    v9 = [v6 reason];
    v10 = [v8 stringWithFormat:@"Removing watchdog with token %@ that was started for %@", v4, v9];
    _ADLog(@"ToroLogging", v10, 0);

    [(NSMutableDictionary *)v5->_tokenCollection removeObjectForKey:v4];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Watchdog token was not in list. Double remove? Please file a radar..."];
    _ADLog(@"iAdInternalLogging", v11, 16);
  }

  objc_sync_exit(v5);
  return v7 != 0;
}

- (BOOL)updateReason:(id)a3 forToken:(id)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_tokenCollection objectForKey:a4];
  v8 = v7;
  if (v7)
  {
    [v7 updateReason:v6];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Watchdog token was not in list. Cannot update its reason for existing. Please file a radar..."];
    _ADLog(@"iAdInternalLogging", v9, 16);
  }

  return v8 != 0;
}

- (void)simulateCrash:(id)a3 becauseOf:(unint64_t)a4 actuallyTook:(double)a5
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Operation '%@' unable to complete within %lu seconds (crashed after %f seconds).", a3, a4, *&a5];
  ADSimulateCrash(2880291038, v5, 1);
}

- (void)incrementToken
{
  v3 = [(NSNumber *)self->_currentToken intValue];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:(v3 + 1)];
  currentToken = self->_currentToken;
  self->_currentToken = v4;

  MEMORY[0x2821F96F8]();
}

- (id)getNextToken
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_currentToken;
  [(ADWatchDogManager *)v2 incrementToken];
  objc_sync_exit(v2);

  return v3;
}

@end