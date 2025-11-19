@interface TKClientTokenSession
- (BOOL)deleteObject:(id)a3 error:(id *)a4;
- (BOOL)evaluateAccessControl:(id)a3 forOperation:(id)a4 error:(id *)a5;
- (TKClientTokenSession)initWithToken:(id)a3 LAContext:(id)a4 parameters:(id)a5 error:(id *)a6;
- (TKClientTokenSession)initWithTokenID:(id)a3 LAContext:(id)a4 error:(id *)a5;
- (id)_initWithToken:(id)a3 LAContext:(id)a4 parameters:(id)a5 error:(id *)a6;
- (id)createObjectWithAttributes:(id)a3 error:(id *)a4;
- (id)processObjectCreationAttributes:(id)a3 authContext:(id *)a4 error:(id *)a5;
@end

@implementation TKClientTokenSession

- (id)_initWithToken:(id)a3 LAContext:(id)a4 parameters:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = TKClientTokenSession;
  v14 = [(TKClientTokenSession *)&v18 init];
  p_isa = &v14->super.isa;
  if (v14 && (v14->_authenticateWhenNeeded = 1, objc_storeStrong(&v14->_token, a3), objc_storeStrong(p_isa + 2, a4), objc_storeStrong(p_isa + 3, a5), ![p_isa isValidWithError:a6]))
  {
    v16 = 0;
  }

  else
  {
    v16 = p_isa;
  }

  return v16;
}

- (TKClientTokenSession)initWithToken:(id)a3 LAContext:(id)a4 parameters:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v14 = off_1E86B6848;
  if ((isKindOfClass & 1) == 0)
  {
    v14 = off_1E86B6838;
  }

  v15 = [objc_alloc(*v14) initWithToken:v10 LAContext:v12 parameters:v11 error:a6];

  return v15;
}

- (TKClientTokenSession)initWithTokenID:(id)a3 LAContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[TKClientToken alloc] initWithTokenID:v9];

  v11 = [(TKClientTokenSession *)self initWithToken:v10 LAContext:v8 parameters:MEMORY[0x1E695E0F8] error:a5];
  return v11;
}

- (BOOL)deleteObject:(id)a3 error:(id *)a4
{
  v5 = [(TKClientTokenSession *)self objectForObjectID:a3 error:?];
  LOBYTE(a4) = [v5 deleteWithError:a4];

  return a4;
}

- (BOOL)evaluateAccessControl:(id)a3 forOperation:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:MEMORY[0x1E695E0F8]];
  }

  return 0;
}

- (id)createObjectWithAttributes:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:MEMORY[0x1E695E0F8]];
  }

  return 0;
}

- (id)processObjectCreationAttributes:(id)a3 authContext:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v37 = a5;
  v9 = *MEMORY[0x1E697ABC8];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E697ABC8]];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = *MEMORY[0x1E695E480];
      v12 = SecAccessControlCreateFromData();
      if (!v12)
      {
        v21 = TK_LOG_client_1();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          [TKClientTokenSession processObjectCreationAttributes:v10 authContext:&v37 error:?];
        }

        goto LABEL_13;
      }

      v13 = v12;

      v10 = v13;
    }

    if (SecAccessControlIsBound())
    {
      v14 = [(TKClientTokenSession *)self _testing_AuthContextUsed];

      if (!v14)
      {
        goto LABEL_24;
      }

      v15 = [(TKClientTokenSession *)self LAContext];
      if (v15)
      {
        [(TKClientTokenSession *)self set_testing_AuthContextUsed:v15];
      }

      else
      {
        gotLoadHelper_x8__OBJC_CLASS___LAContext(v16);
        v29 = objc_alloc_init(*(v28 + 3664));
        [(TKClientTokenSession *)self set_testing_AuthContextUsed:v29];
      }

LABEL_23:

LABEL_24:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = SecAccessControlCopyData();

        v31 = [v8 mutableCopy];
        [v31 setObject:v30 forKeyedSubscript:v9];
        v32 = [v31 copy];

        v10 = v30;
        v8 = v32;
      }

      goto LABEL_26;
    }

    v17 = [(TKClientTokenSession *)self LAContext];
    v19 = v17;
    if (v17)
    {
      v20 = v17;
      *a4 = v19;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___LAContext(v18);
      v23 = objc_alloc_init(*(v22 + 3664));
      *a4 = v23;
    }

    v24 = [(TKClientTokenSession *)self _testing_AuthContextUsed];

    if (v24)
    {
      [(TKClientTokenSession *)self set_testing_AuthContextUsed:*a4];
    }

    v25 = [*a4 evaluateAccessControl:v10 aksOperation:&stru_1F5A7A8A8 options:MEMORY[0x1E695E0F8] error:v37];
    if (v25)
    {
      v15 = v25;
      SecAccessControlSetBound();
      goto LABEL_23;
    }

    if (!v37 || *v37)
    {
LABEL_21:
      v27 = 0;
      goto LABEL_27;
    }

    Helper_x8__LAErrorDomain = gotLoadHelper_x8__LAErrorDomain(v26);
    *v37 = [v36 errorWithDomain:**(v35 + 3632) code:-1000 userInfo:{0, Helper_x8__LAErrorDomain}];
    v21 = TK_LOG_client_1();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [TKClientTokenSession processObjectCreationAttributes:v21 authContext:? error:?];
    }

LABEL_13:

    goto LABEL_21;
  }

LABEL_26:
  v8 = v8;
  v27 = v8;
LABEL_27:

  return v27;
}

- (void)processObjectCreationAttributes:(uint64_t *)a1 authContext:(NSObject *)a2 error:.cold.1(uint64_t **a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = **a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1DF413000, a2, OS_LOG_TYPE_ERROR, "[LAContext evaluateAccessControl:] failed but did not provide an error, synthesizing: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)processObjectCreationAttributes:(uint64_t)a1 authContext:(uint64_t *)a2 error:.cold.2(uint64_t a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v2 = **a2;
  }

  OUTLINED_FUNCTION_0_3();
  _os_log_fault_impl(&dword_1DF413000, v3, OS_LOG_TYPE_FAULT, "Unable to deserialize AC %{public}@, error: %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end