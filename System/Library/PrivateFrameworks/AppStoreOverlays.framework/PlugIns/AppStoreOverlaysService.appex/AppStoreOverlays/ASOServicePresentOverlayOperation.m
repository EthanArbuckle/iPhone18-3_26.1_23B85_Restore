@interface ASOServicePresentOverlayOperation
+ (id)log;
- (ASOServicePresentOverlayOperation)initWithQueue:(id)a3 configuration:(id)a4 delegate:(id)a5;
- (ASOServicePresentationQueue)queue;
- (void)cancel;
- (void)finishExecuting;
- (void)start;
- (void)startExecuting;
@end

@implementation ASOServicePresentOverlayOperation

+ (id)log
{
  if (qword_10002C780 != -1)
  {
    sub_100017F00();
  }

  v3 = qword_10002C788;

  return v3;
}

- (ASOServicePresentOverlayOperation)initWithQueue:(id)a3 configuration:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ASOServicePresentOverlayOperation;
  v11 = [(ASOServicePresentOverlayOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_queue, v8);
    objc_storeStrong(&v12->_configuration, a4);
    objc_storeStrong(&v12->_delegate, a5);
  }

  return v12;
}

- (void)cancel
{
  v3 = +[ASOServicePresentOverlayOperation log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cancel ASOServicePresentOverlayOperation", buf, 2u);
  }

  if (![(ASOServicePresentOverlayOperation *)self isFinished]&& ([(ASOServicePresentOverlayOperation *)self isCancelled]& 1) == 0)
  {
    v4 = [(ASOServicePresentOverlayOperation *)self delegate];
    v5 = [NSError errorWithDomain:@"ASOErrorDomain" code:4 userInfo:0];
    [v4 remoteStoreOverlayDidFailToLoadWithError:v5];
  }

  v6.receiver = self;
  v6.super_class = ASOServicePresentOverlayOperation;
  [(ASOServicePresentOverlayOperation *)&v6 cancel];
  if ([(ASOServicePresentOverlayOperation *)self isExecuting])
  {
    [(ASOServicePresentOverlayOperation *)self finishExecuting];
  }
}

- (void)start
{
  [(ASOServicePresentOverlayOperation *)self startExecuting];
  if ([(ASOServicePresentOverlayOperation *)self isCancelled])
  {

    [(ASOServicePresentOverlayOperation *)self finishExecuting];
  }

  else
  {
    v3 = [(ASOServicePresentOverlayOperation *)self queue];
    v4 = [v3 delegate];
    v5 = [(ASOServicePresentOverlayOperation *)self queue];
    v6 = [(ASOServicePresentOverlayOperation *)self configuration];
    v7 = [(ASOServicePresentOverlayOperation *)self delegate];
    v8 = [v4 presentationQueue:v5 presentOverlayWithConfiguration:v6 delegate:v7];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000087CC;
    v9[3] = &unk_100025070;
    v9[4] = self;
    [v8 addFinishBlock:v9];
  }
}

- (void)startExecuting
{
  v3 = +[ASOServicePresentOverlayOperation log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Start executing present overlay operation: %@", &v4, 0xCu);
  }

  [(ASOServicePresentOverlayOperation *)self willChangeValueForKey:@"isExecuting"];
  [(ASOServicePresentOverlayOperation *)self setIsExecuting:1];
  [(ASOServicePresentOverlayOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (void)finishExecuting
{
  v3 = +[ASOServicePresentOverlayOperation log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Finish executing present overlay operation: %@", &v4, 0xCu);
  }

  [(ASOServicePresentOverlayOperation *)self willChangeValueForKey:@"isExecuting"];
  [(ASOServicePresentOverlayOperation *)self willChangeValueForKey:@"isFinished"];
  [(ASOServicePresentOverlayOperation *)self setIsExecuting:0];
  [(ASOServicePresentOverlayOperation *)self setIsFinished:1];
  [(ASOServicePresentOverlayOperation *)self didChangeValueForKey:@"isExecuting"];
  [(ASOServicePresentOverlayOperation *)self didChangeValueForKey:@"isFinished"];
}

- (ASOServicePresentationQueue)queue
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  return WeakRetained;
}

@end