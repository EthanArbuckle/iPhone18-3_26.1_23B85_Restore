@interface CBPairingAgent
- (CBPairingAgent)initWithParentManager:(id)manager;
- (CBPairingAgentDelegate)delegate;
- (CBPairingAgentParentDelegate)parentManager;
- (id)retrieveOOBDataForPeer:(id)peer;
- (id)retrievePairedPeers;
- (void)dealloc;
- (void)handlePairingCompleted:(id)completed;
- (void)handlePairingMessage:(unsigned __int16)message args:(id)args;
- (void)handlePairingRequested:(id)requested;
- (void)handleUnpaired:(id)unpaired;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pairPeer:(id)peer options:(id)options;
- (void)removeGlobalTemporaryLTK;
- (void)setUseOOBMode:(BOOL)mode;
- (void)unpairPeer:(id)peer;
- (void)unpairPeer:(id)peer options:(id)options;
- (void)updateRegistration;
@end

@implementation CBPairingAgent

- (CBPairingAgent)initWithParentManager:(id)manager
{
  v28 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v26.receiver = self;
  v26.super_class = CBPairingAgent;
  v5 = [(CBPairingAgent *)&v26 init];
  v6 = v5;
  if (v5)
  {
    [(CBPairingAgent *)v5 setParentManager:managerCopy];
    parentManager = [(CBPairingAgent *)v6 parentManager];
    [parentManager sendMsg:10 args:MEMORY[0x1E695E0F8]];

    parentManager2 = [(CBPairingAgent *)v6 parentManager];
    v9 = [parentManager2 sendSyncMsg:12 args:0];

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
          parentManager3 = [(CBPairingAgent *)v6 parentManager];
          v17 = [parentManager3 peerWithInfo:v15];

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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  changeCopy = change;
  pathCopy = path;
  if (objc_opt_class() == context)
  {
    v13 = [pathCopy isEqualToString:@"delegate"];

    if (v13)
    {
      [(CBPairingAgent *)self updateRegistration];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CBPairingAgent;
    [(CBPairingAgent *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)updateRegistration
{
  v13[1] = *MEMORY[0x1E69E9840];
  delegate = [(CBPairingAgent *)self delegate];

  if (delegate)
  {
    delegate2 = [(CBPairingAgent *)self delegate];
    v5 = objc_opt_respondsToSelector();

    parentManager = [(CBPairingAgent *)self parentManager];
    v12 = @"kCBMsgArgProgrammaticPairing";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v5 & 1];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [parentManager sendMsg:10 args:v8];

    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    parentManager2 = [(CBPairingAgent *)self parentManager];
    [parentManager2 sendMsg:10 args:MEMORY[0x1E695E0F8]];
    v10 = *MEMORY[0x1E69E9840];
  }
}

- (id)retrievePairedPeers
{
  v21 = *MEMORY[0x1E69E9840];
  parentManager = [(CBPairingAgent *)self parentManager];
  v4 = [parentManager sendSyncMsg:12 args:0];

  array = [MEMORY[0x1E695DF70] array];
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
        parentManager2 = [(CBPairingAgent *)self parentManager];
        v13 = [parentManager2 peerWithInfo:v11];

        [array addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)pairPeer:(id)peer options:(id)options
{
  peerCopy = peer;
  optionsCopy = options;
  if (!peerCopy)
  {
    [CBPairingAgent pairPeer:options:];
  }

  v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
  identifier = [peerCopy identifier];
  [v7 setObject:identifier forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  parentManager = [(CBPairingAgent *)self parentManager];
  [parentManager sendMsg:13 args:v7];
}

- (void)unpairPeer:(id)peer options:(id)options
{
  v6 = MEMORY[0x1E695DF90];
  peerCopy = peer;
  v10 = [v6 dictionaryWithDictionary:options];
  identifier = [peerCopy identifier];

  [v10 setObject:identifier forKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  parentManager = [(CBPairingAgent *)self parentManager];
  [parentManager sendMsg:15 args:v10];
}

- (void)unpairPeer:(id)peer
{
  peerCopy = peer;
  v5 = peerCopy;
  if (!peerCopy)
  {
    [CBPairingAgent unpairPeer:];
    peerCopy = 0;
  }

  [(CBPairingAgent *)self unpairPeer:peerCopy options:MEMORY[0x1E695E0F8]];
}

- (void)setUseOOBMode:(BOOL)mode
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (self->_useOOBMode != mode)
  {
    self->_useOOBMode = mode;
    parentManager = [(CBPairingAgent *)self parentManager];
    v8 = @"kCBMsgArgUseOOBPairing";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_useOOBMode];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [parentManager sendMsg:16 args:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)retrieveOOBDataForPeer:(id)peer
{
  v14[1] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  parentManager = [(CBPairingAgent *)self parentManager];
  v6 = parentManager;
  if (peerCopy)
  {
    v13 = @"kCBMsgArgDeviceUUID";
    identifier = [peerCopy identifier];
    v14[0] = identifier;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v6 sendSyncMsg:17 args:v8];
  }

  else
  {
    v9 = [parentManager sendSyncMsg:17 args:MEMORY[0x1E695E0F8]];
  }

  v10 = [v9 objectForKeyedSubscript:@"kCBMsgArgPairingData"];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)removeGlobalTemporaryLTK
{
  parentManager = [(CBPairingAgent *)self parentManager];
  [parentManager sendMsg:22 args:MEMORY[0x1E695E0F8]];
}

- (void)handlePairingRequested:(id)requested
{
  requestedCopy = requested;
  parentManager = [(CBPairingAgent *)self parentManager];
  v12 = [parentManager peerWithInfo:requestedCopy];

  v6 = [requestedCopy objectForKeyedSubscript:@"kCBMsgArgPairingType"];
  integerValue = [v6 integerValue];

  v8 = [requestedCopy objectForKeyedSubscript:@"kCBMsgArgPairingPasskey"];

  delegate = [(CBPairingAgent *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(CBPairingAgent *)self delegate];
    [delegate2 pairingAgent:self peerDidRequestPairing:v12 type:integerValue passkey:v8];
  }
}

- (void)handlePairingCompleted:(id)completed
{
  completedCopy = completed;
  parentManager = [(CBPairingAgent *)self parentManager];
  v5 = [parentManager peerWithInfo:completedCopy];

  v6 = [MEMORY[0x1E696ABC0] errorWithInfo:completedCopy];
  if (v6)
  {
    delegate = [(CBPairingAgent *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    delegate2 = [(CBPairingAgent *)self delegate];
    [delegate2 pairingAgent:self peerDidFailToCompletePairing:v5 error:v6];
  }

  else
  {
    v10 = [completedCopy objectForKeyedSubscript:@"kCBMsgArgPairingState"];
    [v5 setPairingState:{objc_msgSend(v10, "integerValue")}];

    delegate3 = [(CBPairingAgent *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }

    delegate2 = [(CBPairingAgent *)self delegate];
    [delegate2 pairingAgent:self peerDidCompletePairing:v5];
  }

LABEL_7:
}

- (void)handleUnpaired:(id)unpaired
{
  unpairedCopy = unpaired;
  parentManager = [(CBPairingAgent *)self parentManager];
  v8 = [parentManager peerWithInfo:unpairedCopy];

  [v8 setPairingState:0];
  delegate = [(CBPairingAgent *)self delegate];
  LOBYTE(parentManager) = objc_opt_respondsToSelector();

  if (parentManager)
  {
    delegate2 = [(CBPairingAgent *)self delegate];
    [delegate2 pairingAgent:self peerDidUnpair:v8];
  }
}

- (void)handlePairingMessage:(unsigned __int16)message args:(id)args
{
  messageCopy = message;
  argsCopy = args;
  if ((messageCopy - 18) < 3)
  {
    [self *off_1E8122300[(messageCopy - 18)]];
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

  [CBScalablePipeManager handleMsg:messageCopy args:v7];
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