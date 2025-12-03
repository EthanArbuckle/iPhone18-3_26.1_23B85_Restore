@interface BCBackgroundTaskAssertion
+ (BCBackgroundTaskAssertion)sharedAssertion;
- (id)_init;
- (void)_claimAssertionForIdentifier:(id)identifier description:(id)description signalBlock:(id)block;
- (void)_releaseAssertionForIdentifier:(id)identifier signalBlock:(id)block;
- (void)_releaseAssertionForTaskID:(unint64_t)d;
- (void)dealloc;
- (void)dq_claimAssertionForIdentifier:(id)identifier description:(id)description signalBlock:(id)block;
- (void)dq_releaseAssertionForIdentifier:(id)identifier signalBlock:(id)block;
- (void)dq_releaseAssertionForTaskID:(unint64_t)d;
@end

@implementation BCBackgroundTaskAssertion

- (id)_init
{
  v11.receiver = self;
  v11.super_class = BCBackgroundTaskAssertion;
  v2 = [(BCBackgroundTaskAssertion *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BKLibraryIndexerAssetProgressAssertion.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    identifiersByTaskID = v2->_identifiersByTaskID;
    v2->_identifiersByTaskID = v6;

    v8 = objc_opt_new();
    taskIDs = v2->_taskIDs;
    v2->_taskIDs = v8;
  }

  return v2;
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_137308;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = BCBackgroundTaskAssertion;
  [(BCBackgroundTaskAssertion *)&v4 dealloc];
}

+ (BCBackgroundTaskAssertion)sharedAssertion
{
  if (qword_345F08 != -1)
  {
    sub_1EAF08();
  }

  v3 = qword_345F00;

  return v3;
}

- (void)_claimAssertionForIdentifier:(id)identifier description:(id)description signalBlock:(id)block
{
  identifierCopy = identifier;
  descriptionCopy = description;
  blockCopy = block;
  if ([identifierCopy length])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1376B8;
    block[3] = &unk_2C8768;
    objc_copyWeak(&v19, &location);
    v16 = identifierCopy;
    v17 = descriptionCopy;
    v18 = blockCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = BCIMLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1EAF1C();
    }

    v13 = objc_retainBlock(blockCopy);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

- (void)_releaseAssertionForIdentifier:(id)identifier signalBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  if ([identifierCopy length])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_137850;
    v12[3] = &unk_2C8EC0;
    objc_copyWeak(&v15, &location);
    v13 = identifierCopy;
    v14 = blockCopy;
    dispatch_async(queue, v12);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = BCIMLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1EAF5C();
    }

    v10 = objc_retainBlock(blockCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

- (void)_releaseAssertionForTaskID:(unint64_t)d
{
  if (UIBackgroundTaskInvalid != d)
  {
    v10[5] = v3;
    v10[6] = v4;
    objc_initWeak(v10, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_13796C;
    block[3] = &unk_2C9048;
    objc_copyWeak(v9, v10);
    v9[1] = d;
    dispatch_async(queue, block);
    objc_destroyWeak(v9);
    objc_destroyWeak(v10);
  }
}

- (void)dq_claimAssertionForIdentifier:(id)identifier description:(id)description signalBlock:(id)block
{
  identifierCopy = identifier;
  descriptionCopy = description;
  blockCopy = block;
  queue = [(BCBackgroundTaskAssertion *)self queue];
  dispatch_assert_queue_V2(queue);

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v12 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_137C58;
  v23[3] = &unk_2C8838;
  v13 = identifierCopy;
  v24 = v13;
  selfCopy = self;
  v26 = &v27;
  v14 = [v12 beginBackgroundTaskWithName:descriptionCopy expirationHandler:v23];

  v28[3] = v14;
  v15 = BCIMLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v28[3];
    *buf = 134218498;
    v32 = v16;
    v33 = 2112;
    v34 = v13;
    v35 = 2112;
    v36 = descriptionCopy;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Background task assertion %lu taken for identifier %@ and description %@", buf, 0x20u);
  }

  taskIDs = [(BCBackgroundTaskAssertion *)self taskIDs];
  v18 = [NSNumber numberWithUnsignedInteger:v28[3]];
  [taskIDs addObject:v18];

  identifiersByTaskID = [(BCBackgroundTaskAssertion *)self identifiersByTaskID];
  v20 = [NSNumber numberWithUnsignedInteger:v28[3]];
  [identifiersByTaskID setObject:v13 forKeyedSubscript:v20];

  v21 = objc_retainBlock(blockCopy);
  v22 = v21;
  if (v21)
  {
    (*(v21 + 2))(v21);
  }

  _Block_object_dispose(&v27, 8);
}

- (void)dq_releaseAssertionForTaskID:(unint64_t)d
{
  queue = [(BCBackgroundTaskAssertion *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = BCIMLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    identifiersByTaskID = [(BCBackgroundTaskAssertion *)self identifiersByTaskID];
    v8 = [NSNumber numberWithUnsignedInteger:d];
    v9 = [identifiersByTaskID objectForKeyedSubscript:v8];
    v15 = 134218242;
    dCopy = d;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Releasing background task assertion %lu for identifier %@.", &v15, 0x16u);
  }

  v10 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  [v10 endBackgroundTask:d];

  taskIDs = [(BCBackgroundTaskAssertion *)self taskIDs];
  v12 = [NSNumber numberWithUnsignedInteger:d];
  [taskIDs removeObject:v12];

  identifiersByTaskID2 = [(BCBackgroundTaskAssertion *)self identifiersByTaskID];
  v14 = [NSNumber numberWithUnsignedInteger:d];
  [identifiersByTaskID2 removeObjectForKey:v14];
}

- (void)dq_releaseAssertionForIdentifier:(id)identifier signalBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  queue = [(BCBackgroundTaskAssertion *)self queue];
  dispatch_assert_queue_V2(queue);

  identifiersByTaskID = [(BCBackgroundTaskAssertion *)self identifiersByTaskID];
  allValues = [identifiersByTaskID allValues];
  v11 = [allValues containsObject:identifierCopy];

  if (v11)
  {
    taskIDs = [(BCBackgroundTaskAssertion *)self taskIDs];
    objectEnumerator = [taskIDs objectEnumerator];

    nextObject = [objectEnumerator nextObject];
    if (!nextObject)
    {
      goto LABEL_7;
    }

    while (1)
    {
      identifiersByTaskID2 = [(BCBackgroundTaskAssertion *)self identifiersByTaskID];
      v16 = [identifiersByTaskID2 objectForKeyedSubscript:nextObject];

      if ([identifierCopy isEqualToString:v16])
      {
        break;
      }

      nextObject2 = [objectEnumerator nextObject];

      nextObject = nextObject2;
      if (!nextObject2)
      {
        goto LABEL_7;
      }
    }

    unsignedIntegerValue = [nextObject unsignedIntegerValue];

    if (unsignedIntegerValue != UIBackgroundTaskInvalid)
    {
      v22 = BCIMLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v27 = 134218242;
        v28 = unsignedIntegerValue;
        v29 = 2112;
        v30 = identifierCopy;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Releasing background task assertion %lu for identifier %@.", &v27, 0x16u);
      }

      identifiersByTaskID3 = [(BCBackgroundTaskAssertion *)self identifiersByTaskID];
      v24 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
      [identifiersByTaskID3 removeObjectForKey:v24];

      taskIDs2 = [(BCBackgroundTaskAssertion *)self taskIDs];
      v26 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
      [taskIDs2 removeObject:v26];

      v19 = +[UIApplication jsa_sharedApplicationIfNotExtension];
      [v19 endBackgroundTask:unsignedIntegerValue];
    }

    else
    {
LABEL_7:
      v19 = BCIMLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1EB014();
      }
    }
  }

  v20 = objc_retainBlock(blockCopy);
  v21 = v20;
  if (v20)
  {
    (*(v20 + 2))(v20);
  }
}

@end