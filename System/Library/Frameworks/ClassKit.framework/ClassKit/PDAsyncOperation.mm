@interface PDAsyncOperation
- (id)statusReport;
- (void)execute;
- (void)markAsFinished;
- (void)prepare;
- (void)setExecuting:(BOOL)executing;
- (void)start;
@end

@implementation PDAsyncOperation

- (void)prepare
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  dependencies = [(PDAsyncOperation *)self dependencies];
  v4 = [dependencies countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v6 = *v24;
  while (2)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v24 != v6)
      {
        objc_enumerationMutation(dependencies);
      }

      v8 = *(*(&v23 + 1) + 8 * i);
      v9 = objc_autoreleasePoolPush();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ([v8 isCancelled])
      {
        if (isKindOfClass)
        {
LABEL_13:
          v11 = v8;
          operationError = [v11 operationError];
          v13 = [operationError cls_underlyingErrorWithDomain:CLSErrorCodeDomain];

          if (v13)
          {
            domain = [v13 domain];
            v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Aborting operation (dependency failed with error domain:'%@' code:%ld).", domain, [v13 code]);

LABEL_16:
            v16 = [NSError cls_createErrorWithCode:326 underlyingError:v13 description:v15];
            CLSInitLog();
            v17 = CLSLogOperations;
            if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
            {
              v18 = v17;
              v19 = objc_opt_class();
              v20 = v19;
              v21 = objc_opt_class();
              *buf = 138412802;
              v28 = v19;
              v29 = 2112;
              v30 = v21;
              v31 = 2112;
              v32 = v13;
              v22 = v21;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "PDRetry aborting operation %@. Dependent operation %@ failed with %@", buf, 0x20u);
            }

            [(PDOperation *)self abortWithError:v16];

            objc_autoreleasePoolPop(v9);
            goto LABEL_19;
          }
        }

        v15 = [NSString stringWithFormat:@"Aborting operation (dependency failed)."];
        v13 = 0;
        goto LABEL_16;
      }

      if (isKindOfClass & 1) != 0 && ([v8 isAborted])
      {
        goto LABEL_13;
      }

      objc_autoreleasePoolPop(v9);
    }

    v5 = [dependencies countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_19:
}

- (void)execute
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)start
{
  v3 = objc_autoreleasePoolPush();
  if ([(PDOperation *)self isAborted])
  {
    [(PDAsyncOperation *)self markAsFinished];
  }

  else
  {
    database = [(PDOperation *)self database];

    if (database)
    {
      [(PDAsyncOperation *)self prepare];
      if (![(PDOperation *)self isFinished])
      {
        [(PDAsyncOperation *)self markAsExecuting];
        [(PDAsyncOperation *)self execute];
      }
    }

    else
    {
      [(PDOperation *)self abort];
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)markAsFinished
{
  [(PDAsyncOperation *)self setExecuting:0];
  v3.receiver = self;
  v3.super_class = PDAsyncOperation;
  [(PDOperation *)&v3 markAsFinished];
}

- (void)setExecuting:(BOOL)executing
{
  if (self->_executing != executing)
  {
    if (executing)
    {
      self->_didExecute = 1;
    }

    if (qword_10024D9A8 != -1)
    {
      dispatch_once(&qword_10024D9A8, &stru_100204018);
    }

    [(PDAsyncOperation *)self willChangeValueForKey:qword_10024D9A0];
    self->_executing = 0;
    v4 = qword_10024D9A0;

    [(PDAsyncOperation *)self didChangeValueForKey:v4];
  }
}

- (id)statusReport
{
  v6.receiver = self;
  v6.super_class = PDAsyncOperation;
  statusReport = [(PDOperation *)&v6 statusReport];
  v4 = [NSNumber numberWithBool:[(PDAsyncOperation *)self didExecute]];
  [statusReport setObject:v4 forKeyedSubscript:@"didExecute"];

  return statusReport;
}

@end