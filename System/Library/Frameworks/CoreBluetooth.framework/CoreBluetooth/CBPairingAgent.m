@interface CBPairingAgent
- (CBPairingAgent)initWithParentManager:(id)a3;
- (CBPairingAgentDelegate)delegate;
- (CBPairingAgentParentDelegate)parentManager;
- (id)retrieveOOBDataForPeer:(id)a3;
- (id)retrievePairedPeers;
- (void)dealloc;
- (void)handlePairingCompleted:(id)a3;
- (void)handlePairingMessage:(unsigned __int16)a3 args:(id)a4;
- (void)handlePairingRequested:(id)a3;
- (void)handleUnpaired:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pairPeer:(id)a3 options:(id)a4;
- (void)removeGlobalTemporaryLTK;
- (void)setUseOOBMode:(BOOL)a3;
- (void)unpairPeer:(id)a3;
- (void)unpairPeer:(id)a3 options:(id)a4;
- (void)updateRegistration;
@end

@implementation CBPairingAgent

- (CBPairingAgent)initWithParentManager:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CBPairingAgent;
  v5 = [(CBPairingAgent *)&v26 init];
  v6 = v5;
  if (v5)
  {
    [(CBPairingAgent *)v5 setParentManager:v4];
    v7 = [(CBPairingAgent *)v6 parentManager];
    [v7 sendMsg:10 args:MEMORY[0x1E695E0F8]];

    v8 = [(CBPairingAgent *)v6 parentManager];
    v9 = [v8 sendSyncMsg:12 args:0];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v9;
    v10 = [v9 objectForKeyedSubscript:@"kCBMsgArgDevices"];
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * v14);
          v16 = [(CBPairingAgent *)v6 parentManager];
          v17 = [v16 peerWithInfo:v15];

          v18 = [v15 objectForKeyedSubscript:@"kCBMsgArgPairingState"];
          [v17 setPairingState:{objc_msgSend(v18, "integerValue")}];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }

    [(CBPairingAgent *)v6 addObserver:v6 forKeyPath:@"delegate" options:0 context:objc_opt_class()];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  [(CBPairingAgent *)self removeObserver:self forKeyPath:@"delegate" context:objc_opt_class()];
  v3.receiver = self;
  v3.super_class = CBPairingAgent;
  [(CBPairingAgent *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  if (objc_opt_class() == a6)
  {
    v13 = [v12 isEqualToString:@"delegate"];

    if (v13)
    {
      [(CBPairingAgent *)self updateRegistration];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CBPairingAgent;
    [(CBPairingAgent *)&v14 observeValueForKeyPath:v12 ofObject:v10 change:v11 context:a6];
  }
}

- (void)updateRegistration
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(CBPairingAgent *)self delegate];

  if (v3)
  {
    v4 = [(CBPairingAgent *)self delegate];
    v5 = objc_opt_respondsToSelector();

    v6 = [(CBPairingAgent *)self parentManager];
    v12 = @"kCBMsgArgProgrammaticPairing";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v5 & 1];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v6 sendMsg:10 args:v8];

    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = [(CBPairingAgent *)self parentManager];
    [v11 sendMsg:10 args:MEMORY[0x1E695E0F8]];
    v10 = *MEMORY[0x1E69E9840];
  }
}

- (id)retrievePairedPeers
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(CBPairingAgent *)self parentManager];
  v4 = [v3 sendSyncMsg:12 args:0];

  v5 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 objectForKeyedSubscript:{@"kCBMsgArgDevices", 0}];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(CBPairingAgent *)self parentManager];
        v13 = [v12 peerWithInfo:v11];

        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)pairPeer:(id)a3 options:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!v10)
  {
    [CBPairingAgent pairPeer:options:];
  }

  v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
  v8 = [v10 identifier];
  [v7 setObject:v8 forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  v9 = [(CBPairingAgent *)self parentManager];
  [v9 sendMsg:13 args:v7];
}

- (void)unpairPeer:(id)a3 options:(id)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v10 = [v6 dictionaryWithDictionary:a4];
  v8 = [v7 identifier];

  [v10 setObject:v8 forKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v9 = [(CBPairingAgent *)self parentManager];
  [v9 sendMsg:15 args:v10];
}

- (void)unpairPeer:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [CBPairingAgent unpairPeer:];
    v4 = 0;
  }

  [(CBPairingAgent *)self unpairPeer:v4 options:MEMORY[0x1E695E0F8]];
}

- (void)setUseOOBMode:(BOOL)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (self->_useOOBMode != a3)
  {
    self->_useOOBMode = a3;
    v4 = [(CBPairingAgent *)self parentManager];
    v8 = @"kCBMsgArgUseOOBPairing";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_useOOBMode];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v4 sendMsg:16 args:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)retrieveOOBDataForPeer:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CBPairingAgent *)self parentManager];
  v6 = v5;
  if (v4)
  {
    v13 = @"kCBMsgArgDeviceUUID";
    v7 = [v4 identifier];
    v14[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v6 sendSyncMsg:17 args:v8];
  }

  else
  {
    v9 = [v5 sendSyncMsg:17 args:MEMORY[0x1E695E0F8]];
  }

  v10 = [v9 objectForKeyedSubscript:@"kCBMsgArgPairingData"];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)removeGlobalTemporaryLTK
{
  v2 = [(CBPairingAgent *)self parentManager];
  [v2 sendMsg:22 args:MEMORY[0x1E695E0F8]];
}

- (void)handlePairingRequested:(id)a3
{
  v4 = a3;
  v5 = [(CBPairingAgent *)self parentManager];
  v12 = [v5 peerWithInfo:v4];

  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgPairingType"];
  v7 = [v6 integerValue];

  v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgPairingPasskey"];

  v9 = [(CBPairingAgent *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CBPairingAgent *)self delegate];
    [v11 pairingAgent:self peerDidRequestPairing:v12 type:v7 passkey:v8];
  }
}

- (void)handlePairingCompleted:(id)a3
{
  v13 = a3;
  v4 = [(CBPairingAgent *)self parentManager];
  v5 = [v4 peerWithInfo:v13];

  v6 = [MEMORY[0x1E696ABC0] errorWithInfo:v13];
  if (v6)
  {
    v7 = [(CBPairingAgent *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = [(CBPairingAgent *)self delegate];
    [v9 pairingAgent:self peerDidFailToCompletePairing:v5 error:v6];
  }

  else
  {
    v10 = [v13 objectForKeyedSubscript:@"kCBMsgArgPairingState"];
    [v5 setPairingState:{objc_msgSend(v10, "integerValue")}];

    v11 = [(CBPairingAgent *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = [(CBPairingAgent *)self delegate];
    [v9 pairingAgent:self peerDidCompletePairing:v5];
  }

LABEL_7:
}

- (void)handleUnpaired:(id)a3
{
  v4 = a3;
  v5 = [(CBPairingAgent *)self parentManager];
  v8 = [v5 peerWithInfo:v4];

  [v8 setPairingState:0];
  v6 = [(CBPairingAgent *)self delegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(CBPairingAgent *)self delegate];
    [v7 pairingAgent:self peerDidUnpair:v8];
  }
}

- (void)handlePairingMessage:(unsigned __int16)a3 args:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ((v4 - 18) < 3)
  {
    [self *off_1E8122300[(v4 - 18)]];
LABEL_3:

    return;
  }

  if (CBLogInitOnce != -1)
  {
    [CBPeer handleMsg:args:];
  }

  v7 = CBLogComponent;
  if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_3;
  }

  [CBScalablePipeManager handleMsg:v4 args:v7];
}

- (CBPairingAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CBPairingAgentParentDelegate)parentManager
{
  WeakRetained = objc_loadWeakRetained(&self->_parentManager);

  return WeakRetained;
}

- (void)pairPeer:useMITM:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peer" object:? file:? lineNumber:? description:?];
}

- (void)pairPeer:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peer" object:? file:? lineNumber:? description:?];
}

- (void)unpairPeer:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peer" object:? file:? lineNumber:? description:?];
}

- (void)respondToPairingRequest:type:accept:data:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peer" object:? file:? lineNumber:? description:?];
}

@end