@interface TVRIntentExtensionDeviceManager
+ (id)sharedInstance;
- (TVRIntentExtensionDeviceManager)init;
- (id)_cachedDeviceForIdentifier:(id)identifier;
- (void)_disconnectDeviceWithID:(id)d;
- (void)dealloc;
- (void)device:(id)device disconnectedForReason:(int64_t)reason error:(id)error;
- (void)deviceConnected:(id)connected;
- (void)resolveDeviceWithIdentifier:(id)identifier handler:(id)handler;
@end

@implementation TVRIntentExtensionDeviceManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TVRIntentExtensionDeviceManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __49__TVRIntentExtensionDeviceManager_sharedInstance__block_invoke(id a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(TVRIntentExtensionDeviceManager);

  _objc_release_x1();
}

- (TVRIntentExtensionDeviceManager)init
{
  v11.receiver = self;
  v11.super_class = TVRIntentExtensionDeviceManager;
  v2 = [(TVRIntentExtensionDeviceManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_defaultTimeout = 8.0;
    v4 = objc_alloc_init(NSMutableDictionary);
    attemptedConnectionDict = v3->_attemptedConnectionDict;
    v3->_attemptedConnectionDict = v4;

    v6 = objc_alloc_init(NSMutableSet);
    cachedDevices = v3->_cachedDevices;
    v3->_cachedDevices = v6;

    v8 = [NSMapTable mapTableWithKeyOptions:0x10000 valueOptions:0x10000];
    identifierToHandlerMapping = v3->_identifierToHandlerMapping;
    v3->_identifierToHandlerMapping = v8;
  }

  return v3;
}

- (void)dealloc
{
  v3 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[TVRIntentExtensionDeviceManager dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_cachedDevices;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setDelegate:0];
        [v9 disconnectWithType:0];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10.receiver = self;
  v10.super_class = TVRIntentExtensionDeviceManager;
  [(TVRIntentExtensionDeviceManager *)&v10 dealloc];
}

- (void)resolveDeviceWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (identifierCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __71__TVRIntentExtensionDeviceManager_resolveDeviceWithIdentifier_handler___block_invoke;
    block[3] = &unk_100010578;
    block[4] = self;
    v11 = identifierCopy;
    v12 = handlerCopy;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v8 = TVRCMakeError();
    v9 = _TVRIntentExtensionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [TVRIntentExtensionDeviceManager resolveDeviceWithIdentifier:v8 handler:v9];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v8);
  }
}

void __71__TVRIntentExtensionDeviceManager_resolveDeviceWithIdentifier_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2 && [v2 connectionState] == 2)
  {
    v4 = _TVRIntentExtensionLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v11 = 138543618;
      v12 = v3;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found connected device=%{public}@,  identifier=%{public}@", &v11, 0x16u);
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:"_disconnectDeviceWithID:" object:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) performSelector:"_disconnectDeviceWithID:" withObject:*(a1 + 40) afterDelay:*(*(a1 + 32) + 8)];
  }

  else
  {
    v6 = _TVRIntentExtensionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No existing device with identifier=%{public}@. Starting search for device...", &v11, 0xCu);
    }

    if (v3)
    {
      [*(*(a1 + 32) + 16) removeObject:v3];
    }

    v8 = *(*(a1 + 32) + 32);
    v9 = objc_retainBlock(*(a1 + 48));
    [v8 setObject:v9 forKey:*(a1 + 40)];

    v10 = [[TVRCDevice alloc] initWithDeviceIdentifier:*(a1 + 40)];
    [v10 setDelegate:*(a1 + 32)];
    [v10 connect];
    [*(*(a1 + 32) + 24) setObject:v10 forKey:*(a1 + 40)];
  }
}

- (id)_cachedDeviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_cachedDevices;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 containsIdentifier:{identifierCopy, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_disconnectDeviceWithID:(id)d
{
  dCopy = d;
  v5 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[TVRIntentExtensionDeviceManager _disconnectDeviceWithID:]";
    v17 = 2114;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s, identifier=%{public}@", &v15, 0x16u);
  }

  v6 = [(TVRIntentExtensionDeviceManager *)self _cachedDeviceForIdentifier:dCopy];
  v7 = _TVRIntentExtensionLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = dCopy;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found cached device with identifier=%{public}@,  device=%{public}@. Calling disconnect with type [TVRCDisconnectTypeUserInititated] on the device...", &v15, 0x16u);
    }

    [v6 setDelegate:0];
    [v6 disconnectWithType:0];
    [(NSMutableSet *)self->_cachedDevices removeObject:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(TVRIntentExtensionDeviceManager *)dCopy _disconnectDeviceWithID:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  [(NSMapTable *)self->_identifierToHandlerMapping removeObjectForKey:dCopy];
}

- (void)deviceConnected:(id)connected
{
  connectedCopy = connected;
  v5 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[TVRIntentExtensionDeviceManager deviceConnected:]";
    v20 = 2114;
    v21 = connectedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s, device=%{public}@", &v18, 0x16u);
  }

  identifier = [connectedCopy identifier];
  v7 = [(NSMapTable *)self->_identifierToHandlerMapping objectForKey:identifier];
  [(NSMutableSet *)self->_cachedDevices addObject:connectedCopy];
  attemptedConnectionDict = self->_attemptedConnectionDict;
  identifier2 = [connectedCopy identifier];
  [(NSMutableDictionary *)attemptedConnectionDict removeObjectForKey:identifier2];

  v10 = _TVRIntentExtensionLog();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = connectedCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling handler for device=%{public}@", &v18, 0xCu);
    }

    (v7)[2](v7, connectedCopy, 0);
    [(NSMapTable *)self->_identifierToHandlerMapping removeObjectForKey:identifier];
    [(TVRIntentExtensionDeviceManager *)self performSelector:"_disconnectDeviceWithID:" withObject:identifier afterDelay:self->_defaultTimeout];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(TVRIntentExtensionDeviceManager *)connectedCopy deviceConnected:v11, v12, v13, v14, v15, v16, v17];
    }
  }
}

- (void)device:(id)device disconnectedForReason:(int64_t)reason error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  v10 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315906;
    v26 = "[TVRIntentExtensionDeviceManager device:disconnectedForReason:error:]";
    v27 = 2114;
    v28 = deviceCopy;
    v29 = 2048;
    reasonCopy = reason;
    v31 = 2114;
    v32 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s, device=%{public}@, reason=%ld, error=%{public}@", &v25, 0x2Au);
  }

  identifierToHandlerMapping = self->_identifierToHandlerMapping;
  identifier = [deviceCopy identifier];
  v13 = [(NSMapTable *)identifierToHandlerMapping objectForKey:identifier];

  v14 = _TVRIntentExtensionLog();
  identifier2 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138543618;
      v26 = deviceCopy;
      v27 = 2114;
      v28 = errorCopy;
      _os_log_impl(&_mh_execute_header, identifier2, OS_LOG_TYPE_DEFAULT, "Calling handler for device=%{public}@, error=%{public}@", &v25, 0x16u);
    }

    (v13)[2](v13, 0, errorCopy);
    v16 = self->_identifierToHandlerMapping;
    identifier2 = [deviceCopy identifier];
    [(NSMapTable *)v16 removeObjectForKey:identifier2];
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(TVRIntentExtensionDeviceManager *)deviceCopy deviceConnected:identifier2, v17, v18, v19, v20, v21, v22];
  }

  identifier3 = [deviceCopy identifier];
  v24 = [(TVRIntentExtensionDeviceManager *)self _cachedDeviceForIdentifier:identifier3];

  if (v24)
  {
    [(NSMutableSet *)self->_cachedDevices removeObject:v24];
  }
}

- (void)resolveDeviceWithIdentifier:(uint64_t)a1 handler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[TVRIntentExtensionDeviceManager resolveDeviceWithIdentifier:handler:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid identifier passed into %s, error=%{public}@", &v2, 0x16u);
}

@end