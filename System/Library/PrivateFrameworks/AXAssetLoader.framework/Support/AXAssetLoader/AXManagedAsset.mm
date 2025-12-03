@interface AXManagedAsset
+ (id)assetWithPolicy:(id)policy;
- (AXManagedAsset)initWithPolicy:(id)policy;
- (id)description;
- (void)_dequeueNextTask;
- (void)_enqueueTask:(id)task;
- (void)checkInAssetUpdateXPCActivity;
- (void)enqueueAssetUpdateTaskWithContext:(id)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation AXManagedAsset

+ (id)assetWithPolicy:(id)policy
{
  policyCopy = policy;
  v5 = [[self alloc] initWithPolicy:policyCopy];

  return v5;
}

- (AXManagedAsset)initWithPolicy:(id)policy
{
  policyCopy = policy;
  v21.receiver = self;
  v21.super_class = AXManagedAsset;
  v5 = [(AXManagedAsset *)&v21 init];
  v6 = v5;
  if (v5)
  {
    [(AXManagedAsset *)v5 setPolicy:policyCopy];
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    assetTypeSuffix = [policyCopy assetTypeSuffix];
    v10 = dispatch_queue_create([assetTypeSuffix UTF8String], v8);
    taskQueue = v6->_taskQueue;
    v6->_taskQueue = v10;

    v12 = +[NSMutableArray array];
    enqueuedTasks = v6->_enqueuedTasks;
    v6->_enqueuedTasks = v12;

    v6->_taskLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v6);
    v14 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, v6->_taskQueue);
    taskQueueSignal = v6->_taskQueueSignal;
    v6->_taskQueueSignal = v14;

    v16 = v6->_taskQueueSignal;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000032B4;
    v18[3] = &unk_100018788;
    objc_copyWeak(&v19, &location);
    dispatch_source_set_event_handler(v16, v18);
    dispatch_activate(v6->_taskQueueSignal);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  policy = [(AXManagedAsset *)self policy];
  assetTypeSuffix = [policy assetTypeSuffix];

  if (v3)
  {
    v6 = NSStringFromClass(v3);
  }

  else
  {
    v6 = @"<Unknown Class>";
  }

  v7 = [NSString stringWithFormat:@"%@<%p> [%@]", v6, self, assetTypeSuffix];

  return v7;
}

- (void)checkInAssetUpdateXPCActivity
{
  objc_initWeak(&location, self);
  v3 = XPC_ACTIVITY_CHECK_IN;
  policy = [(AXManagedAsset *)self policy];
  launchActivityIdentifier = [policy launchActivityIdentifier];
  uTF8String = [launchActivityIdentifier UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000034D0;
  handler[3] = &unk_1000187B0;
  objc_copyWeak(&v8, &location);
  handler[4] = self;
  xpc_activity_register(uTF8String, v3, handler);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)enqueueAssetUpdateTaskWithContext:(id)context
{
  contextCopy = context;
  v5 = [AXUpdateAssetTask alloc];
  policy = [(AXManagedAsset *)self policy];
  v7 = [(AXUpdateAssetTask *)v5 initWithPolicy:policy context:contextCopy];

  [(AXManagedAsset *)self _enqueueTask:v7];
}

- (void)_enqueueTask:(id)task
{
  taskCopy = task;
  v3 = taskCopy;
  AX_PERFORM_WITH_LOCK();
}

- (void)_dequeueNextTask
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100003AB4;
  v9 = sub_100003AC4;
  v10 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v6[5];
  if (v2)
  {
    taskBlock = [v2 taskBlock];
    taskBlock[2](taskBlock, v6[5]);
  }

  _Block_object_dispose(&v5, 8);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_10001DDF0 == context && [pathCopy isEqualToString:@"finished"])
  {
    v13 = AXLogAssetDaemon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      policy = [(AXManagedAsset *)self policy];
      assetType = [policy assetType];
      *buf = 138412546;
      v18 = assetType;
      v19 = 2112;
      v20 = objectCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[AXManagedAsset: %@]: Notified task did finish: %@", buf, 0x16u);
    }

    dispatch_source_merge_data(self->_taskQueueSignal, 1uLL);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = AXManagedAsset;
    [(AXManagedAsset *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

@end