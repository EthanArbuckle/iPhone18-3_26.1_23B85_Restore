@interface AVVoiceTriggerServerHysteresisNotifier
- (AVVoiceTriggerServerHysteresisNotifier)initWithSerialQueue:(id)a3;
- (BOOL)isPortActive:(unint64_t)a3 activePortsToken:(unint64_t)a4;
- (id)addPortToMonitor:(unint64_t)a3 hysteresisDurationSeconds:(float)a4 notificationBlock:(id)a5;
- (id)getPortManagerForType:(unint64_t)a3;
- (void)dealloc;
- (void)processState:(unint64_t)a3;
- (void)removePortToMonitor:(unint64_t)a3;
- (void)sendState:(id)a3;
@end

@implementation AVVoiceTriggerServerHysteresisNotifier

- (void)removePortToMonitor:(unint64_t)a3
{
  v4 = [(AVVoiceTriggerServerHysteresisNotifier *)self getPortManagerForType:a3];
  if (v4)
  {
    [(NSMutableArray *)self->_portsToMonitor removeObject:v4];
  }
}

- (id)addPortToMonitor:(unint64_t)a3 hysteresisDurationSeconds:(float)a4 notificationBlock:(id)a5
{
  v8 = a5;
  v9 = [(AVVoiceTriggerServerHysteresisNotifier *)self getPortManagerForType:a3];
  if (!v9)
  {
    v10 = [AVVoiceTriggerServerPortManager alloc];
    *&v11 = a4;
    v9 = [(AVVoiceTriggerServerPortManager *)v10 initWithPortType:a3 hysteresisDurationSeconds:v8 notificationBlock:v11];
    [(NSMutableArray *)self->_portsToMonitor addObject:v9];
  }

  return v9;
}

- (void)processState:(unint64_t)a3
{
  v29 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(AVVoiceTriggerServerHysteresisNotifier *)self portsToMonitor];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v28 count:16];
  if (v6)
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = *v17;
    *&v7 = 136315906;
    v15 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = -[AVVoiceTriggerServerHysteresisNotifier isPortActive:activePortsToken:](self, "isPortActive:activePortsToken:", [v11 portType], a3);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v13 = [v11 portType];
          *buf = v15;
          v21 = "AVVoiceTriggerServer.mm";
          v22 = 1024;
          v23 = 385;
          v24 = 2048;
          v25 = v13;
          v26 = 1024;
          v27 = v12;
          _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d State may have changed for port: %lu current state: %d", buf, 0x22u);
        }

        [(AVVoiceTriggerServerHysteresisNotifier *)self stateChanged:v12 forPort:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v28 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)isPortActive:(unint64_t)a3 activePortsToken:(unint64_t)a4
{
  v4 = (a4 >> 1) & 1;
  if (a3 != 1)
  {
    LOBYTE(v4) = 0;
  }

  if (a3 == 2)
  {
    return (a4 & 0xC) != 0;
  }

  else
  {
    return v4;
  }
}

- (id)getPortManagerForType:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(AVVoiceTriggerServerHysteresisNotifier *)self portsToMonitor];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 portType] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)sendState:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVVoiceTriggerServerHysteresisNotifier_sendState___block_invoke;
  block[3] = &unk_1E7ED02F0;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

uint64_t __52__AVVoiceTriggerServerHysteresisNotifier_sendState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 lastStateSent];

  return [v1 callNotificationBlock:v2];
}

- (void)dealloc
{
  [(NSMutableArray *)self->_portsToMonitor removeAllObjects];
  portsToMonitor = self->_portsToMonitor;
  self->_portsToMonitor = 0;

  queue = self->_queue;
  self->_queue = 0;

  v5.receiver = self;
  v5.super_class = AVVoiceTriggerServerHysteresisNotifier;
  [(AVVoiceTriggerServerHysteresisNotifier *)&v5 dealloc];
}

- (AVVoiceTriggerServerHysteresisNotifier)initWithSerialQueue:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13.receiver = self;
  v13.super_class = AVVoiceTriggerServerHysteresisNotifier;
  v6 = [(AVVoiceTriggerServerHysteresisNotifier *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    portsToMonitor = v7->_portsToMonitor;
    v7->_portsToMonitor = v8;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v7->_portsToMonitor;
      *buf = 136315650;
      v15 = "AVVoiceTriggerServer.mm";
      v16 = 1024;
      v17 = 315;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d portMontior list: %p", buf, 0x1Cu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

@end