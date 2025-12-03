@interface ACRemoteDeviceMessage
+ (id)_whitelistedClasses;
+ (id)actionMessageWithCommand:(id)command account:(id)account options:(id)options;
- (ACRemoteDeviceMessage)init;
- (ACRemoteDeviceMessage)initWithData:(id)data;
- (BOOL)success;
- (NSData)data;
- (id)description;
- (void)_invalidateCachedData;
- (void)_setPayloadObject:(id)object forKey:(id)key;
- (void)setIsReply:(BOOL)reply;
- (void)setNeedsReply:(BOOL)reply;
@end

@implementation ACRemoteDeviceMessage

+ (id)_whitelistedClasses
{
  if (_whitelistedClasses_onceToken != -1)
  {
    +[ACRemoteDeviceMessage _whitelistedClasses];
  }

  v3 = _whitelistedClasses_whitelistedClasses;

  return v3;
}

uint64_t __44__ACRemoteDeviceMessage__whitelistedClasses__block_invoke()
{
  v12 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  _whitelistedClasses_whitelistedClasses = [v12 setWithObjects:{v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (ACRemoteDeviceMessage)init
{
  v7.receiver = self;
  v7.super_class = ACRemoteDeviceMessage;
  v2 = [(ACRemoteDeviceMessage *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;
  }

  return v2;
}

- (ACRemoteDeviceMessage)initWithData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    [(ACRemoteDeviceMessage *)a2 initWithData:?];
  }

  v24.receiver = self;
  v24.super_class = ACRemoteDeviceMessage;
  v6 = [(ACRemoteDeviceMessage *)&v24 init];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [dataCopy copy];
  data = v6->_data;
  v6->_data = v7;

  v9 = MEMORY[0x277CCAAC8];
  v10 = +[ACRemoteDeviceMessage _whitelistedClasses];
  v23 = 0;
  v11 = [v9 unarchivedObjectOfClasses:v10 fromData:dataCopy error:&v23];
  v12 = v23;

  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"idn"];
    identifier = v6->_identifier;
    v6->_identifier = v13;

    v15 = [v11 objectForKeyedSubscript:@"pld"];
    v16 = [v15 mutableCopy];
    payload = v6->_payload;
    v6->_payload = v16;

    v18 = [v11 objectForKeyedSubscript:@"nrp"];
    v6->_needsReply = [v18 BOOLValue];

    v19 = [v11 objectForKeyedSubscript:@"irp"];
    v6->_isReply = [v19 BOOLValue];

LABEL_6:
    v20 = v6;
    goto LABEL_10;
  }

  v21 = _ACLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [(ACRemoteDeviceMessage *)v12 initWithData:v21];
  }

  v20 = 0;
LABEL_10:

  return v20;
}

- (void)_setPayloadObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  payload = self->_payload;
  if (!payload)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_payload;
    self->_payload = v8;

    payload = self->_payload;
  }

  [(NSMutableDictionary *)payload setValue:objectCopy forKey:keyCopy];
  [(ACRemoteDeviceMessage *)self _invalidateCachedData];
}

- (void)setNeedsReply:(BOOL)reply
{
  if (self->_needsReply != reply)
  {
    self->_needsReply = reply;
    [(ACRemoteDeviceMessage *)self _invalidateCachedData];
  }
}

- (void)setIsReply:(BOOL)reply
{
  if (self->_isReply != reply)
  {
    self->_isReply = reply;
    [(ACRemoteDeviceMessage *)self _invalidateCachedData];
  }
}

- (void)_invalidateCachedData
{
  data = self->_data;
  self->_data = 0;
  MEMORY[0x2821F96F8]();
}

- (NSData)data
{
  data = self->_data;
  if (!data)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = v4;
    payload = self->_payload;
    if (payload)
    {
      [v4 setObject:payload forKeyedSubscript:@"pld"];
    }

    identifier = self->_identifier;
    if (identifier)
    {
      [v5 setObject:identifier forKeyedSubscript:@"idn"];
    }

    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_needsReply];
    [v5 setObject:v8 forKeyedSubscript:@"nrp"];

    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isReply];
    [v5 setObject:v9 forKeyedSubscript:@"irp"];

    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    v11 = self->_data;
    self->_data = v10;

    data = self->_data;
  }

  return data;
}

- (id)description
{
  if (self->_isReply)
  {
    success = [(ACRemoteDeviceMessage *)self success];
    v4 = @"FAIL ";
    if (success)
    {
      v4 = @"SUCCESS";
    }

    v5 = v4;
    error = [(ACRemoteDeviceMessage *)self error];
    if (error)
    {
      error2 = [(ACRemoteDeviceMessage *)self error];
      command = [error2 description];
    }

    else
    {
      command = &stru_2835374D8;
    }

    account = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v5, command];

    v17 = MEMORY[0x277CCACA8];
    sentMessageIdentifier = [(ACRemoteDeviceMessage *)self sentMessageIdentifier];
    v16 = [v17 stringWithFormat:@"{Reply to %@: %@}", sentMessageIdentifier, account];
  }

  else
  {
    needsReply = [(ACRemoteDeviceMessage *)self needsReply];
    v10 = &stru_2835374D8;
    if (needsReply)
    {
      v10 = @"(RSVP!) ";
    }

    v11 = MEMORY[0x277CCACA8];
    identifier = self->_identifier;
    v13 = v10;
    command = [(ACRemoteDeviceMessage *)self command];
    account = [(ACRemoteDeviceMessage *)self account];
    sentMessageIdentifier = [account identifier];
    v16 = [v11 stringWithFormat:@"{%@Internal ID: %@. Command: %@. Account ID: %@.}", v13, identifier, command, sentMessageIdentifier];
  }

  return v16;
}

+ (id)actionMessageWithCommand:(id)command account:(id)account options:(id)options
{
  v25 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  accountCopy = account;
  optionsCopy = options;
  if (!commandCopy)
  {
    [ACRemoteDeviceMessage(Action) actionMessageWithCommand:a2 account:self options:?];
  }

  v12 = objc_alloc_init(ACRemoteDeviceMessage);
  [accountCopy _loadAllCachedProperties];
  [(ACRemoteDeviceMessage *)v12 _setPayloadObject:commandCopy forKey:@"cmd"];
  v13 = _ACDLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    internalCredential = [accountCopy internalCredential];
    v17 = 138413058;
    v18 = commandCopy;
    v19 = 2112;
    v20 = accountCopy;
    v21 = 2112;
    v22 = internalCredential;
    v23 = 2112;
    v24 = optionsCopy;
    _os_log_debug_impl(&dword_221D2F000, v13, OS_LOG_TYPE_DEBUG, "@Creating action message with command '%@', account '%@ [credential:%@]', options '%@'", &v17, 0x2Au);
  }

  if (accountCopy)
  {
    [(ACRemoteDeviceMessage *)v12 _setPayloadObject:accountCopy forKey:@"acc"];
  }

  if (optionsCopy)
  {
    [(ACRemoteDeviceMessage *)v12 _setPayloadObject:optionsCopy forKey:@"opt"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)success
{
  v2 = [(ACRemoteDeviceMessage *)self _payloadObjectForKey:@"suc"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)initWithData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACRemoteDeviceMessage.m" lineNumber:62 description:@"No data was provided to initalize ACRemoteDeviceMessage!"];
}

- (void)initWithData:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "Failed to decode message data, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end