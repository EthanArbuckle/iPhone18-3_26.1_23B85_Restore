@interface JSAUserDefaults
+ (id)getInstance;
- (JSAUserDefaults)init;
- (id)registerOnDefaultsChange:(id)a3 keysToObserve:(id)a4 fromGroup:(BOOL)a5;
- (id)valuesForDefaults:(id)a3 fromGroup:(BOOL)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setValueForDefaults:(id)a3 forKey:(id)a4 fromGroup:(BOOL)a5;
- (void)unregisterOnDefaultsChangeFromGroup:(BOOL)a3;
@end

@implementation JSAUserDefaults

- (JSAUserDefaults)init
{
  v10.receiver = self;
  v10.super_class = JSAUserDefaults;
  v2 = [(JSAUserDefaults *)&v10 init];
  if (v2)
  {
    v3 = +[NSMapTable weakToStrongObjectsMapTable];
    defaultsToCallback = v2->_defaultsToCallback;
    v2->_defaultsToCallback = v3;

    v5 = +[NSMapTable weakToStrongObjectsMapTable];
    defaultsToKeysToObserve = v2->_defaultsToKeysToObserve;
    v2->_defaultsToKeysToObserve = v5;

    v7 = +[NSMapTable weakToStrongObjectsMapTable];
    defaultsToCachedValues = v2->_defaultsToCachedValues;
    v2->_defaultsToCachedValues = v7;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (id)getInstance
{
  if (qword_CC040 != -1)
  {
    sub_7EF50();
  }

  v3 = qword_CC048;

  return v3;
}

- (id)registerOnDefaultsChange:(id)a3 keysToObserve:(id)a4 fromGroup:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = +[JSABridge sharedInstance];
  [v10 debugAssertRunningOnJSAThread];

  v11 = JSALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v27 = "[JSAUserDefaults registerOnDefaultsChange:keysToObserve:fromGroup:]";
    v28 = 2048;
    v29 = [v9 count];
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s %lu keys", buf, 0x16u);
  }

  if (v5)
  {
    v12 = +[BUAppGroup books];
    v13 = [v12 userDefaults];
  }

  else
  {
    v13 = +[NSUserDefaults standardUserDefaults];
  }

  sub_7ED38(self, v9, 1, v5);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_309C;
  v21[3] = &unk_B2190;
  v21[4] = self;
  v22 = v8;
  v23 = v13;
  v14 = v24 = v9;
  v25 = v14;
  v15 = v9;
  v16 = v13;
  v17 = v8;
  os_unfair_lock_lock_with_options();
  sub_309C(v21);
  os_unfair_lock_unlock(&self->_lock);
  v18 = v25;
  v19 = v14;

  return v14;
}

- (void)unregisterOnDefaultsChangeFromGroup:(BOOL)a3
{
  v3 = a3;
  v5 = +[JSABridge sharedInstance];
  [v5 debugAssertRunningOnJSAThread];

  if (v3)
  {
    v6 = +[BUAppGroup books];
    v7 = [v6 userDefaults];
  }

  else
  {
    v7 = +[NSUserDefaults standardUserDefaults];
  }

  v8 = [(NSMapTable *)self->_defaultsToKeysToObserve objectForKey:v7];
  v9 = v8;
  v10 = &off_C9380;
  if (!v3)
  {
    v10 = &off_C9388;
  }

  v11 = *v10;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v9);
        }

        [v7 removeObserver:self forKeyPath:*(*(&v19 + 1) + 8 * v15) context:v11];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_3378;
  v17[3] = &unk_B2128;
  v17[4] = self;
  v18 = v7;
  v16 = v7;
  os_unfair_lock_lock_with_options();
  sub_3378(v17);
  os_unfair_lock_unlock(&self->_lock);
}

- (id)valuesForDefaults:(id)a3 fromGroup:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[JSABridge sharedInstance];
  [v7 debugAssertRunningOnJSAThread];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_3574;
  v24 = sub_3584;
  v25 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_358C;
  v16 = &unk_B21B8;
  v17 = self;
  v18 = &v20;
  v19 = v4;
  v8 = v14;
  os_unfair_lock_lock_with_options();
  v15(v8);
  os_unfair_lock_unlock(&self->_lock);

  v9 = [v21[5] allKeys];
  v10 = [v9 isEqualToArray:v6];

  if (v10)
  {
    v11 = v21[5];
  }

  else
  {
    v11 = sub_7ED38(self, v6, 0, v4);
  }

  v12 = v11;
  _Block_object_dispose(&v20, 8);

  return v12;
}

- (void)setValueForDefaults:(id)a3 forKey:(id)a4 fromGroup:(BOOL)a5
{
  v13 = a3;
  v7 = a4;
  v8 = +[JSABridge sharedInstance];
  [v8 debugAssertRunningOnJSAThread];

  if ([v13 isNull])
  {
    if (a5)
    {
      v9 = +[BUAppGroup books];
      v10 = [v9 userDefaults];
    }

    else
    {
      v10 = +[NSUserDefaults standardUserDefaults];
    }

    [v10 removeObjectForKey:v7];
  }

  else
  {
    if (a5)
    {
      v11 = +[BUAppGroup books];
      v10 = [v11 userDefaults];
    }

    else
    {
      v10 = +[NSUserDefaults standardUserDefaults];
    }

    v12 = [v13 toObject];
    [v10 setObject:v12 forKey:v7];

    v7 = v12;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_C9388 == a6)
  {
    objc_initWeak(&location, self);
    v13 = v26;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_3F48;
    v26[3] = &unk_B2208;
    objc_copyWeak(&v29, &location);
    v27 = v10;
    v28 = v12;
    v14 = objc_retainBlock(v26);
    if (v14)
    {
      if (+[NSThread isMainThread])
      {
        (v14[2])(v14);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_3FC4;
        block[3] = &unk_B2100;
        v25 = v14;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    v16 = v27;
    goto LABEL_14;
  }

  if (off_C9380 == a6)
  {
    objc_initWeak(&location, self);
    v13 = v20;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_3FD4;
    v20[3] = &unk_B2208;
    objc_copyWeak(&v23, &location);
    v21 = v10;
    v22 = v12;
    v15 = objc_retainBlock(v20);
    if (v15)
    {
      if (+[NSThread isMainThread])
      {
        (v15[2])(v15);
      }

      else
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_4050;
        v18[3] = &unk_B2100;
        v19 = v15;
        dispatch_async(&_dispatch_main_q, v18);
      }
    }

    v16 = v21;
LABEL_14:

    objc_destroyWeak(v13 + 6);
    objc_destroyWeak(&location);
    goto LABEL_15;
  }

  v17.receiver = self;
  v17.super_class = JSAUserDefaults;
  [(JSAUserDefaults *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_15:
}

@end