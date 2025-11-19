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
  v6 = [(TKToken *)self tokenID];
  v7 = [v6 stringRepresentation];
  v8 = [v3 stringWithFormat:@"<%@ %@ %p>", v5, v7, self];

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
    v12 = [(TKTokenDriver *)v7 classID];
    v13 = [(TKTokenID *)v11 initWithClassID:v12 instanceID:v8];
    tokenID = v10->_tokenID;
    v10->_tokenID = v13;
  }

  return v10;
}

- (TKTokenConfiguration)configuration
{
  v2 = self;
  objc_sync_enter(v2);
  configuration = v2->_configuration;
  if (!configuration)
  {
    v4 = [TKTokenConfiguration alloc];
    tokenID = v2->_tokenID;
    v6 = [(TKTokenDriver *)v2->_tokenDriver context];
    v7 = [v6 configurationConnection];
    v8 = [(TKTokenConfiguration *)v4 initWithTokenID:tokenID configurationConnection:v7];
    v9 = v2->_configuration;
    v2->_configuration = v8;

    configuration = v2->_configuration;
  }

  v10 = configuration;
  objc_sync_exit(v2);

  return v10;
}

- (void)terminate
{
  v3 = [(TKToken *)self tokenDriver];
  v4 = [v3 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = [(TKToken *)self tokenDriver];
    v6 = [v8 delegate];
    v7 = [(TKToken *)self tokenDriver];
    [v6 tokenDriver:v7 terminateToken:self];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end