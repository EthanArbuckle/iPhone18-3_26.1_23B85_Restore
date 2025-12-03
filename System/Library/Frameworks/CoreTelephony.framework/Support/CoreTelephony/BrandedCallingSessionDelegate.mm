@interface BrandedCallingSessionDelegate
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)setPublicKeyHash:(id)hash;
@end

@implementation BrandedCallingSessionDelegate

- (void)setPublicKeyHash:(id)hash
{
  hashCopy = hash;
  v4 = [[NSString alloc] initWithString:hashCopy];
  fPublicKeyHash = self->fPublicKeyHash;
  self->fPublicKeyHash = v4;
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  v52 = challengeCopy;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    uTF8String = [(NSString *)self->fPublicKeyHash UTF8String];
    *buf = 136315138;
    v58 = uTF8String;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Branded calling pinned public key SHA-256 hash %s", buf, 0xCu);
  }

  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];

  if (![authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
LABEL_50:
    handlerCopy[2](handlerCopy, 2, 0);
    goto LABEL_53;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace2 serverTrust];

  if (!SecTrustEvaluateWithError(serverTrust, 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Branded calling server trust evaluation failed", buf, 2u);
    }

    handlerCopy[2](handlerCopy, 2, 0);
    goto LABEL_53;
  }

  v13 = SecTrustCopyCertificateChain(serverTrust);
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
    handlerCopy[2](handlerCopy, 2, 0);
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
    unsignedIntegerValue = [v20 unsignedIntegerValue];

    v22 = v48;
    v23 = v22;
    if (unsignedIntegerValue <= 2047)
    {
      if (unsignedIntegerValue == 256)
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

      if (unsignedIntegerValue == 384)
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

    if (unsignedIntegerValue == 4096)
    {
      v35 = [v22 isEqualToString:kSecAttrKeyTypeRSA];

      v29 = [v23 isEqualToString:kSecAttrKeyTypeRSA];
      v30 = v35 == 0;
      v31 = &unk_10197E5E0;
    }

    else
    {
      if (unsignedIntegerValue != 2048)
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
    bytes = [v37 bytes];
    v40 = [v37 length];
    v41 = v36;
    CC_SHA256(bytes, v40, [v36 bytes]);
    v42 = [v36 base64EncodedStringWithOptions:0];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v43 = v42;
      uTF8String2 = [v42 UTF8String];
      *buf = 136315138;
      v58 = uTF8String2;
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

  protectionSpace3 = [v52 protectionSpace];
  v47 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace3 serverTrust]);
  (handlerCopy)[2](handlerCopy, 0, v47);

  sub_1005A16F4(&key);
LABEL_52:
  sub_100010250(&v56);
LABEL_53:
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v16 = [requestCopy URL];
    absoluteString = [v16 absoluteString];
    v18 = 136315138;
    uTF8String = [absoluteString UTF8String];
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Branded calling redirects are not allowed %s", &v18, 0xCu);
  }

  handlerCopy[2](handlerCopy, 0);
}

@end