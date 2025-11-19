@interface CAProcessMonitor
- (CAProcessMonitor)initWithCallback:(id)a3;
- (void)addMonitoringProcess:(int)a3;
- (void)dealloc;
- (void)removeMonitoringProcess:(int)a3;
- (void)updateConfiguration;
@end

@implementation CAProcessMonitor

- (void)updateConfiguration
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  processIdentifiers = self->_processIdentifiers;
  objc_sync_enter(processIdentifiers);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_processIdentifiers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [v3 addObject:{objc_msgSend(MEMORY[0x1E69C7610], "predicateMatchingIdentifier:", *(*(&v14 + 1) + 8 * i))}];
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v6);
  }

  objc_sync_exit(processIdentifiers);
  objc_initWeak(&location, self);
  processMonitor = self->_processMonitor;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__CAProcessMonitor_updateConfiguration__block_invoke;
  v10[3] = &unk_1E6DF8020;
  v10[4] = v3;
  objc_copyWeak(&v11, &location);
  [(RBSProcessMonitor *)processMonitor updateConfiguration:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __39__CAProcessMonitor_updateConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69C7630] descriptor];
  [v4 setValues:1];
  [v4 setEndowmentNamespaces:&unk_1EF22FD30];
  [a2 setStateDescriptor:v4];
  [a2 setPredicates:*(a1 + 32)];
  [a2 setEvents:1];
  [a2 setServiceClass:33];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__CAProcessMonitor_updateConfiguration__block_invoke_2;
  v5[3] = &unk_1E6DF7FF8;
  objc_copyWeak(v6, (a1 + 40));
  [a2 setUpdateHandler:v5];
  objc_destroyWeak(v6);
}

void __39__CAProcessMonitor_updateConfiguration__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = [a4 state];
    v11 = [v10 taskState];
    if ((v11 - 3) >= 2)
    {
      v13 = v11;
      v14 = [a3 isApplication] ^ 1;
      if (v13 == 2)
      {
        v12 = v14;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 1;
    }

    v15 = [a3 isApplication] && !objc_msgSend(objc_msgSend(v10, "endowmentNamespaces"), "containsObject:", @"com.apple.frontboard.visibility") || objc_msgSend(v10, "taskState") == 3;
    (*(v9[1] + 16))(v9[1], [a3 pid], v12, v15);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)removeMonitoringProcess:(int)a3
{
  v8[5] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69C75E0] identifierWithPid:*&a3];
  if (v4)
  {
    v5 = v4;
    processIdentifiers = self->_processIdentifiers;
    objc_sync_enter(processIdentifiers);
    if (([(NSMutableSet *)self->_processIdentifiers containsObject:v5]& 1) != 0)
    {
      [(NSMutableSet *)self->_processIdentifiers removeObject:v5];
      objc_sync_exit(processIdentifiers);
      queue = self->_queue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __44__CAProcessMonitor_removeMonitoringProcess___block_invoke;
      v8[3] = &unk_1E6DFA588;
      v8[4] = self;
      dispatch_async(queue, v8);
    }

    else
    {

      objc_sync_exit(processIdentifiers);
    }
  }
}

- (void)addMonitoringProcess:(int)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69C75E0] identifierWithPid:*&a3];
  if (v4)
  {
    v5 = v4;
    processIdentifiers = self->_processIdentifiers;
    objc_sync_enter(processIdentifiers);
    if (([(NSMutableSet *)self->_processIdentifiers containsObject:v5]& 1) != 0)
    {

      objc_sync_exit(processIdentifiers);
    }

    else
    {
      [(NSMutableSet *)self->_processIdentifiers addObject:v5];
      objc_sync_exit(processIdentifiers);
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__CAProcessMonitor_addMonitoringProcess___block_invoke;
      block[3] = &unk_1E6DF9900;
      block[4] = self;
      block[5] = v5;
      dispatch_async(queue, block);
    }
  }
}

uint64_t __41__CAProcessMonitor_addMonitoringProcess___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateConfiguration];
  v2 = [MEMORY[0x1E69C75D0] handleForIdentifier:*(a1 + 40) error:0];
  v3 = v2;
  if (!v2 || [v2 pid] == -1)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v3 currentState];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 taskState];
      if ((v6 - 3) >= 2)
      {
        v12 = v6;
        v13 = [v3 isApplication] ^ 1;
        if (v12 == 2)
        {
          v7 = v13;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 1;
      }

      v5 = [v3 isApplication] && !objc_msgSend(objc_msgSend(v5, "endowmentNamespaces"), "containsObject:", @"com.apple.frontboard.visibility") || objc_msgSend(v5, "taskState") == 3;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:
  v8 = *(*(a1 + 32) + 8);
  v9 = [v3 pid];
  v10 = *(v8 + 16);

  return v10(v8, v9, v7, v5);
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  _Block_release(self->_callback);
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = CAProcessMonitor;
  [(CAProcessMonitor *)&v3 dealloc];
}

- (CAProcessMonitor)initWithCallback:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CAProcessMonitor;
  v4 = [(CAProcessMonitor *)&v7 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4->_queue = dispatch_queue_create("CAProcessMonitor Queue", v5);
    v4->_callback = _Block_copy(a3);
    v4->_processMonitor = objc_alloc_init(MEMORY[0x1E69C75F8]);
    v4->_processIdentifiers = objc_alloc_init(MEMORY[0x1E696AB50]);
  }

  return v4;
}

@end