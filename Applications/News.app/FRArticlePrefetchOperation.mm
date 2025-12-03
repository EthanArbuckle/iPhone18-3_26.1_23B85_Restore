@interface FRArticlePrefetchOperation
- (BOOL)isEqual:(id)equal;
- (FRArticlePrefetchOperation)initWithHeadline:(id)headline component:(unint64_t)component priority:(unint64_t)priority;
- (id)executeWithArticleContentPool:(id)pool completionHandler:(id)handler;
- (int64_t)compareExecutionOrder:(id)order;
- (unint64_t)hash;
- (void)_doWorkIfNotCancelled:(id)cancelled;
- (void)cancel;
@end

@implementation FRArticlePrefetchOperation

- (FRArticlePrefetchOperation)initWithHeadline:(id)headline component:(unint64_t)component priority:(unint64_t)priority
{
  headlineCopy = headline;
  v13.receiver = self;
  v13.super_class = FRArticlePrefetchOperation;
  v10 = [(FRArticlePrefetchOperation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_headline, headline);
    v11->_component = component;
    v11->_priority = priority;
    v11->_cancellationLock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    headline = [(FRArticlePrefetchOperation *)self headline];
    headline2 = [v5 headline];
    if ([headline isEqual:headline2])
    {
      component = [(FRArticlePrefetchOperation *)self component];
      v9 = component == [v5 component];
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
  headline = [(FRArticlePrefetchOperation *)self headline];
  v4 = [headline hash];
  component = [(FRArticlePrefetchOperation *)self component];

  return component ^ v4;
}

- (int64_t)compareExecutionOrder:(id)order
{
  orderCopy = order;
  v5 = [NSNumber numberWithUnsignedInteger:[(FRArticlePrefetchOperation *)self component]];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [orderCopy component]);
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = [NSNumber numberWithUnsignedInteger:[(FRArticlePrefetchOperation *)self priority]];
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [orderCopy priority]);
    v7 = [v8 compare:v9];
  }

  return v7;
}

- (id)executeWithArticleContentPool:(id)pool completionHandler:(id)handler
{
  poolCopy = pool;
  handlerCopy = handler;
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

- (void)_doWorkIfNotCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  os_unfair_lock_lock_with_options();
  cancelled = self->_cancelled;
  os_unfair_lock_unlock(&self->_cancellationLock);
  v5 = cancelledCopy;
  if (!cancelled)
  {
    v6 = (*(cancelledCopy + 2))();
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

    v5 = cancelledCopy;
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