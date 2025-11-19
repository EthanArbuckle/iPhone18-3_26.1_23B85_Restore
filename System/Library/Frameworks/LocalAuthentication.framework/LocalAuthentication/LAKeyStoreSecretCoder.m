@interface LAKeyStoreSecretCoder
- (BOOL)_isCoderAvailable;
- (id)_generateNonce;
- (void)unwrapData:(id)a3 completion:(id)a4;
- (void)wrapData:(id)a3 completion:(id)a4;
@end

@implementation LAKeyStoreSecretCoder

- (void)wrapData:(id)a3 completion:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    v18 = @"Invalid data size";
LABEL_10:
    v8 = [LAAuthorizationError genericErrorWithMessage:v18];
    v7[2](v7, 0, v8);
    goto LABEL_14;
  }

  if (![(LAKeyStoreSecretCoder *)self _isCoderAvailable])
  {
    v18 = @"Required data coder not found";
    goto LABEL_10;
  }

  v8 = [(LAKeyStoreSecretCoder *)self _generateNonce];
  if (v8 || [0 length] == 16)
  {
    v9 = objc_alloc(getTKBERTLVRecordClass());
    v10 = [objc_alloc(getTKBERTLVRecordClass()) initWithTag:2 value:v8];
    v20[0] = v10;
    v11 = [objc_alloc(getTKBERTLVRecordClass()) initWithTag:3 value:v6];
    v20[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v13 = [v9 initWithTag:1 records:v12];

    v14 = [v13 data];
    v15 = v14;
    if (v14 && (v16 = [v14 length], v16 >= objc_msgSend(v6, "length") + 16))
    {
      (v7)[2](v7, v15, 0);
    }

    else
    {
      v17 = [LAAuthorizationError genericErrorWithMessage:@"Could not encode data"];
      v7[2](v7, 0, v17);
    }
  }

  else
  {
    v13 = [LAAuthorizationError genericErrorWithMessage:@"Could not generate nonce"];
    v7[2](v7, 0, v13);
  }

LABEL_14:
  v19 = *MEMORY[0x1E69E9840];
}

- (void)unwrapData:(id)a3 completion:(id)a4
{
  v21 = a3;
  v6 = a4;
  if (![(LAKeyStoreSecretCoder *)self _isCoderAvailable])
  {
    v8 = [LAAuthorizationError genericErrorWithMessage:@"Required data decoder not found"];
    v6[2](v6, 0, v8);
    goto LABEL_16;
  }

  v7 = [getTKBERTLVRecordClass() recordFromData:v21];
  v8 = v7;
  if (v7 && [v7 tag] == 1)
  {
    TKBERTLVRecordClass = getTKBERTLVRecordClass();
    v10 = [v8 value];
    v11 = [TKBERTLVRecordClass sequenceOfRecordsFromData:v10];

    if ([v11 count] == 2)
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      if ([v12 tag] != 2)
      {
        goto LABEL_12;
      }

      v13 = [v11 objectAtIndexedSubscript:0];
      v14 = [v13 value];
      v15 = [v14 length];

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
      v17 = [v16 value];
      v18 = [v17 length];

      if (v18)
      {
        v19 = [v11 objectAtIndexedSubscript:1];
        v20 = [v19 value];
        (v6)[2](v6, v20, 0);

LABEL_14:
        goto LABEL_15;
      }
    }

LABEL_13:
    v19 = [LAAuthorizationError genericErrorWithMessage:@"Invalid format"];
    v6[2](v6, 0, v19);
    goto LABEL_14;
  }

  v11 = [LAAuthorizationError genericErrorWithMessage:@"Invalid format"];
  v6[2](v6, 0, v11);
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