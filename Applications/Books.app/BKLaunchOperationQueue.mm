@interface BKLaunchOperationQueue
- (BKLaunchOperationQueue)initWithName:(id)name signpostLog:(id)log targetQueue:(id)queue activate:(BOOL)activate;
- (void)addOperationWithBlock:(id)block;
- (void)dealloc;
- (void)setQosClass:(unsigned int)class;
- (void)waitUntilAllOperationsAreFinished;
@end

@implementation BKLaunchOperationQueue

- (BKLaunchOperationQueue)initWithName:(id)name signpostLog:(id)log targetQueue:(id)queue activate:(BOOL)activate
{
  nameCopy = name;
  logCopy = log;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = BKLaunchOperationQueue;
  v14 = [(BKLaunchOperationQueue *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    objc_storeStrong(&v15->_signpostLog, log);
    v15->_signpostID = os_signpost_id_make_with_pointer(logCopy, v15);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_UNSPECIFIED, 0);

    if (!activate)
    {
      v18 = dispatch_queue_attr_make_initially_inactive(v17);

      v17 = v18;
    }

    uTF8String = [nameCopy UTF8String];
    if (queueCopy)
    {
      v20 = dispatch_queue_create_with_target_V2(uTF8String, v17, queueCopy);
    }

    else
    {
      v20 = dispatch_queue_create(uTF8String, v17);
    }

    underlyingQueue = v15->_underlyingQueue;
    v15->_underlyingQueue = v20;

    objc_storeStrong(&v15->_activeQueue, v15->_underlyingQueue);
    v15->_lock._os_unfair_lock_opaque = 0;
  }

  return v15;
}

- (void)dealloc
{
  dispatch_activate(self->_underlyingQueue);
  v3.receiver = self;
  v3.super_class = BKLaunchOperationQueue;
  [(BKLaunchOperationQueue *)&v3 dealloc];
}

- (void)setQosClass:(unsigned int)class
{
  v3 = *&class;
  os_unfair_lock_lock(&self->_lock);
  qosClass = self->_qosClass;
  if (qosClass != v3)
  {
    self->_qosClass = v3;
    if (v3)
    {
      v6 = [NSString stringWithFormat:@"%@@0x%x", self->_name, v3];
      uTF8String = [v6 UTF8String];
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_attr_make_with_qos_class(v8, v3, 0);
      v10 = dispatch_queue_create_with_target_V2(uTF8String, v9, self->_underlyingQueue);
      activeQueue = self->_activeQueue;
      self->_activeQueue = v10;
    }

    else
    {
      v12 = self->_underlyingQueue;
      v6 = self->_activeQueue;
      self->_activeQueue = v12;
    }

    if (qosClass < v3 && self->_hasNewBlocks)
    {
      dispatch_async(self->_activeQueue, &stru_100A0AB70);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addOperationWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  activeQueue = self->_activeQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C5C60;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(activeQueue, v7);
  self->_hasNewBlocks = 1;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)waitUntilAllOperationsAreFinished
{
  do
  {
    os_unfair_lock_lock(&self->_lock);
    activeQueue = self->_activeQueue;
    self->_hasNewBlocks = 0;
    v4 = activeQueue;
    os_unfair_lock_unlock(&self->_lock);
    dispatch_sync(v4, &stru_100A0AB90);

    os_unfair_lock_lock(&self->_lock);
    LOBYTE(v4) = self->_hasNewBlocks;
    os_unfair_lock_unlock(&self->_lock);
  }

  while ((v4 & 1) != 0);
}

@end