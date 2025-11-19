@interface LSSettingsStore
+ (id)sharedInstance;
- (BOOL)resetUserElectionsWithError:(id *)a3;
- (BOOL)setUserElection:(unsigned __int8)a3 forExtensionKey:(id)a4 error:(id *)a5;
- (id)_init;
- (id)addChangeObserver:(id)a3;
- (id)settingsStoreConfigurationForProcessWithAuditToken:(id *)a3;
- (unsigned)userElectionForExtensionKey:(id)a3;
- (void)removeChangeObserver:(id)a3;
@end

@implementation LSSettingsStore

+ (id)sharedInstance
{
  if (+[LSSettingsStore sharedInstance]::onceToken != -1)
  {
    +[LSSettingsStore sharedInstance];
  }

  v3 = +[LSSettingsStore sharedInstance]::store;

  return v3;
}

void __33__LSSettingsStore_sharedInstance__block_invoke()
{
  v0 = [__LSDefaultsGetSharedInstance() isServer];
  v1 = off_1E6A18360;
  if (!v0)
  {
    v1 = off_1E6A18300;
  }

  v2 = objc_alloc_init(*v1);
  v3 = +[LSSettingsStore sharedInstance]::store;
  +[LSSettingsStore sharedInstance]::store = v2;
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = LSSettingsStore;
  v2 = [(LSSettingsStore *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.launchservices._LSSettingsInProcessStore.notification", v3);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v4;

    v6 = objc_opt_new();
    observerSet = v2->_observerSet;
    v2->_observerSet = v6;
  }

  return v2;
}

- (BOOL)setUserElection:(unsigned __int8)a3 forExtensionKey:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[LSSettingsStore setUserElection:forExtensionKey:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/SettingsStore/LSSettingsStore.mm", 204);
  }

  return 0;
}

- (BOOL)resetUserElectionsWithError:(id *)a3
{
  if (a3)
  {
    *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[LSSettingsStore resetUserElectionsWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/SettingsStore/LSSettingsStore.mm", 211);
  }

  return 0;
}

- (id)addChangeObserver:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = MEMORY[0x1865D71B0](v4);
  v7 = v5[1];
  v5[1] = v6;

  SharedInstance = __LSDefaultsGetSharedInstance();
  v9 = [SharedInstance settingsUpdateNotificationNameForUserID:geteuid()];
  observerQueue = self->_observerQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __37__LSSettingsStore_addChangeObserver___block_invoke;
  v18[3] = &unk_1E6A1ABE8;
  v11 = v9;
  v19 = v11;
  v12 = v5;
  v20 = v12;
  LaunchServices::notifyd::NotifyToken::RegisterDispatch(v11, observerQueue, v18, &v21);
  LaunchServices::notifyd::NotifyToken::operator=(v12 + 4, &v21);
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&v21);
  v13 = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__LSSettingsStore_addChangeObserver___block_invoke_41;
  block[3] = &unk_1E6A1ABE8;
  block[4] = self;
  v14 = v12;
  v17 = v14;
  dispatch_sync(v13, block);

  return v14;
}

uint64_t __37__LSSettingsStore_addChangeObserver___block_invoke(uint64_t a1)
{
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __37__LSSettingsStore_addChangeObserver___block_invoke_cold_1(a1);
  }

  return (*(*(*(a1 + 40) + 8) + 16))();
}

- (void)removeChangeObserver:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"LSSettingsStore.mm" lineNumber:238 description:{@"Unexpected class %@", v10}];
  }

  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__LSSettingsStore_removeChangeObserver___block_invoke;
  block[3] = &unk_1E6A1A830;
  v12 = v5;
  v7 = v5;
  dispatch_sync(observerQueue, block);
}

uint64_t __40__LSSettingsStore_removeChangeObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = (*(a1 + 32) + 16);

  return LaunchServices::notifyd::NotifyToken::cancel(v4);
}

- (unsigned)userElectionForExtensionKey:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)settingsStoreConfigurationForProcessWithAuditToken:(id *)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

void __37__LSSettingsStore_addChangeObserver___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1(&dword_18162D000, v1, v2, "NotifyToken::Received(%{public}@)", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

@end