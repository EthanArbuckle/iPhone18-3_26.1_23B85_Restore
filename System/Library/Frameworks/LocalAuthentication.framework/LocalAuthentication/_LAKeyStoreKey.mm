@interface _LAKeyStoreKey
+ (id)buildWithDictionary:(id)a3 error:(id *)a4;
- (id)initWithIdentifier:(void *)a3 acl:(void *)a4 publicKeyHash:(void *)a5 keyRef:(void *)a6 pubKeyRef:;
- (void)_performOperationWithContext:(void *)a3 operation:(void *)a4 completion:;
- (void)decryptData:(id)a3 secKeyAlgorithm:(__CFString *)a4 context:(id)a5 completion:(id)a6;
- (void)encryptData:(id)a3 secKeyAlgorithm:(__CFString *)a4 completion:(id)a5;
- (void)exchangeKeysWithPublicKey:(id)a3 secKeyAlgorithm:(__CFString *)a4 secKeyParameters:(id)a5 context:(id)a6 completion:(id)a7;
- (void)exportBytesWithCompletion:(id)a3;
- (void)signData:(id)a3 secKeyAlgorithm:(__CFString *)a4 context:(id)a5 completion:(id)a6;
- (void)verifyData:(id)a3 signature:(id)a4 secKeyAlgorithm:(__CFString *)a5 completion:(id)a6;
@end

@implementation _LAKeyStoreKey

+ (id)buildWithDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = *MEMORY[0x1E697ADC8];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E697ADC8]];
  if (v7 && (v8 = v7, [v5 objectForKeyedSubscript:v6], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v10 = objc_opt_isKindOfClass(), v9, v8, (v10 & 1) != 0))
  {
    v11 = [v5 objectForKeyedSubscript:v6];
    v12 = *MEMORY[0x1E697ABC8];
    v13 = [v5 objectForKeyedSubscript:*MEMORY[0x1E697ABC8]];

    if (v13)
    {
      v14 = MEMORY[0x1E69AD210];
      v15 = [v5 objectForKeyedSubscript:v12];
      v16 = [v14 serializeACL:v15];

      v17 = *MEMORY[0x1E697AC40];
      v18 = [v5 objectForKeyedSubscript:*MEMORY[0x1E697AC40]];
      if (v18 && (v19 = v18, [v5 objectForKeyedSubscript:v17], v20 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v20, v19, (isKindOfClass & 1) != 0))
      {
        v22 = [v5 objectForKeyedSubscript:v17];
        v23 = *MEMORY[0x1E697B3D0];
        v24 = [v5 objectForKeyedSubscript:*MEMORY[0x1E697B3D0]];

        if (v24)
        {
          v25 = [v5 objectForKeyedSubscript:v23];
          v26 = SecKeyCopyPublicKey(v25);
          if (v26)
          {
            v28 = [[_LAKeyStoreKey alloc] initWithIdentifier:v11 acl:v16 publicKeyHash:v22 keyRef:v25 pubKeyRef:v26];
          }

          else
          {
            v27 = [LAAuthorizationError genericErrorWithMessage:@"Failed to build key due to missing public key"];

            v28 = 0;
            if (a4 && v27)
            {
              [LAAuthorizationError genericErrorWithMessage:@"Failed to build key due to missing public key"];
              *a4 = v28 = 0;
            }
          }
        }

        else
        {
          v32 = [LAAuthorizationError genericErrorWithMessage:@"Failed to build key due to missing 'kref'"];

          v28 = 0;
          if (a4 && v32)
          {
            [LAAuthorizationError genericErrorWithMessage:@"Failed to build key due to missing 'kref'"];
            *a4 = v28 = 0;
          }
        }
      }

      else
      {
        v30 = [LAAuthorizationError genericErrorWithMessage:@"Failed to build key due to missing 'klbl'"];

        v28 = 0;
        if (a4 && v30)
        {
          [LAAuthorizationError genericErrorWithMessage:@"Failed to build key due to missing 'klbl'"];
          *a4 = v28 = 0;
        }
      }
    }

    else
    {
      v31 = [LAAuthorizationError genericErrorWithMessage:@"Failed to build key due to missing 'accc'"];

      v28 = 0;
      if (a4 && v31)
      {
        [LAAuthorizationError genericErrorWithMessage:@"Failed to build key due to missing 'accc'"];
        *a4 = v28 = 0;
      }
    }
  }

  else
  {
    v29 = [LAAuthorizationError genericErrorWithMessage:@"Failed to build key due to missing 'labl'"];

    v28 = 0;
    if (a4 && v29)
    {
      [LAAuthorizationError genericErrorWithMessage:@"Failed to build key due to missing 'labl'"];
      *a4 = v28 = 0;
    }
  }

  return v28;
}

- (void)exportBytesWithCompletion:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__1;
  v11[4] = __Block_byref_object_dispose__1;
  v12 = 0;
  v5 = objc_alloc_init(LAContext);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44___LAKeyStoreKey_exportBytesWithCompletion___block_invoke;
  v10[3] = &unk_1E77CB8A0;
  v10[4] = v11;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44___LAKeyStoreKey_exportBytesWithCompletion___block_invoke_2;
  v7[3] = &unk_1E77CB8C8;
  v6 = v4;
  v8 = v6;
  v9 = v11;
  [(_LAKeyStoreKey *)self _performOperationWithContext:v5 operation:v10 completion:v7];

  _Block_object_dispose(v11, 8);
}

- (void)signData:(id)a3 secKeyAlgorithm:(__CFString *)a4 context:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__1;
  v22[4] = __Block_byref_object_dispose__1;
  v23 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62___LAKeyStoreKey_signData_secKeyAlgorithm_context_completion___block_invoke;
  v18[3] = &unk_1E77CB8F0;
  v20 = v22;
  v21 = a4;
  v13 = v10;
  v19 = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62___LAKeyStoreKey_signData_secKeyAlgorithm_context_completion___block_invoke_2;
  v15[3] = &unk_1E77CB8C8;
  v14 = v12;
  v16 = v14;
  v17 = v22;
  [(_LAKeyStoreKey *)self _performOperationWithContext:v11 operation:v18 completion:v15];

  _Block_object_dispose(v22, 8);
}

- (void)decryptData:(id)a3 secKeyAlgorithm:(__CFString *)a4 context:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__1;
  v22[4] = __Block_byref_object_dispose__1;
  v23 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65___LAKeyStoreKey_decryptData_secKeyAlgorithm_context_completion___block_invoke;
  v18[3] = &unk_1E77CB8F0;
  v20 = v22;
  v21 = a4;
  v13 = v10;
  v19 = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65___LAKeyStoreKey_decryptData_secKeyAlgorithm_context_completion___block_invoke_2;
  v15[3] = &unk_1E77CB8C8;
  v14 = v12;
  v16 = v14;
  v17 = v22;
  [(_LAKeyStoreKey *)self _performOperationWithContext:v11 operation:v18 completion:v15];

  _Block_object_dispose(v22, 8);
}

- (void)exchangeKeysWithPublicKey:(id)a3 secKeyAlgorithm:(__CFString *)a4 secKeyParameters:(id)a5 context:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__1;
  v27[4] = __Block_byref_object_dispose__1;
  v28 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __96___LAKeyStoreKey_exchangeKeysWithPublicKey_secKeyAlgorithm_secKeyParameters_context_completion___block_invoke;
  v22[3] = &unk_1E77CB918;
  v16 = v12;
  v23 = v16;
  v25 = v27;
  v26 = a4;
  v17 = v13;
  v24 = v17;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __96___LAKeyStoreKey_exchangeKeysWithPublicKey_secKeyAlgorithm_secKeyParameters_context_completion___block_invoke_2;
  v19[3] = &unk_1E77CB8C8;
  v18 = v15;
  v20 = v18;
  v21 = v27;
  [(_LAKeyStoreKey *)self _performOperationWithContext:v14 operation:v22 completion:v19];

  _Block_object_dispose(v27, 8);
}

- (void)encryptData:(id)a3 secKeyAlgorithm:(__CFString *)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__1;
  v20[4] = __Block_byref_object_dispose__1;
  v21 = 0;
  v10 = objc_alloc_init(LAContext);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57___LAKeyStoreKey_encryptData_secKeyAlgorithm_completion___block_invoke;
  v16[3] = &unk_1E77CB8F0;
  v18 = v20;
  v19 = a4;
  v11 = v8;
  v17 = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57___LAKeyStoreKey_encryptData_secKeyAlgorithm_completion___block_invoke_2;
  v13[3] = &unk_1E77CB8C8;
  v12 = v9;
  v14 = v12;
  v15 = v20;
  [(_LAKeyStoreKey *)self _performOperationWithContext:v10 operation:v16 completion:v13];

  _Block_object_dispose(v20, 8);
}

- (id)initWithIdentifier:(void *)a3 acl:(void *)a4 publicKeyHash:(void *)a5 keyRef:(void *)a6 pubKeyRef:
{
  v18 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = _LAKeyStoreKey;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    a1 = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      objc_storeStrong(a1 + 4, a5);
      objc_storeStrong(a1 + 5, a6);
    }
  }

  return a1;
}

- (void)_performOperationWithContext:(void *)a3 operation:(void *)a4 completion:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v22 = 0;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v7)
    {
      v21 = 0;
      v12 = [v7 checkContextValidWithError:&v21];
      v22 = v21;
      if (v12)
      {
        v13 = [LAContext alloc];
        v14 = [v7 externalizedContext];
        v15 = [(LAContext *)v13 initWithExternalizedContext:v14];

        [(LAContext *)v15 setInteractionNotAllowed:1];
        v16 = *MEMORY[0x1E697B378];
        if (SecKeySetParameter())
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __68___LAKeyStoreKey__performOperationWithContext_operation_completion___block_invoke;
          v18[3] = &unk_1E77CB788;
          v19 = v10;
          v20 = v9;
          v8[2](v8, v19, v11, v18);
        }

        else
        {
          (*(v9 + 2))(v9, v22);
        }

        goto LABEL_9;
      }

      v17 = @"Cannot perform operation with invalid context";
    }

    else
    {
      v17 = @"Cannot perform operation with nil context";
    }

    v15 = [LAAuthorizationError genericErrorWithMessage:v17];
    (*(v9 + 2))(v9, v15);
LABEL_9:
  }
}

- (void)verifyData:(id)a3 signature:(id)a4 secKeyAlgorithm:(__CFString *)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_alloc_init(LAContext);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66___LAKeyStoreKey_verifyData_signature_secKeyAlgorithm_completion___block_invoke;
  v16[3] = &unk_1E77CB940;
  v18 = v11;
  v19 = a5;
  v17 = v10;
  v14 = v11;
  v15 = v10;
  [(_LAKeyStoreKey *)self _performOperationWithContext:v13 operation:v16 completion:v12];
}

@end