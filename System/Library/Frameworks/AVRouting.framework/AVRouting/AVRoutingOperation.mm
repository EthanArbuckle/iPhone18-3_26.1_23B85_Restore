@interface AVRoutingOperation
+ (int64_t)statusOfOperations:(id)operations error:(id *)error;
- (AVRoutingOperation)init;
- (BOOL)_setStatus:(int64_t)status error:(id)error resultingStatus:(int64_t *)resultingStatus failureReason:(id *)reason;
- (BOOL)evaluateDependenciesAndMarkAsExecuting;
- (BOOL)isReady;
- (NSError)error;
- (int64_t)status;
- (void)dealloc;
- (void)markAsCancelled;
- (void)markAsCompleted;
- (void)markAsFailedWithError:(id)error;
@end

@implementation AVRoutingOperation

- (void)dealloc
{
  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }

  v4.receiver = self;
  v4.super_class = AVRoutingOperation;
  [(AVRoutingOperation *)&v4 dealloc];
}

- (int64_t)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__AVRoutingOperation_status__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__AVRoutingOperation_error__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __27__AVRoutingOperation_error__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 264) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)evaluateDependenciesAndMarkAsExecuting
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  if (![(AVRoutingOperation *)self _setStatus:1 error:0 resultingStatus:&v26 failureReason:&v25])
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"%@", v4, v5, v6, v7, v8, v25), 0}];
    objc_exception_throw(v19);
  }

  if ([(AVRoutingOperation *)self isCancelled])
  {
    goto LABEL_15;
  }

  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  dependencies = [(AVRoutingOperation *)self dependencies];
  v11 = [dependencies countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(dependencies);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [dependencies countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v12);
  }

  v20 = 0;
  v16 = [AVRoutingOperation statusOfOperations:array error:&v20];
  if (v16 != 2)
  {
    if (v16 == 4)
    {
      [(AVRoutingOperation *)self markAsFailedWithError:v20];
      goto LABEL_16;
    }

LABEL_15:
    [(AVRoutingOperation *)self markAsCancelled];
  }

LABEL_16:
  result = [(AVRoutingOperation *)self status]== 1;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isReady
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dependencies = [(AVRoutingOperation *)self dependencies];
  v3 = [dependencies countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(dependencies);
      }

      isFinished = [*(*(&v10 + 1) + 8 * v6) isFinished];
      if (!isFinished)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [dependencies countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(isFinished) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return isFinished;
}

- (BOOL)_setStatus:(int64_t)status error:(id)error resultingStatus:(int64_t *)resultingStatus failureReason:(id *)reason
{
  if (!status)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", error, resultingStatus, reason, v6, v7, "requestedStatus != AVRoutingOperationStatusUnknown"), 0}];
    objc_exception_throw(v17);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__12;
  v24 = 0;
  [(AVRoutingOperation *)self willChangeValueForKey:@"isExecuting"];
  [(AVRoutingOperation *)self willChangeValueForKey:@"isFinished"];
  ivarAccessQueue = self->_ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AVRoutingOperation__setStatus_error_resultingStatus_failureReason___block_invoke;
  block[3] = &unk_1E794EF30;
  block[6] = &v33;
  block[7] = &v29;
  block[10] = status;
  block[11] = reason;
  block[4] = self;
  block[5] = error;
  block[8] = &v25;
  block[9] = &v19;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  v14 = *(v34 + 24);
  if (v14)
  {
    if (*(v26 + 24) == 1)
    {
      v15 = v20[5];
      if (v15)
      {
        (*(v15 + 16))();
      }
    }

    [(AVRoutingOperation *)self didChangeValueForKey:@"isExecuting"];
    [(AVRoutingOperation *)self didChangeValueForKey:@"isFinished"];
    if (*(v26 + 24) == 1)
    {
      [(AVRoutingOperation *)self didEnterTerminalState];
    }

    v14 = *(v34 + 24);
  }

  if (resultingStatus && (v14 & 1) != 0)
  {
    *resultingStatus = v30[3];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return v14 & 1;
}

__CFString *__69__AVRoutingOperation__setStatus_error_resultingStatus_failureReason___block_invoke(__CFString *result)
{
  v1 = result;
  v2 = *(result[1].isa + 32);
  data = result[2].data;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = data == 3;
  }

  if (v4)
  {
    v2 = 0;
LABEL_18:
    *(*(result[1].length + 8) + 24) = v2;
    v8 = 1;
    goto LABEL_22;
  }

  length = result[2].length;
  if (v2)
  {
    v6 = 1;
  }

  else
  {
    v6 = data <= 1;
  }

  if (!v6)
  {
    result = @"Cannot enter a terminal state until the receiver starts executing";
    goto LABEL_20;
  }

  if (v2 < 2 || data > 1)
  {
    if (v2 < 2)
    {
      v2 = result[2].data;
    }

    goto LABEL_18;
  }

  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot regress from a terminal state %d to a non-terminal state %d", v2, data];
LABEL_20:
  v8 = 0;
  if (length)
  {
    *length = result;
  }

LABEL_22:
  *(*(v1[1].data + 1) + 24) = v8;
  if (*(*(v1[1].data + 1) + 24) == 1 && *(*(v1[1].length + 8) + 24) != *(v1[1].isa + 32))
  {
    *(*(v1[2].isa + 1) + 24) = v1[2].data > 1;
    result = [v1[1].info copy];
    *(v1[1].isa + 33) = result;
    *(v1[1].isa + 32) = v1[2].data;
    if (*(*(v1[2].isa + 1) + 24) == 1)
    {
      *(*(v1[2].info + 8) + 40) = [objc_msgSend(v1[1].isa "completionBlock")];
      isa = v1[1].isa;

      return [isa setCompletionBlock:0];
    }
  }

  return result;
}

- (void)markAsCompleted
{
  v10 = 0;
  if (![(AVRoutingOperation *)self _setStatus:2 error:0 resultingStatus:0 failureReason:&v10])
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"%@", v4, v5, v6, v7, v8, v10), 0}];
    objc_exception_throw(v9);
  }
}

- (void)markAsFailedWithError:(id)error
{
  v11 = 0;
  if (![(AVRoutingOperation *)self _setStatus:4 error:error resultingStatus:0 failureReason:&v11])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"%@", v5, v6, v7, v8, v9, v11), 0}];
    objc_exception_throw(v10);
  }
}

- (void)markAsCancelled
{
  v10 = 0;
  if (![(AVRoutingOperation *)self _setStatus:3 error:0 resultingStatus:0 failureReason:&v10])
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"%@", v4, v5, v6, v7, v8, v10), 0}];
    objc_exception_throw(v9);
  }
}

+ (int64_t)statusOfOperations:(id)operations error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [operations countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v18;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v18 != v10)
    {
      objc_enumerationMutation(operations);
    }

    v12 = *(*(&v17 + 1) + 8 * v11);
    result = [v12 status];
    if (result <= 1)
    {
      if (result != 1)
      {
        goto LABEL_21;
      }

      v9 = 1;
      goto LABEL_11;
    }

    if (result != 2)
    {
      break;
    }

    v8 = 1;
LABEL_11:
    if (v7 == ++v11)
    {
      result = [operations countByEnumeratingWithState:&v17 objects:v21 count:16];
      v7 = result;
      if (result)
      {
        goto LABEL_3;
      }

      v14 = 1;
      if ((v8 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_23:
      if (v9)
      {
        v15 = 0;
LABEL_25:
        if (v14)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      goto LABEL_27;
    }
  }

  if (result != 3)
  {
    if (result == 4)
    {
      if (error)
      {
        *error = [v12 error];
      }

      result = 4;
    }

    else
    {
LABEL_21:
      result = 0;
    }
  }

  v14 = 0;
  if (v8)
  {
    goto LABEL_23;
  }

LABEL_14:
  if (v9)
  {
    v15 = 1;
    goto LABEL_25;
  }

LABEL_27:
  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_28:
  v15 = 2;
LABEL_29:
  result = v15;
LABEL_30:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (AVRoutingOperation)init
{
  v4 = objc_opt_class();
  AVRequireConcreteObject(self, a2, v4);
  v7.receiver = self;
  v7.super_class = AVRoutingOperation;
  v5 = [(AVRoutingOperation *)&v7 init];
  if (v5)
  {
    v5->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.AVRoutingOperation.ivars");
  }

  return v5;
}

@end