@interface CoreMLModelSecurity
+ (id)codeSigningIdentifierFor:(id *)for processIdentifier:(int)identifier;
+ (id)codeSigningIdentifierFromXPCConnection;
+ (id)teamIdentifierFor:(id *)for processIdentifier:(int)identifier;
+ (id)teamIdentifierFromXPCConnection;
- (CoreMLModelSecurity)init;
- (void)createPersistentKeyBlobForKeyID:(id)d usesCodeSigningIdentityForEncryption:(BOOL)encryption completionBlock:(id)block;
- (void)dealloc;
- (void)extractTeamIdentifierWithReply:(id)reply;
- (void)secureModelMLDictionaryFeatureProvider:(id)provider withReply:(id)reply;
- (void)secureModelMLFeatureValue:(id)value withReply:(id)reply;
- (void)secureModelWithContentsOfURL:(id)l sandboxExtensionToken:(id)token configuration:(id)configuration decryptCredential:(id)credential withReply:(id)reply;
- (void)secureParameterValueForKey:(id)key withReply:(id)reply;
- (void)securePredictionFromLazyBatch:(id)batch options:(id)options withReply:(id)reply;
- (void)securePredictionFromLazyFeatures:(id)features options:(id)options withReply:(id)reply;
- (void)startDecryptionOfModelAtPath:(id)path usingKeyBlob:(id)blob usesCodeSigningIdentityForEncryption:(BOOL)encryption completionBlock:(id)block;
- (void)stopDecryptionOfModelAtPath:(id)path completionBlock:(id)block;
@end

@implementation CoreMLModelSecurity

- (void)secureModelWithContentsOfURL:(id)l sandboxExtensionToken:(id)token configuration:(id)configuration decryptCredential:(id)credential withReply:(id)reply
{
  lCopy = l;
  tokenCopy = token;
  configurationCopy = configuration;
  replyCopy = reply;
  context = objc_autoreleasePoolPush();
  [tokenCopy UTF8String];
  v15 = sandbox_extension_consume();
  if (v15 < 0)
  {
    v16 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *__error();
      *buf = 138412546;
      v31 = tokenCopy;
      v32 = 1024;
      LODWORD(v33) = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Sandbox extension(%@) consume failed (%d)", buf, 0x12u);
    }
  }

  else
  {
    v16 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1000077B0(tokenCopy, v16);
    }
  }

  v29 = 0;
  v18 = [MLModel modelWithContentsOfURL:lCopy configuration:configurationCopy error:&v29];
  v19 = v29;
  [(CoreMLModelSecurity *)self setDecryptedModel:v18];
  if (!v18 || v19)
  {
    v24 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v31 = lCopy;
      v32 = 2112;
      v33 = configurationCopy;
      v34 = 2112;
      v35 = v19;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error loading model from %@ (%@): %@", buf, 0x20u);
    }

    replyCopy[2](replyCopy, 0, v19);
  }

  else
  {
    v20 = [MLSecureModel alloc];
    modelDescription = [v18 modelDescription];
    configuration = [v18 configuration];
    v23 = [v20 initWithDescription:modelDescription configuration:configuration];

    (replyCopy)[2](replyCopy, v23, 0);
  }

  if ((v15 & 0x8000000000000000) == 0 && sandbox_extension_release() == -1)
  {
    v25 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = __error();
      sub_100007828(tokenCopy, v26, buf, v25);
    }
  }

  objc_autoreleasePoolPop(contexta);
}

- (void)securePredictionFromLazyFeatures:(id)features options:(id)options withReply:(id)reply
{
  featuresCopy = features;
  optionsCopy = options;
  replyCopy = reply;
  v11 = objc_autoreleasePoolPush();
  v12 = [CoreMLModelSecurityXPCFeatureProvider alloc];
  clientProxy = [(CoreMLModelSecurity *)self clientProxy];
  v14 = [(CoreMLModelSecurityXPCFeatureProvider *)v12 initWithRemoteProvider:featuresCopy clientProxy:clientProxy];

  decryptedModel = [(CoreMLModelSecurity *)self decryptedModel];
  v19 = 0;
  v16 = [decryptedModel predictionFromFeatures:v14 options:optionsCopy error:&v19];
  v17 = v19;

  if (v16)
  {
    v18 = [[MLDictionaryFeatureProvider alloc] initWithFeatureProvider:v16];
    replyCopy[2](replyCopy, v18, v17);
  }

  else
  {
    replyCopy[2](replyCopy, 0, v17);
    v18 = 0;
  }

  objc_autoreleasePoolPop(v11);
}

- (void)securePredictionFromLazyBatch:(id)batch options:(id)options withReply:(id)reply
{
  batchCopy = batch;
  optionsCopy = options;
  replyCopy = reply;
  context = objc_autoreleasePoolPush();
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [batchCopy count]);
  for (i = 0; i < [batchCopy count]; ++i)
  {
    v11 = [CoreMLModelSecurityXPCFeatureProvider alloc];
    v12 = [batchCopy objectAtIndexedSubscript:i];
    clientProxy = [(CoreMLModelSecurity *)self clientProxy];
    v14 = [(CoreMLModelSecurityXPCFeatureProvider *)v11 initWithRemoteProvider:v12 clientProxy:clientProxy];
    [v9 setObject:v14 atIndexedSubscript:i];
  }

  v28 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v9];
  decryptedModel = [(CoreMLModelSecurity *)self decryptedModel];
  v31 = 0;
  v16 = [decryptedModel predictionsFromBatch:v28 options:optionsCopy error:&v31];
  v17 = v31;

  if (v16)
  {
    v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v16 count]);
    v19 = 0;
    *&v20 = 134217984;
    v26 = v20;
    while (v19 < [v16 count])
    {
      v21 = [v16 featuresAtIndex:v19];
      featureNames = [v21 featureNames];
      v23 = featureNames == 0;

      if (v23)
      {
        v24 = +[MLLogging coreChannel];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = v26;
          v33 = v19;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "NULL outputBatchProvider at index %lu.", buf, 0xCu);
        }
      }

      else
      {
        v24 = [[MLDictionaryFeatureProvider alloc] initWithFeatureProvider:v21];
        [v18 setObject:v24 atIndexedSubscript:v19];
      }

      ++v19;
    }

    v25 = [[MLArrayDictionaryFeatureProvider alloc] initWithDictionaryFeatureProviderArray:v18];
    replyCopy[2](replyCopy, v25, v17);
  }

  else
  {
    replyCopy[2](replyCopy, 0, v17);
  }

  objc_autoreleasePoolPop(context);
}

- (void)secureParameterValueForKey:(id)key withReply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
  v8 = objc_autoreleasePoolPush();
  v9 = keyCopy;
  decryptedModel = [(CoreMLModelSecurity *)self decryptedModel];
  v13 = 0;
  v11 = [decryptedModel parameterValueForKey:v9 error:&v13];
  v12 = v13;

  replyCopy[2](replyCopy, v11, v12);
  objc_autoreleasePoolPop(v8);
}

- (CoreMLModelSecurity)init
{
  v6.receiver = self;
  v6.super_class = CoreMLModelSecurity;
  v2 = [(CoreMLModelSecurity *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MLFairPlayDecryptSessionManager);
    decryptSessionManager = v2->_decryptSessionManager;
    v2->_decryptSessionManager = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(CoreMLModelSecurity *)self setTxn:0];
  v3.receiver = self;
  v3.super_class = CoreMLModelSecurity;
  [(CoreMLModelSecurity *)&v3 dealloc];
}

- (void)secureModelMLFeatureValue:(id)value withReply:(id)reply
{
  valueCopy = value;
  replyCopy = reply;
  v6 = [valueCopy description];
  replyCopy[2](replyCopy, valueCopy, v6);
}

- (void)secureModelMLDictionaryFeatureProvider:(id)provider withReply:(id)reply
{
  providerCopy = provider;
  replyCopy = reply;
  v6 = [providerCopy description];
  replyCopy[2](replyCopy, providerCopy, v6);
}

- (void)createPersistentKeyBlobForKeyID:(id)d usesCodeSigningIdentityForEncryption:(BOOL)encryption completionBlock:(id)block
{
  encryptionCopy = encryption;
  dCopy = d;
  blockCopy = block;
  v9 = objc_alloc_init(MLFairPlayKeyLoadingSession);
  v25 = 0;
  v10 = sub_100006868(encryptionCopy, &v25);
  v11 = v25;
  v12 = v11;
  if (v10)
  {
    v24 = v11;
    v13 = [v9 generateKeyRequestForKeyIdentifier:dCopy teamIdentifier:v10 error:&v24];
    v14 = v24;

    if (v13)
    {
      v15 = [[MLCloudSession alloc] initWithTeamIdentifier:v10];
      v23 = v14;
      v16 = [(MLCloudSession *)v15 fetchKeyResponseFromServerForKeyID:dCopy signedKeyRequest:v13 error:&v23];
      v17 = v23;

      if (v16)
      {
        v22 = v17;
        v18 = [v9 generatePersistentKeyBlobFromKeyResponse:v16 error:&v22];
        v14 = v22;

        if (v18)
        {
          blockCopy[2](blockCopy, v18, 0);
        }

        else
        {
          v21 = +[MLLogging coreChannel];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_100007878();
          }

          (blockCopy)[2](blockCopy, 0, v14);
        }
      }

      else
      {
        v20 = +[MLLogging coreChannel];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000078E0();
        }

        (blockCopy)[2](blockCopy, 0, v17);
        v14 = v17;
      }
    }

    else
    {
      v19 = +[MLLogging coreChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100007948();
      }

      (blockCopy)[2](blockCopy, 0, v14);
    }

    v12 = v14;
  }

  else
  {
    (blockCopy)[2](blockCopy, 0, v11);
  }
}

- (void)startDecryptionOfModelAtPath:(id)path usingKeyBlob:(id)blob usesCodeSigningIdentityForEncryption:(BOOL)encryption completionBlock:(id)block
{
  encryptionCopy = encryption;
  pathCopy = path;
  blobCopy = blob;
  blockCopy = block;
  v20 = 0;
  v13 = sub_100006868(encryptionCopy, &v20);
  v14 = v20;
  v15 = v14;
  if (v13)
  {
    decryptSessionManager = [(CoreMLModelSecurity *)self decryptSessionManager];
    v19 = v15;
    v17 = [decryptSessionManager startDecryptionOfModelAtPath:pathCopy usingKeyBlob:blobCopy teamIdentifier:v13 error:&v19];
    v18 = v19;

    if ((v17 & 1) == 0)
    {
      blockCopy[2](blockCopy, v18);
    }

    blockCopy[2](blockCopy, 0);
  }

  else
  {
    v18 = v14;
    blockCopy[2](blockCopy, v14);
  }
}

- (void)stopDecryptionOfModelAtPath:(id)path completionBlock:(id)block
{
  pathCopy = path;
  blockCopy = block;
  decryptSessionManager = [(CoreMLModelSecurity *)self decryptSessionManager];
  v11 = 0;
  v9 = [decryptSessionManager stopDecryptionOfModelAtPath:pathCopy error:&v11];
  v10 = v11;

  if ((v9 & 1) == 0)
  {
    blockCopy[2](blockCopy, v10);
  }

  blockCopy[2](blockCopy, 0);
}

- (void)extractTeamIdentifierWithReply:(id)reply
{
  replyCopy = reply;
  v3 = +[CoreMLModelSecurity teamIdentifierFromXPCConnection];
  replyCopy[2](replyCopy, v3, 0);
}

+ (id)teamIdentifierFor:(id *)for processIdentifier:(int)identifier
{
  v5 = *&for->var0[4];
  *token.val = *for->var0;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (v6)
  {
    v7 = SecTaskCopyTeamIdentifier();
    CFRelease(v6);
    v9 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      token.val[0] = 138412546;
      *&token.val[1] = v10;
      LOWORD(token.val[3]) = 2112;
      *(&token.val[3] + 2) = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: SecTaskCopyTeamIdentifier() returned teamIdentity=%@", &token, 0x16u);
    }
  }

  else
  {
    v8 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100007A7C();
    }

    v7 = 0;
  }

  return v7;
}

+ (id)codeSigningIdentifierFor:(id *)for processIdentifier:(int)identifier
{
  v5 = *&for->var0[4];
  *token.val = *for->var0;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  v7 = v6;
  if (v6)
  {
    error = 0;
    v8 = SecTaskCopySigningIdentifier(v6, &error);
    if (v8)
    {
      v9 = +[MLLogging coreChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(a2);
        token.val[0] = 138412546;
        *&token.val[1] = v10;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: SecTaskCopySigningIdentifier() returned signingIdentifier=%@", &token, 0x16u);
      }
    }

    else
    {
      v12 = +[MLLogging coreChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_100007AC0();
      }

      CFRelease(error);
    }

    CFRelease(v7);
  }

  else
  {
    v11 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100007A7C();
    }

    v8 = 0;
  }

  return v8;
}

+ (id)teamIdentifierFromXPCConnection
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[NSXPCConnection currentConnection];
  v5 = v4;
  if (v4)
  {
    processIdentifier = [v4 processIdentifier];
    *buf = 0u;
    v16 = 0u;
    [v5 auditToken];
    v7 = objc_opt_class();
    *v14 = *buf;
    *&v14[16] = v16;
    v8 = [v7 teamIdentifierFor:v14 processIdentifier:processIdentifier];
    if (!v8)
    {
      v9 = +[MLLogging coreChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(a2);
        *v14 = 138412546;
        *&v14[4] = v10;
        *&v14[12] = 1024;
        *&v14[14] = processIdentifier;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: client(%d) : missing teamIdentifier", v14, 0x12u);
      }
    }
  }

  else
  {
    v11 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      sub_100007B04(v12, buf, v11);
    }

    v8 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v8;
}

+ (id)codeSigningIdentifierFromXPCConnection
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[NSXPCConnection currentConnection];
  v5 = v4;
  if (v4)
  {
    processIdentifier = [v4 processIdentifier];
    *buf = 0u;
    v16 = 0u;
    [v5 auditToken];
    v7 = objc_opt_class();
    *v14 = *buf;
    *&v14[16] = v16;
    v8 = [v7 codeSigningIdentifierFor:v14 processIdentifier:processIdentifier];
    if (!v8)
    {
      v9 = +[MLLogging coreChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(a2);
        *v14 = 138412546;
        *&v14[4] = v10;
        *&v14[12] = 1024;
        *&v14[14] = processIdentifier;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: client(%d) : missing signingIdentifier", v14, 0x12u);
      }
    }
  }

  else
  {
    v11 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      sub_100007B04(v12, buf, v11);
    }

    v8 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v8;
}

@end