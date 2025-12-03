@interface ADWatchDogManager
+ (id)sharedInstance;
- (ADWatchDogManager)init;
- (BOOL)removeWatchdogWithToken:(id)token;
- (BOOL)updateReason:(id)reason forToken:(id)token;
- (id)createNewWatchdog:(id)watchdog withTimer:(unint64_t)timer;
- (id)getNextToken;
- (void)incrementToken;
- (void)simulateCrash:(id)crash becauseOf:(unint64_t)of actuallyTook:(double)took;
@end

@implementation ADWatchDogManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ADWatchDogManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    tokenCollection = v3->_tokenCollection;
    v3->_tokenCollection = dictionary;

    v7 = dispatch_queue_create("com.apple.queue.adplatforms.watchdog", 0);
    watchdogQueue = v3->_watchdogQueue;
    v3->_watchdogQueue = v7;
  }

  return v3;
}

- (id)createNewWatchdog:(id)watchdog withTimer:(unint64_t)timer
{
  watchdogCopy = watchdog;
  getNextToken = [(ADWatchDogManager *)self getNextToken];
  watchdogCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Creating a new watchdog with token %@ and waiting %lu seconds for: %@", getNextToken, timer, watchdogCopy];
  _ADLog(@"ToroLogging", watchdogCopy, 0);

  v9 = [[ADWatchDog alloc] initWithReason:watchdogCopy andDelay:timer];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_tokenCollection setObject:v9 forKey:getNextToken];
  objc_sync_exit(selfCopy);

  objc_initWeak(&location, selfCopy);
  date = [MEMORY[0x277CBEAA8] date];
  v12 = dispatch_time(0, 1000000000 * timer);
  watchdogQueue = selfCopy->_watchdogQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ADWatchDogManager_createNewWatchdog_withTimer___block_invoke;
  block[3] = &unk_278C553B0;
  objc_copyWeak(&v24, &location);
  v14 = getNextToken;
  v21 = v14;
  v22 = date;
  v23 = watchdogCopy;
  v15 = watchdogCopy;
  v16 = date;
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

- (BOOL)removeWatchdogWithToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_tokenCollection objectForKey:tokenCopy];
  v7 = v6;
  v8 = MEMORY[0x277CCACA8];
  if (v6)
  {
    reason = [v6 reason];
    v10 = [v8 stringWithFormat:@"Removing watchdog with token %@ that was started for %@", tokenCopy, reason];
    _ADLog(@"ToroLogging", v10, 0);

    [(NSMutableDictionary *)selfCopy->_tokenCollection removeObjectForKey:tokenCopy];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Watchdog token was not in list. Double remove? Please file a radar..."];
    _ADLog(@"iAdInternalLogging", v11, 16);
  }

  objc_sync_exit(selfCopy);
  return v7 != 0;
}

- (BOOL)updateReason:(id)reason forToken:(id)token
{
  reasonCopy = reason;
  v7 = [(NSMutableDictionary *)self->_tokenCollection objectForKey:token];
  v8 = v7;
  if (v7)
  {
    [v7 updateReason:reasonCopy];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Watchdog token was not in list. Cannot update its reason for existing. Please file a radar..."];
    _ADLog(@"iAdInternalLogging", v9, 16);
  }

  return v8 != 0;
}

- (void)simulateCrash:(id)crash becauseOf:(unint64_t)of actuallyTook:(double)took
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Operation '%@' unable to complete within %lu seconds (crashed after %f seconds).", crash, of, *&took];
  ADSimulateCrash(2880291038, v5, 1);
}

- (void)incrementToken
{
  intValue = [(NSNumber *)self->_currentToken intValue];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:(intValue + 1)];
  currentToken = self->_currentToken;
  self->_currentToken = v4;

  MEMORY[0x2821F96F8]();
}

- (id)getNextToken
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentToken;
  [(ADWatchDogManager *)selfCopy incrementToken];
  objc_sync_exit(selfCopy);

  return v3;
}

@end