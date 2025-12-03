@interface AVFigRoutingContextRouteChangeOperation
+ (void)initialize;
- (AVOutputContextDestinationChange)result;
- (void)_routeChangeComplete;
- (void)_routeChangeStartedWithID:(__CFNumber *)d;
- (void)_routeChangeWithID:(__CFNumber *)d endedWithReason:(__CFString *)reason;
- (void)_setResultIfNotAlreadySet:(id)set;
- (void)dealloc;
- (void)start;
@end

@implementation AVFigRoutingContextRouteChangeOperation

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
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRoutingContextRouteChangeOperationRouteChangeStarted name:*MEMORY[0x1E69AF4A0] object:self->_routingContext];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRoutingContextRouteChangeOperationRouteChangeEnded name:*MEMORY[0x1E69AF498] object:self->_routingContext];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRoutingContextRouteChangeOperationRouteChangeComplete name:self->_successNotification object:self->_routingContext];
  }

  routingContext = self->_routingContext;
  if (routingContext)
  {
    CFRelease(routingContext);
  }

  successNotification = self->_successNotification;
  if (successNotification)
  {
    CFRelease(successNotification);
  }

  notificationManagementQueue = self->_notificationManagementQueue;
  if (notificationManagementQueue)
  {
    dispatch_release(notificationManagementQueue);
  }

  routeChangeID = self->_routeChangeID;
  if (routeChangeID)
  {
    CFRelease(routeChangeID);
  }

  v8.receiver = self;
  v8.super_class = AVFigRoutingContextRouteChangeOperation;
  [(AVOperation *)&v8 dealloc];
}

- (AVOutputContextDestinationChange)result
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__27;
  v10 = __Block_byref_object_dispose__27;
  v11 = 0;
  notificationManagementQueue = self->_notificationManagementQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVFigRoutingContextRouteChangeOperation_result__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(notificationManagementQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __49__AVFigRoutingContextRouteChangeOperation_result__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 328);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setResultIfNotAlreadySet:(id)set
{
  notificationManagementQueue = self->_notificationManagementQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AVFigRoutingContextRouteChangeOperation__setResultIfNotAlreadySet___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = set;
  dispatch_sync(notificationManagementQueue, v4);
}

id *__69__AVFigRoutingContextRouteChangeOperation__setResultIfNotAlreadySet___block_invoke(id *result)
{
  if (!*(result[4] + 41))
  {
    v1 = result;
    result = result[5];
    *(v1[4] + 41) = result;
  }

  return result;
}

- (void)start
{
  if ([(AVOperation *)self evaluateDependenciesAndMarkAsExecuting])
  {
    notificationManagementQueue = self->_notificationManagementQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AVFigRoutingContextRouteChangeOperation_start__block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = self;
    dispatch_sync(notificationManagementQueue, block);
    v4 = (*(self->_routeChangeBlock + 2))();
    if (v4)
    {
      v5 = v4;
      v6 = objc_alloc_init(MEMORY[0x1E69587F8]);
      [v6 markAsFailed];
      [(AVFigRoutingContextRouteChangeOperation *)self _setResultIfNotAlreadySet:v6];
      [(AVOperation *)self markAsFailedWithError:AVLocalizedErrorWithUnderlyingOSStatus(v5, 0)];
    }
  }
}

- (void)_routeChangeStartedWithID:(__CFNumber *)d
{
  notificationManagementQueue = self->_notificationManagementQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AVFigRoutingContextRouteChangeOperation__routeChangeStartedWithID___block_invoke;
  v4[3] = &unk_1E7460FA8;
  v4[4] = self;
  v4[5] = d;
  dispatch_sync(notificationManagementQueue, v4);
}

void *__69__AVFigRoutingContextRouteChangeOperation__routeChangeStartedWithID___block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 312) == 1 && !*(v1 + 320))
  {
    v2 = result;
    result = result[5];
    if (result)
    {
      result = CFRetain(result);
      v1 = v2[4];
    }

    *(v1 + 320) = result;
  }

  return result;
}

- (void)_routeChangeWithID:(__CFNumber *)d endedWithReason:(__CFString *)reason
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = objc_alloc_init(MEMORY[0x1E69587F8]);
  notificationManagementQueue = self->_notificationManagementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AVFigRoutingContextRouteChangeOperation__routeChangeWithID_endedWithReason___block_invoke;
  block[3] = &unk_1E7462990;
  block[5] = &v11;
  block[6] = d;
  block[4] = self;
  dispatch_sync(notificationManagementQueue, block);
  if (v12[3])
  {
    [v7 changeToTerminalStatusBasedOnRouteChangeEndedReason:reason];
    [(AVFigRoutingContextRouteChangeOperation *)self _setResultIfNotAlreadySet:v7];
    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        v9 = -11800;
      }

      else
      {
        if (!FigCFEqual())
        {
          [(AVOperation *)self markAsCancelled];
          goto LABEL_8;
        }

        v9 = -11909;
      }

      [(AVOperation *)self markAsFailedWithError:AVLocalizedError(@"AVFoundationErrorDomain", v9, 0)];
    }
  }

LABEL_8:

  _Block_object_dispose(&v11, 8);
}

uint64_t __78__AVFigRoutingContextRouteChangeOperation__routeChangeWithID_endedWithReason___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 312) == 1)
  {
    v1 = result;
    result = FigCFEqual();
    if (result)
    {
      *(*(*(v1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

- (void)_routeChangeComplete
{
  v3 = objc_alloc_init(MEMORY[0x1E69587F8]);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  notificationManagementQueue = self->_notificationManagementQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__AVFigRoutingContextRouteChangeOperation__routeChangeComplete__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(notificationManagementQueue, v5);
  if (*(v7 + 24) == 1)
  {
    [v3 markAsFinished];
    [(AVFigRoutingContextRouteChangeOperation *)self _setResultIfNotAlreadySet:v3];
    [(AVOperation *)self markAsCompleted];
  }

  _Block_object_dispose(&v6, 8);
}

@end