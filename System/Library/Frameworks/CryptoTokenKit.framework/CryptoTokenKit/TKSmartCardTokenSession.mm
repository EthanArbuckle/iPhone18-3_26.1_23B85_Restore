@interface TKSmartCardTokenSession
- (TKSmartCard)smartCard;
- (TKSmartCardTokenSession)initWithToken:(id)token;
- (id)getSmartCardWithError:(id *)error;
- (id)name;
- (void)beginRequest;
- (void)endRequest;
@end

@implementation TKSmartCardTokenSession

- (TKSmartCardTokenSession)initWithToken:(id)token
{
  v9.receiver = self;
  v9.super_class = TKSmartCardTokenSession;
  v3 = [(TKTokenSession *)&v9 initWithToken:token];
  v4 = v3;
  if (v3)
  {
    token = [(TKTokenSession *)v3 token];
    smartCard = [token smartCard];
    smartCard = v4->_smartCard;
    v4->_smartCard = smartCard;
  }

  return v4;
}

- (void)beginRequest
{
  v2.receiver = self;
  v2.super_class = TKSmartCardTokenSession;
  [(TKTokenSession *)&v2 beginRequest];
}

- (TKSmartCard)smartCard
{
  v8 = 0;
  v3 = [(TKSmartCardTokenSession *)self getSmartCardWithError:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [[TKSmartCardWithError alloc] initWithCard:self->_smartCard error:v4];
  }

  v6 = v5;

  return v6;
}

- (id)getSmartCardWithError:(id *)error
{
  token = [(TKTokenSession *)self token];
  v6 = TK_LOG_token_1();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(TKSmartCardTokenSession *)self getSmartCardWithError:v6];
  }

  v7 = [token AID];
  v8 = v7;
  if (!v7 || self->_hasSession)
  {

LABEL_6:
    v9 = self->_smartCard;
    goto LABEL_7;
  }

  proprietaryCardUsage = [token proprietaryCardUsage];

  if (proprietaryCardUsage)
  {
    goto LABEL_6;
  }

  smartCard = self->_smartCard;
  v23 = 0;
  v13 = [(TKSmartCard *)smartCard beginSessionWithError:&v23];
  v14 = v23;
  if (!v13)
  {
    v19 = TK_LOG_token_1();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(TKSmartCardTokenSession *)v14 getSmartCardWithError:v19];
    }

    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v15 = self->_smartCard;
  v16 = [token AID];
  v22 = v14;
  v17 = [(TKSmartCard *)v15 selectApplication:v16 error:&v22];
  v18 = v22;

  if (v17)
  {
    self->_hasSession = 1;

    goto LABEL_6;
  }

  v21 = TK_LOG_token_1();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [(TKSmartCardTokenSession *)v18 getSmartCardWithError:v21];
  }

  [(TKSmartCard *)self->_smartCard endSession];
  v14 = v18;
  if (error)
  {
LABEL_17:
    v20 = v14;
    *error = v14;
  }

LABEL_18:

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)endRequest
{
  if (self->_hasSession)
  {
    [(TKSmartCard *)self->_smartCard endSession];
    self->_hasSession = 0;
  }

  v3.receiver = self;
  v3.super_class = TKSmartCardTokenSession;
  [(TKTokenSession *)&v3 endRequest];
}

- (id)name
{
  slot = [(TKSmartCard *)self->_smartCard slot];
  name = [slot name];

  return name;
}

- (void)getSmartCardWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 112);
  v4[0] = 67240192;
  v4[1] = v2;
  _os_log_debug_impl(&dword_1DF413000, a2, OS_LOG_TYPE_DEBUG, "token session persists: %{public}d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)getSmartCardWithError:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1DF413000, a2, OS_LOG_TYPE_ERROR, "attempt to begin session failed: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)getSmartCardWithError:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1DF413000, a2, OS_LOG_TYPE_ERROR, "attempt to select AID failed: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end