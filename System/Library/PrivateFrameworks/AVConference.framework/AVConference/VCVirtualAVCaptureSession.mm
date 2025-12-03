@interface VCVirtualAVCaptureSession
- (BOOL)connectionExists:(id)exists output:(id)output;
- (VCVirtualAVCaptureSession)init;
- (id)connections;
- (id)inputs;
- (id)newConnectionWithInputPorts:(id)ports outputDevice:(id)device;
- (id)outputs;
- (int)startInputDevices;
- (int)stopInputDevices;
- (void)addConnection:(id)connection;
- (void)addConnectionWithInput:(id)input output:(id)output;
- (void)addInput:(id)input;
- (void)addOutput:(id)output;
- (void)beginConfiguration;
- (void)commitConfiguration;
- (void)dealloc;
- (void)init;
- (void)postNotification:(id)notification;
- (void)pushConfigurationBlock:(id)block;
- (void)removeInput:(id)input;
- (void)removeOutput:(id)output;
- (void)startInputDevices;
- (void)startRunning;
- (void)stopInputDevices;
- (void)stopRunning;
@end

@implementation VCVirtualAVCaptureSession

- (VCVirtualAVCaptureSession)init
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCVirtualAVCaptureSession;
  v2 = [(VCVirtualAVCaptureSession *)&v11 init];
  v3 = v2;
  if (!v2)
  {
    [VCVirtualAVCaptureSession init];
LABEL_14:

    return 0;
  }

  v2->_isRunning = 0;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3->_inputs = v4;
  if (!v4)
  {
    [VCVirtualAVCaptureSession init];
    goto LABEL_14;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3->_outputs = v5;
  if (!v5)
  {
    [VCVirtualAVCaptureSession init];
    goto LABEL_14;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3->_connections = v6;
  if (!v6)
  {
    [VCVirtualAVCaptureSession init];
    goto LABEL_14;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3->_batchedConfigurations = v7;
  if (!v7)
  {
    [VCVirtualAVCaptureSession init];
    goto LABEL_14;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v9 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVirtualAVCaptureSession.stateQueue", 0, CustomRootQueue);
  v3->_stateQueue = v9;
  if (!v9)
  {
    [VCVirtualAVCaptureSession init];
    goto LABEL_14;
  }

  return v3;
}

- (void)dealloc
{
  block[5] = *MEMORY[0x1E69E9840];

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__VCVirtualAVCaptureSession_dealloc__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_sync(stateQueue, block);

  v4 = self->_stateQueue;
  if (v4)
  {
    dispatch_release(v4);
    self->_stateQueue = 0;
  }

  v5.receiver = self;
  v5.super_class = VCVirtualAVCaptureSession;
  [(VCVirtualAVCaptureSession *)&v5 dealloc];
}

uint64_t __36__VCVirtualAVCaptureSession_dealloc__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(*(a1 + 32) + 40);
  result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) invalidate];
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)startRunning
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__VCVirtualAVCaptureSession_startRunning__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(stateQueue, v3);
}

_BYTE *__41__VCVirtualAVCaptureSession_startRunning__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[16] == 1)
  {
    __41__VCVirtualAVCaptureSession_startRunning__block_invoke_cold_2();
  }

  else if (([v2 startInputDevices] & 0x80000000) != 0)
  {
    __41__VCVirtualAVCaptureSession_startRunning__block_invoke_cold_1();
  }

  else
  {
    *(*(a1 + 32) + 16) = 1;
    [*(a1 + 32) postNotification:*MEMORY[0x1E6986A90]];
  }

  result = *(a1 + 32);
  if ((result[16] & 1) == 0)
  {
    [result stopInputDevices];
    return [*(a1 + 32) postNotification:*MEMORY[0x1E6986B20]];
  }

  return result;
}

- (void)stopRunning
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__VCVirtualAVCaptureSession_stopRunning__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(stateQueue, v3);
}

_BYTE *__40__VCVirtualAVCaptureSession_stopRunning__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[16])
  {
    if (([v2 stopInputDevices] & 0x80000000) != 0)
    {
      __40__VCVirtualAVCaptureSession_stopRunning__block_invoke_cold_2();
    }

    else
    {
      *(*(a1 + 32) + 16) = 0;
      [*(a1 + 32) postNotification:*MEMORY[0x1E6986A98]];
    }
  }

  else
  {
    __40__VCVirtualAVCaptureSession_stopRunning__block_invoke_cold_1();
  }

  result = *(a1 + 32);
  if (result[16] == 1)
  {
    return [result postNotification:*MEMORY[0x1E6986B20]];
  }

  return result;
}

- (int)startInputDevices
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  inputs = self->_inputs;
  v3 = [(NSMutableSet *)inputs countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(inputs);
        }

        device = [*(*(&v12 + 1) + 8 * v6) device];
        if (objc_opt_respondsToSelector())
        {
          startVirtualCapture = [device startVirtualCapture];
          if (startVirtualCapture < 0)
          {
            [(VCVirtualAVCaptureSession *)device startInputDevices];
            LODWORD(v3) = v10;
            return v3;
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSMutableSet *)inputs countByEnumeratingWithState:&v12 objects:v11 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (int)stopInputDevices
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  inputs = self->_inputs;
  v3 = [(NSMutableSet *)inputs countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(inputs);
        }

        device = [*(*(&v12 + 1) + 8 * v6) device];
        if (objc_opt_respondsToSelector())
        {
          stopVirtualCapture = [device stopVirtualCapture];
          if ((stopVirtualCapture & 0x80000000) != 0)
          {
            [(VCVirtualAVCaptureSession *)device stopInputDevices];
            LODWORD(v3) = v10;
            return v3;
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSMutableSet *)inputs countByEnumeratingWithState:&v12 objects:v11 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

void __52__VCVirtualAVCaptureSession_pushConfigurationBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 56))
  {
    v4 = _Block_copy(v2);
    [*(*(a1 + 32) + 48) addObject:v4];

    _Block_release(v4);
  }

  else
  {
    v5 = v2[2];

    v5();
  }
}

- (id)newConnectionWithInputPorts:(id)ports outputDevice:(id)device
{
  v19 = *MEMORY[0x1E69E9840];
  if (!ports || !device || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [VCVirtualAVCaptureSession newConnectionWithInputPorts:? outputDevice:?];
    return v13;
  }

  v6 = [[VCVirtualAVCaptureConnection alloc] initWithInputPorts:ports output:device];
  if (!v6)
  {
    [VCVirtualAVCaptureSession newConnectionWithInputPorts:? outputDevice:?];
    return v13;
  }

  v7 = v6;
  [device addConnection:v6];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [ports countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(ports);
        }

        [*(*(&v15 + 1) + 8 * v11++) addConnection:v7];
      }

      while (v9 != v11);
      v9 = [ports countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v9);
  }

  [(VCVirtualAVCaptureConnection *)v7 setActive:1];
  return v7;
}

- (BOOL)connectionExists:(id)exists output:(id)output
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  connections = self->_connections;
  v8 = [(NSMutableSet *)connections countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(connections);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if ([objc_msgSend(v12 "inputPorts")] && objc_msgSend(v12, "output") == output)
        {
          LOBYTE(v8) = 1;
          return v8;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [(NSMutableSet *)connections countByEnumeratingWithState:&v15 objects:v14 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v8;
}

void __43__VCVirtualAVCaptureSession_addConnection___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 40) containsObject:*(a1 + 40)])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        v7 = 136315906;
        v8 = v2;
        v9 = 2080;
        v10 = "[VCVirtualAVCaptureSession addConnection:]_block_invoke";
        v11 = 1024;
        v12 = 212;
        v13 = 2048;
        v14 = v4;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Attempting to add connection[%p] that already exists", &v7, 0x26u);
      }
    }
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 40);

    [v6 addObject:v5];
  }
}

- (void)addInput:(id)input
{
  v3[6] = *MEMORY[0x1E69E9840];
  if (input)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __38__VCVirtualAVCaptureSession_addInput___block_invoke;
    v3[3] = &unk_1E85F37F0;
    v3[4] = self;
    v3[5] = input;
    [(VCVirtualAVCaptureSession *)self pushConfigurationBlock:v3];
  }

  else
  {
    [VCVirtualAVCaptureSession addInput:];
  }
}

void __38__VCVirtualAVCaptureSession_addInput___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 24) containsObject:*(a1 + 40)])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        v16 = 136315906;
        v17 = v2;
        v18 = 2080;
        v19 = "[VCVirtualAVCaptureSession addInput:]_block_invoke";
        v20 = 1024;
        v21 = 233;
        v22 = 2048;
        v23 = v4;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Attempting to add input[%p] that already exists", &v16, 0x26u);
      }
    }
  }

  else
  {
    [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = *(*(a1 + 32) + 32);
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 32) addConnectionWithInput:*(a1 + 40) output:*(*(&v27 + 1) + 8 * i)];
        }

        v7 = [v5 countByEnumeratingWithState:&v27 objects:v26 count:16];
      }

      while (v7);
    }

    v10 = [*(a1 + 40) device];
    if (*(*(a1 + 32) + 16) == 1)
    {
      v11 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 startVirtualCapture];
        if (v12 < 0)
        {
          v13 = v12;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v16 = 136316162;
              v17 = v14;
              v18 = 2080;
              v19 = "[VCVirtualAVCaptureSession addInput:]_block_invoke";
              v20 = 1024;
              v21 = 247;
              v22 = 2048;
              v23 = v11;
              v24 = 1024;
              v25 = v13;
              _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to start virtual device[%p]. result=%d", &v16, 0x2Cu);
            }
          }
        }
      }
    }
  }
}

- (void)addOutput:(id)output
{
  v3[6] = *MEMORY[0x1E69E9840];
  if (output)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __39__VCVirtualAVCaptureSession_addOutput___block_invoke;
    v3[3] = &unk_1E85F37F0;
    v3[4] = self;
    v3[5] = output;
    [(VCVirtualAVCaptureSession *)self pushConfigurationBlock:v3];
  }

  else
  {
    [VCVirtualAVCaptureSession addOutput:];
  }
}

void __39__VCVirtualAVCaptureSession_addOutput___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 32) containsObject:*(a1 + 40)])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        *buf = 136315906;
        v16 = v2;
        v17 = 2080;
        v18 = "[VCVirtualAVCaptureSession addOutput:]_block_invoke";
        v19 = 1024;
        v20 = 260;
        v21 = 2048;
        v22 = v4;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Attempting to add output[%p] that already exists", buf, 0x26u);
      }
    }
  }

  else
  {
    [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = *(*(a1 + 32) + 24);
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 32) addConnectionWithInput:*(*(&v11 + 1) + 8 * i) output:*(a1 + 40)];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v7);
    }
  }
}

- (void)removeInput:(id)input
{
  v3[6] = *MEMORY[0x1E69E9840];
  if (input)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __41__VCVirtualAVCaptureSession_removeInput___block_invoke;
    v3[3] = &unk_1E85F37F0;
    v3[4] = self;
    v3[5] = input;
    [(VCVirtualAVCaptureSession *)self pushConfigurationBlock:v3];
  }

  else
  {
    [VCVirtualAVCaptureSession removeInput:];
  }
}

uint64_t __41__VCVirtualAVCaptureSession_removeInput___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) containsObject:*(a1 + 40)] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 40) disconnect];
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  return [v3 removeObject:v2];
}

- (void)removeOutput:(id)output
{
  v3[6] = *MEMORY[0x1E69E9840];
  if (output)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __42__VCVirtualAVCaptureSession_removeOutput___block_invoke;
    v3[3] = &unk_1E85F37F0;
    v3[4] = self;
    v3[5] = output;
    [(VCVirtualAVCaptureSession *)self pushConfigurationBlock:v3];
  }

  else
  {
    [VCVirtualAVCaptureSession removeOutput:];
  }
}

uint64_t __42__VCVirtualAVCaptureSession_removeOutput___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 32) containsObject:*(a1 + 40)] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 40) disconnect];
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);

  return [v3 removeObject:v2];
}

uint64_t __40__VCVirtualAVCaptureSession_connections__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) allObjects];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t __35__VCVirtualAVCaptureSession_inputs__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) allObjects];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t __36__VCVirtualAVCaptureSession_outputs__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) allObjects];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)postNotification:(id)notification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:notification object:self];
}

uint64_t __48__VCVirtualAVCaptureSession_commitConfiguration__block_invoke(uint64_t result)
{
  v1 = result;
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (!v3 || !v4)
  {
    result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"commitConfiguration invalid state. _configurationCount=%d, _batchedConfigurations=%@", v3, v4}];
    v2 = *(v1 + 32);
    LODWORD(v3) = *(v2 + 56);
  }

  *(v2 + 56) = v3 - 1;
  v5 = *(v1 + 32);
  if (!*(v5 + 56))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = *(v5 + 48);
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v12 + 1) + 8 * i) + 16))();
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v8);
    }

    return [*(*(v1 + 32) + 48) removeAllObjects];
  }

  return result;
}

- (void)pushConfigurationBlock:(id)block
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__VCVirtualAVCaptureSession_pushConfigurationBlock___block_invoke;
    block[3] = &unk_1E85F4E98;
    block[4] = self;
    block[5] = block;
    dispatch_sync(stateQueue, block);
  }
}

- (void)addConnectionWithInput:(id)input output:(id)output
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  if (!-[VCVirtualAVCaptureSession connectionExists:output:](self, "connectionExists:output:", [input ports], output))
  {
    v7 = -[VCVirtualAVCaptureSession newConnectionWithInputPorts:outputDevice:](self, "newConnectionWithInputPorts:outputDevice:", [input ports], output);
    if (v7)
    {
      v10 = v7;
      [(NSMutableSet *)self->_connections addObject:v7];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCVirtualAVCaptureSession addConnectionWithInput:output:]";
        v15 = 1024;
        v16 = 198;
        v17 = 2048;
        inputCopy = input;
        v19 = 2048;
        outputCopy = output;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to create connection for input:[%p], output:[%p]", buf, 0x30u);
      }
    }
  }
}

- (void)addConnection:(id)connection
{
  v12 = *MEMORY[0x1E69E9840];
  if (connection)
  {
    if (self->_stateQueue)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __43__VCVirtualAVCaptureSession_addConnection___block_invoke;
      v5[3] = &unk_1E85F37F0;
      v5[4] = self;
      v5[5] = connection;
      [(VCVirtualAVCaptureSession *)self pushConfigurationBlock:v5];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_19_3())
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCVirtualAVCaptureSession addConnection:]";
      v10 = 1024;
      v11 = 207;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Attempting to add nil connection", buf, 0x1Cu);
    }
  }
}

- (id)connections
{
  OUTLINED_FUNCTION_9_30(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_37();
  [MEMORY[0x1E695DEC8] array];
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    OUTLINED_FUNCTION_3_44();
    OUTLINED_FUNCTION_12_16(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, 3221225472, v21, v22, v23, v24);
  }

  OUTLINED_FUNCTION_7_30(stateQueue, v3, v4, v5, v6, v7, v8);
  return self;
}

- (id)inputs
{
  OUTLINED_FUNCTION_9_30(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_37();
  [MEMORY[0x1E695DEC8] array];
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    OUTLINED_FUNCTION_3_44();
    OUTLINED_FUNCTION_12_16(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, 3221225472, v21, v22, v23, v24);
  }

  OUTLINED_FUNCTION_7_30(stateQueue, v3, v4, v5, v6, v7, v8);
  return self;
}

- (id)outputs
{
  OUTLINED_FUNCTION_9_30(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_37();
  [MEMORY[0x1E695DEC8] array];
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    OUTLINED_FUNCTION_3_44();
    OUTLINED_FUNCTION_12_16(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, 3221225472, v21, v22, v23, v24);
  }

  OUTLINED_FUNCTION_7_30(stateQueue, v3, v4, v5, v6, v7, v8);
  return self;
}

- (void)beginConfiguration
{
  v4[5] = *MEMORY[0x1E69E9840];
  if (self->_stateQueue)
  {
    OUTLINED_FUNCTION_6_43();
    v4[1] = 3221225472;
    v4[2] = __47__VCVirtualAVCaptureSession_beginConfiguration__block_invoke;
    v4[3] = &unk_1E85F3778;
    v4[4] = v2;
    dispatch_sync(v3, v4);
  }
}

- (void)commitConfiguration
{
  v4[5] = *MEMORY[0x1E69E9840];
  if (self->_stateQueue)
  {
    OUTLINED_FUNCTION_6_43();
    v4[1] = 3221225472;
    v4[2] = __48__VCVirtualAVCaptureSession_commitConfiguration__block_invoke;
    v4[3] = &unk_1E85F3778;
    v4[4] = v2;
    dispatch_sync(v3, v4);
  }
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize virtual capture session", v2, v3, v4, v5, v6);
    }
  }
}

void __41__VCVirtualAVCaptureSession_startRunning__block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Session failed to stop input devices", v2, v3, v4, v5, v6);
    }
  }
}

void __41__VCVirtualAVCaptureSession_startRunning__block_invoke_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_19_3())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Session is already running", v2, v3, v4, v5, v6);
    }
  }
}

void __40__VCVirtualAVCaptureSession_stopRunning__block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_19_3())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Session is already stopped", v2, v3, v4, v5, v6);
    }
  }
}

void __40__VCVirtualAVCaptureSession_stopRunning__block_invoke_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Session failed to stop input devices", v2, v3, v4, v5, v6);
    }
  }
}

- (void)startInputDevices
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_36_3(&dword_1DB56E000, v5, v6, " [%s] %s:%d Failed to start virtual device[%p]. result=%d", v7, v8, v9, v10, v11);
    }
  }

  *a3 = a2;
}

- (void)stopInputDevices
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_36_3(&dword_1DB56E000, v4, v5, " [%s] %s:%d Failed to stop virtual device[%p]. result=%d", v6, v7, v8, v9, v10);
    }
  }

  *a3 = -2147418113;
}

- (void)newConnectionWithInputPorts:(void *)a1 outputDevice:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Invalid virtual IO", v4, v5, v6, v7, 2u);
    }
  }

  *a1 = 0;
}

- (void)newConnectionWithInputPorts:(void *)a1 outputDevice:.cold.2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate connection", v4, v5, v6, v7, 2u);
    }
  }

  *a1 = 0;
}

- (void)addInput:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_19_3())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Attempting to add nil input device", v2, v3, v4, v5, v6);
    }
  }
}

- (void)addOutput:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_19_3())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Attempting to add nil output", v2, v3, v4, v5, v6);
    }
  }
}

- (void)removeInput:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_19_3())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Attempting to remove nil input", v2, v3, v4, v5, v6);
    }
  }
}

- (void)removeOutput:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_19_3())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Attempting to remove nil output", v2, v3, v4, v5, v6);
    }
  }
}

@end