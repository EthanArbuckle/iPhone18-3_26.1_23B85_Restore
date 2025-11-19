@interface AKLiveValue
+ (id)liveValueWithAsyncProducer:(id)a3;
+ (id)liveValueWithSyncProducer:(id)a3;
- (AKLiveValue)init;
- (AKLiveValue)initWithAsyncProducer:(id)a3;
- (AKLiveValue)initWithSyncProducer:(id)a3;
- (id)captureCurrentValue;
- (id)newTrigger;
- (id)newTriggerWithCleanup:(id)a3;
- (void)_onqueue_updateValue;
- (void)_setValue:(id)a3;
- (void)_updateValue;
- (void)dealloc;
@end

@implementation AKLiveValue

- (AKLiveValue)init
{
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = AKLiveValue;
  v10 = [(AKLiveValue *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v2 = dispatch_queue_create("com.apple.akd.live-value", 0);
    queue = v10->_queue;
    v10->_queue = v2;
    MEMORY[0x1E69E5920](queue);
    v10->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E695DF70] array];
    cleanupBlocks = v10->_cleanupBlocks;
    v10->_cleanupBlocks = v4;
    MEMORY[0x1E69E5920](cleanupBlocks);
  }

  v7 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (AKLiveValue)initWithSyncProducer:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v9 = [(AKLiveValue *)v3 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v4 = MEMORY[0x193B165F0](location[0]);
    syncProducer = v9->_syncProducer;
    v9->_syncProducer = v4;
    MEMORY[0x1E69E5920](syncProducer);
    [(AKLiveValue *)v9 _updateValue];
  }

  v7 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

- (AKLiveValue)initWithAsyncProducer:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v9 = [(AKLiveValue *)v3 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v4 = MEMORY[0x193B165F0](location[0]);
    asyncProducer = v9->_asyncProducer;
    v9->_asyncProducer = v4;
    MEMORY[0x1E69E5920](asyncProducer);
    [(AKLiveValue *)v9 _updateValue];
  }

  v7 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

+ (id)liveValueWithSyncProducer:(id)a3
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [v7 alloc];
  v5 = [v3 initWithSyncProducer:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)liveValueWithAsyncProducer:(id)a3
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [v7 alloc];
  v5 = [v3 initWithAsyncProducer:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

- (void)dealloc
{
  v10 = self;
  v9[1] = a2;
  os_unfair_lock_lock(&self->_lock);
  cleanupBlocks = v10->_cleanupBlocks;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __22__AKLiveValue_dealloc__block_invoke;
  v8 = &unk_1E73D96F8;
  v9[0] = MEMORY[0x1E69E5928](v10);
  [(NSMutableArray *)cleanupBlocks enumerateObjectsUsingBlock:?];
  os_unfair_lock_unlock(&v10->_lock);
  objc_storeStrong(v9, 0);
  v3.receiver = v10;
  v3.super_class = AKLiveValue;
  [(AKLiveValue *)&v3 dealloc];
}

void __22__AKLiveValue_dealloc__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(location[0] + 2))(location[0], a1[4]);
  objc_storeStrong(location, 0);
}

- (id)newTrigger
{
  location[2] = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __25__AKLiveValue_newTrigger__block_invoke;
  v8 = &unk_1E73D34E8;
  objc_copyWeak(&v9, location);
  v3 = MEMORY[0x193B165F0](&v4);
  objc_destroyWeak(&v9);
  objc_destroyWeak(location);

  return v3;
}

void __25__AKLiveValue_newTrigger__block_invoke(id *a1)
{
  v1[2] = a1;
  v1[1] = a1;
  v1[0] = objc_loadWeakRetained(a1 + 4);
  [v1[0] _updateValue];
  objc_storeStrong(v1, 0);
}

- (id)newTriggerWithCleanup:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  os_unfair_lock_lock(v8 + 4);
  v4 = *&v8[12]._os_unfair_lock_opaque;
  v5 = MEMORY[0x193B165F0](location[0]);
  [v4 addObject:?];
  MEMORY[0x1E69E5920](v5);
  os_unfair_lock_unlock(v8 + 4);
  v6 = [(os_unfair_lock_s *)v8 newTrigger];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)captureCurrentValue
{
  v5 = self;
  v4[1] = a2;
  v4[0] = 0;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(v4, v5->_value);
  os_unfair_lock_unlock(&v5->_lock);
  v3 = MEMORY[0x1E69E5928](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (void)_updateValue
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_queue;
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __27__AKLiveValue__updateValue__block_invoke;
  v7 = &unk_1E73D34C0;
  v8[0] = MEMORY[0x1E69E5928](self);
  dispatch_async(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (void)_onqueue_updateValue
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = self;
  location[1] = a2;
  if (self->_syncProducer)
  {
    location[0] = (*(v12->_syncProducer + 2))();
    [(AKLiveValue *)v12 _setValue:location[0]];
    objc_storeStrong(location, 0);
  }

  else if (v12->_asyncProducer)
  {
    objc_initWeak(&from, v12);
    asyncProducer = v12->_asyncProducer;
    v4 = MEMORY[0x1E69E9820];
    v5 = -1073741824;
    v6 = 0;
    v7 = __35__AKLiveValue__onqueue_updateValue__block_invoke;
    v8 = &unk_1E73D9720;
    objc_copyWeak(&v9, &from);
    asyncProducer[2](asyncProducer, &v4);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&from);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_2_1_8_64(v13, v12);
      _os_log_fault_impl(&dword_193225000, oslog, OS_LOG_TYPE_FAULT, "%@: Expected nonnull sync or async producer", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  *MEMORY[0x1E69E9840];
}

void __35__AKLiveValue__onqueue_updateValue__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  [v3[0] _setValue:location[0]];
  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_setValue:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  os_unfair_lock_lock(&v4->_lock);
  objc_storeStrong(&v4->_value, location[0]);
  os_unfair_lock_unlock(&v4->_lock);
  objc_storeStrong(location, 0);
}

@end