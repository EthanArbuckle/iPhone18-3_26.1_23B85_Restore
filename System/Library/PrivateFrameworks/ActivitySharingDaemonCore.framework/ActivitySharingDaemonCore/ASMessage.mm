@interface ASMessage
- (ASMessage)initWithDictionary:(id)dictionary;
- (id)dictionaryRepresentation;
@end

@implementation ASMessage

- (ASMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = ASMessage;
  v5 = [(ASMessage *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ASMessagePayloadKey"];
    payload = v5->_payload;
    v5->_payload = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ASMessageSenderAddressKey"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ASMessageReceiverAddressKey"];
    receiverAddress = v5->_receiverAddress;
    v5->_receiverAddress = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"ASMessageTypeKey"];
    v5->_type = [v12 integerValue];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"ASMessageRetryCountKey"];
    v5->_retryCount = [v13 integerValue];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_type];
  [dictionary setObject:v4 forKeyedSubscript:@"ASMessageTypeKey"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_retryCount];
  [dictionary setObject:v5 forKeyedSubscript:@"ASMessageRetryCountKey"];

  payload = self->_payload;
  if (payload)
  {
    [dictionary setObject:payload forKeyedSubscript:@"ASMessagePayloadKey"];
  }

  senderAddress = self->_senderAddress;
  if (senderAddress)
  {
    [dictionary setObject:senderAddress forKeyedSubscript:@"ASMessageSenderAddressKey"];
  }

  receiverAddress = self->_receiverAddress;
  if (receiverAddress)
  {
    [dictionary setObject:receiverAddress forKeyedSubscript:@"ASMessageReceiverAddressKey"];
  }

  return dictionary;
}

@end