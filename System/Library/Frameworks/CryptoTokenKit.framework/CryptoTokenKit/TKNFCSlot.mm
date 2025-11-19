@interface TKNFCSlot
- (BOOL)stopPollingWithError:(id *)a3;
- (TKNFCSlot)initWithSlotName:(id)a3 uiMessage:(id)a4 creatorPID:(int)a5 slotEngine:(id)a6 nfcReaderManager:(id)a7;
- (id)engine:(id)a3 transmit:(id)a4;
- (id)engineResetCard:(id)a3;
- (void)dealloc;
- (void)disconnectReaderAndCard;
- (void)endSessionWithCompletion:(id)a3;
- (void)readerManager:(id)a3 didDetectTag:(id)a4;
- (void)readerManager:(id)a3 didEncounterError:(id)a4;
- (void)readerManagerDidDisconnectTag:(id)a3;
- (void)readerManagerDidEndSession:(id)a3;
- (void)setCardConnected:(BOOL)a3 tag:(id)a4;
- (void)setUiMessage:(id)a3;
- (void)startPollingWithCompletion:(id)a3;
@end

@implementation TKNFCSlot

- (TKNFCSlot)initWithSlotName:(id)a3 uiMessage:(id)a4 creatorPID:(int)a5 slotEngine:(id)a6 nfcReaderManager:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = TKNFCSlot;
  v17 = [(TKNFCSlot *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_readerManager, a7);
    [(TKNFCReaderManager *)v18->_readerManager setDelegate:v18];
    objc_storeStrong(&v18->_name, a3);
    v18->_creatorPID = a5;
    objc_storeStrong(&v18->_slotEngine, a6);
    objc_storeStrong(&v18->_uiMessage, a4);
    [v15 setupWithName:v13 delegate:v18];
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

- (void)startPollingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_10000D174();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10001ECB4(self);
  }

  [(TKNFCReaderManager *)self->_readerManager startPollingWithCompletion:v4];
}

- (BOOL)stopPollingWithError:(id *)a3
{
  v5 = sub_10000D174();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10001ED30(self);
  }

  return [(TKNFCReaderManager *)self->_readerManager stopPollingWithError:a3];
}

- (void)endSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_10000D174();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10001ED98(self);
  }

  [(TKNFCReaderManager *)self->_readerManager endSessionWithCompletion:v4];
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

- (void)setCardConnected:(BOOL)a3 tag:(id)a4
{
  v5 = a3;
  v7 = a4;
  v8 = sub_10000D174();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10001EE00(self);
  }

  objc_storeStrong(&self->_connectedTag, a4);
  if ([(TKNFCSlot *)self isCardConnected]!= v5 && self->_slotEngine)
  {
    self->_isCardConnected = v5;
    v9 = sub_10000D174();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10001EE88(self, v9);
    }

    [(TKSmartCardSlotEngine *)self->_slotEngine cardPresent:[(TKNFCSlot *)self isCardConnected]];
  }
}

- (void)setUiMessage:(id)a3
{
  if (a3)
  {
    [(TKNFCReaderManager *)self->_readerManager updateUIMessageWithMessage:?];
  }
}

- (id)engine:(id)a3 transmit:(id)a4
{
  v5 = a4;
  v6 = sub_10000D174();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10001EF24(self);
  }

  if ([(TKNFCSlot *)self isCardConnected])
  {
    readerManager = self->_readerManager;
    v13 = 0;
    v8 = [(TKNFCReaderManager *)readerManager transceiveAPDU:v5 error:&v13];
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

- (id)engineResetCard:(id)a3
{
  v4 = sub_10000D174();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F078(self);
  }

  v5 = [(TKNFCSlot *)self isCardConnected];
  connectedTag = self->_connectedTag;
  if ((v5 & 1) != 0 || !connectedTag)
  {
    v9 = [(NFTag *)connectedTag historicalBytes];
    v7 = [NSData dataFromHistoricalBytes:v9];

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

- (void)readerManager:(id)a3 didDetectTag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000D174();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F148(self);
  }

  v13 = 0;
  v9 = [v6 connectToTag:v7 error:&v13];
  v10 = v13;
  if (v9)
  {
    v11 = sub_10000D174();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10001F218(self);
    }

    [(TKNFCSlot *)self setCardConnected:1 tag:v7];
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

    [v6 restartPollingWithError:0];
  }
}

- (void)readerManagerDidEndSession:(id)a3
{
  v4 = sub_10000D174();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F280(self);
  }

  [(TKNFCSlot *)self disconnectReaderAndCard];
}

- (void)readerManager:(id)a3 didEncounterError:(id)a4
{
  v5 = a4;
  v6 = sub_10000D174();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10001F2E8(self);
  }
}

- (void)readerManagerDidDisconnectTag:(id)a3
{
  v4 = sub_10000D174();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F350(self);
  }

  [(TKNFCSlot *)self setCardConnected:0 tag:0];
}

@end