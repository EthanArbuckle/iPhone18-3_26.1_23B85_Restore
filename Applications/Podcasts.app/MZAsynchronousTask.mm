@interface MZAsynchronousTask
- (MZAsynchronousTask)initWithHandlerQueue:(id)queue taskTimeout:(double)timeout assertionTimeout:(double)assertionTimeout debugDescription:(id)description;
- (NSError)error;
- (id)description;
- (id)expirationHandler;
- (id)finishedHandler;
- (id)result;
- (int)cancelType;
- (void)_invalidateAssertionTimer;
- (void)_invalidateTaskAssertionForced:(BOOL)forced;
- (void)_invalidateTaskTimer;
- (void)_onQueueFireExpirationHandlerIfNecesary;
- (void)addTaskCompletionBlock:(id)block;
- (void)beginTaskOperation;
- (void)dealloc;
- (void)endTaskOperation;
- (void)finishTaskOperationWithResult:(id)result error:(id)error;
- (void)invalidate;
- (void)invokeTaskCompletionBlocksWithBlock:(id)block;
- (void)setCancelType:(int)type;
- (void)setError:(id)error;
- (void)setExpirationHandler:(id)handler;
- (void)setFinishedHandler:(id)handler;
- (void)setResult:(id)result;
@end

@implementation MZAsynchronousTask

- (MZAsynchronousTask)initWithHandlerQueue:(id)queue taskTimeout:(double)timeout assertionTimeout:(double)assertionTimeout debugDescription:(id)description
{
  queueCopy = queue;
  descriptionCopy = description;
  v34.receiver = self;
  v34.super_class = MZAsynchronousTask;
  v13 = [(MZAsynchronousTask *)&v34 init];
  v14 = v13;
  if (v13)
  {
    if (assertionTimeout > timeout)
    {
      assertionTimeout = timeout;
    }

    objc_storeStrong(&v13->_handlerQueue, queue);
    v15 = dispatch_queue_create(0, 0);
    queue = v14->_queue;
    v14->_queue = v15;

    v17 = timeout - assertionTimeout;
    if (timeout - assertionTimeout < 0.00000011920929)
    {
      assertionTimeout = *&qword_1005931F0;
    }

    v18 = +[NSMutableArray array];
    [(MZAsynchronousTask *)v14 setCompletions:v18];

    [(MZAsynchronousTask *)v14 setTaskDebugDescription:descriptionCopy];
    v14->_taskTimeout = timeout;
    v19 = dispatch_queue_create(0, 0);
    v20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v19);
    taskTimeoutTimer = v14->_taskTimeoutTimer;
    v14->_taskTimeoutTimer = v20;

    dispatch_source_set_timer(v14->_taskTimeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v22 = v14->_taskTimeoutTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10008DF08;
    handler[3] = &unk_1004D8358;
    v23 = v14;
    v33 = v23;
    dispatch_source_set_event_handler(v22, handler);
    dispatch_resume(v14->_taskTimeoutTimer);
    *(v23 + 13) = assertionTimeout;
    v24 = v23[14];
    v23[14] = 0;

    if (*(v23 + 13) != *&qword_1005931F0)
    {
      *(v23 + 13) = assertionTimeout;
      v25 = dispatch_queue_create(0, 0);
      v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v25);
      v27 = v23[14];
      v23[14] = v26;

      dispatch_source_set_timer(v23[14], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v28 = v23[14];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10008DFC4;
      v30[3] = &unk_1004D8358;
      v31 = v23;
      dispatch_source_set_event_handler(v28, v30);
      dispatch_resume(v23[14]);
    }
  }

  return v14;
}

- (void)dealloc
{
  v3 = _MTLogCategoryAsyncTask();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dealloc task: %@", buf, 0xCu);
  }

  [(MZAsynchronousTask *)self _invalidateTaskTimer];
  [(MZAsynchronousTask *)self _invalidateAssertionTimer];
  v4.receiver = self;
  v4.super_class = MZAsynchronousTask;
  [(MZAsynchronousTask *)&v4 dealloc];
}

- (void)_invalidateTaskTimer
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008E1C4;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_invalidateAssertionTimer
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008E2AC;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = MZAsynchronousTask;
  v3 = [(MZAsynchronousTask *)&v7 description];
  taskDebugDescription = [(MZAsynchronousTask *)self taskDebugDescription];
  v5 = [NSString stringWithFormat:@"%@ '%@'", v3, taskDebugDescription];

  return v5;
}

- (void)setExpirationHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008E45C;
  v7[3] = &unk_1004D9158;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

- (id)expirationHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100008990;
  v10 = sub_10003B4AC;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008E640;
  v5[3] = &unk_1004D9068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = objc_retainBlock(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setFinishedHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008E724;
  v7[3] = &unk_1004D9158;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

- (id)finishedHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100008990;
  v10 = sub_10003B4AC;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008E908;
  v5[3] = &unk_1004D9068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = objc_retainBlock(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_onQueueFireExpirationHandlerIfNecesary
{
  v3 = objc_retainBlock(self->_expirationHandler);
  if (v3)
  {
    expirationHandler = self->_expirationHandler;
    self->_expirationHandler = 0;

    cancelType = self->_cancelType;
    handlerQueue = self->_handlerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008EA14;
    block[3] = &unk_1004D9EA8;
    block[4] = self;
    v9 = cancelType;
    v8 = v3;
    dispatch_async(handlerQueue, block);
  }
}

- (void)setCancelType:(int)type
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008EB54;
  v4[3] = &unk_1004D9ED0;
  typeCopy = type;
  v4[4] = self;
  dispatch_sync(queue, v4);
}

- (int)cancelType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008EC2C;
  v5[3] = &unk_1004D9068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setResult:(id)result
{
  resultCopy = result;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008ECD8;
  v7[3] = &unk_1004D8798;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_sync(queue, v7);
}

- (id)result
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10008EDD4;
  v10 = sub_10008EDE4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008EDEC;
  v5[3] = &unk_1004D9068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008EE98;
  v7[3] = &unk_1004D8798;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(queue, v7);
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10008EDD4;
  v10 = sub_10008EDE4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008EF94;
  v5[3] = &unk_1004D9068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)beginTaskOperation
{
  v3 = _MTLogCategoryAsyncTask();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "beginTaskOperation %@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008F128;
  v8[3] = &unk_1004D8358;
  v8[4] = self;
  v4 = [(MZAsynchronousTask *)self description];
  v5 = [MZTaskAssertion newBackgroundTaskWithExpirationHandler:v8 debugInfo:v4];
  [(MZAsynchronousTask *)self setTaskAssertion:v5];

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008F170;
  v7[3] = &unk_1004D8358;
  v7[4] = self;
  dispatch_sync(queue, v7);
}

- (void)finishTaskOperationWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  [(MZAsynchronousTask *)self setResult:resultCopy];
  [(MZAsynchronousTask *)self setError:errorCopy];
  [(MZAsynchronousTask *)self setExpirationHandler:0];
  handlerQueue = self->_handlerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008F3CC;
  block[3] = &unk_1004D94C8;
  block[4] = self;
  v12 = resultCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = resultCopy;
  dispatch_async(handlerQueue, block);
}

- (void)endTaskOperation
{
  [(MZAsynchronousTask *)self finishTaskOperationWithResult:0 error:0];

  [(MZAsynchronousTask *)self invalidate];
}

- (void)_invalidateTaskAssertionForced:(BOOL)forced
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10008EDD4;
  v14 = sub_10008EDE4;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008F698;
  block[3] = &unk_1004D9090;
  forcedCopy = forced;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(queue, block);
  v5 = v11[5];
  if (v5)
  {
    [v5 invalidate];
    v6 = _MTLogCategoryAsyncTask();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v11[5];
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Releasing the background task assertion %@ for task: %@.", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v10, 8);
}

- (void)invalidate
{
  [(MZAsynchronousTask *)self _invalidateTaskTimer];
  [(MZAsynchronousTask *)self setExpirationHandler:0];
  [(MZAsynchronousTask *)self setFinishedHandler:0];

  [(MZAsynchronousTask *)self _invalidateTaskAssertionForced:0];
}

- (void)addTaskCompletionBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = blockCopy;
    v6 = objc_retainBlock(blockCopy);
    v9 = [v6 copy];

    completions = [(MZAsynchronousTask *)self completions];
    v8 = objc_retainBlock(v9);
    [completions addObject:v8];
  }
}

- (void)invokeTaskCompletionBlocksWithBlock:(id)block
{
  blockCopy = block;
  completions = [(MZAsynchronousTask *)self completions];
  v6 = [completions copy];

  [(MZAsynchronousTask *)self setCompletions:0];
  result = [(MZAsynchronousTask *)self result];
  error = [(MZAsynchronousTask *)self error];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008FA4C;
  block[3] = &unk_1004D8CC8;
  block[4] = self;
  block[5] = v21;
  dispatch_sync(queue, block);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008FA94;
  v15[3] = &unk_1004D9F20;
  v10 = dispatch_group_create();
  v16 = v10;
  v11 = blockCopy;
  v19 = v11;
  v12 = result;
  v17 = v12;
  v13 = error;
  v18 = v13;
  [v6 enumerateObjectsUsingBlock:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008FC08;
  v14[3] = &unk_1004D9068;
  v14[4] = self;
  v14[5] = v21;
  dispatch_group_notify(v10, &_dispatch_main_q, v14);

  _Block_object_dispose(v21, 8);
}

@end