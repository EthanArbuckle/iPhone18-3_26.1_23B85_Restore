@interface SHPreRecordingWorker
- (NSUUID)workerID;
- (SHPreRecordingWorker)initWithRequestID:(id)a3 audioTapProvider:(id)a4;
- (SHWorkerDelegate)workerDelegate;
- (void)shutdownWorker;
- (void)startRecordingWithCompletionHandler:(id)a3;
- (void)stopAfterTransferingBuffers;
@end

@implementation SHPreRecordingWorker

- (SHPreRecordingWorker)initWithRequestID:(id)a3 audioTapProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 tapsForAvailableSources];
  v10 = [v9 count];

  if (v10)
  {
    v16.receiver = self;
    v16.super_class = SHPreRecordingWorker;
    v11 = [(SHPreRecordingWorker *)&v16 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_requestID, a3);
      objc_storeStrong(p_isa + 4, a4);
    }

    self = p_isa;
    v13 = self;
  }

  else
  {
    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create pre recording worker, there are no recorders available", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)startRecordingWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHPreRecordingWorker *)self buffers];

  if (v5)
  {
    v4[2](v4);
    v6 = sh_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Pre Recording should not be started twice", buf, 2u);
    }
  }

  else
  {
    v19 = v4;
    [(SHPreRecordingWorker *)self setCompletionHandler:v4];
    v6 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [(SHPreRecordingWorker *)self audioTapProvider];
    v8 = [v7 tapsForAvailableSources];

    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [[SHRecordingBuffer alloc] initWithTap:v13];
          v15 = [(SHPreRecordingWorker *)self audioTapProvider];
          v16 = [v15 audioRecordingManager];
          [v16 attachTap:v13];

          [v6 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v17 = [v6 copy];
    buffers = self->_buffers;
    self->_buffers = v17;

    v4 = v19;
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

  v4 = [(SHPreRecordingWorker *)self completionHandler];

  if (v4)
  {
    v5 = [(SHPreRecordingWorker *)self completionHandler];
    v5[2]();

    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }

  v7 = [(SHPreRecordingWorker *)self workerDelegate];
  [v7 finishedWorker:self];

  [(SHPreRecordingWorker *)self setWorkerDelegate:0];
}

- (void)shutdownWorker
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(SHPreRecordingWorker *)self buffers];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [(SHPreRecordingWorker *)self audioTapProvider];
        v10 = [v9 audioRecordingManager];
        v11 = [v8 tap];
        [v10 detachTap:v11];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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