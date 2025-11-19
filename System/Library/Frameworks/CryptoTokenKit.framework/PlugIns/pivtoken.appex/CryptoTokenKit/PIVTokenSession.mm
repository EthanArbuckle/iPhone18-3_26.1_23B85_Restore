@interface PIVTokenSession
- (BOOL)tokenSession:(id)a3 supportsOperation:(int64_t)a4 usingKey:(id)a5 algorithm:(id)a6;
- (PIVTokenSession)initWithToken:(id)a3;
- (id)generalAuthenticateWithData:(id)a3 operation:(id)a4 dataTag:(unint64_t)a5 usingKey:(id)a6 error:(id *)a7;
- (id)tokenSession:(id)a3 beginAuthForOperation:(int64_t)a4 constraint:(id)a5 error:(id *)a6;
@end

@implementation PIVTokenSession

- (PIVTokenSession)initWithToken:(id)a3
{
  v4.receiver = self;
  v4.super_class = PIVTokenSession;
  return [(PIVTokenSession *)&v4 initWithToken:a3];
}

- (id)tokenSession:(id)a3 beginAuthForOperation:(int64_t)a4 constraint:(id)a5 error:(id *)a6
{
  v8 = a5;
  if ([v8 isEqual:@"PIN"] & 1) != 0 || (objc_msgSend(v8, "isEqual:", @"PINAlways"))
  {
    v9 = [(PIVTokenSession *)self getSmartCardWithError:a6];
    if (v9)
    {
      if (!-[PIVTokenSession authState](self, "authState") || [v8 isEqual:@"PINAlways"] && -[PIVTokenSession authState](self, "authState") == 2 || (objc_msgSend(v9, "context"), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
      {
        v11 = [[PIVAuthOperation alloc] initWithSession:self smartCard:v9];
      }

      else
      {
        v11 = objc_opt_new();
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = sub_100001258();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000036C0(v8, v13);
    }

    if (a6)
    {
      v18 = NSLocalizedDescriptionKey;
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"WRONG_CONSTR" value:&stru_1000083D8 table:0];
      v19 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *a6 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v16];
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)tokenSession:(id)a3 supportsOperation:(int64_t)a4 usingKey:(id)a5 algorithm:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [(PIVTokenSession *)self token];
  v12 = [v11 keychainContents];
  v13 = [v12 keyForObjectID:v10 error:0];

  if (!v13)
  {
    goto LABEL_29;
  }

  if (a4 == 4)
  {
    if (![v13 canPerformKeyExchange])
    {
      goto LABEL_29;
    }

    v20 = [v13 keyType];
    v21 = [v20 isEqual:kSecAttrKeyTypeECSECPrimeRandom];

    if (!v21)
    {
      goto LABEL_29;
    }

    if ([v9 isAlgorithm:kSecKeyAlgorithmECDHKeyExchangeStandard])
    {
      goto LABEL_20;
    }

    v19 = &kSecKeyAlgorithmECDHKeyExchangeCofactor;
    goto LABEL_25;
  }

  if (a4 == 3)
  {
    if (![v13 canDecrypt])
    {
      goto LABEL_29;
    }

    v17 = [v13 keyType];
    v18 = [v17 isEqual:kSecAttrKeyTypeRSA];

    if (!v18)
    {
      goto LABEL_29;
    }

    v19 = &kSecKeyAlgorithmRSAEncryptionRaw;
    goto LABEL_25;
  }

  if (a4 != 2 || ![v13 canSign])
  {
    goto LABEL_29;
  }

  v14 = [v13 keyType];
  v15 = [v14 isEqual:kSecAttrKeyTypeRSA];

  if (!v15)
  {
    v23 = [v13 keyType];
    v24 = [v23 isEqual:kSecAttrKeyTypeECSECPrimeRandom];

    if (!v24)
    {
      goto LABEL_29;
    }

    if ([v13 keySizeInBits] == 256)
    {
      v19 = &kSecKeyAlgorithmECDSASignatureDigestX962SHA256;
    }

    else
    {
      if ([v13 keySizeInBits] != 384)
      {
        goto LABEL_29;
      }

      v19 = &kSecKeyAlgorithmECDSASignatureDigestX962SHA384;
    }

LABEL_25:
    v16 = [v9 isAlgorithm:*v19];
    goto LABEL_26;
  }

  if (![v9 isAlgorithm:kSecKeyAlgorithmRSASignatureRaw])
  {
LABEL_29:
    v22 = 0;
    goto LABEL_30;
  }

  if (([v9 supportsAlgorithm:kSecKeyAlgorithmRSASignatureDigestPKCS1v15Raw] & 1) == 0 && (objc_msgSend(v9, "supportsAlgorithm:", kSecKeyAlgorithmRSASignatureDigestPSSSHA1) & 1) == 0 && (objc_msgSend(v9, "supportsAlgorithm:", kSecKeyAlgorithmRSASignatureDigestPSSSHA224) & 1) == 0 && (objc_msgSend(v9, "supportsAlgorithm:", kSecKeyAlgorithmRSASignatureDigestPSSSHA256) & 1) == 0 && (objc_msgSend(v9, "supportsAlgorithm:", kSecKeyAlgorithmRSASignatureDigestPSSSHA384) & 1) == 0)
  {
    v16 = [v9 supportsAlgorithm:kSecKeyAlgorithmRSASignatureDigestPSSSHA512];
LABEL_26:
    v22 = v16;
    goto LABEL_30;
  }

LABEL_20:
  v22 = 1;
LABEL_30:

  return v22;
}

- (id)generalAuthenticateWithData:(id)a3 operation:(id)a4 dataTag:(unint64_t)a5 usingKey:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [(PIVTokenSession *)self getSmartCardWithError:a7];
  if (!v15)
  {
    v24 = 0;
    goto LABEL_28;
  }

  v16 = [(PIVTokenSession *)self token];
  v17 = [v16 keychainContents];
  v18 = [v17 keyForObjectID:v14 error:a7];

  if (v18)
  {
    v41 = v12;
    v19 = [v18 constraints];
    v20 = [v19 objectForKeyedSubscript:v13];
    v21 = [v20 isEqual:&__kCFBooleanTrue];

    if ((v21 & 1) == 0)
    {
      if (![(PIVTokenSession *)self authState])
      {
        goto LABEL_15;
      }

      v22 = [v18 constraints];
      v23 = [v22 objectForKeyedSubscript:v13];
      if ([v23 isEqual:@"PINAlways"] && -[PIVTokenSession authState](self, "authState") == 2)
      {

        goto LABEL_15;
      }

      v25 = [v15 context];

      if (!v25)
      {
LABEL_15:
        if (a7)
        {
          [NSError errorWithDomain:TKErrorDomain code:-9 userInfo:0];
          *a7 = v24 = 0;
        }

        else
        {
          v24 = 0;
        }

LABEL_26:
        v12 = v41;
        goto LABEL_27;
      }

      [(PIVTokenSession *)self setAuthState:2];
    }

    v40 = v13;
    v42 = 0;
    v26 = [TKBERTLVRecord alloc];
    v27 = [TKBERTLVRecord alloc];
    v28 = +[NSData data];
    v29 = [v27 initWithTag:130 value:v28];
    v49[0] = v29;
    v30 = [[TKBERTLVRecord alloc] initWithTag:a5 value:v41];
    v49[1] = v30;
    v31 = [NSArray arrayWithObjects:v49 count:2];
    v32 = [v26 initWithTag:124 records:v31];

    [v15 setUseCommandChaining:1];
    v33 = [v15 sendIns:135 p1:objc_msgSend(v18 p2:"algID") request:objc_msgSend(v18 expectedTag:"keyID") sw:v32 error:{124, &v42, a7}];
    v34 = v33;
    if (v33)
    {
      v35 = [v33 value];
      v36 = [TKBERTLVRecord recordFromData:v35];

      if ([v36 tag] == 130)
      {
        v24 = [v36 value];
        v13 = v40;
      }

      else
      {
        v37 = sub_100001258();
        v13 = v40;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v39 = [(PIVTokenSession *)self token];
          *buf = 138543874;
          v44 = v39;
          v45 = 2114;
          v46 = v14;
          v47 = 2112;
          v48 = v34;
          _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}@: crypto with key %{public}@ returned bad formatted response %@", buf, 0x20u);

          v13 = v40;
        }

        if (a7)
        {
          [NSError errorWithDomain:TKErrorDomain code:-3 userInfo:0];
          *a7 = v24 = 0;
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else
    {
      v24 = 0;
      v13 = v40;
    }

    goto LABEL_26;
  }

  v24 = 0;
LABEL_27:

LABEL_28:

  return v24;
}

@end