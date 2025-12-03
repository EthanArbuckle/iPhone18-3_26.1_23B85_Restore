@interface CarQuickRouteRefreshOperation
+ (id)throttleStateDescription;
+ (unint64_t)throttlePreventionLevel;
+ (unint64_t)throttlePreventionLevelForAvailableRequestCount:(unsigned int)count;
+ (void)engageFullThrottleForInterval:(double)interval;
+ (void)initialize;
+ (void)suspendQueues:(BOOL)queues;
- (CarQuickRouteRefreshOperation)initWithQuickRoute:(id)route;
- (NSOperationQueue)operationQueue;
- (id)description;
- (void)main;
@end

@implementation CarQuickRouteRefreshOperation

- (NSOperationQueue)operationQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_operationQueue);

  return WeakRetained;
}

- (void)main
{
  v3 = +[NSOperationQueue currentQueue];
  v4 = v3;
  if (v3 == qword_10195CD20)
  {
    quickRouteManager = [(CarQuickRouteRefreshOperation *)self quickRouteManager];
    _Car_isVisible = [quickRouteManager _Car_isVisible];

    if ((_Car_isVisible & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = +[NSOperationQueue currentQueue];
  v8 = v7;
  if (v7 == qword_10195CD28)
  {
    v9 = +[CarQuickRouteRefreshOperation throttlePreventionLevel];

    if (v9 < 5)
    {
      goto LABEL_9;
    }

    [qword_10195CD28 setSuspended:1];
LABEL_8:
    quickRouteManager2 = [(CarQuickRouteRefreshOperation *)self quickRouteManager];
    [quickRouteManager2 _Car_queueUpdateETA];
    goto LABEL_10;
  }

LABEL_9:
  quickRouteManager3 = [(CarQuickRouteRefreshOperation *)self quickRouteManager];
  [quickRouteManager3 updateETA];

  quickRouteManager2 = [(CarQuickRouteRefreshOperation *)self quickRouteManager];
  [quickRouteManager2 set_Car_refreshOperation:0];
LABEL_10:
}

- (CarQuickRouteRefreshOperation)initWithQuickRoute:(id)route
{
  routeCopy = route;
  v9.receiver = self;
  v9.super_class = CarQuickRouteRefreshOperation;
  v6 = [(CarQuickRouteRefreshOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_quickRouteManager, route);
    [(CarQuickRouteRefreshOperation *)v7 setCompletionBlock:&stru_101624210];
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  quickRouteManager = [(CarQuickRouteRefreshOperation *)self quickRouteManager];
  if ([quickRouteManager _Car_isVisible])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  quickRouteManager2 = [(CarQuickRouteRefreshOperation *)self quickRouteManager];
  mapItem = [quickRouteManager2 mapItem];
  name = [mapItem name];
  v9 = [NSString stringWithFormat:@"<%@: %p quickRouteManager isVisible=%@ name=%@>", v3, self, v5, name];

  return v9;
}

+ (void)engageFullThrottleForInterval:(double)interval
{
  if ((byte_10195CD38 & 1) == 0)
  {
    byte_10195CD38 = 1;
    [CarQuickRouteRefreshOperation suspendQueues:1];
    v5 = dispatch_time(0, (interval * 1000000000.0 + 1000000000.0));

    dispatch_after(v5, &_dispatch_main_q, &stru_1016241F0);
  }
}

+ (void)suspendQueues:(BOOL)queues
{
  if (byte_10195CD38 != 1 || queues)
  {
    queuesCopy = queues;
    if ([qword_10195CD20 isSuspended] != queues || objc_msgSend(qword_10195CD28, "isSuspended") != queuesCopy)
    {
      [qword_10195CD20 setSuspended:queuesCopy];
      if (queuesCopy || ![qword_10195CD20 operationCount] && +[CarQuickRouteRefreshOperation throttlePreventionLevel](CarQuickRouteRefreshOperation, "throttlePreventionLevel") <= 4)
      {
        v5 = qword_10195CD28;

        [v5 setSuspended:queuesCopy];
      }
    }
  }
}

+ (id)throttleStateDescription
{
  v15 = 0.0;
  v14 = 0;
  v3 = +[GEOThrottlerRequester sharedRequester];
  [v3 getThrottleStateFor:672 nextSafeRequestTime:&v15 availableRequestCount:&v14 error:0];

  v4 = [self throttlePreventionLevelForAvailableRequestCount:v14];
  v5 = fmax(v15 - CFAbsoluteTimeGetCurrent(), 0.0);
  v6 = +[CarQuickRouteRefreshOperation throttlePreventionLevel];
  if (byte_10195CD38)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  operationCount = [qword_10195CD20 operationCount];
  if ([qword_10195CD20 isSuspended])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  operationCount2 = [qword_10195CD28 operationCount];
  if ([qword_10195CD28 isSuspended])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [NSString stringWithFormat:@"<ThrottlePreventionLevel=%lu FullThrottleEngaged=%@ throttleState: (Level=%lu ResetTimeRemaining=%f)  PrimaryQueue: (count=%lu suspended=%@) DelayedQueue: (count=%lu suspended=%@)>", v6, v7, v4, *&v5, operationCount, v9, operationCount2, v11];

  return v12;
}

+ (unint64_t)throttlePreventionLevel
{
  v7 = 0.0;
  v6 = 0;
  v3 = +[GEOThrottlerRequester sharedRequester];
  [v3 getThrottleStateFor:672 nextSafeRequestTime:&v7 availableRequestCount:&v6 error:0];

  v4 = fmax(v7 - CFAbsoluteTimeGetCurrent(), 0.0);
  return fmin(v4, [self throttlePreventionLevelForAvailableRequestCount:v6]);
}

+ (unint64_t)throttlePreventionLevelForAvailableRequestCount:(unsigned int)count
{
  unsignedIntegerValue = 30;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = qword_10195CD30;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = (30 - count) & ~((30 - count) >> 63);
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      unsignedIntegerValue = [v11 unsignedIntegerValue];
      if ([v11 unsignedIntegerValue] >= v8)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return unsignedIntegerValue;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_opt_new();
    v3 = qword_10195CD20;
    qword_10195CD20 = v2;

    [qword_10195CD20 setName:@"SharedETARefresh"];
    [qword_10195CD20 setQualityOfService:25];
    v4 = objc_opt_new();
    v5 = qword_10195CD28;
    qword_10195CD28 = v4;

    [qword_10195CD28 setName:@"SharedDelayedETARefresh"];
    [qword_10195CD28 setQualityOfService:9];
    [qword_10195CD28 setSuspended:1];
    v6 = qword_10195CD30;
    qword_10195CD30 = &off_1016EC818;
  }
}

@end