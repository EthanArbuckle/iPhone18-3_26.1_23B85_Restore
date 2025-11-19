@interface CBScalablePipeManager
- (CBScalablePipeManager)initWithDelegate:(id)a3 queue:(id)a4;
- (CBScalablePipeManagerDelegate)delegate;
- (id)pipeForName:(id)a3 identifier:(id)a4;
- (void)dealloc;
- (void)getStatistics:(id)a3;
- (void)handleEndpointAdded:(id)a3;
- (void)handleEndpointRemoved:(id)a3;
- (void)handleHostStateUpdated:(id)a3;
- (void)handleMsg:(unsigned __int16)a3 args:(id)a4;
- (void)handlePipeConnected:(id)a3;
- (void)handlePipeDisconnected:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)orphanPipes;
- (void)registerEndpoint:(id)a3 type:(int64_t)a4 priority:(int64_t)a5 options:(id)a6;
- (void)registerEndpoint:(id)a3 type:(int64_t)a4 priority:(int64_t)a5 transport:(int64_t)a6;
- (void)unregisterAllEndpoints;
- (void)unregisterEndpoint:(id)a3;
@end

@implementation CBScalablePipeManager

- (CBScalablePipeManager)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CBScalablePipeManager;
  v8 = [(CBManager *)&v14 initInternal];
  if (v8)
  {
    [(CBScalablePipeManager *)v8 addObserver:v8 forKeyPath:@"state" options:0 context:objc_opt_class()];
    [(CBScalablePipeManager *)v8 addObserver:v8 forKeyPath:@"delegate" options:0 context:objc_opt_class()];
    [(CBScalablePipeManager *)v8 addObserver:v8 forKeyPath:@"localName" options:0 context:objc_opt_class()];
    [(CBScalablePipeManager *)v8 setDelegate:v6];
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    identifiers = v8->_identifiers;
    v8->_identifiers = v9;

    v11 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    pipes = v8->_pipes;
    v8->_pipes = v11;

    [(CBManager *)v8 startWithQueue:v7 options:0 sessionType:2];
  }

  return v8;
}

- (void)dealloc
{
  [(CBScalablePipeManager *)self orphanPipes];
  [(CBScalablePipeManager *)self removeObserver:self forKeyPath:@"state" context:objc_opt_class()];
  [(CBScalablePipeManager *)self removeObserver:self forKeyPath:@"delegate" context:objc_opt_class()];
  [(CBScalablePipeManager *)self removeObserver:self forKeyPath:@"localName" context:objc_opt_class()];
  v3.receiver = self;
  v3.super_class = CBScalablePipeManager;
  [(CBManager *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (objc_opt_class() == a6)
  {
    if ([v10 isEqualToString:@"state"])
    {
      if ([(CBManager *)self state]!= CBManagerStatePoweredOn)
      {
        [(CBScalablePipeManager *)self orphanPipes];
        if ([(CBManager *)self state]== CBManagerStateResetting)
        {
          [(NSMutableSet *)self->_identifiers removeAllObjects];
        }
      }

      v13 = [(CBScalablePipeManager *)self delegate];
      [v13 scalablePipeManagerDidUpdateState:self];
    }

    else
    {
      if (![v10 isEqualToString:@"delegate"])
      {
        goto LABEL_20;
      }

      v14 = [(CBScalablePipeManager *)self delegate];
      *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;

      v15 = [(CBScalablePipeManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v16;

      v17 = [(CBScalablePipeManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      *&self->_delegateFlags = *&self->_delegateFlags & 0xFB | v18;

      v13 = [(CBScalablePipeManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v19 = 8;
      }

      else
      {
        v19 = 0;
      }

      *&self->_delegateFlags = *&self->_delegateFlags & 0xF7 | v19;
    }

    goto LABEL_20;
  }

  v20.receiver = self;
  v20.super_class = CBScalablePipeManager;
  [(CBScalablePipeManager *)&v20 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_20:
}

- (id)pipeForName:(id)a3 identifier:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v21 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_pipes;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      v13 = [v12 name];
      if ([v13 isEqualToString:v6])
      {
        v14 = [v12 peer];
        v15 = [v14 identifier];
        v16 = [v15 isEqual:v21];

        if (v16)
        {
          v17 = v12;

          goto LABEL_17;
        }
      }

      else
      {
      }

      if (v9 == ++v11)
      {
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (!v9)
        {
          break;
        }

        goto LABEL_4;
      }
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  v18 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    [(CBScalablePipeManager *)v21 pipeForName:v6 identifier:v18];
  }

  v17 = 0;
LABEL_17:

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)orphanPipes
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_pipes;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setOrphan];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSHashTable *)self->_pipes removeAllObjects];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)registerEndpoint:(id)a3 type:(int64_t)a4 priority:(int64_t)a5 transport:(int64_t)a6
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = @"kCBMsgArgsTransport";
  v10 = MEMORY[0x1E696AD98];
  v11 = a3;
  v12 = [v10 numberWithInteger:a6];
  v16[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [(CBScalablePipeManager *)self registerEndpoint:v11 type:a4 priority:a5 options:v13];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)registerEndpoint:(id)a3 type:(int64_t)a4 priority:(int64_t)a5 options:(id)a6
{
  v42[8] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = [v11 objectForKeyedSubscript:@"kCBMsgArgRequiresEncryption"];
  if (v12)
  {
    v13 = [v11 objectForKeyedSubscript:@"kCBMsgArgRequiresEncryption"];
    v39 = [v13 BOOLValue];
  }

  else
  {
    v39 = 1;
  }

  v14 = [v11 objectForKeyedSubscript:@"kCBMsgArgsTransport"];
  if (v14)
  {
    v15 = [v11 objectForKeyedSubscript:@"kCBMsgArgsTransport"];
    v38 = [v15 intValue];
  }

  else
  {
    v38 = 0;
  }

  v16 = [v11 objectForKeyedSubscript:@"kCBDisableBluetoothReliability"];
  if (v16)
  {
    v17 = [v11 objectForKeyedSubscript:@"kCBDisableBluetoothReliability"];
    v18 = [v17 BOOLValue];
  }

  else
  {
    v18 = 0;
  }

  v40 = self;

  v19 = [v11 objectForKeyedSubscript:@"kCBOptionStayConnectedWhenIdle"];
  if (v19)
  {
    v20 = [v11 objectForKeyedSubscript:@"kCBOptionStayConnectedWhenIdle"];
    v21 = [v20 BOOLValue];
  }

  else
  {
    v21 = 0;
  }

  v22 = [v11 objectForKeyedSubscript:@"kCBLePipeOptionTrace"];
  if (v22)
  {
    [v11 objectForKeyedSubscript:@"kCBLePipeOptionTrace"];
    v24 = v23 = a5;
    v34 = [v24 intValue];

    a5 = v23;
    if ([v10 length])
    {
      goto LABEL_15;
    }
  }

  else
  {
    v34 = 0;

    if ([v10 length])
    {
      goto LABEL_15;
    }
  }

  [CBScalablePipeManager registerEndpoint:a2 type:v40 priority:? options:?];
LABEL_15:
  v42[0] = v10;
  v41[0] = @"kCBMsgArgName";
  v41[1] = @"kCBMsgArgType";
  v35 = v10;
  v37 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v42[1] = v37;
  v41[2] = @"kCBLePipeMsgArgPriority";
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v42[2] = v25;
  v41[3] = @"kCBMsgArgOptions";
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:v38];
  v42[3] = v26;
  v41[4] = @"kCBMsgArgRequiresEncryption";
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v39];
  v42[4] = v27;
  v41[5] = @"kCBDisableBluetoothReliability";
  v28 = [MEMORY[0x1E696AD98] numberWithInt:v18];
  v42[5] = v28;
  v41[6] = @"kCBOptionStayConnectedWhenIdle";
  v29 = [MEMORY[0x1E696AD98] numberWithInt:v21];
  v42[6] = v29;
  v41[7] = @"kCBLePipeOptionTrace";
  v30 = [MEMORY[0x1E696AD98] numberWithInt:v34];
  v42[7] = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:8];
  v32 = [(CBManager *)v40 sendMsg:10 args:v31];

  if (v32)
  {
    [(NSMutableSet *)v40->_identifiers addObject:v35];
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)unregisterEndpoint:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![v5 length])
  {
    [(CBScalablePipeManager *)a2 unregisterEndpoint:?];
  }

  v9 = @"kCBMsgArgName";
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [(CBManager *)self sendMsg:11 args:v6];

  if (v7)
  {
    [(NSMutableSet *)self->_identifiers removeObject:v5];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)unregisterAllEndpoints
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_identifiers;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v15 = @"kCBMsgArgName";
        v16 = v8;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:{1, v11}];
        [(CBManager *)self sendMsg:11 args:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_identifiers removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)getStatistics:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CBScalablePipeManager_getStatistics___block_invoke;
  v6[3] = &unk_1E811CFC8;
  v7 = v4;
  v5 = v4;
  [(CBManager *)self sendMsg:14 args:MEMORY[0x1E695E0F8] withReply:v6];
}

- (void)handleEndpointAdded:(id)a3
{
  v4 = a3;
  v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgName"];
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];

  v6 = [(NSMutableSet *)self->_identifiers member:v8];

  if (v6)
  {
    if (v5)
    {
      [(NSMutableSet *)self->_identifiers removeObject:v8];
    }

    if (*&self->_delegateFlags)
    {
      v7 = [(CBScalablePipeManager *)self delegate];
      [v7 scalablePipeManager:self didRegisterEndpoint:v8 error:v5];
    }
  }
}

- (void)handleEndpointRemoved:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"kCBMsgArgName"];
  [(NSMutableSet *)self->_identifiers removeObject:?];
  if ((*&self->_delegateFlags & 2) != 0)
  {
    v4 = [(CBScalablePipeManager *)self delegate];
    [v4 scalablePipeManager:self didUnregisterEndpoint:v5];
  }
}

- (void)handlePipeConnected:(id)a3
{
  v4 = a3;
  v6 = [[CBScalablePipe alloc] initWithPipeManager:self info:v4];

  [(NSHashTable *)self->_pipes addObject:v6];
  if ((*&self->_delegateFlags & 4) != 0)
  {
    v5 = [(CBScalablePipeManager *)self delegate];
    [v5 scalablePipeManager:self pipeDidConnect:v6];
  }
}

- (void)handlePipeDisconnected:(id)a3
{
  v4 = a3;
  v9 = [v4 objectForKeyedSubscript:@"kCBMsgArgName"];
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];

  v7 = [(CBScalablePipeManager *)self pipeForName:v9 identifier:v5];
  if (v7)
  {
    if ((*&self->_delegateFlags & 8) != 0)
    {
      v8 = [(CBScalablePipeManager *)self delegate];
      [v8 scalablePipeManager:self pipeDidDisconnect:v7 error:v6];
    }

    [(NSHashTable *)self->_pipes removeObject:v7];
  }
}

- (void)handleHostStateUpdated:(id)a3
{
  v4 = a3;
  v10 = [v4 objectForKeyedSubscript:@"kCBMsgArgName"];
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [(CBScalablePipeManager *)self pipeForName:v10 identifier:v5];
  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgState"];

  v8 = [v7 integerValue];
  v9 = [v6 peer];
  [v9 setHostState:v8];
}

- (void)handleMsg:(unsigned __int16)a3 args:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4 <= 16)
  {
    if (v4 == 15)
    {
      v8 = &selRef_handleEndpointAdded_;
    }

    else
    {
      if (v4 != 16)
      {
        goto LABEL_20;
      }

      v8 = &selRef_handleEndpointRemoved_;
    }

    v7 = 1;
    goto LABEL_13;
  }

  if (v4 == 17)
  {
    v7 = 0;
    v8 = &selRef_handlePipeConnected_;
    goto LABEL_13;
  }

  if (v4 == 18)
  {
    v7 = 0;
    v8 = &selRef_handlePipeDisconnected_;
    goto LABEL_13;
  }

  if (v4 != 19)
  {
LABEL_20:
    if (CBLogInitOnce != -1)
    {
      [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
    }

    v12 = CBLogComponent;
    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    [CBScalablePipeManager handleMsg:v4 args:v12];

    return;
  }

  v7 = 0;
  v8 = &selRef_handleHostStateUpdated_;
LABEL_13:
  v9 = *v8;
  v10 = [(CBManager *)self state];
  if ((v7 & 1) != 0 || v10 == CBManagerStatePoweredOn)
  {
    [self v9];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
    }

    v11 = CBLogComponent;
    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
    {
LABEL_18:

      return;
    }

    [(CBScalablePipeManager *)self handleMsg:v4 args:v11];
  }
}

- (CBScalablePipeManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pipeForName:(os_log_t)log identifier:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1C0AC1000, log, OS_LOG_TYPE_ERROR, "Unable to locate pipe to device %@ on endpoint %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)registerEndpoint:(uint64_t)a1 type:(uint64_t)a2 priority:options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CBScalablePipeManager.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"identifier.length"}];
}

- (void)unregisterEndpoint:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CBScalablePipeManager.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"identifier.length"}];
}

- (void)handleMsg:(os_log_t)log args:.cold.2(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_debug_impl(&dword_1C0AC1000, log, OS_LOG_TYPE_DEBUG, "%@ is not powered on, ignoring message: %u", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)handleMsg:(int)a1 args:(NSObject *)a2 .cold.4(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1C0AC1000, a2, OS_LOG_TYPE_ERROR, "Unhandled XPC message: %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end