@interface PDRetry
- (BOOL)_shouldRetry:(id)a3;
- (void)_perform;
- (void)_processBlockDoneStatus:(BOOL)a3 error:(id)a4 completionBlocks:(id)a5;
@end

@implementation PDRetry

- (void)_perform
{
  self->_consecutiveRunRequested = 0;
  ++self->_currentAttempt;
  v3 = [(NSMutableArray *)self->_completionBlocks copy];
  [(NSMutableArray *)self->_completionBlocks removeAllObjects];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004689C;
  v6[3] = &unk_100202FD8;
  objc_copyWeak(&v8, &location);
  v4 = v3;
  v7 = v4;
  v5 = objc_retainBlock(v6);
  self->_state = 1;
  (*(self->_block + 2))();

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (BOOL)_shouldRetry:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_currentAttempt >= self->_maxAttempts)
  {
    CLSInitLog();
    v13 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      currentAttempt = self->_currentAttempt;
      name = self->_name;
      v17 = 138412546;
      v18 = name;
      v19 = 2048;
      v20 = currentAttempt;
      v10 = "PDRetry task: %@ (%ld) retry limit reached.";
      v11 = v13;
      v12 = 22;
      goto LABEL_10;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = 1;
  if (v4 && ([v4 cls_isRetryable:1] & 1) == 0)
  {
    CLSInitLog();
    v7 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      v9 = self->_currentAttempt;
      v8 = self->_name;
      v17 = 138412802;
      v18 = v8;
      v19 = 2048;
      v20 = v9;
      v21 = 2112;
      v22 = v5;
      v10 = "PDRetry task: %@ (%ld) retry denied for error:%@";
      v11 = v7;
      v12 = 32;
LABEL_10:
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v10, &v17, v12);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

- (void)_processBlockDoneStatus:(BOOL)a3 error:(id)a4 completionBlocks:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!a3)
  {
    CLSInitLog();
    v10 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_INFO))
    {
      currentAttempt = self->_currentAttempt;
      name = self->_name;
      *buf = 138412802;
      v31 = name;
      v32 = 2048;
      v33 = currentAttempt;
      v34 = 2114;
      v35 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "PDRetry task: %@ (%ld) failed; error: %{public}@;", buf, 0x20u);
    }

    if ([(PDRetry *)self _shouldRetry:v8])
    {
      [(NSMutableArray *)self->_completionBlocks addObjectsFromArray:v9];
      v13 = (exp2f(self->_currentAttempt) + 2.0);
      CLSInitLog();
      v14 = CLSLogOperations;
      if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
      {
        v20 = self->_currentAttempt;
        v19 = self->_name;
        *buf = 138412802;
        v31 = v19;
        v32 = 2048;
        v33 = v20;
        v34 = 2048;
        v35 = v13;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "PDRetry scheduling retry for task: %@ (%ld); will retry after %lld seconds;", buf, 0x20u);
      }

      self->_state = 2;
      objc_initWeak(buf, self);
      v15 = dispatch_time(0, 1000000000 * v13);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100046F68;
      block[3] = &unk_100203000;
      objc_copyWeak(&v29, buf);
      dispatch_after(v15, queue, block);
      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
      goto LABEL_15;
    }

    CLSInitLog();
    v17 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      v22 = self->_currentAttempt;
      v21 = self->_name;
      maxAttempts = self->_maxAttempts;
      *buf = 138412802;
      v31 = v21;
      v32 = 2048;
      v33 = v22;
      v34 = 2048;
      v35 = maxAttempts;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "PDRetry task: %@ failed; we made %ld attempts out of %ld max; this was our last attempt - bailing out!", buf, 0x20u);
    }

    self->_currentAttempt = 0;
    if (!v8)
    {
      v8 = [NSError cls_createErrorWithCode:6 format:@"perform %@ failed with max retries: %ld", self->_name, self->_maxAttempts];
    }
  }

  self->_state = 0;
  if (self->_consecutiveRunRequested)
  {
    [(PDRetry *)self _perform];
  }

  v18 = dispatch_get_global_queue(0, 0);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100046FAC;
  v24[3] = &unk_100203028;
  v25 = v9;
  v27 = a3;
  v8 = v8;
  v26 = v8;
  dispatch_async(v18, v24);

LABEL_15:
}

@end