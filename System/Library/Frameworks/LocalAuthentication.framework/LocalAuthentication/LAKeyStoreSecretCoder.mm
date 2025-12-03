@interface LAKeyStoreSecretCoder
- (BOOL)_isCoderAvailable;
- (id)_generateNonce;
- (void)unwrapData:(id)data completion:(id)completion;
- (void)wrapData:(id)data completion:(id)completion;
@end

@implementation LAKeyStoreSecretCoder

- (void)wrapData:(id)data completion:(id)completion
{
  v20[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  if (![dataCopy length])
  {
    v18 = @"Invalid data size";
LABEL_10:
    _generateNonce = [LAAuthorizationError genericErrorWithMessage:v18];
    completionCopy[2](completionCopy, 0, _generateNonce);
    goto LABEL_14;
  }

  if (![(LAKeyStoreSecretCoder *)self _isCoderAvailable])
  {
    v18 = @"Required data coder not found";
    goto LABEL_10;
  }

  _generateNonce = [(LAKeyStoreSecretCoder *)self _generateNonce];
  if (_generateNonce || [0 length] == 16)
  {
    v9 = objc_alloc(getTKBERTLVRecordClass());
    v10 = [objc_alloc(getTKBERTLVRecordClass()) initWithTag:2 value:_generateNonce];
    v20[0] = v10;
    v11 = [objc_alloc(getTKBERTLVRecordClass()) initWithTag:3 value:dataCopy];
    v20[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v13 = [v9 initWithTag:1 records:v12];

    data = [v13 data];
    v15 = data;
    if (data && (v16 = [data length], v16 >= objc_msgSend(dataCopy, "length") + 16))
    {
      (completionCopy)[2](completionCopy, v15, 0);
    }

    else
    {
      v17 = [LAAuthorizationError genericErrorWithMessage:@"Could not encode data"];
      completionCopy[2](completionCopy, 0, v17);
    }
  }

  else
  {
    v13 = [LAAuthorizationError genericErrorWithMessage:@"Could not generate nonce"];
    completionCopy[2](completionCopy, 0, v13);
  }

LABEL_14:
  v19 = *MEMORY[0x1E69E9840];
}

- (void)unwrapData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if (![(LAKeyStoreSecretCoder *)self _isCoderAvailable])
  {
    v8 = [LAAuthorizationError genericErrorWithMessage:@"Required data decoder not found"];
    completionCopy[2](completionCopy, 0, v8);
    goto LABEL_16;
  }

  v7 = [getTKBERTLVRecordClass() recordFromData:dataCopy];
  v8 = v7;
  if (v7 && [v7 tag] == 1)
  {
    TKBERTLVRecordClass = getTKBERTLVRecordClass();
    value = [v8 value];
    v11 = [TKBERTLVRecordClass sequenceOfRecordsFromData:value];

    if ([v11 count] == 2)
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      if ([v12 tag] != 2)
      {
        goto LABEL_12;
      }

      v13 = [v11 objectAtIndexedSubscript:0];
      value2 = [v13 value];
      v15 = [value2 length];

      if (v15 != 16)
      {
        goto LABEL_13;
      }

      v12 = [v11 objectAtIndexedSubscript:1];
      if ([v12 tag] != 3)
      {
LABEL_12:

        goto LABEL_13;
      }

      v16 = [v11 objectAtIndexedSubscript:1];
      value3 = [v16 value];
      v18 = [value3 length];

      if (v18)
      {
        v19 = [v11 objectAtIndexedSubscript:1];
        value4 = [v19 value];
        (completionCopy)[2](completionCopy, value4, 0);

LABEL_14:
        goto LABEL_15;
      }
    }

LABEL_13:
    v19 = [LAAuthorizationError genericErrorWithMessage:@"Invalid format"];
    completionCopy[2](completionCopy, 0, v19);
    goto LABEL_14;
  }

  v11 = [LAAuthorizationError genericErrorWithMessage:@"Invalid format"];
  completionCopy[2](completionCopy, 0, v11);
LABEL_15:

LABEL_16:
}

- (id)_generateNonce
{
  v6 = *MEMORY[0x1E69E9840];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x10uLL, bytes))
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:16];
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)_isCoderAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v2 = getTKTLVRecordClass_softClass;
  v8 = getTKTLVRecordClass_softClass;
  if (!getTKTLVRecordClass_softClass)
  {
    CryptoTokenKitLibraryCore();
    v6[3] = objc_getClass("TKTLVRecord");
    getTKTLVRecordClass_softClass = v6[3];
    v2 = v6[3];
  }

  v3 = v2;
  _Block_object_dispose(&v5, 8);
  return v2 && getTKBERTLVRecordClass() != 0;
}

@end