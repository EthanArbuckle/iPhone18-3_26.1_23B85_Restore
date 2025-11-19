@interface MapsTokenStorage
- (BOOL)_callbackQueueIsMainQueue;
- (MapsTokenStorage)initWithDelegate:(id)a3 tokenGroupName:(id)a4;
- (MapsTokenStorage)initWithDelegate:(id)a3 tokenGroupName:(id)a4 callbackQueue:(id)a5;
- (NSArray)allTokenReasons;
- (NSArray)tokens;
- (id)tokenWithReason:(id)a3;
- (id)tokenWithUserInfo:(id)a3;
- (unint64_t)count;
- (void)_performBlockOnCallbackQueue:(id)a3;
- (void)addToken:(id)a3;
- (void)notifyObserversAddedToken:(id)a3;
- (void)notifyObserversForRemovedToken:(id)a3;
- (void)registerObserver:(id)a3;
- (void)removeToken:(id)a3;
- (void)setObserverCallbackQueue:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation MapsTokenStorage

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001158C;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_callbackQueueIsMainQueue
{
  if (!self->_checkedCallbackQueue)
  {
    callbackQueue = self->_callbackQueue;
    if (callbackQueue)
    {
      label = dispatch_queue_get_label(callbackQueue);
      v5 = dispatch_queue_get_label(&_dispatch_main_q);
      if (label == v5 || label && v5 && !strcmp(label, v5))
      {
        self->_callbackQueueIsMainQueue = 1;
      }
    }

    self->_checkedCallbackQueue = 1;
  }

  return self->_callbackQueueIsMainQueue;
}

- (NSArray)allTokenReasons
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100FB5634;
  v10 = sub_100FB5644;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004FF58;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_performBlockOnCallbackQueue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (!self->_callbackQueue)
    {
LABEL_8:
      v4[2](v4);
      goto LABEL_16;
    }

    if ([(MapsTokenStorage *)self _callbackQueueIsMainQueue]&& +[NSThread isMainThread])
    {
      v5 = sub_10000B170();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        label = dispatch_queue_get_label(self->_callbackQueue);
        *buf = 136446210;
        v19 = label;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ON MAIN THREAD %{public}s:", buf, 0xCu);
      }

      goto LABEL_8;
    }

    callbackQueue = self->_callbackQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v14 = sub_100FB525C;
    v15 = &unk_101661090;
    v16 = self;
    v17 = v4;
    v8 = callbackQueue;
    v9 = v13;
    v10 = dispatch_queue_get_label(v8);
    v11 = dispatch_queue_get_label(0);
    if (v10 == v11 || v10 && v11 && !strcmp(v10, v11))
    {
      v12 = objc_autoreleasePoolPush();
      v14(v9);
      objc_autoreleasePoolPop(v12);
    }

    else
    {
      dispatch_sync(v8, v9);
    }
  }

LABEL_16:
}

- (void)setObserverCallbackQueue:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_callbackQueue, a3);
  v6 = sub_10000B170();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      tokenGroupName = self->_tokenGroupName;
      v13 = 138543618;
      v14 = tokenGroupName;
      v15 = 2114;
      v16 = v5;
      v9 = "Updated callback queue for %{public}@: %{public}@";
      v10 = v6;
      v11 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, &v13, v11);
    }
  }

  else if (v7)
  {
    v12 = self->_tokenGroupName;
    v13 = 138543362;
    v14 = v12;
    v9 = "Removing custom callback queue for %{public}@";
    v10 = v6;
    v11 = 12;
    goto LABEL_6;
  }
}

- (void)notifyObserversForRemovedToken:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100FB5634;
  v17 = sub_100FB5644;
  v18 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FB564C;
  block[3] = &unk_101661600;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(isolationQueue, block);
  v6 = sub_10000B170();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v14[5] count];
    *buf = 134218242;
    v20 = v7;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "NOTIFY %lu observers DID REMOVE %{public}@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100FB569C;
  v9[3] = &unk_101661600;
  v11 = &v13;
  v8 = v4;
  v10 = v8;
  [(MapsTokenStorage *)self _performBlockOnCallbackQueue:v9];

  _Block_object_dispose(&v13, 8);
}

- (void)notifyObserversAddedToken:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100FB5634;
  v17 = sub_100FB5644;
  v18 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FB5AFC;
  block[3] = &unk_101661600;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(isolationQueue, block);
  v6 = sub_10000B170();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v14[5] count];
    *buf = 134218242;
    v20 = v7;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "NOTIFY %lu observers DID ADD %{public}@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100FB5B4C;
  v9[3] = &unk_101661600;
  v11 = &v13;
  v8 = v4;
  v10 = v8;
  [(MapsTokenStorage *)self _performBlockOnCallbackQueue:v9];

  _Block_object_dispose(&v13, 8);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = sub_10000B170();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v4;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    tokenGroupName = self->_tokenGroupName;
    *buf = 138543618;
    v18 = v11;
    v19 = 2114;
    v20 = tokenGroupName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "UNREGISTER %{public}@ for %{public}@", buf, 0x16u);
  }

  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FB5FB4;
  block[3] = &unk_101661A90;
  block[4] = self;
  v16 = v4;
  v14 = v4;
  dispatch_sync(isolationQueue, block);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = sub_10000B170();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v4;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    tokenGroupName = self->_tokenGroupName;
    *buf = 138543618;
    v18 = v11;
    v19 = 2114;
    v20 = tokenGroupName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "REGISTER %{public}@ for %{public}@", buf, 0x16u);
  }

  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FB6220;
  block[3] = &unk_101661A90;
  block[4] = self;
  v16 = v4;
  v14 = v4;
  dispatch_sync(isolationQueue, block);
}

- (NSArray)tokens
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100FB5634;
  v10 = sub_100FB5644;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100FB6364;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)removeToken:(id)a3
{
  v4 = a3;
  v5 = sub_10000B170();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "REMOVE %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v12 = 0x2020000000;
  v13 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FB65B4;
  block[3] = &unk_101660778;
  block[4] = self;
  v7 = v4;
  v9 = v7;
  p_buf = &buf;
  dispatch_sync(isolationQueue, block);
  if (*(*(&buf + 1) + 24) == 1)
  {
    [(MapsTokenStorage *)self notifyObserversForRemovedToken:v7];
  }

  _Block_object_dispose(&buf, 8);
}

- (void)addToken:(id)a3
{
  v4 = a3;
  v5 = sub_10000B170();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ADD %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v13 = 0x2020000000;
  v14 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FB68E0;
  block[3] = &unk_101660778;
  v7 = v4;
  v9 = v7;
  v10 = self;
  p_buf = &buf;
  dispatch_sync(isolationQueue, block);
  if (*(*(&buf + 1) + 24) == 1)
  {
    [(MapsTokenStorage *)self notifyObserversAddedToken:v7];
  }

  _Block_object_dispose(&buf, 8);
}

- (id)tokenWithReason:(id)a3
{
  v4 = a3;
  v5 = [[MapsToken alloc] initWithDelegate:self tokenGroupName:self->_tokenGroupName reason:v4];

  return v5;
}

- (id)tokenWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = [[MapsToken alloc] initWithDelegate:self tokenGroupName:self->_tokenGroupName userInfo:v4];

  return v5;
}

- (MapsTokenStorage)initWithDelegate:(id)a3 tokenGroupName:(id)a4 callbackQueue:(id)a5
{
  v8 = a5;
  v9 = [(MapsTokenStorage *)self initWithDelegate:a3 tokenGroupName:a4];
  v10 = v9;
  if (v9)
  {
    [(MapsTokenStorage *)v9 setObserverCallbackQueue:v8];
  }

  return v10;
}

- (MapsTokenStorage)initWithDelegate:(id)a3 tokenGroupName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = MapsTokenStorage;
  v8 = [(MapsTokenStorage *)&v28 init];
  if (v8)
  {
    v9 = sub_10000B170();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      v16 = [v7 copy];
      tokenGroupName = v8->_tokenGroupName;
      v8->_tokenGroupName = v16;

      v18 = +[NSHashTable weakObjectsHashTable];
      observers = v8->_observers;
      v8->_observers = v18;

      [(NSHashTable *)v8->_observers addObject:v6];
      v20 = [NSString stringWithFormat:@"com.apple.Maps.Tokens.%@", v7];
      v21 = [v20 UTF8String];
      v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v23 = dispatch_queue_create(v21, v22);
      isolationQueue = v8->_isolationQueue;
      v8->_isolationQueue = v23;

      v25 = +[NSHashTable weakObjectsHashTable];
      tokens = v8->_tokens;
      v8->_tokens = v25;

      goto LABEL_13;
    }

    v10 = v6;
    if (!v10)
    {
      v15 = @"<nil>";
      goto LABEL_11;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_9;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_9:

LABEL_11:
    *buf = 138543618;
    v30 = v7;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "CREATE %{public}@ storage for %{public}@", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:

  return v8;
}

@end