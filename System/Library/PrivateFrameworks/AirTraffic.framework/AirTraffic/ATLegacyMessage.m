@interface ATLegacyMessage
+ (id)_messageTypeString:(unint64_t)a3;
+ (id)messageFromData:(id)a3;
+ (id)messageFromDictionary:(id)a3;
+ (id)messageFromHeader:(id)a3 withParams:(id)a4 andPayload:(id)a5;
+ (id)messageWithName:(id)a3 parameters:(id)a4 session:(unsigned int)a5;
- (ATLegacyMessage)initWithDictionary:(id)a3;
- (id)data;
- (id)description;
- (id)dictionary;
- (id)partialResponseWithParameters:(id)a3;
- (id)responseWithResultError:(id)a3 parameters:(id)a4;
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

- (ATLegacyMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ATLegacyMessage;
  v5 = [(ATLegacyMessage *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"Type"];
    -[ATLegacyMessage setMessageType:](v5, "setMessageType:", [v6 unsignedIntValue]);

    v7 = [v4 objectForKey:@"Session"];
    -[ATLegacyMessage setMessageId:](v5, "setMessageId:", [v7 unsignedIntValue]);

    v8 = [v4 objectForKey:@"Command"];
    [(ATLegacyMessage *)v5 setName:v8];

    v9 = [v4 objectForKey:@"Result"];
    [(ATLegacyMessage *)v5 setResult:v9];

    v10 = [v4 objectForKey:@"Params"];
    [(ATLegacyMessage *)v5 setParameters:v10];

    v11 = [v4 objectForKey:@"Payload"];
    [(ATLegacyMessage *)v5 setPayload:v11];

    v12 = [v4 objectForKey:@"Session"];
    v5->_session = [v12 unsignedIntValue];

    v13 = [v4 objectForKey:@"Sig"];
    [(ATLegacyMessage *)v5 setSig:v13];
  }

  return v5;
}

- (id)data
{
  v2 = MEMORY[0x277CCAC58];
  v3 = [(ATLegacyMessage *)self dictionary];
  v4 = [v2 dataWithPropertyList:v3 format:200 options:0 error:0];

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

- (id)partialResponseWithParameters:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ATLegacyMessage);
  [(ATLegacyMessage *)v5 setMessageId:[(ATLegacyMessage *)self messageId]];
  [(ATLegacyMessage *)v5 setMessageType:2];
  v6 = [(ATLegacyMessage *)self name];
  [(ATLegacyMessage *)v5 setName:v6];

  [(ATLegacyMessage *)v5 setParameters:v4];
  [(ATLegacyMessage *)v5 setSessionNumber:[(ATLegacyMessage *)self sessionNumber]];

  return v5;
}

- (id)responseWithResultError:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(ATLegacyMessage);
  [(ATLegacyMessage *)v8 setMessageId:[(ATLegacyMessage *)self messageId]];
  [(ATLegacyMessage *)v8 setMessageType:1];
  v9 = [(ATLegacyMessage *)self name];
  [(ATLegacyMessage *)v8 setName:v9];

  [(ATLegacyMessage *)v8 setResult:v7];
  [(ATLegacyMessage *)v8 setParameters:v6];

  [(ATLegacyMessage *)v8 setSessionNumber:[(ATLegacyMessage *)self sessionNumber]];

  return v8;
}

+ (id)_messageTypeString:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"<unknown type!>";
  }

  else
  {
    return off_278C6DB38[a3];
  }
}

+ (id)messageFromData:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:0 error:0];
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
      v10 = v3;
      _os_log_impl(&dword_23EC61000, v6, OS_LOG_TYPE_ERROR, "Couldn't create message, data %{public}@", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)messageFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [[ATLegacyMessage alloc] initWithDictionary:v3];

  return v4;
}

+ (id)messageFromHeader:(id)a3 withParams:(id)a4 andPayload:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [ATLegacyMessage messageFromDictionary:a3];
  [v9 setParameters:v8];

  [v9 setPayload:v7];

  return v9;
}

+ (id)messageWithName:(id)a3 parameters:(id)a4 session:(unsigned int)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(ATLegacyMessage);
  v9->_session = a5;
  [(ATLegacyMessage *)v9 setName:v8];

  [(ATLegacyMessage *)v9 setParameters:v7];
  [(ATLegacyMessage *)v9 setMessageId:atomic_fetch_add_explicit(&__nextMessageId, 1u, memory_order_relaxed) + 1];
  [(ATLegacyMessage *)v9 setMessageType:0];

  return v9;
}

@end