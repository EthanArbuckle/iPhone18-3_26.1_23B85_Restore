@interface _LAKeyStoreGenericPassword
+ (id)buildWithDictionary:(id)a3 error:(id *)a4;
- (_LAKeyStoreGenericPasswordCryptor)cryptor;
- (id)initWithIdentifier:(void *)a3 publicKeyHash:(void *)a4 wrappedData:;
- (void)fetchDataWithContext:(id)a3 completion:(id)a4;
@end

@implementation _LAKeyStoreGenericPassword

+ (id)buildWithDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = *MEMORY[0x1E697ADC8];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E697ADC8]];
  if (v7 && (v8 = v7, [v5 objectForKeyedSubscript:v6], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v10 = objc_opt_isKindOfClass(), v9, v8, (v10 & 1) != 0))
  {
    v11 = [v5 objectForKeyedSubscript:v6];
    v12 = *MEMORY[0x1E697ACF0];
    v13 = [v5 objectForKeyedSubscript:*MEMORY[0x1E697ACF0]];
    if (v13 && (v14 = v13, [v5 objectForKeyedSubscript:v12], v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v16 = objc_opt_isKindOfClass(), v15, v14, (v16 & 1) != 0))
    {
      v17 = [v5 objectForKeyedSubscript:v12];
      v18 = *MEMORY[0x1E697B3C0];
      v19 = [v5 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
      if (v19 && (v20 = v19, [v5 objectForKeyedSubscript:v18], v21 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v21, v20, (isKindOfClass & 1) != 0))
      {
        v28 = [v5 objectForKeyedSubscript:v18];
        v24 = [[_LAKeyStoreGenericPassword alloc] initWithIdentifier:v11 publicKeyHash:v17 wrappedData:v28];
      }

      else
      {
        v23 = [LAAuthorizationError genericErrorWithMessage:@"Failed to build 'genp' due to missing 'r_Data'"];

        v24 = 0;
        if (a4 && v23)
        {
          [LAAuthorizationError genericErrorWithMessage:@"Failed to build 'genp' due to missing 'r_Data'"];
          *a4 = v24 = 0;
        }
      }
    }

    else
    {
      v26 = [LAAuthorizationError genericErrorWithMessage:@"Failed to build 'genp' due to missing 'gena'"];

      v24 = 0;
      if (a4 && v26)
      {
        [LAAuthorizationError genericErrorWithMessage:@"Failed to build 'genp' due to missing 'gena'"];
        *a4 = v24 = 0;
      }
    }
  }

  else
  {
    v25 = [LAAuthorizationError genericErrorWithMessage:@"Failed to build 'genp' due to missing 'labl'"];

    v24 = 0;
    if (a4 && v25)
    {
      [LAAuthorizationError genericErrorWithMessage:@"Failed to build 'genp' due to missing 'labl'"];
      *a4 = v24 = 0;
    }
  }

  return v24;
}

- (void)fetchDataWithContext:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_cryptor);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_cryptor);
    [v8 decryptData:self->_wrappedData publicKeyHash:self->_publicKeyHash context:v9 completion:v6];
  }

  else
  {
    v8 = [LAAuthorizationError genericErrorWithMessage:@"Could not load secret"];
    v6[2](v6, 0, v8);
  }
}

- (_LAKeyStoreGenericPasswordCryptor)cryptor
{
  WeakRetained = objc_loadWeakRetained(&self->_cryptor);

  return WeakRetained;
}

- (id)initWithIdentifier:(void *)a3 publicKeyHash:(void *)a4 wrappedData:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = _LAKeyStoreGenericPassword;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 3, a3);
      objc_storeStrong(a1 + 2, a4);
    }
  }

  return a1;
}

@end