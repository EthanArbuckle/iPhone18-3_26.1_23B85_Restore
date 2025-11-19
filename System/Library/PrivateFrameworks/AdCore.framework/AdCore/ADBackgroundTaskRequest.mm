@interface ADBackgroundTaskRequest
- (ADBackgroundTaskRequest)initWithCriteria:(id)a3 ID:(id)a4 activity:(id)a5;
- (ADBackgroundTaskRequest)initWithID:(id)a3;
- (BOOL)continueTask;
- (BOOL)deferTask;
- (BOOL)finishTask;
- (BOOL)shouldDefer;
- (BOOL)taskCanContinueForTime:(id)a3;
- (BOOL)taskIsContinuing;
- (BOOL)taskIsDeferred;
- (NSString)priority;
- (double)getPropertyAsDouble:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)getPropertyAsDate:(id)a3;
- (id)getPropertyAsString:(id)a3;
- (int64_t)backgroundTaskRetryCount;
- (int64_t)getPropertyAsInteger:(id)a3;
- (void)_backgroundDeferralCheck:(id)a3 completion:(id)a4;
- (void)endBackgroundDeferralCheck;
- (void)setBackgroundTaskRetryCount:(int64_t)a3;
- (void)setPriority:(id)a3;
- (void)setPropertyAsDate:(id)a3 value:(id)a4;
- (void)setPropertyAsDouble:(id)a3 value:(double)a4;
- (void)setPropertyAsInteger:(id)a3 value:(int64_t)a4;
- (void)setPropertyAsString:(id)a3 value:(id)a4;
- (void)startBackgroundDeferralCheckForTime:(id)a3 completionHandler:(id)a4;
@end

@implementation ADBackgroundTaskRequest

- (ADBackgroundTaskRequest)initWithID:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ADBackgroundTaskRequest;
  v6 = [(ADBackgroundTaskRequest *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestIdentifier, a3);
    v8 = xpc_dictionary_create(0, 0, 0);
    criteria = v7->_criteria;
    v7->_criteria = v8;

    activity = v7->_activity;
    v7->_activity = 0;

    v7->_performDeferralCheck = 0;
    startDate = v7->_startDate;
    v7->_startDate = 0;

    xpc_dictionary_set_BOOL(v7->_criteria, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_BOOL(v7->_criteria, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_string(v7->_criteria, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    xpc_dictionary_set_BOOL(v7->_criteria, *MEMORY[0x277D863A0], 0);
    xpc_dictionary_set_int64(v7->_criteria, *MEMORY[0x277D86270], *MEMORY[0x277D862A8]);
    [(ADBackgroundTaskRequest *)v7 setDelay:0];
    [(ADBackgroundTaskRequest *)v7 setRequiresNetworkConnectivity:1];
  }

  return v7;
}

- (ADBackgroundTaskRequest)initWithCriteria:(id)a3 ID:(id)a4 activity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = ADBackgroundTaskRequest;
  v11 = [(ADBackgroundTaskRequest *)&v15 init];
  if (v11)
  {
    v12 = xpc_copy(v8);
    criteria = v11->_criteria;
    v11->_criteria = v12;

    objc_storeStrong(&v11->_requestIdentifier, a4);
    objc_storeStrong(&v11->_activity, a5);
    v11->_performDeferralCheck = 0;
  }

  return v11;
}

- (void)setBackgroundTaskRetryCount:(int64_t)a3
{
  criteria = self->_criteria;
  v5 = [@"kBackgroundTaskProperty_RetryCount" cStringUsingEncoding:4];

  xpc_dictionary_set_int64(criteria, v5, a3);
}

- (int64_t)backgroundTaskRetryCount
{
  criteria = self->_criteria;
  v3 = [@"kBackgroundTaskProperty_RetryCount" cStringUsingEncoding:4];

  return xpc_dictionary_get_int64(criteria, v3);
}

- (NSString)priority
{
  string = xpc_dictionary_get_string(self->_criteria, *MEMORY[0x277D86340]);
  v3 = MEMORY[0x277CCACA8];

  return [v3 stringWithCString:string encoding:4];
}

- (void)setPriority:(id)a3
{
  criteria = self->_criteria;
  v5 = *MEMORY[0x277D86340];
  v6 = a3;
  v7 = [a3 cStringUsingEncoding:4];

  xpc_dictionary_set_string(criteria, v5, v7);
}

- (BOOL)continueTask
{
  v2 = self;
  objc_sync_enter(v2);
  activity = v2->_activity;
  if (activity)
  {
    v4 = xpc_activity_set_state(activity, 4);
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)taskIsContinuing
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = xpc_activity_get_state(v2->_activity) == 4;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)finishTask
{
  activity = self->_activity;
  if (activity)
  {
    LOBYTE(activity) = xpc_activity_set_state(activity, 5);
  }

  return activity;
}

- (BOOL)shouldDefer
{
  v2 = self;
  objc_sync_enter(v2);
  activity = v2->_activity;
  if (activity)
  {
    should_defer = xpc_activity_should_defer(activity);
  }

  else
  {
    should_defer = 0;
  }

  objc_sync_exit(v2);

  return should_defer;
}

- (BOOL)deferTask
{
  v2 = self;
  objc_sync_enter(v2);
  activity = v2->_activity;
  if (activity)
  {
    v4 = xpc_activity_set_state(activity, 3);
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)taskIsDeferred
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = xpc_activity_get_state(v2->_activity) == 3;
  objc_sync_exit(v2);

  return v3;
}

- (void)_backgroundDeferralCheck:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ADBackgroundTaskRequest__backgroundDeferralCheck_completion___block_invoke;
  block[3] = &unk_278C55330;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
}

void __63__ADBackgroundTaskRequest__backgroundDeferralCheck_completion___block_invoke(uint64_t a1)
{
  v2 = +[ADServer workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__ADBackgroundTaskRequest__backgroundDeferralCheck_completion___block_invoke_2;
  v4[3] = &unk_278C55330;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 addOperationWithBlock:v4];
}

void __63__ADBackgroundTaskRequest__backgroundDeferralCheck_completion___block_invoke_2(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1 && ([*(a1 + 40) isEqualToDate:*(v2 + 40)] & 1) != 0)
  {
    objc_sync_exit(obj);

    v3 = [*(a1 + 32) shouldDefer];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 endBackgroundDeferralCheck];
      [*(a1 + 32) deferTask];
      v5 = *(a1 + 48);
      if (v5)
      {
        v6 = *(v5 + 16);

        v6();
      }
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);

      [v4 _backgroundDeferralCheck:v8 completion:v9];
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }

    objc_sync_exit(obj);
  }
}

- (void)startBackgroundDeferralCheckForTime:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = self;
  v10 = a4;
  objc_sync_enter(v7);
  v7->_performDeferralCheck = 1;
  startDate = v7->_startDate;
  v7->_startDate = v6;
  v9 = v6;

  objc_sync_exit(v7);
  [(ADBackgroundTaskRequest *)v7 _backgroundDeferralCheck:v7->_startDate completion:v10];
}

- (BOOL)taskCanContinueForTime:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = ([v4 isEqualToDate:v5->_startDate] & 1) != 0 && -[ADBackgroundTaskRequest taskIsContinuing](v5, "taskIsContinuing");
  objc_sync_exit(v5);

  return v6;
}

- (void)endBackgroundDeferralCheck
{
  obj = self;
  objc_sync_enter(obj);
  obj->_performDeferralCheck = 0;
  startDate = obj->_startDate;
  obj->_startDate = 0;

  objc_sync_exit(obj);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ADBackgroundTaskRequest;
  v3 = [(ADBackgroundTaskRequest *)&v7 description];
  v4 = MEMORY[0x23EF106D0](self->_criteria);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, id: %@, job: %s", v3, self->_requestIdentifier, v4];

  free(v4);

  return v5;
}

- (id)dictionaryRepresentation
{
  v15.receiver = self;
  v15.super_class = ADBackgroundTaskRequest;
  v3 = [(ADBackgroundTaskRequest *)&v15 description];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v4 setObject:v3 forKey:@"RequestType"];
  [v4 setObject:self->_requestIdentifier forKey:@"id"];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ADBackgroundTaskRequest gracePeriod](self, "gracePeriod")}];
  [v5 setValue:v6 forKey:@"GracePeriod"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ADBackgroundTaskRequest backgroundTaskRetryCount](self, "backgroundTaskRetryCount")}];
  [v5 setValue:v7 forKey:@"kBackgroundTaskProperty_RetryCount"];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ADBackgroundTaskRequest delay](self, "delay")}];
  [v5 setValue:v8 forKey:@"Delay"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ADBackgroundTaskRequest requiresNetworkConnectivity](self, "requiresNetworkConnectivity")}];
  [v5 setObject:v9 forKey:@"RequireNetworkConnectivity"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ADBackgroundTaskRequest requireSleep](self, "requireSleep")}];
  [v5 setObject:v10 forKey:@"RequireScreenSleep"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ADBackgroundTaskRequest isRepeating](self, "isRepeating")}];
  [v5 setObject:v11 forKey:@"Repeating"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[ADBackgroundTaskRequest allowBattery](self, "allowBattery")}];
  [v5 setObject:v12 forKey:@"AllowBattery"];

  v13 = [(ADBackgroundTaskRequest *)self priority];
  [v5 setObject:v13 forKey:@"Priority"];

  [v4 setObject:v5 forKey:@"job"];

  return v4;
}

- (void)setPropertyAsString:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [a3 cStringUsingEncoding:4];
  v10 = [v8 cStringUsingEncoding:4];

  criteria = self->_criteria;

  xpc_dictionary_set_string(criteria, v9, v10);
}

- (id)getPropertyAsString:(id)a3
{
  v5 = a3;
  string = xpc_dictionary_get_string(self->_criteria, [a3 cStringUsingEncoding:4]);
  v7 = MEMORY[0x277CCACA8];

  return [v7 stringWithCString:string encoding:4];
}

- (void)setPropertyAsInteger:(id)a3 value:(int64_t)a4
{
  v7 = a3;
  v8 = [a3 cStringUsingEncoding:4];
  criteria = self->_criteria;

  xpc_dictionary_set_int64(criteria, v8, a4);
}

- (int64_t)getPropertyAsInteger:(id)a3
{
  v5 = a3;
  v6 = [a3 cStringUsingEncoding:4];
  criteria = self->_criteria;

  return xpc_dictionary_get_int64(criteria, v6);
}

- (void)setPropertyAsDouble:(id)a3 value:(double)a4
{
  v7 = a3;
  v8 = [a3 cStringUsingEncoding:4];
  criteria = self->_criteria;

  xpc_dictionary_set_double(criteria, v8, a4);
}

- (double)getPropertyAsDouble:(id)a3
{
  v5 = a3;
  v6 = [a3 cStringUsingEncoding:4];
  criteria = self->_criteria;

  return xpc_dictionary_get_double(criteria, v6);
}

- (void)setPropertyAsDate:(id)a3 value:(id)a4
{
  v6 = a3;
  [a4 timeIntervalSinceReferenceDate];
  [(ADBackgroundTaskRequest *)self setPropertyAsDouble:v6 value:?];
}

- (id)getPropertyAsDate:(id)a3
{
  [(ADBackgroundTaskRequest *)self getPropertyAsDouble:a3];
  v3 = MEMORY[0x277CBEAA8];

  return [v3 dateWithTimeIntervalSinceReferenceDate:?];
}

@end