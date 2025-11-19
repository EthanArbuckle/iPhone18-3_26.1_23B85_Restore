@interface BrandedCallingSessionDelegate
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)setPublicKeyHash:(id)a3;
@end

@implementation BrandedCallingSessionDelegate

- (void)setPublicKeyHash:(id)a3
{
  v6 = a3;
  v4 = [[NSString alloc] initWithString:v6];
  fPublicKeyHash = self->fPublicKeyHash;
  self->fPublicKeyHash = v4;
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v49 = a3;
  v50 = a4;
  v9 = a5;
  v54 = a6;
  v52 = v9;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v45 = [(NSString *)self->fPublicKeyHash UTF8String];
    *buf = 136315138;
    v58 = v45;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Branded calling pinned public key SHA-256 hash %s", buf, 0xCu);
  }

  v10 = [v9 protectionSpace];
  v53 = [v10 authenticationMethod];

  if (![v53 isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
LABEL_50:
    v54[2](v54, 2, 0);
    goto LABEL_53;
  }

  v11 = [v9 protectionSpace];
  v12 = [v11 serverTrust];

  if (!SecTrustEvaluateWithError(v12, 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Branded calling server trust evaluation failed", buf, 2u);
    }

    v54[2](v54, 2, 0);
    goto LABEL_53;
  }

  v13 = SecTrustCopyCertificateChain(v12);
  v56 = v13;
  if (!v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Branded calling certificate chain is null", buf, 2u);
    }

    goto LABEL_9;
  }

  Count = CFArrayGetCount(v13);
  if (Count < 3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Branded calling intermediate CA is not available", buf, 2u);
    }

LABEL_9:
    v54[2](v54, 2, 0);
    goto LABEL_52;
  }

  v15 = Count - 2;
  v16 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v56, v16);
    if (!ValueAtIndex)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Branded calling certificate is null", buf, 2u);
      }

      goto LABEL_48;
    }

    key = 0;
    key = SecCertificateCopyKey(ValueAtIndex);
    v18 = SecKeyCopyExternalRepresentation(key, 0);
    v19 = SecKeyCopyAttributes(key);
    v48 = [(__CFDictionary *)v19 objectForKeyedSubscript:kSecAttrKeyType];
    v20 = [(__CFDictionary *)v19 objectForKeyedSubscript:kSecAttrKeySizeInBits];
    v21 = [v20 unsignedIntegerValue];

    v22 = v48;
    v23 = v22;
    if (v21 <= 2047)
    {
      if (v21 == 256)
      {
        v33 = [v22 isEqualToString:kSecAttrKeyTypeECSECPrimeRandom];

        v34 = [v23 isEqualToString:kSecAttrKeyTypeECSECPrimeRandom];
        if (v33)
        {
          v26 = &unk_10197E5F8;
        }

        else
        {
          v26 = 0;
        }

        if (v34)
        {
          v27 = 26;
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      if (v21 == 384)
      {
        v24 = [v22 isEqualToString:kSecAttrKeyTypeECSECPrimeRandom];

        v25 = [v23 isEqualToString:kSecAttrKeyTypeECSECPrimeRandom];
        if (v24)
        {
          v26 = &unk_10197E612;
        }

        else
        {
          v26 = 0;
        }

        if (v25)
        {
          v27 = 23;
          goto LABEL_44;
        }

        goto LABEL_43;
      }

LABEL_31:

      v32 = v23;
      v26 = 0;
      goto LABEL_43;
    }

    if (v21 == 4096)
    {
      v35 = [v22 isEqualToString:kSecAttrKeyTypeRSA];

      v29 = [v23 isEqualToString:kSecAttrKeyTypeRSA];
      v30 = v35 == 0;
      v31 = &unk_10197E5E0;
    }

    else
    {
      if (v21 != 2048)
      {
        goto LABEL_31;
      }

      v28 = [v22 isEqualToString:kSecAttrKeyTypeRSA];

      v29 = [v23 isEqualToString:kSecAttrKeyTypeRSA];
      v30 = v28 == 0;
      v31 = &unk_10197E5C8;
    }

    if (v30)
    {
      v26 = 0;
    }

    else
    {
      v26 = v31;
    }

    if (v29)
    {
      v27 = 24;
      goto LABEL_44;
    }

LABEL_43:
    v27 = 0;
LABEL_44:

    v36 = [NSMutableData dataWithLength:32];
    v37 = [NSMutableData dataWithBytes:v26 length:v27];
    [v37 appendData:v18];
    v38 = v37;
    v39 = [v37 bytes];
    v40 = [v37 length];
    v41 = v36;
    CC_SHA256(v39, v40, [v36 bytes]);
    v42 = [v36 base64EncodedStringWithOptions:0];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v43 = v42;
      v44 = [v42 UTF8String];
      *buf = 136315138;
      v58 = v44;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Branded calling intermediate CA public key SHA-256 hash %s", buf, 0xCu);
    }

    if ([v42 isEqualToString:self->fPublicKeyHash])
    {
      break;
    }

    sub_1005A16F4(&key);
LABEL_48:
    ++v16;
    if (!--v15)
    {
      sub_100010250(&v56);
      goto LABEL_50;
    }
  }

  v46 = [v52 protectionSpace];
  v47 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v46 serverTrust]);
  (v54)[2](v54, 0, v47);

  sub_1005A16F4(&key);
LABEL_52:
  sub_100010250(&v56);
LABEL_53:
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v16 = [v14 URL];
    v17 = [v16 absoluteString];
    v18 = 136315138;
    v19 = [v17 UTF8String];
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Branded calling redirects are not allowed %s", &v18, 0xCu);
  }

  v15[2](v15, 0);
}

@end