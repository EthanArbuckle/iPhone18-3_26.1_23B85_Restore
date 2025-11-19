@interface PDOperation
- (BOOL)isFinished;
- (NSMutableDictionary)statusReport;
- (PDDatabase)database;
- (PDOperation)init;
- (PDOperation)initWithDatabase:(id)a3;
- (PDOperationsManager)manager;
- (id)stringForState;
- (void)abort;
- (void)abortWithError:(id)a3;
- (void)addOnFinishBlock:(id)a3;
- (void)cancel;
- (void)finishWithError:(id)a3;
- (void)markAsFinished;
- (void)setFinished:(BOOL)a3;
@end

@implementation PDOperation

- (PDOperation)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  v5 = [NSString stringWithFormat:@"The method [%@ %@] is not available.", v3, v4];
  v6 = [NSException exceptionWithName:NSInvalidArgumentException reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (PDOperation)initWithDatabase:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PDOperation;
  v5 = [(PDOperation *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_database, v4);
    [(PDOperation *)v6 setQualityOfService:17];
    v7 = [NSString stringWithFormat:@"op-%d", ic()];
    operationID = v6->_operationID;
    v6->_operationID = v7;

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [NSString stringWithFormat:@"%@-%@", v10, v6->_operationID];
    [(PDOperation *)v6 setName:v11];

    v12 = sub_10010AE9C();
    sourceApplicationBundleIdentifier = v6->_sourceApplicationBundleIdentifier;
    v6->_sourceApplicationBundleIdentifier = v12;

    v14 = [(PDOperation *)v6 name];
    [v14 UTF8String];
    v15 = os_transaction_create();
    operationTransaction = v6->_operationTransaction;
    v6->_operationTransaction = v15;

    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = PDOperation;
  [(PDOperation *)&v3 cancel];
  [(PDOperation *)self abort];
}

- (void)abort
{
  v3 = NSStringFromSelector("isAborted");
  [(PDOperation *)self willChangeValueForKey:v3];
  self->_aborted = 1;
  [(PDOperation *)self didChangeValueForKey:v3];
  [(PDOperation *)self markAsFinished];
}

- (id)stringForState
{
  if (([(PDOperation *)self isCancelled]& 1) != 0)
  {
    return @"cancelled";
  }

  if ([(PDOperation *)self isAborted])
  {
    return @"aborted";
  }

  if ([(PDOperation *)self isFinished])
  {
    return @"finished";
  }

  if (([(PDOperation *)self isReady]& 1) != 0)
  {
    return @"ready";
  }

  if ([(PDOperation *)self isExecuting])
  {
    return @"executing";
  }

  return @"unknown";
}

- (void)markAsFinished
{
  [(PDOperation *)self setFinished:1];
  v3 = +[PDUserDefaults sharedDefaults];
  v4 = [v3 enableVerboseLogging];

  if (v4)
  {
    CLSInitLog();
    v5 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
      v7 = [(PDOperation *)self stringForState];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [(PDOperation *)self operationID];
      v11 = 138412802;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v10;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "OPS: markAsFinished: %@ %{public}@:%{public}@", &v11, 0x20u);
    }
  }
}

- (void)abortWithError:(id)a3
{
  objc_storeStrong(&self->_operationError, a3);

  [(PDOperation *)self abort];
}

- (void)finishWithError:(id)a3
{
  objc_storeStrong(&self->_operationError, a3);

  [(PDOperation *)self markAsFinished];
}

- (BOOL)isFinished
{
  os_unfair_lock_lock(&self->_lock);
  finished = self->_finished;
  os_unfair_lock_unlock(&self->_lock);
  return finished;
}

- (void)setFinished:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  finished = self->_finished;
  os_unfair_lock_unlock(&self->_lock);
  if (finished != v3)
  {
    if (qword_10024DB58 != -1)
    {
      dispatch_once(&qword_10024DB58, &stru_100205890);
    }

    [(PDOperation *)self willChangeValueForKey:qword_10024DB50];
    os_unfair_lock_lock(&self->_lock);
    self->_finished = v3;
    os_unfair_lock_unlock(&self->_lock);
    [(PDOperation *)self didChangeValueForKey:qword_10024DB50];
    if (v3)
    {
      os_unfair_lock_lock(&self->_lock);
      v6 = [(NSMutableArray *)self->_onFinishBlocks copy];
      os_unfair_lock_unlock(&self->_lock);
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            (*(*(*(&v13 + 1) + 8 * i) + 16))(*(*(&v13 + 1) + 8 * i));
          }

          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }

      [(PDOperation *)self flushCachedData];
      os_unfair_lock_lock(&self->_lock);
      operationTransaction = self->_operationTransaction;
      self->_operationTransaction = 0;

      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (void)addOnFinishBlock:(id)a3
{
  v8 = a3;
  if ([(PDOperation *)self isFinished])
  {
    v8[2](v8, self);
  }

  os_unfair_lock_lock(&self->_lock);
  onFinishBlocks = self->_onFinishBlocks;
  if (!onFinishBlocks)
  {
    v5 = objc_opt_new();
    v6 = self->_onFinishBlocks;
    self->_onFinishBlocks = v5;

    onFinishBlocks = self->_onFinishBlocks;
  }

  v7 = objc_retainBlock(v8);
  [(NSMutableArray *)onFinishBlocks addObject:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSMutableDictionary)statusReport
{
  v3 = objc_opt_new();
  v4 = [(PDOperation *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"operation"];

  operationError = self->_operationError;
  if (operationError)
  {
    v6 = [(NSError *)operationError description];
    [v3 setObject:v6 forKeyedSubscript:@"operationError"];
  }

  else
  {
    [v3 setObject:@"none" forKeyedSubscript:@"operationError"];
  }

  v7 = [(PDOperation *)self operationID];
  [v3 setObject:v7 forKeyedSubscript:@"operationID"];

  v8 = [NSNumber numberWithBool:[(PDOperation *)self isAborted]];
  [v3 setObject:v8 forKeyedSubscript:@"isAborted"];

  v9 = [NSNumber numberWithBool:[(PDOperation *)self isCancelled]];
  [v3 setObject:v9 forKeyedSubscript:@"isCancelled"];

  v10 = [NSNumber numberWithBool:[(PDOperation *)self isFinished]];
  [v3 setObject:v10 forKeyedSubscript:@"isFinished"];

  v11 = [(PDOperation *)self sourceApplicationBundleIdentifier];
  [v3 setObject:v11 forKeyedSubscript:@"sourceApplicationBundleIdentifier"];

  return v3;
}

- (PDDatabase)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

- (PDOperationsManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end