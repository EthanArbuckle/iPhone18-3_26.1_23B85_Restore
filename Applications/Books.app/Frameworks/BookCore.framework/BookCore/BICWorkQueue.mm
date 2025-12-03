@interface BICWorkQueue
+ (BICWorkQueue)workQueueWithHighPriorityTargetQueue:(id)queue backgroundTargetQueue:(id)targetQueue numConcurrentWorkItems:(unint64_t)items;
- (BOOL)hasLargeBacklog;
- (id)_statsString;
- (id)description;
- (void)_startNextWorkItem;
- (void)addWorkItemWithPriority:(id)priority description:(id)description block:(id)block;
- (void)workComplete:(id)complete;
@end

@implementation BICWorkQueue

+ (BICWorkQueue)workQueueWithHighPriorityTargetQueue:(id)queue backgroundTargetQueue:(id)targetQueue numConcurrentWorkItems:(unint64_t)items
{
  targetQueueCopy = targetQueue;
  queueCopy = queue;
  v10 = objc_alloc_init(self);
  [v10 setNumConcurrentWorkItems:items];
  if (items <= 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = &_dispatch_queue_attr_concurrent;
  }

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(v11, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);
  v14 = dispatch_queue_create_with_target_V2("com.apple.coverWorkQ_high", v13, queueCopy);

  [v10 setHighPriorityWorkQ:v14];
  v15 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_BACKGROUND, 0);
  v16 = dispatch_queue_create_with_target_V2("com.apple.coverWorkQ_low", v15, targetQueueCopy);

  [v10 setLowPriorityWorkQ:v16];
  v17 = +[NSMutableSet set];
  [v10 setAl_workItems:v17];

  v18 = +[NSMutableSet set];
  [v10 setAl_workingOnItems:v18];

  [v10 setWorkItemTimeout:5.0];
  v10[2] = 0;

  return v10;
}

- (BOOL)hasLargeBacklog
{
  selfCopy = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_7AC00;
  v7 = &unk_2C7AE0;
  selfCopy2 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock_with_options();
  v6(v3);
  os_unfair_lock_unlock(&selfCopy->_accessLock);

  LOBYTE(selfCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return selfCopy;
}

- (void)addWorkItemWithPriority:(id)priority description:(id)description block:(id)block
{
  [BICWorkItem workItemWithPriority:priority description:description block:block];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_7ADF0;
  v13 = &unk_2C7BE8;
  v6 = v14 = self;
  v15 = v6;
  os_unfair_lock_lock_with_options();
  sub_7ADF0(&v10);
  os_unfair_lock_unlock(&self->_accessLock);
  v7 = BCImageCacheLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(BICWorkQueue *)self identifier:v10];
    _statsString = [(BICWorkQueue *)self _statsString];
    *buf = 138543874;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    v20 = 2114;
    v21 = _statsString;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "BICWorkQueue: Adding %{public}@ to queue %@. %{public}@", buf, 0x20u);
  }

  [(BICWorkQueue *)self _startNextWorkItem];
}

- (void)_startNextWorkItem
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_7B0E0;
  v23 = sub_7B0F0;
  v24 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_7B0F8;
  v16 = &unk_2CA7A8;
  selfCopy = self;
  v18 = &v19;
  v3 = v14;
  os_unfair_lock_lock_with_options();
  v15(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = v20[5];
  if (v4)
  {
    if ([v4 priority] < 5)
    {
      [(BICWorkQueue *)self lowPriorityWorkQ];
    }

    else
    {
      [(BICWorkQueue *)self highPriorityWorkQ];
    }
    v5 = ;
    v6 = BCImageCacheLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v20[5];
      identifier = [(BICWorkQueue *)self identifier];
      _statsString = [(BICWorkQueue *)self _statsString];
      *buf = 138543874;
      v26 = v7;
      v27 = 2112;
      v28 = identifier;
      v29 = 2114;
      v30 = _statsString;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "BICWorkQueue: Starting %{public}@ on queue %@. %{public}@", buf, 0x20u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_7B21C;
    block[3] = &unk_2C7BC0;
    v12 = v5;
    v13 = &v19;
    block[4] = self;
    v10 = v5;
    dispatch_async(v10, block);
  }

  _Block_object_dispose(&v19, 8);
}

- (void)workComplete:(id)complete
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v12 = sub_7B8F4;
  v13 = &unk_2C7BC0;
  v16 = &v17;
  selfCopy = self;
  completeCopy = complete;
  v15 = completeCopy;
  v5 = v11;
  os_unfair_lock_lock_with_options();
  v12(v5);
  os_unfair_lock_unlock(&self->_accessLock);

  if (*(v18 + 24) == 1)
  {
    v6 = BCImageCacheLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      identifier = [(BICWorkQueue *)self identifier];
      _statsString = [(BICWorkQueue *)self _statsString];
      *buf = 138543874;
      v22 = completeCopy;
      v23 = 2112;
      v24 = identifier;
      v25 = 2114;
      v26 = _statsString;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "BICWorkQueue: Finished %{public}@ on queue %@. %{public}@", buf, 0x20u);
    }

    [(BICWorkQueue *)self _startNextWorkItem];
  }

  else
  {
    v9 = BCImageCacheLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [(BICWorkQueue *)self identifier];
      *buf = 138543618;
      v22 = completeCopy;
      v23 = 2112;
      v24 = identifier2;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BICWorkQueue: Already timed-out %{public}@ now completed on queue %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (id)_statsString
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_7BB20;
  v8 = &unk_2CB0E0;
  selfCopy = self;
  v10 = &v21;
  v11 = &v17;
  v12 = &v13;
  v3 = v6;
  os_unfair_lock_lock_with_options();
  v7(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = [NSString stringWithFormat:@"Pending=%tu, WIP=%tu, Finished=%tu.", v22[3], v18[3], v14[3]];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v4;
}

- (id)description
{
  identifier = [(BICWorkQueue *)self identifier];
  _statsString = [(BICWorkQueue *)self _statsString];
  v5 = [NSString stringWithFormat:@"BICWorkQueue %@. %@", identifier, _statsString];

  return v5;
}

@end