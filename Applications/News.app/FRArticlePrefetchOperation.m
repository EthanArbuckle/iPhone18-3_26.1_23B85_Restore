@interface FRArticlePrefetchOperation
- (BOOL)isEqual:(id)a3;
- (FRArticlePrefetchOperation)initWithHeadline:(id)a3 component:(unint64_t)a4 priority:(unint64_t)a5;
- (id)executeWithArticleContentPool:(id)a3 completionHandler:(id)a4;
- (int64_t)compareExecutionOrder:(id)a3;
- (unint64_t)hash;
- (void)_doWorkIfNotCancelled:(id)a3;
- (void)cancel;
@end

@implementation FRArticlePrefetchOperation

- (FRArticlePrefetchOperation)initWithHeadline:(id)a3 component:(unint64_t)a4 priority:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = FRArticlePrefetchOperation;
  v10 = [(FRArticlePrefetchOperation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_headline, a3);
    v11->_component = a4;
    v11->_priority = a5;
    v11->_cancellationLock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    v6 = [(FRArticlePrefetchOperation *)self headline];
    v7 = [v5 headline];
    if ([v6 isEqual:v7])
    {
      v8 = [(FRArticlePrefetchOperation *)self component];
      v9 = v8 == [v5 component];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(FRArticlePrefetchOperation *)self headline];
  v4 = [v3 hash];
  v5 = [(FRArticlePrefetchOperation *)self component];

  return v5 ^ v4;
}

- (int64_t)compareExecutionOrder:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(FRArticlePrefetchOperation *)self component]];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 component]);
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = [NSNumber numberWithUnsignedInteger:[(FRArticlePrefetchOperation *)self priority]];
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 priority]);
    v7 = [v8 compare:v9];
  }

  return v7;
}

- (id)executeWithArticleContentPool:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = [[NSString alloc] initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v12 = "[FRArticlePrefetchOperation executeWithArticleContentPool:completionHandler:]";
    v13 = 2080;
    v14 = "FRArticlePrefetchManager.m";
    v15 = 1024;
    v16 = 308;
    v17 = 2114;
    v18 = v7;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = [NSString stringWithFormat:@"%@: %s", @"Abstract method", "[FRArticlePrefetchOperation executeWithArticleContentPool:completionHandler:]"];
  v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)_doWorkIfNotCancelled:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  cancelled = self->_cancelled;
  os_unfair_lock_unlock(&self->_cancellationLock);
  v5 = v7;
  if (!cancelled)
  {
    v6 = (*(v7 + 2))();
    os_unfair_lock_lock_with_options();
    if (self->_cancelled)
    {
      os_unfair_lock_unlock(&self->_cancellationLock);
      [v6 cancel];
    }

    else
    {
      objc_storeStrong(&self->_childCancelHandler, v6);
      os_unfair_lock_unlock(&self->_cancellationLock);
    }

    v5 = v7;
  }
}

- (void)cancel
{
  os_unfair_lock_lock_with_options();
  self->_cancelled = 1;
  v3 = self->_childCancelHandler;
  os_unfair_lock_unlock(&self->_cancellationLock);
  [(FCOperationCanceling *)v3 cancel];
}

@end