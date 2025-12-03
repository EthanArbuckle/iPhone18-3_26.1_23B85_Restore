@interface JSAThread
- (BOOL)isRunningOnThread;
- (JSAThread)initWithName:(id)name;
- (void)_performPendingBlocks;
- (void)_scriptingThreadMain;
- (void)enqueueBlock:(id)block;
- (void)enqueueBlockSync:(id)sync;
@end

@implementation JSAThread

- (JSAThread)initWithName:(id)name
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = JSAThread;
  v6 = [(JSAThread *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v8 = objc_alloc_init(NSObject);
    scriptingThreadContext = v7->_scriptingThreadContext;
    v7->_scriptingThreadContext = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("com.apple.iBooks.JSAThread", v11);
    accessQueue = v7->_accessQueue;
    v7->_accessQueue = v12;

    v7->_state = 0;
    v14 = +[NSMutableArray array];
    pendingBlocks = v7->_pendingBlocks;
    v7->_pendingBlocks = v14;
  }

  return v7;
}

- (BOOL)isRunningOnThread
{
  v3 = +[NSThread currentThread];
  threadDictionary = [v3 threadDictionary];
  v5 = [threadDictionary objectForKeyedSubscript:kScriptingThreadIdentifier];
  LOBYTE(self) = v5 == self->_scriptingThreadContext;

  return self;
}

- (void)enqueueBlock:(id)block
{
  blockCopy = block;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  objc_initWeak(&location, self);
  accessQueue = [(JSAThread *)self accessQueue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10720;
  v11 = &unk_B2A38;
  objc_copyWeak(&v14, &location);
  v13 = &v16;
  v6 = blockCopy;
  v12 = v6;
  dispatch_sync(accessQueue, &v8);

  v7 = v17[3];
  if (v7)
  {
    if (v7 == 2)
    {
      CFRunLoopSourceSignal([(JSAThread *)self runLoopSource:v8]);
      CFRunLoopWakeUp([(JSAThread *)self runLoop]);
    }
  }

  else
  {
    sub_80748(self);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v16, 8);
}

- (void)enqueueBlockSync:(id)sync
{
  syncCopy = sync;
  if ([(JSAThread *)self isRunningOnThread])
  {
    v7 = JSALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_807CC(v7);
    }

    v8 = [NSString stringWithFormat:@"%s called on its own JSAThread", "[JSAThread enqueueBlockSync:]"];
    v9 = [NSException exceptionWithName:NSInvalidArgumentException reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10928;
  v11[3] = &unk_B2A60;
  v12 = dispatch_semaphore_create(0);
  v13 = syncCopy;
  v5 = v12;
  v6 = syncCopy;
  [(JSAThread *)self enqueueBlock:v11];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_performPendingBlocks
{
  v3 = objc_autoreleasePoolPush();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10B74;
  v20 = sub_10B84;
  v21 = 0;
  accessQueue = [(JSAThread *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10B8C;
  block[3] = &unk_B2508;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(accessQueue, block);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v17[5];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v22 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        (*(v9 + 16))(v9);
        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v16, 8);
  objc_autoreleasePoolPop(v3);
}

- (void)_scriptingThreadMain
{
  scriptingThreadContext = self->_scriptingThreadContext;
  v4 = +[NSThread currentThread];
  threadDictionary = [v4 threadDictionary];
  [threadDictionary setObject:scriptingThreadContext forKeyedSubscript:kScriptingThreadIdentifier];

  context.version = 0;
  memset(&context.retain, 0, 56);
  context.info = self;
  context.perform = j__objc_msgSend__performPendingBlocks;
  self->_runLoopSource = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &context);
  Current = CFRunLoopGetCurrent();
  self->_runLoop = Current;
  CFRunLoopAddSource(Current, self->_runLoopSource, kCFRunLoopDefaultMode);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessQueue = [(JSAThread *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10DF0;
  block[3] = &unk_B2A88;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(accessQueue, block);

  if (*(v12 + 24) == 1)
  {
    CFRunLoopSourceSignal(self->_runLoopSource);
    CFRunLoopWakeUp(self->_runLoop);
  }

  CFRunLoopRun();
  accessQueue2 = [(JSAThread *)self accessQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10E60;
  v9[3] = &unk_B2A88;
  v9[4] = self;
  v9[5] = &v11;
  dispatch_sync(accessQueue2, v9);

  if (*(v12 + 24) == 1)
  {
    sub_80748(self);
  }

  _Block_object_dispose(&v11, 8);
}

@end