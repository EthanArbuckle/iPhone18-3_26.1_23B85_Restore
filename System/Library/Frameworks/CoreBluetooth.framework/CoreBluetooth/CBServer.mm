@interface CBServer
- (CBServer)init;
- (NSString)description;
- (void)_activateWithCompletion:(id)completion;
- (void)_handleConnectionInvalidated:(id)invalidated;
- (void)_invalidate;
- (void)_startIfNeeded;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)pairingGenerateOOBDataForPeer:(id)peer completionHandler:(id)handler;
- (void)pairingSetOOBEnabled:(BOOL)enabled peer:(id)peer completionHandler:(id)handler;
- (void)peripheralManager:(id)manager didOpenL2CAPChannel:(id)channel error:(id)error;
- (void)peripheralManager:(id)manager didPublishL2CAPChannel:(unsigned __int16)channel error:(id)error;
- (void)peripheralManager:(id)manager didUnpublishL2CAPChannel:(unsigned __int16)channel error:(id)error;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)setLabel:(id)label;
@end

@implementation CBServer

- (CBServer)init
{
  v6.receiver = self;
  v6.super_class = CBServer;
  v2 = [(CBServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_CBServer;
    v4 = v3;
  }

  return v3;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    selfCopy = self;
    v4 = self->_ucat;
    LogCategory_Remove();
    self = selfCopy;
    selfCopy->_ucat = 0;
  }

  v5.receiver = self;
  v5.super_class = CBServer;
  [(CBServer *)&v5 dealloc];
}

- (NSString)description
{
  bleListenPSM = self->_bleListenPSM;
  bleListeningPSM = self->_bleListeningPSM;
  return NSPrintF_safe();
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v4 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF();
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CBServer_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E811E440;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __36__CBServer__activateWithCompletion___block_invoke;
  v17[3] = &unk_1E811D350;
  v19 = &v20;
  v17[4] = self;
  v5 = completionCopy;
  v18 = v5;
  v6 = MEMORY[0x1C68DF720](v17);
  if (self->_activateCalled || self->_invalidateCalled || (self->_activateCalled = 1, v7 = [[CBPeripheralManager alloc] initWithDelegate:self queue:self->_dispatchQueue], peripheralManager = self->_peripheralManager, self->_peripheralManager = v7, peripheralManager, !self->_peripheralManager))
  {
    v12 = *MEMORY[0x1E696A768];
    v13 = NSErrorF_safe();
    v14 = v21[5];
    v21[5] = v13;

    goto LABEL_9;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      ucat = self->_ucat;
    }

    bleListenPSM = self->_bleListenPSM;
    LogPrintF_safe();
  }

LABEL_8:
  v10 = MEMORY[0x1C68DF720](v5);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = v10;

  [(CBServer *)self _startIfNeeded];
LABEL_9:
  v6[2](v6);

  _Block_object_dispose(&v20, 8);
}

void *__36__CBServer__activateWithCompletion___block_invoke(void *result)
{
  v1 = result[6];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = **(result[4] + 48);
  if (v2 <= 90)
  {
    v3 = result;
    if (v2 == -1)
    {
      v4 = *(result[4] + 48);
      v5 = _LogCategory_Initialize();
      result = v3;
      v1 = v3[6];
      if (!v5)
      {
        goto LABEL_7;
      }

      v8 = *(v3[4] + 48);
      v9 = *(*(v1 + 8) + 40);
    }

    v10 = CUPrintNSError();
    LogPrintF_safe();

    result = v3;
    v1 = v3[6];
  }

LABEL_7:
  v6 = *(*(v1 + 8) + 40);
  v7 = *(result[5] + 16);

  return v7();
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__CBServer_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  v30 = *MEMORY[0x1E69E9840];
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    var0 = self->_ucat->var0;
    if (var0 > 30)
    {
      goto LABEL_6;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_6:
        v4 = MEMORY[0x1C68DF720](self->_activateCompletion);
        activateCompletion = self->_activateCompletion;
        self->_activateCompletion = 0;

        if (v4)
        {
          v6 = *MEMORY[0x1E696A768];
          v7 = NSErrorF_safe();
          (v4)[2](v4, v7);
        }

        if (_os_feature_enabled_impl() && self->_bleListenPSM == CBAssignedL2CAPPSMForSoftwareUpdate && self->_tempLTK)
        {
          sharedPairingAgent = [(CBManager *)self->_peripheralManager sharedPairingAgent];
          v9 = sharedPairingAgent;
          if (sharedPairingAgent)
          {
            [sharedPairingAgent removeGlobalTemporaryLTK];
          }
        }

        if (self->_bleListeningPSM)
        {
          [(CBPeripheralManager *)self->_peripheralManager unpublishL2CAPChannel:?];
          self->_bleListeningPSM = 0;
        }

        [(CBPeripheralManager *)self->_peripheralManager setDelegate:0];
        peripheralManager = self->_peripheralManager;
        self->_peripheralManager = 0;

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = self->_connections;
        v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [*(*(&v25 + 1) + 8 * i) invalidate];
            }

            v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v13);
        }

        [(NSMutableSet *)self->_connections removeAllObjects];
        v16 = MEMORY[0x1C68DF720](self->_invalidationHandler);
        acceptHandler = self->_acceptHandler;
        self->_acceptHandler = 0;

        bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
        self->_bluetoothStateChangedHandler = 0;

        configChangedHandler = self->_configChangedHandler;
        self->_configChangedHandler = 0;

        invalidationHandler = self->_invalidationHandler;
        self->_invalidationHandler = 0;

        if (v16)
        {
          v16[2](v16);
        }

        v21 = self->_ucat->var0;
        if (v21 > 30)
        {
          goto LABEL_29;
        }

        if (v21 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_29;
          }

          ucat = self->_ucat;
        }

        LogPrintF_safe();
LABEL_29:

        goto LABEL_30;
      }

      v23 = self->_ucat;
    }

    LogPrintF_safe();
    goto LABEL_6;
  }

LABEL_30:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)_startIfNeeded
{
  var0 = self->_ucat->var0;
  if (var0 <= 9)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_5:
  if (!self->_bleListeningPSM && [(CBManager *)self->_peripheralManager state]== CBManagerStatePoweredOn)
  {
    if (_os_feature_enabled_impl() && self->_bleListenPSM == CBAssignedL2CAPPSMForSoftwareUpdate && self->_tempLTK)
    {
      sharedPairingAgent = [(CBManager *)self->_peripheralManager sharedPairingAgent];
      v5 = sharedPairingAgent;
      if (sharedPairingAgent)
      {
        delegate = [sharedPairingAgent delegate];

        if (!delegate)
        {
          [v5 setDelegate:self];
        }

        [v5 setGlobalTemporaryLTK:self->_tempLTK useCase:720897];
      }
    }

    peripheralManager = self->_peripheralManager;
    bleListenPSM = self->_bleListenPSM;

    [(CBPeripheralManager *)peripheralManager publishL2CAPChannel:bleListenPSM requiresEncryption:0];
  }
}

- (void)_handleConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  l2capChannel = [invalidatedCopy l2capChannel];
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v6 = [l2capChannel PSM];
      peer = [l2capChannel peer];
      [peer identifier];
      v11 = v10 = v6;
      LogPrintF_safe();

      goto LABEL_5;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v9 = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(NSMutableSet *)self->_connections removeObject:invalidatedCopy, v10, v11];
}

- (void)pairingGenerateOOBDataForPeer:(id)peer completionHandler:(id)handler
{
  peerCopy = peer;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__6;
  v51 = __Block_byref_object_dispose__6;
  v52 = 0;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __60__CBServer_pairingGenerateOOBDataForPeer_completionHandler___block_invoke;
  v43[3] = &unk_1E8122320;
  v46 = &v47;
  v43[4] = self;
  v8 = peerCopy;
  v44 = v8;
  v9 = handlerCopy;
  v45 = v9;
  v16 = MEMORY[0x1C68DF720](v43);
  if (self->_invalidateCalled)
  {
    v36 = CBErrorF(-71148, "Use after invalidate", v10, v11, v12, v13, v14, v15, v41);
    v24 = v48[5];
    v48[5] = v36;
    goto LABEL_12;
  }

  sharedPairingAgent = [(CBManager *)self->_peripheralManager sharedPairingAgent];
  v24 = sharedPairingAgent;
  if (!sharedPairingAgent)
  {
    v37 = CBErrorF(-6705, "No pairing agent", v18, v19, v20, v21, v22, v23, v41);
    v32 = v48[5];
    v48[5] = v37;
    goto LABEL_11;
  }

  delegate = [sharedPairingAgent delegate];

  if (!delegate)
  {
    [v24 setDelegate:self];
  }

  v32 = [v24 retrieveOOBDataForPeer:v8];
  if (!v32)
  {
    v38 = CBErrorF(-6700, "Generate OOB data failed", v26, v27, v28, v29, v30, v31, v41);
    v39 = v48[5];
    v48[5] = v38;

    goto LABEL_11;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v40 = self->_ucat;
    }

    identifier = [v8 identifier];
    v42 = CUPrintNSDataHex();
    LogPrintF_safe();
  }

LABEL_10:
  (*(v9 + 2))(v9, v32, 0);
LABEL_11:

LABEL_12:
  v16[2](v16);

  _Block_object_dispose(&v47, 8);
}

uint64_t __60__CBServer_pairingGenerateOOBDataForPeer_completionHandler___block_invoke(uint64_t result)
{
  if (!*(*(*(result + 56) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  v2 = **(*(result + 32) + 48);
  if (v2 <= 90)
  {
    if (v2 == -1)
    {
      v5 = *(*(result + 32) + 48);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v8 = *(*(v1 + 32) + 48);
    }

    v3 = [*(v1 + 40) identifier];
    v4 = *(*(*(v1 + 56) + 8) + 40);
    v9 = CUPrintNSError();
    LogPrintF_safe();
  }

LABEL_7:
  v6 = *(*(*(v1 + 56) + 8) + 40);
  v7 = *(*(v1 + 48) + 16);

  return v7();
}

- (void)pairingSetOOBEnabled:(BOOL)enabled peer:(id)peer completionHandler:(id)handler
{
  peerCopy = peer;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__6;
  v45 = __Block_byref_object_dispose__6;
  v46 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __56__CBServer_pairingSetOOBEnabled_peer_completionHandler___block_invoke;
  v36[3] = &unk_1E8122348;
  v39 = &v41;
  v36[4] = self;
  enabledCopy = enabled;
  v10 = peerCopy;
  v37 = v10;
  v11 = handlerCopy;
  v38 = v11;
  v18 = MEMORY[0x1C68DF720](v36);
  if (self->_invalidateCalled)
  {
    v31 = CBErrorF(-71148, "Use after invalidate", v12, v13, v14, v15, v16, v17, v35);
    v26 = v42[5];
    v42[5] = v31;
    goto LABEL_10;
  }

  sharedPairingAgent = [(CBManager *)self->_peripheralManager sharedPairingAgent];
  v26 = sharedPairingAgent;
  if (!sharedPairingAgent)
  {
    v32 = CBErrorF(-6705, "No pairing agent", v20, v21, v22, v23, v24, v25, v35);
    v33 = v42[5];
    v42[5] = v32;

    goto LABEL_10;
  }

  delegate = [sharedPairingAgent delegate];

  if (!delegate)
  {
    [v26 setDelegate:self];
  }

  [v26 setOOBPairingEnabled:1 forPeer:v10];
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v34 = self->_ucat;
    }

    identifier = [v10 identifier];
    LogPrintF_safe();
  }

LABEL_9:
  (*(v11 + 2))(v11, 0);
LABEL_10:

  v18[2](v18);
  _Block_object_dispose(&v41, 8);
}

uint64_t __56__CBServer_pairingSetOOBEnabled_peer_completionHandler___block_invoke(uint64_t result)
{
  if (!*(*(*(result + 56) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  v2 = **(*(result + 32) + 48);
  if (v2 <= 90)
  {
    if (v2 == -1)
    {
      v5 = *(*(result + 32) + 48);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v8 = *(*(v1 + 32) + 48);
    }

    *(v1 + 64);
    v3 = [*(v1 + 40) identifier];
    v4 = *(*(*(v1 + 56) + 8) + 40);
    v9 = CUPrintNSError();
    LogPrintF_safe();
  }

LABEL_7:
  v6 = *(*(*(v1 + 56) + 8) + 40);
  v7 = *(*(v1 + 48) + 16);

  return v7();
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  v37 = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v30 = pairingCopy;
  identifier = [pairingCopy identifier];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = self->_connections;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        l2capChannel = [v16 l2capChannel];
        peer = [l2capChannel peer];
        identifier2 = [peer identifier];

        if ([identifier2 isEqual:identifier])
        {
          v22 = v30;
          v21 = agentCopy;
          v23 = passkeyCopy;
          [v16 pairingAgent:agentCopy peerDidRequestPairing:v30 type:type passkey:passkeyCopy];

          goto LABEL_14;
        }
      }

      v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  var0 = self->_ucat->var0;
  v22 = v30;
  v21 = agentCopy;
  v23 = passkeyCopy;
  if (var0 <= 90)
  {
    if (var0 != -1)
    {
      typeCopy2 = type;
      if (type > 5)
      {
LABEL_17:
        LogPrintF_safe();
        goto LABEL_14;
      }

LABEL_12:
      v25 = off_1E8122368[typeCopy2];
      goto LABEL_17;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      typeCopy2 = type;
      if (type > 5)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

LABEL_14:

  v26 = *MEMORY[0x1E69E9840];
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  v29 = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  pairingCopy = pairing;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v22 = pairingCopy;
  identifier = [pairingCopy identifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_connections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        l2capChannel = [v13 l2capChannel];
        peer = [l2capChannel peer];
        identifier2 = [peer identifier];

        if ([identifier2 isEqual:identifier])
        {
          v19 = v22;
          v18 = agentCopy;
          [v13 pairingAgent:agentCopy peerDidCompletePairing:v22];

          goto LABEL_13;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  var0 = self->_ucat->var0;
  v19 = v22;
  v18 = agentCopy;
  if (var0 <= 90)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      ucat = self->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_13:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  v34 = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  pairingCopy = pairing;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v27 = pairingCopy;
  identifier = [pairingCopy identifier];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = self->_connections;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        l2capChannel = [v15 l2capChannel];
        peer = [l2capChannel peer];
        identifier2 = [peer identifier];

        if ([identifier2 isEqual:identifier])
        {
          v21 = v27;
          v20 = agentCopy;
          [v15 pairingAgent:agentCopy peerDidCompletePairing:v27];

          v22 = errorCopy;
          goto LABEL_13;
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  var0 = self->_ucat->var0;
  v21 = v27;
  v20 = agentCopy;
  v22 = errorCopy;
  if (var0 <= 90)
  {
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v25 = self->_ucat;
    }

    v10 = CUPrintNSError();
    LogPrintF_safe();
LABEL_13:
  }

LABEL_14:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  v29 = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  unpairCopy = unpair;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v22 = unpairCopy;
  identifier = [unpairCopy identifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_connections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        l2capChannel = [v13 l2capChannel];
        peer = [l2capChannel peer];
        identifier2 = [peer identifier];

        if ([identifier2 isEqual:identifier])
        {
          v19 = v22;
          v18 = agentCopy;
          [v13 pairingAgent:agentCopy peerDidUnpair:v22];

          goto LABEL_13;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  var0 = self->_ucat->var0;
  v19 = v22;
  v18 = agentCopy;
  if (var0 <= 90)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      ucat = self->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_13:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)peripheralManagerDidUpdateState:(id)state
{
  dispatchQueue = self->_dispatchQueue;
  stateCopy = state;
  dispatch_assert_queue_V2(dispatchQueue);
  state = [stateCopy state];

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
      if (state > 0xA)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      if (state > 0xA)
      {
LABEL_12:
        LogPrintF_safe();
        if (state == 1)
        {
          goto LABEL_13;
        }

        goto LABEL_7;
      }

LABEL_4:
      v8 = off_1E8122398[state];
      goto LABEL_12;
    }
  }

  if (state == 1)
  {
LABEL_13:
    self->_bleListeningPSM = 0;
    return;
  }

LABEL_7:
  if (state == 5)
  {

    [(CBServer *)self _startIfNeeded];
  }
}

- (void)peripheralManager:(id)manager didPublishL2CAPChannel:(unsigned __int16)channel error:(id)error
{
  channelCopy = channel;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  var0 = self->_ucat->var0;
  if (!errorCopy)
  {
    if (var0 > 30)
    {
      goto LABEL_11;
    }

    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v15 = self->_ucat;
    }

    LogPrintF_safe();
    goto LABEL_11;
  }

  if (var0 > 90)
  {
    goto LABEL_11;
  }

  if (var0 != -1)
  {
    goto LABEL_4;
  }

  v8 = self->_ucat;
  if (_LogCategory_Initialize())
  {
    v9 = self->_ucat;
LABEL_4:
    v16 = CUPrintNSError();
    LogPrintF_safe();
  }

LABEL_11:
  self->_bleListeningPSM = channelCopy;
  v11 = MEMORY[0x1C68DF720](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v11)
  {
    (v11)[2](v11, errorCopy);
  }

  else if (self->_bleListenPSM != channelCopy)
  {
    v13 = MEMORY[0x1C68DF720](self->_configChangedHandler);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 16))(v13);
    }
  }
}

- (void)peripheralManager:(id)manager didUnpublishL2CAPChannel:(unsigned __int16)channel error:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v9 = CUPrintNSError();
      LogPrintF_safe();

      goto LABEL_5;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v8 = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
}

- (void)peripheralManager:(id)manager didOpenL2CAPChannel:(id)channel error:(id)error
{
  channelCopy = channel;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (errorCopy)
  {
    [CBServer peripheralManager:? didOpenL2CAPChannel:? error:?];
    goto LABEL_22;
  }

  v9 = channelCopy;
  var0 = self->_ucat->var0;
  if (!v9)
  {
    [CBServer peripheralManager:self->_ucat didOpenL2CAPChannel:&self->_ucat error:?];
    goto LABEL_21;
  }

  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_5:
      peer = [v9 peer];
      identifier = [peer identifier];
      v13 = [v9 PSM];
      CUPrintNSError();
      v31 = v30 = v13;
      v27 = identifier;
      LogPrintF_safe();

      goto LABEL_7;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v25 = self->_ucat;
      goto LABEL_5;
    }
  }

LABEL_7:
  v15 = objc_alloc_init(CBConnection);
  [(CBConnection *)v15 setDispatchQueue:self->_dispatchQueue];
  [(CBConnection *)v15 setL2capChannel:v9];
  [(CBConnection *)v15 setServer:self];
  if (self->_label)
  {
    [(CBConnection *)v15 setLabel:?];
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __56__CBServer_peripheralManager_didOpenL2CAPChannel_error___block_invoke;
  v34[3] = &unk_1E811CF50;
  v34[4] = self;
  v34[5] = v15;
  [(CBConnection *)v15 setServerInvalidationHandler:v34, v27, v30, v31];
  v33 = 0;
  v16 = [(CBConnection *)v15 activateDirectAndReturnError:&v33];
  v17 = v33;
  if (v16)
  {
    connections = self->_connections;
    if (!connections)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v20 = self->_connections;
      self->_connections = v19;

      connections = self->_connections;
    }

    [(NSMutableSet *)connections addObject:v15];
    v21 = MEMORY[0x1C68DF720](self->_acceptHandler);
    v22 = v21;
    if (v21)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __56__CBServer_peripheralManager_didOpenL2CAPChannel_error___block_invoke_2;
      v32[3] = &unk_1E8120B60;
      v32[4] = self;
      v32[5] = v9;
      v32[6] = v15;
      (*(v21 + 16))(v21, v15, v32);
    }

    goto LABEL_20;
  }

  v23 = self->_ucat->var0;
  if (v23 > 90)
  {
    goto LABEL_19;
  }

  if (v23 == -1)
  {
    v24 = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v26 = self->_ucat;
      goto LABEL_17;
    }

LABEL_19:
    [(CBConnection *)v15 invalidate];
    goto LABEL_20;
  }

LABEL_17:
  v29 = CUPrintNSError();
  LogPrintF_safe();

  [(CBConnection *)v15 invalidate];
LABEL_20:

LABEL_21:
LABEL_22:
}

uint64_t __56__CBServer_peripheralManager_didOpenL2CAPChannel_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = **(v5 + 48);
  if (v3)
  {
    v17 = v3;
    if (v6 <= 30)
    {
      if (v6 == -1)
      {
        v10 = _LogCategory_Initialize();
        v5 = *(a1 + 32);
        if (!v10)
        {
          goto LABEL_9;
        }

        v12 = *(v5 + 48);
      }

      v7 = [*(a1 + 40) PSM];
      v8 = [*(a1 + 40) peer];
      [v8 identifier];
      v15 = v14 = v7;
      LogPrintF_safe();

      v5 = *(a1 + 32);
    }

LABEL_9:
    [*(v5 + 24) removeObject:{*(a1 + 48), v14, v15}];
    v3 = [*(a1 + 48) invalidate];
    goto LABEL_10;
  }

  if (v6 > 30)
  {
    goto LABEL_11;
  }

  v17 = 0;
  if (v6 != -1)
  {
LABEL_7:
    [*(a1 + 40) PSM];
    v9 = [*(a1 + 40) peer];
    v16 = [v9 identifier];
    LogPrintF_safe();

LABEL_10:
    v4 = v17;
    goto LABEL_11;
  }

  v3 = _LogCategory_Initialize();
  v4 = 0;
  if (v3)
  {
    v11 = *(*(a1 + 32) + 48);
    goto LABEL_7;
  }

LABEL_11:

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)peripheralManager:(uint64_t)a1 didOpenL2CAPChannel:error:.cold.1(uint64_t a1)
{
  v1 = **(a1 + 48);
  if (v1 <= 90)
  {
    if (v1 == -1)
    {
      v3 = *(a1 + 48);
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v4 = *(a1 + 48);
    }

    v5 = CUPrintNSError();
    LogPrintF_safe();
  }
}

- (uint64_t)peripheralManager:(uint64_t)result didOpenL2CAPChannel:(uint64_t)a2 error:(uint64_t *)a3 .cold.2(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result <= 90)
  {
    if (result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v4 = *a3;
    }

    return LogPrintF_safe();
  }

  return result;
}

@end