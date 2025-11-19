@interface AVOperation
+ (int64_t)statusOfOperations:(id)a3 error:(id *)a4;
- (BOOL)_setStatus:(int64_t)a3 error:(id)a4 resultingStatus:(int64_t *)a5 failureReason:(id *)a6;
- (BOOL)evaluateDependenciesAndMarkAsExecuting;
- (BOOL)isReady;
- (NSError)error;
- (int64_t)status;
- (void)dealloc;
- (void)markAsCancelled;
- (void)markAsCompleted;
- (void)markAsFailedWithError:(id)a3;
@end

@implementation AVOperation

- (void)dealloc
{
  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }

  v4.receiver = self;
  v4.super_class = AVOperation;
  [(AVOperation *)&v4 dealloc];
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
  v5[2] = __21__AVOperation_status__block_invoke;
  v5[3] = &unk_1E7460E68;
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
  v9 = __Block_byref_object_copy__25;
  v10 = __Block_byref_object_dispose__25;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__AVOperation_error__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __20__AVOperation_error__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 264) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)evaluateDependenciesAndMarkAsExecuting
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  if (![(AVOperation *)self _setStatus:1 error:0 resultingStatus:&v25 failureReason:&v24])
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"%@", v4, v5, v6, v7, v8, v24), 0}];
    objc_exception_throw(v18);
  }

  if ([(AVOperation *)self isCancelled])
  {
    goto LABEL_15;
  }

  v9 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [(AVOperation *)self dependencies];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v12);
  }

  v19 = 0;
  v16 = [AVOperation statusOfOperations:v9 error:&v19];
  if (v16 != 2)
  {
    if (v16 == 4)
    {
      [(AVOperation *)self markAsFailedWithError:v19];
      return [(AVOperation *)self status]== 1;
    }

LABEL_15:
    [(AVOperation *)self markAsCancelled];
  }

  return [(AVOperation *)self status]== 1;
}

- (BOOL)isReady
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(AVOperation *)self dependencies];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v9 + 1) + 8 * v6) isFinished];
      if (!v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)_setStatus:(int64_t)a3 error:(id)a4 resultingStatus:(int64_t *)a5 failureReason:(id *)a6
{
  if (!a3)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", a4, a5, a6, v6, v7, "requestedStatus != AVOperationStatusUnknown"), 0}];
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
  [(AVOperation *)self willChangeValueForKey:@"isExecuting"];
  [(AVOperation *)self willChangeValueForKey:@"isFinished"];
  ivarAccessQueue = self->_ivarAccessQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__AVOperation__setStatus_error_resultingStatus_failureReason___block_invoke;
  v18[3] = &unk_1E7464E50;
  v18[6] = &v33;
  v18[7] = &v29;
  v18[10] = a3;
  v18[11] = a6;
  v18[4] = self;
  v18[5] = a4;
  v18[8] = &v25;
  v18[9] = &v19;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v18);
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

    [(AVOperation *)self didChangeValueForKey:@"isExecuting"];
    [(AVOperation *)self didChangeValueForKey:@"isFinished"];
    if (*(v26 + 24) == 1)
    {
      [(AVOperation *)self didEnterTerminalState];
    }

    v14 = *(v34 + 24);
  }

  if (a5 && (v14 & 1) != 0)
  {
    *a5 = v30[3];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return v14 & 1;
}

__CFString *__62__AVOperation__setStatus_error_resultingStatus_failureReason___block_invoke(__CFString *result)
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
  if (![(AVOperation *)self _setStatus:2 error:0 resultingStatus:0 failureReason:&v10])
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"%@", v4, v5, v6, v7, v8, v10), 0}];
    objc_exception_throw(v9);
  }
}

- (void)markAsFailedWithError:(id)a3
{
  v11 = 0;
  if (![(AVOperation *)self _setStatus:4 error:a3 resultingStatus:0 failureReason:&v11])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"%@", v5, v6, v7, v8, v9, v11), 0}];
    objc_exception_throw(v10);
  }
}

- (void)markAsCancelled
{
  v10 = 0;
  if (![(AVOperation *)self _setStatus:3 error:0 resultingStatus:0 failureReason:&v10])
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"%@", v4, v5, v6, v7, v8, v10), 0}];
    objc_exception_throw(v9);
  }
}

+ (int64_t)statusOfOperations:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v17;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v17 != v10)
    {
      objc_enumerationMutation(a3);
    }

    v12 = *(*(&v16 + 1) + 8 * v11);
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
      result = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          return v15;
        }

        return result;
      }

      goto LABEL_27;
    }
  }

  if (result != 3)
  {
    if (result == 4)
    {
      if (a4)
      {
        *a4 = [v12 error];
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
    return result;
  }

  return 2;
}

@end