@interface FPReachabilityMonitor
+ (BOOL)isNetworkReachableForFlags:(unsigned int)flags;
+ (id)_notifAccountStore;
+ (id)sharedReachabilityMonitor;
+ (unsigned)getReachabilityFlagsByCheckingNetwork;
- (BOOL)_isCellularAllowedForBR;
- (BOOL)isNetworkReachableForBundle:(id)bundle;
- (FPReachabilityMonitor)init;
- (void)_accountDidChange;
- (void)_isCellularAllowedForBR;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation FPReachabilityMonitor

+ (id)sharedReachabilityMonitor
{
  if (sharedReachabilityMonitor_onceToken != -1)
  {
    +[FPReachabilityMonitor sharedReachabilityMonitor];
  }

  v3 = sharedReachabilityMonitor_monitor;

  return v3;
}

uint64_t __50__FPReachabilityMonitor_sharedReachabilityMonitor__block_invoke()
{
  sharedReachabilityMonitor_monitor = objc_alloc_init(FPReachabilityMonitor);

  return MEMORY[0x1EEE66BB8]();
}

+ (unsigned)getReachabilityFlagsByCheckingNetwork
{
  v8 = *MEMORY[0x1E69E9840];
  flags = 0;
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  v2 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x1E695E480], &address);
  if (v2)
  {
    v3 = v2;
    if (!SCNetworkReachabilityGetFlags(v2, &flags))
    {
      flags = 0;
    }

    CFRelease(v3);
    LODWORD(v2) = flags;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)_notifAccountStore
{
  if (_notifAccountStore_onceToken != -1)
  {
    +[FPReachabilityMonitor _notifAccountStore];
  }

  v3 = _notifAccountStore_notifAccountStore;

  return v3;
}

uint64_t __43__FPReachabilityMonitor__notifAccountStore__block_invoke()
{
  _notifAccountStore_notifAccountStore = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_isCellularAllowedForBR
{
  dispatch_assert_queue_V2(self->_queue);
  isCellularEnabledForDocumentsAndData = self->_isCellularEnabledForDocumentsAndData;
  if (!isCellularEnabledForDocumentsAndData)
  {
    section = __fp_create_section();
    v25 = section;
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(FPReachabilityMonitor *)section _isCellularAllowedForBR:v5];
    }

    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
    v14 = [aa_primaryAppleAccount aa_useCellularForDataclass:*MEMORY[0x1E6959B58]];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v14];
    v16 = self->_isCellularEnabledForDocumentsAndData;
    self->_isCellularEnabledForDocumentsAndData = v15;

    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(FPReachabilityMonitor *)v14 _isCellularAllowedForBR:v17];
    }

    __fp_leave_section_Debug(&v25);
    isCellularEnabledForDocumentsAndData = self->_isCellularEnabledForDocumentsAndData;
  }

  return [(NSNumber *)isCellularEnabledForDocumentsAndData BOOLValue];
}

- (FPReachabilityMonitor)init
{
  v31 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = FPReachabilityMonitor;
  v3 = [(FPReachabilityMonitor *)&v27 init];
  currentHandler2 = v3;
  if (v3)
  {
    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = v3;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = *(currentHandler2 + 8);
    *(currentHandler2 + 8) = weakObjectsHashTable;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.reachability", v7);
    v9 = *(currentHandler2 + 32);
    *(currentHandler2 + 32) = v8;

    *(currentHandler2 + 24) = [objc_opt_class() getReachabilityFlagsByCheckingNetwork];
    v10 = SCNetworkReachabilityCreateWithName(0, "apple.com");
    *(currentHandler2 + 16) = v10;
    if (!v10 || !SCNetworkReachabilitySetCallback(v10, fp_reachability_callback, &context) || !SCNetworkReachabilitySetDispatchQueue(*(currentHandler2 + 16), *(currentHandler2 + 32)))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:currentHandler2 file:@"FPReachabilityMonitor.m" lineNumber:147 description:@"UNREACHABLE: unable to hook into the reachability subsystem"];
    }

    _notifAccountStore = [objc_opt_class() _notifAccountStore];
    objc_initWeak(&location, currentHandler2);
    v28[0] = 0;
    if (!AppleAccountLibraryCore_frameworkLibrary)
    {
      v28[1] = MEMORY[0x1E69E9820];
      v28[2] = 3221225472;
      v28[3] = __AppleAccountLibraryCore_block_invoke;
      v28[4] = &__block_descriptor_40_e5_v8__0l;
      v28[5] = v28;
      v29 = xmmword_1E793EA20;
      v30 = 0;
      AppleAccountLibraryCore_frameworkLibrary = _sl_dlopen();
    }

    if (AppleAccountLibraryCore_frameworkLibrary)
    {
      v13 = v28[0];
      if (!v28[0])
      {
LABEL_10:
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __29__FPReachabilityMonitor_init__block_invoke;
        v23[3] = &unk_1E793EA00;
        objc_copyWeak(&v24, &location);
        v16 = [defaultCenter addObserverForName:*MEMORY[0x1E6959968] object:_notifAccountStore queue:mainQueue usingBlock:v23];
        v17 = *(currentHandler2 + 40);
        *(currentHandler2 + 40) = v16;

        v18 = *(currentHandler2 + 32);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __29__FPReachabilityMonitor_init__block_invoke_2;
        block[3] = &unk_1E79399B0;
        v22 = currentHandler2;
        dispatch_async(v18, block);

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);

        goto LABEL_11;
      }
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      _notifAccountStore = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppleAccountLibrary(void)"];
      [currentHandler2 handleFailureInFunction:_notifAccountStore file:@"FPReachabilityMonitor.m" lineNumber:17 description:{@"%s", v28[0]}];

      __break(1u);
    }

    free(v13);
    goto LABEL_10;
  }

LABEL_11:
  v19 = *MEMORY[0x1E69E9840];
  return currentHandler2;
}

+ (BOOL)isNetworkReachableForFlags:(unsigned int)flags
{
  if ((flags & 2) != 0)
  {
    if ((flags & 4) != 0 && ((flags & 0x28) == 0 || (flags & 0x10) != 0))
    {
      return (flags >> 18) & 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

void __29__FPReachabilityMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accountDidChange];
}

- (void)dealloc
{
  CFRelease(self->_reachabilityRef);
  v3.receiver = self;
  v3.super_class = FPReachabilityMonitor;
  [(FPReachabilityMonitor *)&v3 dealloc];
}

- (void)_accountDidChange
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__FPReachabilityMonitor__accountDidChange__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __42__FPReachabilityMonitor__accountDidChange__block_invoke(uint64_t a1)
{
  section = __fp_create_section();
  v13 = section;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__FPReachabilityMonitor__accountDidChange__block_invoke_cold_1(section, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __42__FPReachabilityMonitor__accountDidChange__block_invoke_cold_2(v10);
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 48);
  *(v11 + 48) = 0;

  __fp_leave_section_Debug(&v13);
}

- (BOOL)isNetworkReachableForBundle:(id)bundle
{
  bundleCopy = bundle;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__FPReachabilityMonitor_isNetworkReachableForBundle___block_invoke;
  block[3] = &unk_1E793E0D0;
  block[4] = self;
  v9 = bundleCopy;
  v10 = &v11;
  v6 = bundleCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __53__FPReachabilityMonitor_isNetworkReachableForBundle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (![*(a1 + 40) isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"] || (result = objc_msgSend(*(a1 + 32), "_isCellularAllowedForBR"), (result & 1) != 0) || (v2 & 0x40000) == 0)
  {
    v4 = *(a1 + 32);
    result = [objc_opt_class() isNetworkReachableForFlags:v2];
    *(*(*(a1 + 48) + 8) + 24) = result;
  }

  return result;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__FPReachabilityMonitor_addObserver___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

uint64_t __37__FPReachabilityMonitor_addObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) reachabilityMonitor:*(a1 + 32) didChangeReachabilityFlagsTo:*(*(a1 + 32) + 24)];
  }

  v3 = *(a1 + 32);
  v4 = [objc_opt_class() isNetworkReachableForFlags:*(v3 + 24)];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v5 reachabilityMonitor:v6 didChangeReachabilityStatusTo:v4];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__FPReachabilityMonitor_removeObserver___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

void __42__FPReachabilityMonitor__accountDidChange__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, a2, a3, "[DEBUG] ┏%llx account properties changed", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_isCellularAllowedForBR
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, a2, a3, "[DEBUG] cellular is %@ for D&D", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end