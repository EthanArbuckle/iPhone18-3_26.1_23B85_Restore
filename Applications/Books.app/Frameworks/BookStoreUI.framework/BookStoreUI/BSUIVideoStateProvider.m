@interface BSUIVideoStateProvider
+ (id)sharedInstance;
- (BOOL)captionsEnabled;
- (BSUIVideoStateProvider)init;
- (void)addWeakObserver:(id)a3;
- (void)manager:(id)a3 didSetCaptions:(BOOL)a4;
@end

@implementation BSUIVideoStateProvider

- (BSUIVideoStateProvider)init
{
  v8.receiver = self;
  v8.super_class = BSUIVideoStateProvider;
  v2 = [(BSUIVideoStateProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    weakObservers = v2->_weakObservers;
    v2->_weakObservers = v3;

    v2->_observerAccessLock._os_unfair_lock_opaque = 0;
    v5 = +[BSUITemplate manager];
    v6 = [v5 videoPlayerManager];
    [v6 addObserver:v2];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_3CA768 != -1)
  {
    sub_2BD5C4();
  }

  v3 = qword_3CA760;

  return v3;
}

- (BOOL)captionsEnabled
{
  v2 = +[BSUITemplate manager];
  v3 = [v2 videoPlayerManager];
  v4 = [v3 captionsEnabledForActivePlayer];

  return v4;
}

- (void)addWeakObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observerAccessLock);
  v5 = [(BSUIVideoStateProvider *)self weakObservers];
  v6 = [JSManagedValue managedValueWithValue:v4];

  [v5 addObject:v6];

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

- (void)manager:(id)a3 didSetCaptions:(BOOL)a4
{
  v4 = a4;
  os_unfair_lock_lock(&self->_observerAccessLock);
  v6 = [(BSUIVideoStateProvider *)self weakObservers];
  v7 = [v6 copy];

  os_unfair_lock_unlock(&self->_observerAccessLock);
  v24 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v12 value];
        if (v13)
        {
          v14 = +[JSABridge sharedInstance];
          v15 = [NSNumber numberWithBool:v4];
          v35 = v15;
          v16 = [NSArray arrayWithObjects:&v35 count:1];
          [v14 enqueueValueCall:v13 arguments:v16 file:@"BSUIVideoStateProvider.m" line:76];
        }

        else
        {
          [v24 addObject:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v24;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        os_unfair_lock_lock(&self->_observerAccessLock);
        v23 = [(BSUIVideoStateProvider *)self weakObservers];
        [v23 removeObject:v22];

        os_unfair_lock_unlock(&self->_observerAccessLock);
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }
}

@end