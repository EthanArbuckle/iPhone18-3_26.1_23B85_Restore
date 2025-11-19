@interface SPRemoteInterface
+ (id)_remoteIdentifier;
+ (id)controller:(id)a3 setupProperties:(id)a4 viewControllerID:(id)a5 tableIndex:(int64_t)a6 rowIndex:(int64_t)a7 classForType:(void *)a8;
+ (id)startRemoteInterface;
+ (id)startRemoteInterfaceWithBundle:(id)a3;
+ (void)_logDuplicate:(id)a3 controller:(id)a4 key:(id)a5 property:(id)a6 value:(id)a7;
+ (void)_setupStorageForController:(id)a3;
+ (void)_updateAccessibility;
+ (void)clearStorageForController:(id)a3;
+ (void)controller:(id)a3 presentAddPassesControllerWithPasses:(id)a4 completion:(id)a5;
+ (void)controller:(id)a3 presentInterfaceController:(id)a4 context:(id)a5;
+ (void)controller:(id)a3 presentInterfaceControllers:(id)a4 contexts:(id)a5;
+ (void)controller:(id)a3 presentTextInputControllerWithSuggestions:(id)a4 allowedInputMode:(id)a5 completion:(id)a6;
+ (void)controller:(id)a3 presentTextInputControllerWithSuggestionsForLanguage:(id)a4 allowedInputMode:(id)a5 completion:(id)a6;
+ (void)controller:(id)a3 pushInterfaceController:(id)a4 context:(id)a5;
+ (void)insertPageControllerAtIndexes:(id)a3 withNames:(id)a4 contexts:(id)a5;
+ (void)reloadRootControllersWithNames:(id)a3 contexts:(id)a4;
+ (void)sendCacheRequest:(id)a3;
+ (void)setController:(id)a3 key:(id)a4 property:(id)a5 value:(id)a6;
+ (void)setControllerActive:(id)a3;
+ (void)setControllerInactive:(id)a3;
- (BOOL)_handleAction:(id)a3 forNotification:(id)a4 remoteNotificationContext:(id)a5 localNotification:(id)a6 unNotification:(id)a7 handler:(id)a8 controller:(id)a9;
- (BOOL)_sendDataToApp:(id)a3 reply:(id)a4;
- (SPRemoteInterface)initWithBundle:(id)a3;
- (id)_allInterfaceControllers;
- (id)_host;
- (id)_interfaceControllerClientIDForControllerID:(id)a3;
- (id)_interfaceControllerID:(id)a3;
- (id)_interfaceControllerIDsForClientID:(id)a3;
- (id)_interfaceControllerWithID:(id)a3;
- (id)_setupSignal:(int)a3 handler:(id)a4;
- (id)controllerMethods:(id)a3;
- (id)interfaceCreationContextForID:(id)a3;
- (id)pageInterfaceCreationContextForID:(id)a3;
- (id)storeInterfaceCreationContext:(id)a3;
- (id)storePageInterfaceCreationContext:(id)a3;
- (void)_activateViewController:(id)a3 clientIdentifier:(id)a4;
- (void)_deregisterInterfaceControllerID:(id)a3;
- (void)_dumpInterfaceDictionary;
- (void)_fillDataWithRandom:(id)a3 length:(int64_t)a4;
- (void)_inQueue_recoverFromMissingIntefaceControllerWithID:(id)a3;
- (void)_interfaceControllerWithID:(id)a3 performBlock:(id)a4;
- (void)_performAfterSendSetViewControllers:(id)a3;
- (void)_registerInterfaceController:(id)a3 interfaceControllerID:(id)a4 interfaceControllerClientID:(id)a5 applicationRootController:(BOOL)a6;
- (void)_requestTimingData:(id)a3;
- (void)_setupSignalHandlers;
- (void)_tellApplicationThatInterfaceControllerCantBeFound:(id)a3;
- (void)activateViewController:(id)a3 clientIdentifier:(id)a4;
- (void)applicationContentsDidReset:(id)a3;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidFinishConnecting:(id)a3;
- (void)applicationDidReceiveNotification:(id)a3 clientIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)applicationDidTerminate:(id)a3;
- (void)applicationHandleWatchTaskKeys:(id)a3 reasonForSnapshot:(unint64_t)a4 visibleVCID:(id)a5 barTaskUUID:(id)a6 clientIdentifier:(id)a7;
- (void)applicationIsStillActive;
- (void)applicationWillResignActive:(id)a3;
- (void)controller:(id)a3 presentInterfaceController:(id)a4 initializationContextID:(id)a5;
- (void)controller:(id)a3 presentInterfaceControllers:(id)a4 initializationContextIDs:(id)a5;
- (void)controller:(id)a3 pushInterfaceController:(id)a4 initializationContextID:(id)a5;
- (void)controllerBecomeCurrentPage:(id)a3;
- (void)controllerDismiss:(id)a3;
- (void)controllerDismissAddPassesController:(id)a3;
- (void)controllerDismissTextInputController:(id)a3;
- (void)controllerPop:(id)a3;
- (void)controllerPopToRoot:(id)a3;
- (void)controllerPresentAddPassesController:(id)a3 passes:(id)a4;
- (void)controllerPresentTextInputController:(id)a3 allowedInputMode:(id)a4 suggestions:(id)a5;
- (void)createViewController:(id)a3 className:(id)a4 properties:(id)a5 contextID:(id)a6 info:(id)a7 gestureDescriptions:(id)a8 clientIdentifier:(id)a9;
- (void)dataInterfaceDidBecomeActive:(id)a3;
- (void)dataInterfaceWillResignActive:(id)a3;
- (void)deactivateViewController:(id)a3 clientIdentifier:(id)a4;
- (void)dealloc;
- (void)didFinishHandlingActivity:(id)a3;
- (void)fetchNotificationForNotificationID:(id)a3 completion:(id)a4;
- (void)getComplicationData:(id)a3;
- (void)handlePlistDictionary:(id)a3 fromIdentifier:(id)a4;
- (void)handleProtoPlist:(id)a3 fromIdentifier:(id)a4;
- (void)insertPageControllerAtIndexes:(id)a3 withNames:(id)a4 initializationContextIDs:(id)a5;
- (void)layoutDirection:(int64_t)a3;
- (void)movePageControllerAtIndex:(int64_t)a3 toIndex:(int64_t)a4;
- (void)notificationController:(id)a3 showNotificationInterfaceType:(int64_t)a4;
- (void)openSystemURL:(id)a3;
- (void)preferredContentSizeCategory:(id)a3;
- (void)receiveData:(id)a3 fromIdentifier:(id)a4;
- (void)receiveNavigationReply:(id)a3 clientIdentifier:(id)a4;
- (void)receiveProtoData:(id)a3 fromIdentifier:(id)a4;
- (void)recoverFromMissingIntefaceControllerWithID:(id)a3;
- (void)removeInterfaceControllersForClient:(id)a3;
- (void)removePageControllerAtIndexes:(id)a3;
- (void)removePageInterfaceCreationContextsForIDs:(id)a3;
- (void)replyTimingData:(id)a3;
- (void)replyWithExtensionTimingData:(id)a3;
- (void)rootInterfaceController:(id)a3 performActionWithItemID:(id)a4 forNotificationID:(id)a5 userInfo:(id)a6 clientIdentifier:(id)a7 completionHandler:(id)a8;
- (void)sendCacheRequestMessage:(id)a3;
- (void)sendData:(id)a3 clientIdentifiers:(id)a4 reply:(id)a5;
- (void)sendPlist:(id)a3 clientIdentifiers:(id)a4;
- (void)sendSetViewController:(id)a3 key:(id)a4 property:(id)a5 value:(id)a6 clientIdentifiers:(id)a7;
- (void)sendSetViewController:(id)a3 values:(id)a4 clientIdentifiers:(id)a5;
- (void)sendWillActivateReplyForController:(id)a3;
- (void)updateUserActivity:(id)a3 userInfo:(id)a4 webpageURL:(id)a5 controller:(id)a6;
@end

@implementation SPRemoteInterface

+ (id)startRemoteInterface
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [a1 startRemoteInterfaceWithBundle:v3];

  return v4;
}

+ (id)startRemoteInterfaceWithBundle:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = wk_extension_loading_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v14 = "+[SPRemoteInterface startRemoteInterfaceWithBundle:]";
    v15 = 1024;
    v16 = 340;
    v17 = 2114;
    v18 = v3;
    _os_log_impl(&dword_23B338000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: startRemoteInterfaceWithBundle:%{public}@", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SPRemoteInterface_startRemoteInterfaceWithBundle___block_invoke;
  block[3] = &unk_278B7E200;
  v12 = v3;
  v5 = startRemoteInterfaceWithBundle__onceToken;
  v6 = v3;
  if (v5 != -1)
  {
    dispatch_once(&startRemoteInterfaceWithBundle__onceToken, block);
  }

  v7 = __sharedRemoteInterface;
  v8 = __sharedRemoteInterface;

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __52__SPRemoteInterface_startRemoteInterfaceWithBundle___block_invoke(uint64_t a1)
{
  __sharedRemoteInterface = [[SPRemoteInterface alloc] initWithBundle:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

+ (id)_remoteIdentifier
{
  if (_remoteIdentifier_onceToken != -1)
  {
    +[SPRemoteInterface _remoteIdentifier];
  }

  v3 = _remoteIdentifier___remoteIdentifier;

  return v3;
}

void __38__SPRemoteInterface__remoteIdentifier__block_invoke()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 infoDictionary];

  v2 = [v1 objectForKeyedSubscript:@"NSExtension"];
  v3 = [v2 objectForKeyedSubscript:@"NSExtensionAttributes"];
  v4 = [v3 objectForKeyedSubscript:@"WKAppBundleIdentifier"];
  v5 = _remoteIdentifier___remoteIdentifier;
  _remoteIdentifier___remoteIdentifier = v4;

  v6 = wk_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "+[SPRemoteInterface _remoteIdentifier]_block_invoke";
    v11 = 1024;
    v12 = 371;
    v13 = 2114;
    v14 = _remoteIdentifier___remoteIdentifier;
    _os_log_impl(&dword_23B338000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->ComD Gizmo app identifier %{public}@", &v9, 0x1Cu);
  }

  if (!_remoteIdentifier___remoteIdentifier)
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __38__SPRemoteInterface__remoteIdentifier__block_invoke_cold_1();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (SPRemoteInterface)initWithBundle:(id)a3
{
  v5 = a3;
  v29.receiver = self;
  v29.super_class = SPRemoteInterface;
  v6 = [(SPRemoteInterface *)&v29 init];
  [v6 _setupSignalHandlers];
  objc_storeStrong(v6 + 16, a3);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _applicationAccessibilityChanged, @"_AXNotification_GizmoApplicationAccessibilityEnabled", 0, 0);
  +[SPRemoteInterface _updateAccessibility];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v9 = *(v6 + 2);
  *(v6 + 2) = v8;

  v10 = [v5 infoDictionary];
  v11 = [v10 objectForKeyedSubscript:@"_SPDataDelegate"];
  v12 = v11;
  if (v11)
  {
    v13 = NSClassFromString(v11);
    if (v13)
    {
      v14 = v13;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __36__SPRemoteInterface_initWithBundle___block_invoke;
      v25[3] = &unk_278B7E228;
      v26 = v12;
      v27 = v6;
      v28 = v14;
      spUtils_dispatchAsyncToMainThread(v25);
    }
  }

  v15 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0x7FFFFFFFLL, _RunLoopHandler, 0);
  v16 = *(v6 + 3);
  *(v6 + 3) = v15;

  Main = CFRunLoopGetMain();
  CFRunLoopAddObserver(Main, *(v6 + 3), *MEMORY[0x277CBF048]);
  v18 = [MEMORY[0x277CBEB38] dictionary];
  v19 = *(v6 + 4);
  *(v6 + 4) = v18;

  v20 = [MEMORY[0x277CBEB38] dictionary];
  v21 = *(v6 + 5);
  *(v6 + 5) = v20;

  v22 = dispatch_queue_create("com.apple.watchkit.interfaceControllers", MEMORY[0x277D85CD8]);
  v23 = *(v6 + 7);
  *(v6 + 7) = v22;

  return v6;
}

void __36__SPRemoteInterface_initWithBundle___block_invoke(uint64_t a1)
{
  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __36__SPRemoteInterface_initWithBundle___block_invoke_cold_1(a1);
  }

  v3 = objc_alloc_init(*(a1 + 48));
  [*(a1 + 40) setDataDelegate:v3];
}

- (void)dealloc
{
  v3 = [(SPRemoteInterface *)self runLoopObserver];

  if (v3)
  {
    Main = CFRunLoopGetMain();
    v5 = [(SPRemoteInterface *)self runLoopObserver];
    CFRunLoopRemoveObserver(Main, v5, *MEMORY[0x277CBF048]);

    [(SPRemoteInterface *)self setRunLoopObserver:0];
  }

  v6.receiver = self;
  v6.super_class = SPRemoteInterface;
  [(SPRemoteInterface *)&v6 dealloc];
}

+ (void)_updateAccessibility
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"GizmoApplicationAccessibilityEnabled", @"com.apple.Accessibility", 0);
  v3 = _updateAccessibility___startedAccessibilityServer;
  if ((AppBooleanValue != 0) != _updateAccessibility___startedAccessibilityServer)
  {
    v4 = AppBooleanValue;
    __41__SPRemoteInterface__updateAccessibility__block_invoke();
    if (v4)
    {
      if (v3)
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = __41__SPRemoteInterface__updateAccessibility__block_invoke();

          [v5 _accessibilityReenabled];
        }
      }

      else if (objc_opt_respondsToSelector())
      {
        [__41__SPRemoteInterface__updateAccessibility__block_invoke() _accessibilityStartServer];
        _updateAccessibility___startedAccessibilityServer = 1;
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v6 = __41__SPRemoteInterface__updateAccessibility__block_invoke();

      [v6 _accessibilityStopServer];
    }
  }
}

id __41__SPRemoteInterface__updateAccessibility__block_invoke()
{
  if (__performAfterSendSetViewControllers_block_invoke_onceToken != -1)
  {
    __41__SPRemoteInterface__updateAccessibility__block_invoke_cold_1();
  }

  v1 = __performAfterSendSetViewControllers_block_invoke___loaderClass;

  return v1;
}

Class __41__SPRemoteInterface__updateAccessibility__block_invoke_2()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/UIAccessibility.framework"];
  [v0 load];

  result = NSClassFromString(&cfstr_Uiaccessibilit.isa);
  __performAfterSendSetViewControllers_block_invoke___loaderClass = result;
  return result;
}

- (void)_setupSignalHandlers
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__SPRemoteInterface__setupSignalHandlers__block_invoke;
  v4[3] = &unk_278B7E200;
  v4[4] = self;
  v2 = [(SPRemoteInterface *)self _setupSignal:31 handler:v4];
  v3 = _setupSignalHandlers__sigUsr2Source;
  _setupSignalHandlers__sigUsr2Source = v2;
}

void __41__SPRemoteInterface__setupSignalHandlers__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[SPRemoteInterface _setupSignalHandlers]_block_invoke";
    v10 = 1024;
    v11 = 551;
    _os_log_impl(&dword_23B338000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ======== Companion App Extension", &v8, 0x12u);
  }

  v3 = wk_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[SPRemoteInterface _remoteIdentifier];
    v8 = 136446722;
    v9 = "[SPRemoteInterface _setupSignalHandlers]_block_invoke";
    v10 = 1024;
    v11 = 552;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_23B338000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Remote Identifier: %{public}@", &v8, 0x1Cu);
  }

  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[SPRemoteInterface _setupSignalHandlers]_block_invoke";
    v10 = 1024;
    v11 = 553;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: -------- Interface Controllers", &v8, 0x12u);
  }

  [*(a1 + 32) _dumpInterfaceDictionary];
  v6 = wk_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[SPRemoteInterface _setupSignalHandlers]_block_invoke";
    v10 = 1024;
    v11 = 555;
    _os_log_impl(&dword_23B338000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: --------", &v8, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_setupSignal:(int)a3 handler:(id)a4
{
  v5 = a4;
  v6 = dispatch_source_create(MEMORY[0x277D85D30], a3, 0, MEMORY[0x277D85CD0]);
  if (v6)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__SPRemoteInterface__setupSignal_handler___block_invoke;
    handler[3] = &unk_278B7E250;
    v10 = v5;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    signal(a3, 1);
    v7 = v10;
  }

  else
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface _setupSignal:handler:];
    }
  }

  return v6;
}

- (id)_host
{
  v2 = [MEMORY[0x277D3D358] defaultService];
  v3 = [v2 hostPrincipalForPlugInNamed:0];

  return v3;
}

- (void)sendData:(id)a3 clientIdentifiers:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v11 = wk_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SPRemoteInterface sendData:clientIdentifiers:reply:];
  }

  v12 = [(SPRemoteInterface *)self _host];
  if (v12)
  {
    v13 = +[SPRemoteInterface _remoteIdentifier];
    if (v10)
    {
      [v12 sendData:v8 identifier:v13 clientIdentifiers:v9 reply:v10];
    }

    else
    {
      [v12 sendData:v8 identifier:v13 clientIdentifiers:v9];
    }
  }

  else
  {
    v13 = wk_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface sendData:clientIdentifiers:reply:];
    }
  }
}

- (void)sendPlist:(id)a3 clientIdentifiers:(id)a4
{
  v6 = a4;
  v7 = [SPProtoSerializer spPlistWithDictionary:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 data];
    if (v9)
    {
      [(SPRemoteInterface *)self sendData:v9 clientIdentifiers:v6];
    }

    else
    {
      v10 = wk_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SPRemoteInterface sendPlist:clientIdentifiers:];
      }
    }
  }

  else
  {
    v9 = wk_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface sendPlist:clientIdentifiers:];
    }
  }
}

- (void)sendSetViewController:(id)a3 key:(id)a4 property:(id)a5 value:(id)a6 clientIdentifiers:(id)a7
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"V";
  v14[1] = @"k";
  v15[0] = a3;
  v15[1] = @"#didActivate";
  v14[2] = @"v";
  v15[2] = MEMORY[0x277CBEC38];
  v9 = MEMORY[0x277CBEAC0];
  v10 = a7;
  v11 = a3;
  v12 = [v9 dictionaryWithObjects:v15 forKeys:v14 count:3];

  [(SPRemoteInterface *)self sendPlist:v12 clientIdentifiers:v10];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendSetViewController:(id)a3 values:(id)a4 clientIdentifiers:(id)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"V";
  v14[1] = @"S";
  v15[0] = a3;
  v15[1] = a4;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(SPRemoteInterface *)self sendPlist:v12 clientIdentifiers:v9];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_performAfterSendSetViewControllers:(id)a3
{
  v3 = _performAfterSendSetViewControllers__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [SPRemoteInterface _performAfterSendSetViewControllers:];
  }

  v5 = __performAfterSendSetViewControllers;
  v7 = [v4 copy];

  v6 = MEMORY[0x23EE9A9D0](v7);
  [v5 addObject:v6];
}

uint64_t __57__SPRemoteInterface__performAfterSendSetViewControllers___block_invoke()
{
  __performAfterSendSetViewControllers = [MEMORY[0x277CBEB18] array];

  return MEMORY[0x2821F96F8]();
}

- (void)_requestTimingData:(id)a3
{
  v4 = a3;
  v5 = [(SPRemoteInterface *)self _host];
  if (v5)
  {
    v6 = +[SPRemoteInterface _remoteIdentifier];
    [v5 requestTimingData:v6 timingMetaData:v4];
  }

  else
  {
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface _requestTimingData:];
    }
  }
}

- (void)replyWithExtensionTimingData:(id)a3
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = [v3 objectForKeyedSubscript:@"V"];
  v4 = [v3 objectForKeyedSubscript:@".sex"];
  v5 = [v3 objectForKeyedSubscript:@".eex"];
  v6 = [v3 objectForKeyedSubscript:@".idx"];
  v7 = [v3 objectForKeyedSubscript:@".rs"];
  v8 = [v7 integerValue];

  v9 = [v3 objectForKeyedSubscript:@".bex"];

  v24[0] = @".sex";
  v24[1] = @".eex";
  v25[0] = v4;
  v25[1] = v5;
  v24[2] = @".bex";
  v24[3] = @".idx";
  v25[2] = v9;
  v25[3] = v6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v22[0] = @"V";
  v22[1] = @"k";
  v23[0] = v17;
  v23[1] = @".PolDE";
  v22[2] = @"v";
  v23[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v12 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v17];
  v13 = dispatch_time(0, 1000000 * (v8 / 30) + 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SPRemoteInterface_replyWithExtensionTimingData___block_invoke;
  block[3] = &unk_278B7E278;
  block[4] = self;
  v20 = v11;
  v21 = v12;
  v14 = v12;
  v15 = v11;
  dispatch_after(v13, MEMORY[0x277D85CD0], block);

  v16 = *MEMORY[0x277D85DE8];
}

void __50__SPRemoteInterface_replyWithExtensionTimingData___block_invoke(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v5[0] = a1[6];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v1 sendPlist:v2 clientIdentifiers:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)replyTimingData:(id)a3
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = [v3 objectForKeyedSubscript:@"V"];
  v4 = [v3 objectForKeyedSubscript:@".scd"];
  v5 = [v3 objectForKeyedSubscript:@".ecd"];
  v6 = [v3 objectForKeyedSubscript:@".idx"];
  v7 = [v3 objectForKeyedSubscript:@".rs"];
  v8 = [v7 integerValue];

  v9 = [v3 objectForKeyedSubscript:@".bcd"];

  v24[0] = @".scd";
  v24[1] = @".ecd";
  v25[0] = v4;
  v25[1] = v5;
  v24[2] = @".bcd";
  v24[3] = @".idx";
  v25[2] = v9;
  v25[3] = v6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v22[0] = @"V";
  v22[1] = @"k";
  v23[0] = v17;
  v23[1] = @".PolD";
  v22[2] = @"v";
  v23[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v12 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v17];
  v13 = dispatch_time(0, 1000000 * (v8 / 30) + 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SPRemoteInterface_replyTimingData___block_invoke;
  block[3] = &unk_278B7E278;
  block[4] = self;
  v20 = v11;
  v21 = v12;
  v14 = v12;
  v15 = v11;
  dispatch_after(v13, MEMORY[0x277D85CD0], block);

  v16 = *MEMORY[0x277D85DE8];
}

void __37__SPRemoteInterface_replyTimingData___block_invoke(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v5[0] = a1[6];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v1 sendPlist:v2 clientIdentifiers:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)fetchNotificationForNotificationID:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = wk_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v22 = "[SPRemoteInterface fetchNotificationForNotificationID:completion:]";
    v23 = 1024;
    v24 = 1024;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_23B338000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->ComD, notificationID=%{public}@", buf, 0x1Cu);
  }

  v9 = [(SPRemoteInterface *)self _host];
  if (v9)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__SPRemoteInterface_fetchNotificationForNotificationID_completion___block_invoke;
    v17[3] = &unk_278B7E2A0;
    v18 = v7;
    [v9 fetchNotificationForNotificationID:v6 completion:v17];
    v10 = v18;
  }

  else
  {
    v11 = wk_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface fetchNotificationForNotificationID:completion:];
    }

    v12 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [v10 localizedStringForKey:@"SPErrorHostPrincipalForPluginNotFoundMessage" value:&stru_284DFE9D8 table:0];
    v20 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [v12 errorWithDomain:@"com.apple.watchkit.errors" code:8 userInfo:v14];
    (*(v7 + 2))(v7, 0, 0, 0, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __67__SPRemoteInterface_fetchNotificationForNotificationID_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = MEMORY[0x277CCAAC8];
    getUNNotificationClass();
    v21 = 0;
    v14 = [v13 unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v21];
    v15 = v21;
    if (!v14)
    {
      v16 = wk_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __67__SPRemoteInterface_fetchNotificationForNotificationID_completion___block_invoke_cold_1();
      }

      v14 = 0;
    }

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_13:
    (*(*(a1 + 32) + 16))();
    v18 = v15;
    goto LABEL_14;
  }

  v14 = 0;
  v15 = 0;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_7:
  v20 = v15;
  v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v20];
  v18 = v20;

  if (!v17)
  {
    v19 = wk_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __67__SPRemoteInterface_fetchNotificationForNotificationID_completion___block_invoke_cold_2();
    }
  }

  (*(*(a1 + 32) + 16))();

LABEL_14:
}

- (void)updateUserActivity:(id)a3 userInfo:(id)a4 webpageURL:(id)a5 controller:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = wk_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447235;
    v27 = "[SPRemoteInterface updateUserActivity:userInfo:webpageURL:controller:]";
    v28 = 1024;
    v29 = 1056;
    v30 = 2114;
    v31 = v10;
    v32 = 2113;
    v33 = v11;
    v34 = 2114;
    v35 = v12;
    _os_log_impl(&dword_23B338000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:<-Plugin, activity type: %{public}@, userInfo: %{private}@, webpageURL:%{public}@", buf, 0x30u);
  }

  v15 = [MEMORY[0x277CBEB38] dictionary];
  v16 = v15;
  if (v10)
  {
    [v15 setObject:v10 forKeyedSubscript:@"uat"];
  }

  if (v11)
  {
    [v16 setObject:v11 forKeyedSubscript:@"uai"];
  }

  if (v12)
  {
    [v16 setObject:v12 forKeyedSubscript:@"uau"];
  }

  v17 = [(SPRemoteInterface *)self _interfaceControllerID:v13];
  v18 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v17];
  if (v18)
  {
    v19 = ArchiveWithArchiverDelegate(v16);
    v24 = @"ua";
    v25 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    v23 = v18;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    [(SPRemoteInterface *)self sendPlist:v20 clientIdentifiers:v21];
  }

  else
  {
    v20 = wk_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface updateUserActivity:userInfo:webpageURL:controller:];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)sendCacheRequestMessage:(id)a3
{
  v4 = [SPProtoSerializer dataWithObject:a3];
  if (v4)
  {
    v5 = [(SPRemoteInterface *)self _host];
    if (v5)
    {
      v6 = +[SPRemoteInterface _remoteIdentifier];
      [v5 sendCacheRequest:v4 identifier:v6];
    }

    else
    {
      v6 = wk_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SPRemoteInterface sendCacheRequestMessage:];
      }
    }
  }

  else
  {
    v5 = wk_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface sendCacheRequestMessage:];
    }
  }
}

+ (void)_setupStorageForController:(id)a3
{
  v3 = a3;
  v4 = __recordedValues;
  v23 = v3;
  if (!__recordedValues)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = __recordedValues;
    __recordedValues = v5;

    v3 = v23;
    v4 = __recordedValues;
  }

  v7 = [v4 objectForKeyedSubscript:v3];

  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    [__recordedValues setObject:v8 forKeyedSubscript:v23];
  }

  v9 = __cachedRunLoopValues;
  if (!__cachedRunLoopValues)
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v11 = __cachedRunLoopValues;
    __cachedRunLoopValues = v10;

    v9 = __cachedRunLoopValues;
  }

  v12 = [v9 objectForKeyedSubscript:v23];

  if (!v12)
  {
    v13 = [MEMORY[0x277CBEB38] dictionary];
    [__cachedRunLoopValues setObject:v13 forKeyedSubscript:v23];
  }

  v14 = __cachedActivationValues;
  if (!__cachedActivationValues)
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
    v16 = __cachedActivationValues;
    __cachedActivationValues = v15;

    v14 = __cachedActivationValues;
  }

  v17 = [v14 objectForKeyedSubscript:v23];

  if (!v17)
  {
    v18 = [MEMORY[0x277CBEB38] dictionary];
    [__cachedActivationValues setObject:v18 forKeyedSubscript:v23];
  }

  v19 = __controllerActive;
  if (!__controllerActive)
  {
    v20 = [MEMORY[0x277CBEB38] dictionary];
    v21 = __controllerActive;
    __controllerActive = v20;

    v19 = __controllerActive;
  }

  v22 = [v19 objectForKeyedSubscript:v23];

  if (!v22)
  {
    [__controllerActive setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v23];
  }
}

+ (void)clearStorageForController:(id)a3
{
  v3 = __cachedActivationValues;
  v4 = a3;
  [v3 removeObjectForKey:v4];
  [__controllerActive removeObjectForKey:v4];
}

+ (void)setControllerActive:(id)a3
{
  v3 = a3;
  v4 = __controllerActive;
  v7 = v3;
  if (!__controllerActive)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = __controllerActive;
    __controllerActive = v5;

    v3 = v7;
    v4 = __controllerActive;
  }

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v3];
}

+ (void)setControllerInactive:(id)a3
{
  v3 = a3;
  v4 = __controllerActive;
  v7 = v3;
  if (!__controllerActive)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = __controllerActive;
    __controllerActive = v5;

    v3 = v7;
    v4 = __controllerActive;
  }

  [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v3];
}

+ (void)setController:(id)a3 key:(id)a4 property:(id)a5 value:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__SPRemoteInterface_setController_key_property_value___block_invoke;
  v17[3] = &unk_278B7E2C8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  spUtils_dispatchAsyncToMainThread(v17);
}

void __54__SPRemoteInterface_setController_key_property_value___block_invoke(uint64_t a1)
{
  v78[2] = *MEMORY[0x277D85DE8];
  [SPRemoteInterface _setupStorageForController:*(a1 + 32)];
  v2 = [__recordedValues objectForKeyedSubscript:*(a1 + 32)];
  v3 = [__cachedRunLoopValues objectForKeyedSubscript:*(a1 + 32)];
  v4 = [__cachedActivationValues objectForKeyedSubscript:*(a1 + 32)];
  if (![*(a1 + 40) isEqualToString:@".null"] || !objc_msgSend(v2, "count"))
  {
    v5 = *(a1 + 48);
    v59 = [(__CFString *)v5 isEqualToString:@"#value"];
    if (v59)
    {

      v5 = 0;
    }

    v6 = [__controllerActive objectForKeyedSubscript:*(a1 + 32)];
    v7 = [v6 BOOLValue];

    if ((v7 & 1) == 0)
    {
      [SPRemoteInterface _logDuplicate:@"Controller is not active." controller:*(a1 + 32) key:*(a1 + 40) property:v5 value:*(a1 + 56)];
LABEL_63:

      goto LABEL_64;
    }

    if (*(a1 + 56) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = SerializablePropertyValue(*(a1 + 56));
      v58 = v13;
      if ([(__CFString *)v5 length])
      {
        v14 = *(a1 + 40);
        v73[0] = @"k";
        v73[1] = @"p";
        v74[0] = v14;
        v74[1] = v5;
        v73[2] = @"v";
        v74[2] = v13;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v74;
        v17 = v73;
        v18 = 3;
      }

      else
      {
        v19 = *(a1 + 40);
        v71[0] = @"k";
        v71[1] = @"v";
        v72[0] = v19;
        v72[1] = v13;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v72;
        v17 = v71;
        v18 = 2;
      }

      v60 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
    }

    else
    {
      if ([(__CFString *)v5 length])
      {
        v8 = *(a1 + 40);
        v77[0] = @"k";
        v77[1] = @"p";
        v78[0] = v8;
        v78[1] = v5;
        v9 = MEMORY[0x277CBEAC0];
        v10 = v78;
        v11 = v77;
        v12 = 2;
      }

      else
      {
        v75 = @"k";
        v76 = *(a1 + 40);
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v76;
        v11 = &v75;
        v12 = 1;
      }

      v60 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:v12];
      v58 = 0;
    }

    if (([(__CFString *)v5 isEqualToString:@"rowTypes"]& 1) != 0 || ([(__CFString *)v5 isEqualToString:@".insert"]& 1) != 0 || [(__CFString *)v5 isEqualToString:@".remove"])
    {
      v56 = v5;
      v57 = v2;
      v20 = [v4 allKeys];
      v21 = [v20 copy];

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v65 objects:v70 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v66;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v66 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v65 + 1) + 8 * i);
            v28 = [v27 pathComponents];
            v29 = [v28 count];

            if (v29 >= 2)
            {
              [v4 removeObjectForKey:v27];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v65 objects:v70 count:16];
        }

        while (v24);
      }

      v30 = [v3 allKeys];
      v31 = [v30 copy];

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v62;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v62 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v61 + 1) + 8 * j);
            v38 = [v37 pathComponents];
            v39 = [v38 count];

            if (v39 >= 2)
            {
              [v3 removeObjectForKey:v37];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v61 objects:v69 count:16];
        }

        while (v34);
      }

      v5 = v56;
      v2 = v57;
    }

    if (v5 && !-[__CFString isEqualToString:](v5, "isEqualToString:", &stru_284DFE9D8) || ([*(a1 + 40) isEqualToString:@"#item"] & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqualToString:", @".null") & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqualToString:", @"#animateBegin") & 1) != 0)
    {
      v40 = 1;
    }

    else
    {
      v40 = v59 | [*(a1 + 40) isEqualToString:@"#animateCommit"];
    }

    v41 = *(a1 + 40);
    if (v5)
    {
      v42 = v5;
    }

    else
    {
      v42 = &stru_284DFE9D8;
    }

    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@|%@", *(a1 + 40), v42];
    if (v40)
    {
      v44 = 0;
      goto LABEL_50;
    }

    v48 = [v3 objectForKey:v43];
    if (v48)
    {
      v44 = v48;
      [v2 replaceObjectAtIndex:objc_msgSend(v48 withObject:{"unsignedIntegerValue"), v60}];
      v49 = *(a1 + 32);
      v50 = *(a1 + 40);
      v51 = *(a1 + 56);
      v52 = @"Duplicate call within run loop.";
LABEL_55:
      [SPRemoteInterface _logDuplicate:v52 controller:v49 key:v50 property:v5 value:v51];
LABEL_62:

      goto LABEL_63;
    }

    v44 = [v4 objectForKey:v43];
    if (v44)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v53 = *(a1 + 56), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if ([v44 isEqual:*(a1 + 56)])
        {
          v51 = *(a1 + 56);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || *(a1 + 56))
          {
            goto LABEL_50;
          }

          v51 = 0;
        }

LABEL_67:
        v49 = *(a1 + 32);
        v50 = *(a1 + 40);
        v52 = @"Duplicate call.";
        goto LABEL_55;
      }

      v51 = *(a1 + 56);
      if (v44 == v51)
      {
        goto LABEL_67;
      }
    }

LABEL_50:
    [v2 addObject:v60];
    v45 = [v2 count];
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v45 - 1];
    [v3 setObject:v46 forKey:v43];

    if ((v40 & 1) == 0)
    {
      v47 = *(a1 + 56);
      if (v47)
      {
        [v4 setObject:v47 forKey:v43];
      }

      else
      {
        v54 = [MEMORY[0x277CBEB68] null];
        [v4 setObject:v54 forKey:v43];
      }
    }

    goto LABEL_62;
  }

LABEL_64:

  v55 = *MEMORY[0x277D85DE8];
}

+ (void)_logDuplicate:(id)a3 controller:(id)a4 key:(id)a5 property:(id)a6 value:(id)a7
{
  v43 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [__sharedRemoteInterface _interfaceControllerWithID:a4];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v14];
  if ([v16 length] >= 0x21)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [v16 substringToIndex:32];
    v19 = [v17 stringWithFormat:@"%@...<truncated>", v18];

    v16 = v19;
  }

  v20 = objc_opt_class();
  v21 = objc_opt_class();
  NSLog(&cfstr_WatchkitDiscar.isa, v11, v20, v12, v13, v16, v21);
  v22 = wk_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    v24 = v23;
    *buf = 136448003;
    v28 = "+[SPRemoteInterface _logDuplicate:controller:key:property:value:]";
    v29 = 1024;
    v30 = 1456;
    v31 = 2114;
    v32 = v11;
    v33 = 2114;
    v34 = v23;
    v35 = 2114;
    v36 = v12;
    v37 = 2114;
    v38 = v13;
    v39 = 2113;
    v40 = v16;
    v41 = 2114;
    v42 = objc_opt_class();
    v25 = v42;
    _os_log_impl(&dword_23B338000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: WatchKit: %{public}@ Discarding call for %{public}@ key=%{public}@ property=%{public}@ value=%{private}@ value class=%{public}@", buf, 0x4Eu);
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)controller:(id)a3 pushInterfaceController:(id)a4 context:(id)a5
{
  v7 = __sharedRemoteInterface;
  v8 = a4;
  v9 = a3;
  v10 = [v7 storeInterfaceCreationContext:a5];
  [__sharedRemoteInterface controller:v9 pushInterfaceController:v8 initializationContextID:v10];
}

+ (void)reloadRootControllersWithNames:(id)a3 contexts:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [v6 count];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (v8 > 1)
        {
          [__sharedRemoteInterface storePageInterfaceCreationContext:{v14, v19}];
        }

        else
        {
          [__sharedRemoteInterface storeInterfaceCreationContext:v14];
        }
        v15 = ;
        [v7 addObject:{v15, v19}];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = __sharedRemoteInterface;
  if ([v7 count])
  {
    v17 = v7;
  }

  else
  {
    v17 = 0;
  }

  [v16 reloadRootControllersWithNames:v5 initializationContextIDs:v17 pageIndex:0 verticalPaging:{0, v19}];

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)insertPageControllerAtIndexes:(id)a3 withNames:(id)a4 contexts:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [__sharedRemoteInterface storePageInterfaceCreationContext:{*(*(&v20 + 1) + 8 * v15), v20}];
        [v10 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = __sharedRemoteInterface;
  if ([v10 count])
  {
    v18 = v10;
  }

  else
  {
    v18 = 0;
  }

  [v17 insertPageControllerAtIndexes:v7 withNames:v8 initializationContextIDs:{v18, v20}];

  v19 = *MEMORY[0x277D85DE8];
}

+ (void)controller:(id)a3 presentInterfaceController:(id)a4 context:(id)a5
{
  v7 = __sharedRemoteInterface;
  v8 = a4;
  v9 = a3;
  v10 = [v7 storeInterfaceCreationContext:a5];
  [v7 controller:v9 presentInterfaceController:v8 initializationContextID:v10];
}

+ (void)controller:(id)a3 presentInterfaceControllers:(id)a4 contexts:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [v9 count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if (v11 > 1)
        {
          [__sharedRemoteInterface storePageInterfaceCreationContext:{v17, v22}];
        }

        else
        {
          [__sharedRemoteInterface storeInterfaceCreationContext:v17];
        }
        v18 = ;
        [v10 addObject:{v18, v22}];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v19 = __sharedRemoteInterface;
  if ([v10 count])
  {
    v20 = v10;
  }

  else
  {
    v20 = 0;
  }

  [v19 controller:v7 presentInterfaceControllers:v8 initializationContextIDs:{v20, v22}];

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)controller:(id)a3 presentTextInputControllerWithSuggestions:(id)a4 allowedInputMode:(id)a5 completion:(id)a6
{
  v9 = __sharedRemoteInterface;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  [v9 setTextInputCompletion:a6];
  [__sharedRemoteInterface setTextInputSuggestions:0];
  [__sharedRemoteInterface controllerPresentTextInputController:v12 allowedInputMode:v10 suggestions:v11];
}

+ (void)controller:(id)a3 presentTextInputControllerWithSuggestionsForLanguage:(id)a4 allowedInputMode:(id)a5 completion:(id)a6
{
  v9 = __sharedRemoteInterface;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  [v9 setTextInputCompletion:a6];
  [__sharedRemoteInterface setTextInputSuggestions:v11];

  [__sharedRemoteInterface controllerPresentTextInputController:v12 allowedInputMode:v10 suggestions:0];
}

+ (void)controller:(id)a3 presentAddPassesControllerWithPasses:(id)a4 completion:(id)a5
{
  v7 = __sharedRemoteInterface;
  v8 = a5;
  [v7 controllerPresentAddPassesController:a3 passes:a4];
  [__sharedRemoteInterface setAddPassesCompletion:v8];
}

+ (void)sendCacheRequest:(id)a3
{
  v3 = wk_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    +[SPRemoteInterface sendCacheRequest:];
  }
}

- (BOOL)_sendDataToApp:(id)a3 reply:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  appClientIdentifier = self->_appClientIdentifier;
  if (appClientIdentifier)
  {
    v9 = appClientIdentifier;
  }

  else
  {
    v9 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:self->_rootViewControllerID];
    if (!v9)
    {
LABEL_6:
      v10 = 0;
      goto LABEL_7;
    }
  }

  if (![v6 length])
  {
    goto LABEL_6;
  }

  v14[0] = v9;
  v10 = 1;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [(SPRemoteInterface *)self sendData:v6 clientIdentifiers:v11 reply:v7];

LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)storeInterfaceCreationContext:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (!__interfaceCreationContexts)
    {
      v4 = [MEMORY[0x277CBEB38] dictionary];
      v5 = __interfaceCreationContexts;
      __interfaceCreationContexts = v4;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:storeInterfaceCreationContext____contextCounter];
    [__interfaceCreationContexts setObject:v3 forKey:v6];
    ++storeInterfaceCreationContext____contextCounter;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)interfaceCreationContextForID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [__interfaceCreationContexts objectForKeyedSubscript:v3];
    [__interfaceCreationContexts removeObjectForKey:v3];
    v5 = [v3 integerValue];
    v6 = v5 - 1;
    if (v5 >= 1)
    {
      while (1)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
        v8 = [__interfaceCreationContexts objectForKeyedSubscript:v7];

        if (!v8)
        {
          break;
        }

        [__interfaceCreationContexts removeObjectForKey:v7];

        if (--v6 == -1)
        {
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v4;
}

- (id)storePageInterfaceCreationContext:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (!__pageInterfaceCreationContexts)
    {
      v4 = [MEMORY[0x277CBEB38] dictionary];
      v5 = __pageInterfaceCreationContexts;
      __pageInterfaceCreationContexts = v4;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:storePageInterfaceCreationContext____pageContextCounter];
    [__pageInterfaceCreationContexts setObject:v3 forKey:v6];
    --storePageInterfaceCreationContext____pageContextCounter;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pageInterfaceCreationContextForID:(id)a3
{
  if (a3)
  {
    v4 = [__pageInterfaceCreationContexts objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)removePageInterfaceCreationContextsForIDs:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SPRemoteInterface_removePageInterfaceCreationContextsForIDs___block_invoke;
  v5[3] = &unk_278B7E200;
  v6 = v3;
  v4 = v3;
  spUtils_dispatchSyncToMainThread(v5);
}

- (void)controller:(id)a3 pushInterfaceController:(id)a4 initializationContextID:(id)a5
{
  v19[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SPRemoteInterface *)self _interfaceControllerID:v8];
  v12 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v11];
  if (v12)
  {
    [(SPRemoteInterface *)self setNavigatingViewControllerID:v11];
    v18[0] = @"V";
    v18[1] = @"n";
    v19[0] = v11;
    v19[1] = v9;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v14 = [v13 mutableCopy];

    if (v10)
    {
      [v14 setObject:v10 forKey:@"X"];
    }

    v17 = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [(SPRemoteInterface *)self sendPlist:v14 clientIdentifiers:v15];
  }

  else
  {
    v14 = wk_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controller:pushInterfaceController:initializationContextID:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)controllerPop:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:v4];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    [(SPRemoteInterface *)self setNavigatingViewControllerID:v5];
    v11[0] = @"V";
    v11[1] = @"n";
    v12[0] = v5;
    v12[1] = @".pop";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v10 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(SPRemoteInterface *)self sendPlist:v7 clientIdentifiers:v8];
  }

  else
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerPop:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)controllerPopToRoot:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:v4];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    [(SPRemoteInterface *)self setNavigatingViewControllerID:v5];
    v11[0] = @"V";
    v11[1] = @"n";
    v12[0] = v5;
    v12[1] = @".popR";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v10 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(SPRemoteInterface *)self sendPlist:v7 clientIdentifiers:v8];
  }

  else
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerPopToRoot:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __102__SPRemoteInterface_reloadRootControllersWithNames_initializationContextIDs_pageIndex_verticalPaging___block_invoke(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v5[0] = a1[6];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v1 sendPlist:v2 clientIdentifiers:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)insertPageControllerAtIndexes:(id)a3 withNames:(id)a4 initializationContextIDs:(id)a5
{
  v21[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  rootViewControllerID = self->_rootViewControllerID;
  if (!rootViewControllerID)
  {
    rootViewControllerID = &stru_284DFE9D8;
  }

  v12 = rootViewControllerID;
  appClientIdentifier = self->_appClientIdentifier;
  if (appClientIdentifier)
  {
    v14 = appClientIdentifier;
  }

  else
  {
    v14 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:self->_rootViewControllerID];
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  v20[0] = @"V";
  v20[1] = @"rv";
  v21[0] = v12;
  v21[1] = @"rvi";
  v20[2] = @"rvna";
  v20[3] = @"rvidx";
  v21[2] = v9;
  v21[3] = v8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v16 = [v15 mutableCopy];

  if (v10)
  {
    [v16 setObject:v10 forKey:@"X"];
  }

  v19 = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  [(SPRemoteInterface *)self sendPlist:v16 clientIdentifiers:v17];

LABEL_9:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)movePageControllerAtIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  v20[3] = *MEMORY[0x277D85DE8];
  rootViewControllerID = self->_rootViewControllerID;
  if (!rootViewControllerID)
  {
    rootViewControllerID = &stru_284DFE9D8;
  }

  v8 = rootViewControllerID;
  appClientIdentifier = self->_appClientIdentifier;
  if (appClientIdentifier)
  {
    v10 = appClientIdentifier;
LABEL_6:
    v19[0] = @"V";
    v19[1] = @"rv";
    v20[0] = v8;
    v20[1] = @"rvm";
    v19[2] = @"rvidx";
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v18[0] = v11;
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v18[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v20[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

    v17 = v10;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [(SPRemoteInterface *)self sendPlist:v14 clientIdentifiers:v15];

    goto LABEL_7;
  }

  v10 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:self->_rootViewControllerID];
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removePageControllerAtIndexes:(id)a3
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  rootViewControllerID = self->_rootViewControllerID;
  if (!rootViewControllerID)
  {
    rootViewControllerID = &stru_284DFE9D8;
  }

  v6 = rootViewControllerID;
  appClientIdentifier = self->_appClientIdentifier;
  if (appClientIdentifier)
  {
    v8 = appClientIdentifier;
LABEL_6:
    v13[0] = @"V";
    v13[1] = @"rv";
    v14[0] = v6;
    v14[1] = @"rvd";
    v13[2] = @"rvidx";
    v14[2] = v4;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v12 = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    [(SPRemoteInterface *)self sendPlist:v9 clientIdentifiers:v10];

    goto LABEL_7;
  }

  v8 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:self->_rootViewControllerID];
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)controllerBecomeCurrentPage:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:v4];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    v18[0] = @"V";
    v18[1] = @"n";
    v19[0] = v5;
    v19[1] = @".page";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__SPRemoteInterface_controllerBecomeCurrentPage___block_invoke;
    v15[3] = &unk_278B7E278;
    v15[4] = self;
    v16 = v7;
    v17 = v6;
    v8 = v7;
    v9 = MEMORY[0x23EE9A9D0](v15);
    v9[2](v9, v10, v11, v12, v13);
  }

  else
  {
    v8 = wk_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerBecomeCurrentPage:];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __49__SPRemoteInterface_controllerBecomeCurrentPage___block_invoke(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v5[0] = a1[6];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v1 sendPlist:v2 clientIdentifiers:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)controller:(id)a3 presentInterfaceController:(id)a4 initializationContextID:(id)a5
{
  v19[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SPRemoteInterface *)self _interfaceControllerID:v8];
  v12 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v11];
  if (v12)
  {
    [(SPRemoteInterface *)self setNavigatingViewControllerID:v11];
    v18[0] = @"V";
    v18[1] = @"nm";
    v19[0] = v11;
    v19[1] = v9;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v14 = [v13 mutableCopy];

    if (v10)
    {
      [v14 setObject:v10 forKey:@"X"];
    }

    v17 = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [(SPRemoteInterface *)self sendPlist:v14 clientIdentifiers:v15];
  }

  else
  {
    v14 = wk_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controller:presentInterfaceController:initializationContextID:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)controller:(id)a3 presentInterfaceControllers:(id)a4 initializationContextIDs:(id)a5
{
  v19[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SPRemoteInterface *)self _interfaceControllerID:v8];
  v12 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v11];
  if (v12)
  {
    [(SPRemoteInterface *)self setNavigatingViewControllerID:v11];
    v18[0] = @"V";
    v18[1] = @"nm";
    v19[0] = v11;
    v19[1] = v9;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v14 = [v13 mutableCopy];

    if (v10)
    {
      [v14 setObject:v10 forKey:@"X"];
    }

    v17 = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [(SPRemoteInterface *)self sendPlist:v14 clientIdentifiers:v15];
  }

  else
  {
    v14 = wk_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controller:presentInterfaceControllers:initializationContextIDs:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)controllerDismiss:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:v4];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    [(SPRemoteInterface *)self setNavigatingViewControllerID:v5];
    v11[0] = @"V";
    v11[1] = @"nm";
    v12[0] = v5;
    v12[1] = @".pop";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v10 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(SPRemoteInterface *)self sendPlist:v7 clientIdentifiers:v8];
  }

  else
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerDismiss:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)controllerPresentTextInputController:(id)a3 allowedInputMode:(id)a4 suggestions:(id)a5
{
  v21[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SPRemoteInterface *)self _interfaceControllerID:v8];
  v12 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v11];
  if (v12)
  {
    if ([v10 count])
    {
      v20[0] = @"V";
      v20[1] = @"nm";
      v21[0] = v11;
      v21[1] = @"ti";
      v20[2] = @"tim";
      v20[3] = @"tI";
      v21[2] = v9;
      v21[3] = v10;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
    }

    else
    {
      v18[0] = @"V";
      v18[1] = @"nm";
      v19[0] = v11;
      v19[1] = @"ti";
      v19[2] = v9;
      v18[2] = @"tim";
      v18[3] = @"tL";
      v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_textInputSuggestions != 0];
      v19[3] = v14;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
    }

    v17 = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [(SPRemoteInterface *)self sendPlist:v13 clientIdentifiers:v15];
  }

  else
  {
    v13 = wk_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerPresentTextInputController:allowedInputMode:suggestions:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)controllerDismissTextInputController:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:v4];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    v11[0] = @"V";
    v11[1] = @"nm";
    v12[0] = v5;
    v12[1] = @".pop";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v10 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(SPRemoteInterface *)self sendPlist:v7 clientIdentifiers:v8];
  }

  else
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerDismissTextInputController:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)openSystemURL:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  appClientIdentifier = self->_appClientIdentifier;
  if (appClientIdentifier)
  {
    v6 = appClientIdentifier;
    v7 = spUtils_serializeObject(a3);
    v12 = @"ou";
    v13[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11 = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [(SPRemoteInterface *)self sendPlist:v8 clientIdentifiers:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)controllerPresentAddPassesController:(id)a3 passes:(id)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SPRemoteInterface *)self _interfaceControllerID:v6];
  v9 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v8];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v15[0] = @"V";
    v15[1] = @"nm";
    v16[0] = v8;
    v16[1] = @"pka";
    v15[2] = @"pkp";
    v16[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v14 = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [(SPRemoteInterface *)self sendPlist:v11 clientIdentifiers:v12];
  }

  else
  {
    v10 = wk_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerPresentAddPassesController:passes:];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)controllerDismissAddPassesController:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:v4];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    v11[0] = @"V";
    v11[1] = @"nm";
    v12[0] = v5;
    v12[1] = @".pop";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v10 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(SPRemoteInterface *)self sendPlist:v7 clientIdentifiers:v8];
  }

  else
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerDismissAddPassesController:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didFinishHandlingActivity:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:v4];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    v11[0] = @"V";
    v11[1] = @"har";
    v12[0] = v5;
    v12[1] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v10 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(SPRemoteInterface *)self sendPlist:v7 clientIdentifiers:v8];
  }

  else
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface didFinishHandlingActivity:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notificationController:(id)a3 showNotificationInterfaceType:(int64_t)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SPRemoteInterface *)self _interfaceControllerID:v6];
  v8 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v7];
  if (v8)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v9 = SPApplicationNotificationTypeCustom;
    }

    else
    {
      v9 = SPApplicationNotificationTypeDefault;
    }

    v10 = *v9;
LABEL_10:
    v15[0] = @"V";
    v15[1] = @"nt";
    v16[0] = v7;
    v16[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v14 = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [(SPRemoteInterface *)self sendPlist:v11 clientIdentifiers:v12];

    goto LABEL_11;
  }

  v10 = wk_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SPRemoteInterface notificationController:showNotificationInterfaceType:];
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendWillActivateReplyForController:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:v4];
  if (v5)
  {
    v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
    v15[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(SPRemoteInterface *)self sendSetViewController:v5 key:@"#didActivate" property:0 value:0 clientIdentifiers:v7];
  }

  else
  {
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446722;
      v10 = "[SPRemoteInterface sendWillActivateReplyForController:]";
      v11 = 1024;
      v12 = 2311;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_23B338000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF: interfaceControllerID for controller:%{public}@ not found. Controller may already have been released.", &v9, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)recoverFromMissingIntefaceControllerWithID:(id)a3
{
  v4 = a3;
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SPRemoteInterface_recoverFromMissingIntefaceControllerWithID___block_invoke;
  v7[3] = &unk_278B7E2F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(interfaceControllersAccessQueue, v7);
}

- (void)_inQueue_recoverFromMissingIntefaceControllerWithID:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_missingInterfaceControllers containsObject:v4]& 1) == 0)
  {
    missingInterfaceControllers = self->_missingInterfaceControllers;
    if (!missingInterfaceControllers)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      v7 = self->_missingInterfaceControllers;
      self->_missingInterfaceControllers = v6;

      missingInterfaceControllers = self->_missingInterfaceControllers;
    }

    [(NSMutableSet *)missingInterfaceControllers addObject:v4];
    v8 = dispatch_time(0, 30000000000);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __73__SPRemoteInterface__inQueue_recoverFromMissingIntefaceControllerWithID___block_invoke;
    v13 = &unk_278B7E2F0;
    v14 = self;
    v9 = v4;
    v15 = v9;
    dispatch_after(v8, MEMORY[0x277D85CD0], &v10);

    [(SPRemoteInterface *)self _tellApplicationThatInterfaceControllerCantBeFound:v9, v10, v11, v12, v13, v14];
  }
}

void __73__SPRemoteInterface__inQueue_recoverFromMissingIntefaceControllerWithID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__SPRemoteInterface__inQueue_recoverFromMissingIntefaceControllerWithID___block_invoke_2;
  v4[3] = &unk_278B7E2F0;
  v4[4] = v2;
  v5 = v1;
  dispatch_barrier_async(v3, v4);
}

uint64_t __73__SPRemoteInterface__inQueue_recoverFromMissingIntefaceControllerWithID___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 48);

    return [v4 removeObject:v3];
  }

  return result;
}

- (void)_tellApplicationThatInterfaceControllerCantBeFound:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D3D358] defaultService];
  v5 = [v4 hostPrincipalForPlugInNamed:0];

  if (v5)
  {
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 bundleIdentifier];
    [v5 extensionWithIdentifier:v7 gotUnknownInterfaceController:v3];
  }

  else
  {
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface _tellApplicationThatInterfaceControllerCantBeFound:];
    }
  }
}

- (id)_interfaceControllerWithID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SPRemoteInterface__interfaceControllerWithID___block_invoke;
  block[3] = &unk_278B7E318;
  v15 = &v16;
  block[4] = self;
  v6 = v4;
  v14 = v6;
  dispatch_sync(interfaceControllersAccessQueue, block);
  v7 = v17[5];
  if (!v7)
  {
    v8 = wk_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(NSMutableDictionary *)self->_interfaceControllersOwners objectForKeyedSubscript:v6];
      [(SPRemoteInterface *)v6 _interfaceControllerWithID:v9, v22];
    }

    [(SPRemoteInterface *)self recoverFromMissingIntefaceControllerWithID:v6];
    v7 = v17[5];
  }

  v10 = v7;

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __48__SPRemoteInterface__interfaceControllerWithID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_interfaceControllerWithID:(id)a3 performBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SPRemoteInterface__interfaceControllerWithID_performBlock___block_invoke;
    block[3] = &unk_278B7E318;
    v15 = &v16;
    block[4] = self;
    v9 = v6;
    v14 = v9;
    dispatch_sync(interfaceControllersAccessQueue, block);
    if (v17[5])
    {
      v7[2](v7);
    }

    else
    {
      v10 = self->_interfaceControllersAccessQueue;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __61__SPRemoteInterface__interfaceControllerWithID_performBlock___block_invoke_2;
      v11[3] = &unk_278B7E2F0;
      v11[4] = self;
      v12 = v9;
      dispatch_async(v10, v11);
    }

    _Block_object_dispose(&v16, 8);
  }
}

uint64_t __61__SPRemoteInterface__interfaceControllerWithID_performBlock___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_interfaceControllerID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SPRemoteInterface__interfaceControllerID___block_invoke;
  block[3] = &unk_278B7E318;
  v15 = &v16;
  block[4] = self;
  v6 = v4;
  v14 = v6;
  dispatch_sync(interfaceControllersAccessQueue, block);
  v7 = v17[5];
  if (!v7)
  {
    v8 = wk_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(NSMutableDictionary *)self->_interfaceControllersOwners objectForKeyedSubscript:v17[5]];
      [(SPRemoteInterface *)v6 _interfaceControllerID:v9, v22];
    }

    v7 = v17[5];
  }

  v10 = v7;

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __44__SPRemoteInterface__interfaceControllerID___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 32) allKeysForObject:a1[5]];
  v2 = [v5 lastObject];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_interfaceControllerClientIDForControllerID:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SPRemoteInterface__interfaceControllerClientIDForControllerID___block_invoke;
  block[3] = &unk_278B7E318;
  v13 = &v14;
  block[4] = self;
  v6 = v4;
  v12 = v6;
  dispatch_sync(interfaceControllersAccessQueue, block);
  v7 = v15[5];
  if (!v7)
  {
    v8 = wk_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface _interfaceControllerClientIDForControllerID:];
    }

    v7 = v15[5];
  }

  v9 = v7;

  _Block_object_dispose(&v14, 8);

  return v9;
}

uint64_t __65__SPRemoteInterface__interfaceControllerClientIDForControllerID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_interfaceControllerIDsForClientID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SPRemoteInterface__interfaceControllerIDsForClientID___block_invoke;
  block[3] = &unk_278B7E318;
  v14 = &v15;
  block[4] = self;
  v6 = v4;
  v13 = v6;
  dispatch_sync(interfaceControllersAccessQueue, block);
  v7 = v16[5];
  if (!v7)
  {
    v8 = wk_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v22 = "[SPRemoteInterface _interfaceControllerIDsForClientID:]";
      v23 = 1024;
      v24 = 2446;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&dword_23B338000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF: interfaceCotrollersIDs for clientIdentifier:%{public}@ not found", buf, 0x1Cu);
    }

    v7 = v16[5];
  }

  v9 = v7;

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __56__SPRemoteInterface__interfaceControllerIDsForClientID___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 40) allKeysForObject:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_registerInterfaceController:(id)a3 interfaceControllerID:(id)a4 interfaceControllerClientID:(id)a5 applicationRootController:(BOOL)a6
{
  v6 = a6;
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = wk_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136447234;
    v16 = "[SPRemoteInterface _registerInterfaceController:interfaceControllerID:interfaceControllerClientID:applicationRootController:]";
    v17 = 1024;
    v18 = 2458;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&dword_23B338000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: registering controller %{public}@ with id %{public}@ and clientIdentifier %{public}@", &v15, 0x30u);
  }

  if (v10)
  {
    [(NSMutableDictionary *)self->_interfaceControllers setObject:v10 forKey:v11];
    if (v6)
    {
      objc_storeStrong(&self->_rootViewControllerID, a4);
    }
  }

  if (v11)
  {
    [(NSMutableDictionary *)self->_interfaceControllersOwners setObject:v12 forKey:v11];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_deregisterInterfaceControllerID:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMutableDictionary *)self->_interfaceControllers objectForKeyedSubscript:v4];
    v7 = [(NSMutableDictionary *)self->_interfaceControllersOwners objectForKeyedSubscript:v4];
    *buf = 136447234;
    v17 = "[SPRemoteInterface _deregisterInterfaceControllerID:]";
    v18 = 1024;
    v19 = 2501;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v4;
    v24 = 2114;
    v25 = v7;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: deregistering controller %{public}@ with id %{public}@ and clientIdentifier %{public}@", buf, 0x30u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__SPRemoteInterface__deregisterInterfaceControllerID___block_invoke;
  v14[3] = &unk_278B7E200;
  v8 = v4;
  v15 = v8;
  spUtils_dispatchAsyncToMainThread(v14);
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SPRemoteInterface__deregisterInterfaceControllerID___block_invoke_2;
  block[3] = &unk_278B7E2F0;
  block[4] = self;
  v13 = v8;
  v10 = v8;
  dispatch_barrier_async(interfaceControllersAccessQueue, block);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __54__SPRemoteInterface__deregisterInterfaceControllerID___block_invoke(uint64_t a1)
{
  [__recordedValues removeObjectForKey:*(a1 + 32)];
  v2 = *(a1 + 32);

  return [SPRemoteInterface clearStorageForController:v2];
}

void __54__SPRemoteInterface__deregisterInterfaceControllerID___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 64) isEqualToString:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  objc_storeStrong((v3 + 64), v4);
}

- (id)_allInterfaceControllers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SPRemoteInterface__allInterfaceControllers__block_invoke;
  v5[3] = &unk_278B7E340;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(interfaceControllersAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__SPRemoteInterface__allInterfaceControllers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) interfaceControllers];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_dumpInterfaceDictionary
{
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SPRemoteInterface__dumpInterfaceDictionary__block_invoke;
  block[3] = &unk_278B7E200;
  block[4] = self;
  dispatch_sync(interfaceControllersAccessQueue, block);
}

void __45__SPRemoteInterface__dumpInterfaceDictionary__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = a1 + 32;
  v2 = [*(*(a1 + 32) + 32) count];
  v16 = v1;
  if (v2 != [*(*v1 + 40) count])
  {
    v3 = wk_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __45__SPRemoteInterface__dumpInterfaceDictionary__block_invoke_cold_1(v1);
    }
  }

  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__SPRemoteInterface__dumpInterfaceDictionary__block_invoke_cold_2(v1);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(*v1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = wk_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [*(*v16 + 32) objectForKeyedSubscript:v11];
          v14 = [*(*v16 + 40) objectForKeyedSubscript:v11];
          *buf = 136447490;
          v22 = "[SPRemoteInterface _dumpInterfaceDictionary]_block_invoke";
          v23 = 1024;
          v24 = 2533;
          v25 = 1024;
          v26 = v8;
          v27 = 2114;
          v28 = v11;
          v29 = 2114;
          v30 = v13;
          v31 = 2114;
          v32 = v14;
          _os_log_error_impl(&dword_23B338000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%d: #%d key=%{public}@ interfaceController=%{public}@ interfaceControllersOwner=%{public}@", buf, 0x36u);

          ++v8;
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v33 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeInterfaceControllersForClient:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPRemoteInterface *)self _interfaceControllerIDsForClientID:v4];
  v6 = wk_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v27 = "[SPRemoteInterface removeInterfaceControllersForClient:]";
    v28 = 1024;
    v29 = 2558;
    v30 = 2114;
    v31 = v4;
    v32 = 2114;
    v33 = v5;
    _os_log_impl(&dword_23B338000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: !!! Release all controllers - clientIdentifier:%{public}@, interfaceControllerIDs:%{public}@", buf, 0x26u);
  }

  v16 = v4;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [(SPRemoteInterface *)self _interfaceControllerWithID:v12, v16];
        v14 = v13;
        if (v13)
        {
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __57__SPRemoteInterface_removeInterfaceControllersForClient___block_invoke;
          v17[3] = &unk_278B7E278;
          v18 = v13;
          v19 = self;
          v20 = v12;
          [SPRemoteInterface handleEvent:v17];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __57__SPRemoteInterface_removeInterfaceControllersForClient___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didDeactivate];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _deregisterInterfaceControllerID:v3];
}

+ (id)controller:(id)a3 setupProperties:(id)a4 viewControllerID:(id)a5 tableIndex:(int64_t)a6 rowIndex:(int64_t)a7 classForType:(void *)a8
{
  v67 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v48 = a5;
  v44 = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  if (a8)
  {
    v13 = a8;
  }

  else
  {
    v13 = SPInterfaceObjectWithType;
  }

  v45 = v13;
  v54 = 0uLL;
  v55 = 0uLL;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = 0;
    v18 = @"property";
    v19 = *v53;
    *&v15 = 136447234;
    v43 = v15;
    v50 = v11;
    do
    {
      v20 = 0;
      v49 = v16;
      do
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v52 + 1) + 8 * v20);
        v22 = [v21 objectForKeyedSubscript:{v18, v43}];
        v23 = [v21 objectForKeyedSubscript:@"type"];
        v24 = v23;
        if (v22)
        {
          v25 = v23 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          v26 = v18;
          NSSelectorFromString(v22);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v28 = wk_default_log();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446978;
              v57 = "+[SPRemoteInterface controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:]";
              v58 = 1024;
              v59 = 2679;
              v60 = 2114;
              v61 = v22;
              v62 = 2114;
              v63 = v11;
              _os_log_error_impl(&dword_23B338000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%d: Unknown property in Interface description ('%{public}@') for controller %{public}@", buf, 0x26u);
            }

            v27 = v17;
            goto LABEL_27;
          }

          v27 = v17 + 1;
          v28 = [objc_alloc(v45(v24)) _initWithInterfaceProperty:v22 viewControllerID:v48 propertyIndex:v17 tableIndex:a6 rowIndex:a7];
          [v28 _setupWithDescription:v21 forController:v11];
          if (v28)
          {
            v29 = SetterForProperty(v22);
            if (v29)
            {
              v30 = v29;
              if ([MEMORY[0x277D82BB8] instancesRespondToSelector:v29] & 1) != 0 || (objc_msgSend(WKInterfaceControllerClass(), "instancesRespondToSelector:", v30))
              {
                v31 = wk_default_log();
                if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_19;
                }

                v36 = NSStringFromSelector(v30);
                *buf = 136446722;
                v57 = "+[SPRemoteInterface controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:]";
                v58 = 1024;
                v59 = 2670;
                v60 = 2114;
                v61 = v36;
                v37 = v31;
                v38 = "%{public}s:%d: Cannot specify setter '%{public}@' for properties of NSObject or WKInterfaceController";
                v39 = 28;
LABEL_35:
                _os_log_error_impl(&dword_23B338000, v37, OS_LOG_TYPE_ERROR, v38, buf, v39);

                goto LABEL_19;
              }

              if (objc_opt_respondsToSelector())
              {
                [v50 performSelector:v30 withObject:v28];
                [v44 addObject:v28];
              }

              else
              {
                v31 = wk_default_log();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v36 = NSStringFromSelector(v30);
                  *buf = 136446978;
                  v57 = "+[SPRemoteInterface controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:]";
                  v58 = 1024;
                  v59 = 2667;
                  v60 = 2114;
                  v61 = v50;
                  v62 = 2114;
                  v63 = v36;
                  v37 = v31;
                  v38 = "%{public}s:%d: Controller %{public}@ does not implement setter '%{public}@'";
                  v39 = 38;
                  goto LABEL_35;
                }

LABEL_19:
              }

LABEL_27:

              v17 = v27;
              v18 = v26;
              v16 = v49;
              v11 = v50;
              goto LABEL_28;
            }

            v32 = wk_default_log();
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
LABEL_26:

              goto LABEL_27;
            }

            *buf = 136446722;
            v57 = "+[SPRemoteInterface controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:]";
            v58 = 1024;
            v59 = 2673;
            v60 = 2114;
            v61 = v22;
            v33 = v32;
            v34 = "%{public}s:%d: Invalid setter name for property '%{public}@'";
            v35 = 28;
          }

          else
          {
            v32 = wk_default_log();
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = v43;
            v57 = "+[SPRemoteInterface controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:]";
            v58 = 1024;
            v59 = 2676;
            v60 = 2114;
            v61 = v24;
            v62 = 2114;
            v63 = v22;
            v64 = 2114;
            v65 = v50;
            v33 = v32;
            v34 = "%{public}s:%d: Unable to instantiate object of type '%{public}@' for property %{public}@ in controller %{public}@";
            v35 = 48;
          }

          _os_log_error_impl(&dword_23B338000, v33, OS_LOG_TYPE_ERROR, v34, buf, v35);
          goto LABEL_26;
        }

LABEL_28:

        ++v20;
      }

      while (v16 != v20);
      v40 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
      v16 = v40;
    }

    while (v40);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v44;
}

- (void)receiveProtoData:(id)a3 fromIdentifier:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [(__CFString *)v5 length];
  v8 = wk_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"...";
    v13 = 136447234;
    v14 = "[SPRemoteInterface receiveProtoData:fromIdentifier:]";
    v15 = 1024;
    if (v7 < 0x10)
    {
      v9 = v5;
    }

    v16 = 2689;
    v17 = 2114;
    v18 = v6;
    v19 = 2048;
    v20 = v7;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&dword_23B338000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin clientIdentifier=%{public}@ len=%lu data=%{public}@", &v13, 0x30u);
  }

  v10 = [SPProtoSerializer objectWithData:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = +[SPCompanionAssetCache sharedInstance];
    [v11 handleCacheMessage:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)receiveData:(id)a3 fromIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  kdebug_trace();
  v8 = [[SPProtoSockPuppetPlist alloc] initWithData:v7];

  if (v8)
  {
    [(SPRemoteInterface *)self handleProtoPlist:v8 fromIdentifier:v6];
  }

  else
  {
    v9 = wk_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface receiveData:fromIdentifier:];
    }
  }
}

- (void)handleProtoPlist:(id)a3 fromIdentifier:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [SPProtoSerializer dictionaryWithSPPlist:v6];
  if (v8)
  {
    v9 = [v6 data];
    v10 = [v9 length];
    v11 = wk_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v8 objectForKeyedSubscript:@"V"];
      v14 = v13;
      v16 = 136447235;
      v17 = "[SPRemoteInterface handleProtoPlist:fromIdentifier:]";
      v15 = @"...";
      v18 = 1024;
      v19 = 2749;
      if (v10 < 0x10)
      {
        v15 = v9;
      }

      v20 = 2114;
      v21 = v13;
      v22 = 2048;
      v23 = v10;
      v24 = 2113;
      v25 = v15;
      _os_log_debug_impl(&dword_23B338000, v11, OS_LOG_TYPE_DEBUG, "%{public}s:%d: ComF:->Plugin vcID=%{public}@ len=%lu data=%{private}@", &v16, 0x30u);
    }

    [(SPRemoteInterface *)self handlePlistDictionary:v8 fromIdentifier:v7];
  }

  else
  {
    v9 = wk_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface handleProtoPlist:fromIdentifier:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handlePlistDictionary:(id)a3 fromIdentifier:(id)a4
{
  v146[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"V"];

  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"!"];
    v10 = v9;
    if (v9)
    {
      if ([v9 isEqualToString:@"C"])
      {
        v11 = [v6 objectForKeyedSubscript:@"V"];
        v12 = [v6 objectForKeyedSubscript:@"K"];
        v13 = [v6 objectForKeyedSubscript:@"P"];
        v14 = [v6 objectForKeyedSubscript:@"X"];
        v15 = [v6 objectForKeyedSubscript:@"I"];
        [(SPRemoteInterface *)self createViewController:v11 className:v12 properties:v13 contextID:v14 info:v15 gestureDescriptions:0 clientIdentifier:v7];

LABEL_5:
LABEL_49:

LABEL_112:
        goto LABEL_113;
      }

      if ([v10 isEqualToString:@"R"])
      {
        v22 = [v6 objectForKeyedSubscript:@"V"];
        v23 = wk_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446978;
          *&buf[4] = "[SPRemoteInterface handlePlistDictionary:fromIdentifier:]";
          *&buf[12] = 1024;
          *&buf[14] = 2780;
          *&buf[18] = 2114;
          *&buf[20] = v7;
          *&buf[28] = 2114;
          *&buf[30] = v22;
          _os_log_impl(&dword_23B338000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: !!! Release controller - clientIdentifier:%{public}@, viewControllerIdentifier:%{public}@", buf, 0x26u);
        }

        [(SPRemoteInterface *)self _deregisterInterfaceControllerID:v22];
        goto LABEL_112;
      }

      if ([v10 isEqualToString:@"A"])
      {
        v11 = [v6 objectForKeyedSubscript:@"V"];
        if ([v11 length])
        {
          [(SPRemoteInterface *)self activateViewController:v11 clientIdentifier:v7];
          goto LABEL_49;
        }

        v44 = wk_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [SPRemoteInterface handlePlistDictionary:fromIdentifier:];
        }
      }

      else
      {
        if (![v10 isEqualToString:@"D"])
        {
          if ([v10 isEqualToString:@"N"])
          {
            v11 = [v6 objectForKeyedSubscript:@"V"];
            [(SPRemoteInterface *)self receiveNavigationReply:v11 clientIdentifier:v7];
            goto LABEL_49;
          }

          if (![v10 isEqualToString:@"an"])
          {
            if ([v10 isEqualToString:@"aua"])
            {
              v55 = [v6 objectForKeyedSubscript:@"ua"];
              if (v55)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v56 = spUtils_allowedClassesForUserActivity();
                  v57 = spUtils_deserializeObject(v55, v56);
                }

                else
                {
                  v57 = v55;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v78 = wk_default_log();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                  {
                    [SPRemoteInterface handlePlistDictionary:fromIdentifier:];
                  }
                }

                v79 = [v57 objectForKeyedSubscript:@"uai"];
                v133[0] = MEMORY[0x277D85DD0];
                v133[1] = 3221225472;
                v133[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke;
                v133[3] = &unk_278B7E278;
                v134 = v6;
                v135 = self;
                v136 = v79;
                v80 = v79;
                [SPRemoteInterface handleEvent:v133];
              }
            }

            goto LABEL_112;
          }

          v11 = [v6 objectForKeyedSubscript:@"ni"];
          v12 = [v6 objectForKeyedSubscript:@"ai"];
          v13 = [v6 objectForKeyedSubscript:@"au"];
          v14 = [v6 objectForKeyedSubscript:@"V"];
          [(SPRemoteInterface *)self rootInterfaceController:v14 performActionWithItemID:v12 forNotificationID:v11 userInfo:v13 clientIdentifier:v7 completionHandler:0];
          goto LABEL_5;
        }

        v11 = [v6 objectForKeyedSubscript:@"V"];
        if ([v11 length])
        {
          [(SPRemoteInterface *)self deactivateViewController:v11 clientIdentifier:v7];
          goto LABEL_49;
        }

        v44 = wk_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [SPRemoteInterface handlePlistDictionary:fromIdentifier:];
        }
      }

      goto LABEL_49;
    }

    v99 = [v6 objectForKeyedSubscript:@"V"];
    v98 = [(SPRemoteInterface *)self _interfaceControllerWithID:v99];
    v17 = [v6 objectForKeyedSubscript:@"a"];
    if (v17 && (-[SPRemoteInterface navigatingViewControllerID](self, "navigatingViewControllerID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v99 isEqualToString:v18], v18, v17, (v19 & 1) == 0))
    {
      v97 = [v6 objectForKeyedSubscript:@"a"];
      if ([(NSString *)v97 isEqualToString:@".Marco"])
      {
        v96 = [v6 objectForKeyedSubscript:@"v"];
        v25 = [v96 objectForKeyedSubscript:@".idx"];
        v94 = [v25 integerValue];

        v26 = [v96 objectForKeyedSubscript:@".tr"];
        v93 = [v26 BOOLValue];

        v27 = [v96 objectForKeyedSubscript:@".rs"];
        v28 = [v27 integerValue];

        v29 = [MEMORY[0x277CBEB28] dataWithCapacity:v28];
        [(SPRemoteInterface *)self _fillDataWithRandom:v29 length:v28];
        v145[0] = @".idx";
        v30 = [MEMORY[0x277CCABB0] numberWithInteger:v94];
        v145[1] = @".pl";
        v146[0] = v30;
        v146[1] = v29;
        v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:2];

        v31 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v99];
        v143[0] = @"V";
        v143[1] = @"k";
        v144[0] = v99;
        v144[1] = @".Polo";
        v143[2] = @"v";
        v144[2] = v95;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v143 count:3];
        v142 = v31;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
        [(SPRemoteInterface *)self sendPlist:v32 clientIdentifiers:v33];

        if (v93)
        {
          v34 = dispatch_time(0, 5000000);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_2;
          block[3] = &unk_278B7E368;
          v131 = v94;
          v132 = v28;
          v129 = v99;
          v130 = self;
          dispatch_after(v34, MEMORY[0x277D85CD0], block);
        }
      }

      else if ([(NSString *)v97 isEqualToString:@".select"])
      {
        v36 = [v6 objectForKeyedSubscript:@"v"];
        v37 = [v36 objectAtIndexedSubscript:0];
        v38 = [v36 objectAtIndexedSubscript:1];
        v39 = [v38 integerValue];

        v124[0] = MEMORY[0x277D85DD0];
        v124[1] = 3221225472;
        v124[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_3;
        v124[3] = &unk_278B7E390;
        v98 = v98;
        v125 = v98;
        v126 = v37;
        v127 = v39;
        v40 = v37;
        [SPRemoteInterface handleEvent:v124];
      }

      else if ([(NSString *)v97 isEqualToString:@".segue"])
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        *&buf[24] = 0x7FFFFFFFFFFFFFFFLL;
        v45 = [v6 objectForKeyedSubscript:@"v"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        [v6 objectForKeyedSubscript:@"v"];
        if (isKindOfClass)
          v47 = {;
          v48 = 0;
        }

        else
          v58 = {;
          v59 = [v58 objectAtIndexedSubscript:0];
          v48 = [v98 valueForKey:v59];

          v60 = [v58 objectAtIndexedSubscript:1];
          v61 = [v60 integerValue];
          *(*&buf[8] + 24) = v61;

          v47 = [v58 objectAtIndexedSubscript:2];
        }

        v62 = [v47 objectForKeyedSubscript:@"type"];
        v63 = [v62 isEqualToString:@"present"];

        v64 = [v47 objectForKeyedSubscript:@"destination"];
        objc_opt_class();
        v65 = objc_opt_isKindOfClass();

        v66 = [v47 objectForKeyedSubscript:@"identifier"];
        v116[0] = MEMORY[0x277D85DD0];
        v116[1] = 3221225472;
        v116[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_4;
        v116[3] = &unk_278B7E3B8;
        v67 = v48;
        v117 = v67;
        v122 = v65 & 1;
        v98 = v98;
        v118 = v98;
        v68 = v66;
        v119 = v68;
        v121 = buf;
        v123 = v63;
        v69 = v47;
        v120 = v69;
        [SPRemoteInterface handleEvent:v116];

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v49 = [v6 objectForKeyedSubscript:@"v"];
        v115 = v49;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v49 count] >= 2)
        {
          v50 = [v49 objectAtIndex:0];
          v51 = [v49 objectAtIndex:1];
          v52 = [v51 integerValue];

          if ([v49 count] < 3)
          {
            v53 = 0;
          }

          else
          {
            v53 = [v49 objectAtIndex:2];
          }

          v115 = v53;
          v73 = [v98 valueForKey:v50];
          v74 = v73;
          if (v73 && (v52 & 0x8000000000000000) == 0 && v52 < [v73 numberOfRows])
          {
            v75 = [v74 rowControllerAtIndex:v52];

            v98 = v75;
          }
        }

        else
        {
          v53 = v49;
        }

        if (![(NSString *)v97 isEqualToString:@".pickerSettle"]&& ![(NSString *)v97 isEqualToString:@".pickerFocus"]&& ![(NSString *)v97 isEqualToString:@".pickerClearFocus"])
        {
          v76 = NSSelectorFromString(v97);
          if ((objc_opt_respondsToSelector() & 1) != 0 && ([WKInterfaceController instancesRespondToSelector:v76]& 1) == 0)
          {
            v81 = [objc_opt_class() instanceMethodSignatureForSelector:v76];
            v82 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v81];
            [v82 setTarget:v98];
            [v82 setSelector:v76];
            v83 = wk_default_log();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447490;
              *&buf[4] = "[SPRemoteInterface handlePlistDictionary:fromIdentifier:]";
              *&buf[12] = 1024;
              *&buf[14] = 3057;
              *&buf[18] = 2114;
              *&buf[20] = v98;
              *&buf[28] = 2114;
              *&buf[30] = v97;
              v138 = 2114;
              v139 = v81;
              v140 = 2114;
              v141 = v82;
              _os_log_impl(&dword_23B338000, v83, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: controller controller=%{public}@ action=%{public}@ methodSignature=%{public}@ invocation=%{public}@", buf, 0x3Au);
            }

            if (v53 && [v81 numberOfArguments] >= 3)
            {
              v84 = v81;
              v85 = [v81 getArgumentTypeAtIndex:2];
              v86 = v85;
              if (*v85 == 64 && !v85[1])
              {
                [v82 setArgument:&v115 atIndex:2];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v87 = *v86;
                  if (v87 <= 0x62)
                  {
                    if (*v86 <= 0x48u)
                    {
                      if (v87 == 66)
                      {
                        if (!v86[1])
                        {
                          buf[0] = [v115 BOOLValue];
                          [v82 setArgument:buf atIndex:2];
                        }
                      }

                      else if (v87 == 67 && !v86[1])
                      {
                        buf[0] = [v115 unsignedCharValue];
                        [v82 setArgument:buf atIndex:2];
                      }
                    }

                    else if (v87 == 73)
                    {
                      if (!v86[1])
                      {
                        *buf = [v115 unsignedIntValue];
                        [v82 setArgument:buf atIndex:2];
                      }
                    }

                    else if (v87 == 81)
                    {
                      if (!v86[1])
                      {
                        *buf = [v115 unsignedIntegerValue];
                        [v82 setArgument:buf atIndex:2];
                      }
                    }

                    else if (v87 == 83 && !v86[1])
                    {
                      *buf = [v115 unsignedShortValue];
                      [v82 setArgument:buf atIndex:2];
                    }
                  }

                  else if (*v86 > 0x68u)
                  {
                    if (v87 == 105)
                    {
                      if (!v86[1])
                      {
                        *buf = [v115 intValue];
                        [v82 setArgument:buf atIndex:2];
                      }
                    }

                    else if (v87 == 113)
                    {
                      if (!v86[1])
                      {
                        *buf = [v115 integerValue];
                        [v82 setArgument:buf atIndex:2];
                      }
                    }

                    else if (v87 == 115 && !v86[1])
                    {
                      *buf = [v115 shortValue];
                      [v82 setArgument:buf atIndex:2];
                    }
                  }

                  else if (v87 == 99)
                  {
                    if (!v86[1])
                    {
                      buf[0] = [v115 charValue];
                      [v82 setArgument:buf atIndex:2];
                    }
                  }

                  else if (v87 == 100)
                  {
                    if (!v86[1])
                    {
                      [v115 doubleValue];
                      *buf = v92;
                      [v82 setArgument:buf atIndex:2];
                    }
                  }

                  else if (v87 == 102 && !v86[1])
                  {
                    [v115 floatValue];
                    *buf = v88;
                    [v82 setArgument:buf atIndex:2];
                  }
                }

                else
                {
                  v89 = wk_default_log();
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                  {
                    [SPRemoteInterface handlePlistDictionary:fromIdentifier:];
                  }
                }
              }
            }

            v113[0] = MEMORY[0x277D85DD0];
            v113[1] = 3221225472;
            v113[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_513;
            v113[3] = &unk_278B7E200;
            v114 = v82;
            v90 = v82;
            [SPRemoteInterface handleEvent:v113];

            v53 = v115;
          }

          else if (![(NSString *)v97 isEqualToString:@".Marco"])
          {
            v77 = wk_default_log();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              [SPRemoteInterface handlePlistDictionary:fromIdentifier:];
            }
          }
        }
      }

      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_514;
      v111[3] = &unk_278B7E200;
      v112 = v99;
      [SPRemoteInterface handleEvent:v111];

      v21 = v97;
    }

    else
    {
      v20 = [v6 objectForKeyedSubscript:@"k"];

      if (!v20)
      {
LABEL_111:

        goto LABEL_112;
      }

      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_2_515;
      v108[3] = &unk_278B7E2F0;
      v98 = v98;
      v109 = v98;
      v110 = v6;
      [SPRemoteInterface handleEvent:v108];

      v21 = v109;
    }

    goto LABEL_111;
  }

  v16 = [v6 objectForKeyedSubscript:@"tI"];

  if (v16)
  {
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_3_516;
    v106[3] = &unk_278B7E2F0;
    v106[4] = self;
    v107 = v6;
    spUtils_dispatchAsyncToMainThread(v106);
  }

  else
  {
    v24 = [v6 objectForKeyedSubscript:@"tL"];

    if (v24)
    {
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_4_517;
      v103[3] = &unk_278B7E278;
      v103[4] = self;
      v104 = v6;
      v105 = v7;
      spUtils_dispatchAsyncToMainThread(v103);
    }

    else
    {
      v35 = [v6 objectForKeyedSubscript:@"pkf"];

      if (v35)
      {
        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 3221225472;
        v102[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_5;
        v102[3] = &unk_278B7E200;
        v102[4] = self;
        spUtils_dispatchAsyncToMainThread(v102);
      }

      else
      {
        v41 = [v6 objectForKeyedSubscript:@"lm"];

        if (v41)
        {
          v42 = [v6 objectForKeyedSubscript:@"lm"];
          NSLog(&stru_284DFF2B8.isa, v42);

          v43 = wk_default_log();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [SPRemoteInterface handlePlistDictionary:v6 fromIdentifier:@"lm"];
          }
        }

        else
        {
          v54 = [v6 objectForKeyedSubscript:@"cc"];

          if (v54)
          {
            v100[0] = MEMORY[0x277D85DD0];
            v100[1] = 3221225472;
            v100[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_518;
            v100[3] = &unk_278B7E2F0;
            v100[4] = self;
            v101 = v6;
            spUtils_dispatchAsyncToMainThread(v100);
          }

          else
          {
            v70 = [v6 objectForKeyedSubscript:@"cd"];

            if (v70)
            {
              v71 = [(SPRemoteInterface *)self activeComplicationsConnections];
              v72 = [v71 containsObject:v7];

              if ((v72 & 1) == 0)
              {
                [(SPRemoteInterface *)self applicationDidFinishConnecting:v7];
                [(SPRemoteInterface *)self dataInterfaceDidBecomeActive:v7];
              }

              [(SPRemoteInterface *)self getComplicationData:v7];
            }
          }
        }
      }
    }
  }

LABEL_113:

  v91 = *MEMORY[0x277D85DE8];
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"V"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) _interfaceControllerWithID:*(*(&v12 + 1) + 8 * v6)];
        [v7 handleUserActivity:*(a1 + 48)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 40);
  v9 = [v2 firstObject];
  v10 = [v8 _interfaceControllerWithID:v9];
  [SPRemoteInterface didFinishHandlingActivity:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_2(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v7[0] = *(a1 + 32);
  v6[0] = @"V";
  v6[1] = @".idx";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v7[1] = v2;
  v6[2] = @".rs";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v7[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  [*(a1 + 40) _requestTimingData:v4];
  v5 = *MEMORY[0x277D85DE8];
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = [v2 valueForKey:a1[5]];
  [v2 table:v3 didSelectRowAtIndex:a1[6]];
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 72);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v4)
  {
    v6 = *(*(*(a1 + 64) + 8) + 24);
    if (v2)
    {
      v7 = [v3 contextsForSegueWithIdentifier:v5 inTable:? rowIndex:?];
LABEL_6:
      v8 = v7;
      v14 = 0;
      goto LABEL_10;
    }

    v9 = [v3 contextForSegueWithIdentifier:v5 inTable:? rowIndex:?];
  }

  else
  {
    if (v2)
    {
      v7 = [v3 contextsForSegueWithIdentifier:v5];
      goto LABEL_6;
    }

    v9 = [v3 contextForSegueWithIdentifier:v5];
  }

  v14 = v9;
  v8 = 0;
LABEL_10:
  v10 = *(a1 + 72);
  if (*(a1 + 73) == 1)
  {
    v11 = *(a1 + 40);
    v12 = [*(a1 + 56) objectForKeyedSubscript:@"destination"];
    if (v10)
    {
      [SPRemoteInterface controller:v11 presentInterfaceControllers:v12 contexts:v8];
    }

    else
    {
      [SPRemoteInterface controller:v11 presentInterfaceController:v12 context:v14];
    }
  }

  else
  {
    if (v10)
    {
      goto LABEL_17;
    }

    v13 = *(a1 + 40);
    v12 = [*(a1 + 56) objectForKeyedSubscript:@"destination"];
    [SPRemoteInterface controller:v13 pushInterfaceController:v12 context:v14];
  }

LABEL_17:
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_2_515(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"v"];
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"k"];
  [v2 setValue:v4 forKey:v3];
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_3_516(uint64_t a1)
{
  if (*(*(a1 + 32) + 88))
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:@"tI"];
    v2 = *(*(a1 + 32) + 88);
    if ([v8 count])
    {
      v3 = v8;
    }

    else
    {
      v3 = 0;
    }

    (*(v2 + 16))(v2, v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = 0;

    v6 = *(a1 + 32);
    v7 = *(v6 + 96);
    *(v6 + 96) = 0;
  }
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_4_517(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 96);
  if (v1)
  {
    v3 = [*(a1 + 40) objectForKeyedSubscript:@"tL"];
    v4 = (*(v1 + 16))(v1, v3);

    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    v11 = @"tS";
    v12[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = *(a1 + 32);
    v10 = *(a1 + 48);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [v7 sendPlist:v6 clientIdentifiers:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) addPassesCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) addPassesCompletion];
    v3[2]();

    v4 = *(a1 + 32);

    [v4 setAddPassesCompletion:0];
  }
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_518(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 8);
    v6 = [v3 objectForKeyedSubscript:@"cc"];
    [v5 remoteInterface:v4 setComplicationDataClassName:v6];
  }
}

- (void)createViewController:(id)a3 className:(id)a4 properties:(id)a5 contextID:(id)a6 info:(id)a7 gestureDescriptions:(id)a8 clientIdentifier:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (!WKInterfaceControllerClass() || (v22 = NSClassFromString(v16), ![(objc_class *)v22 isSubclassOfClass:WKInterfaceControllerClass()]))
  {
    v30 = NSClassFromString(v16);
    v31 = wk_default_log();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        [SPRemoteInterface createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:];
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is not a subclass of WKInterfaceController", v16];
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Condition failed:%s. %@", "NO", objc_claimAutoreleasedReturnValue()];
      v34 = wk_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SPRemoteInterface createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:];
      }
    }

    else
    {
      if (v32)
      {
        [SPRemoteInterface createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:];
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't instantiate class %@", v16];
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Condition failed:%s. %@", "NO", objc_claimAutoreleasedReturnValue()];
      v34 = wk_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SPRemoteInterface createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:];
      }
    }

    __abort_with_reason([v33 UTF8String]);
    exit(1);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke;
  v35[3] = &unk_278B7E4D0;
  v36 = v19;
  v37 = v18;
  v38 = self;
  v39 = v21;
  v40 = v15;
  v41 = v16;
  v42 = v17;
  v43 = v20;
  v23 = v20;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  v27 = v21;
  v28 = v18;
  v29 = v19;
  [SPRemoteInterface handleEvent:v35];
}

void __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"s"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"ir"];
  v4 = [v3 BOOLValue];

  if ([v2 count] < 4)
  {
    v7 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v5 = [v2 objectAtIndexedSubscript:0];
    [v5 floatValue];
    v7 = v6;
    v8 = [v2 objectAtIndexedSubscript:1];
    [v8 floatValue];
    v10 = v9;
    v11 = [v2 objectAtIndexedSubscript:2];
    [v11 floatValue];
    v13 = v12;
    v14 = [v2 objectAtIndexedSubscript:3];
    [v14 floatValue];
    v16 = v15;
  }

  v17 = [*(a1 + 40) integerValue];
  v19 = *(a1 + 40);
  v18 = *(a1 + 48);
  if (v17 < 0)
  {
    [v18 pageInterfaceCreationContextForID:v19];
  }

  else
  {
    [v18 interfaceCreationContextForID:v19];
  }
  v20 = ;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_2;
  v31[3] = &unk_278B7E458;
  v32 = *(a1 + 56);
  v33 = *(a1 + 64);
  v34 = *(a1 + 72);
  v21 = v20;
  v35 = v21;
  v39 = v7;
  v40 = v10;
  v41 = v13;
  v42 = v16;
  v36 = *(a1 + 80);
  v22 = *(a1 + 88);
  v23 = *(a1 + 48);
  v37 = v22;
  v38 = v23;
  v43 = v4;
  v24 = MEMORY[0x23EE9A9D0](v31);
  if (__pageInterfaceCreationContexts_block_invoke_2_onceToken != -1)
  {
    __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_cold_1();
  }

  if ([NSClassFromString(*(a1 + 72)) isSubclassOfClass:__pageInterfaceCreationContexts_block_invoke_2___wkUserNotificationInterfaceControllerClass])
  {
    v25 = [*(a1 + 32) objectForKeyedSubscript:@"ni"];
    v26 = v25;
    if (v25)
    {
      v27 = *(a1 + 48);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_531;
      v28[3] = &unk_278B7E4A8;
      v29 = v25;
      v30 = v24;
      [v27 fetchNotificationForNotificationID:v29 completion:v28];
    }

    else
    {
      v24[2](v24, v4, 0, 0, 0, 0);
    }
  }

  else
  {
    v24[2](v24, v4, 0, 0, 0, 0);
  }
}

void __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy_;
  v43 = __Block_byref_object_dispose_;
  v44 = 0;
  v13 = wk_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    *buf = 136447234;
    v46 = "[SPRemoteInterface createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:]_block_invoke_2";
    v47 = 1024;
    v48 = 3197;
    v49 = 2114;
    v50 = v14;
    v51 = 2114;
    v52 = v15;
    v53 = 2114;
    v54 = v16;
    _os_log_impl(&dword_23B338000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: !!! Create controller - clientIdentifier:%{public}@, viewControllerIdentifier:%{public}@, className:%{public}@", buf, 0x30u);
  }

  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v20 = *(a1 + 56);
  v19 = *(a1 + 64);
  v21 = *(a1 + 72);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_521;
  v30[3] = &unk_278B7E408;
  v22 = v12;
  v31 = v22;
  v23 = v10;
  v32 = v23;
  v24 = v11;
  v37 = &v39;
  v25 = *(a1 + 80);
  v33 = v24;
  v34 = v25;
  v35 = *(a1 + 40);
  v36 = *(a1 + 32);
  v38 = *(a1 + 120);
  v26 = _WKInterfaceControllerCreateClass(v18, v20, v17, v19, v21, v30, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
  if (a6)
  {
    [*(a1 + 80) extensionDidBeginNotificationUICreation];
    v27 = v40[5];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_3;
    v29[3] = &unk_278B7E430;
    v29[4] = *(a1 + 80);
    v29[5] = &v39;
    [v27 _didReceiveNotification:v22 remoteNotification:v23 localNotification:v24 withCompletion:v29];
  }

  _Block_object_dispose(&v39, 8);
  v28 = *MEMORY[0x277D85DE8];
}

void __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_521(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 32) || *(a1 + 40) || *(a1 + 48))
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a2);
  }

  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(v6 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_2_522;
  block[3] = &unk_278B7E3E0;
  block[4] = v6;
  v10 = v4;
  v11 = v5;
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  v8 = v4;
  dispatch_barrier_sync(v7, block);
  [v8 didRegisterWithRemoteInterface];
}

uint64_t __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [SPRemoteInterface notificationController:*(*(*(a1 + 40) + 8) + 40) showNotificationInterfaceType:a2];
  v3 = *(a1 + 32);

  return [v3 extensionDidEndNotificationUICreation];
}

Class __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_4()
{
  result = NSClassFromString(&cfstr_Wkusernotifica.isa);
  __pageInterfaceCreationContexts_block_invoke_2___wkUserNotificationInterfaceControllerClass = result;
  return result;
}

void __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_531(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = wk_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_531_cold_1(a1);
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_532;
  v18[3] = &unk_278B7E480;
  v14 = *(a1 + 40);
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v14;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  spUtils_dispatchAsyncToMainThread(v18);
}

- (void)activateViewController:(id)a3 clientIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__SPRemoteInterface_activateViewController_clientIdentifier___block_invoke;
    v12[3] = &unk_278B7E278;
    v12[4] = self;
    v8 = v6;
    v13 = v8;
    v14 = v7;
    [SPRemoteInterface handleEvent:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__SPRemoteInterface_activateViewController_clientIdentifier___block_invoke_2;
    v10[3] = &unk_278B7E200;
    v11 = v8;
    [SPRemoteInterface handleEvent:v10];
  }

  else
  {
    v9 = wk_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface activateViewController:clientIdentifier:];
    }
  }
}

- (void)_activateViewController:(id)a3 clientIdentifier:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(SPRemoteInterface *)self _interfaceControllerWithID:v5];
  [SPRemoteInterface setControllerActive:v5];

  v7 = wk_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 viewControllerID];
    v10 = 136446722;
    v11 = "[SPRemoteInterface _activateViewController:clientIdentifier:]";
    v12 = 1024;
    v13 = 3327;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_23B338000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling willActivate for %{public}@", &v10, 0x1Cu);
  }

  [v6 willActivate];
  [(SPRemoteInterface *)self sendWillActivateReplyForController:v6];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)deactivateViewController:(id)a3 clientIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(SPRemoteInterface *)self _interfaceControllerWithID:v6];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__SPRemoteInterface_deactivateViewController_clientIdentifier___block_invoke;
    v10[3] = &unk_278B7E2F0;
    v11 = v6;
    v12 = v8;
    v9 = v8;
    [SPRemoteInterface handleEvent:v10];
  }

  else
  {
    v9 = wk_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface deactivateViewController:clientIdentifier:];
    }
  }
}

uint64_t __63__SPRemoteInterface_deactivateViewController_clientIdentifier___block_invoke(uint64_t a1)
{
  [SPRemoteInterface setControllerInactive:*(a1 + 32)];
  v2 = *(a1 + 40);

  return [v2 didDeactivate];
}

- (void)receiveNavigationReply:(id)a3 clientIdentifier:(id)a4
{
  v5 = a3;
  v6 = [(SPRemoteInterface *)self navigatingViewControllerID];
  v7 = [v6 isEqualToString:v5];

  if (v7)
  {

    [(SPRemoteInterface *)self setNavigatingViewControllerID:0];
  }
}

- (void)applicationDidTerminate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v12 = "[SPRemoteInterface applicationDidTerminate:]";
    v13 = 1024;
    v14 = 3433;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", buf, 0x1Cu);
  }

  [(SPRemoteInterface *)self removeInterfaceControllersForClient:v4];
  v6 = [(SPRemoteInterface *)self activeComplicationsConnections];
  v7 = [v6 indexOfObject:v4];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(SPRemoteInterface *)self activeComplicationsConnections];
    [v8 removeObjectAtIndex:v7];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__SPRemoteInterface_applicationDidTerminate___block_invoke;
    v10[3] = &unk_278B7E200;
    v10[4] = self;
    spUtils_dispatchAsyncToMainThread(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __45__SPRemoteInterface_applicationDidTerminate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(*(a1 + 32) + 8);

    return [v4 dataInterfaceWillResignActive:?];
  }

  return result;
}

- (void)applicationContentsDidReset:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[SPRemoteInterface applicationContentsDidReset:]";
    v9 = 1024;
    v10 = 3449;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", &v7, 0x1Cu);
  }

  [(SPRemoteInterface *)self removeInterfaceControllersForClient:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)applicationDidFinishConnecting:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v9 = "[SPRemoteInterface applicationDidFinishConnecting:]";
    v10 = 1024;
    v11 = 3456;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SPRemoteInterface_applicationDidFinishConnecting___block_invoke;
  v7[3] = &unk_278B7E200;
  v7[4] = self;
  spUtils_dispatchAsyncToMainThread(v7);

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __52__SPRemoteInterface_applicationDidFinishConnecting___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(*(a1 + 32) + 8);

    return [v4 remoteInterfaceDidFinishConnecting:?];
  }

  return result;
}

- (void)applicationDidBecomeActive:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = wk_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[SPRemoteInterface applicationDidBecomeActive:]";
    v7 = 1024;
    v8 = 3618;
    _os_log_impl(&dword_23B338000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)applicationWillResignActive:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = wk_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[SPRemoteInterface applicationWillResignActive:]";
    v7 = 1024;
    v8 = 3642;
    _os_log_impl(&dword_23B338000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)applicationDidReceiveNotification:(id)a3 clientIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (spUtils_isApplicationCompanionConnectionClientIdentifier(a4))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __94__SPRemoteInterface_applicationDidReceiveNotification_clientIdentifier_withCompletionHandler___block_invoke;
    v9[3] = &unk_278B7E4F8;
    v10 = v7;
    v11 = v8;
    spUtils_dispatchAsyncToMainThread(v9);
  }
}

void __94__SPRemoteInterface_applicationDidReceiveNotification_clientIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAAC8];
  getUNNotificationClass();
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v11 = 0;
  v5 = [v2 unarchivedObjectOfClass:v3 fromData:v4 error:&v11];
  v6 = v11;
  if (!v5)
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __94__SPRemoteInterface_applicationDidReceiveNotification_clientIdentifier_withCompletionHandler___block_invoke_cold_1();
    }
  }

  v8 = [getUNUserNotificationCenterClass() currentNotificationCenter];
  v9 = [v8 delegate];

  if (objc_opt_respondsToSelector())
  {
    NSClassFromString(&cfstr_Spapplicationd.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [getUNUserNotificationCenterClass() currentNotificationCenter];
      [v9 userNotificationCenter:v10 willPresentNotification:v5 withCompletionHandler:*(a1 + 40)];
    }
  }
}

- (void)applicationHandleWatchTaskKeys:(id)a3 reasonForSnapshot:(unint64_t)a4 visibleVCID:(id)a5 barTaskUUID:(id)a6 clientIdentifier:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (spUtils_isApplicationCompanionConnectionClientIdentifier(v14))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __111__SPRemoteInterface_applicationHandleWatchTaskKeys_reasonForSnapshot_visibleVCID_barTaskUUID_clientIdentifier___block_invoke;
    v15[3] = &unk_278B7E520;
    v15[4] = self;
    v16 = v12;
    v17 = v11;
    v18 = v13;
    v19 = v14;
    spUtils_dispatchAsyncToMainThread(v15);
  }
}

void __111__SPRemoteInterface_applicationHandleWatchTaskKeys_reasonForSnapshot_visibleVCID_barTaskUUID_clientIdentifier___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __111__SPRemoteInterface_applicationHandleWatchTaskKeys_reasonForSnapshot_visibleVCID_barTaskUUID_clientIdentifier___block_invoke_2;
  v8[3] = &unk_278B7E520;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  [v3 performAfterApplicationDidFinishLaunching:v8];
}

void __111__SPRemoteInterface_applicationHandleWatchTaskKeys_reasonForSnapshot_visibleVCID_barTaskUUID_clientIdentifier___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = wk_bg_app_refresh_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) allKeys];
    v5 = *(a1 + 48);
    *buf = 136447234;
    v18 = "[SPRemoteInterface applicationHandleWatchTaskKeys:reasonForSnapshot:visibleVCID:barTaskUUID:clientIdentifier:]_block_invoke_2";
    v19 = 1024;
    v20 = 3775;
    v21 = 2114;
    v22 = v3;
    v23 = 2114;
    v24 = v4;
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&dword_23B338000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Waiting on finishActivatingVCWithID:%{public}@ with taskKeys %{public}@, barTaskUUID=%{public}@", buf, 0x30u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__SPRemoteInterface_applicationHandleWatchTaskKeys_reasonForSnapshot_visibleVCID_barTaskUUID_clientIdentifier___block_invoke_553;
  v14[3] = &unk_278B7E2C8;
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v6;
  *(&v12 + 1) = v8;
  v15 = v12;
  v16 = v11;
  [v6 finishActivatingVCWithID:v7 completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __111__SPRemoteInterface_applicationHandleWatchTaskKeys_reasonForSnapshot_visibleVCID_barTaskUUID_clientIdentifier___block_invoke_553(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = wk_bg_app_refresh_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[SPRemoteInterface applicationHandleWatchTaskKeys:reasonForSnapshot:visibleVCID:barTaskUUID:clientIdentifier:]_block_invoke";
    v15 = 1024;
    v16 = 3845;
    _os_log_impl(&dword_23B338000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Finished activating for snapshot", buf, 0x12u);
  }

  v3 = a1[4];
  if (a1[5])
  {
    v4 = a1[5];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v11[0] = @"hT";
  v11[1] = @"Ui";
  v12[0] = v4;
  v5 = a1[6];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
  }

  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v10 = a1[7];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [v3 sendPlist:v7 clientIdentifiers:v8];

  if (!v5)
  {
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)applicationIsStillActive
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[SPRemoteInterface applicationIsStillActive]";
    v6 = 1024;
    v7 = 3856;
    _os_log_impl(&dword_23B338000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)dataInterfaceDidBecomeActive:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v12 = "[SPRemoteInterface dataInterfaceDidBecomeActive:]";
    v13 = 1024;
    v14 = 3892;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", buf, 0x1Cu);
  }

  v6 = [(SPRemoteInterface *)self activeComplicationsConnections];
  v7 = [v6 containsObject:v4];

  if ((v7 & 1) == 0)
  {
    v8 = [(SPRemoteInterface *)self activeComplicationsConnections];
    [v8 addObject:v4];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__SPRemoteInterface_dataInterfaceDidBecomeActive___block_invoke;
  v10[3] = &unk_278B7E200;
  v10[4] = self;
  spUtils_dispatchAsyncToMainThread(v10);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __50__SPRemoteInterface_dataInterfaceDidBecomeActive___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(*(a1 + 32) + 8);

    return [v4 dataInterfaceDidBecomeActive:?];
  }

  return result;
}

- (void)dataInterfaceWillResignActive:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "[SPRemoteInterface dataInterfaceWillResignActive:]";
    v11 = 1024;
    v12 = 3907;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", buf, 0x1Cu);
  }

  v6 = [(SPRemoteInterface *)self activeComplicationsConnections];
  [v6 removeObject:v4];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__SPRemoteInterface_dataInterfaceWillResignActive___block_invoke;
  v8[3] = &unk_278B7E200;
  v8[4] = self;
  spUtils_dispatchAsyncToMainThread(v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __51__SPRemoteInterface_dataInterfaceWillResignActive___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(*(a1 + 32) + 8);

    return [v4 dataInterfaceWillResignActive:?];
  }

  return result;
}

- (void)preferredContentSizeCategory:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v9 = "[SPRemoteInterface preferredContentSizeCategory:]";
    v10 = 1024;
    v11 = 3918;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_23B338000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", buf, 0x1Cu);
  }

  if (v3 && (!preferredContentSizeCategory____textSize || [v3 compare:?]))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__SPRemoteInterface_preferredContentSizeCategory___block_invoke;
    v6[3] = &unk_278B7E200;
    v7 = v3;
    spUtils_dispatchAsyncToMainThread(v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __50__SPRemoteInterface_preferredContentSizeCategory___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  objc_storeStrong(&preferredContentSizeCategory____textSize, *(a1 + 32));
  v1 = preferredContentSizeCategory____textSize;
  v2 = +[WKInterfaceDevice currentDevice];
  [v2 setPreferredContentSizeCategory:v1];

  v7 = *MEMORY[0x277D76850];
  v8[0] = preferredContentSizeCategory____textSize;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [MEMORY[0x277CCAB88] notificationWithName:*MEMORY[0x277D76810] object:0 userInfo:v3];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotification:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)layoutDirection:(int64_t)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[SPRemoteInterface layoutDirection:]";
    v8 = 1024;
    v9 = 3939;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_23B338000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %d", &v6, 0x18u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleAction:(id)a3 forNotification:(id)a4 remoteNotificationContext:(id)a5 localNotification:(id)a6 unNotification:(id)a7 handler:(id)a8 controller:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v15;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v23 = getUNNotificationDefaultActionIdentifierSymbolLoc_ptr;
  v55 = getUNNotificationDefaultActionIdentifierSymbolLoc_ptr;
  if (!getUNNotificationDefaultActionIdentifierSymbolLoc_ptr)
  {
    v47 = MEMORY[0x277D85DD0];
    v48 = 3221225472;
    v49 = __getUNNotificationDefaultActionIdentifierSymbolLoc_block_invoke;
    v50 = &unk_278B7E070;
    v51 = &v52;
    v24 = UserNotificationsLibrary();
    v53[3] = dlsym(v24, "UNNotificationDefaultActionIdentifier");
    getUNNotificationDefaultActionIdentifierSymbolLoc_ptr = *(v51[1] + 24);
    v23 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v23)
  {
    [SPRemoteInterface _handleAction:forNotification:remoteNotificationContext:localNotification:unNotification:handler:controller:];
  }

  v25 = [(__CFString *)v22 isEqualToString:*v23];
  v26 = v22;
  if (v25)
  {

    v26 = &stru_284DFE9D8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v18 || v17 || v19)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke;
      v40[3] = &unk_278B7E548;
      v41 = v20;
      v42 = v22;
      v43 = v19;
      v44 = v17;
      v45 = v18;
      v46 = v21;
      [SPRemoteInterface handleEvent:v40];

      v27 = 1;
      v28 = v41;
    }

    else
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_2;
      v36[3] = &unk_278B7E570;
      v37 = v21;
      v38 = v20;
      v39 = v26;
      [(SPRemoteInterface *)self fetchNotificationForNotificationID:v16 completion:v36];

      v27 = 1;
      v28 = v37;
    }
  }

  else
  {
    v29 = [getUNUserNotificationCenterClass() currentNotificationCenter];
    v28 = [v29 delegate];

    if ((objc_opt_respondsToSelector() & 1) != 0 && (NSClassFromString(&cfstr_Spapplicationd.isa), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_3;
      v31[3] = &unk_278B7E2C8;
      v28 = v28;
      v32 = v28;
      v33 = v22;
      v34 = v19;
      v35 = v21;
      [SPRemoteInterface handleEvent:v31];

      v27 = 1;
    }

    else
    {
      v27 = 0;
    }
  }

  return v27;
}

uint64_t __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleActionWithIdentifier:*(a1 + 40) forNotification:*(a1 + 48) remoteNotification:*(a1 + 56) localNotification:*(a1 + 64)];
  v2 = *(a1 + 72);

  return [SPRemoteInterface didFinishHandlingActivity:v2];
}

void __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_2(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = wk_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_2_cold_1();
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_560;
    v22[3] = &unk_278B7E200;
    v14 = &v23;
    v23 = a1[4];
    [SPRemoteInterface handleEvent:v22];
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_2_561;
    v15[3] = &unk_278B7E548;
    v14 = &v16;
    v16 = a1[5];
    v17 = a1[6];
    v18 = v11;
    v19 = v9;
    v20 = v10;
    v21 = a1[4];
    [SPRemoteInterface handleEvent:v15];
  }
}

uint64_t __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_2_561(uint64_t a1)
{
  [*(a1 + 32) _handleActionWithIdentifier:*(a1 + 40) forNotification:*(a1 + 48) remoteNotification:*(a1 + 56) localNotification:*(a1 + 64)];
  v2 = *(a1 + 72);

  return [SPRemoteInterface didFinishHandlingActivity:v2];
}

uint64_t __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_3(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 136446978;
    *&buf[4] = "[SPRemoteInterface _handleAction:forNotification:remoteNotificationContext:localNotification:unNotification:handler:controller:]_block_invoke_3";
    *&buf[12] = 1024;
    *&buf[14] = 4111;
    *&buf[18] = 2114;
    *&buf[20] = v3;
    *&buf[28] = 2114;
    *&buf[30] = v4;
    _os_log_impl(&dword_23B338000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler: on notifCenterDelegate %{public}@ with actionItemID %{public}@", buf, 0x26u);
  }

  v5 = a1[4];
  v6 = [getUNUserNotificationCenterClass() currentNotificationCenter];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v7 = getUNNotificationResponseClass_softClass;
  v15 = getUNNotificationResponseClass_softClass;
  if (!getUNNotificationResponseClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getUNNotificationResponseClass_block_invoke;
    *&buf[24] = &unk_278B7E070;
    *&buf[32] = &v12;
    __getUNNotificationResponseClass_block_invoke(buf);
    v7 = v13[3];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);
  v9 = [v7 responseWithNotification:a1[6] actionIdentifier:{a1[5], v12}];
  [v5 userNotificationCenter:v6 didReceiveNotificationResponse:v9 withCompletionHandler:&__block_literal_global_566];

  result = [SPRemoteInterface didFinishHandlingActivity:a1[7]];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)rootInterfaceController:(id)a3 performActionWithItemID:(id)a4 forNotificationID:(id)a5 userInfo:(id)a6 clientIdentifier:(id)a7 completionHandler:(id)a8
{
  v31 = a3;
  v32 = a4;
  v13 = a5;
  v14 = a8;
  v15 = a6;
  v16 = [v15 objectForKeyedSubscript:@"nC"];
  v17 = [v15 objectForKeyedSubscript:@"nD"];
  v18 = [v15 objectForKeyedSubscript:@"nUD"];

  if (v18)
  {
    v19 = MEMORY[0x277CCAAC8];
    getUNNotificationClass();
    v34 = 0;
    v20 = [v19 unarchivedObjectOfClass:objc_opt_class() fromData:v18 error:&v34];
    v21 = v34;
    if (!v20)
    {
      v22 = wk_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SPRemoteInterface rootInterfaceController:performActionWithItemID:forNotificationID:userInfo:clientIdentifier:completionHandler:];
      }
    }
  }

  if (v17)
  {
    v33 = 0;
    v23 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v17 error:&v33];
    v24 = v33;
    v25 = v31;
    if (!v23)
    {
      v26 = wk_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SPRemoteInterface rootInterfaceController:performActionWithItemID:forNotificationID:userInfo:clientIdentifier:completionHandler:];
      }
    }
  }

  else
  {
    v23 = 0;
    v25 = v31;
  }

  v27 = v32;
  if (!v16)
  {
    v28 = [0 request];
    v29 = [v28 content];
    v16 = [v29 userInfo];

    v27 = v32;
  }

  v30 = [(SPRemoteInterface *)self _interfaceControllerWithID:v25];
  if (![(SPRemoteInterface *)self _handleAction:v27 forNotification:v13 remoteNotificationContext:v16 localNotification:v23 unNotification:0 handler:0 controller:v30])
  {
    [(SPRemoteInterface *)self _handleAction:v27 forNotification:v13 remoteNotificationContext:v16 localNotification:v23 unNotification:0 handler:v30 controller:v30];
  }

  if (v14)
  {
    v14[2](v14);
  }
}

- (void)getComplicationData:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v9 = "[SPRemoteInterface getComplicationData:]";
    v10 = 1024;
    v11 = 4391;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SPRemoteInterface_getComplicationData___block_invoke;
  v7[3] = &unk_278B7E200;
  v7[4] = self;
  spUtils_dispatchAsyncToMainThread(v7);

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __41__SPRemoteInterface_getComplicationData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(*(a1 + 32) + 8);

    return [v4 getComplicationData:?];
  }

  return result;
}

- (void)_fillDataWithRandom:(id)a3 length:(int64_t)a4
{
  v5 = a3;
  if ((_fillDataWithRandom_length__inited & 1) == 0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    srand(v6);
    _fillDataWithRandom_length__inited = 1;
  }

  v7 = a4 + 3;
  if (a4 >= 0)
  {
    v7 = a4;
  }

  if (a4 >= 4)
  {
    v8 = 0;
    v9 = v7 >> 2;
    do
    {
      v10 = rand();
      [v5 replaceBytesInRange:v8 withBytes:{4, &v10}];
      v8 += 4;
      --v9;
    }

    while (v9);
  }
}

- (id)controllerMethods:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  outCount = 0;
  Class = object_getClass(v3);
  v6 = class_copyMethodList(Class, &outCount);
  if (v6)
  {
    v7 = v6;
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        Name = method_getName(v7[i]);
        v9 = [MEMORY[0x277CCAE60] valueWithBytes:&Name objCType:":"];
        [v4 addObject:v9];
      }
    }

    free(v7);
  }

  return v4;
}

void __38__SPRemoteInterface__remoteIdentifier__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __36__SPRemoteInterface_initWithBundle___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setupSignal:handler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendData:clientIdentifiers:reply:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 623;
  _os_log_debug_impl(&dword_23B338000, v0, OS_LOG_TYPE_DEBUG, "%{public}s:%d: ComF:->ComD", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)sendData:clientIdentifiers:reply:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendPlist:clientIdentifiers:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendPlist:clientIdentifiers:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_requestTimingData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchNotificationForNotificationID:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__SPRemoteInterface_fetchNotificationForNotificationID_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__SPRemoteInterface_fetchNotificationForNotificationID_completion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateUserActivity:userInfo:webpageURL:controller:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sendCacheRequestMessage:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendCacheRequestMessage:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)sendCacheRequest:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)controller:pushInterfaceController:initializationContextID:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)controllerPop:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)controllerPopToRoot:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)controllerBecomeCurrentPage:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)controller:presentInterfaceController:initializationContextID:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)controller:presentInterfaceControllers:initializationContextIDs:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)controllerDismiss:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)controllerPresentTextInputController:allowedInputMode:suggestions:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (object:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)controllerDismissTextInputController:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (object:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)controllerPresentAddPassesController:passes:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (object:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)controllerDismissAddPassesController:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (object:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)didFinishHandlingActivity:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (object:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)notificationController:showNotificationInterfaceType:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (object:%{public}@) has no client identifier", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_tellApplicationThatInterfaceControllerCantBeFound:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_interfaceControllerWithID:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  *a3 = 136446978;
  *(a3 + 4) = "[SPRemoteInterface _interfaceControllerWithID:]";
  *(a3 + 12) = 1024;
  OUTLINED_FUNCTION_6(a1, a2, a3);
  _os_log_error_impl(&dword_23B338000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%d: ComF: interfaceController for interfaceControllerID:%{public}@ not found (clientIdentifier=%{public}@)", v4, 0x26u);
}

- (void)_interfaceControllerID:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  *a3 = 136446978;
  *(a3 + 4) = "[SPRemoteInterface _interfaceControllerID:]";
  *(a3 + 12) = 1024;
  OUTLINED_FUNCTION_6(a1, a2, a3);
  _os_log_error_impl(&dword_23B338000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%d: ComF: interfaceControllerID for controller:%{public}@ not found (clientIdentifier=%{public}@)", v4, 0x26u);
}

- (void)_interfaceControllerClientIDForControllerID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __45__SPRemoteInterface__dumpInterfaceDictionary__block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(*a1 + 32) count];
  [*(*a1 + 40) count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __45__SPRemoteInterface__dumpInterfaceDictionary__block_invoke_cold_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(*a1 + 32) count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)receiveData:fromIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleProtoPlist:fromIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handlePlistDictionary:fromIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handlePlistDictionary:fromIdentifier:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handlePlistDictionary:fromIdentifier:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handlePlistDictionary:fromIdentifier:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handlePlistDictionary:fromIdentifier:.cold.5()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:->Plugin method %{public}@ is not implemented by the controller %{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)handlePlistDictionary:(void *)a1 fromIdentifier:(uint64_t)a2 .cold.6(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_531_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  LODWORD(v5) = 136446978;
  *(&v5 + 4) = "[SPRemoteInterface createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:]_block_invoke";
  WORD6(v5) = 1024;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4(&dword_23B338000, v2, v3, "%{public}s:%d: Got error fetching notification context for notification with ID %{public}@: %{public}@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)activateViewController:clientIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deactivateViewController:clientIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __94__SPRemoteInterface_applicationDidReceiveNotification_clientIdentifier_withCompletionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleAction:forNotification:remoteNotificationContext:localNotification:unNotification:handler:controller:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getUNNotificationDefaultActionIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"SPRemoteInterface.m" lineNumber:94 description:{@"%s", dlerror()}];

  __break(1u);
}

void __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)rootInterfaceController:performActionWithItemID:forNotificationID:userInfo:clientIdentifier:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)rootInterfaceController:performActionWithItemID:forNotificationID:userInfo:clientIdentifier:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

@end