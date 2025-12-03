@interface TKNFCSlot
- (BOOL)stopPollingWithError:(id *)error;
- (TKNFCSlot)initWithSlotName:(id)name uiMessage:(id)message creatorPID:(int)d slotEngine:(id)engine nfcReaderManager:(id)manager;
- (id)engine:(id)engine transmit:(id)transmit;
- (id)engineResetCard:(id)card;
- (void)dealloc;
- (void)disconnectReaderAndCard;
- (void)endSessionWithCompletion:(id)completion;
- (void)readerManager:(id)manager didDetectTag:(id)tag;
- (void)readerManager:(id)manager didEncounterError:(id)error;
- (void)readerManagerDidDisconnectTag:(id)tag;
- (void)readerManagerDidEndSession:(id)session;
- (void)setCardConnected:(BOOL)connected tag:(id)tag;
- (void)setUiMessage:(id)message;
- (void)startPollingWithCompletion:(id)completion;
@end

@implementation TKNFCSlot

- (TKNFCSlot)initWithSlotName:(id)name uiMessage:(id)message creatorPID:(int)d slotEngine:(id)engine nfcReaderManager:(id)manager
{
  nameCopy = name;
  messageCopy = message;
  engineCopy = engine;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = TKNFCSlot;
  v17 = [(TKNFCSlot *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_readerManager, manager);
    [(TKNFCReaderManager *)v18->_readerManager setDelegate:v18];
    objc_storeStrong(&v18->_name, name);
    v18->_creatorPID = d;
    objc_storeStrong(&v18->_slotEngine, engine);
    objc_storeStrong(&v18->_uiMessage, message);
    [engineCopy setupWithName:nameCopy delegate:v18];
  }

  return v18;
}

- (void)dealloc
{
  slotEngine = self->_slotEngine;
  if (slotEngine)
  {
    [(TKSmartCardSlotEngine *)slotEngine terminate];
    v4 = self->_slotEngine;
    self->_slotEngine = 0;
  }

  v5.receiver = self;
  v5.super_class = TKNFCSlot;
  [(TKNFCSlot *)&v5 dealloc];
}

- (void)startPollingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_10000D174();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10001ECB4(self);
  }

  [(TKNFCReaderManager *)self->_readerManager startPollingWithCompletion:completionCopy];
}

- (BOOL)stopPollingWithError:(id *)error
{
  v5 = sub_10000D174();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10001ED30(self);
  }

  return [(TKNFCReaderManager *)self->_readerManager stopPollingWithError:error];
}

- (void)endSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_10000D174();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10001ED98(self);
  }

  [(TKNFCReaderManager *)self->_readerManager endSessionWithCompletion:completionCopy];
}

- (void)disconnectReaderAndCard
{
  if ([(TKNFCSlot *)self isCardConnected])
  {
    [(TKNFCSlot *)self setCardConnected:0 tag:0];
  }

  onReaderDisconnect = self->_onReaderDisconnect;
  if (onReaderDisconnect)
  {
    v4 = *(onReaderDisconnect + 2);

    v4();
  }
}

- (void)setCardConnected:(BOOL)connected tag:(id)tag
{
  connectedCopy = connected;
  tagCopy = tag;
  v8 = sub_10000D174();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10001EE00(self);
  }

  objc_storeStrong(&self->_connectedTag, tag);
  if ([(TKNFCSlot *)self isCardConnected]!= connectedCopy && self->_slotEngine)
  {
    self->_isCardConnected = connectedCopy;
    v9 = sub_10000D174();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10001EE88(self, v9);
    }

    [(TKSmartCardSlotEngine *)self->_slotEngine cardPresent:[(TKNFCSlot *)self isCardConnected]];
  }
}

- (void)setUiMessage:(id)message
{
  if (message)
  {
    [(TKNFCReaderManager *)self->_readerManager updateUIMessageWithMessage:?];
  }
}

- (id)engine:(id)engine transmit:(id)transmit
{
  transmitCopy = transmit;
  v6 = sub_10000D174();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10001EF24(self);
  }

  if ([(TKNFCSlot *)self isCardConnected])
  {
    readerManager = self->_readerManager;
    v13 = 0;
    v8 = [(TKNFCReaderManager *)readerManager transceiveAPDU:transmitCopy error:&v13];
    v9 = v13;
    if (v9)
    {
      v10 = sub_10000D174();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001F010(self);
      }

      v11 = 0;
    }

    else
    {
      v11 = v8;
    }
  }

  else
  {
    v9 = sub_10000D174();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001EF9C(self);
    }

    v11 = 0;
  }

  return v11;
}

- (id)engineResetCard:(id)card
{
  v4 = sub_10000D174();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F078(self);
  }

  isCardConnected = [(TKNFCSlot *)self isCardConnected];
  connectedTag = self->_connectedTag;
  if ((isCardConnected & 1) != 0 || !connectedTag)
  {
    historicalBytes = [(NFTag *)connectedTag historicalBytes];
    v7 = [NSData dataFromHistoricalBytes:historicalBytes];

    v8 = [[TKSmartCardATR alloc] initWithBytes:v7];
  }

  else
  {
    v7 = sub_10000D174();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10001F0E0(self);
    }

    v8 = 0;
  }

  return v8;
}

- (void)readerManager:(id)manager didDetectTag:(id)tag
{
  managerCopy = manager;
  tagCopy = tag;
  v8 = sub_10000D174();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F148(self);
  }

  v13 = 0;
  v9 = [managerCopy connectToTag:tagCopy error:&v13];
  v10 = v13;
  if (v9)
  {
    v11 = sub_10000D174();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10001F218(self);
    }

    [(TKNFCSlot *)self setCardConnected:1 tag:tagCopy];
  }

  else
  {
    [(TKNFCSlot *)self setCardConnected:0 tag:0];
    if (v10)
    {
      v12 = sub_10000D174();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10001F1B0(self);
      }
    }

    [managerCopy restartPollingWithError:0];
  }
}

- (void)readerManagerDidEndSession:(id)session
{
  v4 = sub_10000D174();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F280(self);
  }

  [(TKNFCSlot *)self disconnectReaderAndCard];
}

- (void)readerManager:(id)manager didEncounterError:(id)error
{
  errorCopy = error;
  v6 = sub_10000D174();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10001F2E8(self);
  }
}

- (void)readerManagerDidDisconnectTag:(id)tag
{
  v4 = sub_10000D174();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F350(self);
  }

  [(TKNFCSlot *)self setCardConnected:0 tag:0];
}

@end