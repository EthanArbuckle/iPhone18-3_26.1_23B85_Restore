@interface _LAKeyStoreGenericPassword
+ (id)buildWithDictionary:(id)dictionary error:(id *)error;
- (_LAKeyStoreGenericPasswordCryptor)cryptor;
- (id)initWithIdentifier:(void *)identifier publicKeyHash:(void *)hash wrappedData:;
- (void)fetchDataWithContext:(id)context completion:(id)completion;
@end

@implementation _LAKeyStoreGenericPassword

+ (id)buildWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v6 = *MEMORY[0x1E697ADC8];
  v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697ADC8]];
  if (v7 && (v8 = v7, [dictionaryCopy objectForKeyedSubscript:v6], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v10 = objc_opt_isKindOfClass(), v9, v8, (v10 & 1) != 0))
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:v6];
    v12 = *MEMORY[0x1E697ACF0];
    v13 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697ACF0]];
    if (v13 && (v14 = v13, [dictionaryCopy objectForKeyedSubscript:v12], v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v16 = objc_opt_isKindOfClass(), v15, v14, (v16 & 1) != 0))
    {
      v17 = [dictionaryCopy objectForKeyedSubscript:v12];
      v18 = *MEMORY[0x1E697B3C0];
      v19 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
      if (v19 && (v20 = v19, [dictionaryCopy objectForKeyedSubscript:v18], v21 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v21, v20, (isKindOfClass & 1) != 0))
      {
        v28 = [dictionaryCopy objectForKeyedSubscript:v18];
        v24 = [[_LAKeyStoreGenericPassword alloc] initWithIdentifier:v11 publicKeyHash:v17 wrappedData:v28];
      }

      else
      {
        v23 = [LAAuthorizationError genericErrorWithMessage:@"Failed to build 'genp' due to missing 'r_Data'"];

        v24 = 0;
        if (error && v23)
        {
          [LAAuthorizationError genericErrorWithMessage:@"Failed to build 'genp' due to missing 'r_Data'"];
          *error = v24 = 0;
        }
      }
    }

    else
    {
      v26 = [LAAuthorizationError genericErrorWithMessage:@"Failed to build 'genp' due to missing 'gena'"];

      v24 = 0;
      if (error && v26)
      {
        [LAAuthorizationError genericErrorWithMessage:@"Failed to build 'genp' due to missing 'gena'"];
        *error = v24 = 0;
      }
    }
  }

  else
  {
    v25 = [LAAuthorizationError genericErrorWithMessage:@"Failed to build 'genp' due to missing 'labl'"];

    v24 = 0;
    if (error && v25)
    {
      [LAAuthorizationError genericErrorWithMessage:@"Failed to build 'genp' due to missing 'labl'"];
      *error = v24 = 0;
    }
  }

  return v24;
}

- (void)fetchDataWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_cryptor);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_cryptor);
    [v8 decryptData:self->_wrappedData publicKeyHash:self->_publicKeyHash context:contextCopy completion:completionCopy];
  }

  else
  {
    v8 = [LAAuthorizationError genericErrorWithMessage:@"Could not load secret"];
    completionCopy[2](completionCopy, 0, v8);
  }
}

- (_LAKeyStoreGenericPasswordCryptor)cryptor
{
  WeakRetained = objc_loadWeakRetained(&self->_cryptor);

  return WeakRetained;
}

- (id)initWithIdentifier:(void *)identifier publicKeyHash:(void *)hash wrappedData:
{
  v8 = a2;
  identifierCopy = identifier;
  hashCopy = hash;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = _LAKeyStoreGenericPassword;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(self + 3, identifier);
      objc_storeStrong(self + 2, hash);
    }
  }

  return self;
}

@end