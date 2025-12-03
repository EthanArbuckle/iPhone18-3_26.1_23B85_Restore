@interface TKSecElemTokenSession
- (BOOL)isOperationAuthorized:(int64_t)authorized error:(id *)error;
- (BOOL)tokenSession:(id)session deleteObject:(id)object error:(id *)error;
- (BOOL)tokenSession:(id)session supportsOperation:(int64_t)operation usingKey:(id)key algorithm:(id)algorithm;
- (TKSecElemTokenSession)initWithToken:(id)token;
- (id)tokenSession:(id)session attestKey:(id)key usingKey:(id)usingKey nonce:(id)nonce error:(id *)error;
- (id)tokenSession:(id)session attributesOfObject:(id)object error:(id *)error;
- (id)tokenSession:(id)session createObjectWithAttributes:(id)attributes error:(id *)error;
- (id)tokenSession:(id)session decryptData:(id)data usingKey:(id)key algorithm:(id)algorithm parameters:(id)parameters error:(id *)error;
- (id)tokenSession:(id)session performKeyExchangeWithPublicKey:(id)key usingKey:(id)usingKey algorithm:(id)algorithm parameters:(id)parameters error:(id *)error;
- (id)tokenSession:(id)session signData:(id)data usingKey:(id)key algorithm:(id)algorithm error:(id *)error;
- (void)tokenSession:(id)session updateObject:(id)object attributes:(id)attributes reply:(id)reply;
@end

@implementation TKSecElemTokenSession

- (TKSecElemTokenSession)initWithToken:(id)token
{
  v4.receiver = self;
  v4.super_class = TKSecElemTokenSession;
  return [(TKSecElemTokenSession *)&v4 initWithToken:token];
}

- (BOOL)isOperationAuthorized:(int64_t)authorized error:(id *)error
{
  caller = [(TKSecElemTokenSession *)self caller];
  v8 = [caller valueForEntitlement:@"application-identifier"];
  [(TKSecElemTokenSession *)self setApplicationIdentifier:v8];

  applicationIdentifier = [(TKSecElemTokenSession *)self applicationIdentifier];

  if (!applicationIdentifier)
  {
    if (!error)
    {
      return 0;
    }

    v17 = TKErrorDomain;
    v25 = NSLocalizedDescriptionKey;
    v26 = @"Operation not allowed (missing application-identifier entitlement)";
    v18 = &v26;
    v19 = &v25;
LABEL_10:
    v20 = [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:1];
    *error = [NSError errorWithDomain:v17 code:-8 userInfo:v20];

    return 0;
  }

  caller2 = [(TKSecElemTokenSession *)self caller];
  v11 = [caller2 valueForEntitlement:@"com.apple.seserviced.key"];
  bOOLValue = [v11 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if (!error)
    {
      return 0;
    }

    v17 = TKErrorDomain;
    v23 = NSLocalizedDescriptionKey;
    v24 = @"Operation not allowed (missing com.apple.seserviced.key entitlement)";
    v18 = &v24;
    v19 = &v23;
    goto LABEL_10;
  }

  if (authorized != 1)
  {
    return 1;
  }

  caller3 = [(TKSecElemTokenSession *)self caller];
  v14 = [caller3 valueForEntitlement:@"com.apple.security.attestation.access"];
  bOOLValue2 = [v14 BOOLValue];

  if (bOOLValue2)
  {
    return 1;
  }

  if (error)
  {
    v17 = TKErrorDomain;
    v21 = NSLocalizedDescriptionKey;
    v22 = @"Operation not allowed (missing com.apple.security.attestation.access entitlement)";
    v18 = &v22;
    v19 = &v21;
    goto LABEL_10;
  }

  return 0;
}

- (BOOL)tokenSession:(id)session deleteObject:(id)object error:(id *)error
{
  sessionCopy = session;
  objectCopy = object;
  v10 = sub_1000012E0(objectCopy);
  if (error && v10)
  {
    v23 = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithFormat:@"secelemtoken: kSecKeyAttestionKeyTypeSecureElement can not be deleted"];
    v24 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *error = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v12];
  }

  else
  {
    if (![(TKSecElemTokenSession *)self isOperationAuthorized:0 error:error])
    {
      v13 = 0;
      goto LABEL_15;
    }

    v14 = sub_100001338(objectCopy, error);
    v11 = v14;
    if (v14)
    {
      v15 = [v14 objectForKeyedSubscript:@"keyData"];
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v16 = off_10000CB18;
      v22 = off_10000CB18;
      if (!off_10000CB18)
      {
        v17 = sub_100003A48();
        v20[3] = dlsym(v17, "SESKeyDelete");
        off_10000CB18 = v20[3];
        v16 = v20[3];
      }

      _Block_object_dispose(&v19, 8);
      if (!v16)
      {
        sub_100003D94();
      }

      v16(v15, error);

      if (!error || !*error)
      {
        v13 = 1;
        goto LABEL_5;
      }
    }
  }

  v13 = 0;
LABEL_5:

LABEL_15:
  return v13;
}

- (id)tokenSession:(id)session createObjectWithAttributes:(id)attributes error:(id *)error
{
  sessionCopy = session;
  attributesCopy = attributes;
  v9 = 0;
  if (![(TKSecElemTokenSession *)self isOperationAuthorized:0 error:error])
  {
    goto LABEL_43;
  }

  errorCopy = error;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_10000235C;
  v87 = sub_10000236C;
  v88 = +[NSNull null];
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x3032000000;
  v81[3] = sub_10000235C;
  v81[4] = sub_10000236C;
  v82 = +[NSNull null];
  v74 = +[NSMutableDictionary dictionary];
  v119[0] = kSecClass;
  v119[1] = kSecClassKey;
  v71 = [NSArray arrayWithObjects:v119 count:2];
  v120[0] = v71;
  v118[0] = kSecAttrKeyClass;
  v118[1] = kSecAttrKeyClassPrivate;
  v70 = [NSArray arrayWithObjects:v118 count:2];
  v120[1] = v70;
  v117[0] = kSecAttrKeyType;
  v69 = +[NSNull null];
  v117[1] = v69;
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_100002374;
  v80[3] = &unk_100008320;
  v80[4] = v81;
  v68 = objc_retainBlock(v80);
  v117[2] = v68;
  v67 = [NSArray arrayWithObjects:v117 count:3];
  v120[2] = v67;
  v116[0] = kSecAttrKeySizeInBits;
  v116[1] = &off_1000087D8;
  v116[2] = &stru_100008360;
  v66 = [NSArray arrayWithObjects:v116 count:3];
  v120[3] = v66;
  v115[0] = kSecAttrEffectiveKeySize;
  v115[1] = &off_1000087D8;
  v115[2] = &stru_100008380;
  v65 = [NSArray arrayWithObjects:v115 count:3];
  v120[4] = v65;
  v114 = kSecValueData;
  v64 = [NSArray arrayWithObjects:&v114 count:1];
  v120[5] = v64;
  v10 = v84[5];
  v113[0] = kSecAttrAccessControl;
  v113[1] = v10;
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_100002424;
  v79[3] = &unk_100008320;
  v79[4] = &v83;
  v59 = objc_retainBlock(v79);
  v113[2] = v59;
  v63 = [NSArray arrayWithObjects:v113 count:3];
  v120[6] = v63;
  v112[0] = kSecAttrIsPrivate;
  v112[1] = &__kCFBooleanTrue;
  v62 = [NSArray arrayWithObjects:v112 count:2];
  v120[7] = v62;
  v111[0] = kSecAttrIsModifiable;
  v111[1] = &__kCFBooleanFalse;
  v61 = [NSArray arrayWithObjects:v111 count:2];
  v120[8] = v61;
  v110[0] = kSecAttrIsExtractable;
  v110[1] = &__kCFBooleanFalse;
  v60 = [NSArray arrayWithObjects:v110 count:2];
  v120[9] = v60;
  v109[0] = kSecAttrWasNeverExtractable;
  v109[1] = &__kCFBooleanTrue;
  v11 = [NSArray arrayWithObjects:v109 count:2];
  v120[10] = v11;
  v108[0] = kSecAttrCanEncrypt;
  v108[1] = &__kCFBooleanTrue;
  v12 = [NSArray arrayWithObjects:v108 count:2];
  v120[11] = v12;
  v107[0] = kSecAttrCanDecrypt;
  v107[1] = &__kCFBooleanTrue;
  v13 = [NSArray arrayWithObjects:v107 count:2];
  v120[12] = v13;
  v106[0] = kSecAttrCanDerive;
  v106[1] = &__kCFBooleanTrue;
  v14 = [NSArray arrayWithObjects:v106 count:2];
  v120[13] = v14;
  v105[0] = kSecAttrCanSign;
  v105[1] = &__kCFBooleanTrue;
  v15 = [NSArray arrayWithObjects:v105 count:2];
  v120[14] = v15;
  v104[0] = kSecAttrCanVerify;
  v104[1] = &__kCFBooleanFalse;
  v16 = [NSArray arrayWithObjects:v104 count:2];
  v120[15] = v16;
  v103[0] = kSecAttrCanWrap;
  v103[1] = &__kCFBooleanFalse;
  v17 = [NSArray arrayWithObjects:v103 count:2];
  v120[16] = v17;
  v18 = [NSArray arrayWithObjects:v120 count:17];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v75 objects:v102 count:16];
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = *v76;
  do
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v76 != v21)
      {
        objc_enumerationMutation(v19);
      }

      v23 = *(*(&v75 + 1) + 8 * i);
      v24 = [v23 objectAtIndexedSubscript:0];
      if ([v23 count] < 2)
      {
        v25 = 0;
      }

      else
      {
        v25 = [v23 objectAtIndexedSubscript:1];
      }

      v26 = [attributesCopy objectForKeyedSubscript:v24];
      if (!v26)
      {
        if (v25)
        {
          v30 = +[NSNull null];
          v31 = [v25 isEqual:v30];

          if ((v31 & 1) == 0)
          {
            [v74 setObject:v25 forKeyedSubscript:v24];
          }
        }

        goto LABEL_21;
      }

      if ([v23 count] < 3)
      {
        v28 = 0;
LABEL_18:
        v29 = [v25 isEqual:v26];
        goto LABEL_19;
      }

      v27 = [v23 objectAtIndex:2];
      v28 = objc_retainBlock(v27);

      if (!v28)
      {
        goto LABEL_18;
      }

      v29 = v28[2](v28, v26);
LABEL_19:
      if ((v29 & 1) == 0)
      {
        if (errorCopy)
        {
          v100 = NSLocalizedDescriptionKey;
          v37 = [NSString stringWithFormat:@"secelemtoken: %@ requires '%@' value when present", v24, v25];
          v101 = v37;
          v38 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
          *errorCopy = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v38];
        }

        v9 = 0;
        v39 = v19;
        goto LABEL_42;
      }

      [v74 setObject:v26 forKeyedSubscript:v24];

LABEL_21:
    }

    v20 = [v19 countByEnumeratingWithState:&v75 objects:v102 count:16];
  }

  while (v20);
LABEL_23:

  v32 = v84[5];
  v33 = +[NSNull null];
  LODWORD(v32) = [v32 isEqual:v33];

  if (v32)
  {
    v34 = kSecAttrAccessibleWhenUnlocked;
    v35 = SecAccessControlCreateWithFlags(0, v34, 0, 0);
    v36 = SecAccessControlCopyData();
    [v74 setObject:v36 forKeyedSubscript:kSecAttrAccessControl];
  }

  else
  {
    v40 = v84[5];
    v35 = SecAccessControlCreateFromData();
  }

  [v74 setObject:v84[5] forKeyedSubscript:kSecAttrAccessControl];
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v41 = off_10000CB28;
  v97 = off_10000CB28;
  if (!off_10000CB28)
  {
    v89 = _NSConcreteStackBlock;
    v90 = 3221225472;
    v91 = sub_100003BB4;
    v92 = &unk_1000083E8;
    v93 = &v94;
    v42 = sub_100003A48();
    v43 = dlsym(v42, "SESKeyCreate");
    *(v93[1] + 24) = v43;
    off_10000CB28 = *(v93[1] + 24);
    v41 = v95[3];
  }

  _Block_object_dispose(&v94, 8);
  if (!v41)
  {
    v55 = +[NSAssertionHandler currentHandler];
    v56 = [NSString stringWithUTF8String:"NSData * _Nullable soft_SESKeyCreate(SecAccessControlRef _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)"];
    [v55 handleFailureInFunction:v56 file:@"TKSecElemTokenSoftLinking.h" lineNumber:25 description:{@"%s", dlerror()}];

    goto LABEL_48;
  }

  v39 = v41(v35, errorCopy);
  CFRelease(v35);
  if (errorCopy && *errorCopy)
  {
    goto LABEL_41;
  }

  v39 = v39;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v44 = off_10000CB30;
  v97 = off_10000CB30;
  if (!off_10000CB30)
  {
    v89 = _NSConcreteStackBlock;
    v90 = 3221225472;
    v91 = sub_100003C04;
    v92 = &unk_1000083E8;
    v93 = &v94;
    v45 = sub_100003A48();
    v46 = dlsym(v45, "SESKeyPublicKey");
    *(v93[1] + 24) = v46;
    off_10000CB30 = *(v93[1] + 24);
    v44 = v95[3];
  }

  _Block_object_dispose(&v94, 8);
  if (!v44)
  {
    v57 = +[NSAssertionHandler currentHandler];
    v58 = [NSString stringWithUTF8String:"NSData * _Nullable soft_SESKeyPublicKey(NSData * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)"];
    [v57 handleFailureInFunction:v58 file:@"TKSecElemTokenSoftLinking.h" lineNumber:43 description:{@"%s", dlerror()}];

LABEL_48:
    __break(1u);
  }

  v47 = v44(v39, 0);

  [v74 setObject:v47 forKeyedSubscript:@"pubk"];
  v98[0] = @"keyData";
  v98[1] = @"keyAttributes";
  v99[0] = v39;
  v48 = [v74 copy];
  v99[1] = v48;
  v49 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:2];
  v50 = [NSKeyedArchiver archivedDataWithRootObject:v49 requiringSecureCoding:0 error:errorCopy];
  v51 = kSecAttrTokenOID;
  [v74 setObject:v50 forKeyedSubscript:kSecAttrTokenOID];

  if (!errorCopy || !*errorCopy)
  {
    v52 = [v74 objectForKeyedSubscript:v51];
    v53 = v52 == 0;

    if (!v53)
    {
      v9 = v74;
      goto LABEL_42;
    }
  }

LABEL_41:
  v9 = 0;
LABEL_42:

  _Block_object_dispose(v81, 8);
  _Block_object_dispose(&v83, 8);

LABEL_43:

  return v9;
}

- (id)tokenSession:(id)session attributesOfObject:(id)object error:(id *)error
{
  objectCopy = object;
  v8 = [(TKSecElemTokenSession *)self isOperationAuthorized:0 error:error];
  v9 = 0;
  if (v8)
  {
    if (sub_1000012E0(objectCopy))
    {
      v9 = &__NSDictionary0__struct;
    }

    else
    {
      v10 = sub_100001338(objectCopy, error);
      v9 = [v10 objectForKeyedSubscript:@"keyAttributes"];
    }
  }

  return v9;
}

- (void)tokenSession:(id)session updateObject:(id)object attributes:(id)attributes reply:(id)reply
{
  objectCopy = object;
  attributesCopy = attributes;
  replyCopy = reply;
  v20 = 0;
  LOBYTE(self) = [(TKSecElemTokenSession *)self isOperationAuthorized:0 error:&v20];
  v12 = v20;
  v13 = v12;
  if (self)
  {
    v19 = v12;
    v14 = sub_100001338(objectCopy, &v19);
    v15 = v19;

    if (v14)
    {
      v16 = objectCopy;
      v17 = attributesCopy;
      v18 = 0;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = v15;
    }

    replyCopy[2](replyCopy, v16, v17, v18);
  }

  else
  {
    replyCopy[2](replyCopy, 0, 0, v12);
    v15 = v13;
  }
}

- (BOOL)tokenSession:(id)session supportsOperation:(int64_t)operation usingKey:(id)key algorithm:(id)algorithm
{
  keyCopy = key;
  algorithmCopy = algorithm;
  if (!sub_1000012E0(keyCopy))
  {
    v11 = sub_100001338(keyCopy, 0);
    if (v11)
    {
      switch(operation)
      {
        case 4:
          if (([algorithmCopy isAlgorithm:kSecKeyAlgorithmECDHKeyExchangeStandard] & 1) == 0)
          {
            v12 = &kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA256;
            goto LABEL_14;
          }

          break;
        case 3:
          if (([algorithmCopy isAlgorithm:kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM] & 1) == 0)
          {
            v13 = @"kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESCBC";
LABEL_15:
            v10 = [algorithmCopy isAlgorithm:v13];
            goto LABEL_16;
          }

          break;
        case 2:
          v12 = &kSecKeyAlgorithmECDSASignatureMessageX962SHA256;
LABEL_14:
          v13 = *v12;
          goto LABEL_15;
        default:
          goto LABEL_8;
      }

      v10 = 1;
      goto LABEL_16;
    }

LABEL_8:
    v10 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v10 = operation == 1000;
LABEL_17:

  return v10;
}

- (id)tokenSession:(id)session signData:(id)data usingKey:(id)key algorithm:(id)algorithm error:(id *)error
{
  sessionCopy = session;
  dataCopy = data;
  keyCopy = key;
  algorithmCopy = algorithm;
  if (![(TKSecElemTokenSession *)self isOperationAuthorized:0 error:error])
  {
    goto LABEL_5;
  }

  if (!sub_1000012E0(keyCopy))
  {
    v16 = sub_100001338(keyCopy, error);
    if (v16)
    {
      if ([algorithmCopy isAlgorithm:kSecKeyAlgorithmECDSASignatureMessageX962SHA256])
      {
        v19 = [v16 objectForKeyedSubscript:@"keyData"];
        lAContext = [(TKSecElemTokenSession *)self LAContext];
        externalizedContext = [lAContext externalizedContext];
        v17 = v19;
        v26 = dataCopy;
        v21 = kSecKeyAlgorithmECDSASignatureMessageX962SHA256;
        v22 = externalizedContext;
        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v23 = off_10000CB38;
        v31 = off_10000CB38;
        if (!off_10000CB38)
        {
          v24 = sub_100003A48();
          v29[3] = dlsym(v24, "SESKeySignData");
          off_10000CB38 = v29[3];
          v23 = v29[3];
        }

        _Block_object_dispose(&v28, 8);
        if (!v23)
        {
          sub_100003E20();
        }

        v18 = v23(v17, v26, v21, v22, error);

        goto LABEL_14;
      }

      if (error)
      {
        v32 = NSLocalizedDescriptionKey;
        v17 = [NSString stringWithFormat:@"secelemtoken: key does not support algorithm for signature"];
        v33 = v17;
        lAContext = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:lAContext];
        *error = v18 = 0;
LABEL_14:

        goto LABEL_15;
      }
    }

    v18 = 0;
    goto LABEL_17;
  }

  if (!error)
  {
LABEL_5:
    v18 = 0;
    goto LABEL_18;
  }

  v34 = NSLocalizedDescriptionKey;
  v16 = [NSString stringWithFormat:@"secelemtoken: kSecKeyAttestionKeyTypeSecureElement does not support signing"];
  v35 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v17];
  *error = v18 = 0;
LABEL_15:

LABEL_17:
LABEL_18:

  return v18;
}

- (id)tokenSession:(id)session performKeyExchangeWithPublicKey:(id)key usingKey:(id)usingKey algorithm:(id)algorithm parameters:(id)parameters error:(id *)error
{
  keyCopy = key;
  usingKeyCopy = usingKey;
  algorithmCopy = algorithm;
  if (sub_1000012E0(usingKeyCopy))
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v25 = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithFormat:@"secelemtoken: kSecKeyAttestionKeyTypeSecureElement does not support keyExchange"];
    v26 = v15;
    nSLocalizedDescriptionKey = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *error = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:nSLocalizedDescriptionKey];
LABEL_4:

LABEL_10:
    error = 0;
    goto LABEL_11;
  }

  v15 = sub_100001338(usingKeyCopy, error);
  if (!v15 || ![(TKSecElemTokenSession *)self isOperationAuthorized:0 error:error])
  {
    goto LABEL_10;
  }

  v17 = kSecKeyAlgorithmECDHKeyExchangeStandard;
  if (![algorithmCopy isAlgorithm:kSecKeyAlgorithmECDHKeyExchangeStandard])
  {
    v17 = kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA256;
    if (![algorithmCopy isAlgorithm:kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA256])
    {
      if (!error)
      {
        goto LABEL_11;
      }

      nSLocalizedDescriptionKey = [NSString stringWithFormat:@"secelemtoken: %@ algorithm not supported by the key", algorithmCopy, NSLocalizedDescriptionKey];
      v24 = nSLocalizedDescriptionKey;
      v22 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      *error = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v22];

      goto LABEL_4;
    }
  }

  v18 = [v15 objectForKeyedSubscript:@"keyData"];
  lAContext = [(TKSecElemTokenSession *)self LAContext];
  externalizedContext = [lAContext externalizedContext];
  error = sub_100002D7C(v18, keyCopy, v17, externalizedContext, error);

LABEL_11:
LABEL_12:

  return error;
}

- (id)tokenSession:(id)session decryptData:(id)data usingKey:(id)key algorithm:(id)algorithm parameters:(id)parameters error:(id *)error
{
  sessionCopy = session;
  dataCopy = data;
  keyCopy = key;
  algorithmCopy = algorithm;
  parametersCopy = parameters;
  if (sub_1000012E0(keyCopy))
  {
    if (!error)
    {
      v21 = 0;
      goto LABEL_18;
    }

    v45 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithFormat:@"secelemtoken: kSecKeyAttestionKeyTypeSecureElement does not support decryption"];
    v46 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v20];
    *error = v21 = 0;
    goto LABEL_15;
  }

  v19 = sub_100001338(keyCopy, error);
  if (!v19 || ![(TKSecElemTokenSession *)self isOperationAuthorized:0 error:error])
  {
    goto LABEL_16;
  }

  if ([algorithmCopy isAlgorithm:kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM])
  {
    v37 = [v19 objectForKeyedSubscript:@"keyData"];
    v35 = [parametersCopy objectForKeyedSubscript:@"kSecKeyKeyExchangeParameterPublicKey"];
    lAContext = [(TKSecElemTokenSession *)self LAContext];
    externalizedContext = [lAContext externalizedContext];
    v29 = [parametersCopy objectForKeyedSubscript:kSecKeyKeyExchangeParameterSharedInfo];
    v28 = [parametersCopy objectForKeyedSubscript:kSecKeyEncryptionParameterSymmetricAAD];
    v22 = [parametersCopy objectForKeyedSubscript:@"kSecKeyKeyExchangeParameterAuthenticationTag"];
    v20 = v37;
    v30 = dataCopy;
    v38 = v35;
    v31 = kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM;
    v27 = externalizedContext;
    v34 = v29;
    v36 = v28;
    v23 = v22;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v24 = off_10000CB48;
    v42 = off_10000CB48;
    if (!off_10000CB48)
    {
      v25 = sub_100003A48();
      v40[3] = dlsym(v25, "SESKeyDecryptData");
      off_10000CB48 = v40[3];
      v24 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v24)
    {
      sub_100003F10();
    }

    v21 = v24(v20, v30, v38, v31, v27, v34, v36, v23, error);

    goto LABEL_14;
  }

  if (!error)
  {
LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v43 = NSLocalizedDescriptionKey;
  v20 = [NSString stringWithFormat:@"secelemtoken: key does not support algorithm for decryption"];
  v44 = v20;
  v38 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v38];
  *error = v21 = 0;
LABEL_14:

LABEL_15:
LABEL_17:

LABEL_18:

  return v21;
}

- (id)tokenSession:(id)session attestKey:(id)key usingKey:(id)usingKey nonce:(id)nonce error:(id *)error
{
  sessionCopy = session;
  keyCopy = key;
  usingKeyCopy = usingKey;
  nonceCopy = nonce;
  if (!sub_1000012E0(keyCopy))
  {
    v36 = sub_100001338(keyCopy, error);
    if (!v36)
    {
      v14 = 0;
LABEL_34:

      goto LABEL_35;
    }

    parameters = [(TKSecElemTokenSession *)self parameters];
    v35 = [parameters objectForKeyedSubscript:@"kSecKeyParameterSecElemTokenAttestationOIDs"];

    if (v35)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v33 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:0];
LABEL_28:
          v14 = 0;
          *error = v33;
LABEL_33:

          goto LABEL_34;
        }

LABEL_32:
        v14 = 0;
        goto LABEL_33;
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v16 = v35;
      v17 = [v16 countByEnumeratingWithState:&v39 objects:v52 count:16];
      if (v17)
      {
        v18 = *v40;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v40 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v39 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
              {
                *error = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:0];
              }

              goto LABEL_32;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v39 objects:v52 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }
    }

    if (sub_1000012E0(usingKeyCopy))
    {
      if ([(TKSecElemTokenSession *)self isOperationAuthorized:1 error:error])
      {
        v21 = [v36 objectForKeyedSubscript:@"keyData"];
        applicationIdentifier = [(TKSecElemTokenSession *)self applicationIdentifier];
        parameters2 = [(TKSecElemTokenSession *)self parameters];
        v24 = [parameters2 objectForKeyedSubscript:@"kSecKeyParameterSecElemTokenAttestationNonce"];
        v25 = v21;
        v26 = applicationIdentifier;
        v27 = v24;
        v28 = v35;
        v48 = 0;
        v49 = &v48;
        v50 = 0x2020000000;
        v29 = off_10000CB50;
        v51 = off_10000CB50;
        if (!off_10000CB50)
        {
          v43 = _NSConcreteStackBlock;
          v44 = 3221225472;
          v45 = sub_100003D44;
          v46 = &unk_1000083E8;
          v47 = &v48;
          v30 = sub_100003A48();
          v31 = dlsym(v30, "SESKeyCreateSEBAASCertificate");
          *(v47[1] + 24) = v31;
          off_10000CB50 = *(v47[1] + 24);
          v29 = v49[3];
        }

        _Block_object_dispose(&v48, 8);
        if (!v29)
        {
          sub_100003F88();
        }

        v32 = v26;
        v14 = v29(v25, v26, v27, v28, error);

        goto LABEL_33;
      }

      goto LABEL_32;
    }

    if (error)
    {
      v33 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:0];
      goto LABEL_28;
    }

    goto LABEL_32;
  }

  if (error)
  {
    [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:0];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_35:

  return v14;
}

@end