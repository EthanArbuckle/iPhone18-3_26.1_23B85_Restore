@interface AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation
+ (void)initialize;
- (AVInputContextDestinationChange)resultInput;
- (AVOutputContextDestinationChange)result;
- (AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation)initWithRoutingContext:(OpaqueFigRoutingContext *)context routeChangeID:(__CFString *)d routeChangeBlock:(id)block isInputContextOperation:(BOOL)operation;
- (void)_routeConfigUpdateWithID:(__CFString *)d endedWithReason:(__CFString *)reason;
- (void)_setResultIfNotAlreadySet:(id)set;
- (void)_setResultInputIfNotAlreadySet:(id)set;
- (void)dealloc;
- (void)start;
@end

@implementation AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation

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
    [+[AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:](AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", self->_weakObserver, AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperationRouteConfigUpdated, *MEMORY[0x1E69AF4A8], self->_routingContext}];
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
  v6.super_class = AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation;
  [(AVRoutingOperation *)&v6 dealloc];
}

- (AVOutputContextDestinationChange)result
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  routeChangeIvarAccessQueue = self->_routeChangeIvarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation_result__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(routeChangeIvarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __74__AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation_result__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 312);
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
  routeChangeIvarAccessQueue = self->_routeChangeIvarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation_resultInput__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(routeChangeIvarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __79__AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation_resultInput__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 320);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setResultIfNotAlreadySet:(id)set
{
  routeChangeIvarAccessQueue = self->_routeChangeIvarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __94__AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation__setResultIfNotAlreadySet___block_invoke;
  v4[3] = &unk_1E794E9A8;
  v4[4] = self;
  v4[5] = set;
  dispatch_sync(routeChangeIvarAccessQueue, v4);
}

id *__94__AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation__setResultIfNotAlreadySet___block_invoke(id *result)
{
  if (!*(result[4] + 39))
  {
    v1 = result;
    result = result[5];
    *(v1[4] + 39) = result;
  }

  return result;
}

- (void)_setResultInputIfNotAlreadySet:(id)set
{
  routeChangeIvarAccessQueue = self->_routeChangeIvarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __99__AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation__setResultInputIfNotAlreadySet___block_invoke;
  v4[3] = &unk_1E794E9A8;
  v4[4] = self;
  v4[5] = set;
  dispatch_sync(routeChangeIvarAccessQueue, v4);
}

id *__99__AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation__setResultInputIfNotAlreadySet___block_invoke(id *result)
{
  if (!*(result[4] + 40))
  {
    v1 = result;
    result = result[5];
    *(v1[4] + 40) = result;
  }

  return result;
}

- (void)start
{
  if ([(AVRoutingOperation *)self evaluateDependenciesAndMarkAsExecuting])
  {
    v3 = (*(self->_routeChangeBlock + 2))();
    if (v3)
    {
      v4 = v3;
      v5 = objc_alloc_init(AVOutputContextDestinationChange);
      v6 = objc_alloc_init(AVInputContextDestinationChange);
      [(AVOutputContextDestinationChange *)v5 markAsFailed];
      if (self->_inputRoutePicked)
      {
        [(AVInputContextDestinationChange *)v6 markAsFailed];
        [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)self _setResultInputIfNotAlreadySet:v6];
      }

      [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)self _setResultIfNotAlreadySet:v5];
      [(AVRoutingOperation *)self markAsFailedWithError:AVLocalizedErrorWithUnderlyingOSStatus(v4, 0)];
    }
  }
}

- (void)_routeConfigUpdateWithID:(__CFString *)d endedWithReason:(__CFString *)reason
{
  v6 = objc_alloc_init(AVOutputContextDestinationChange);
  v12 = objc_alloc_init(AVInputContextDestinationChange);
  routeChangeID = self->_routeChangeID;
  if (FigCFEqual())
  {
    [(AVOutputContextDestinationChange *)v6 changeToTerminalStatusBasedOnRouteConfigUpdatedReason:reason];
    [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)self _setResultIfNotAlreadySet:v6];
    if (self->_inputRoutePicked)
    {
      [(AVInputContextDestinationChange *)v12 changeToTerminalStatusBasedOnInputRouteConfigUpdatedReason:reason];
      [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)self _setResultInputIfNotAlreadySet:v12];
    }

    if ([(AVOutputContextDestinationChange *)v6 status]== 2)
    {
      [(AVRoutingOperation *)self markAsCompleted];
    }

    else if ([(AVOutputContextDestinationChange *)v6 status]== 3)
    {
      v8 = *MEMORY[0x1E69AF3F0];
      if (FigCFEqual())
      {
        v9 = -11909;
      }

      else
      {
        v9 = -11800;
      }

      [(AVRoutingOperation *)self markAsFailedWithError:AVLocalizedError(@"AVFoundationErrorDomain", v9, 0)];
    }

    else
    {
      [(AVRoutingOperation *)self markAsCancelled];
    }

    if (self->_inputRoutePicked)
    {
      if ([(AVInputContextDestinationChange *)v12 status]== 2)
      {
        [(AVRoutingOperation *)self markAsCompleted];
      }

      else if ([(AVInputContextDestinationChange *)v12 status]== 3)
      {
        v10 = *MEMORY[0x1E69AF3F0];
        if (FigCFEqual())
        {
          v11 = -11909;
        }

        else
        {
          v11 = -11800;
        }

        [(AVRoutingOperation *)self markAsFailedWithError:AVLocalizedError(@"AVFoundationErrorDomain", v11, 0)];
      }

      else
      {
        [(AVRoutingOperation *)self markAsCancelled];
      }
    }
  }
}

- (AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation)initWithRoutingContext:(OpaqueFigRoutingContext *)context routeChangeID:(__CFString *)d routeChangeBlock:(id)block isInputContextOperation:(BOOL)operation
{
  OUTLINED_FUNCTION_1_2();
  [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v22.receiver = v6;
  v22.super_class = AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation;
  v11 = [(AVRoutingOperation *)&v22 init];
  if (!v11)
  {
    goto LABEL_12;
  }

  if (!v10)
  {
    v19 = 0;
    v20 = 280;
LABEL_10:
    *&v11[v20] = 0;
    goto LABEL_11;
  }

  v12 = CFRetain(v10);
  *(v11 + 35) = v12;
  if (!v12)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_11;
  }

  if (!v9)
  {
    v19 = 0;
    v20 = 288;
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
  v11[328] = v7;
  v16 = [[AVRoutingWeakReference alloc] initWithReferencedObject:v11];
  *(v11 + 34) = v16;
  OUTLINED_FUNCTION_0(v16, v17, v16, v18, *MEMORY[0x1E69AF4A8], *(v11 + 35));
  v19 = v11;
LABEL_11:

  return v19;
}

@end