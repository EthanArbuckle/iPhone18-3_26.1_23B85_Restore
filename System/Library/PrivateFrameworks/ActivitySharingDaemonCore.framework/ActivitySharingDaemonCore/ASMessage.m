@interface ASMessage
- (ASMessage)initWithDictionary:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation ASMessage

- (ASMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ASMessage;
  v5 = [(ASMessage *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ASMessagePayloadKey"];
    payload = v5->_payload;
    v5->_payload = v6;

    v8 = [v4 objectForKeyedSubscript:@"ASMessageSenderAddressKey"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v8;

    v10 = [v4 objectForKeyedSubscript:@"ASMessageReceiverAddressKey"];
    receiverAddress = v5->_receiverAddress;
    v5->_receiverAddress = v10;

    v12 = [v4 objectForKeyedSubscript:@"ASMessageTypeKey"];
    v5->_type = [v12 integerValue];

    v13 = [v4 objectForKeyedSubscript:@"ASMessageRetryCountKey"];
    v5->_retryCount = [v13 integerValue];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_type];
  [v3 setObject:v4 forKeyedSubscript:@"ASMessageTypeKey"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_retryCount];
  [v3 setObject:v5 forKeyedSubscript:@"ASMessageRetryCountKey"];

  payload = self->_payload;
  if (payload)
  {
    [v3 setObject:payload forKeyedSubscript:@"ASMessagePayloadKey"];
  }

  senderAddress = self->_senderAddress;
  if (senderAddress)
  {
    [v3 setObject:senderAddress forKeyedSubscript:@"ASMessageSenderAddressKey"];
  }

  receiverAddress = self->_receiverAddress;
  if (receiverAddress)
  {
    [v3 setObject:receiverAddress forKeyedSubscript:@"ASMessageReceiverAddressKey"];
  }

  return v3;
}

@end