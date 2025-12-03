@interface AVRouteConfigUpdatedFigRoutingContextRouteChangeOperation
+ (void)initialize;
- (AVOutputContextDestinationChange)result;
- (void)_routeConfigUpdateWithID:(__CFString *)d endedWithReason:(__CFString *)reason;
- (void)_setResultIfNotAlreadySet:(id)set;
- (void)dealloc;
- (void)start;
@end

@implementation AVRouteConfigUpdatedFigRoutingContextRouteChangeOperation

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (void)dealloc
{
  if (self->_weakObserver)
  {
    [+[AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:](AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", self->_weakObserver, AVRouteConfigUpdatedFigRoutingContextRouteChangeOperationRouteConfigUpdated, *MEMORY[0x1E69AF4A8], self->_routingContext}];
  }

  routingContext = self->_routingContext;
  if (routingContext)
  {
    CFRelease(routingContext);
  }

  routeChangeIvarAccessQueue = self->_routeChangeIvarAccessQueue;
  if (routeChangeIvarAccessQueue)
  {
    dispatch_release(routeChangeIvarAccessQueue);
  }

  routeChangeID = self->_routeChangeID;
  if (routeChangeID)
  {
    CFRelease(routeChangeID);
  }

  v6.receiver = self;
  v6.super_class = AVRouteConfigUpdatedFigRoutingContextRouteChangeOperation;
  [(AVOperation *)&v6 dealloc];
}

- (AVOutputContextDestinationChange)result
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__27;
  v10 = __Block_byref_object_dispose__27;
  v11 = 0;
  routeChangeIvarAccessQueue = self->_routeChangeIvarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__AVRouteConfigUpdatedFigRoutingContextRouteChangeOperation_result__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(routeChangeIvarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __67__AVRouteConfigUpdatedFigRoutingContextRouteChangeOperation_result__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 312);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setResultIfNotAlreadySet:(id)set
{
  routeChangeIvarAccessQueue = self->_routeChangeIvarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __87__AVRouteConfigUpdatedFigRoutingContextRouteChangeOperation__setResultIfNotAlreadySet___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = set;
  dispatch_sync(routeChangeIvarAccessQueue, v4);
}

id *__87__AVRouteConfigUpdatedFigRoutingContextRouteChangeOperation__setResultIfNotAlreadySet___block_invoke(id *result)
{
  if (!*(result[4] + 39))
  {
    v1 = result;
    result = result[5];
    *(v1[4] + 39) = result;
  }

  return result;
}

- (void)start
{
  if ([(AVOperation *)self evaluateDependenciesAndMarkAsExecuting])
  {
    v3 = (*(self->_routeChangeBlock + 2))();
    if (v3)
    {
      v4 = v3;
      v5 = objc_alloc_init(MEMORY[0x1E69587F8]);
      [v5 markAsFailed];
      [(AVRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)self _setResultIfNotAlreadySet:v5];
      [(AVOperation *)self markAsFailedWithError:AVLocalizedErrorWithUnderlyingOSStatus(v4, 0)];
    }
  }
}

- (void)_routeConfigUpdateWithID:(__CFString *)d endedWithReason:(__CFString *)reason
{
  v7 = objc_alloc_init(MEMORY[0x1E69587F8]);
  if (FigCFEqual())
  {
    [v7 changeToTerminalStatusBasedOnRouteConfigUpdatedReason:reason];
    [(AVRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)self _setResultIfNotAlreadySet:v7];
    if ([v7 status] == 2)
    {
      [(AVOperation *)self markAsCompleted];
    }

    else if ([v7 status] == 3)
    {
      if (FigCFEqual())
      {
        v6 = -11909;
      }

      else
      {
        v6 = -11800;
      }

      [(AVOperation *)self markAsFailedWithError:AVLocalizedError(@"AVFoundationErrorDomain", v6, 0)];
    }

    else
    {
      [(AVOperation *)self markAsCancelled];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

@end