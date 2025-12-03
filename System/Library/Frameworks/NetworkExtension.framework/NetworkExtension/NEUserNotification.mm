@interface NEUserNotification
+ (BOOL)shouldPromptForLocalAuthentication;
+ (id)createLAContext;
+ (void)cancelCurrentNotificationWithResponse:(unint64_t)response queue:(id)queue completionHandler:(id)handler;
+ (void)executeOnMainLoop:(uint64_t)loop;
+ (void)promptForLocalAuthenticationWithReason:(id)reason completionQueue:(id)queue completionHandler:(id)handler;
- (id)initAndShowAddConfigurationsForApp:(id)app warningHeader:(const char *)header warning:(const char *)warning callbackQueue:(id)queue callbackHandler:(id)handler;
- (id)initAndShowAlertWithHeader:(id)header message:(id)message alternateMessage:(id)alternateMessage defaultMessage:(id)defaultMessage noBoldDefault:(BOOL)default usePrivacyIcon:(BOOL)icon extensionItem:(id)item callbackQueue:(id)self0 callbackHandler:(id)self1;
- (id)initAndShowAuthenticationWithHeader:(id)header options:(id)options flags:(unint64_t)flags callbackQueue:(id)queue callbackHandler:(id)handler;
- (id)initAndShowLocalNetworkAlertWithAppName:(id)name reasonString:(id)string extensionItem:(id)item callbackQueue:(id)queue callbackHandler:(id)handler;
- (uint64_t)postNotificationWithCallbackQueue:(void *)queue callbackHandler:;
- (void)cancel;
@end

@implementation NEUserNotification

- (id)initAndShowLocalNetworkAlertWithAppName:(id)name reasonString:(id)string extensionItem:(id)item callbackQueue:(id)queue callbackHandler:(id)handler
{
  stringCopy = string;
  itemCopy = item;
  handlerCopy = handler;
  queueCopy = queue;
  nameCopy = name;
  v16 = NEResourcesCopyDeviceLocalizedNSString(@"APP_WANTS_LOCAL_NETWORK_HEADER", @"APP_WANTS_LOCAL_NETWORK_HEADER");
  if (stringCopy)
  {
    v17 = stringCopy;
  }

  else
  {
    v17 = NEResourcesCopyDeviceLocalizedNSString(@"APP_WANTS_LOCAL_NETWORK_MESSAGE", @"APP_WANTS_LOCAL_NETWORK_MESSAGE");
  }

  v18 = v17;
  v19 = _os_feature_enabled_impl();
  if (itemCopy && v19)
  {
    v20 = NEResourcesCopyDeviceLocalizedNSString(@"APP_WANTS_LOCAL_NETWORK_DISCOVERED_DEVICES_MESSAGE", @"APP_WANTS_LOCAL_NETWORK_DISCOVERED_DEVICES_MESSAGE");
    if (v20)
    {
      v29 = v16;
      userInfo = [itemCopy userInfo];
      if (userInfo)
      {
        userInfo2 = [itemCopy userInfo];
        dictionary = [userInfo2 mutableCopy];
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      [dictionary setObject:v20 forKey:@"message"];
      [itemCopy setUserInfo:dictionary];

      v16 = v29;
    }
  }

  v24 = NEResourcesCopyDeviceLocalizedNSString(@"ALLOW_BUTTON", @"ALLOW_BUTTON");
  v25 = NEResourcesCopyDeviceLocalizedNSString(@"DONT_ALLOW_BUTTON", @"DONT_ALLOW_BUTTON");
  nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v16, nameCopy];

  v27 = [(NEUserNotification *)self initAndShowAlertWithHeader:nameCopy message:v18 alternateMessage:v25 defaultMessage:v24 noBoldDefault:1 usePrivacyIcon:1 extensionItem:itemCopy callbackQueue:queueCopy callbackHandler:handlerCopy];
  return v27;
}

- (id)initAndShowAddConfigurationsForApp:(id)app warningHeader:(const char *)header warning:(const char *)warning callbackQueue:(id)queue callbackHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  queueCopy = queue;
  appCopy = app;
  objc_opt_self();
  if (!g_UIKitBundle)
  {
    v37 = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v17 = [defaultManager fileExistsAtPath:@"/System/Library/PrivateFrameworks/UIKitCore.framework" isDirectory:&v37];
    v18 = v37;

    if (v17)
    {
      if (v18)
      {
        v19 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/UIKitCore.framework"];
        v20 = g_UIKitBundle;
        g_UIKitBundle = v19;

        if (g_UIKitBundle)
        {
          [g_UIKitBundle load];
          g_UIDeviceClass = [g_UIKitBundle classNamed:@"UIDevice"];
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v39 = "+[NEUserNotification getUIDeviceClass]";
            v40 = 2112;
            v41 = g_UIKitBundle;
            v42 = 2112;
            v43 = g_UIDeviceClass;
            _os_log_debug_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_DEBUG, "%s: bundle %@ class %@", buf, 0x20u);
          }
        }
      }
    }
  }

  currentDevice = [g_UIDeviceClass currentDevice];
  v14 = currentDevice;
  if (currentDevice)
  {
    localizedModel = [currentDevice localizedModel];
  }

  else
  {
    localizedModel = @"Mac";
  }

  v22 = objc_alloc(MEMORY[0x1E696AEC0]);
  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:header];
  v24 = NEResourcesCopyLocalizedNSString(v23, v23);
  appCopy = [v22 initWithFormat:v24, appCopy];

  v26 = objc_alloc(MEMORY[0x1E696AEC0]);
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:warning];
  v28 = NEResourcesCopyLocalizedNSString(v27, v27);
  appCopy2 = [v26 initWithFormat:v28, localizedModel, appCopy];

  v30 = NEResourcesCopyLocalizedNSString(@"DONT_ALLOW_BUTTON", @"DONT_ALLOW_BUTTON");
  v31 = NEResourcesCopyLocalizedNSString(@"ALLOW_BUTTON", @"ALLOW_BUTTON");
  v32 = [(NEUserNotification *)self initAndShowAlertWithHeader:appCopy message:appCopy2 alternateMessage:v31 defaultMessage:v30 noBoldDefault:0 usePrivacyIcon:0 extensionItem:0 callbackQueue:queueCopy callbackHandler:handlerCopy];

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

- (void)cancel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __28__NEUserNotification_cancel__block_invoke;
  v2[3] = &unk_1E7F0B0E8;
  v2[4] = self;
  [NEUserNotification executeOnMainLoop:v2];
}

void __28__NEUserNotification_cancel__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(&g_currentNotificationLock);
  if ([g_currentNotifications containsObject:*(a1 + 32)])
  {
    [g_currentNotifications removeObject:*(a1 + 32)];
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    if (objc_getProperty(v3, v2, 24, 1))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 24, 1);
      }

      v6 = Property;
      Current = CFRunLoopGetCurrent();
      CFRunLoopRemoveSource(Current, v6, *MEMORY[0x1E695E8E0]);
      CFRelease(v6);
      v9 = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_18;
      }

      objc_setProperty_atomic(v9, v8, 0, 24);
    }

    v10 = *(a1 + 32);
    if (!v10)
    {
      goto LABEL_18;
    }

    v12 = objc_getProperty(v10, v4, 16, 1);
    v13 = *(a1 + 32);
    if (!v12)
    {
      goto LABEL_15;
    }

    if (v13)
    {
      v13 = objc_getProperty(v13, v11, 16, 1);
    }

    v14 = v13;
    CFUserNotificationCancel(v14);
    CFRelease(v14);
    v16 = *(a1 + 32);
    if (v16)
    {
      objc_setProperty_atomic(v16, v15, 0, 16);
      v13 = *(a1 + 32);
LABEL_15:
      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v11, 0, 40);
        v18 = *(a1 + 32);
        if (v18)
        {
          objc_setProperty_atomic(v18, v17, 0, 32);
        }
      }
    }
  }

LABEL_18:

  os_unfair_lock_unlock(&g_currentNotificationLock);
}

+ (void)executeOnMainLoop:(uint64_t)loop
{
  v2 = a2;
  objc_opt_self();
  Current = CFRunLoopGetCurrent();
  if (Current == CFRunLoopGetMain())
  {
    v2[2](v2);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__NEUserNotification_executeOnMainLoop___block_invoke;
    block[3] = &unk_1E7F0B600;
    v5 = v2;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }
}

- (id)initAndShowAuthenticationWithHeader:(id)header options:(id)options flags:(unint64_t)flags callbackQueue:(id)queue callbackHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  headerCopy = header;
  optionsCopy = options;
  queueCopy = queue;
  handlerCopy = handler;
  v34.receiver = self;
  v34.super_class = NEUserNotification;
  v16 = [(NEUserNotification *)&v34 init];
  if (!v16)
  {
    goto LABEL_20;
  }

  os_unfair_lock_lock(&g_currentNotificationLock);
  v17 = [g_currentNotifications count];
  v18 = ne_log_obj();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      firstObject = [g_currentNotifications firstObject];
      error = 138412290;
      v36 = firstObject;
      _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "Already have outstanding notification %@, cannot show an additional one", &error, 0xCu);
    }

    os_unfair_lock_unlock(&g_currentNotificationLock);
    goto LABEL_22;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    error = 138412290;
    v36 = v16;
    _os_log_debug_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEBUG, "No outstanding notification, we are now the current notification %@", &error, 0xCu);
  }

  v20 = g_currentNotifications;
  if (!g_currentNotifications)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = g_currentNotifications;
    g_currentNotifications = v21;

    v20 = g_currentNotifications;
  }

  [v20 addObject:v16];
  os_unfair_lock_unlock(&g_currentNotificationLock);
  error = 0;
  objc_setProperty_atomic(v16, v23, 0, 16);
  if (optionsCopy)
  {
    v25 = NEResourcesCopyLocalizedNSString(@"CANCEL_BUTTON", @"CANCEL_BUTTON");
    v26 = *MEMORY[0x1E695E480];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, optionsCopy);
    CFDictionarySetValue(MutableCopy, *MEMORY[0x1E695EE58], headerCopy);
    CFDictionarySetValue(MutableCopy, *MEMORY[0x1E695EE70], v25);
    v29 = CFUserNotificationCreate(v26, 150.0, flags, &error, MutableCopy);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (!v29 || error)
    {
      goto LABEL_21;
    }

    objc_setProperty_atomic(v16, v28, v29, 16);
  }

  if (!objc_getProperty(v16, v24, 16, 1) || ([(NEUserNotification *)v16 postNotificationWithCallbackQueue:queueCopy callbackHandler:handlerCopy]& 1) == 0)
  {
LABEL_21:
    [(NEUserNotification *)v16 cancel];
LABEL_22:
    v30 = 0;
    goto LABEL_23;
  }

LABEL_20:
  v30 = v16;
LABEL_23:

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

- (uint64_t)postNotificationWithCallbackQueue:(void *)queue callbackHandler:
{
  v5 = a2;
  queueCopy = queue;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__NEUserNotification_postNotificationWithCallbackQueue_callbackHandler___block_invoke;
  v13[3] = &unk_1E7F0AAF0;
  v13[4] = self;
  v7 = queueCopy;
  v15 = v7;
  v8 = v5;
  v14 = v8;
  v16 = &v17;
  [NEUserNotification executeOnMainLoop:v13];
  v9 = *(v18 + 24);
  if ((v9 & 1) == 0)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_INFO, "Failed to post new user notification: current notification in progress", v12, 2u);
    }

    v9 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);
  return v9 & 1;
}

void __72__NEUserNotification_postNotificationWithCallbackQueue_callbackHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v28 = *(a1 + 32);
    v29 = 138412290;
    v30 = v28;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "Displaying notification: %@", &v29, 0xCu);
  }

  os_unfair_lock_lock(&g_currentNotificationLock);
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = objc_getProperty(v4, v3, 16, 1);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = v5;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = objc_getProperty(v8, v6, 24, 1);
    if (v9)
    {

LABEL_8:
      os_unfair_lock_unlock(&g_currentNotificationLock);
      goto LABEL_9;
    }

    v11 = *(a1 + 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = [g_currentNotifications containsObject:v11];

  os_unfair_lock_unlock(&g_currentNotificationLock);
  if (v12)
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v13, 16, 1);
    }

    v15 = Property;
    v16 = *(a1 + 32);
    if (v16)
    {
      if (*(v16 + 8))
      {
        v17 = alertCallback;
      }

      else
      {
        v17 = authCallback;
      }
    }

    else
    {
      v17 = authCallback;
    }

    RunLoopSource = CFUserNotificationCreateRunLoopSource(*MEMORY[0x1E695E480], v15, v17, 0);
    v20 = *(a1 + 32);
    if (v20)
    {
      objc_setProperty_atomic(v20, v18, v15, 16);
    }

    if (RunLoopSource)
    {
      v22 = *(a1 + 32);
      if (v22)
      {
        objc_setProperty_nonatomic_copy(v22, v21, *(a1 + 48), 40);
        v24 = *(a1 + 32);
        if (v24)
        {
          objc_setProperty_atomic(v24, v23, *(a1 + 40), 32);
        }
      }

      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x1E695E8E0]);
      v27 = *(a1 + 32);
      if (v27)
      {
        objc_setProperty_atomic(v27, v26, RunLoopSource, 24);
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

LABEL_9:
  v10 = *MEMORY[0x1E69E9840];
}

- (id)initAndShowAlertWithHeader:(id)header message:(id)message alternateMessage:(id)alternateMessage defaultMessage:(id)defaultMessage noBoldDefault:(BOOL)default usePrivacyIcon:(BOOL)icon extensionItem:(id)item callbackQueue:(id)self0 callbackHandler:(id)self1
{
  defaultCopy = default;
  v67 = *MEMORY[0x1E69E9840];
  headerCopy = header;
  messageCopy = message;
  alternateMessageCopy = alternateMessage;
  defaultMessageCopy = defaultMessage;
  itemCopy = item;
  queueCopy = queue;
  handlerCopy = handler;
  v63.receiver = self;
  v63.super_class = NEUserNotification;
  v23 = [(NEUserNotification *)&v63 init];
  if (v23)
  {
    v59 = queueCopy;
    value = headerCopy;
    os_unfair_lock_lock(&g_currentNotificationLock);
    v24 = [g_currentNotifications count];
    v25 = ne_log_obj();
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        firstObject = [g_currentNotifications firstObject];
        *buf = 138412290;
        v66 = *&firstObject;
        _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, "Already have outstanding notification %@, cannot show an additional one", buf, 0xCu);
      }

      os_unfair_lock_unlock(&g_currentNotificationLock);
      goto LABEL_48;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v66 = *&v23;
      _os_log_debug_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_DEBUG, "Adding notification %@", buf, 0xCu);
    }

    v27 = g_currentNotifications;
    if (!g_currentNotifications)
    {
      v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v29 = g_currentNotifications;
      g_currentNotifications = v28;

      v27 = g_currentNotifications;
    }

    [v27 addObject:v23];
    os_unfair_lock_unlock(&g_currentNotificationLock);
    error = 0;
    objc_setProperty_atomic(v23, v30, 0, 16);
    v31 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v34 = Mutable;
      CFDictionarySetValue(Mutable, *MEMORY[0x1E695EE58], value);
      if (messageCopy)
      {
        CFDictionarySetValue(v34, *MEMORY[0x1E695EE60], messageCopy);
      }

      if (alternateMessageCopy)
      {
        CFDictionarySetValue(v34, *MEMORY[0x1E695EE70], alternateMessageCopy);
      }

      if (defaultMessageCopy)
      {
        v35 = MEMORY[0x1E695EE98];
        if (!defaultCopy)
        {
          v35 = MEMORY[0x1E695EE78];
        }

        CFDictionarySetValue(v34, *v35, defaultMessageCopy);
      }

      v58 = defaultCopy;
      if (itemCopy)
      {
        v57 = v31;
        CFDictionarySetValue(v34, @"SBUserNotificationExtensionIdentifier", @"com.apple.corelocation.CoreLocationMapLNPromptPlugin");
        v36 = MEMORY[0x1E696ACC8];
        v64 = itemCopy;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
        v61 = 0;
        v38 = [v36 archivedDataWithRootObject:v37 requiringSecureCoding:1 error:&v61];
        v39 = v61;

        if (v38 || !v39)
        {
          CFDictionarySetValue(v34, @"SBUserNotificationExtensionItems", v38);
          v31 = v57;
        }

        else
        {
          v56 = v39;
          v40 = ne_log_obj();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v66 = *&v56;
            _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, "Failed to encode extension item data, error='%@'", buf, 0xCu);
          }

          v39 = v56;
          v31 = v57;
        }
      }

      if (registerOnce != -1)
      {
        dispatch_once(&registerOnce, &__block_literal_global_24561);
      }

      v41 = *&sMaxDisplayScale;
      v42 = ne_log_obj();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v66 = v41;
        _os_log_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_INFO, "LocalNetwork icon configuration: device scale is %f", buf, 0xCu);
      }

      v43 = NEResourcesCopyNetworkPrivacyiOSIconURL(v41);
      if (v43)
      {
        v44 = v43;
        v45 = ne_log_obj();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = CFURLCopyFileSystemPath(v44, kCFURLPOSIXPathStyle);
          *buf = 138412290;
          v66 = *&v46;
          _os_log_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_INFO, "LocalNetwork icon configuration: icon URL is %@", buf, 0xCu);
        }

        v47 = CFURLCopyFileSystemPath(v44, kCFURLPOSIXPathStyle);
        CFDictionarySetValue(v34, @"SBUserNotificationHeaderImagePath", v47);
        CFRelease(v44);
      }

      if (v58)
      {
        v48 = 35;
      }

      else
      {
        v48 = 1;
      }

      v49 = ne_log_obj();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v66 = *&v34;
        _os_log_impl(&dword_1BA83C000, v49, OS_LOG_TYPE_INFO, "LocalNetwork icon configuration: notification dictionary option %@", buf, 0xCu);
      }

      v50 = CFUserNotificationCreate(v31, 0.0, v48, &error, v34);
      CFRelease(v34);
      if (!v50 || error)
      {
        goto LABEL_47;
      }

      objc_setProperty_atomic(v23, v51, v50, 16);
    }

    if (objc_getProperty(v23, v33, 16, 1))
    {
      v23->_isAlert = 1;
      queueCopy = v59;
      if (([(NEUserNotification *)v23 postNotificationWithCallbackQueue:v59 callbackHandler:handlerCopy]& 1) == 0)
      {
        [(NEUserNotification *)v23 cancel];
        v52 = 0;
        headerCopy = value;
        goto LABEL_49;
      }

      headerCopy = value;
      goto LABEL_46;
    }

LABEL_47:
    [(NEUserNotification *)v23 cancel];
LABEL_48:
    v52 = 0;
    queueCopy = v59;
    headerCopy = value;
    goto LABEL_49;
  }

LABEL_46:
  v52 = v23;
LABEL_49:

  v53 = *MEMORY[0x1E69E9840];
  return v52;
}

+ (void)promptForLocalAuthenticationWithReason:(id)reason completionQueue:(id)queue completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  queueCopy = queue;
  handlerCopy = handler;
  v10 = +[NEUserNotification createLAContext];
  v11 = v10;
  if (v10)
  {
    v23 = 0;
    v12 = [v10 canEvaluatePolicy:2 error:&v23];
    v13 = v23;
    if (v12)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __95__NEUserNotification_promptForLocalAuthenticationWithReason_completionQueue_completionHandler___block_invoke_2;
      v20[3] = &unk_1E7F0AB68;
      v21 = queueCopy;
      v22 = handlerCopy;
      [v11 evaluatePolicy:2 localizedReason:reasonCopy reply:v20];

      v14 = v21;
    }

    else
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v13;
        _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "Device cannot evaluate Local Authentication: %@", buf, 0xCu);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __95__NEUserNotification_promptForLocalAuthenticationWithReason_completionQueue_completionHandler___block_invoke_49;
      v18[3] = &unk_1E7F0B600;
      v19 = handlerCopy;
      dispatch_async(queueCopy, v18);
      v14 = v19;
    }
  }

  else
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Failed to create the LocalAuthentication context", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__NEUserNotification_promptForLocalAuthenticationWithReason_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_1E7F0B600;
    v25 = handlerCopy;
    dispatch_async(queueCopy, block);
    v13 = v25;
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (id)createLAContext
{
  v16 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!g_LABundle)
  {
    v9 = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [defaultManager fileExistsAtPath:@"/System/Library/Frameworks/LocalAuthentication.framework" isDirectory:&v9];
    v5 = v9;

    if (v4)
    {
      if (v5)
      {
        v6 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/Frameworks/LocalAuthentication.framework"];
        v7 = g_LABundle;
        g_LABundle = v6;

        if (g_LABundle)
        {
          [g_LABundle load];
          g_LAContextClass = [g_LABundle classNamed:@"LAContext"];
          v8 = ne_log_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v11 = "+[NEUserNotification createLAContext]";
            v12 = 2112;
            v13 = g_LABundle;
            v14 = 2112;
            v15 = g_LAContextClass;
            _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "%s: bundle %@ class %@", buf, 0x20u);
          }
        }
      }
    }
  }

  v0 = objc_alloc_init(g_LAContextClass);
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void __95__NEUserNotification_promptForLocalAuthenticationWithReason_completionQueue_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = ne_log_obj();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "User successfully passed Local Authentication", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "User failed Local Authentication, error = %@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__NEUserNotification_promptForLocalAuthenticationWithReason_completionQueue_completionHandler___block_invoke_47;
  v10[3] = &unk_1E7F0AB40;
  v8 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a2;
  dispatch_async(v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldPromptForLocalAuthentication
{
  v2 = +[NEUserNotification createLAContext];
  v8 = 0;
  v3 = [v2 canEvaluatePolicy:2 error:&v8];
  v4 = v8;
  v5 = v4;
  v6 = (v3 & 1) != 0 || !v4 || [v4 code] != -5;

  return v6;
}

+ (void)cancelCurrentNotificationWithResponse:(unint64_t)response queue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__NEUserNotification_cancelCurrentNotificationWithResponse_queue_completionHandler___block_invoke;
  v11[3] = &unk_1E7F0AB90;
  v13 = handlerCopy;
  responseCopy = response;
  v12 = queueCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  [NEUserNotification executeOnMainLoop:v11];
}

void __84__NEUserNotification_cancelCurrentNotificationWithResponse_queue_completionHandler___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(&g_currentNotificationLock);
  v2 = [g_currentNotifications firstObject];
  os_unfair_lock_unlock(&g_currentNotificationLock);
  if (v2)
  {
    v4 = objc_getProperty(v2, v3, 32, 1);
    v5 = v2[5];
    [v2 cancel];
    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __84__NEUserNotification_cancelCurrentNotificationWithResponse_queue_completionHandler___block_invoke_2;
      v9[3] = &unk_1E7F0AB18;
      v7 = v5;
      v8 = *(a1 + 48);
      v10 = v7;
      v11 = v8;
      dispatch_async(v4, v9);
    }
  }

  dispatch_async(*(a1 + 32), *(a1 + 40));
}

@end