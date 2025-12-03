@interface TVRIntentExtensionDeviceQuery
+ (id)sharedInstance;
- (void)provideDeviceOptionsWithCompletion:(id)completion;
@end

@implementation TVRIntentExtensionDeviceQuery

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[TVRIntentExtensionDeviceQuery sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

void __47__TVRIntentExtensionDeviceQuery_sharedInstance__block_invoke(id a1)
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(TVRIntentExtensionDeviceQuery);

  _objc_release_x1();
}

- (void)provideDeviceOptionsWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __68__TVRIntentExtensionDeviceQuery_provideDeviceOptionsWithCompletion___block_invoke;
  v4[3] = &unk_1000105C0;
  v4[4] = self;
  completionCopy = completion;
  v3 = completionCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

void __68__TVRIntentExtensionDeviceQuery_provideDeviceOptionsWithCompletion___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v2 = _TVRIntentExtensionLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting device query", buf, 2u);
    }

    v3 = objc_alloc_init(TVRCDeviceQuery);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    [*(*(a1 + 32) + 8) start];
  }

  v6 = dispatch_time(0, 3000000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __68__TVRIntentExtensionDeviceQuery_provideDeviceOptionsWithCompletion___block_invoke_2;
  v8[3] = &unk_1000105C0;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  dispatch_after(v6, &_dispatch_main_q, v8);
}

void __68__TVRIntentExtensionDeviceQuery_provideDeviceOptionsWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = a1;
  v3 = [*(*(a1 + 32) + 8) devices];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        if ([v8 connectionType] == 1 && objc_msgSend(v8, "isPaired"))
        {
          v9 = _TVRIntentExtensionLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v28 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found paired device=%{public}@", buf, 0xCu);
          }

          v10 = [TVRDevice alloc];
          v11 = [v8 identifier];
          v12 = [v8 name];
          v13 = [v8 name];
          v14 = [v10 initWithIdentifier:v11 displayString:v12 pronunciationHint:v13];
          [v2 addObject:v14];
        }

        else
        {
          v11 = _TVRIntentExtensionLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v28 = v8;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ignoring since it is not paired or discovered via Rapport, device=%{public}@", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v5);
  }

  [*(*(v22 + 32) + 8) stop];
  v15 = *(v22 + 32);
  v16 = *(v15 + 8);
  *(v15 + 8) = 0;

  v17 = [v2 count];
  v18 = _TVRIntentExtensionLog();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      *buf = 138543362;
      v28 = v2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling device options completion with list=%{public}@", buf, 0xCu);
    }

    v20 = *(v22 + 40);
    v21 = [[INObjectCollection alloc] initWithItems:v2];
    (*(v20 + 16))(v20, v21, 0);
  }

  else
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling device options completion with nil list since no devices were found", buf, 2u);
    }

    (*(*(v22 + 40) + 16))();
  }
}

@end