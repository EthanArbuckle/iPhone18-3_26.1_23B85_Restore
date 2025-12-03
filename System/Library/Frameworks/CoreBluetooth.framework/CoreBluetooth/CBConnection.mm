@interface CBConnection
- (BOOL)_prepareWriteRequest:(id)request error:(id *)error;
- (BOOL)_processReadStatus;
- (BOOL)_runConnectStart;
- (BOOL)_runSetupChannel;
- (BOOL)_setupIOAndReturnError:(id *)error;
- (BOOL)_startConnectingAndReturnError:(id *)error;
- (BOOL)activateDirectAndReturnError:(id *)error;
- (BOOL)updateWithXPCSubscriberInfo:(id)info;
- (CBConnection)init;
- (CBConnection)initWithXPCEventRepresentation:(id)representation error:(id *)error;
- (CBConnection)initWithXPCObject:(id)object error:(id *)error;
- (NSString)description;
- (id)_ensureXPCStarted;
- (uint64_t)dealloc;
- (void)_abortReadsWithError:(id)error;
- (void)_abortWritesWithError:(id)error;
- (void)_activateWithCompletion:(id)completion;
- (void)_activateXPCCompleted:(id)completed;
- (void)_activateXPCStart:(BOOL)start;
- (void)_completeReadRequest:(id)request error:(id)error;
- (void)_completeWriteRequest:(id)request error:(id)error;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_pairWithOOBData:(id)data;
- (void)_pairingGenerateOOBDataWithCompletionHandler:(id)handler;
- (void)_pairingPerformActionBLE:(int)e withOptions:(id)options completionHandler:(id)handler;
- (void)_pairingPerformActionClassic:(int)classic completionHandler:(id)handler;
- (void)_pairingPerformActionClassic:(int)classic withOptions:(id)options completionHandler:(id)handler;
- (void)_prepareReadRequest:(id)request;
- (void)_processReads:(BOOL)reads;
- (void)_processWrites;
- (void)_reportError:(id)error;
- (void)_run;
- (void)_xpcReceivedMessage:(id)message;
- (void)activateWithCompletion:(id)completion;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)dealloc;
- (void)disconnectWithCompletion:(id)completion;
- (void)encodeWithXPCObject:(id)object;
- (void)invalidate;
- (void)pairWithOOBData:(id)data;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)pairingGenerateOOBDataWithCompletionHandler:(id)handler;
- (void)pairingPerformAction:(int)action completionHandler:(id)handler;
- (void)pairingPerformAction:(int)action withOptions:(id)options completionHandler:(id)handler;
- (void)pairingSetOOBEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error;
- (void)readWithCBReadRequest:(id)request;
- (void)readWithRequest:(id)request;
- (void)setLabel:(id)label;
- (void)writeEndOfDataWithCompletion:(id)completion;
- (void)writeWithCBWriteRequest:(id)request;
- (void)writeWithRequest:(id)request;
- (void)xpcForwardMessage:(id)message;
- (void)xpcReceivedForwardedEvent:(id)event;
- (void)xpcReceivedMessage:(id)message;
- (void)xpcReceivedPairingCompleted:(id)completed;
- (void)xpcReceivedPairingPrompt:(id)prompt;
@end

@implementation CBConnection

- (CBConnection)init
{
  v5.receiver = self;
  v5.super_class = CBConnection;
  v2 = [(CBConnection *)&v5 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    v2->_connectionLatency = -99;
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v2->_socketFD = -1;
    v2->_ucat = &gLogCategory_CBConnection;
    v3 = v2;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v5 = [(CBConnection *)self dealloc];
    [(CBConnection *)v5 encodeWithXPCObject:v6, v7];
  }

  else
  {
    ucat = self->_ucat;
    if (ucat)
    {
      if ((ucat->var3 & 0x40000) != 0)
      {
        selfCopy = self;
        v4 = self->_ucat;
        LogCategory_Remove();
        self = selfCopy;
        selfCopy->_ucat = 0;
      }
    }

    v8.receiver = self;
    v8.super_class = CBConnection;
    [(CBConnection *)&v8 dealloc];
  }
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  clientID = self->_clientID;
  xdict = objectCopy;
  if (clientID)
  {
    xpc_dictionary_set_uint64(objectCopy, "cid", clientID);
  }

  connectionFlags = self->_connectionFlags;
  if (connectionFlags)
  {
    xpc_dictionary_set_uint64(xdict, "CnFl", connectionFlags);
  }

  connectTimeoutSeconds = self->_connectTimeoutSeconds;
  if (connectTimeoutSeconds != 0.0)
  {
    xpc_dictionary_set_double(xdict, "cnTO", connectTimeoutSeconds);
  }

  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    xpc_dictionary_set_uint64(xdict, "intF", internalFlags);
  }

  peerDevice = self->_peerDevice;
  CUXPCEncodeObject();
  if (self->_blePSM)
  {
    xpc_dictionary_set_uint64(xdict, "psm", self->_blePSM);
  }

  serviceFlags = self->_serviceFlags;
  if (serviceFlags)
  {
    xpc_dictionary_set_uint64(xdict, "svFl", serviceFlags);
  }

  remoteDevice = self->_remoteDevice;
  CUXPCEncodeObject();
  socketFD = self->_socketFD;
  if (socketFD)
  {
    xpc_dictionary_set_int64(xdict, "sFD", socketFD);
  }

  useCase = self->_useCase;
  if (useCase)
  {
    xpc_dictionary_set_uint64(xdict, "ucas", useCase);
  }

  useCaseClientIDs = self->_useCaseClientIDs;
  CUXPCEncodeNSArrayOfNSString();
}

- (NSString)description
{
  blePeerUUID = self->_blePeerUUID;
  if (blePeerUUID)
  {
    v4 = blePeerUUID;
  }

  else
  {
    peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
    identifier = [peer identifier];
    v7 = identifier;
    if (identifier)
    {
      identifier2 = identifier;
    }

    else
    {
      identifier2 = [(CBDevice *)self->_peerDevice identifier];
    }

    v4 = identifier2;
  }

  NSAppendPrintF_safe();
  v9 = 0;
  v10 = v9;
  label = self->_label;
  if (label)
  {
    v43 = v9;
    v36 = label;
    NSAppendPrintF_safe();
    v12 = v43;

    v10 = v12;
  }

  NSAppendPrintF_safe();
  v13 = v10;

  clientID = self->_clientID;
  NSAppendPrintF_safe();
  v14 = v13;

  if (self->_blePSM)
  {
    NSAppendPrintF_safe();
    v15 = v14;

    v14 = v15;
  }

  if (self->_connectionFlags)
  {
    v38 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v16 = v14;

    v14 = v16;
  }

  connectionLatency = self->_connectionLatency;
  if (connectionLatency != -99)
  {
    CBCentralManagerConnectionLatencyToString(connectionLatency);
    NSAppendPrintF_safe();
    v18 = v14;

    v14 = v18;
  }

  if (self->_serviceFlags)
  {
    v39 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v19 = v14;

    v14 = v19;
  }

  remoteDevice = self->_remoteDevice;
  if (remoteDevice)
  {
    v40 = remoteDevice;
    NSAppendPrintF_safe();
    v21 = v14;

    v14 = v21;
  }

  if (self->_connectTimeoutSeconds != 0.0)
  {
    NSAppendPrintF_safe();
    v22 = v14;

    v14 = v22;
  }

  serviceUUIDs = self->_serviceUUIDs;
  if (serviceUUIDs)
  {
    v24 = serviceUUIDs;
    v41 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    v25 = v14;

    v14 = v25;
  }

  if (self->_socketFD)
  {
    NSAppendPrintF_safe();
    v26 = v14;

    v14 = v26;
  }

  if (self->_useCase)
  {
    NSAppendPrintF_safe();
    v28 = v14;

    v14 = v28;
  }

  useCaseClientIDs = self->_useCaseClientIDs;
  if (useCaseClientIDs)
  {
    v30 = useCaseClientIDs;
    v42 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    v31 = v14;

    v14 = v31;
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_queue_get_label(dispatchQueue);
    v33 = dispatchQueue;
    NSAppendPrintF_safe();
    v34 = v14;

    v14 = v34;
  }

  return v14;
}

- (CBConnection)initWithXPCEventRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v13 = [(CBConnection *)self init];
  if (!v13)
  {
    if (error)
    {
      v27 = "CBConnection init failed";
LABEL_20:
      CBErrorF(-6756, v27, v7, v8, v9, v10, v11, v12, v29);
      *error = v25 = 0;
      goto LABEL_15;
    }

LABEL_21:
    v25 = 0;
    goto LABEL_15;
  }

  if (MEMORY[0x1C68DFDD0](representationCopy) != MEMORY[0x1E69E9E80])
  {
    if (error)
    {
      v27 = "XPC non-dict";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  string = xpc_dictionary_get_string(representationCopy, "deviceID");
  if (string)
  {
    v15 = string;
    v16 = objc_alloc(MEMORY[0x1E696AFB0]);
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
    v18 = [v16 initWithUUIDString:v17];
    blePeerUUID = v13->_blePeerUUID;
    v13->_blePeerUUID = v18;

    if (!v13->_blePeerUUID)
    {
      [(CBConnection *)error initWithXPCEventRepresentation:v15 error:&v30];
      v25 = v30;
      goto LABEL_15;
    }
  }

  int64 = xpc_dictionary_get_int64(representationCopy, "psm");
  if (int64)
  {
    v13->_blePSM = int64;
  }

  v21 = xpc_dictionary_get_value(representationCopy, "socketFD");
  v22 = v21;
  if (!v21)
  {
    goto LABEL_14;
  }

  if (MEMORY[0x1C68DFDD0](v21) == MEMORY[0x1E69E9EA0])
  {
    v13->_socketFD = xpc_fd_dup(v22);
  }

  else
  {
    var0 = v13->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        ucat = v13->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        v28 = v13->_ucat;
      }

      LogPrintF_safe();
    }
  }

LABEL_14:
  v25 = v13;

LABEL_15:
  return v25;
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
  v7[2] = __39__CBConnection_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E811E440;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__CBConnection__activateWithCompletion___block_invoke;
  v16[3] = &unk_1E811D350;
  v18 = &v19;
  v16[4] = self;
  v5 = completionCopy;
  v17 = v5;
  v6 = MEMORY[0x1C68DF720](v16);
  if (self->_activateCalled || self->_invalidateCalled)
  {
    v12 = *MEMORY[0x1E696A768];
    v13 = NSErrorF_safe();
    v14 = v20[5];
    v20[5] = v13;

    goto LABEL_18;
  }

  self->_activateCalled = 1;
  v7 = MEMORY[0x1C68DF720](v5);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = v7;

  if (self->_bluetoothStateChangedHandler)
  {
    self->_internalFlags |= 1u;
  }

  if (self->_pairingCompletedHandler)
  {
    self->_internalFlags |= 0x100u;
  }

  if (self->_pairingPromptHandler)
  {
    self->_internalFlags |= 0x100u;
  }

  if ((self->_connectionFlags & 0x100) != 0)
  {
    v9 = 0;
    if (self->_remoteDevice)
    {
LABEL_17:
      [(CBConnection *)self _activateXPCStart:0];
      goto LABEL_18;
    }
  }

  else
  {
    v9 = (self->_connectionFlags & 0x1000 | self->_serviceFlags) != 0;
    if (self->_remoteDevice)
    {
      goto LABEL_17;
    }
  }

  if (v9)
  {
    goto LABEL_17;
  }

  v15 = 0;
  [(CBConnection *)self activateDirectAndReturnError:&v15];
  v10 = v15;
  if (v10)
  {
    v11 = self->_activateCompletion;
    self->_activateCompletion = 0;

    (*(v5 + 2))(v5, v10);
  }

LABEL_18:
  v6[2](v6);

  _Block_object_dispose(&v19, 8);
}

void *__40__CBConnection__activateWithCompletion___block_invoke(void *result)
{
  v1 = result[6];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = **(result[4] + 152);
  if (v2 <= 90)
  {
    v3 = result;
    if (v2 == -1)
    {
      v4 = *(result[4] + 152);
      v5 = _LogCategory_Initialize();
      result = v3;
      v1 = v3[6];
      if (!v5)
      {
        goto LABEL_7;
      }

      v8 = *(v3[4] + 152);
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

- (BOOL)activateDirectAndReturnError:(id *)error
{
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__3;
  v64 = __Block_byref_object_dispose__3;
  v65 = 0;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __45__CBConnection_activateDirectAndReturnError___block_invoke;
  v59[3] = &unk_1E811D4B8;
  v59[4] = self;
  v59[5] = &v60;
  v59[6] = error;
  v5 = MEMORY[0x1C68DF720](v59, a2);
  l2capChannel = self->_l2capChannel;
  if (l2capChannel)
  {
    peer = [(CBL2CAPChannel *)l2capChannel peer];
    identifier = [peer identifier];
    blePeerUUID = self->_blePeerUUID;
    self->_blePeerUUID = identifier;

    self->_blePSM = [(CBL2CAPChannel *)self->_l2capChannel PSM];
    if (self->_peerDevice)
    {
      var0 = self->_ucat->var0;
      if (var0 > 30)
      {
LABEL_20:
        v20 = (v61 + 5);
        obj = v61[5];
        blePSM = [(CBConnection *)self _setupIOAndReturnError:&obj, v52, blePSM];
        objc_storeStrong(v20, obj);
        if (blePSM)
        {
          writeRequests = MEMORY[0x1C68DF720](self->_activateCompletion);
          activateCompletion = self->_activateCompletion;
          self->_activateCompletion = 0;

          if (writeRequests)
          {
            (writeRequests[2].super.super.isa)(writeRequests, 0);
          }

          goto LABEL_36;
        }

LABEL_44:
        v36 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      v12 = objc_alloc_init(CBDevice);
      uUIDString = [(NSUUID *)self->_blePeerUUID UUIDString];
      [(CBDevice *)v12 setIdentifier:uUIDString];

      peerDevice = self->_peerDevice;
      self->_peerDevice = v12;

      var0 = self->_ucat->var0;
      if (var0 > 30)
      {
        goto LABEL_20;
      }
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      ucat = self->_ucat;
    }

    v52 = self->_blePeerUUID;
    blePSM = self->_blePSM;
    LogPrintF_safe();
    goto LABEL_20;
  }

  if (self->_socketFD && self->_blePeerUUID)
  {
    if (self->_peerDevice)
    {
      v11 = self->_ucat->var0;
      if (v11 > 30)
      {
LABEL_33:
        v30 = (v61 + 5);
        v57 = v61[5];
        socketFD = [(CBConnection *)self _setupIOAndReturnError:&v57, v52, blePSM, socketFD];
        objc_storeStrong(v30, v57);
        if (socketFD)
        {
          writeRequests = MEMORY[0x1C68DF720](self->_activateCompletion);
          v32 = self->_activateCompletion;
          self->_activateCompletion = 0;

          if (writeRequests)
          {
            (writeRequests[2].super.super.isa)(writeRequests, 0);
          }

          goto LABEL_36;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v23 = objc_alloc_init(CBDevice);
      uUIDString2 = [(NSUUID *)self->_blePeerUUID UUIDString];
      [(CBDevice *)v23 setIdentifier:uUIDString2];

      v25 = self->_peerDevice;
      self->_peerDevice = v23;

      v11 = self->_ucat->var0;
      if (v11 > 30)
      {
        goto LABEL_33;
      }
    }

    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_33;
      }

      v50 = self->_ucat;
    }

    blePSM = self->_blePSM;
    socketFD = self->_socketFD;
    v52 = self->_blePeerUUID;
    LogPrintF_safe();
    goto LABEL_33;
  }

  v15 = self->_peerDevice;
  if (!v15)
  {
    v40 = *MEMORY[0x1E696A768];
    v41 = NSErrorF_safe();
    v36 = 0;
    writeRequests = v61[5];
    v61[5] = v41;
    goto LABEL_37;
  }

  writeRequests = v15;
  identifier2 = [(CBDevice *)v15 identifier];
  if (!identifier2)
  {
    v42 = *MEMORY[0x1E696A768];
    v43 = NSErrorF_safe();
    v44 = v61[5];
    v61[5] = v43;

    v36 = 0;
    goto LABEL_37;
  }

  v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:identifier2];
  if (!v18)
  {
    v45 = *MEMORY[0x1E696A768];
    v46 = NSErrorF_safe();
    v47 = v61[5];
    v61[5] = v46;

LABEL_43:
    v36 = 0;
    goto LABEL_37;
  }

  objc_storeStrong(&self->_blePeerUUID, v18);
  v19 = self->_ucat->var0;
  if (v19 <= 30)
  {
    if (v19 != -1)
    {
LABEL_18:
      v52 = self->_blePeerUUID;
      blePSM = self->_blePSM;
      LogPrintF_safe();
      goto LABEL_27;
    }

    if (_LogCategory_Initialize())
    {
      v49 = self->_ucat;
      goto LABEL_18;
    }
  }

LABEL_27:
  v56 = 0;
  blePSM2 = [(CBConnection *)self _startConnectingAndReturnError:&v56, v52, blePSM];
  v27 = v56;
  v28 = v27;
  if (!blePSM2)
  {
    v29 = self->_ucat->var0;
    if (v29 <= 90)
    {
      if (v29 == -1)
      {
        v38 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_40;
        }

        v51 = self->_ucat;
      }

      v53 = CUPrintNSError();
      LogPrintF_safe();
    }

LABEL_40:
    if (error)
    {
      v39 = v28;
      *error = v28;
    }

    goto LABEL_43;
  }

LABEL_36:
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  readRequests = self->_readRequests;
  self->_readRequests = v33;

  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  writeRequests = self->_writeRequests;
  self->_writeRequests = v35;
  v36 = 1;
LABEL_37:

LABEL_38:
  v5[2](v5);

  _Block_object_dispose(&v60, 8);
  return v36;
}

void __45__CBConnection_activateDirectAndReturnError___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = **(*(a1 + 32) + 152);
    if (v2 > 90)
    {
      goto LABEL_6;
    }

    if (v2 == -1)
    {
      v3 = *(*(a1 + 32) + 152);
      if (!_LogCategory_Initialize())
      {
LABEL_6:
        if (*(a1 + 48))
        {
          **(a1 + 48) = *(*(*(a1 + 40) + 8) + 40);
        }

        return;
      }

      v4 = *(*(a1 + 32) + 152);
      v5 = *(*(*(a1 + 40) + 8) + 40);
    }

    v6 = CUPrintNSError();
    LogPrintF_safe();

    goto LABEL_6;
  }
}

- (void)_activateXPCStart:(BOOL)start
{
  var0 = self->_ucat->var0;
  if (start)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        ucat = self->_ucat;
      }

      clientID = self->_clientID;
      peerDevice = self->_peerDevice;
      goto LABEL_8;
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v9 = self->_ucat;
    }

    v11 = self->_clientID;
    v13 = self->_peerDevice;
LABEL_8:
    LogPrintF_safe();
  }

LABEL_12:
  v6 = xpc_dictionary_create(0, 0, 0);
  [(CBConnection *)self encodeWithXPCObject:v6];
  xpc_dictionary_set_string(v6, "mTyp", "CnxA");
  _ensureXPCStarted = [(CBConnection *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __34__CBConnection__activateXPCStart___block_invoke;
  handler[3] = &unk_1E811D158;
  handler[4] = self;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v6, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)completed
{
  v4 = CUXPCDecodeNSErrorIfNeeded();
  var0 = self->_ucat->var0;
  v17 = v4;
  if (!v4)
  {
    if (var0 > 30)
    {
      goto LABEL_11;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    clientID = self->_clientID;
    peerDevice = self->_peerDevice;
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

  if (_LogCategory_Initialize())
  {
    v8 = self->_ucat;
LABEL_4:
    v6 = self->_peerDevice;
    v7 = self->_clientID;
    v16 = CUPrintNSError();
    LogPrintF_safe();
  }

LABEL_11:
  v9 = MEMORY[0x1C68DF720](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v9)
  {
    (v9)[2](v9, v17);
  }

  else
  {
    v11 = MEMORY[0x1C68DF720](self->_errorHandler);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 16))(v11, v17);
    }
  }
}

- (void)disconnectWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CBConnection_disconnectWithCompletion___block_invoke;
  v7[3] = &unk_1E811E440;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __41__CBConnection_disconnectWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "CnxD");
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 208);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __41__CBConnection_disconnectWithCompletion___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __41__CBConnection_disconnectWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (id)_ensureXPCStarted
{
  p_xpcCnx = &self->_xpcCnx;
  v4 = self->_xpcCnx;
  if (v4)
  {
  }

  else
  {
    v6 = self->_xpcListenerEndpoint;
    v7 = v6;
    if (v6)
    {
      mach_service = xpc_connection_create_from_endpoint(v6);
      xpc_connection_set_target_queue(mach_service, self->_dispatchQueue);
    }

    else
    {
      mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", self->_dispatchQueue, 0);
    }

    objc_storeStrong(p_xpcCnx, mach_service);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__CBConnection__ensureXPCStarted__block_invoke;
    v10[3] = &unk_1E811D620;
    v10[4] = self;
    v9 = mach_service;
    v11 = v9;
    xpc_connection_set_event_handler(v9, v10);
    xpc_connection_activate(v9);

    v4 = v9;
  }

  return v4;
}

void *__33__CBConnection__ensureXPCStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[20] == *(a1 + 40))
  {
    return [result xpcReceivedMessage:a2];
  }

  return result;
}

- (void)_interrupted
{
  if (self->_invalidateCalled)
  {
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 90)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_6:
  v5 = MEMORY[0x1C68DF720](self->_interruptionHandler);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
  }

  self->_bluetoothState = 1;
  v7 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
  if (v7)
  {
    v9 = v7;
    v7[2]();
    v7 = v9;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CBConnection_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v22 = v3;
  v23 = v2;
  self->_invalidateCalled = 1;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_6:
  connectTimeoutTimer = self->_connectTimeoutTimer;
  if (connectTimeoutTimer)
  {
    v9 = connectTimeoutTimer;
    dispatch_source_cancel(v9);
    v10 = self->_connectTimeoutTimer;
    self->_connectTimeoutTimer = 0;
  }

  if (self->_peripheral)
  {
    self->_guardConnected = 0;
    [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:?];
  }

  [(CBCentralManager *)self->_centralManager setDelegate:0, v22, v23, v4];
  centralManager = self->_centralManager;
  self->_centralManager = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  [(CBPeripheral *)self->_peripheral setDelegate:0];
  peripheral = self->_peripheral;
  self->_peripheral = 0;

  v14 = *MEMORY[0x1E696A768];
  v15 = NSErrorF_safe();
  [(CBConnection *)self _reportError:v15];

  readSource = self->_readSource;
  if (readSource)
  {
    dispatch_source_cancel(readSource);
    if (self->_readSuspended)
    {
      dispatch_resume(self->_readSource);
      self->_readSuspended = 0;
    }

    v17 = self->_readSource;
    self->_readSource = 0;
  }

  writeSource = self->_writeSource;
  if (writeSource)
  {
    dispatch_source_cancel(writeSource);
    if (self->_writeSuspended)
    {
      dispatch_resume(self->_writeSource);
      self->_writeSuspended = 0;
    }

    v19 = self->_writeSource;
    self->_writeSource = 0;
  }

  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    xpc_connection_cancel(xpcCnx);
  }

  [(CBConnection *)self _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateDone || self->_readSource || self->_writeSource || self->_readRequestCurrent || [(NSMutableArray *)self->_readRequests count]|| self->_writeRequestCurrent || [(NSMutableArray *)self->_writeRequests count]|| self->_xpcCnx)
  {
    return;
  }

  v16 = MEMORY[0x1C68DF720](self->_invalidationHandler);
  v3 = MEMORY[0x1C68DF720](self->_serverInvalidationHandler);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  pairingCompletedHandler = self->_pairingCompletedHandler;
  self->_pairingCompletedHandler = 0;

  pairingPromptHandler = self->_pairingPromptHandler;
  self->_pairingPromptHandler = 0;

  serverInvalidationHandler = self->_serverInvalidationHandler;
  self->_serverInvalidationHandler = 0;

  xpcForwardMessageReceiveHandler = self->_xpcForwardMessageReceiveHandler;
  self->_xpcForwardMessageReceiveHandler = 0;

  xpcSendEventHandler = self->_xpcSendEventHandler;
  self->_xpcSendEventHandler = 0;

  if (v16)
  {
    v16[2](v16);
  }

  if (v3)
  {
    v3[2](v3);
  }

  self->_invalidateDone = 1;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      ucat = self->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_18:
}

- (BOOL)updateWithXPCSubscriberInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (!infoCopy || MEMORY[0x1C68DFDD0](infoCopy) != MEMORY[0x1E69E9E80])
  {
    LOBYTE(v8) = 0;
    goto LABEL_30;
  }

  string = xpc_dictionary_get_string(v5, "label");
  if (!string)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  v8 = v7;
  if (!v7)
  {
    v10 = 0;
    int64 = xpc_dictionary_get_int64(v5, "psm");
    if (!int64)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  label = self->_label;
  v10 = v7;
  v11 = label;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_13;
  }

  if (!v11)
  {

    goto LABEL_16;
  }

  v13 = [(NSString *)v10 isEqual:v11];

  if (v13)
  {
LABEL_13:
    LOBYTE(v8) = 0;
    int64 = xpc_dictionary_get_int64(v5, "psm");
    if (!int64)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  objc_storeStrong(&self->_label, v8);
  LOBYTE(v8) = 1;
  int64 = xpc_dictionary_get_int64(v5, "psm");
  if (!int64)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (self->_blePSM != int64)
  {
    self->_blePSM = int64;
    LOBYTE(v8) = 1;
  }

LABEL_19:
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v15 = xpc_dictionary_get_array(v5, "serviceUUIDs");
  v16 = v15;
  if (v15)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __44__CBConnection_updateWithXPCSubscriberInfo___block_invoke;
    applier[3] = &unk_1E81204B8;
    applier[4] = &v25;
    xpc_array_apply(v15, applier);
  }

  serviceUUIDs = self->_serviceUUIDs;
  v18 = v26[5];
  v19 = serviceUUIDs;
  v20 = v19;
  if (v18 == v19)
  {
  }

  else
  {
    if ((v18 != 0) != (v19 == 0))
    {
      v21 = [(NSArray *)v18 isEqual:v19];

      if (v21)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }

    v22 = v26[5];
    v18 = self->_serviceUUIDs;
    self->_serviceUUIDs = v22;
    LOBYTE(v8) = 1;
  }

LABEL_29:
  _Block_object_dispose(&v25, 8);

LABEL_30:
  return v8;
}

uint64_t __44__CBConnection_updateWithXPCSubscriberInfo___block_invoke(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (string_ptr)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string_ptr];
    if (v5)
    {
      v6 = [[CBUUID alloc] initWithString:v5 safe:1];
      if (v6)
      {
        v7 = *(*(*(a1 + 32) + 8) + 40);
        if (!v7)
        {
          v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v9 = *(*(a1 + 32) + 8);
          v10 = *(v9 + 40);
          *(v9 + 40) = v8;

          v7 = *(*(*(a1 + 32) + 8) + 40);
        }

        [v7 addObject:v6];
      }
    }
  }

  return 1;
}

- (void)xpcForwardMessage:(id)message
{
  messageCopy = message;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CBConnection_xpcForwardMessage___block_invoke;
  v7[3] = &unk_1E811CF50;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  dispatch_async(dispatchQueue, v7);
}

void __34__CBConnection_xpcForwardMessage___block_invoke(uint64_t a1)
{
  xpc_dictionary_get_int64(*(a1 + 32), "kCBMsgId");
  v2 = **(*(a1 + 40) + 152);
  if (v2 > 10)
  {
    goto LABEL_5;
  }

  if (v2 != -1)
  {
    goto LABEL_3;
  }

  v3 = *(*(a1 + 40) + 152);
  if (_LogCategory_Initialize())
  {
    v7 = *(*(a1 + 40) + 152);
LABEL_3:
    LogPrintF_safe();
  }

LABEL_5:
  xdict = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 40) encodeWithXPCObject:xdict];
  xpc_dictionary_set_string(xdict, "mTyp", "CnxF");
  xpc_dictionary_set_value(xdict, "fwdM", *(a1 + 32));
  v4 = MEMORY[0x1C68DF720](*(*(a1 + 40) + 392));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, xdict);
  }

  else
  {
    v6 = [*(a1 + 40) _ensureXPCStarted];
    xpc_connection_send_message(v6, xdict);
  }
}

- (void)xpcReceivedForwardedEvent:(id)event
{
  v4 = xpc_dictionary_get_value(event, "fwdM");
  v9 = v4;
  if (v4)
  {
    xpc_dictionary_get_int64(v4, "kCBMsgId");
    var0 = self->_ucat->var0;
    if (var0 <= 10)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF_safe();
    }

LABEL_6:
    v6 = MEMORY[0x1C68DF720](self->_xpcForwardMessageReceiveHandler);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, v9);
    }

    else
    {
      [CBConnection xpcReceivedForwardedEvent:?];
    }

    goto LABEL_9;
  }

  [CBConnection xpcReceivedForwardedEvent:?];
LABEL_9:
}

- (void)xpcReceivedMessage:(id)message
{
  messageCopy = message;
  var0 = self->_ucat->var0;
  v27 = messageCopy;
  if (var0 <= 9)
  {
    if (var0 != -1)
    {
LABEL_3:
      v25 = CUPrintXPC();
      LogPrintF_safe();

      messageCopy = v27;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    messageCopy = v27;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (MEMORY[0x1C68DFDD0](messageCopy) == MEMORY[0x1E69E9E80])
  {
    [(CBConnection *)self _xpcReceivedMessage:v27];
    goto LABEL_26;
  }

  if (v27 == MEMORY[0x1E69E9E18])
  {
    [(CBConnection *)self _interrupted];
    goto LABEL_26;
  }

  if (v27 == MEMORY[0x1E69E9E20])
  {
    if (self->_invalidateCalled)
    {
      goto LABEL_25;
    }

    v17 = self->_ucat->var0;
    if (v17 > 90)
    {
      goto LABEL_25;
    }

    if (v17 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      v24 = self->_ucat;
    }

    LogPrintF_safe();
LABEL_25:
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    [(CBConnection *)self _invalidated];
    goto LABEL_26;
  }

  v7 = CUXPCDecodeNSErrorIfNeeded();
  v14 = v7;
  if (v7)
  {
    v15 = v7;

    v16 = self->_ucat->var0;
    if (v16 > 90)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v15 = CBErrorF(-6700, "XPC event error", v8, v9, v10, v11, v12, v13, v25);

    v16 = self->_ucat->var0;
    if (v16 > 90)
    {
      goto LABEL_21;
    }
  }

  if (v16 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_21;
    }

    v23 = self->_ucat;
  }

  v18 = CUPrintNSError();
  v26 = CUPrintXPC();
  LogPrintF_safe();

LABEL_21:
  v19 = MEMORY[0x1C68DF720](self->_errorHandler);
  v20 = v19;
  if (v19)
  {
    (*(v19 + 16))(v19, v15);
  }

LABEL_26:
}

- (void)_xpcReceivedMessage:(id)message
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "mTyp");
  if (!string)
  {
    var0 = self->_ucat->var0;
    if (var0 > 90)
    {
      goto LABEL_11;
    }

    if (var0 != -1)
    {
      goto LABEL_10;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
LABEL_10:
      LogPrintF_safe();
    }

LABEL_11:
    v8 = messageCopy;

    goto LABEL_13;
  }

  v5 = string;
  if (!strcmp(string, "CnxF"))
  {
    [(CBConnection *)self xpcReceivedForwardedEvent:messageCopy];
    v8 = messageCopy;
  }

  else if (!strcmp(v5, "PrCm"))
  {
    [(CBConnection *)self xpcReceivedPairingCompleted:messageCopy];
    v8 = messageCopy;
  }

  else
  {
    if (strcmp(v5, "PrPm"))
    {
      v6 = self->_ucat->var0;
      if (v6 > 90)
      {
        goto LABEL_11;
      }

      if (v6 != -1)
      {
        goto LABEL_10;
      }

      if (_LogCategory_Initialize())
      {
        v10 = self->_ucat;
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    [(CBConnection *)self xpcReceivedPairingPrompt:messageCopy];
    v8 = messageCopy;
  }

LABEL_13:
}

- (void)xpcReceivedPairingCompleted:(id)completed
{
  completedCopy = completed;
  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    [CBConnection xpcReceivedPairingCompleted:?];
    goto LABEL_4;
  }

  objc_opt_class();
  CUXPCDecodeObject();
  v5 = 0;
  var0 = self->_ucat->var0;
  if (var0 <= 90)
  {
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_3;
      }

      v9 = self->_ucat;
    }

    v7 = CUPrintNSError();
    LogPrintF_safe();
  }

LABEL_3:

LABEL_4:
}

- (void)xpcReceivedPairingPrompt:(id)prompt
{
  promptCopy = prompt;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    objc_opt_class();
    CUXPCDecodeObject();
    v5 = 0;
    var0 = self->_ucat->var0;
    if (var0 > 90)
    {
      goto LABEL_3;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_3;
      }

      ucat = self->_ucat;
    }

    else
    {
      v7 = self->_ucat;
    }

    v8 = CUPrintNSError();
    LogPrintF_safe();

LABEL_3:
    return;
  }

  [CBConnection xpcReceivedPairingPrompt:?];
}

- (BOOL)_startConnectingAndReturnError:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!self->_blePeerUUID)
  {
    if (error)
    {
      v18 = *MEMORY[0x1E696A768];
LABEL_14:
      v20 = NSErrorF_safe();
      v21 = v20;
      result = 0;
      *error = v20;
      goto LABEL_9;
    }

LABEL_15:
    result = 0;
    goto LABEL_9;
  }

  v5 = [CBCentralManager alloc];
  dispatchQueue = self->_dispatchQueue;
  v24 = @"kCBManagerNeedsRestrictedStateOperation";
  v25[0] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v8 = [(CBCentralManager *)v5 initWithDelegate:self queue:dispatchQueue options:v7];
  centralManager = self->_centralManager;
  self->_centralManager = v8;

  v10 = self->_centralManager;
  if (!v10)
  {
    if (error)
    {
      v19 = *MEMORY[0x1E696A768];
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ((self->_connectionFlags & 0x80) != 0 || (internalFlags = self->_internalFlags, (internalFlags & 0x100) != 0))
  {
    sharedPairingAgent = [(CBManager *)v10 sharedPairingAgent];
    [sharedPairingAgent setDelegate:self];

    internalFlags = self->_internalFlags;
  }

  if ((internalFlags & 0x20) != 0)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __47__CBConnection__startConnectingAndReturnError___block_invoke;
    v23[3] = &unk_1E811D158;
    v23[4] = self;
    v13 = MEMORY[0x1C68DF720](v23);
    xpcForwardMessageReceiveHandler = self->_xpcForwardMessageReceiveHandler;
    self->_xpcForwardMessageReceiveHandler = v13;

    v15 = self->_centralManager;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __47__CBConnection__startConnectingAndReturnError___block_invoke_2;
    v22[3] = &unk_1E811D158;
    v22[4] = self;
    [(CBManager *)v15 setWHBMsgReplyHandler:v22];
  }

  [(CBConnection *)self _run];
  result = 1;
LABEL_9:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void __47__CBConnection__startConnectingAndReturnError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = **(v4 + 152);
  v10 = v3;
  if (v5 <= 30)
  {
    if (v5 != -1)
    {
LABEL_3:
      v8 = v3;
      v9 = *(v4 + 24);
      LogPrintF_safe();
      v3 = v10;
      v4 = *(a1 + 32);
      goto LABEL_6;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v4 + 152);
      v3 = v10;
      goto LABEL_3;
    }

    v3 = v10;
  }

LABEL_6:
  [*(v4 + 32) didReceiveForwardedMessageForCBManager:{v3, v8, v9}];
}

- (BOOL)_setupIOAndReturnError:(id *)error
{
  l2capChannel = self->_l2capChannel;
  if (!l2capChannel)
  {
    socketFD = self->_socketFD;
    if ((socketFD & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (!error)
    {
      return 0;
    }

    v17 = *MEMORY[0x1E696A768];
    v21 = self->_l2capChannel;
LABEL_16:
    NSErrorF_safe();
    *error = v14 = 0;
    return v14;
  }

  socketFD = [(CBL2CAPChannel *)l2capChannel socketFD];
  if ((socketFD & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  self->_socketFD = socketFD;
  v26 = 1;
  if (setsockopt(socketFD, 0xFFFF, 4130, &v26, 4u) && (!*__error() || *__error()))
  {
    if (!error)
    {
      return 0;
    }

    v18 = *MEMORY[0x1E696A768];
    goto LABEL_16;
  }

  if (SocketSetNonBlocking())
  {
    if (!error)
    {
      return 0;
    }

    v19 = *MEMORY[0x1E696A768];
    goto LABEL_16;
  }

  v7 = dispatch_source_create(MEMORY[0x1E69E96F8], socketFD, 0, self->_dispatchQueue);
  readSource = self->_readSource;
  self->_readSource = v7;

  v9 = self->_readSource;
  if (!v9)
  {
    if (error)
    {
      v20 = *MEMORY[0x1E696A768];
      goto LABEL_16;
    }

    return 0;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __39__CBConnection__setupIOAndReturnError___block_invoke;
  handler[3] = &unk_1E811D130;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  v10 = self->_readSource;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __39__CBConnection__setupIOAndReturnError___block_invoke_2;
  v24[3] = &unk_1E811D130;
  v24[4] = self;
  dispatch_source_set_cancel_handler(v10, v24);
  dispatch_resume(self->_readSource);
  v11 = dispatch_source_create(MEMORY[0x1E69E9730], socketFD, 0, self->_dispatchQueue);
  writeSource = self->_writeSource;
  self->_writeSource = v11;

  v13 = self->_writeSource;
  v14 = v13 != 0;
  if (v13)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __39__CBConnection__setupIOAndReturnError___block_invoke_3;
    v23[3] = &unk_1E811D130;
    v23[4] = self;
    dispatch_source_set_event_handler(v13, v23);
    v15 = self->_writeSource;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __39__CBConnection__setupIOAndReturnError___block_invoke_4;
    v22[3] = &unk_1E811D130;
    v22[4] = self;
    dispatch_source_set_cancel_handler(v15, v22);
    self->_writeSuspended = 1;
  }

  else
  {
    [CBConnection _setupIOAndReturnError:error];
  }

  return v14;
}

uint64_t __39__CBConnection__setupIOAndReturnError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

uint64_t __39__CBConnection__setupIOAndReturnError___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  if (!self->_invalidateCalled)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 != -1)
      {
LABEL_4:
        v11 = CUPrintNSError();
        LogPrintF_safe();

        goto LABEL_6;
      }

      ucat = self->_ucat;
      if (_LogCategory_Initialize())
      {
        v10 = self->_ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  self->_state = 3;
  v6 = MEMORY[0x1C68DF720](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v6)
  {
    (v6)[2](v6, errorCopy);
  }

  else
  {
    v8 = MEMORY[0x1C68DF720](self->_errorHandler);
    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    if (v8)
    {
      (v8)[2](v8, errorCopy);
    }
  }

  [(CBConnection *)self _abortReadsWithError:errorCopy, v11];
  [(CBConnection *)self _abortWritesWithError:errorCopy];
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      state = self->_state;
      if (state > 13)
      {
        if (state <= 15)
        {
          if (state == 14)
          {
            if (self->_blePSM)
            {
              [(CBPeripheral *)self->_peripheral openL2CAPChannel:?];
              goto LABEL_36;
            }

            self->_state = 18;
          }

          else
          {
            if (!self->_l2capChannel)
            {
              goto LABEL_37;
            }

            self->_state = 16;
          }
        }

        else
        {
          if (state != 16)
          {
            if (state != 17)
            {
              if (state == 18)
              {
                v4 = MEMORY[0x1C68DF720](self->_activateCompletion, a2);
                activateCompletion = self->_activateCompletion;
                self->_activateCompletion = 0;

                if (v4)
                {
                  v4[2](v4, 0);
                }

                if (self->_blePSM)
                {
                  [(CBConnection *)self _processReads:0];
                  [(CBConnection *)self _processWrites];
                }

                if (self->_state == 18)
                {
                  return;
                }

                goto LABEL_38;
              }

              goto LABEL_37;
            }

            if (![(CBConnection *)self _runSetupChannel])
            {
LABEL_37:
              if (self->_state == state)
              {
                return;
              }

              goto LABEL_38;
            }

LABEL_36:
            ++self->_state;
            goto LABEL_37;
          }

          self->_state = 17;
        }
      }

      else if (state <= 10)
      {
        if (state)
        {
          if (state != 10)
          {
            goto LABEL_37;
          }

          state = [(CBManager *)self->_centralManager state];
          if (state != 10 && state != CBManagerStatePoweredOn)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        self->_state = 10;
      }

      else
      {
        if (state == 11)
        {
          if (![(CBConnection *)self _runConnectStart])
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        if (state != 12)
        {
          self->_connectedTime = CFAbsoluteTimeGetCurrent();
          goto LABEL_36;
        }

        if (!self->_guardConnected)
        {
          goto LABEL_37;
        }

        self->_state = 13;
      }

LABEL_38:
      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 != -1)
        {
          if (state > 0x12)
          {
            goto LABEL_42;
          }

LABEL_41:
          v8 = off_1E81205C8[state];
          goto LABEL_42;
        }

        if (_LogCategory_Initialize())
        {
          ucat = self->_ucat;
          if (state <= 0x12)
          {
            goto LABEL_41;
          }

LABEL_42:
          v9 = self->_state;
          if (v9 <= 0x12)
          {
            v10 = off_1E81205C8[v9];
          }

          LogPrintF_safe();
        }
      }
    }
  }
}

- (BOOL)_runConnectStart
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = self->_blePeerUUID;
  centralManager = self->_centralManager;
  v27[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v6 = [(CBCentralManager *)centralManager retrievePeripheralsWithIdentifiers:v5];

  firstObject = [v6 firstObject];
  if (!firstObject)
  {
    v16 = *MEMORY[0x1E696A768];
    v9 = NSErrorF_safe();
    [(CBConnection *)self _reportError:v9, v3];
    goto LABEL_24;
  }

  objc_storeStrong(&self->_peripheral, firstObject);
  [(CBPeripheral *)self->_peripheral setDelegate:self];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = v8;
  clientBundleID = self->_clientBundleID;
  if (clientBundleID)
  {
    [v8 setObject:clientBundleID forKeyedSubscript:@"kCBConnectOptionClientBundleID"];
  }

  if (self->_clientUseCase)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v9 setObject:v11 forKeyedSubscript:@"kCBOptionUseCase"];
  }

  if (self->_useCase)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v9 setObject:v12 forKeyedSubscript:@"kCBOptionUseCase"];
  }

  if ((_os_feature_enabled_impl() & 1) != 0 && self->_useCase == 720897)
  {
    tempLTK = self->_tempLTK;
    if (tempLTK)
    {
      [v9 setObject:tempLTK forKeyedSubscript:@"kCBConnectOptionsTemporaryLTK"];
    }
  }

  if ((self->_connectionFlags & 0x40) != 0)
  {
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kCBConnectOptionDoNoDisconnectOnEncryptionFailure"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_connectionScanDutyCycle];
  [v9 setObject:v14 forKeyedSubscript:@"kCBConnectOptionConnectionScanDutyCycle"];

  if ((self->_connectionFlags & 0x800) != 0 || self->_useCase == 720897)
  {
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kCBConnectOptionsDisableLeGATT"];
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_19:
      CUPrintNSObjectOneLine();
      v25 = v24 = v3;
      LogPrintF_safe();

      goto LABEL_22;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v23 = self->_ucat;
      goto LABEL_19;
    }
  }

LABEL_22:
  [(CBCentralManager *)self->_centralManager connectPeripheral:firstObject options:v9, v24, v25];
  if (self->_connectTimeoutSeconds > 0.0)
  {
    v18 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    connectTimeoutTimer = self->_connectTimeoutTimer;
    self->_connectTimeoutTimer = v18;
    v20 = v18;

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __32__CBConnection__runConnectStart__block_invoke;
    handler[3] = &unk_1E811CF50;
    handler[4] = v20;
    handler[5] = self;
    dispatch_source_set_event_handler(v20, handler);
    CUDispatchTimerSet();
    dispatch_activate(v20);
  }

LABEL_24:

  v21 = *MEMORY[0x1E69E9840];
  return firstObject != 0;
}

void __32__CBConnection__runConnectStart__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 40);
  if (v9 == v10)
  {
    if (v9)
    {
      v12 = v10;
      dispatch_source_cancel(v12);
      v13 = *(a1 + 40);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;
    }

    v15 = *(a1 + 40);
    v17 = CBErrorF(-6722, "Connect timeout", a3, a4, a5, a6, a7, a8, v16);
    [v15 _reportError:v17];
  }
}

- (BOOL)_runSetupChannel
{
  v6 = 0;
  v3 = [(CBConnection *)self _setupIOAndReturnError:&v6];
  v4 = v6;
  if (!v3)
  {
    [(CBConnection *)self _reportError:v4];
  }

  return v3;
}

- (void)pairingGenerateOOBDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CBConnection_pairingGenerateOOBDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E811E440;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_pairingGenerateOOBDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__3;
  v58 = __Block_byref_object_dispose__3;
  v59 = 0;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __61__CBConnection__pairingGenerateOOBDataWithCompletionHandler___block_invoke;
  v51[3] = &unk_1E811D350;
  v53 = &v54;
  v51[4] = self;
  v5 = handlerCopy;
  v52 = v5;
  v12 = MEMORY[0x1C68DF720](v51);
  if (self->_invalidateCalled)
  {
    v43 = CBErrorF(-71148, "Use after invalidate", v6, v7, v8, v9, v10, v11, v47);
LABEL_21:
    peer = v55[5];
    v55[5] = v43;
    goto LABEL_18;
  }

  peripheral = self->_peripheral;
  if (peripheral)
  {
    peer = peripheral;
    goto LABEL_5;
  }

  peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
  if (!peer)
  {
    v43 = CBErrorF(-6705, "No peer", v14, v15, v16, v17, v18, v19, v47);
    goto LABEL_21;
  }

LABEL_5:
  centralManager = self->_centralManager;
  if (centralManager)
  {
    sharedPairingAgent = [(CBManager *)centralManager sharedPairingAgent];
    v29 = sharedPairingAgent;
    if (sharedPairingAgent)
    {
      v36 = [sharedPairingAgent retrieveOOBDataForPeer:peer];
      if (!v36)
      {
        v44 = CBErrorF(-6700, "Generate OOB data failed", v30, v31, v32, v33, v34, v35, v47);
        v45 = v55[5];
        v55[5] = v44;

        goto LABEL_17;
      }

      objc_storeStrong(&self->_pairingOOBData, v36);
      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          ucat = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_16;
          }

          v46 = self->_ucat;
        }

        identifier = [(CBPeer *)peer identifier];
        v48 = CUPrintNSDataHex();
        LogPrintF_safe();
      }

LABEL_16:
      (*(v5 + 2))(v5, v36, 0);
LABEL_17:

      goto LABEL_18;
    }

    v40 = CBErrorF(-6705, "No pairing agent", v23, v24, v25, v26, v27, v28, v47);
    goto LABEL_14;
  }

  server = self->_server;
  if (!server)
  {
    v40 = CBErrorF(-6700, "No central or server", v14, v15, v16, v17, v18, v19, v47);
LABEL_14:
    v41 = v55[5];
    v55[5] = v40;

    goto LABEL_18;
  }

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __61__CBConnection__pairingGenerateOOBDataWithCompletionHandler___block_invoke_2;
  v49[3] = &unk_1E81204E0;
  v49[4] = self;
  v50 = v5;
  [(CBServer *)server pairingGenerateOOBDataForPeer:peer completionHandler:v49];

LABEL_18:
  v12[2](v12);

  _Block_object_dispose(&v54, 8);
}

void *__61__CBConnection__pairingGenerateOOBDataWithCompletionHandler___block_invoke(void *result)
{
  v1 = result[6];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = **(result[4] + 152);
  if (v2 <= 90)
  {
    v3 = result;
    if (v2 == -1)
    {
      v4 = *(result[4] + 152);
      v5 = _LogCategory_Initialize();
      result = v3;
      v1 = v3[6];
      if (!v5)
      {
        goto LABEL_7;
      }

      v8 = *(v3[4] + 152);
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

void __61__CBConnection__pairingGenerateOOBDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v7 && !v6)
  {
    objc_storeStrong((*(a1 + 32) + 56), a2);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)pairingSetOOBEnabled:(BOOL)enabled completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CBConnection_pairingSetOOBEnabled_completionHandler___block_invoke;
  block[3] = &unk_1E8120508;
  enabledCopy = enabled;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __56__CBConnection__pairingSetOOBEnabled_completionHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = **(*(result + 32) + 152);
  if (v2 <= 90)
  {
    if (v2 == -1)
    {
      v4 = result;
      v5 = *(*(result + 32) + 152);
      v6 = _LogCategory_Initialize();
      result = v4;
      v1 = *(v4 + 48);
      if (!v6)
      {
        goto LABEL_7;
      }

      v9 = *(*(v4 + 32) + 152);
      v10 = *(*(v1 + 8) + 40);
    }

    *(result + 56);
    v3 = result;
    v11 = CUPrintNSError();
    LogPrintF_safe();

    result = v3;
    v1 = *(v3 + 48);
  }

LABEL_7:
  v7 = *(*(v1 + 8) + 40);
  v8 = *(*(result + 40) + 16);

  return v8();
}

- (void)pairingPerformAction:(int)action completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CBConnection_pairingPerformAction_completionHandler___block_invoke;
  block[3] = &unk_1E811E3A8;
  block[4] = self;
  v10 = handlerCopy;
  actionCopy = action;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __55__CBConnection_pairingPerformAction_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 32);
  if (*(v10 + 49) == 1)
  {
    __55__CBConnection_pairingPerformAction_completionHandler___block_invoke_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    if (*(v10 + 32))
    {
      v13 = MEMORY[0x1E695E0F8];

      [v10 _pairingPerformActionBLE:v11 withOptions:v13 completionHandler:v12];
    }

    else
    {
      v14 = *(a1 + 40);

      [v10 _pairingPerformActionClassic:v11 completionHandler:{v14, v12}];
    }
  }
}

- (void)pairingPerformAction:(int)action withOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__CBConnection_pairingPerformAction_withOptions_completionHandler___block_invoke;
  v13[3] = &unk_1E8120558;
  v14 = optionsCopy;
  v15 = handlerCopy;
  actionCopy = action;
  v13[4] = self;
  v11 = optionsCopy;
  v12 = handlerCopy;
  dispatch_async(dispatchQueue, v13);
}

void __67__CBConnection_pairingPerformAction_withOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 32);
  if (*(v10 + 49) == 1)
  {
    __67__CBConnection_pairingPerformAction_withOptions_completionHandler___block_invoke_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    if (*(v10 + 32))
    {

      [v10 _pairingPerformActionBLE:v11 withOptions:v12 completionHandler:v13];
    }

    else
    {

      [v10 _pairingPerformActionClassic:v11 withOptions:v12 completionHandler:v13];
    }
  }
}

- (void)_pairingPerformActionBLE:(int)e withOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__3;
  v55 = __Block_byref_object_dispose__3;
  v56 = 0;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __71__CBConnection__pairingPerformActionBLE_withOptions_completionHandler___block_invoke;
  v47[3] = &unk_1E8120580;
  v49 = &v51;
  v47[4] = self;
  eCopy = e;
  v10 = handlerCopy;
  v48 = v10;
  v11 = MEMORY[0x1C68DF720](v47);
  sharedPairingAgent = [(CBManager *)self->_centralManager sharedPairingAgent];
  if (!sharedPairingAgent)
  {
    v44 = CBErrorF(-6705, "No pairing agent", v12, v13, v14, v15, v16, v17, v46);
    v25 = v52[5];
    v52[5] = v44;
    goto LABEL_17;
  }

  v25 = self->_peripheral;
  if (v25)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_5:
        identifier = [(CBPeer *)v25 identifier];
        v28 = identifier;
        if (e <= 3)
        {
          v29 = off_1E8120660[e];
        }

        v46 = identifier;
        LogPrintF_safe();

        goto LABEL_10;
      }

      ucat = self->_ucat;
      if (_LogCategory_Initialize())
      {
        v31 = self->_ucat;
        goto LABEL_5;
      }
    }

LABEL_10:
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([optionsCopy count])
    {
      v39 = MEMORY[0x1E696AD98];
      v40 = [optionsCopy objectForKeyedSubscript:@"kCBMsgArgPairingPasskey"];
      v41 = [v39 numberWithInteger:{objc_msgSend(v40, "integerValue")}];
      [v32 setObject:v41 forKeyedSubscript:@"kCBMsgArgPairingPasskey"];
    }

    if ((e - 1) > 2)
    {
      v42 = CBErrorF(-6705, "Bad pairing action", v33, v34, v35, v36, v37, v38, v46);
      v43 = v52[5];
      v52[5] = v42;
    }

    else
    {
      [sharedPairingAgent respondToPairingRequest:v25 type:self->_pairingType accept:1u >> ((e - 1) & 7) data:v32];
      if (v10)
      {
        (*(v10 + 2))(v10, 0);
      }
    }

    goto LABEL_16;
  }

  v45 = CBErrorF(-6705, "No peripheral", v19, v20, v21, v22, v23, v24, v46);
  v32 = v52[5];
  v52[5] = v45;
LABEL_16:

LABEL_17:
  v11[2](v11);

  _Block_object_dispose(&v51, 8);
}

void *__71__CBConnection__pairingPerformActionBLE_withOptions_completionHandler___block_invoke(void *result)
{
  if (!*(*(result[6] + 8) + 40))
  {
    return result;
  }

  v1 = result;
  v2 = result[4];
  v3 = **(v2 + 152);
  if (v3 > 90)
  {
    goto LABEL_7;
  }

  if (v3 != -1)
  {
    goto LABEL_4;
  }

  v7 = *(v2 + 152);
  if (!_LogCategory_Initialize())
  {
LABEL_7:
    result = v1[5];
    if (!result)
    {
      return result;
    }

    goto LABEL_8;
  }

  v2 = v1[4];
  v11 = *(v2 + 152);
LABEL_4:
  v4 = [*(v2 + 304) identifier];
  v5 = *(v1 + 14);
  if (v5 <= 3)
  {
    v6 = off_1E8120660[v5];
  }

  v10 = *(*(v1[6] + 8) + 40);
  v12 = CUPrintNSError();
  LogPrintF_safe();

  result = v1[5];
  if (result)
  {
LABEL_8:
    v8 = *(*(v1[6] + 8) + 40);
    v9 = result[2];

    return v9();
  }

  return result;
}

- (void)_pairingPerformActionClassic:(int)classic completionHandler:(id)handler
{
  handlerCopy = handler;
  if (classic == 1)
  {
    v15 = 0;
  }

  else
  {
    if (classic == 3)
    {
      v13 = "User canceled pairing";
      v14 = -6723;
    }

    else
    {
      if (classic != 2)
      {
        v15 = CBErrorF(-6705, "Bad pairing action", v6, v7, v8, v9, v10, v11, v20);
        handlerCopy[2](handlerCopy, v15);
        goto LABEL_10;
      }

      v13 = "User rejected pairing";
      v14 = -71146;
    }

    v15 = CBErrorF(v14, v13, v6, v7, v8, v9, v10, v11, v20);
  }

  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v16, "mTyp", "CnPC");
  v17 = objc_alloc_init(CBPairingInfo);
  [(CBPairingInfo *)v17 setDevice:self->_peerDevice];
  [(CBPairingInfo *)v17 setError:v15];
  CUXPCEncodeObject();
  _ensureXPCStarted = [(CBConnection *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __63__CBConnection__pairingPerformActionClassic_completionHandler___block_invoke;
  handler[3] = &unk_1E811D1B0;
  v22 = handlerCopy;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v16, dispatchQueue, handler);

LABEL_10:
}

void __63__CBConnection__pairingPerformActionClassic_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)_pairingPerformActionClassic:(int)classic withOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (classic == 1)
  {
    v18 = 0;
  }

  else
  {
    if (classic == 3)
    {
      v16 = "User canceled pairing";
      v17 = -6723;
    }

    else
    {
      if (classic != 2)
      {
        v18 = CBErrorF(-6705, "Bad pairing action", v9, v10, v11, v12, v13, v14, v24);
        handlerCopy[2](handlerCopy, v18);
        goto LABEL_12;
      }

      v16 = "User rejected pairing";
      v17 = -71146;
    }

    v18 = CBErrorF(v17, v16, v9, v10, v11, v12, v13, v14, v24);
  }

  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v19, "mTyp", "CnPC");
  v20 = objc_alloc_init(CBPairingInfo);
  [(CBPairingInfo *)v20 setDevice:self->_peerDevice];
  [(CBPairingInfo *)v20 setError:v18];
  if (optionsCopy)
  {
    v21 = [optionsCopy objectForKeyedSubscript:@"kCBMsgArgPairingPasskey"];
    [(CBPairingInfo *)v20 setPin:v21];
  }

  CUXPCEncodeObject();
  _ensureXPCStarted = [(CBConnection *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __75__CBConnection__pairingPerformActionClassic_withOptions_completionHandler___block_invoke;
  handler[3] = &unk_1E811D1B0;
  v26 = handlerCopy;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v19, dispatchQueue, handler);

LABEL_12:
}

void __75__CBConnection__pairingPerformActionClassic_withOptions_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)pairWithOOBData:(id)data
{
  v4 = [data copy];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__CBConnection_pairWithOOBData___block_invoke;
  v7[3] = &unk_1E811CF50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_pairWithOOBData:(id)data
{
  dataCopy = data;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__3;
  v43 = __Block_byref_object_dispose__3;
  v44 = 0;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __33__CBConnection__pairWithOOBData___block_invoke;
  v38[3] = &unk_1E811D378;
  v38[4] = self;
  v38[5] = &v39;
  v12 = MEMORY[0x1C68DF720](v38);
  if (self->_invalidateCalled)
  {
    v31 = CBErrorF(-71148, "Use after invalidate", v6, v7, v8, v9, v10, v11, v36);
    v19 = v40[5];
    v40[5] = v31;
    goto LABEL_10;
  }

  v19 = self->_peripheral;
  if (!v19)
  {
    v32 = CBErrorF(-6705, "No peer", v13, v14, v15, v16, v17, v18, v36);
    v27 = v40[5];
    v40[5] = v32;
    goto LABEL_9;
  }

  sharedPairingAgent = [(CBManager *)self->_centralManager sharedPairingAgent];
  v27 = sharedPairingAgent;
  if (!sharedPairingAgent)
  {
    v33 = CBErrorF(-6705, "No pairing agent", v21, v22, v23, v24, v25, v26, v36);
    v34 = v40[5];
    v40[5] = v33;

    goto LABEL_9;
  }

  [sharedPairingAgent setDelegate:self];
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      v35 = self->_ucat;
    }

    identifier = [(CBPeer *)v19 identifier];
    v37 = CUPrintNSDataHex();
    LogPrintF_safe();
  }

LABEL_8:
  objc_storeStrong(&self->_pairingOOBData, data);
  [v27 pairPeer:v19];
LABEL_9:

LABEL_10:
  v12[2](v12);

  _Block_object_dispose(&v39, 8);
}

void __33__CBConnection__pairWithOOBData___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v1 = **(*(a1 + 32) + 152);
    if (v1 <= 90)
    {
      if (v1 == -1)
      {
        v3 = *(*(a1 + 32) + 152);
        if (!_LogCategory_Initialize())
        {
          return;
        }

        v4 = *(*(a1 + 32) + 152);
        v5 = *(*(*(a1 + 40) + 8) + 40);
      }

      v6 = CUPrintNSError();
      LogPrintF_safe();
    }
  }
}

- (void)readWithCBReadRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CBConnection_readWithCBReadRequest___block_invoke;
  v7[3] = &unk_1E811CF50;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

void __38__CBConnection_readWithCBReadRequest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 49) == 1)
  {
    v2 = *(a1 + 40);
    v3 = *MEMORY[0x1E696A768];
    v7 = NSErrorF_safe();
    [v1 _completeReadRequest:v2 error:v7];
  }

  else
  {
    v4 = *(v1 + 104);
    [v4 addObject:*(a1 + 40)];
    v6 = *(a1 + 32);
    if ((v6[28] & 0x80000000) == 0)
    {

      [v6 _processReads:0];
    }
  }
}

- (void)_processReads:(BOOL)reads
{
  readsCopy = reads;
  v4 = 0;
  v5 = &OBJC_IVAR___CBReadRequest__length;
  while (1)
  {
    v6 = self->_readRequestCurrent;
    if (v6)
    {
      goto LABEL_5;
    }

    firstObject = [(NSMutableArray *)self->_readRequests firstObject];
    if (!firstObject)
    {
      if (readsCopy)
      {
        if (v4)
        {
          if (!self->_readSuspended)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        _processReadStatus = [(CBConnection *)self _processReadStatus];
        readSuspended = self->_readSuspended;
        if (_processReadStatus)
        {
          if (!self->_readSuspended)
          {
            self->_readSuspended = 1;
            dispatch_suspend(self->_readSource);
          }

          goto LABEL_35;
        }

        if (self->_readSuspended)
        {
LABEL_34:
          self->_readSuspended = 0;
          dispatch_resume(self->_readSource);
        }
      }

LABEL_35:
      v25 = 0;
      goto LABEL_18;
    }

    obja = firstObject;
    [(NSMutableArray *)self->_readRequests removeObjectAtIndex:0];
    [(CBConnection *)self _prepareReadRequest:obja];
    objc_storeStrong(&self->_readRequestCurrent, obja);
    v6 = obja;
LABEL_5:
    v8 = *(&v6->super.isa + *v5);
    socketFD = self->_socketFD;
    bufferPtr = v6->_bufferPtr;
    obj = v6;
    [(CBReadRequest *)v6 minLength:v29];
    [(CBReadRequest *)obj maxLength];
    v11 = *v5;
    Data = SocketReadDataEx();
    var0 = self->_ucat->var0;
    if (var0 > 9)
    {
      goto LABEL_9;
    }

    if (var0 != -1)
    {
      goto LABEL_7;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v22 = self->_ucat;
LABEL_7:
      v36 = self->_socketFD;
      minLength = [(CBReadRequest *)obj minLength];
      maxLength = [(CBReadRequest *)obj maxLength];
      v16 = v5;
      v17 = *(&obj->super.isa + *v5);
      CUPrintErrorCode();
      v34 = v33 = v17;
      v5 = v16;
      v31 = maxLength;
      v32 = v8;
      v29 = v36;
      v30 = minLength;
      LogPrintF_safe();
    }

LABEL_9:
    if (Data)
    {
      break;
    }

    v19 = *(&obj->super.isa + *v5);
    bufferData = [(CBReadRequest *)obj bufferData];
    [bufferData setLength:v19];

    readRequestCurrent = self->_readRequestCurrent;
    self->_readRequestCurrent = 0;

    [(CBConnection *)self _completeReadRequest:obj error:0];
    if (++v4 == 4)
    {
      if (self->_readSuspended)
      {
        self->_readSuspended = 0;
        readSource = self->_readSource;

        dispatch_resume(readSource);
      }

      return;
    }
  }

  if (Data == 35)
  {
    if (self->_readSuspended)
    {
      self->_readSuspended = 0;
      dispatch_resume(self->_readSource);
    }
  }

  else
  {
    v23 = *MEMORY[0x1E696A768];
    v24 = NSErrorF_safe();
    [(CBConnection *)self _abortReadsWithError:v24];
  }

  v25 = obj;
LABEL_18:
}

- (void)_prepareReadRequest:(id)request
{
  requestCopy = request;
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(requestCopy, "maxLength")}];
  [requestCopy setBufferData:v4];

  bufferData = [requestCopy bufferData];
  requestCopy[1] = [bufferData mutableBytes];

  bufferData2 = [requestCopy bufferData];
  [requestCopy setData:bufferData2];

  requestCopy[3] = 0;
  v7 = requestCopy[2];
  requestCopy[2] = 0;

  var0 = self->_ucat->var0;
  if (var0 <= 9)
  {
    v9 = requestCopy;
    if (var0 != -1)
    {
      goto LABEL_3;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v12 = self->_ucat;
      v9 = requestCopy;
LABEL_3:
      [v9 minLength];
      [requestCopy maxLength];
      LogPrintF_safe();
      v10 = requestCopy;

      goto LABEL_5;
    }
  }

  v10 = requestCopy;

LABEL_5:
}

- (void)_abortReadsWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_readRequestCurrent || [(NSMutableArray *)self->_readRequests count])
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_5:
        v20 = CUPrintNSError();
        LogPrintF_safe();

        goto LABEL_7;
      }

      ucat = self->_ucat;
      if (_LogCategory_Initialize())
      {
        v19 = self->_ucat;
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  v7 = self->_readRequestCurrent;
  if (v7)
  {
    readRequestCurrent = self->_readRequestCurrent;
    self->_readRequestCurrent = 0;

    [(CBConnection *)self _completeReadRequest:v7 error:errorCopy];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_readRequests;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      v14 = v7;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v7 = *(*(&v21 + 1) + 8 * v13);

        [(CBConnection *)self _completeReadRequest:v7 error:errorCopy];
        ++v13;
        v14 = v7;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_readRequests removeAllObjects];
  readSource = self->_readSource;
  if (readSource && !self->_readSuspended)
  {
    self->_readSuspended = 1;
    dispatch_suspend(readSource);
  }

  v16 = MEMORY[0x1C68DF720](self->_errorHandler);
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  if (v16)
  {
    (v16)[2](v16, errorCopy);
  }

  [(CBConnection *)self _invalidated];

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)_processReadStatus
{
  do
  {
    v14 = 0;
    v3 = recv(self->_socketFD, &v14, 1uLL, 2);
    if ((v3 & 0x8000000000000000) == 0)
    {
      if (!v3)
      {
        v10 = MEMORY[0x1C68DF720](self->_errorHandler);
        errorHandler = self->_errorHandler;
        self->_errorHandler = 0;

        if (v10)
        {
          v12 = *MEMORY[0x1E696A768];
          v13 = NSErrorF_safe();
          (v10)[2](v10, v13);
        }

        return 1;
      }

      return 1;
    }

    if (!*__error())
    {
      goto LABEL_9;
    }

    v4 = *__error();
  }

  while (v4 == 4);
  if (!v4)
  {
    return 1;
  }

  if (v4 == 35)
  {
    return 0;
  }

LABEL_9:
  v6 = MEMORY[0x1C68DF720](self->_errorHandler);
  v7 = self->_errorHandler;
  self->_errorHandler = 0;

  if (v6)
  {
    v8 = *MEMORY[0x1E696A768];
    v9 = NSErrorF_safe();
    (v6)[2](v6, v9);
  }

  return 1;
}

- (void)_completeReadRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  var0 = self->_ucat->var0;
  if (var0 <= 9)
  {
    v8 = requestCopy;
    if (var0 != -1)
    {
LABEL_3:
      [v8 length];
      v13 = CUPrintNSError();
      LogPrintF_safe();

      goto LABEL_5;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v12 = self->_ucat;
      v8 = requestCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  v10 = requestCopy[2];
  requestCopy[2] = errorCopy;

  completion = [requestCopy completion];
  [requestCopy setCompletion:0];
  if (completion)
  {
    completion[2](completion);
  }
}

- (void)writeWithCBWriteRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__CBConnection_writeWithCBWriteRequest___block_invoke;
  v7[3] = &unk_1E811CF50;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

void __40__CBConnection_writeWithCBWriteRequest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 49) == 1)
  {
    v2 = *(a1 + 40);
    v3 = *MEMORY[0x1E696A768];
    v7 = NSErrorF_safe();
    [v1 _completeWriteRequest:v2 error:v7];
  }

  else
  {
    v4 = *(v1 + 144);
    [v4 addObject:*(a1 + 40)];
    v6 = *(a1 + 32);
    if ((v6[28] & 0x80000000) == 0)
    {

      [v6 _processWrites];
    }
  }
}

- (void)writeEndOfDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(CBWriteRequest);
  [(CBWriteRequest *)v5 setEndOfData:1];
  if (completionCopy)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __45__CBConnection_writeEndOfDataWithCompletion___block_invoke;
    v9 = &unk_1E811CFA0;
    v10 = v5;
    v11 = completionCopy;
    [(CBWriteRequest *)v5 setCompletion:&v6];
  }

  [(CBConnection *)self writeWithCBWriteRequest:v5, v6, v7, v8, v9];
}

void __45__CBConnection_writeEndOfDataWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)_processWrites
{
  v3 = 4;
  v24 = *MEMORY[0x1E696A768];
  do
  {
    v6 = self->_writeRequestCurrent;
    if (v6)
    {
      goto LABEL_6;
    }

    firstObject = [(NSMutableArray *)self->_writeRequests firstObject];
    if (!firstObject)
    {
      if (!self->_writeSuspended)
      {
        self->_writeSuspended = 1;
        dispatch_suspend(self->_writeSource);
      }

      v6 = 0;
      goto LABEL_35;
    }

    v6 = firstObject;
    [(NSMutableArray *)self->_writeRequests removeObjectAtIndex:0];
    v25 = 0;
    [(CBConnection *)self _prepareWriteRequest:v6 error:&v25];
    v14 = v25;
    if (!v14)
    {
      objc_storeStrong(&self->_writeRequestCurrent, v6);
LABEL_6:
      ion = v6->_ion;
      socketFD = self->_socketFD;
      v9 = SocketWriteData();
      var0 = self->_ucat->var0;
      if (var0 <= 9)
      {
        if (var0 != -1)
        {
LABEL_8:
          v11 = v6->_ion;
          v12 = self->_socketFD;
          CUPrintErrorCode();
          v23 = v22 = v11;
          v20 = v12;
          v21 = ion;
          LogPrintF_safe();

          goto LABEL_13;
        }

        ucat = self->_ucat;
        if (_LogCategory_Initialize())
        {
          v17 = self->_ucat;
          goto LABEL_8;
        }
      }

LABEL_13:
      if (v9)
      {
        if (v9 == 35)
        {
          if (self->_writeSuspended)
          {
            self->_writeSuspended = 0;
            dispatch_resume(self->_writeSource);
          }
        }

        else
        {
          v19 = NSErrorF_safe();
          [(CBConnection *)self _abortWritesWithError:v19];
        }

LABEL_35:

        return;
      }

      if (![(CBWriteRequest *)v6 endOfData])
      {
        goto LABEL_2;
      }

      v16 = self->_ucat->var0;
      if (v16 <= 9)
      {
        if (v16 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_20;
          }

          v18 = self->_ucat;
        }

        v20 = self->_socketFD;
        LogPrintF_safe();
      }

LABEL_20:
      if (shutdown(self->_socketFD, 1) && (!*__error() || *__error()))
      {
        v4 = NSErrorF_safe();
        goto LABEL_3;
      }

LABEL_2:
      v4 = 0;
LABEL_3:
      writeRequestCurrent = self->_writeRequestCurrent;
      self->_writeRequestCurrent = 0;

      goto LABEL_4;
    }

    v4 = v14;
LABEL_4:
    [(CBConnection *)self _completeWriteRequest:v6 error:v4, v20, v21, v22, v23];

    --v3;
  }

  while (v3);
  if (self->_writeSuspended)
  {
    self->_writeSuspended = 0;
    dispatch_resume(self->_writeSource);
  }
}

- (BOOL)_prepareWriteRequest:(id)request error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dataArray = [requestCopy dataArray];
  v8 = [dataArray count];
  if (v8 >= 0x11)
  {
    [CBConnection _prepareWriteRequest:error error:?];
  }

  else
  {
    selfCopy = self;
    v9 = requestCopy + 16;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = dataArray;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          *v9 = [v15 bytes];
          *(v9 + 1) = [v15 length];
          v9 += 16;
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    *(requestCopy + 34) = requestCopy + 16;
    *(requestCopy + 70) = (v9 - (requestCopy + 16)) >> 4;
    *(requestCopy + 36) = 0;
    v16 = *(requestCopy + 1);
    *(requestCopy + 1) = 0;

    if (gLogCategory_CBConnection <= 9 && (gLogCategory_CBConnection != -1 || _LogCategory_Initialize()))
    {
      [CBConnection _prepareWriteRequest:requestCopy error:selfCopy];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v8 < 0x11;
}

- (void)_abortWritesWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_writeRequestCurrent || [(NSMutableArray *)self->_writeRequests count])
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_5:
        v20 = CUPrintNSError();
        LogPrintF_safe();

        goto LABEL_7;
      }

      ucat = self->_ucat;
      if (_LogCategory_Initialize())
      {
        v19 = self->_ucat;
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  v7 = self->_writeRequestCurrent;
  if (v7)
  {
    writeRequestCurrent = self->_writeRequestCurrent;
    self->_writeRequestCurrent = 0;

    [(CBConnection *)self _completeWriteRequest:v7 error:errorCopy];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_writeRequests;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      v14 = v7;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v7 = *(*(&v21 + 1) + 8 * v13);

        [(CBConnection *)self _completeWriteRequest:v7 error:errorCopy];
        ++v13;
        v14 = v7;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_writeRequests removeAllObjects];
  writeSource = self->_writeSource;
  if (writeSource && !self->_writeSuspended)
  {
    self->_writeSuspended = 1;
    dispatch_suspend(writeSource);
  }

  v16 = MEMORY[0x1C68DF720](self->_errorHandler);
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  if (v16)
  {
    (v16)[2](v16, errorCopy);
  }

  [(CBConnection *)self _invalidated];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_completeWriteRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  var0 = self->_ucat->var0;
  if (var0 <= 9)
  {
    if (var0 != -1)
    {
LABEL_3:
      v12 = CUPrintNSError();
      LogPrintF_safe();

      goto LABEL_5;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v11 = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v9 = requestCopy[1];
  requestCopy[1] = errorCopy;

  completion = [requestCopy completion];
  [requestCopy setCompletion:0];
  if (completion)
  {
    completion[2](completion);
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    goto LABEL_13;
  }

  state = [stateCopy state];
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
      if (state <= 0xA)
      {
LABEL_5:
        v6 = off_1E8120680[state];
        goto LABEL_18;
      }

LABEL_17:
      v6 = "?";
LABEL_18:
      v12 = v6;
      LogPrintF_safe();
      if (state > 4)
      {
        goto LABEL_19;
      }

      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      if (state <= 0xA)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  if (state > 4)
  {
LABEL_19:
    if (state == 10 || state == 5)
    {
      [(CBConnection *)self _run];
      v10 = stateCopy;

      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_8:
  if (state == 1)
  {
    v8 = *MEMORY[0x1E696A768];
  }

  else
  {
    if (state != 4)
    {
      goto LABEL_13;
    }

    v7 = *MEMORY[0x1E696A768];
  }

  v9 = NSErrorF_safe();
  [(CBConnection *)self _reportError:v9];

LABEL_13:
  v10 = stateCopy;

LABEL_15:
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    identifier = [peripheralCopy identifier];
    blePeerUUID = self->_blePeerUUID;
    v9 = identifier;
    v10 = blePeerUUID;
    if (v9 == v10)
    {

      var0 = self->_ucat->var0;
      if (var0 > 30)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    if ((v9 != 0) != (v10 == 0))
    {
      v11 = v10;
      v12 = [(NSUUID *)v9 isEqual:v10];

      if (v12)
      {
        var0 = self->_ucat->var0;
        if (var0 > 30)
        {
LABEL_15:
          connectTimeoutTimer = self->_connectTimeoutTimer;
          if (connectTimeoutTimer)
          {
            v16 = connectTimeoutTimer;
            dispatch_source_cancel(v16);
            v17 = self->_connectTimeoutTimer;
            self->_connectTimeoutTimer = 0;
          }

          connectionLatency = self->_connectionLatency;
          if (connectionLatency == -99)
          {
            goto LABEL_25;
          }

          v19 = self->_ucat->var0;
          if (v19 <= 30)
          {
            if (v19 != -1)
            {
LABEL_20:
              v28 = CBCentralManagerConnectionLatencyToString(connectionLatency);
              LogPrintF_safe();
              [managerCopy setDesiredConnectionLatency:self->_connectionLatency forPeripheral:{peripheralCopy, v9, v28}];
LABEL_25:
              self->_guardConnected = 1;
              [(CBConnection *)self _run];
              goto LABEL_26;
            }

            ucat = self->_ucat;
            v22 = _LogCategory_Initialize();
            connectionLatency = self->_connectionLatency;
            if (v22)
            {
              v24 = self->_ucat;
              goto LABEL_20;
            }
          }

          [managerCopy setDesiredConnectionLatency:connectionLatency forPeripheral:{peripheralCopy, v25, v26}];
          goto LABEL_25;
        }

LABEL_8:
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_15;
          }

          v23 = self->_ucat;
        }

        v25 = v9;
        LogPrintF_safe();
        goto LABEL_15;
      }
    }

    else
    {
    }

    v14 = self->_ucat->var0;
    if (v14 <= 60)
    {
      if (v14 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_26;
        }

        v20 = self->_ucat;
      }

      v27 = self->_blePeerUUID;
      LogPrintF_safe();
    }

LABEL_26:
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    identifier = [peripheralCopy identifier];
    blePeerUUID = self->_blePeerUUID;
    v10 = identifier;
    v11 = blePeerUUID;
    if (v10 == v11)
    {

      var0 = self->_ucat->var0;
      if (var0 > 90)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    if ((v10 != 0) != (v11 == 0))
    {
      v12 = v11;
      v13 = [(NSUUID *)v10 isEqual:v11];

      if (v13)
      {
        var0 = self->_ucat->var0;
        if (var0 > 90)
        {
LABEL_15:
          if (errorCopy)
          {
            [(CBConnection *)self _reportError:errorCopy];
          }

          else
          {
            v17 = *MEMORY[0x1E696A768];
            v18 = NSErrorF_safe();
            [(CBConnection *)self _reportError:v18];
          }

          goto LABEL_19;
        }

LABEL_8:
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_15;
          }

          ucat = self->_ucat;
        }

        v22 = CUPrintNSError();
        LogPrintF_safe();

        goto LABEL_15;
      }
    }

    else
    {
    }

    v15 = self->_ucat->var0;
    if (v15 <= 60)
    {
      if (v15 == -1)
      {
        v19 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        v21 = self->_ucat;
      }

      v16 = self->_blePeerUUID;
      v23 = CUPrintNSError();
      LogPrintF_safe();
    }

LABEL_19:
  }
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  v71[1] = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v57 = pairingCopy;
  identifier = [pairingCopy identifier];
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__3;
  v66 = __Block_byref_object_dispose__3;
  v67 = 0;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __64__CBConnection_pairingAgent_peerDidRequestPairing_type_passkey___block_invoke;
  v58[3] = &unk_1E81205A8;
  v58[4] = self;
  v58[5] = identifier;
  v60 = &v62;
  typeCopy = type;
  v13 = passkeyCopy;
  v59 = v13;
  v14 = MEMORY[0x1C68DF720](v58);
  identifier2 = [(CBPeer *)self->_peripheral identifier];
  v16 = identifier2;
  if (identifier2)
  {
    identifier3 = identifier2;
  }

  else
  {
    peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
    identifier3 = [peer identifier];
  }

  if (([identifier isEqual:identifier3] & 1) == 0)
  {
    v48 = CBErrorF(-6727, "peer not found", v19, v20, v21, v22, v23, v24, v52);
    v31 = v63[5];
    v63[5] = v48;
    goto LABEL_47;
  }

  v31 = self->_pairingOOBData;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v36 = self->_ucat;
      if (type <= 5)
      {
LABEL_8:
        v33 = off_1E81206D8[type];
        if (v31)
        {
LABEL_9:
          v34 = CUPrintNSDataHex();
          goto LABEL_14;
        }

LABEL_13:
        v34 = @"nil";
LABEL_14:
        v54 = v13;
        v55 = v34;
        v52 = identifier;
        v53 = v33;
        LogPrintF_safe();
        if (v31)
        {
        }

        goto LABEL_16;
      }
    }

    else if (type <= 5)
    {
      goto LABEL_8;
    }

    v33 = "?";
    if (v31)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_16:
  self->_pairingType = type;
  if (!type)
  {
    if ((self->_connectionFlags & 0x80) == 0)
    {
      v38 = MEMORY[0x1C68DF720](self->_pairingPromptHandler);
      if (v38)
      {
        v39 = objc_alloc_init(CBPairingInfo);
        [(CBPairingInfo *)v39 setDevice:self->_peerDevice];
        [(CBPairingInfo *)v39 setPairingType:0];
        (v38)[2](v38, v39);
      }

      goto LABEL_44;
    }

    v42 = self->_ucat->var0;
    if (v42 <= 30)
    {
      if (v42 != -1)
      {
LABEL_32:
        LogPrintF_safe();
        [agentCopy respondToPairingRequest:v57 type:0 accept:1 data:{MEMORY[0x1E695E0F8], identifier, "JustWorks", v54, v55}];
        goto LABEL_47;
      }

      if (_LogCategory_Initialize())
      {
        v50 = self->_ucat;
        goto LABEL_32;
      }
    }

    [agentCopy respondToPairingRequest:v57 type:0 accept:1 data:{MEMORY[0x1E695E0F8], v52, v53, v54, v55}];
    goto LABEL_47;
  }

  if (type == 5)
  {
    if (v31)
    {
      v37 = self->_ucat->var0;
      if (v37 <= 30)
      {
        if (v37 == -1)
        {
          v46 = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_43;
          }

          v49 = self->_ucat;
        }

        CUPrintNSDataHex();
        v54 = v53 = "OOB";
        v52 = identifier;
        LogPrintF_safe();
      }

LABEL_43:
      v70 = @"kCBMsgArgPairingData";
      v71[0] = v31;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:{1, v52, v53, v54, v55}];
      [agentCopy respondToPairingRequest:v57 type:5 accept:1 data:v38];
      goto LABEL_44;
    }

    v43 = CBErrorF(-6745, "No OOB data", v25, v26, v27, v28, v29, v30, v52);
LABEL_34:
    v38 = v63[5];
    v63[5] = v43;
LABEL_44:

    goto LABEL_47;
  }

  if (type > 4 || ((1 << type) & 0x16) == 0)
  {
    v43 = CBErrorF(-6735, "Unsupported pairing type", v25, v26, v27, v28, v29, v30, v52);
    goto LABEL_34;
  }

  v40 = MEMORY[0x1C68DF720](self->_pairingPromptHandler);
  if (v40)
  {
    v41 = objc_alloc_init(CBPairingInfo);
    [(CBPairingInfo *)v41 setDevice:self->_peerDevice];
    [(CBPairingInfo *)v41 setPairingType:type];
    if (log10([v13 intValue]) < 4.0)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%04d", objc_msgSend(v13, "intValue")];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%06d", objc_msgSend(v13, "intValue")];
    }
    v44 = ;
    [(CBPairingInfo *)v41 setPin:v44];

    (v40)[2](v40, v41);
  }

  if (type == 1 && (self->_connectionFlags & 0x200) != 0)
  {
    v45 = self->_ucat->var0;
    if (v45 <= 30)
    {
      if (v45 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_49;
        }

        v51 = self->_ucat;
      }

      v52 = identifier;
      v53 = "Display";
      LogPrintF_safe();
    }

LABEL_49:
    if (v13)
    {
      v68 = @"kCBMsgArgPairingPasskey";
      v69 = v13;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    }

    else
    {
      v38 = MEMORY[0x1E695E0F8];
    }

    [agentCopy respondToPairingRequest:v57 type:1 accept:1 data:{v38, v52, v53, v54, v55}];
    goto LABEL_44;
  }

LABEL_47:

  v14[2](v14);
  _Block_object_dispose(&v62, 8);

  v47 = *MEMORY[0x1E69E9840];
}

void __64__CBConnection_pairingAgent_peerDidRequestPairing_type_passkey___block_invoke(void *a1)
{
  if (!*(*(a1[7] + 8) + 40))
  {
    return;
  }

  v1 = **(a1[4] + 152);
  if (v1 > 90)
  {
    return;
  }

  if (v1 == -1)
  {
    v5 = a1;
    v6 = *(a1[4] + 152);
    if (!_LogCategory_Initialize())
    {
      return;
    }

    a1 = v5;
    v7 = *(v5[4] + 152);
    v8 = v5[5];
    v3 = a1[8];
    if (v3 > 5)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v2 = a1[5];
  v3 = a1[8];
  if (v3 <= 5)
  {
LABEL_5:
    v4 = off_1E81206D8[v3];
  }

LABEL_9:
  v9 = a1[6];
  v10 = *(*(a1[7] + 8) + 40);
  v11 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  dispatchQueue = self->_dispatchQueue;
  pairingCopy = pairing;
  dispatch_assert_queue_V2(dispatchQueue);
  identifier = [pairingCopy identifier];

  identifier2 = [(CBPeer *)self->_peripheral identifier];
  v8 = identifier2;
  if (identifier2)
  {
    identifier3 = identifier2;
  }

  else
  {
    peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
    identifier3 = [peer identifier];
  }

  v11 = [identifier isEqual:identifier3];
  var0 = self->_ucat->var0;
  if ((v11 & 1) == 0)
  {
    ucat = self->_ucat;
    [CBConnection pairingAgent:? peerDidCompletePairing:?];
    goto LABEL_14;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      v13 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v19 = self->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_9:
  pairingOOBData = self->_pairingOOBData;
  self->_pairingOOBData = 0;

  v15 = MEMORY[0x1C68DF720](self->_pairingCompletedHandler);
  if (v15)
  {
    v16 = self->_peerDevice;
    if (!v16)
    {
      v16 = objc_alloc_init(CBDevice);
      uUIDString = [identifier UUIDString];
      [(CBDevice *)v16 setIdentifier:uUIDString];
    }

    (v15)[2](v15, v16, 0);
  }

LABEL_14:
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  pairingCopy = pairing;
  dispatch_assert_queue_V2(dispatchQueue);
  identifier = [pairingCopy identifier];

  identifier2 = [(CBPeer *)self->_peripheral identifier];
  v11 = identifier2;
  if (identifier2)
  {
    identifier3 = identifier2;
  }

  else
  {
    peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
    identifier3 = [peer identifier];
  }

  v14 = [identifier isEqual:identifier3];
  var0 = self->_ucat->var0;
  if ((v14 & 1) == 0)
  {
    ucat = self->_ucat;
    [CBConnection pairingAgent:? peerDidFailToCompletePairing:? error:?];
    goto LABEL_14;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      v16 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v22 = self->_ucat;
    }

    v23 = CUPrintNSError();
    LogPrintF_safe();
  }

LABEL_9:
  pairingOOBData = self->_pairingOOBData;
  self->_pairingOOBData = 0;

  v18 = MEMORY[0x1C68DF720](self->_pairingCompletedHandler);
  if (v18)
  {
    v19 = self->_peerDevice;
    if (!v19)
    {
      v19 = objc_alloc_init(CBDevice);
      uUIDString = [identifier UUIDString];
      [(CBDevice *)v19 setIdentifier:uUIDString];
    }

    (v18)[2](v18, v19, errorCopy);
  }

LABEL_14:
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  dispatchQueue = self->_dispatchQueue;
  unpairCopy = unpair;
  dispatch_assert_queue_V2(dispatchQueue);
  identifier = [unpairCopy identifier];

  identifier2 = [(CBPeer *)self->_peripheral identifier];
  v8 = identifier2;
  if (identifier2)
  {
    identifier3 = identifier2;
  }

  else
  {
    peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
    identifier3 = [peer identifier];
  }

  v11 = [identifier isEqual:identifier3];
  var0 = self->_ucat->var0;
  if (v11)
  {
    if (var0 > 30)
    {
      goto LABEL_9;
    }

    if (var0 != -1)
    {
      goto LABEL_7;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v15 = self->_ucat;
LABEL_7:
      LogPrintF_safe();
    }
  }

  else
  {
    v14 = self->_ucat;
    [CBConnection pairingAgent:? peerDidUnpair:?];
  }

LABEL_9:
}

- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error
{
  peripheralCopy = peripheral;
  channelCopy = channel;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    goto LABEL_25;
  }

  if (self->_l2capChannel)
  {
    var0 = self->_ucat->var0;
    if (var0 > 60)
    {
      goto LABEL_25;
    }

    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      v20 = self->_ucat;
    }

    identifier3 = CUPrintNSError();
LABEL_6:
    LogPrintF_safe();
LABEL_24:

    goto LABEL_25;
  }

  identifier = [peripheralCopy identifier];
  blePeerUUID = self->_blePeerUUID;
  v14 = identifier;
  v15 = blePeerUUID;
  if (v14 == v15)
  {

    goto LABEL_12;
  }

  if ((v14 != 0) != (v15 == 0))
  {
    v16 = v15;
    v17 = [(NSUUID *)v14 isEqual:v15];

    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_12:
    v18 = self->_ucat->var0;
    if (v18 > 30)
    {
      goto LABEL_22;
    }

    if (v18 == -1)
    {
      v23 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
LABEL_22:
        if (errorCopy)
        {
          identifier3 = NSErrorNestedF();
          [(CBConnection *)self _reportError:identifier3];
          goto LABEL_24;
        }

        v24 = channelCopy;
        identifier3 = v24;
        if (!v24)
        {
          v29 = *MEMORY[0x1E696A768];
          v30 = NSErrorF_safe();
          [(CBConnection *)self _reportError:v30];

          goto LABEL_24;
        }

        if ([v24 PSM] != self->_blePSM)
        {
          v31 = self->_ucat->var0;
          if (v31 > 60)
          {
            goto LABEL_24;
          }

          if (v31 == -1)
          {
            v33 = self->_ucat;
            if (!_LogCategory_Initialize())
            {
              goto LABEL_24;
            }

            v34 = self->_ucat;
          }

          [identifier3 PSM];
          blePSM = self->_blePSM;
          goto LABEL_6;
        }

        objc_storeStrong(&self->_l2capChannel, channel);
        v25 = self->_ucat->var0;
        if (v25 <= 30)
        {
          if (v25 == -1)
          {
            v32 = self->_ucat;
            if (!_LogCategory_Initialize())
            {
              goto LABEL_40;
            }

            v36 = self->_ucat;
          }

          peer = [identifier3 peer];
          identifier2 = [peer identifier];
          v38 = [identifier3 PSM];
          LogPrintF_safe();
        }

LABEL_40:
        [(CBConnection *)self _run:identifier2];
        goto LABEL_24;
      }

      v35 = self->_ucat;
    }

    CUPrintNSError();
    v38 = identifier2 = channelCopy;
    LogPrintF_safe();

    goto LABEL_22;
  }

LABEL_18:
  v21 = self->_ucat->var0;
  if (v21 > 60)
  {
    goto LABEL_25;
  }

  if (v21 != -1)
  {
    goto LABEL_20;
  }

  v27 = self->_ucat;
  if (_LogCategory_Initialize())
  {
    v28 = self->_ucat;
LABEL_20:
    identifier3 = [peripheralCopy identifier];
    v22 = self->_blePeerUUID;
    v40 = CUPrintNSError();
    LogPrintF_safe();

    goto LABEL_24;
  }

LABEL_25:
}

- (void)readWithRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(CBReadRequest);
  -[CBReadRequest setMinLength:](v5, "setMinLength:", [requestCopy minLength]);
  -[CBReadRequest setMaxLength:](v5, "setMaxLength:", [requestCopy maxLength]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __32__CBConnection_readWithRequest___block_invoke;
  v10 = &unk_1E811CF50;
  v11 = requestCopy;
  v12 = v5;
  v6 = requestCopy;
  [(CBReadRequest *)v5 setCompletion:&v7];
  [(CBConnection *)self readWithCBReadRequest:v5, v7, v8, v9, v10];
}

void __32__CBConnection_readWithRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) data];
  [*(a1 + 32) setData:v2];

  v3 = [*(a1 + 40) error];
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E6999580];
  v6 = *(v4 + v5);
  *(v4 + v5) = v3;

  v7 = [*(a1 + 40) length];
  *(*(a1 + 32) + *MEMORY[0x1E6999588]) = v7;
  v9 = [*(a1 + 32) completion];
  [*(a1 + 32) setCompletion:0];
  v8 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9);
    v8 = v9;
  }
}

- (void)writeWithRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(CBWriteRequest);
  dataArray = [requestCopy dataArray];
  [(CBWriteRequest *)v5 setDataArray:dataArray];

  -[CBWriteRequest setEndOfData:](v5, "setEndOfData:", [requestCopy endOfData]);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __33__CBConnection_writeWithRequest___block_invoke;
  v11 = &unk_1E811CF50;
  v12 = requestCopy;
  v13 = v5;
  v7 = requestCopy;
  [(CBWriteRequest *)v5 setCompletion:&v8];
  [(CBConnection *)self writeWithCBWriteRequest:v5, v8, v9, v10, v11];
}

void __33__CBConnection_writeWithRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E6999590];
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  v7 = [*(a1 + 32) completion];
  [*(a1 + 32) setCompletion:0];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7);
    v6 = v7;
  }
}

- (CBConnection)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v13 = [(CBConnection *)self init];
  if (!v13)
  {
    if (!error)
    {
      goto LABEL_35;
    }

    v23 = "CBConnection init failed";
LABEL_34:
    CBErrorF(-6756, v23, v7, v8, v9, v10, v11, v12, v24);
    *error = v21 = 0;
    goto LABEL_29;
  }

  if (MEMORY[0x1C68DFDD0](objectCopy) != MEMORY[0x1E69E9E80])
  {
    if (!error)
    {
      goto LABEL_35;
    }

    v23 = "XPC non-dict";
    goto LABEL_34;
  }

  v14 = OUTLINED_FUNCTION_0_6();
  if (v14 == 6)
  {
    v13->_clientID = 0;
  }

  else if (v14 == 5)
  {
    goto LABEL_35;
  }

  v15 = OUTLINED_FUNCTION_0_6();
  if (v15 == 6)
  {
    v13->_connectionFlags = 0;
  }

  else if (v15 == 5)
  {
    goto LABEL_35;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_35;
  }

  v16 = OUTLINED_FUNCTION_0_6();
  if (v16 == 6)
  {
    v13->_internalFlags = 0;
  }

  else if (v16 == 5)
  {
    goto LABEL_35;
  }

  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_35;
  }

  v17 = CUXPCDecodeUInt64RangedEx();
  if (v17 == 6)
  {
    v13->_blePSM = 0;
  }

  else if (v17 == 5)
  {
    goto LABEL_35;
  }

  v18 = OUTLINED_FUNCTION_0_6();
  if (v18 == 6)
  {
    v13->_serviceFlags = 0;
  }

  else if (v18 == 5)
  {
    goto LABEL_35;
  }

  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_35;
  }

  v19 = CUXPCDecodeSInt64RangedEx();
  if (v19 == 6)
  {
    v13->_socketFD = 0;
  }

  else if (v19 == 5)
  {
    goto LABEL_35;
  }

  v20 = OUTLINED_FUNCTION_0_6();
  if (v20 == 6)
  {
    v13->_useCase = 0;
    goto LABEL_27;
  }

  if (v20 == 5)
  {
LABEL_35:
    v21 = 0;
    goto LABEL_29;
  }

LABEL_27:
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_35;
  }

  v21 = v13;
LABEL_29:

  return v21;
}

- (uint64_t)dealloc
{
  v1 = *(self + 152);
  v2 = CUFatalErrorF();
  return [CBConnection initWithXPCEventRepresentation:v2 error:?];
}

- (void)initWithXPCEventRepresentation:(void *)a3 error:.cold.1(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    *a1 = CBErrorF(-6705, "Bad peer ID: %@", v6, v7, v8, v9, v10, v11, v5);
  }

  *a3 = 0;
}

- (int)xpcReceivedForwardedEvent:(int *)a1 .cold.1(int **a1)
{
  result = *a1;
  if (*result <= 90)
  {
    if (*result != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v3 = *a1;
      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)xpcReceivedForwardedEvent:(uint64_t)a1 .cold.2(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_7(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 152);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (uint64_t)xpcReceivedPairingCompleted:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_7(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 152);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (uint64_t)xpcReceivedPairingPrompt:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_7(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 152);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (void)_setupIOAndReturnError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x1E696A768];
    result = NSErrorF_safe();
    *v1 = result;
  }

  return result;
}

void __55__CBConnection_pairingPerformAction_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  CBErrorF(-71148, "Use after invalidate", a3, a4, a5, a6, a7, a8, v11);
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_2_7();
  v10(v9);
}

void __67__CBConnection_pairingPerformAction_withOptions_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  CBErrorF(-71148, "Use after invalidate", a3, a4, a5, a6, a7, a8, v11);
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_2_7();
  v10(v9);
}

- (void)_prepareWriteRequest:(void *)result error:.cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x1E696A768];
    result = NSErrorF_safe();
    *v1 = result;
  }

  return result;
}

- (int)_prepareWriteRequest:(uint64_t)a1 error:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 280);
  if (v4)
  {
    v5 = *(a1 + 272);
    v6 = (v4 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v6 > 3)
    {
      v9 = v6 + 1;
      v10 = v9 & 3;
      if ((v9 & 3) == 0)
      {
        v10 = 4;
      }

      v11 = v9 - v10;
      v8 = v5 + 16 * v11;
      v12 = (v5 + 40);
      v13 = 0uLL;
      v14 = 0uLL;
      do
      {
        v15 = v12 - 4;
        v16 = vld2q_f64(v15);
        v17 = vld2q_f64(v12);
        v13 = vaddq_s64(v16, v13);
        v14 = vaddq_s64(v17, v14);
        v12 += 8;
        v11 -= 4;
      }

      while (v11);
      v7 = vaddvq_s64(vaddq_s64(v14, v13));
    }

    else
    {
      v7 = 0;
      v8 = *(a1 + 272);
    }

    v18 = v5 + 16 * v4;
    do
    {
      v7 += *(v8 + 8);
      v8 += 16;
    }

    while (v8 != v18);
  }

  result = *(a2 + 152);
  if (*result <= 9)
  {
    if (*result != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v20 = *(a2 + 152);
      v21 = *(a1 + 280);
      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)pairingAgent:(uint64_t)result peerDidCompletePairing:.cold.1(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_4_3();
    }

    result = OUTLINED_FUNCTION_3_6();
    if (result)
    {
      v2 = *v1;
      return OUTLINED_FUNCTION_4_3();
    }
  }

  return result;
}

- (uint64_t)pairingAgent:(uint64_t)result peerDidFailToCompletePairing:error:.cold.1(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_4_3();
    }

    result = OUTLINED_FUNCTION_3_6();
    if (result)
    {
      v2 = *v1;
      return OUTLINED_FUNCTION_4_3();
    }
  }

  return result;
}

- (uint64_t)pairingAgent:(uint64_t)result peerDidUnpair:.cold.1(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_4_3();
    }

    result = OUTLINED_FUNCTION_3_6();
    if (result)
    {
      v2 = *v1;
      return OUTLINED_FUNCTION_4_3();
    }
  }

  return result;
}

@end