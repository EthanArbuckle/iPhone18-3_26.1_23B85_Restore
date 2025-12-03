@interface ATGrappaSession
- (ATGrappaSession)initWithType:(unint64_t)type;
- (id)_deviceCreateSignature:(id *)signature forData:(id)data;
- (id)_deviceVerifySignature:(id)signature forData:(id)data;
- (id)_hostCreateSignature:(id *)signature forData:(id)data;
- (id)_hostVerifySignature:(id)signature forData:(id)data;
- (id)beginHostSessionWithDeviceResponseData:(id)data;
- (id)createSignature:(id *)signature forData:(id)data;
- (id)deviceInfo;
- (id)establishDeviceSessionWithRequestData:(id)data responseData:(id *)responseData;
- (id)establishHostSessionWithDeviceInfo:(id)info clientRequestData:(id *)data;
- (id)verifySignature:(id)signature forData:(id)data;
@end

@implementation ATGrappaSession

- (id)_hostVerifySignature:(id)signature forData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  dataCopy = data;
  if ([dataCopy length] && objc_msgSend(signatureCopy, "length"))
  {
    sessionId = self->_sessionId;
    bytes = [dataCopy bytes];
    v10 = [dataCopy length];
    bytes2 = [signatureCopy bytes];
    [signatureCopy length];
    tTA34a4tbgsKsWljx9Ip(sessionId, bytes, v10, bytes2);
    if (v12)
    {
      v13 = v12;
      v14 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = 134217984;
        v19 = v13;
        _os_log_impl(&dword_223819000, v14, OS_LOG_TYPE_ERROR, "GrappaHostVerify failed. err=%ld", &v18, 0xCu);
      }

      v15 = 0;
      goto LABEL_10;
    }
  }

  else if ([dataCopy length] || objc_msgSend(signatureCopy, "length"))
  {
    v15 = 4;
LABEL_10:
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:v15 userInfo:0];
    goto LABEL_12;
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (id)_hostCreateSignature:(id *)signature forData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([(__CFData *)dataCopy length])
  {
    v16 = 0;
    v15 = 0;
    sessionId = self->_sessionId;
    BytePtr = CFDataGetBytePtr(dataCopy);
    Length = CFDataGetLength(dataCopy);
    qk82YWRPNDt4yUtuP3cY(sessionId, BytePtr, Length, &v16, &v15);
    if (v10)
    {
      v11 = v10;
      v12 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v18 = v11;
        _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_ERROR, "GrappaHostSign failed. err=%ld", buf, 0xCu);
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
    }

    else
    {
      *signature = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:v15];
      X5EvIJWqdcALcjaxX6Pl(v16);
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    *signature = 0;
  }

  return v13;
}

- (id)_deviceVerifySignature:(id)signature forData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  dataCopy = data;
  if ([dataCopy length] && objc_msgSend(signatureCopy, "length"))
  {
    [dataCopy bytes];
    [dataCopy length];
    [signatureCopy bytes];
    [signatureCopy length];
    CFUnnB0JdUjJ5CNJMkDS();
    if (v7)
    {
      v8 = v7;
      v9 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 134217984;
        v13 = v8;
        _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_ERROR, "GrappaDeviceVerify failed. err=%ld", &v12, 0xCu);
      }

      goto LABEL_9;
    }
  }

  else if ([dataCopy length] || objc_msgSend(signatureCopy, "length"))
  {
LABEL_9:
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_deviceCreateSignature:(id *)signature forData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([(__CFData *)dataCopy length])
  {
    v15 = 0;
    sessionId = self->_sessionId;
    BytePtr = CFDataGetBytePtr(dataCopy);
    Length = CFDataGetLength(dataCopy);
    jumT7rcoieclCtxS2rgJ(sessionId, BytePtr, Length, &v15);
    if (v10)
    {
      v11 = v10;
      v12 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v17 = v11;
        _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_ERROR, "GrappaDeviceSign failed. err=%ld", buf, 0xCu);
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
    }

    else
    {
      *signature = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:0];
      X5EvIJWqdcALcjaxX6Pl(v15);
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    *signature = 0;
  }

  return v13;
}

- (id)verifySignature:(id)signature forData:(id)data
{
  if (self->_sessionType)
  {
    [(ATGrappaSession *)self _hostVerifySignature:signature forData:data];
  }

  else
  {
    [(ATGrappaSession *)self _deviceVerifySignature:signature forData:data];
  }
  v4 = ;

  return v4;
}

- (id)createSignature:(id *)signature forData:(id)data
{
  if (self->_sessionType)
  {
    [(ATGrappaSession *)self _hostCreateSignature:signature forData:data];
  }

  else
  {
    [(ATGrappaSession *)self _deviceCreateSignature:signature forData:data];
  }
  v4 = ;

  return v4;
}

- (id)beginHostSessionWithDeviceResponseData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (self->_sessionType != 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATGrappa.m" lineNumber:109 description:@"function is host-only"];
  }

  LainiFYJT9auDqhZYWzW(self->_sessionId, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
  if (v6)
  {
    v7 = v6;
    v8 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = v7;
      _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_ERROR, "GrappaHostEstablishKey failed. err=%d", v12, 8u);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)establishHostSessionWithDeviceInfo:(id)info clientRequestData:(id *)data
{
  v23 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (self->_sessionType != 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATGrappa.m" lineNumber:85 description:@"function is host-only"];
  }

  v8 = [infoCopy objectForKey:@"version"];
  v20[0] = [v8 unsignedCharValue];

  v9 = [infoCopy objectForKey:@"deviceType"];
  v20[1] = [v9 unsignedIntValue];

  v10 = [infoCopy objectForKey:@"protocolVersion"];
  v20[2] = [v10 unsignedCharValue];

  memset(length, 0, sizeof(length));
  uhO2GULXwfgKwPcp4YR2(v20, &self->_sessionId, &length[1], length);
  if (v11)
  {
    v12 = v11;
    v13 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v22 = v12;
      _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_ERROR, "GrappaHostInit failed, %ld", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
  }

  else
  {
    v15 = CFDataCreate(0, *&length[1], length[0]);
    rpY4QOlsWsxk0fLzfV8h(*&length[1]);
    v16 = v15;
    v14 = 0;
    *data = v15;
  }

  return v14;
}

- (id)establishDeviceSessionWithRequestData:(id)data responseData:(id *)responseData
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v8 = dataCopy;
  if (!self->_sessionType)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }

LABEL_14:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATGrappa.m" lineNumber:66 description:@"no session request data"];

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"ATGrappa.m" lineNumber:65 description:@"function is client-only"];

  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_3:
  v16 = 0;
  VVaAJGMXS456O5KIXfqv([v8 bytes], objc_msgSend(v8, "length"), &self->_sessionId, &v16);
  if (!v9)
  {
    if (v16)
    {
      *responseData = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:0];
      X5EvIJWqdcALcjaxX6Pl(v16);
    }

    goto LABEL_9;
  }

  v10 = v9;
  v11 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v18 = v10;
    _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_ERROR, "Grappa session could not be established, %ld", buf, 0xCu);
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
LABEL_10:

  return v12;
}

- (id)deviceInfo
{
  v12 = *MEMORY[0x277D85DE8];
  NuRl2rYpg6zLtnsguhi3();
  if (v2)
  {
    v3 = v2;
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v11 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "GrappaDeviceGetInfo failed, %ld", buf, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x277CBEAC0];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:0];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:0];
    v5 = [v6 dictionaryWithObjectsAndKeys:{v4, @"version", v7, @"deviceType", v8, @"protocolVersion", 0}];
  }

  return v5;
}

- (ATGrappaSession)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = ATGrappaSession;
  result = [(ATGrappaSession *)&v5 init];
  if (result)
  {
    result->_sessionType = type;
  }

  return result;
}

@end