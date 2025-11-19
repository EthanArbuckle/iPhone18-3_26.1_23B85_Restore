@interface JSAProfileBagManager
+ (id)sharedInstance;
+ (id)valuesFromOfflineCache;
- (JSAProfileBagManager)init;
- (NSDictionary)values;
- (id)cachedValueForKey:(id)a3;
- (void)_bagDidUpdate:(id)a3;
- (void)_saveOfflineCache:(id)a3;
- (void)addKeyEntries:(id)a3;
- (void)dealloc;
- (void)registerOnBagChange:(id)a3;
- (void)resetValuesCache;
- (void)unregisterOnBagChange;
- (void)updateValues;
@end

@implementation JSAProfileBagManager

- (JSAProfileBagManager)init
{
  v19.receiver = self;
  v19.super_class = JSAProfileBagManager;
  v2 = [(JSAProfileBagManager *)&v19 init];
  if (v2)
  {
    if (+[JSAOfflineCache generateCache])
    {
      v3 = +[NSNotificationCenter defaultCenter];
      [v3 addObserver:v2 selector:"_saveOfflineCache:" name:UIApplicationDidEnterBackgroundNotification object:0];
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("JSAProfileBagManager.updateQueue", v5);
    updateQueue = v2->_updateQueue;
    v2->_updateQueue = v6;

    v2->_lock._os_unfair_lock_opaque = 0;
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_bagDidUpdate:" name:AMSBagChangedNotification object:0];

    v9 = +[BUBag defaultBagKeysDictionary];
    v10 = [v9 mutableCopy];
    keyEntries = v2->_keyEntries;
    v2->_keyEntries = v10;

    v12 = +[BUBag defaultBag];
    bag = v2->_bag;
    v2->_bag = v12;

    v14 = v2->_updateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_DF3C;
    block[3] = &unk_B20D8;
    v15 = v2;
    v18 = v15;
    dispatch_async(v14, block);
    sub_DFA8(v15);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = JSAProfileBagManager;
  [(JSAProfileBagManager *)&v4 dealloc];
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E25C;
  block[3] = &unk_B25E8;
  block[4] = a1;
  if (qword_CC0F0 != -1)
  {
    dispatch_once(&qword_CC0F0, block);
  }

  v2 = qword_CC0F8;

  return v2;
}

- (NSDictionary)values
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_E3C0;
  v15 = sub_E3D0;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_E3D8;
  v8 = &unk_B2508;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)updateValues
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "JSAProfileBagManager: updateValues", v4, 2u);
  }

  sub_DFA8(self);
}

- (void)resetValuesCache
{
  v3 = +[BUAccountsProvider sharedProvider];
  v4 = [v3 currentStorefront];

  updateQueue = self->_updateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_E520;
  v7[3] = &unk_B2128;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(updateQueue, v7);
}

- (id)cachedValueForKey:(id)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_E3C0;
  v18 = sub_E3D0;
  v19 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_E7CC;
  v10 = &unk_B2818;
  v13 = &v14;
  v11 = self;
  v4 = a3;
  v12 = v4;
  v5 = v8;
  os_unfair_lock_lock(&self->_lock);
  v9(v5);
  os_unfair_lock_unlock(&self->_lock);

  v6 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v6;
}

- (void)addKeyEntries:(id)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_E97C;
  v10 = &unk_B2840;
  v11 = self;
  v4 = a3;
  v12 = v4;
  v13 = &v14;
  v5 = v8;
  os_unfair_lock_lock(&self->_lock);
  v9(v5);
  os_unfair_lock_unlock(&self->_lock);

  if (*(v15 + 24) == 1)
  {
    v6 = JSALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "JSAProfileBagManager: scheduling to update values as new keys are registered", v7, 2u);
    }

    sub_DFA8(self);
  }

  _Block_object_dispose(&v14, 8);
}

- (void)registerOnBagChange:(id)a3
{
  v4 = a3;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[JSAProfileBagManager registerOnBagChange:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
  }

  v6 = [JSManagedValue managedValueWithValue:v4];

  bagChangeHandler = self->_bagChangeHandler;
  self->_bagChangeHandler = v6;
}

- (void)unregisterOnBagChange
{
  bagChangeHandler = self->_bagChangeHandler;
  self->_bagChangeHandler = 0;
  _objc_release_x1();
}

- (void)_bagDidUpdate:(id)a3
{
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "JSAProfileBagManager: _bagDidUpdate", buf, 2u);
  }

  updateQueue = self->_updateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_ED50;
  block[3] = &unk_B20D8;
  block[4] = self;
  dispatch_sync(updateQueue, block);
  sub_DFA8(self);
}

+ (id)valuesFromOfflineCache
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = +[JSAOfflineCache cacheFileCandidatesForBag];
  v2 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v31;
    v5 = &swift_once_ptr;
    v25 = *v31;
    while (2)
    {
      v6 = 0;
      v26 = v3;
      do
      {
        if (*v31 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * v6);
        v8 = [v5[127] defaultManager];
        v9 = [v8 fileExistsAtPath:v7];

        if (v9)
        {
          v29 = 0;
          v10 = [NSData dataWithContentsOfFile:v7 options:0 error:&v29];
          v11 = v29;
          if (v10)
          {
            v12 = objc_opt_class();
            v13 = objc_opt_class();
            v14 = objc_opt_class();
            v15 = objc_opt_class();
            v16 = objc_opt_class();
            v17 = [NSSet setWithObjects:v12, v13, v14, v15, v16, objc_opt_class(), 0];
            v28 = v11;
            v18 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v17 fromData:v10 error:&v28];
            v19 = v28;

            v20 = JSALog();
            v21 = v20;
            if (v18)
            {
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v35 = v7;
                _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Using offline cache for bag from %{public}@", buf, 0xCu);
              }

              goto LABEL_25;
            }

            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v35 = v7;
              v36 = 2114;
              v37 = v19;
              _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Could not unarchive bag cache at %{public}@ (error): %{public}@", buf, 0x16u);
            }

            v3 = v26;
            v5 = &swift_once_ptr;
            v4 = v25;
          }

          else
          {
            v17 = JSALog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v35 = v7;
              _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Could not read bag cache file from disk: %{public}@", buf, 0xCu);
            }

            v19 = v11;
          }
        }

        v6 = v6 + 1;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v23 = +[JSAOfflineCache cacheFileCandidatesForBag];
  BUReportAssertionFailureWithMessage();

  BUCrashBreakpoint();
  result = BUIsRunningTests();
  if (result)
  {
    v24 = +[JSAOfflineCache cacheFileCandidatesForBag];
    BUCrashFinalThrow();

    obj = JSALog();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      sub_80614(obj);
    }

    v18 = &off_BA730;
LABEL_25:

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)_saveOfflineCache:(id)a3
{
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Saving bag to offline cache", buf, 2u);
  }

  v5 = +[NSFileManager defaultManager];
  v6 = +[JSAOfflineCache cachePath];
  [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

  values = self->_values;
  v16 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:values requiringSecureCoding:1 error:&v16];
  v9 = v16;
  v10 = +[JSAOfflineCache cacheFileCandidatesForBag];
  v11 = [v10 objectAtIndexedSubscript:0];

  if (!v8 || !v11)
  {
    v14 = JSALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_80658(v11, v14);
    }

    v13 = v9;
    goto LABEL_11;
  }

  v15 = v9;
  v12 = [v8 writeToFile:v11 options:1 error:&v15];
  v13 = v15;

  if ((v12 & 1) == 0)
  {
    v14 = JSALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_806D0(v13, v14);
    }

LABEL_11:
  }
}

@end