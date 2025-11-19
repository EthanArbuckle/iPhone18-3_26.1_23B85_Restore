@interface CBL2CAPChannel
- (BOOL)sendMsg:(int)a3 args:(id)a4 withReply:(id)a5;
- (CBL2CAPChannel)initWithPeer:(id)a3 manager:(id)a4 info:(id)a5;
- (CBManager)manager;
- (void)dealloc;
- (void)handleChannelClosed:(id)a3;
- (void)handleDataReceived:(id)a3;
- (void)managePendingData;
- (void)readPacketsWithCompletionHandler:(id)a3;
- (void)sendData:(id)a3 withCompletion:(id)a4;
@end

@implementation CBL2CAPChannel

- (CBL2CAPChannel)initWithPeer:(id)a3 manager:(id)a4 info:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v32.receiver = self;
  v32.super_class = CBL2CAPChannel;
  v12 = [(CBL2CAPChannel *)&v32 init];
  if (v12)
  {
    v13 = [v11 objectForKey:@"kCBMsgArgPSM"];
    v12->_PSM = [v13 intValue];

    objc_storeStrong(&v12->_peer, a3);
    v12->_socketFD = -1;
    v14 = [v11 objectForKey:@"kCBMsgArgCID"];
    v12->_cid = [v14 intValue];

    v15 = [v11 objectForKey:@"kCBMsgArgOutMTU"];
    v12->_outgoingMTU = [v15 intValue];

    v16 = [v11 objectForKey:@"kCBMsgArgIsIncoming"];
    v12->_isIncoming = [v16 intValue] != 0;

    v17 = [v11 objectForKey:@"kCBMsgArgMaxQueuedPacketLength"];
    v12->maxQueuePayloadSize = [v17 intValue];

    objc_storeWeak(&v12->_manager, v10);
    if (CBLogInitOnce != -1)
    {
      [CBCharacteristic handleDescriptorsDiscovered:];
    }

    v18 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
    {
      [CBL2CAPChannel initWithPeer:v18 manager:? info:?];
    }

    v19 = [v11 objectForKeyedSubscript:@"kCBMsgArgSocket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v11 objectForKeyedSubscript:@"kCBMsgArgSocket"];
      v12->_socketFD = [v20 intValue];

      v12->_isPacketBased = v12->_socketFD == -1;
      v21 = objc_opt_new();
      incomingPackets = v12->incomingPackets;
      v12->incomingPackets = v21;

      pendingCompletionHandler = v12->pendingCompletionHandler;
      v12->pendingCompletionHandler = 0;

      socketFD = v12->_socketFD;
      if (socketFD != -1)
      {
        v30 = 0;
        readStream = 0;
        CFStreamCreatePairWithSocket(*MEMORY[0x1E695E480], socketFD, &readStream, &v30);
        inputStream = v12->_inputStream;
        v12->_inputStream = readStream;

        outputStream = v12->_outputStream;
        v12->_outputStream = v30;
      }

      goto LABEL_10;
    }

    if (CBLogInitOnce == -1)
    {
      v28 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        v27 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      [CBCharacteristic handleDescriptorsDiscovered:];
      v28 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }
    }

    [CBL2CAPChannel initWithPeer:v28 manager:? info:?];
    goto LABEL_13;
  }

LABEL_10:
  v27 = v12;
LABEL_14:

  return v27;
}

- (void)dealloc
{
  socketFD = self->_socketFD;
  if ((socketFD & 0x80000000) == 0)
  {
    close(socketFD);
    self->_socketFD = -1;
  }

  v4 = [(CBPeer *)self->_peer manager];
  v5 = [(CBPeer *)self->_peer identifier];
  [v4 closeL2CAPChannelForPeerUUID:v5 withPsm:{-[CBL2CAPChannel PSM](self, "PSM")}];

  v6.receiver = self;
  v6.super_class = CBL2CAPChannel;
  [(CBL2CAPChannel *)&v6 dealloc];
}

- (BOOL)sendMsg:(int)a3 args:(id)a4 withReply:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[CBL2CAPChannel PSM](self, "PSM")}];
  [v8 setObject:v10 forKeyedSubscript:@"kCBMsgArgPSM"];

  v11 = [(CBL2CAPChannel *)self manager];

  if (v11)
  {
    v12 = [(CBL2CAPChannel *)self manager];
    v13 = [v12 sendMsg:v6 args:v8 withReply:v9];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)readPacketsWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v6 = [WeakRetained getCurrentQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__CBL2CAPChannel_readPacketsWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E811E440;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __51__CBL2CAPChannel_readPacketsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    [v10 setObject:@"Operation is not allowed" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CBInternalErrorDomain" code:10 userInfo:v10];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = [*(v2 + 8) count];
    v5 = *(a1 + 40);
    if (v4)
    {
      (*(v5 + 16))(v5, *(*(a1 + 32) + 8), 0);
      v6 = *(*(a1 + 32) + 8);

      [v6 removeAllObjects];
    }

    else
    {
      v7 = MEMORY[0x1C68DF720](v5);
      v8 = *(a1 + 32);
      v9 = *(v8 + 16);
      *(v8 + 16) = v7;

      MEMORY[0x1EEE66BB8](v7, v9);
    }
  }
}

- (void)sendData:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [CBL2CAPChannel sendData:a2 withCompletion:self];
  }

  v9 = objc_opt_new();
  [v9 setObject:v7 forKeyedSubscript:@"kCBMsgArgData"];
  v10 = [(CBPeer *)self->_peer identifier];
  [v9 setObject:v10 forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__CBL2CAPChannel_sendData_withCompletion___block_invoke;
  v13[3] = &unk_1E811CFC8;
  v11 = v8;
  v14 = v11;
  if (![(CBL2CAPChannel *)self sendMsg:31 args:v9 withReply:v13])
  {
    if (CBLogInitOnce != -1)
    {
      [CBCharacteristic handleDescriptorsDiscovered:];
    }

    v12 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBL2CAPChannel sendData:v12 withCompletion:?];
    }
  }
}

void __42__CBL2CAPChannel_sendData_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!v10 || v5)
  {
    v8 = v5;
    v7 = 0;
    v9 = *(a1 + 32);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [v10 objectForKeyedSubscript:@"kCBMsgArgDataLength"];
  v7 = [v6 unsignedIntValue];

  v8 = [MEMORY[0x1E696ABC0] errorWithInfo:v10];
  v9 = *(a1 + 32);
  if (v9)
  {
LABEL_6:
    (*(v9 + 16))(v9, v8, v7, 0);
  }

LABEL_7:
}

- (void)managePendingData
{
  v26 = *MEMORY[0x1E69E9840];
  p_incomingPackets = &self->incomingPackets;
  v4 = [(NSMutableArray *)self->incomingPackets count];
  v5 = v4 - 1;
  v6 = (v4 - 1);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(NSMutableArray *)*p_incomingPackets reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v20 = v5;
    v10 = 0;
    v11 = *v22;
    v12 = 1;
LABEL_3:
    v13 = 0;
    v14 = v20;
    v20 -= v9;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v10 += [*(*(&v21 + 1) + 8 * v13) length];
      if (self->maxQueuePayloadSize <= v10)
      {
        break;
      }

      v6 = v14;
      v12 = [(NSMutableArray *)*p_incomingPackets count]- v14--;
      if (v9 == ++v13)
      {
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  v15 = [(NSMutableArray *)self->incomingPackets subarrayWithRange:v6, v12];
  v16 = [v15 mutableCopy];

  objc_storeStrong(p_incomingPackets, v16);
  pendingCompletionHandler = self->pendingCompletionHandler;
  if (pendingCompletionHandler)
  {
    pendingCompletionHandler[2](pendingCompletionHandler, self->incomingPackets, 0);
    v18 = self->pendingCompletionHandler;
    self->pendingCompletionHandler = 0;

    [(NSMutableArray *)self->incomingPackets removeAllObjects];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)handleDataReceived:(id)a3
{
  v4 = [a3 objectForKey:@"kCBMsgArgData"];
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v6 = [WeakRetained getCurrentQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__CBL2CAPChannel_handleDataReceived___block_invoke;
  v8[3] = &unk_1E811CF50;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

uint64_t __37__CBL2CAPChannel_handleDataReceived___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 managePendingData];
}

- (void)handleChannelClosed:(id)a3
{
  pendingCompletionHandler = self->pendingCompletionHandler;
  if (pendingCompletionHandler)
  {
    pendingCompletionHandler[2](self->pendingCompletionHandler, self->incomingPackets, 0);
    v5 = self->pendingCompletionHandler;
    self->pendingCompletionHandler = 0;

    incomingPackets = self->incomingPackets;

    [(NSMutableArray *)incomingPackets removeAllObjects];
  }
}

- (CBManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (void)initWithPeer:(unsigned __int16 *)a1 manager:(NSObject *)a2 info:.cold.2(unsigned __int16 *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_1C0AC1000, a2, OS_LOG_TYPE_DEBUG, "Init CBL2CAPChannel with psm : %u", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)sendData:(uint64_t)a1 withCompletion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CBL2CAPChannel.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"completion != nil"}];
}

@end