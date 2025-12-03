@interface ASOServiceDismissOverlayOperation
- (ASOServiceDismissOverlayOperation)initWithQueue:(id)queue;
- (ASOServicePresentationQueue)queue;
- (void)finishExecuting;
- (void)start;
- (void)startExecuting;
@end

@implementation ASOServiceDismissOverlayOperation

- (ASOServiceDismissOverlayOperation)initWithQueue:(id)queue
{
  queueCopy = queue;
  v8.receiver = self;
  v8.super_class = ASOServiceDismissOverlayOperation;
  v5 = [(ASOServiceDismissOverlayOperation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_queue, queueCopy);
  }

  return v6;
}

- (void)start
{
  [(ASOServiceDismissOverlayOperation *)self startExecuting];
  if ([(ASOServiceDismissOverlayOperation *)self isCancelled])
  {

    [(ASOServiceDismissOverlayOperation *)self finishExecuting];
  }

  else
  {
    queue = [(ASOServiceDismissOverlayOperation *)self queue];
    delegate = [queue delegate];
    queue2 = [(ASOServiceDismissOverlayOperation *)self queue];
    v6 = [delegate presentationQueueDismissOverlay:queue2];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100007B7C;
    v7[3] = &unk_100025070;
    v7[4] = self;
    [v6 addFinishBlock:v7];
  }
}

- (void)startExecuting
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100017DEC(self);
  }

  [(ASOServiceDismissOverlayOperation *)self willChangeValueForKey:@"isExecuting"];
  [(ASOServiceDismissOverlayOperation *)self setIsExecuting:1];
  [(ASOServiceDismissOverlayOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (void)finishExecuting
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100017E6C(self);
  }

  [(ASOServiceDismissOverlayOperation *)self willChangeValueForKey:@"isExecuting"];
  [(ASOServiceDismissOverlayOperation *)self willChangeValueForKey:@"isFinished"];
  [(ASOServiceDismissOverlayOperation *)self setIsExecuting:0];
  [(ASOServiceDismissOverlayOperation *)self setIsFinished:1];
  [(ASOServiceDismissOverlayOperation *)self didChangeValueForKey:@"isExecuting"];
  [(ASOServiceDismissOverlayOperation *)self didChangeValueForKey:@"isFinished"];
}

- (ASOServicePresentationQueue)queue
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  return WeakRetained;
}

@end