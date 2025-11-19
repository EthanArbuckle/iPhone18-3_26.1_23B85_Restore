@interface BCBackgroundTaskAssertion
+ (BCBackgroundTaskAssertion)sharedAssertion;
- (id)_init;
- (void)_claimAssertionForIdentifier:(id)a3 description:(id)a4 signalBlock:(id)a5;
- (void)_releaseAssertionForIdentifier:(id)a3 signalBlock:(id)a4;
- (void)_releaseAssertionForTaskID:(unint64_t)a3;
- (void)dealloc;
- (void)dq_claimAssertionForIdentifier:(id)a3 description:(id)a4 signalBlock:(id)a5;
- (void)dq_releaseAssertionForIdentifier:(id)a3 signalBlock:(id)a4;
- (void)dq_releaseAssertionForTaskID:(unint64_t)a3;
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

- (void)_claimAssertionForIdentifier:(id)a3 description:(id)a4 signalBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1376B8;
    block[3] = &unk_2C8768;
    objc_copyWeak(&v19, &location);
    v16 = v8;
    v17 = v9;
    v18 = v10;
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

    v13 = objc_retainBlock(v10);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

- (void)_releaseAssertionForIdentifier:(id)a3 signalBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_137850;
    v12[3] = &unk_2C8EC0;
    objc_copyWeak(&v15, &location);
    v13 = v6;
    v14 = v7;
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

    v10 = objc_retainBlock(v7);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

- (void)_releaseAssertionForTaskID:(unint64_t)a3
{
  if (UIBackgroundTaskInvalid != a3)
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
    v9[1] = a3;
    dispatch_async(queue, block);
    objc_destroyWeak(v9);
    objc_destroyWeak(v10);
  }
}

- (void)dq_claimAssertionForIdentifier:(id)a3 description:(id)a4 signalBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BCBackgroundTaskAssertion *)self queue];
  dispatch_assert_queue_V2(v11);

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v12 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_137C58;
  v23[3] = &unk_2C8838;
  v13 = v8;
  v24 = v13;
  v25 = self;
  v26 = &v27;
  v14 = [v12 beginBackgroundTaskWithName:v9 expirationHandler:v23];

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
    v36 = v9;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Background task assertion %lu taken for identifier %@ and description %@", buf, 0x20u);
  }

  v17 = [(BCBackgroundTaskAssertion *)self taskIDs];
  v18 = [NSNumber numberWithUnsignedInteger:v28[3]];
  [v17 addObject:v18];

  v19 = [(BCBackgroundTaskAssertion *)self identifiersByTaskID];
  v20 = [NSNumber numberWithUnsignedInteger:v28[3]];
  [v19 setObject:v13 forKeyedSubscript:v20];

  v21 = objc_retainBlock(v10);
  v22 = v21;
  if (v21)
  {
    (*(v21 + 2))(v21);
  }

  _Block_object_dispose(&v27, 8);
}

- (void)dq_releaseAssertionForTaskID:(unint64_t)a3
{
  v5 = [(BCBackgroundTaskAssertion *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = BCIMLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(BCBackgroundTaskAssertion *)self identifiersByTaskID];
    v8 = [NSNumber numberWithUnsignedInteger:a3];
    v9 = [v7 objectForKeyedSubscript:v8];
    v15 = 134218242;
    v16 = a3;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Releasing background task assertion %lu for identifier %@.", &v15, 0x16u);
  }

  v10 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  [v10 endBackgroundTask:a3];

  v11 = [(BCBackgroundTaskAssertion *)self taskIDs];
  v12 = [NSNumber numberWithUnsignedInteger:a3];
  [v11 removeObject:v12];

  v13 = [(BCBackgroundTaskAssertion *)self identifiersByTaskID];
  v14 = [NSNumber numberWithUnsignedInteger:a3];
  [v13 removeObjectForKey:v14];
}

- (void)dq_releaseAssertionForIdentifier:(id)a3 signalBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCBackgroundTaskAssertion *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(BCBackgroundTaskAssertion *)self identifiersByTaskID];
  v10 = [v9 allValues];
  v11 = [v10 containsObject:v6];

  if (v11)
  {
    v12 = [(BCBackgroundTaskAssertion *)self taskIDs];
    v13 = [v12 objectEnumerator];

    v14 = [v13 nextObject];
    if (!v14)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v15 = [(BCBackgroundTaskAssertion *)self identifiersByTaskID];
      v16 = [v15 objectForKeyedSubscript:v14];

      if ([v6 isEqualToString:v16])
      {
        break;
      }

      v17 = [v13 nextObject];

      v14 = v17;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    v18 = [v14 unsignedIntegerValue];

    if (v18 != UIBackgroundTaskInvalid)
    {
      v22 = BCIMLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v27 = 134218242;
        v28 = v18;
        v29 = 2112;
        v30 = v6;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Releasing background task assertion %lu for identifier %@.", &v27, 0x16u);
      }

      v23 = [(BCBackgroundTaskAssertion *)self identifiersByTaskID];
      v24 = [NSNumber numberWithUnsignedInteger:v18];
      [v23 removeObjectForKey:v24];

      v25 = [(BCBackgroundTaskAssertion *)self taskIDs];
      v26 = [NSNumber numberWithUnsignedInteger:v18];
      [v25 removeObject:v26];

      v19 = +[UIApplication jsa_sharedApplicationIfNotExtension];
      [v19 endBackgroundTask:v18];
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

  v20 = objc_retainBlock(v7);
  v21 = v20;
  if (v20)
  {
    (*(v20 + 2))(v20);
  }
}

@end