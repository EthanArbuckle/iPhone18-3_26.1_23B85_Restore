@interface TKSEPClientTokenSession
- (BOOL)forceSystemSession;
- (TKSEPClientTokenSession)initWithToken:(id)token LAContext:(id)context parameters:(id)parameters error:(id *)error;
- (TKTokenID)tokenID;
- (id)createObjectWithAttributes:(id)attributes error:(id *)error;
- (id)objectForObjectID:(id)d error:(id *)error;
@end

@implementation TKSEPClientTokenSession

- (TKTokenID)tokenID
{
  v3 = [TKTokenID alloc];
  token = [(TKClientTokenSession *)self token];
  tokenID = [token tokenID];
  v6 = [(TKTokenID *)v3 initWithTokenID:tokenID];

  return v6;
}

- (BOOL)forceSystemSession
{
  parameters = [(TKClientTokenSession *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"forceSystemSession"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (TKSEPClientTokenSession)initWithToken:(id)token LAContext:(id)context parameters:(id)parameters error:(id *)error
{
  v14.receiver = self;
  v14.super_class = TKSEPClientTokenSession;
  v7 = [(TKClientTokenSession *)&v14 _initWithToken:token LAContext:context parameters:parameters error:?];
  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = +[TKSEPClientToken builtinTokenIDs];
  tokenID = [v7 tokenID];
  stringRepresentation = [tokenID stringRepresentation];
  v11 = [v8 containsObject:stringRepresentation];

  if ((v11 & 1) == 0)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_3:
    v12 = v7;
  }

  return v12;
}

- (id)createObjectWithAttributes:(id)attributes error:(id *)error
{
  attributesCopy = attributes;
  v7 = _os_activity_create(&dword_1DF413000, "SEPClientObject: createKey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v16 = 0;
  v8 = [(TKClientTokenSession *)self processObjectCreationAttributes:attributesCopy authContext:&v16 error:error];
  v9 = v16;

  if (v8)
  {
    v10 = [TKSEPKey alloc];
    v11 = [v8 mutableCopy];
    v12 = [(TKSEPKey *)v10 initWithAttributes:v11 authContext:v9 forceSystemSession:[(TKSEPClientTokenSession *)self forceSystemSession] error:error];

    lAContext = [(TKClientTokenSession *)self LAContext];
    [(TKSEPKey *)v12 setAuthContext:lAContext];

    if (v12)
    {
      v14 = [[TKSEPClientTokenObject alloc] initWithSession:self key:v12 error:error];
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = 0;
LABEL_6:

  os_activity_scope_leave(&state);

  return v14;
}

- (id)objectForObjectID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = _os_activity_create(&dword_1DF413000, "SEPClientObject: getKey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v7, &v15);
  tokenID = [(TKSEPClientTokenSession *)self tokenID];
  v9 = [tokenID decodedKeyID:dCopy error:error];

  if (v9)
  {
    v10 = [TKSEPKey alloc];
    lAContext = [(TKClientTokenSession *)self LAContext];
    v12 = [(TKSEPKey *)v10 initWithObjectID:v9 authContext:lAContext forceSystemSession:[(TKSEPClientTokenSession *)self forceSystemSession] error:error];

    if (v12)
    {
      v13 = [[TKSEPClientTokenObject alloc] initWithSession:self key:v12 error:error];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  os_activity_scope_leave(&v15);

  return v13;
}

@end