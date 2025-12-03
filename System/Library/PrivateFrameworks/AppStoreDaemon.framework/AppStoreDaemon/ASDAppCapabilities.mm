@interface ASDAppCapabilities
+ (BOOL)isCapable:(id)capable;
+ (BOOL)isCapableOfAction:(int64_t)action capabilities:(id)capabilities;
+ (BOOL)isCapableOfAction:(int64_t)action capability:(id)capability;
+ (id)defaultInstance;
+ (id)interface;
- (ASDAppCapabilities)init;
- (uint64_t)_isCapable:(uint64_t)capable method:;
@end

@implementation ASDAppCapabilities

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A298];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_isCapable_withCompletionHandler_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)defaultInstance
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__ASDAppCapabilities_defaultInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (qword_1ED90D530 != -1)
  {
    dispatch_once(&qword_1ED90D530, block);
  }

  v1 = _MergedGlobals_36;

  return v1;
}

uint64_t __37__ASDAppCapabilities_defaultInstance__block_invoke(uint64_t a1)
{
  _MergedGlobals_36 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (ASDAppCapabilities)init
{
  v10.receiver = self;
  v10.super_class = ASDAppCapabilities;
  v2 = [(ASDAppCapabilities *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cachedValues = v2->_cachedValues;
    v2->_cachedValues = v3;

    v2->_cacheLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v2);
    v2->_eligibilityChangedNotificationToken = -1;
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __26__ASDAppCapabilities_init__block_invoke;
    v7[3] = &unk_1E7CDC170;
    objc_copyWeak(&v8, &location);
    notify_register_dispatch("com.apple.os-eligibility-domain.change", &v2->_eligibilityChangedNotificationToken, v5, v7);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __26__ASDAppCapabilities_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = ASDLogHandleForCategory(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1B8220000, v1, OS_LOG_TYPE_DEBUG, "Clearing cache after receiving notification", buf, 2u);
    }

    os_unfair_lock_lock(WeakRetained + 4);
    [*(WeakRetained + 1) removeAllObjects];
    os_unfair_lock_unlock(WeakRetained + 4);
  }

  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ASDAppCapabilitiesDidChangeNotification" object:WeakRetained];
}

+ (BOOL)isCapable:(id)capable
{
  capableCopy = capable;
  v4 = +[ASDAppCapabilities defaultInstance];
  v5 = [(ASDAppCapabilities *)v4 _isCapable:capableCopy method:"+[ASDAppCapabilities isCapable:]"];

  return v5;
}

- (uint64_t)_isCapable:(uint64_t)capable method:
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld-%ld", objc_msgSend(v5, "features"), objc_msgSend(v5, "action")];
    os_unfair_lock_lock((self + 16));
    v8 = [*(self + 8) objectForKeyedSubscript:v7];
    os_unfair_lock_unlock((self + 16));
    if (v8)
    {
      self = ASDLogHandleForCategory(1);
      if (os_log_type_enabled(self, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        *&buf[4] = v6;
        *&buf[12] = 1026;
        *&buf[14] = [v8 BOOLValue];
        _os_log_debug_impl(&dword_1B8220000, self, OS_LOG_TYPE_DEBUG, "Cached value found for %{public}@ - %{public}d", buf, 0x12u);
      }

      LOBYTE(self) = [v8 BOOLValue];
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v33 = __Block_byref_object_copy__5;
      v34 = __Block_byref_object_dispose__5;
      v35 = 0;
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v20 = __40__ASDAppCapabilities__isCapable_method___block_invoke;
      v21 = &unk_1E7CDBB80;
      v22 = buf;
      v9 = v19;
      v10 = +[ASDServiceBroker defaultBroker];
      *v27 = 0;
      v11 = [v10 getCapabilitiesServiceWithError:v27];
      v12 = *v27;

      if (v11)
      {
        v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v9];
      }

      else
      {
        v20(v9, v12);
        v13 = 0;
      }

      if (*(*&buf[8] + 40))
      {
        self = ASDLogHandleForCategory(1);
        if (os_log_type_enabled(self, OS_LOG_TYPE_ERROR))
        {
          v17 = *(*&buf[8] + 40);
          *v27 = 136446722;
          *&v27[4] = capable;
          v28 = 2114;
          v29 = v6;
          v30 = 2114;
          v31 = v17;
          _os_log_error_impl(&dword_1B8220000, self, OS_LOG_TYPE_ERROR, "Error in %{public}s: %{public}@ - %{public}@", v27, 0x20u);
        }

        LOBYTE(self) = 0;
      }

      else
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __40__ASDAppCapabilities__isCapable_method___block_invoke_60;
        v18[3] = &unk_1E7CDC0A0;
        v18[4] = &v23;
        [v13 isCapable:v6 withCompletionHandler:v18];
        os_unfair_lock_lock((self + 16));
        v14 = [MEMORY[0x1E696AD98] numberWithBool:*(v24 + 24)];
        [*(self + 8) setObject:v14 forKeyedSubscript:v7];

        os_unfair_lock_unlock((self + 16));
        LOBYTE(self) = *(v24 + 24);
      }

      _Block_object_dispose(&v23, 8);
      _Block_object_dispose(buf, 8);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return self & 1;
}

+ (BOOL)isCapableOfAction:(int64_t)action capability:(id)capability
{
  v13 = *MEMORY[0x1E69E9840];
  capabilityCopy = capability;
  v5 = MEMORY[0x1E695DEC8];
  capabilityCopy2 = capability;
  v7 = [v5 arrayWithObjects:&capabilityCopy count:1];
  v8 = [ASDAppCapabilityMetadata metadataWithAction:action bundleID:&stru_1F30184F0 capabilities:v7, capabilityCopy, v13];

  v9 = +[ASDAppCapabilities defaultInstance];
  LOBYTE(action) = [(ASDAppCapabilities *)v9 _isCapable:v8 method:"+[ASDAppCapabilities isCapableOfAction:capability:]"];

  v10 = *MEMORY[0x1E69E9840];
  return action;
}

+ (BOOL)isCapableOfAction:(int64_t)action capabilities:(id)capabilities
{
  v4 = [ASDAppCapabilityMetadata metadataWithAction:action bundleID:&stru_1F30184F0 capabilities:capabilities];
  v5 = +[ASDAppCapabilities defaultInstance];
  v6 = [(ASDAppCapabilities *)v5 _isCapable:v4 method:"+[ASDAppCapabilities isCapableOfAction:capabilities:]"];

  return v6;
}

@end