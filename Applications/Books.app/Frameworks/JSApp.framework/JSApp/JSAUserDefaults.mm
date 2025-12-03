@interface JSAUserDefaults
+ (id)getInstance;
- (JSAUserDefaults)init;
- (id)registerOnDefaultsChange:(id)change keysToObserve:(id)observe fromGroup:(BOOL)group;
- (id)valuesForDefaults:(id)defaults fromGroup:(BOOL)group;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setValueForDefaults:(id)defaults forKey:(id)key fromGroup:(BOOL)group;
- (void)unregisterOnDefaultsChangeFromGroup:(BOOL)group;
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

- (id)registerOnDefaultsChange:(id)change keysToObserve:(id)observe fromGroup:(BOOL)group
{
  groupCopy = group;
  changeCopy = change;
  observeCopy = observe;
  v10 = +[JSABridge sharedInstance];
  [v10 debugAssertRunningOnJSAThread];

  v11 = JSALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v27 = "[JSAUserDefaults registerOnDefaultsChange:keysToObserve:fromGroup:]";
    v28 = 2048;
    v29 = [observeCopy count];
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s %lu keys", buf, 0x16u);
  }

  if (groupCopy)
  {
    v12 = +[BUAppGroup books];
    userDefaults = [v12 userDefaults];
  }

  else
  {
    userDefaults = +[NSUserDefaults standardUserDefaults];
  }

  sub_7ED38(self, observeCopy, 1, groupCopy);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_309C;
  v21[3] = &unk_B2190;
  v21[4] = self;
  v22 = changeCopy;
  v23 = userDefaults;
  v14 = v24 = observeCopy;
  v25 = v14;
  v15 = observeCopy;
  v16 = userDefaults;
  v17 = changeCopy;
  os_unfair_lock_lock_with_options();
  sub_309C(v21);
  os_unfair_lock_unlock(&self->_lock);
  v18 = v25;
  v19 = v14;

  return v14;
}

- (void)unregisterOnDefaultsChangeFromGroup:(BOOL)group
{
  groupCopy = group;
  v5 = +[JSABridge sharedInstance];
  [v5 debugAssertRunningOnJSAThread];

  if (groupCopy)
  {
    v6 = +[BUAppGroup books];
    userDefaults = [v6 userDefaults];
  }

  else
  {
    userDefaults = +[NSUserDefaults standardUserDefaults];
  }

  v8 = [(NSMapTable *)self->_defaultsToKeysToObserve objectForKey:userDefaults];
  v9 = v8;
  v10 = &off_C9380;
  if (!groupCopy)
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

        [userDefaults removeObserver:self forKeyPath:*(*(&v19 + 1) + 8 * v15) context:v11];
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
  v18 = userDefaults;
  v16 = userDefaults;
  os_unfair_lock_lock_with_options();
  sub_3378(v17);
  os_unfair_lock_unlock(&self->_lock);
}

- (id)valuesForDefaults:(id)defaults fromGroup:(BOOL)group
{
  groupCopy = group;
  defaultsCopy = defaults;
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
  selfCopy = self;
  v18 = &v20;
  v19 = groupCopy;
  v8 = v14;
  os_unfair_lock_lock_with_options();
  v15(v8);
  os_unfair_lock_unlock(&self->_lock);

  allKeys = [v21[5] allKeys];
  v10 = [allKeys isEqualToArray:defaultsCopy];

  if (v10)
  {
    v11 = v21[5];
  }

  else
  {
    v11 = sub_7ED38(self, defaultsCopy, 0, groupCopy);
  }

  v12 = v11;
  _Block_object_dispose(&v20, 8);

  return v12;
}

- (void)setValueForDefaults:(id)defaults forKey:(id)key fromGroup:(BOOL)group
{
  defaultsCopy = defaults;
  keyCopy = key;
  v8 = +[JSABridge sharedInstance];
  [v8 debugAssertRunningOnJSAThread];

  if ([defaultsCopy isNull])
  {
    if (group)
    {
      v9 = +[BUAppGroup books];
      userDefaults = [v9 userDefaults];
    }

    else
    {
      userDefaults = +[NSUserDefaults standardUserDefaults];
    }

    [userDefaults removeObjectForKey:keyCopy];
  }

  else
  {
    if (group)
    {
      v11 = +[BUAppGroup books];
      userDefaults = [v11 userDefaults];
    }

    else
    {
      userDefaults = +[NSUserDefaults standardUserDefaults];
    }

    toObject = [defaultsCopy toObject];
    [userDefaults setObject:toObject forKey:keyCopy];

    keyCopy = toObject;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_C9388 == context)
  {
    objc_initWeak(&location, self);
    v13 = v26;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_3F48;
    v26[3] = &unk_B2208;
    objc_copyWeak(&v29, &location);
    v27 = pathCopy;
    v28 = changeCopy;
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

  if (off_C9380 == context)
  {
    objc_initWeak(&location, self);
    v13 = v20;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_3FD4;
    v20[3] = &unk_B2208;
    objc_copyWeak(&v23, &location);
    v21 = pathCopy;
    v22 = changeCopy;
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
  [(JSAUserDefaults *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_15:
}

@end