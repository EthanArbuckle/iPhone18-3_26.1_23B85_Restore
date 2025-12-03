@interface ATLegacyMessage
+ (id)_messageTypeString:(unint64_t)string;
+ (id)messageFromData:(id)data;
+ (id)messageFromDictionary:(id)dictionary;
+ (id)messageFromHeader:(id)header withParams:(id)params andPayload:(id)payload;
+ (id)messageWithName:(id)name parameters:(id)parameters session:(unsigned int)session;
- (ATLegacyMessage)initWithDictionary:(id)dictionary;
- (id)data;
- (id)description;
- (id)dictionary;
- (id)partialResponseWithParameters:(id)parameters;
- (id)responseWithResultError:(id)error parameters:(id)parameters;
@end

@implementation ATLegacyMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = self->_name;
  v5 = [ATLegacyMessage _messageTypeString:self->_messageType];
  v6 = [v3 stringWithFormat:@"[%@ %@. id=%u, Session=%u, params=%@]", name, v5, self->_messageId, self->_session, self->_params];

  return v6;
}

- (ATLegacyMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = ATLegacyMessage;
  v5 = [(ATLegacyMessage *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"Type"];
    -[ATLegacyMessage setMessageType:](v5, "setMessageType:", [v6 unsignedIntValue]);

    v7 = [dictionaryCopy objectForKey:@"Session"];
    -[ATLegacyMessage setMessageId:](v5, "setMessageId:", [v7 unsignedIntValue]);

    v8 = [dictionaryCopy objectForKey:@"Command"];
    [(ATLegacyMessage *)v5 setName:v8];

    v9 = [dictionaryCopy objectForKey:@"Result"];
    [(ATLegacyMessage *)v5 setResult:v9];

    v10 = [dictionaryCopy objectForKey:@"Params"];
    [(ATLegacyMessage *)v5 setParameters:v10];

    v11 = [dictionaryCopy objectForKey:@"Payload"];
    [(ATLegacyMessage *)v5 setPayload:v11];

    v12 = [dictionaryCopy objectForKey:@"Session"];
    v5->_session = [v12 unsignedIntValue];

    v13 = [dictionaryCopy objectForKey:@"Sig"];
    [(ATLegacyMessage *)v5 setSig:v13];
  }

  return v5;
}

- (id)data
{
  v2 = MEMORY[0x277CCAC58];
  dictionary = [(ATLegacyMessage *)self dictionary];
  v4 = [v2 dataWithPropertyList:dictionary format:200 options:0 error:0];

  return v4;
}

- (id)dictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(self->_messageType)];
  [v3 setObject:v4 forKey:@"Type"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_messageId];
  [v3 setObject:v5 forKey:@"Id"];

  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = &stru_285158448;
  }

  [v3 setObject:name forKey:@"Command"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_session];
  [v3 setObject:v7 forKey:@"Session"];

  params = self->_params;
  if (params)
  {
    [v3 setObject:params forKey:@"Params"];
  }

  v9 = self->_result;
  if (v9)
  {
    [v3 setObject:v9 forKey:@"Result"];
  }

  payload = self->_payload;
  if (payload)
  {
    [v3 setObject:payload forKey:@"Payload"];
  }

  sig = self->_sig;
  if (sig)
  {
    [v3 setObject:sig forKey:@"Sig"];
  }

  return v3;
}

- (id)partialResponseWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = objc_alloc_init(ATLegacyMessage);
  [(ATLegacyMessage *)v5 setMessageId:[(ATLegacyMessage *)self messageId]];
  [(ATLegacyMessage *)v5 setMessageType:2];
  name = [(ATLegacyMessage *)self name];
  [(ATLegacyMessage *)v5 setName:name];

  [(ATLegacyMessage *)v5 setParameters:parametersCopy];
  [(ATLegacyMessage *)v5 setSessionNumber:[(ATLegacyMessage *)self sessionNumber]];

  return v5;
}

- (id)responseWithResultError:(id)error parameters:(id)parameters
{
  parametersCopy = parameters;
  errorCopy = error;
  v8 = objc_alloc_init(ATLegacyMessage);
  [(ATLegacyMessage *)v8 setMessageId:[(ATLegacyMessage *)self messageId]];
  [(ATLegacyMessage *)v8 setMessageType:1];
  name = [(ATLegacyMessage *)self name];
  [(ATLegacyMessage *)v8 setName:name];

  [(ATLegacyMessage *)v8 setResult:errorCopy];
  [(ATLegacyMessage *)v8 setParameters:parametersCopy];

  [(ATLegacyMessage *)v8 setSessionNumber:[(ATLegacyMessage *)self sessionNumber]];

  return v8;
}

+ (id)_messageTypeString:(unint64_t)string
{
  if (string > 2)
  {
    return @"<unknown type!>";
  }

  else
  {
    return off_278C6DB38[string];
  }
}

+ (id)messageFromData:(id)data
{
  v11 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:0 error:0];
  if (v4)
  {
    v5 = [ATLegacyMessage messageFromDictionary:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.AirTraffic", "iTunesSync");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = dataCopy;
      _os_log_impl(&dword_23EC61000, v6, OS_LOG_TYPE_ERROR, "Couldn't create message, data %{public}@", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)messageFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[ATLegacyMessage alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

+ (id)messageFromHeader:(id)header withParams:(id)params andPayload:(id)payload
{
  payloadCopy = payload;
  paramsCopy = params;
  v9 = [ATLegacyMessage messageFromDictionary:header];
  [v9 setParameters:paramsCopy];

  [v9 setPayload:payloadCopy];

  return v9;
}

+ (id)messageWithName:(id)name parameters:(id)parameters session:(unsigned int)session
{
  parametersCopy = parameters;
  nameCopy = name;
  v9 = objc_alloc_init(ATLegacyMessage);
  v9->_session = session;
  [(ATLegacyMessage *)v9 setName:nameCopy];

  [(ATLegacyMessage *)v9 setParameters:parametersCopy];
  [(ATLegacyMessage *)v9 setMessageId:atomic_fetch_add_explicit(&__nextMessageId, 1u, memory_order_relaxed) + 1];
  [(ATLegacyMessage *)v9 setMessageType:0];

  return v9;
}

@end