@interface MCNearbyDiscoveryPeerConnection
- (BOOL)shouldDecideAboutConnection;
- (MCNearbyDiscoveryPeerConnection)initWithLocalServiceName:(id)name;
- (id)stringForStreamEventCode:(unint64_t)code;
- (int)socketForStream:(id)stream;
- (void)attachInputStream:(id)stream outputStream:(id)outputStream;
- (void)connectToNetService:(id)service;
- (void)dealloc;
- (void)invalidate;
- (void)sendData:(id)data withCompletionHandler:(id)handler;
- (void)setSyncQueue:(id)queue;
- (void)setTargetQueue:(id)queue;
- (void)setupInputStream:(id)stream outputStream:(id)outputStream;
- (void)shouldDecideAboutConnection;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
- (void)syncAcceptedConnection;
- (void)syncAppendDataToSend:(id)send;
- (void)syncCloseConnectionNow;
- (void)syncHandleInputStreamEvent:(unint64_t)event;
- (void)syncHandleOutputStreamEvent:(unint64_t)event;
- (void)syncHandleStreamEventOpenCompleted:(id)completed;
- (void)syncReadFromInputStream;
- (void)syncReceivedData:(id)data error:(id)error;
- (void)syncSendData;
- (void)syncSendHello;
- (void)syncSendMessageReceipt:(int)receipt sequenceNumber:(unsigned int)number;
@end

@implementation MCNearbyDiscoveryPeerConnection

- (MCNearbyDiscoveryPeerConnection)initWithLocalServiceName:(id)name
{
  v13.receiver = self;
  v13.super_class = MCNearbyDiscoveryPeerConnection;
  v4 = [(MCNearbyDiscoveryPeerConnection *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v4->_dataReceived = v5;
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v4->_dataToSend = v6;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v4->_dataToSendHoldingQueue = v7;
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4->_receivedDataHoldingQueue = v8;
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4->_receivedDataContentHoldingQueue = v9;
    if (v9 && (v10 = objc_alloc_init(MEMORY[0x277CBEB18]), (v4->_messageReceiptHandlerList = v10) != 0) && (v11 = objc_alloc_init(MEMORY[0x277CBEB18]), (v4->_messageReceiptHandlerHoldingQueue = v11) != 0))
    {
      [(MCNearbyDiscoveryPeerConnection *)v4 setLocalServiceName:name];
    }

    else
    {
LABEL_10:

      return 0;
    }
  }

  return v4;
}

- (void)setSyncQueue:(id)queue
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  syncQueue = self->_syncQueue;
  if (syncQueue)
  {
    dispatch_release(syncQueue);
  }

  self->_syncQueue = queue;
}

- (void)setTargetQueue:(id)queue
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  targetQueue = self->_targetQueue;
  if (targetQueue)
  {
    dispatch_release(targetQueue);
  }

  self->_targetQueue = queue;
}

- (void)syncAppendDataToSend:(id)send
{
  [(NSMutableData *)self->_dataToSend appendData:send];
  if (self->_readyToWrite)
  {

    [(MCNearbyDiscoveryPeerConnection *)self syncSendData];
  }
}

- (void)setupInputStream:(id)stream outputStream:(id)outputStream
{
  v18 = *MEMORY[0x277D85DE8];
  [stream setDelegate:self];
  [outputStream setDelegate:self];
  v7 = MEMORY[0x277D85CD0];
  if (self->_syncQueue)
  {
    syncQueue = self->_syncQueue;
  }

  else
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  MEMORY[0x23EE80CD0](stream, syncQueue);
  if (self->_syncQueue)
  {
    v9 = self->_syncQueue;
  }

  else
  {
    v9 = v7;
  }

  MEMORY[0x23EE80DC0](outputStream, v9);
  v10 = *MEMORY[0x277CBAE10];
  v11 = MEMORY[0x277CBEC38];
  [stream setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBAE10]];
  [outputStream setProperty:v11 forKey:v10];
  self->_shouldSendHello = 1;
  v12 = mcdpc_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218240;
    streamCopy = stream;
    v16 = 2048;
    outputStreamCopy = outputStream;
    _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Opening input [%p]/output [%p] streams.", &v14, 0x16u);
  }

  [stream open];
  [outputStream open];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)connectToNetService:(id)service
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__MCNearbyDiscoveryPeerConnection_connectToNetService___block_invoke;
  v4[3] = &unk_278B43C60;
  if (!syncQueue)
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  v4[4] = service;
  v4[5] = self;
  dispatch_async(syncQueue, v4);
}

void __55__MCNearbyDiscoveryPeerConnection_connectToNetService___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = mcdpc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v4 = *(a1 + 40);
    v5 = *(v4 + 8);
    *buf = 138412802;
    *&buf[4] = v3;
    v11 = 2048;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Requesting connection with netService with name [%@] ptr [%p] remote [%@].", buf, 0x20u);
  }

  v6 = *(a1 + 40);
  if (*(v6 + 40) || *(v6 + 48))
  {
    v7 = mcdpc_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Already connected!", buf, 2u);
    }
  }

  else
  {
    *(v6 + 24) = 0;
    *(*(a1 + 40) + 25) = 0;
    v9 = 0;
    *buf = 0;
    [*(a1 + 32) getInputStream:buf outputStream:&v9];
    [*(a1 + 40) setupInputStream:*buf outputStream:v9];
    [*(a1 + 40) setInputStream:*buf];
    [*(a1 + 40) setOutputStream:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)attachInputStream:(id)stream outputStream:(id)outputStream
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MCNearbyDiscoveryPeerConnection_attachInputStream_outputStream___block_invoke;
  block[3] = &unk_278B43C88;
  if (!syncQueue)
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  block[4] = self;
  block[5] = stream;
  block[6] = outputStream;
  dispatch_async(syncQueue, block);
}

void __66__MCNearbyDiscoveryPeerConnection_attachInputStream_outputStream___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = mcdpc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8);
    v5 = *(a1 + 48);
    v9 = 138412802;
    v10 = v4;
    v11 = 2048;
    v12 = v3;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Responding connection sequence - remoteServiceName [%@] inputStream [%p] outputStream =[%p]).", &v9, 0x20u);
  }

  v6 = *(a1 + 32);
  if (*(v6 + 40) || *(v6 + 48))
  {
    v7 = mcdpc_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Already connected!", &v9, 2u);
    }
  }

  else
  {
    *(v6 + 24) = 0;
    *(*(a1 + 32) + 25) = 0;
    [*(a1 + 32) setupInputStream:*(a1 + 40) outputStream:*(a1 + 48)];
    [*(a1 + 32) setInputStream:*(a1 + 40)];
    [*(a1 + 32) setOutputStream:*(a1 + 48)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldDecideAboutConnection
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(MCNearbyDiscoveryPeerConnection *)self localServiceName]&& [(MCNearbyDiscoveryPeerConnection *)self remoteServiceName])
  {
    if ([(NSString *)[(MCNearbyDiscoveryPeerConnection *)self remoteServiceName] isEqualToString:[(MCNearbyDiscoveryPeerConnection *)self localServiceName]])
    {
      v3 = mcdpc_log();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        [(MCNearbyDiscoveryPeerConnection *)self shouldDecideAboutConnection];
LABEL_8:
        LOBYTE(v4) = 0;
      }
    }

    else
    {
      v6 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", -[MCNearbyDiscoveryPeerConnection localServiceName](self, "localServiceName")];
      v7 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", -[MCNearbyDiscoveryPeerConnection remoteServiceName](self, "remoteServiceName")];
      do
      {
        [v6 appendFormat:@"+%@", -[MCNearbyDiscoveryPeerConnection remoteServiceName](self, "remoteServiceName")];
        [v7 appendFormat:@"+%@", -[MCNearbyDiscoveryPeerConnection localServiceName](self, "localServiceName")];
        CC_MD5([v6 UTF8String], objc_msgSend(v6, "length"), md);
        CC_MD5([v7 UTF8String], objc_msgSend(v7, "length"), v13);
        v8 = bswap64(*md);
        v9 = bswap64(*v13);
        if (v8 != v9)
        {
          break;
        }

        v8 = bswap64(v16);
        v9 = bswap64(v14);
      }

      while (v8 == v9);
      if (v8 < v9)
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }

      v4 = v10 >> 31;
    }
  }

  else
  {
    v5 = mcdpc_log();
    v4 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      [(MCNearbyDiscoveryPeerConnection *)self shouldDecideAboutConnection];
      goto LABEL_8;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)syncSendData
{
  if (self->_shouldSendHello)
  {
    [(MCNearbyDiscoveryPeerConnection *)self syncSendHello];
    self->_shouldSendHello = 0;
  }

  if ([(NSMutableData *)self->_dataToSend length])
  {
    v3 = [(NSOutputStream *)self->_outputStream write:[(NSMutableData *)self->_dataToSend bytes] maxLength:[(NSMutableData *)self->_dataToSend length]];
    if (v3 < 1)
    {
      return;
    }

    [(NSMutableData *)self->_dataToSend replaceBytesInRange:0 withBytes:v3 length:0, 0];
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  self->_readyToWrite = v4;
}

BOOL __78__MCNearbyDiscoveryPeerConnection_syncSendMessage_data_withCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = mcdpc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 52) + 16;
    v8 = *(a1 + 56);
    v9 = *(a1 + 32);
    v10 = v9[5];
    v11 = v9[6];
    v12 = v9[1];
    v17[0] = 67110914;
    v17[1] = a2;
    v18 = 1024;
    v19 = v6;
    v20 = 1024;
    v21 = v7;
    v22 = 1024;
    v23 = v8;
    v24 = 2048;
    v25 = v9;
    v26 = 2048;
    v27 = v10;
    v28 = 2048;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Got receipt #%u for message #%u with length [len=%u] and crc [=%08X] - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", v17, 0x42u);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    if (v4 == a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCNearbyDiscoveryPeerConnection" code:-2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Receipt does not match", *MEMORY[0x277CCA450])}];
    }

    (*(v13 + 16))(v13, v14);
  }

  result = v4 == a2;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)syncSendHello
{
  OUTLINED_FUNCTION_2_0(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncAcceptedConnection
{
  v31 = *MEMORY[0x277D85DE8];
  [(MCNearbyDiscoveryPeerConnection *)self syncAppendDataToSend:self->_dataToSendHoldingQueue];
  [(NSMutableArray *)self->_messageReceiptHandlerList addObjectsFromArray:self->_messageReceiptHandlerHoldingQueue];
  [(NSMutableArray *)self->_messageReceiptHandlerHoldingQueue removeAllObjects];
  if ([(NSMutableArray *)self->_receivedDataHoldingQueue count])
  {
    receiveDataHandler = self->_receiveDataHandler;
    if (receiveDataHandler)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      receivedDataHoldingQueue = self->_receivedDataHoldingQueue;
      v5 = [(NSMutableArray *)receivedDataHoldingQueue countByEnumeratingWithState:&v18 objects:v30 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v19;
        v8 = MEMORY[0x277D85CD0];
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v19 != v7)
            {
              objc_enumerationMutation(receivedDataHoldingQueue);
            }

            v10 = *(*(&v18 + 1) + 8 * i);
            if (self->_targetQueue)
            {
              targetQueue = self->_targetQueue;
            }

            else
            {
              targetQueue = v8;
            }

            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __57__MCNearbyDiscoveryPeerConnection_syncAcceptedConnection__block_invoke;
            v17[3] = &unk_278B441C0;
            v17[4] = v10;
            v17[5] = receiveDataHandler;
            dispatch_async(targetQueue, v17);
          }

          v6 = [(NSMutableArray *)receivedDataHoldingQueue countByEnumeratingWithState:&v18 objects:v30 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v12 = mcdpc_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        inputStream = self->_inputStream;
        outputStream = self->_outputStream;
        remoteServiceName = self->_remoteServiceName;
        *buf = 134218754;
        selfCopy = self;
        v24 = 2048;
        v25 = inputStream;
        v26 = 2048;
        v27 = outputStream;
        v28 = 2112;
        v29 = remoteServiceName;
        _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "ReceiveDataHandler is nil - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x2Au);
      }
    }
  }

  [(NSMutableArray *)self->_receivedDataContentHoldingQueue removeAllObjects];
  self->_connected = 1;
  v16 = *MEMORY[0x277D85DE8];
}

- (void)syncSendMessageReceipt:(int)receipt sequenceNumber:(unsigned int)number
{
  v13 = *MEMORY[0x277D85DE8];
  buf[0] = BYTE1(receipt);
  buf[1] = receipt;
  v7 = 256;
  v8 = 0;
  v9 = HIBYTE(number);
  v10 = BYTE2(number);
  v11 = BYTE1(number);
  numberCopy = number;
  HIDWORD(v8) = bswap32(crc32(0, buf, 0x10u));
  -[MCNearbyDiscoveryPeerConnection syncAppendDataToSend:](self, "syncAppendDataToSend:", [MEMORY[0x277CBEA90] dataWithBytes:buf length:16]);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = mcdpc_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "declines";
    v6 = *(a1 + 32);
    v7 = v6[5];
    v8 = v6[6];
    if (a2)
    {
      v5 = "approves";
    }

    v9 = v6[1];
    v10 = "close connection";
    *buf = 136316418;
    if (a2)
    {
      v10 = "accept connection";
    }

    v20 = v5;
    v21 = 2080;
    v22 = v10;
    v23 = 2048;
    v24 = v6;
    v25 = 2048;
    v26 = v7;
    v27 = 2048;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Peer %s. Will %s - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x3Eu);
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 136);
  if (a2)
  {
    v13 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v14 = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_25;
  }

  else
  {
    v13 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v14 = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_2;
  }

  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = MEMORY[0x277D85CD0];
  }

  v13[2] = v14;
  v13[3] = &unk_278B43DF0;
  v13[4] = v11;
  dispatch_async(v15, v13);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_25(uint64_t a1)
{
  [*(a1 + 32) syncSendAccept];
  v2 = *(a1 + 32);

  return [v2 syncAcceptedConnection];
}

uint64_t __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_27(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  v4 = *(a1 + 40);
  v5 = *(a2 + 16);

  return v5(a2, v4, 0);
}

void __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_30(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  if (a2)
  {
    v4 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v5 = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_2_31;
  }

  else
  {
    v4 = v7;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v5 = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_3_32;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x277D85CD0];
  }

  v4[2] = v5;
  v4[3] = &unk_278B43DF0;
  v4[4] = v2;
  dispatch_async(v6, v4);
}

- (void)syncReceivedData:(id)data error:(id)error
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = v7;
  if (data)
  {
    context = v7;
    [(NSMutableData *)self->_dataReceived appendData:data];
    bytes = [(NSMutableData *)self->_dataReceived bytes];
    v10 = [(NSMutableData *)self->_dataReceived length];
    if (v10 < 0x10)
    {
LABEL_3:
      v11 = [(NSMutableData *)self->_dataReceived length];
      v8 = context;
      if (v11 != v10)
      {
        [(NSMutableData *)self->_dataReceived replaceBytesInRange:0 withBytes:v11 - v10 length:0, 0];
      }

      goto LABEL_34;
    }

    p_messageReceiptHandlerHoldingQueue = &self->_messageReceiptHandlerHoldingQueue;
    while (1)
    {
      v16 = bswap32(*(bytes + 1));
      if (v16 >= 0x5000001)
      {
        v27 = mcdpc_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [MCNearbyDiscoveryPeerConnection syncReceivedData:? error:?];
        }

        goto LABEL_33;
      }

      if (v16 > v10 - 16)
      {
        goto LABEL_3;
      }

      v17 = *(bytes + 12);
      v18 = (*(bytes + 15) | (*(bytes + 13) << 16) | (*(bytes + 14) << 8)) & 0xFFFFFF | (v17 << 24);
      if (v17 << 24 < 0)
      {
        v28 = mcdpc_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [MCNearbyDiscoveryPeerConnection syncReceivedData:? error:?];
        }

        goto LABEL_33;
      }

      v19 = *bytes;
      v20 = *(bytes + 3);
      v21 = *(bytes + 2);
      if (v20)
      {
        if (v16)
        {
          break;
        }
      }

      *(bytes + 2) = 0;
      v22 = v16 + 16;
      if (bswap32(v21) != crc32(0, bytes, v16 + 16))
      {
        v30 = mcdpc_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [MCNearbyDiscoveryPeerConnection syncReceivedData:? error:?];
        }

LABEL_33:
        [(MCNearbyDiscoveryPeerConnection *)self syncCloseConnectionNow];
        v8 = context;
        goto LABEL_34;
      }

      v23 = __rev16(v19);
      if (v20)
      {
        if ((v23 != 2100 || (p_messageReceiptHandlerList = p_messageReceiptHandlerHoldingQueue, ![(NSMutableArray *)*p_messageReceiptHandlerHoldingQueue count])) && (p_messageReceiptHandlerList = &self->_messageReceiptHandlerList, ![(NSMutableArray *)self->_messageReceiptHandlerList count]) || (v25 = [(NSMutableArray *)*p_messageReceiptHandlerList objectAtIndex:0, p_messageReceiptHandlerHoldingQueue], [(NSMutableArray *)*p_messageReceiptHandlerList removeObjectAtIndex:0], !v25))
        {
          v32 = mcdpc_log();
          v8 = context;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [MCNearbyDiscoveryPeerConnection syncReceivedData:? error:?];
          }

          goto LABEL_7;
        }

        v26 = v25[2](v25, v18);

        if ((v26 & 1) == 0)
        {
          v34 = mcdpc_log();
          v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
          v8 = context;
          if (v35)
          {
            [MCNearbyDiscoveryPeerConnection syncReceivedData:? error:?];
          }

          goto LABEL_7;
        }
      }

      else
      {
        -[MCNearbyDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:](self, "syncProcessMessage:data:sequenceNumber:", v23, [MEMORY[0x277CBEA90] dataWithBytes:bytes + 8 length:v16], v18);
        if (self->_connectionClosed)
        {
          v33 = mcdpc_log();
          v8 = context;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [MCNearbyDiscoveryPeerConnection syncReceivedData:? error:?];
          }

          goto LABEL_34;
        }
      }

      bytes = (bytes + v22);
      v10 -= v22;
      if (v10 <= 0xF)
      {
        goto LABEL_3;
      }
    }

    v29 = mcdpc_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [MCNearbyDiscoveryPeerConnection syncReceivedData:? error:?];
    }

    goto LABEL_33;
  }

  v12 = mcdpc_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    inputStream = self->_inputStream;
    outputStream = self->_outputStream;
    remoteServiceName = self->_remoteServiceName;
    *buf = 138413314;
    errorCopy = error;
    v40 = 2048;
    selfCopy = self;
    v42 = 2048;
    v43 = inputStream;
    v44 = 2048;
    v45 = outputStream;
    v46 = 2112;
    v47 = remoteServiceName;
    _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "End of stream, error: %@ - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x34u);
  }

LABEL_7:
  [(MCNearbyDiscoveryPeerConnection *)self syncCloseConnectionNow];
LABEL_34:
  objc_autoreleasePoolPop(v8);
  v31 = *MEMORY[0x277D85DE8];
}

- (void)syncCloseConnectionNow
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = mcdpc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    inputStream = self->_inputStream;
    outputStream = self->_outputStream;
    remoteServiceName = self->_remoteServiceName;
    *buf = 134218754;
    selfCopy = self;
    v17 = 2048;
    v18 = inputStream;
    v19 = 2048;
    v20 = outputStream;
    v21 = 2112;
    v22 = remoteServiceName;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Closing connection - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x2Au);
  }

  *&self->_connected = 256;
  [(NSInputStream *)self->_inputStream close];
  [(NSInputStream *)self->_inputStream setDelegate:0];

  self->_inputStream = 0;
  [(NSOutputStream *)self->_outputStream close];
  [(NSOutputStream *)self->_outputStream setDelegate:0];

  self->_outputStream = 0;
  self->_remoteServiceName = 0;
  [(NSMutableData *)self->_dataReceived replaceBytesInRange:0 withBytes:[(NSMutableData *)self->_dataReceived length] length:0, 0];
  [(NSMutableData *)self->_dataToSendHoldingQueue replaceBytesInRange:0 withBytes:[(NSMutableData *)self->_dataToSendHoldingQueue length] length:0, 0];
  messageReceiptHandlerList = self->_messageReceiptHandlerList;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke;
  v14[3] = &unk_278B44260;
  v14[4] = self;
  [(NSMutableArray *)messageReceiptHandlerList enumerateObjectsUsingBlock:v14];
  messageReceiptHandlerHoldingQueue = self->_messageReceiptHandlerHoldingQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_34;
  v13[3] = &unk_278B44260;
  v13[4] = self;
  [(NSMutableArray *)messageReceiptHandlerHoldingQueue enumerateObjectsUsingBlock:v13];
  [(NSMutableArray *)self->_messageReceiptHandlerList removeAllObjects];
  [(NSMutableArray *)self->_messageReceiptHandlerHoldingQueue removeAllObjects];
  connectedHandler = self->_connectedHandler;
  if (connectedHandler)
  {
    self->_connectedHandler = 0;
    if (self->_targetQueue)
    {
      targetQueue = self->_targetQueue;
    }

    else
    {
      targetQueue = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_36;
    block[3] = &unk_278B44020;
    block[4] = connectedHandler;
    dispatch_async(targetQueue, block);
  }

  else if (self->_receiveDataHandler)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"MCNearbyDiscoveryPeerConnection" code:-4 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Connection closed", *MEMORY[0x277CCA450])}];
    (*(self->_receiveDataHandler + 2))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(*(a1 + 32) + 144))
    {
      v3 = *(*(a1 + 32) + 144);
    }

    else
    {
      v3 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_2;
    block[3] = &unk_278B44020;
    block[4] = a2;
    dispatch_async(v3, block);
  }

  else
  {
    v4 = mcdpc_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v5[5];
      v7 = v5[6];
      v8 = v5[1];
      *buf = 134218754;
      v12 = v5;
      v13 = 2048;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "ReceiptHander should not be nil - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x2Au);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_34(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(*(a1 + 32) + 144))
    {
      v3 = *(*(a1 + 32) + 144);
    }

    else
    {
      v3 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_2_35;
    block[3] = &unk_278B44020;
    block[4] = a2;
    dispatch_async(v3, block);
  }

  else
  {
    v4 = mcdpc_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v5[5];
      v7 = v5[6];
      v8 = v5[1];
      *buf = 134218754;
      v12 = v5;
      v13 = 2048;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "ReceiptHandler should not be nil - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x2Au);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_36(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCNearbyDiscoveryPeerConnection" code:-3 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Unable to connect", *MEMORY[0x277CCA450])}];
  v3 = *(*(a1 + 32) + 16);
  v4 = v2;
  v5 = *(a1 + 32);

  return v3(v5, 0, 0, 0, v4);
}

- (void)invalidate
{
  syncQueue = MEMORY[0x277D85CD0];
  if (self->_syncQueue)
  {
    syncQueue = self->_syncQueue;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MCNearbyDiscoveryPeerConnection_invalidate__block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

uint64_t __45__MCNearbyDiscoveryPeerConnection_invalidate__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 25) = 1;

  *(*(a1 + 32) + 128) = 0;
  *(*(a1 + 32) + 120) = 0;
  v2 = *(a1 + 32);

  return [v2 syncCloseConnectionNow];
}

- (void)dealloc
{
  [(MCNearbyDiscoveryPeerConnection *)self syncCloseConnectionNow];
  connectedHandler = self->_connectedHandler;
  if (connectedHandler)
  {
  }

  receiveDataHandler = self->_receiveDataHandler;
  if (receiveDataHandler)
  {
  }

  syncQueue = self->_syncQueue;
  if (syncQueue)
  {
    dispatch_release(syncQueue);
  }

  targetQueue = self->_targetQueue;
  if (targetQueue)
  {
    dispatch_release(targetQueue);
  }

  v7.receiver = self;
  v7.super_class = MCNearbyDiscoveryPeerConnection;
  [(MCNearbyDiscoveryPeerConnection *)&v7 dealloc];
}

- (void)sendData:(id)data withCompletionHandler:(id)handler
{
  if (data)
  {
    if ([data length] > 0x1400000)
    {
      v10 = mcdpc_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [MCNearbyDiscoveryPeerConnection sendData:? withCompletionHandler:?];
      }

      (*(handler + 2))(handler, [MEMORY[0x277CCA9B8] errorWithDomain:@"MCNearbyDiscoveryPeerConnection" code:-5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Message is too big to send", *MEMORY[0x277CCA450])}]);
    }

    else
    {
      v7 = [handler copy];
      syncQueue = self->_syncQueue;
      if (!syncQueue)
      {
        syncQueue = MEMORY[0x277D85CD0];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__MCNearbyDiscoveryPeerConnection_sendData_withCompletionHandler___block_invoke;
      block[3] = &unk_278B43F80;
      block[4] = self;
      block[5] = data;
      block[6] = v7;
      dispatch_async(syncQueue, block);
    }
  }

  else
  {
    v9 = *(handler + 2);

    v9(handler, 0);
  }
}

- (id)stringForStreamEventCode:(unint64_t)code
{
  v3 = @"None";
  v4 = @"Has Space Available";
  v5 = @"End Encountered";
  v6 = @"Error Occured";
  if (code != 8)
  {
    v6 = @"None";
  }

  if (code != 16)
  {
    v5 = v6;
  }

  if (code != 4)
  {
    v4 = v5;
  }

  if (code == 2)
  {
    v3 = @"Has Bytes Available";
  }

  if (code == 1)
  {
    v3 = @"Open Completed";
  }

  if (code <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (void)syncReadFromInputStream
{
  v11 = *MEMORY[0x277D85DE8];
  data = [MEMORY[0x277CBEB28] data];
  v4 = [(NSInputStream *)self->_inputStream read:v10 maxLength:4096];
  v5 = mcdpc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v4;
    _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Bytes read from buffer [%ld].", &v8, 0xCu);
  }

  if (v4 < 0)
  {
    v6 = mcdpc_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MCNearbyDiscoveryPeerConnection syncReadFromInputStream];
    }
  }

  else
  {
    if (v4)
    {
      [data appendBytes:v10 length:v4];
    }

    if ([data length])
    {
      [(MCNearbyDiscoveryPeerConnection *)self syncReceivedData:data error:0];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (int)socketForStream:(id)stream
{
  v3 = [stream propertyForKey:*MEMORY[0x277CBF078]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length] == 4)
  {
    return *[v3 bytes];
  }

  else
  {
    return -1;
  }
}

- (void)syncHandleStreamEventOpenCompleted:(id)completed
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = [(MCNearbyDiscoveryPeerConnection *)self socketForStream:?];
  if (v4 != -1)
  {
    v5 = v4;
    v17 = 0;
    if (SocketGetInterfaceInfo())
    {
      v6 = mcdpc_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        completedCopy4 = completed;
        v20 = 1024;
        v21 = v5;
        v7 = "SocketGetInterfaceInfo failed for stream=%p socket=%d.";
        v8 = v6;
        v9 = 18;
LABEL_37:
        _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
        goto LABEL_38;
      }

      goto LABEL_38;
    }

    *&v30.sa_len = 0;
    *&v30.sa_data[6] = 0;
    v16 = 16;
    if (getsockname(v5, &v30, &v16) == -1)
    {
      v12 = mcdpc_log();
      v11 = 0;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        completedCopy4 = completed;
        v20 = 1024;
        v21 = v5;
        _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Failed to get port for stream=%p socket=%d.", buf, 0x12u);
        v11 = 0;
      }
    }

    else
    {
      v11 = bswap32(*v30.sa_data) >> 16;
    }

    v13 = mcdpc_log();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    if (v17 <= 15)
    {
      if (v17 > 3)
      {
        if (v17 == 4)
        {
          v14 = "AWDL";
          goto LABEL_36;
        }

        if (v17 == 8)
        {
          v14 = "USB";
          goto LABEL_36;
        }
      }

      else
      {
        if (v17 == 1)
        {
          v14 = "Enet";
          goto LABEL_36;
        }

        if (v17 == 2)
        {
          v14 = "WiFi";
          goto LABEL_36;
        }
      }
    }

    else if (v17 <= 63)
    {
      if (v17 == 16)
      {
        v14 = "Direct";
        goto LABEL_36;
      }

      if (v17 == 32)
      {
        v14 = "BTLE";
        goto LABEL_36;
      }
    }

    else
    {
      switch(v17)
      {
        case 0x40:
          v14 = "WFD";
          goto LABEL_36;
        case 0x80:
          v14 = "NAN";
          goto LABEL_36;
        case 0x100:
          v14 = "IPsecBT";
LABEL_36:
          *buf = 134219266;
          completedCopy4 = completed;
          v20 = 1024;
          v21 = v5;
          v22 = 1024;
          v23 = v11;
          v24 = 2080;
          v25 = &v31;
          v26 = 1024;
          v27 = HIDWORD(v17);
          v28 = 2080;
          v29 = v14;
          v7 = "Stream [%p] info: socket=%d port=%d interfaceName=%s interfaceIndex=%d transportType=%s.";
          v8 = v13;
          v9 = 50;
          goto LABEL_37;
      }
    }

    if (v17 == 512)
    {
      v14 = "IPSecWiFi";
    }

    else
    {
      v14 = "?";
    }

    goto LABEL_36;
  }

  v10 = mcdpc_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    completedCopy4 = completed;
    v7 = "Failed get socket for stream [%p].";
    v8 = v10;
    v9 = 12;
    goto LABEL_37;
  }

LABEL_38:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleInputStreamEvent:(unint64_t)event
{
  v18 = *MEMORY[0x277D85DE8];
  if (event > 3)
  {
    switch(event)
    {
      case 4uLL:
        v6 = mcdpc_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [(MCNearbyDiscoveryPeerConnection *)self stringForStreamEventCode:4];
          inputStream = self->_inputStream;
          v14 = 138412546;
          v15 = v7;
          v16 = 2112;
          v17 = inputStream;
          _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Unexpected event (%@) for input stream %@.", &v14, 0x16u);
        }

        break;
      case 0x10uLL:
        v9 = mcdpc_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = self->_inputStream;
          v14 = 138412290;
          v15 = v10;
          _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "End for stream %@.", &v14, 0xCu);
        }

        [(MCNearbyDiscoveryPeerConnection *)self syncCloseConnectionNow];
        break;
      case 8uLL:
        v4 = mcdpc_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          [MCNearbyDiscoveryPeerConnection syncHandleInputStreamEvent:?];
        }

        break;
    }

    goto LABEL_20;
  }

  if (event == 1)
  {
    v11 = mcdpc_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_inputStream;
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Stream %@ opened.", &v14, 0xCu);
    }

    [(MCNearbyDiscoveryPeerConnection *)self syncHandleStreamEventOpenCompleted:self->_inputStream];
    goto LABEL_20;
  }

  if (event != 2)
  {
LABEL_20:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v5 = *MEMORY[0x277D85DE8];

  [(MCNearbyDiscoveryPeerConnection *)self syncReadFromInputStream];
}

- (void)syncHandleOutputStreamEvent:(unint64_t)event
{
  v18 = *MEMORY[0x277D85DE8];
  if (event <= 3)
  {
    if (event == 1)
    {
      v11 = mcdpc_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        outputStream = self->_outputStream;
        v14 = 138412290;
        v15 = outputStream;
        _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Stream %@ opened.", &v14, 0xCu);
      }

      [(MCNearbyDiscoveryPeerConnection *)self syncHandleStreamEventOpenCompleted:self->_outputStream];
    }

    else if (event == 2)
    {
      v5 = mcdpc_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(MCNearbyDiscoveryPeerConnection *)self stringForStreamEventCode:2];
        v7 = self->_outputStream;
        v14 = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected event (%@) for output stream %@.", &v14, 0x16u);
      }
    }

    goto LABEL_20;
  }

  if (event != 4)
  {
    if (event == 16)
    {
      v9 = mcdpc_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_outputStream;
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "End for stream %@", &v14, 0xCu);
      }

      [(MCNearbyDiscoveryPeerConnection *)self syncCloseConnectionNow];
    }

    else if (event == 8)
    {
      v4 = mcdpc_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [MCNearbyDiscoveryPeerConnection syncHandleOutputStreamEvent:?];
      }
    }

LABEL_20:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = *MEMORY[0x277D85DE8];

  [(MCNearbyDiscoveryPeerConnection *)self syncSendData];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = mcdpc_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    streamCopy = stream;
    v14 = 2112;
    v15 = [(MCNearbyDiscoveryPeerConnection *)self stringForStreamEventCode:event];
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Stream [%p] event [%@].", &v12, 0x16u);
  }

  if (self->_syncQueue)
  {
    syncQueue = self->_syncQueue;
  }

  else
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  dispatch_assert_queue_V2(syncQueue);
  if (self->_inputStream == stream)
  {
    [(MCNearbyDiscoveryPeerConnection *)self syncHandleInputStreamEvent:event];
  }

  else if (self->_outputStream == stream)
  {
    [(MCNearbyDiscoveryPeerConnection *)self syncHandleOutputStreamEvent:event];
  }

  else
  {
    v9 = mcdpc_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MCNearbyDiscoveryPeerConnection *)self stringForStreamEventCode:event];
      v12 = 138412290;
      streamCopy = v10;
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Unknown stream - ignoring event [%@].", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)shouldDecideAboutConnection
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = self[1];
  v1 = self[2];
  v3 = self[5];
  v4 = self[6];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x3Eu);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)syncSendMessage:(uint64_t)a1 data:(void *)a2 withCompletionHandler:.cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[1];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x34u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncProcessMessage:(void *)a1 data:sequenceNumber:.cold.1(void *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncProcessMessage:(void *)a1 data:sequenceNumber:.cold.2(void *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Au);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncProcessMessage:(void *)a1 data:(void *)a2 sequenceNumber:.cold.3(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  [a1 length];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[1];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncReceivedData:(void *)a1 error:.cold.1(void *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncReceivedData:(void *)a1 error:.cold.2(void *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Au);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncReceivedData:(void *)a1 error:.cold.3(void *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Au);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncReceivedData:(void *)a1 error:.cold.4(void *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncReceivedData:(void *)a1 error:.cold.5(void *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Au);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncReceivedData:(void *)a1 error:.cold.6(void *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncReceivedData:(void *)a1 error:.cold.7(void *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x36u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendData:(void *)a1 withCompletionHandler:.cold.1(void *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleInputStreamEvent:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 40) streamError];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleOutputStreamEvent:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 48) streamError];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end