@interface TKSecElemTokenSession
- (BOOL)isOperationAuthorized:(int64_t)a3 error:(id *)a4;
- (BOOL)tokenSession:(id)a3 deleteObject:(id)a4 error:(id *)a5;
- (BOOL)tokenSession:(id)a3 supportsOperation:(int64_t)a4 usingKey:(id)a5 algorithm:(id)a6;
- (TKSecElemTokenSession)initWithToken:(id)a3;
- (id)tokenSession:(id)a3 attestKey:(id)a4 usingKey:(id)a5 nonce:(id)a6 error:(id *)a7;
- (id)tokenSession:(id)a3 attributesOfObject:(id)a4 error:(id *)a5;
- (id)tokenSession:(id)a3 createObjectWithAttributes:(id)a4 error:(id *)a5;
- (id)tokenSession:(id)a3 decryptData:(id)a4 usingKey:(id)a5 algorithm:(id)a6 parameters:(id)a7 error:(id *)a8;
- (id)tokenSession:(id)a3 performKeyExchangeWithPublicKey:(id)a4 usingKey:(id)a5 algorithm:(id)a6 parameters:(id)a7 error:(id *)a8;
- (id)tokenSession:(id)a3 signData:(id)a4 usingKey:(id)a5 algorithm:(id)a6 error:(id *)a7;
- (void)tokenSession:(id)a3 updateObject:(id)a4 attributes:(id)a5 reply:(id)a6;
@end

@implementation TKSecElemTokenSession

- (TKSecElemTokenSession)initWithToken:(id)a3
{
  v4.receiver = self;
  v4.super_class = TKSecElemTokenSession;
  return [(TKSecElemTokenSession *)&v4 initWithToken:a3];
}

- (BOOL)isOperationAuthorized:(int64_t)a3 error:(id *)a4
{
  v7 = [(TKSecElemTokenSession *)self caller];
  v8 = [v7 valueForEntitlement:@"application-identifier"];
  [(TKSecElemTokenSession *)self setApplicationIdentifier:v8];

  v9 = [(TKSecElemTokenSession *)self applicationIdentifier];

  if (!v9)
  {
    if (!a4)
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
    *a4 = [NSError errorWithDomain:v17 code:-8 userInfo:v20];

    return 0;
  }

  v10 = [(TKSecElemTokenSession *)self caller];
  v11 = [v10 valueForEntitlement:@"com.apple.seserviced.key"];
  v12 = [v11 BOOLValue];

  if ((v12 & 1) == 0)
  {
    if (!a4)
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

  if (a3 != 1)
  {
    return 1;
  }

  v13 = [(TKSecElemTokenSession *)self caller];
  v14 = [v13 valueForEntitlement:@"com.apple.security.attestation.access"];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    return 1;
  }

  if (a4)
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

- (BOOL)tokenSession:(id)a3 deleteObject:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_1000012E0(v9);
  if (a5 && v10)
  {
    v23 = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithFormat:@"secelemtoken: kSecKeyAttestionKeyTypeSecureElement can not be deleted"];
    v24 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *a5 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v12];
  }

  else
  {
    if (![(TKSecElemTokenSession *)self isOperationAuthorized:0 error:a5])
    {
      v13 = 0;
      goto LABEL_15;
    }

    v14 = sub_100001338(v9, a5);
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

      v16(v15, a5);

      if (!a5 || !*a5)
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

- (id)tokenSession:(id)a3 createObjectWithAttributes:(id)a4 error:(id *)a5
{
  v73 = a3;
  v8 = a4;
  v9 = 0;
  if (![(TKSecElemTokenSession *)self isOperationAuthorized:0 error:a5])
  {
    goto LABEL_43;
  }

  v72 = a5;
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

      v26 = [v8 objectForKeyedSubscript:v24];
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
        if (v72)
        {
          v100 = NSLocalizedDescriptionKey;
          v37 = [NSString stringWithFormat:@"secelemtoken: %@ requires '%@' value when present", v24, v25];
          v101 = v37;
          v38 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
          *v72 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v38];
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

  v39 = v41(v35, v72);
  CFRelease(v35);
  if (v72 && *v72)
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
  v50 = [NSKeyedArchiver archivedDataWithRootObject:v49 requiringSecureCoding:0 error:v72];
  v51 = kSecAttrTokenOID;
  [v74 setObject:v50 forKeyedSubscript:kSecAttrTokenOID];

  if (!v72 || !*v72)
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

- (id)tokenSession:(id)a3 attributesOfObject:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(TKSecElemTokenSession *)self isOperationAuthorized:0 error:a5];
  v9 = 0;
  if (v8)
  {
    if (sub_1000012E0(v7))
    {
      v9 = &__NSDictionary0__struct;
    }

    else
    {
      v10 = sub_100001338(v7, a5);
      v9 = [v10 objectForKeyedSubscript:@"keyAttributes"];
    }
  }

  return v9;
}

- (void)tokenSession:(id)a3 updateObject:(id)a4 attributes:(id)a5 reply:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v20 = 0;
  LOBYTE(self) = [(TKSecElemTokenSession *)self isOperationAuthorized:0 error:&v20];
  v12 = v20;
  v13 = v12;
  if (self)
  {
    v19 = v12;
    v14 = sub_100001338(v9, &v19);
    v15 = v19;

    if (v14)
    {
      v16 = v9;
      v17 = v10;
      v18 = 0;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = v15;
    }

    v11[2](v11, v16, v17, v18);
  }

  else
  {
    v11[2](v11, 0, 0, v12);
    v15 = v13;
  }
}

- (BOOL)tokenSession:(id)a3 supportsOperation:(int64_t)a4 usingKey:(id)a5 algorithm:(id)a6
{
  v8 = a5;
  v9 = a6;
  if (!sub_1000012E0(v8))
  {
    v11 = sub_100001338(v8, 0);
    if (v11)
    {
      switch(a4)
      {
        case 4:
          if (([v9 isAlgorithm:kSecKeyAlgorithmECDHKeyExchangeStandard] & 1) == 0)
          {
            v12 = &kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA256;
            goto LABEL_14;
          }

          break;
        case 3:
          if (([v9 isAlgorithm:kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM] & 1) == 0)
          {
            v13 = @"kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESCBC";
LABEL_15:
            v10 = [v9 isAlgorithm:v13];
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

  v10 = a4 == 1000;
LABEL_17:

  return v10;
}

- (id)tokenSession:(id)a3 signData:(id)a4 usingKey:(id)a5 algorithm:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (![(TKSecElemTokenSession *)self isOperationAuthorized:0 error:a7])
  {
    goto LABEL_5;
  }

  if (!sub_1000012E0(v14))
  {
    v16 = sub_100001338(v14, a7);
    if (v16)
    {
      if ([v15 isAlgorithm:kSecKeyAlgorithmECDSASignatureMessageX962SHA256])
      {
        v19 = [v16 objectForKeyedSubscript:@"keyData"];
        v27 = [(TKSecElemTokenSession *)self LAContext];
        v20 = [v27 externalizedContext];
        v17 = v19;
        v26 = v13;
        v21 = kSecKeyAlgorithmECDSASignatureMessageX962SHA256;
        v22 = v20;
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

        v18 = v23(v17, v26, v21, v22, a7);

        goto LABEL_14;
      }

      if (a7)
      {
        v32 = NSLocalizedDescriptionKey;
        v17 = [NSString stringWithFormat:@"secelemtoken: key does not support algorithm for signature"];
        v33 = v17;
        v27 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v27];
        *a7 = v18 = 0;
LABEL_14:

        goto LABEL_15;
      }
    }

    v18 = 0;
    goto LABEL_17;
  }

  if (!a7)
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
  *a7 = v18 = 0;
LABEL_15:

LABEL_17:
LABEL_18:

  return v18;
}

- (id)tokenSession:(id)a3 performKeyExchangeWithPublicKey:(id)a4 usingKey:(id)a5 algorithm:(id)a6 parameters:(id)a7 error:(id *)a8
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (sub_1000012E0(v13))
  {
    if (!a8)
    {
      goto LABEL_12;
    }

    v25 = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithFormat:@"secelemtoken: kSecKeyAttestionKeyTypeSecureElement does not support keyExchange"];
    v26 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *a8 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v16];
LABEL_4:

LABEL_10:
    a8 = 0;
    goto LABEL_11;
  }

  v15 = sub_100001338(v13, a8);
  if (!v15 || ![(TKSecElemTokenSession *)self isOperationAuthorized:0 error:a8])
  {
    goto LABEL_10;
  }

  v17 = kSecKeyAlgorithmECDHKeyExchangeStandard;
  if (![v14 isAlgorithm:kSecKeyAlgorithmECDHKeyExchangeStandard])
  {
    v17 = kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA256;
    if (![v14 isAlgorithm:kSecKeyAlgorithmECDHKeyExchangeStandardX963SHA256])
    {
      if (!a8)
      {
        goto LABEL_11;
      }

      v16 = [NSString stringWithFormat:@"secelemtoken: %@ algorithm not supported by the key", v14, NSLocalizedDescriptionKey];
      v24 = v16;
      v22 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      *a8 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v22];

      goto LABEL_4;
    }
  }

  v18 = [v15 objectForKeyedSubscript:@"keyData"];
  v19 = [(TKSecElemTokenSession *)self LAContext];
  v20 = [v19 externalizedContext];
  a8 = sub_100002D7C(v18, v12, v17, v20, a8);

LABEL_11:
LABEL_12:

  return a8;
}

- (id)tokenSession:(id)a3 decryptData:(id)a4 usingKey:(id)a5 algorithm:(id)a6 parameters:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (sub_1000012E0(v16))
  {
    if (!a8)
    {
      v21 = 0;
      goto LABEL_18;
    }

    v45 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithFormat:@"secelemtoken: kSecKeyAttestionKeyTypeSecureElement does not support decryption"];
    v46 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v20];
    *a8 = v21 = 0;
    goto LABEL_15;
  }

  v19 = sub_100001338(v16, a8);
  if (!v19 || ![(TKSecElemTokenSession *)self isOperationAuthorized:0 error:a8])
  {
    goto LABEL_16;
  }

  if ([v17 isAlgorithm:kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM])
  {
    v37 = [v19 objectForKeyedSubscript:@"keyData"];
    v35 = [v18 objectForKeyedSubscript:@"kSecKeyKeyExchangeParameterPublicKey"];
    v32 = [(TKSecElemTokenSession *)self LAContext];
    v33 = [v32 externalizedContext];
    v29 = [v18 objectForKeyedSubscript:kSecKeyKeyExchangeParameterSharedInfo];
    v28 = [v18 objectForKeyedSubscript:kSecKeyEncryptionParameterSymmetricAAD];
    v22 = [v18 objectForKeyedSubscript:@"kSecKeyKeyExchangeParameterAuthenticationTag"];
    v20 = v37;
    v30 = v15;
    v38 = v35;
    v31 = kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM;
    v27 = v33;
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

    v21 = v24(v20, v30, v38, v31, v27, v34, v36, v23, a8);

    goto LABEL_14;
  }

  if (!a8)
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
  *a8 = v21 = 0;
LABEL_14:

LABEL_15:
LABEL_17:

LABEL_18:

  return v21;
}

- (id)tokenSession:(id)a3 attestKey:(id)a4 usingKey:(id)a5 nonce:(id)a6 error:(id *)a7
{
  v37 = a3;
  v12 = a4;
  v13 = a5;
  v38 = a6;
  if (!sub_1000012E0(v12))
  {
    v36 = sub_100001338(v12, a7);
    if (!v36)
    {
      v14 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v15 = [(TKSecElemTokenSession *)self parameters];
    v35 = [v15 objectForKeyedSubscript:@"kSecKeyParameterSecElemTokenAttestationOIDs"];

    if (v35)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a7)
        {
          v33 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:0];
LABEL_28:
          v14 = 0;
          *a7 = v33;
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
              if (a7)
              {
                *a7 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:0];
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

    if (sub_1000012E0(v13))
    {
      if ([(TKSecElemTokenSession *)self isOperationAuthorized:1 error:a7])
      {
        v21 = [v36 objectForKeyedSubscript:@"keyData"];
        v22 = [(TKSecElemTokenSession *)self applicationIdentifier];
        v23 = [(TKSecElemTokenSession *)self parameters];
        v24 = [v23 objectForKeyedSubscript:@"kSecKeyParameterSecElemTokenAttestationNonce"];
        v25 = v21;
        v26 = v22;
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
        v14 = v29(v25, v26, v27, v28, a7);

        goto LABEL_33;
      }

      goto LABEL_32;
    }

    if (a7)
    {
      v33 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:0];
      goto LABEL_28;
    }

    goto LABEL_32;
  }

  if (a7)
  {
    [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:0];
    *a7 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_35:

  return v14;
}

@end