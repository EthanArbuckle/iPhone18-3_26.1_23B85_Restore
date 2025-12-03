@interface TKToken
- (TKToken)initWithTokenDriver:(TKTokenDriver *)tokenDriver instanceID:(TKTokenInstanceID)instanceID;
- (TKTokenConfiguration)configuration;
- (id)delegate;
- (id)description;
- (void)terminate;
@end

@implementation TKToken

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  tokenID = [(TKToken *)self tokenID];
  stringRepresentation = [tokenID stringRepresentation];
  v8 = [v3 stringWithFormat:@"<%@ %@ %p>", v5, stringRepresentation, self];

  return v8;
}

- (TKToken)initWithTokenDriver:(TKTokenDriver *)tokenDriver instanceID:(TKTokenInstanceID)instanceID
{
  v7 = tokenDriver;
  v8 = instanceID;
  v16.receiver = self;
  v16.super_class = TKToken;
  v9 = [(TKToken *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tokenDriver, tokenDriver);
    if ([(TKToken *)v10 conformsToProtocol:&unk_1F5A8FF30])
    {
      objc_storeWeak(&v10->_delegate, v10);
    }

    v11 = [TKTokenID alloc];
    classID = [(TKTokenDriver *)v7 classID];
    v13 = [(TKTokenID *)v11 initWithClassID:classID instanceID:v8];
    tokenID = v10->_tokenID;
    v10->_tokenID = v13;
  }

  return v10;
}

- (TKTokenConfiguration)configuration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configuration = selfCopy->_configuration;
  if (!configuration)
  {
    v4 = [TKTokenConfiguration alloc];
    tokenID = selfCopy->_tokenID;
    context = [(TKTokenDriver *)selfCopy->_tokenDriver context];
    configurationConnection = [context configurationConnection];
    v8 = [(TKTokenConfiguration *)v4 initWithTokenID:tokenID configurationConnection:configurationConnection];
    v9 = selfCopy->_configuration;
    selfCopy->_configuration = v8;

    configuration = selfCopy->_configuration;
  }

  v10 = configuration;
  objc_sync_exit(selfCopy);

  return v10;
}

- (void)terminate
{
  tokenDriver = [(TKToken *)self tokenDriver];
  delegate = [tokenDriver delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    tokenDriver2 = [(TKToken *)self tokenDriver];
    delegate2 = [tokenDriver2 delegate];
    tokenDriver3 = [(TKToken *)self tokenDriver];
    [delegate2 tokenDriver:tokenDriver3 terminateToken:self];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end