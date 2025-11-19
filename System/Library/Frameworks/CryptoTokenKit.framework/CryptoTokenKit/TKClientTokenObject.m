@interface TKClientTokenObject
- (BOOL)bumpKeyWithError:(id *)a3;
- (BOOL)commitKeyWithError:(id *)a3;
- (BOOL)deleteWithError:(id *)a3;
- (TKClientTokenObject)initWithSession:(id)a3 objectID:(id)a4 attributes:(id)a5;
- (__SecAccessControl)accessControlRef;
- (id)attestKey:(id)a3 nonce:(id)a4 error:(id *)a5;
- (id)attestKeyObject:(id)a3 nonce:(id)a4 error:(id *)a5;
- (id)decapsulate:(id)a3 algorithms:(id)a4 parameters:(id)a5 error:(id *)a6;
- (id)decrypt:(id)a3 algorithms:(id)a4 parameters:(id)a5 error:(id *)a6;
- (id)exchangeKey:(id)a3 algorithms:(id)a4 parameters:(id)a5 error:(id *)a6;
- (id)operation:(int64_t)a3 data:(id)a4 algorithms:(id)a5 parameters:(id)a6 error:(id *)a7;
- (id)operationResult:(id)a3 error:(id *)a4;
- (id)sign:(id)a3 algorithms:(id)a4 parameters:(id)a5 error:(id *)a6;
- (void)accessControlRef;
@end

@implementation TKClientTokenObject

- (__SecAccessControl)accessControlRef
{
  if (!self->_accessControlRef)
  {
    v3 = [(TKClientTokenObject *)self accessControl];

    if (v3)
    {
      v10 = 0;
      v4 = *MEMORY[0x1E695E480];
      v5 = [(TKClientTokenObject *)self accessControl];
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

- (TKClientTokenObject)initWithSession:(id)a3 objectID:(id)a4 attributes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = TKClientTokenObject;
  v12 = [(TKClientTokenObject *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_session, a3);
    objc_storeStrong(&v13->_objectID, a4);
    v14 = [v11 objectForKeyedSubscript:@"pubk"];
    publicKey = v13->_publicKey;
    v13->_publicKey = v14;

    v16 = [v11 objectForKeyedSubscript:*MEMORY[0x1E697ABC8]];
    accessControl = v13->_accessControl;
    v13->_accessControl = v16;

    v18 = [v11 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
    value = v13->_value;
    v13->_value = v18;

    v20 = [v11 mutableCopy];
    [(NSDictionary *)v20 removeObjectForKey:@"pubk"];
    keychainAttributes = v13->_keychainAttributes;
    v13->_keychainAttributes = v20;
  }

  return v13;
}

- (id)operation:(int64_t)a3 data:(id)a4 algorithms:(id)a5 parameters:(id)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:{MEMORY[0x1E695E0F8], a6}];
  }

  return 0;
}

- (id)operationResult:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([v7 isEqual:MEMORY[0x1E695E118]])
  {
    v8 = [MEMORY[0x1E695DEF0] data];
LABEL_10:
    v11 = v8;
    goto LABEL_11;
  }

  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = [v7 isEqual:v9];

  if (!v10)
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(TKClientTokenObject *)a2 operationResult:v7 error:?];
      }
    }

    v8 = v7;
    goto LABEL_10;
  }

  if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_11:

  return v11;
}

- (id)sign:(id)a3 algorithms:(id)a4 parameters:(id)a5 error:(id *)a6
{
  v8 = [(TKClientTokenObject *)self operation:2 data:a3 algorithms:a4 parameters:a5 error:a6];
  v9 = [(TKClientTokenObject *)self operationResult:v8 error:a6];

  return v9;
}

- (id)decrypt:(id)a3 algorithms:(id)a4 parameters:(id)a5 error:(id *)a6
{
  v8 = [(TKClientTokenObject *)self operation:3 data:a3 algorithms:a4 parameters:a5 error:a6];
  v9 = [(TKClientTokenObject *)self operationResult:v8 error:a6];

  return v9;
}

- (id)exchangeKey:(id)a3 algorithms:(id)a4 parameters:(id)a5 error:(id *)a6
{
  v8 = [(TKClientTokenObject *)self operation:4 data:a3 algorithms:a4 parameters:a5 error:a6];
  v9 = [(TKClientTokenObject *)self operationResult:v8 error:a6];

  return v9;
}

- (id)decapsulate:(id)a3 algorithms:(id)a4 parameters:(id)a5 error:(id *)a6
{
  v8 = [(TKClientTokenObject *)self operation:1003 data:a3 algorithms:a4 parameters:a5 error:a6];
  v9 = [(TKClientTokenObject *)self operationResult:v8 error:a6];

  return v9;
}

- (id)attestKey:(id)a3 nonce:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a4)
  {
    v16 = @"nonce";
    v17[0] = a4;
    v9 = MEMORY[0x1E695DF20];
    v10 = a4;
    v11 = [v9 dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  v12 = [(TKClientTokenObject *)self operation:1000 data:v8 algorithms:MEMORY[0x1E695E0F0] parameters:v11 error:a5];
  v13 = [(TKClientTokenObject *)self operationResult:v12 error:a5];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)attestKeyObject:(id)a3 nonce:(id)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v22 = @"attesteeSystemSession";
  v10 = MEMORY[0x1E696AD98];
  v11 = [v8 session];
  v12 = [v11 parameters];
  v13 = [v12 objectForKeyedSubscript:@"forceSystemSession"];
  v14 = [v10 numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
  v23[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v16 = [v15 mutableCopy];

  if (v9)
  {
    [v16 setObject:v9 forKeyedSubscript:@"nonce"];
  }

  v17 = [v8 objectID];
  v18 = [(TKClientTokenObject *)self operation:1000 data:v17 algorithms:MEMORY[0x1E695E0F0] parameters:v16 error:a5];
  v19 = [(TKClientTokenObject *)self operationResult:v18 error:a5];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BOOL)bumpKeyWithError:(id *)a3
{
  v5 = [MEMORY[0x1E695DEF0] data];
  v6 = [(TKClientTokenObject *)self operation:1001 data:v5 algorithms:MEMORY[0x1E695E0F0] parameters:MEMORY[0x1E695E0F8] error:a3];
  v7 = [(TKClientTokenObject *)self operationResult:v6 error:a3];
  LOBYTE(a3) = v7 != 0;

  return a3;
}

- (BOOL)commitKeyWithError:(id *)a3
{
  v5 = [MEMORY[0x1E695DEF0] data];
  v6 = [(TKClientTokenObject *)self operation:1002 data:v5 algorithms:MEMORY[0x1E695E0F0] parameters:MEMORY[0x1E695E0F8] error:a3];
  v7 = [(TKClientTokenObject *)self operationResult:v6 error:a3];
  LOBYTE(a3) = v7 != 0;

  return a3;
}

- (BOOL)deleteWithError:(id *)a3
{
  if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:MEMORY[0x1E695E0F8]];
  }

  return 0;
}

- (void)accessControlRef
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = [a2 accessControl];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_1DF413000, a3, OS_LOG_TYPE_ERROR, "Failed to create AC from data: %{public}@ (AC data: %{public}@)", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)operationResult:(uint64_t)a3 error:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"TKClientToken.m" lineNumber:290 description:{@"Unexpected result: %@", a3}];
}

@end