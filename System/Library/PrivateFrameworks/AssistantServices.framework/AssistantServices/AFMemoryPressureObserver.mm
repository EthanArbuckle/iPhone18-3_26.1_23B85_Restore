@interface AFMemoryPressureObserver
+ (id)sharedObserver;
- (AFMemoryPressureObserver)initWithOptions:(unint64_t)a3;
- (void)_handleMemoryPressureWithFlags:(unint64_t)a3;
- (void)_startObservingMemoryPressureWithOptions:(unint64_t)a3;
- (void)_stopObservingMemoryPressure;
- (void)addListener:(id)a3;
- (void)dealloc;
- (void)getCurrentConditionWithCompletion:(id)a3;
- (void)invalidate;
- (void)removeAllListeners;
- (void)removeListener:(id)a3;
@end

@implementation AFMemoryPressureObserver

- (void)_handleMemoryPressureWithFlags:(unint64_t)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  memoryPressureFlags = self->_memoryPressureFlags;
  if (memoryPressureFlags <= 3)
  {
    if (memoryPressureFlags == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (memoryPressureFlags == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    switch(memoryPressureFlags)
    {
      case 4:
        v7 = 3;
        break;
      case 16:
        v7 = 4;
        break;
      case 32:
        v7 = 5;
        break;
      default:
        v7 = 0;
        break;
    }
  }

  v9 = 0;
  self->_memoryPressureFlags = a3;
  if (a3 <= 3)
  {
    if (a3 == 1 || a3 == 2)
    {
      v9 = a3;
    }
  }

  else
  {
    switch(a3)
    {
      case 4uLL:
        v9 = 3;
        break;
      case 0x10uLL:
        v9 = 4;
        break;
      case 0x20uLL:
        v9 = 5;
        break;
    }
  }

  v10 = AFSiriLogContextUtility;
  v11 = os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO);
  if (v7 == v9)
  {
    if (!v11)
    {
      goto LABEL_40;
    }

    if ((v7 - 1) > 4)
    {
      v12 = @"unknown";
    }

    else
    {
      v12 = off_1E7344C78[v7 - 1];
    }

    *buf = 136315394;
    v44 = "[AFMemoryPressureObserver _handleMemoryPressureWithFlags:]";
    v45 = 2112;
    v46 = v12;
    v14 = v10;
    v15 = "%s Memory pressure condition stayed at %@.";
    v16 = v14;
    v17 = 22;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_40;
    }

    if ((v7 - 1) > 4)
    {
      v13 = @"unknown";
    }

    else
    {
      v13 = off_1E7344C78[v7 - 1];
    }

    if (v9 - 1 > 4)
    {
      v18 = @"unknown";
    }

    else
    {
      v18 = off_1E7344C78[v9 - 1];
    }

    *buf = 136315650;
    v44 = "[AFMemoryPressureObserver _handleMemoryPressureWithFlags:]";
    v45 = 2112;
    v46 = v13;
    v47 = 2112;
    v48 = v18;
    v14 = v10;
    v15 = "%s Memory pressure condition changed from %@ to %@.";
    v16 = v14;
    v17 = 32;
  }

  _os_log_impl(&dword_1912FE000, v16, OS_LOG_TYPE_INFO, v15, buf, v17);

LABEL_40:
  v19 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    v21 = AFMemoryInfoGetCurrent();
    *buf = 136315394;
    v44 = "[AFMemoryPressureObserver _handleMemoryPressureWithFlags:]";
    v45 = 2112;
    v46 = v21;
    _os_log_impl(&dword_1912FE000, v20, OS_LOG_TYPE_INFO, "%s Current memory info is %@.", buf, 0x16u);
  }

  if (v7 != v9)
  {
    v22 = [MEMORY[0x1E696AE30] processInfo];
    v23 = [v22 processName];
    v24 = [v23 isEqualToString:@"assistantd"];

    if (v24)
    {
      v25 = +[AFAnalytics sharedAnalytics];
      v41[0] = @"processName";
      v26 = [MEMORY[0x1E696AE30] processInfo];
      v27 = [v26 processName];
      v41[1] = @"memoryPressureChange";
      v42[0] = v27;
      if (v9 - 1 > 4)
      {
        v28 = @"unknown";
      }

      else
      {
        v28 = off_1E7344C78[v9 - 1];
      }

      v42[1] = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
      [v25 logEventWithType:451 context:v29];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = self->_listeners;
    v31 = [(NSHashTable *)v30 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v37;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [*(*(&v36 + 1) + 8 * i) memoryPressureObserver:self didChangeFromCondition:v7 toCondition:{v9, v36}];
        }

        v32 = [(NSHashTable *)v30 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v32);
    }
  }

  objc_autoreleasePoolPop(v5);
  v35 = *MEMORY[0x1E69E9840];
}

- (void)_stopObservingMemoryPressure
{
  v13 = *MEMORY[0x1E69E9840];
  memoryPressureSource = self->_memoryPressureSource;
  if (memoryPressureSource)
  {
    dispatch_source_cancel(memoryPressureSource);
    v4 = self->_memoryPressureSource;
    self->_memoryPressureSource = 0;
  }

  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = AFMemoryInfoGetCurrent();
    v9 = 136315394;
    v10 = "[AFMemoryPressureObserver _stopObservingMemoryPressure]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s Current memory info is %@.", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingMemoryPressureWithOptions:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_memoryPressureSource)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, a3 & 0x30 | (a3 >> 1) & 7, self->_queue);
    memoryPressureSource = self->_memoryPressureSource;
    self->_memoryPressureSource = v4;

    objc_initWeak(location, self);
    v6 = self->_memoryPressureSource;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__AFMemoryPressureObserver__startObservingMemoryPressureWithOptions___block_invoke;
    handler[3] = &unk_1E7348A80;
    objc_copyWeak(&v12, location);
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(self->_memoryPressureSource);
    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  v7 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = AFMemoryInfoGetCurrent();
    *location = 136315394;
    *&location[4] = "[AFMemoryPressureObserver _startObservingMemoryPressureWithOptions:]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Current memory info is %@.", location, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __69__AFMemoryPressureObserver__startObservingMemoryPressureWithOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(dispatch_source_t *)WeakRetained _handleMemoryPressureWithFlags:dispatch_source_get_data(WeakRetained[2])];
    WeakRetained = v2;
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AFMemoryPressureObserver_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __38__AFMemoryPressureObserver_invalidate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopObservingMemoryPressure];
  v2 = *(a1 + 32);

  return [v2 _removeAllListeners];
}

- (void)getCurrentConditionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__AFMemoryPressureObserver_getCurrentConditionWithCompletion___block_invoke;
    v7[3] = &unk_1E7349838;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

uint64_t __62__AFMemoryPressureObserver_getCurrentConditionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = 3;
  v3 = 4;
  v4 = 5;
  if (v1 != 32)
  {
    v4 = 0;
  }

  if (v1 != 16)
  {
    v3 = v4;
  }

  if (v1 != 4)
  {
    v2 = v3;
  }

  if (v1 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (v1 == 1)
  {
    v5 = 1;
  }

  if (v1 <= 3)
  {
    v6 = v5;
  }

  else
  {
    v6 = v2;
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v6);
}

- (void)removeAllListeners
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AFMemoryPressureObserver_removeAllListeners__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__AFMemoryPressureObserver_removeListener___block_invoke;
    v7[3] = &unk_1E7349860;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)addListener:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__AFMemoryPressureObserver_addListener___block_invoke;
    v7[3] = &unk_1E7349860;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)dealloc
{
  [(AFMemoryPressureObserver *)self _stopObservingMemoryPressure];
  v3.receiver = self;
  v3.super_class = AFMemoryPressureObserver;
  [(AFMemoryPressureObserver *)&v3 dealloc];
}

- (AFMemoryPressureObserver)initWithOptions:(unint64_t)a3
{
  v14.receiver = self;
  v14.super_class = AFMemoryPressureObserver;
  v4 = [(AFMemoryPressureObserver *)&v14 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

    v7 = dispatch_queue_create("com.apple.assistant.memory-pressure-observer", v6);
    queue = v4->_queue;
    v4->_queue = v7;

    v9 = v4->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__AFMemoryPressureObserver_initWithOptions___block_invoke;
    v11[3] = &unk_1E7348498;
    v12 = v4;
    v13 = a3;
    dispatch_async(v9, v11);
  }

  return v4;
}

uint64_t __44__AFMemoryPressureObserver_initWithOptions___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 _startObservingMemoryPressureWithOptions:v6];
}

+ (id)sharedObserver
{
  if (sharedObserver_onceToken != -1)
  {
    dispatch_once(&sharedObserver_onceToken, &__block_literal_global_18878);
  }

  v3 = sharedObserver_sharedObserver;

  return v3;
}

void __42__AFMemoryPressureObserver_sharedObserver__block_invoke()
{
  v0 = [[AFMemoryPressureObserver alloc] initWithOptions:62];
  v1 = sharedObserver_sharedObserver;
  sharedObserver_sharedObserver = v0;
}

@end