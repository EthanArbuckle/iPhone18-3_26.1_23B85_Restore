@interface TKClientTokenObject
- (BOOL)bumpKeyWithError:(id *)error;
- (BOOL)commitKeyWithError:(id *)error;
- (BOOL)deleteWithError:(id *)error;
- (TKClientTokenObject)initWithSession:(id)session objectID:(id)d attributes:(id)attributes;
- (__SecAccessControl)accessControlRef;
- (id)attestKey:(id)key nonce:(id)nonce error:(id *)error;
- (id)attestKeyObject:(id)object nonce:(id)nonce error:(id *)error;
- (id)decapsulate:(id)decapsulate algorithms:(id)algorithms parameters:(id)parameters error:(id *)error;
- (id)decrypt:(id)decrypt algorithms:(id)algorithms parameters:(id)parameters error:(id *)error;
- (id)exchangeKey:(id)key algorithms:(id)algorithms parameters:(id)parameters error:(id *)error;
- (id)operation:(int64_t)operation data:(id)data algorithms:(id)algorithms parameters:(id)parameters error:(id *)error;
- (id)operationResult:(id)result error:(id *)error;
- (id)sign:(id)sign algorithms:(id)algorithms parameters:(id)parameters error:(id *)error;
- (void)accessControlRef;
@end

@implementation TKClientTokenObject

- (__SecAccessControl)accessControlRef
{
  if (!self->_accessControlRef)
  {
    accessControl = [(TKClientTokenObject *)self accessControl];

    if (accessControl)
    {
      v10 = 0;
      v4 = *MEMORY[0x1E695E480];
      accessControl2 = [(TKClientTokenObject *)self accessControl];
      v6 = SecAccessControlCreateFromData();
      accessControlRef = self->_accessControlRef;
      self->_accessControlRef = v6;

      if (!self->_accessControlRef)
      {
        v8 = TK_LOG_client_1();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(TKClientTokenObject *)&v10 accessControlRef];
        }
      }
    }
  }

  return self->_accessControlRef;
}

- (TKClientTokenObject)initWithSession:(id)session objectID:(id)d attributes:(id)attributes
{
  sessionCopy = session;
  dCopy = d;
  attributesCopy = attributes;
  v23.receiver = self;
  v23.super_class = TKClientTokenObject;
  v12 = [(TKClientTokenObject *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_session, session);
    objc_storeStrong(&v13->_objectID, d);
    v14 = [attributesCopy objectForKeyedSubscript:@"pubk"];
    publicKey = v13->_publicKey;
    v13->_publicKey = v14;

    v16 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697ABC8]];
    accessControl = v13->_accessControl;
    v13->_accessControl = v16;

    v18 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
    value = v13->_value;
    v13->_value = v18;

    v20 = [attributesCopy mutableCopy];
    [(NSDictionary *)v20 removeObjectForKey:@"pubk"];
    keychainAttributes = v13->_keychainAttributes;
    v13->_keychainAttributes = v20;
  }

  return v13;
}

- (id)operation:(int64_t)operation data:(id)data algorithms:(id)algorithms parameters:(id)parameters error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:{MEMORY[0x1E695E0F8], parameters}];
  }

  return 0;
}

- (id)operationResult:(id)result error:(id *)error
{
  resultCopy = result;
  if ([resultCopy isEqual:MEMORY[0x1E695E118]])
  {
    data = [MEMORY[0x1E695DEF0] data];
LABEL_10:
    v11 = data;
    goto LABEL_11;
  }

  null = [MEMORY[0x1E695DFB0] null];
  v10 = [resultCopy isEqual:null];

  if (!v10)
  {
    if (resultCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(TKClientTokenObject *)a2 operationResult:resultCopy error:?];
      }
    }

    data = resultCopy;
    goto LABEL_10;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_11:

  return v11;
}

- (id)sign:(id)sign algorithms:(id)algorithms parameters:(id)parameters error:(id *)error
{
  v8 = [(TKClientTokenObject *)self operation:2 data:sign algorithms:algorithms parameters:parameters error:error];
  v9 = [(TKClientTokenObject *)self operationResult:v8 error:error];

  return v9;
}

- (id)decrypt:(id)decrypt algorithms:(id)algorithms parameters:(id)parameters error:(id *)error
{
  v8 = [(TKClientTokenObject *)self operation:3 data:decrypt algorithms:algorithms parameters:parameters error:error];
  v9 = [(TKClientTokenObject *)self operationResult:v8 error:error];

  return v9;
}

- (id)exchangeKey:(id)key algorithms:(id)algorithms parameters:(id)parameters error:(id *)error
{
  v8 = [(TKClientTokenObject *)self operation:4 data:key algorithms:algorithms parameters:parameters error:error];
  v9 = [(TKClientTokenObject *)self operationResult:v8 error:error];

  return v9;
}

- (id)decapsulate:(id)decapsulate algorithms:(id)algorithms parameters:(id)parameters error:(id *)error
{
  v8 = [(TKClientTokenObject *)self operation:1003 data:decapsulate algorithms:algorithms parameters:parameters error:error];
  v9 = [(TKClientTokenObject *)self operationResult:v8 error:error];

  return v9;
}

- (id)attestKey:(id)key nonce:(id)nonce error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (nonce)
  {
    v16 = @"nonce";
    v17[0] = nonce;
    v9 = MEMORY[0x1E695DF20];
    nonceCopy = nonce;
    v11 = [v9 dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  v12 = [(TKClientTokenObject *)self operation:1000 data:keyCopy algorithms:MEMORY[0x1E695E0F0] parameters:v11 error:error];
  v13 = [(TKClientTokenObject *)self operationResult:v12 error:error];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)attestKeyObject:(id)object nonce:(id)nonce error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  nonceCopy = nonce;
  v22 = @"attesteeSystemSession";
  v10 = MEMORY[0x1E696AD98];
  session = [objectCopy session];
  parameters = [session parameters];
  v13 = [parameters objectForKeyedSubscript:@"forceSystemSession"];
  v14 = [v10 numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
  v23[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v16 = [v15 mutableCopy];

  if (nonceCopy)
  {
    [v16 setObject:nonceCopy forKeyedSubscript:@"nonce"];
  }

  objectID = [objectCopy objectID];
  v18 = [(TKClientTokenObject *)self operation:1000 data:objectID algorithms:MEMORY[0x1E695E0F0] parameters:v16 error:error];
  v19 = [(TKClientTokenObject *)self operationResult:v18 error:error];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BOOL)bumpKeyWithError:(id *)error
{
  data = [MEMORY[0x1E695DEF0] data];
  v6 = [(TKClientTokenObject *)self operation:1001 data:data algorithms:MEMORY[0x1E695E0F0] parameters:MEMORY[0x1E695E0F8] error:error];
  v7 = [(TKClientTokenObject *)self operationResult:v6 error:error];
  LOBYTE(error) = v7 != 0;

  return error;
}

- (BOOL)commitKeyWithError:(id *)error
{
  data = [MEMORY[0x1E695DEF0] data];
  v6 = [(TKClientTokenObject *)self operation:1002 data:data algorithms:MEMORY[0x1E695E0F0] parameters:MEMORY[0x1E695E0F8] error:error];
  v7 = [(TKClientTokenObject *)self operationResult:v6 error:error];
  LOBYTE(error) = v7 != 0;

  return error;
}

- (BOOL)deleteWithError:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:MEMORY[0x1E695E0F8]];
  }

  return 0;
}

- (void)accessControlRef
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *self;
  accessControl = [a2 accessControl];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = accessControl;
  _os_log_error_impl(&dword_1DF413000, a3, OS_LOG_TYPE_ERROR, "Failed to create AC from data: %{public}@ (AC data: %{public}@)", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)operationResult:(uint64_t)a3 error:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"TKClientToken.m" lineNumber:290 description:{@"Unexpected result: %@", a3}];
}

@end