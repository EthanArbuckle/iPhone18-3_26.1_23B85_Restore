@interface SHPreRecordingWorker
- (NSUUID)workerID;
- (SHPreRecordingWorker)initWithRequestID:(id)d audioTapProvider:(id)provider;
- (SHWorkerDelegate)workerDelegate;
- (void)shutdownWorker;
- (void)startRecordingWithCompletionHandler:(id)handler;
- (void)stopAfterTransferingBuffers;
@end

@implementation SHPreRecordingWorker

- (SHPreRecordingWorker)initWithRequestID:(id)d audioTapProvider:(id)provider
{
  dCopy = d;
  providerCopy = provider;
  tapsForAvailableSources = [providerCopy tapsForAvailableSources];
  v10 = [tapsForAvailableSources count];

  if (v10)
  {
    v16.receiver = self;
    v16.super_class = SHPreRecordingWorker;
    v11 = [(SHPreRecordingWorker *)&v16 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_requestID, d);
      objc_storeStrong(p_isa + 4, provider);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create pre recording worker, there are no recorders available", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)startRecordingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  buffers = [(SHPreRecordingWorker *)self buffers];

  if (buffers)
  {
    handlerCopy[2](handlerCopy);
    v6 = sh_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Pre Recording should not be started twice", buf, 2u);
    }
  }

  else
  {
    v19 = handlerCopy;
    [(SHPreRecordingWorker *)self setCompletionHandler:handlerCopy];
    v6 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    audioTapProvider = [(SHPreRecordingWorker *)self audioTapProvider];
    tapsForAvailableSources = [audioTapProvider tapsForAvailableSources];

    v9 = [tapsForAvailableSources countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(tapsForAvailableSources);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [[SHRecordingBuffer alloc] initWithTap:v13];
          audioTapProvider2 = [(SHPreRecordingWorker *)self audioTapProvider];
          audioRecordingManager = [audioTapProvider2 audioRecordingManager];
          [audioRecordingManager attachTap:v13];

          [v6 addObject:v14];
        }

        v10 = [tapsForAvailableSources countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v17 = [v6 copy];
    buffers = self->_buffers;
    self->_buffers = v17;

    handlerCopy = v19;
  }
}

- (NSUUID)workerID
{
  v2 = [[NSUUID alloc] initWithUUIDString:@"9846B3A1-6769-4363-8AA2-214973BD05A0"];

  return v2;
}

- (void)stopAfterTransferingBuffers
{
  buffers = self->_buffers;
  self->_buffers = 0;

  completionHandler = [(SHPreRecordingWorker *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(SHPreRecordingWorker *)self completionHandler];
    completionHandler2[2]();

    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }

  workerDelegate = [(SHPreRecordingWorker *)self workerDelegate];
  [workerDelegate finishedWorker:self];

  [(SHPreRecordingWorker *)self setWorkerDelegate:0];
}

- (void)shutdownWorker
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  buffers = [(SHPreRecordingWorker *)self buffers];
  v4 = [buffers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(buffers);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        audioTapProvider = [(SHPreRecordingWorker *)self audioTapProvider];
        audioRecordingManager = [audioTapProvider audioRecordingManager];
        v11 = [v8 tap];
        [audioRecordingManager detachTap:v11];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [buffers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(SHPreRecordingWorker *)self stopAfterTransferingBuffers];
}

- (SHWorkerDelegate)workerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_workerDelegate);

  return WeakRetained;
}

@end