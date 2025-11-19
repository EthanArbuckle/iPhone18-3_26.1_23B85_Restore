@interface AVRoutingContextRouteChangeOperation
+ (void)initialize;
- (AVInputContextDestinationChange)resultInput;
- (AVOutputContextDestinationChange)result;
- (AVRoutingContextRouteChangeOperation)initWithRoutingContext:(OpaqueFigRoutingContext *)a3 successNotification:(__CFString *)a4 routeChangeBlock:(id)a5 isInputContextOperation:(BOOL)a6;
- (void)_routeChangeComplete;
- (void)_routeChangeStartedWithID:(__CFNumber *)a3;
- (void)_routeChangeWithID:(__CFNumber *)a3 endedWithReason:(__CFString *)a4;
- (void)_setResultIfNotAlreadySet:(id)a3;
- (void)_setResultInputIfNotAlreadySet:(id)a3;
- (void)dealloc;
- (void)start;
@end

@implementation AVRoutingContextRouteChangeOperation

+ (void)initialize
{
  if (objc_opt_class() == a1)
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
    v3 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVRoutingContextRouteChangeOperationRouteChangeStarted name:*MEMORY[0x1E69AF4A0] object:self->_routingContext];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVRoutingContextRouteChangeOperationRouteChangeEnded name:*MEMORY[0x1E69AF498] object:self->_routingContext];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVRoutingContextRouteChangeOperationRouteChangeComplete name:self->_successNotification object:self->_routingContext];
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
  v8.super_class = AVRoutingContextRouteChangeOperation;
  [(AVRoutingOperation *)&v8 dealloc];
}

- (AVOutputContextDestinationChange)result
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  notificationManagementQueue = self->_notificationManagementQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVRoutingContextRouteChangeOperation_result__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(notificationManagementQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __46__AVRoutingContextRouteChangeOperation_result__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 328);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (AVInputContextDestinationChange)resultInput
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  notificationManagementQueue = self->_notificationManagementQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AVRoutingContextRouteChangeOperation_resultInput__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(notificationManagementQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __51__AVRoutingContextRouteChangeOperation_resultInput__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 336);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setResultIfNotAlreadySet:(id)a3
{
  notificationManagementQueue = self->_notificationManagementQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__AVRoutingContextRouteChangeOperation__setResultIfNotAlreadySet___block_invoke;
  v4[3] = &unk_1E794E9A8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(notificationManagementQueue, v4);
}

id *__66__AVRoutingContextRouteChangeOperation__setResultIfNotAlreadySet___block_invoke(id *result)
{
  if (!*(result[4] + 41))
  {
    v1 = result;
    result = result[5];
    *(v1[4] + 41) = result;
  }

  return result;
}

- (void)_setResultInputIfNotAlreadySet:(id)a3
{
  notificationManagementQueue = self->_notificationManagementQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__AVRoutingContextRouteChangeOperation__setResultInputIfNotAlreadySet___block_invoke;
  v4[3] = &unk_1E794E9A8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(notificationManagementQueue, v4);
}

id *__71__AVRoutingContextRouteChangeOperation__setResultInputIfNotAlreadySet___block_invoke(id *result)
{
  if (!*(result[4] + 42))
  {
    v1 = result;
    result = result[5];
    *(v1[4] + 42) = result;
  }

  return result;
}

- (void)start
{
  if ([(AVRoutingOperation *)self evaluateDependenciesAndMarkAsExecuting])
  {
    notificationManagementQueue = self->_notificationManagementQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__AVRoutingContextRouteChangeOperation_start__block_invoke;
    block[3] = &unk_1E794ED28;
    block[4] = self;
    dispatch_sync(notificationManagementQueue, block);
    v4 = (*(self->_routeChangeBlock + 2))();
    if (v4)
    {
      v5 = v4;
      v6 = objc_alloc_init(AVOutputContextDestinationChange);
      v7 = objc_alloc_init(AVInputContextDestinationChange);
      [(AVOutputContextDestinationChange *)v6 markAsFailed];
      [(AVRoutingContextRouteChangeOperation *)self _setResultIfNotAlreadySet:v6];
      [(AVRoutingContextRouteChangeOperation *)self _setResultInputIfNotAlreadySet:v7];
      [(AVRoutingOperation *)self markAsFailedWithError:AVLocalizedErrorWithUnderlyingOSStatus(v5, 0)];
    }
  }
}

- (void)_routeChangeStartedWithID:(__CFNumber *)a3
{
  notificationManagementQueue = self->_notificationManagementQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__AVRoutingContextRouteChangeOperation__routeChangeStartedWithID___block_invoke;
  v4[3] = &unk_1E794ED50;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(notificationManagementQueue, v4);
}

void *__66__AVRoutingContextRouteChangeOperation__routeChangeStartedWithID___block_invoke(void *result)
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

- (void)_routeChangeWithID:(__CFNumber *)a3 endedWithReason:(__CFString *)a4
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = objc_alloc_init(AVOutputContextDestinationChange);
  v8 = objc_alloc_init(AVInputContextDestinationChange);
  notificationManagementQueue = self->_notificationManagementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AVRoutingContextRouteChangeOperation__routeChangeWithID_endedWithReason___block_invoke;
  block[3] = &unk_1E794E930;
  block[4] = self;
  block[5] = &v15;
  block[6] = a3;
  dispatch_sync(notificationManagementQueue, block);
  if (v16[3])
  {
    if (self->_inputRoutePicked)
    {
      [(AVInputContextDestinationChange *)v8 changeToTerminalStatusBasedOnInputRouteChangeEndedReason:a4];
      [(AVRoutingContextRouteChangeOperation *)self _setResultInputIfNotAlreadySet:v8];
    }

    else
    {
      [(AVOutputContextDestinationChange *)v7 changeToTerminalStatusBasedOnRouteChangeEndedReason:a4];
      [(AVRoutingContextRouteChangeOperation *)self _setResultIfNotAlreadySet:v7];
    }

    v10 = *MEMORY[0x1E69AF450];
    if (!FigCFEqual())
    {
      v11 = *MEMORY[0x1E69AF448];
      if (FigCFEqual())
      {
        v12 = -11800;
      }

      else
      {
        v13 = *MEMORY[0x1E69AF438];
        if (!FigCFEqual())
        {
          [(AVRoutingOperation *)self markAsCancelled];
          goto LABEL_11;
        }

        v12 = -11909;
      }

      [(AVRoutingOperation *)self markAsFailedWithError:AVLocalizedError(@"AVFoundationErrorDomain", v12, 0)];
    }
  }

LABEL_11:

  _Block_object_dispose(&v15, 8);
}

uint64_t __75__AVRoutingContextRouteChangeOperation__routeChangeWithID_endedWithReason___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 312) == 1)
  {
    v2 = result;
    v3 = *(result + 48);
    v4 = *(v1 + 320);
    result = FigCFEqual();
    if (result)
    {
      *(*(*(v2 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

- (void)_routeChangeComplete
{
  v3 = objc_alloc_init(AVOutputContextDestinationChange);
  v4 = objc_alloc_init(AVInputContextDestinationChange);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  notificationManagementQueue = self->_notificationManagementQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AVRoutingContextRouteChangeOperation__routeChangeComplete__block_invoke;
  v6[3] = &unk_1E794ED00;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(notificationManagementQueue, v6);
  if (*(v8 + 24) == 1)
  {
    [(AVOutputContextDestinationChange *)v3 markAsFinished];
    [(AVRoutingContextRouteChangeOperation *)self _setResultIfNotAlreadySet:v3];
    if (self->_inputRoutePicked)
    {
      [(AVInputContextDestinationChange *)v4 markAsFinished];
      [(AVRoutingContextRouteChangeOperation *)self _setResultInputIfNotAlreadySet:v4];
    }

    [(AVRoutingOperation *)self markAsCompleted];
  }

  _Block_object_dispose(&v7, 8);
}

- (AVRoutingContextRouteChangeOperation)initWithRoutingContext:(OpaqueFigRoutingContext *)a3 successNotification:(__CFString *)a4 routeChangeBlock:(id)a5 isInputContextOperation:(BOOL)a6
{
  OUTLINED_FUNCTION_1_2();
  [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v28.receiver = v6;
  v28.super_class = AVRoutingContextRouteChangeOperation;
  v11 = [(AVRoutingOperation *)&v28 init];
  if (!v11)
  {
    goto LABEL_12;
  }

  if (!v10)
  {
    v25 = 0;
    v26 = 280;
LABEL_10:
    *&v11[v26] = 0;
    goto LABEL_11;
  }

  v12 = CFRetain(v10);
  *(v11 + 35) = v12;
  if (!v12)
  {
LABEL_12:
    v25 = 0;
    goto LABEL_11;
  }

  if (!v9)
  {
    v25 = 0;
    v26 = 288;
    goto LABEL_10;
  }

  v13 = CFRetain(v9);
  *(v11 + 36) = v13;
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = [v8 copy];
  *(v11 + 37) = v14;
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(v11 + 38) = dispatch_queue_create("com.apple.avfoundation.route-change-operation.ivars", v15);
  v11[312] = 0;
  v11[344] = v7;
  v16 = [[AVRoutingWeakReference alloc] initWithReferencedObject:v11];
  *(v11 + 34) = v16;
  v19 = OUTLINED_FUNCTION_0(v16, v17, v16, v18, *MEMORY[0x1E69AF4A0], *(v11 + 35));
  v22 = OUTLINED_FUNCTION_0(v19, v20, *(v11 + 34), v21, *MEMORY[0x1E69AF498], *(v11 + 35));
  OUTLINED_FUNCTION_0(v22, v23, *(v11 + 34), v24, *(v11 + 36), *(v11 + 35));
  v25 = v11;
LABEL_11:

  return v25;
}

@end