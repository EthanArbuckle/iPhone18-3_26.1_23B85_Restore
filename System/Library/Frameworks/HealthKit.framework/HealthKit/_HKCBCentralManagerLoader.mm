@interface _HKCBCentralManagerLoader
- (_HKCBCentralManagerLoader)init;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)getCentralManagerWithCompletion:(id)a3;
@end

@implementation _HKCBCentralManagerLoader

- (_HKCBCentralManagerLoader)init
{
  v11.receiver = self;
  v11.super_class = _HKCBCentralManagerLoader;
  v2 = [(_HKCBCentralManagerLoader *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = HKCreateSerialDispatchQueue(v2, @"queue");
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = [objc_alloc(MEMORY[0x1E695D258]) initWithDelegate:v3 queue:v3->_queue];
    centralManager = v3->_centralManager;
    v3->_centralManager = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingHandlers = v3->_pendingHandlers;
    v3->_pendingHandlers = v8;
  }

  return v3;
}

- (void)getCentralManagerWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___HKCBCentralManagerLoader_getCentralManagerWithCompletion___block_invoke;
  v7[3] = &unk_1E73765F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 state] == 5)
  {
    _HKInitializeLogging();
    v5 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      pendingHandlers = self->_pendingHandlers;
      v7 = v5;
      *buf = 138412546;
      v20 = self;
      v21 = 2048;
      v22 = [(NSMutableArray *)pendingHandlers count];
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "%@ CBCentralManager did become available, %lu pending handlers", buf, 0x16u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_pendingHandlers;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [(NSMutableArray *)self->_pendingHandlers removeAllObjects];
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end