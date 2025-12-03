@interface VCMediaStreamMultiwayConfig
- (NSArray)streamIds;
- (VCMediaStreamMultiwayConfig)init;
- (void)addRxPayloadType:(int)type networkPayload:(unsigned int)payload;
- (void)addTxPayloadType:(int)type networkPayload:(unsigned int)payload;
- (void)dealloc;
@end

@implementation VCMediaStreamMultiwayConfig

- (VCMediaStreamMultiwayConfig)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCMediaStreamMultiwayConfig;
  v2 = [(VCMediaStreamMultiwayConfig *)&v4 init];
  if (v2)
  {
    v2->_txPayloadMap = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_rxPayloadMap = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaStreamMultiwayConfig;
  [(VCMediaStreamMultiwayConfig *)&v3 dealloc];
}

- (NSArray)streamIds
{
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", self->_idsStreamID)}];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    -[NSArray addObject:](v3, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_repairedStreamID]);
    has = self->_has;
  }

  if ((has & 0x100) != 0)
  {
    -[NSArray addObject:](v3, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_v2StreamID]);
  }

  return v3;
}

- (void)addRxPayloadType:(int)type networkPayload:(unsigned int)payload
{
  v4 = *&type;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&payload];
  rxPayloadMap = self->_rxPayloadMap;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];

  [(NSMutableDictionary *)rxPayloadMap setObject:v6 forKeyedSubscript:v8];
}

- (void)addTxPayloadType:(int)type networkPayload:(unsigned int)payload
{
  v4 = *&type;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&payload];
  txPayloadMap = self->_txPayloadMap;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];

  [(NSMutableDictionary *)txPayloadMap setObject:v6 forKeyedSubscript:v8];
}

@end