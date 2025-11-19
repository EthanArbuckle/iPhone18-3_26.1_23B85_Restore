@interface _MapDataSubscriptionStateObserverRegistry
- (_MapDataSubscriptionStateObserverRegistry)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _MapDataSubscriptionStateObserverRegistry

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v11 = v10;
  if (off_10192DE80 == a6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1009381B0;
    block[3] = &unk_101661A90;
    block[4] = self;
    v14 = v10;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _MapDataSubscriptionStateObserverRegistry;
    [(_MapDataSubscriptionStateObserverRegistry *)&v12 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
  }
}

- (void)dealloc
{
  v3 = [(NSMutableDictionary *)self->_observing allKeys];
  v4 = [v3 copy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        sub_100937468(self, *(*(&v11 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = _MapDataSubscriptionStateObserverRegistry;
  [(_MapDataSubscriptionStateObserverRegistry *)&v10 dealloc];
}

- (_MapDataSubscriptionStateObserverRegistry)init
{
  v7.receiver = self;
  v7.super_class = _MapDataSubscriptionStateObserverRegistry;
  v2 = [(_MapDataSubscriptionStateObserverRegistry *)&v7 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    observing = v2->_observing;
    v2->_observing = v3;

    v5 = v2;
  }

  return v2;
}

@end