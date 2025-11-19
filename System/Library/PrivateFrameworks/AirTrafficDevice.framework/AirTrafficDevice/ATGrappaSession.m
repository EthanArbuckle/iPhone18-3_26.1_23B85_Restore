@interface ATGrappaSession
- (ATGrappaSession)initWithType:(unint64_t)a3;
- (id)_deviceCreateSignature:(id *)a3 forData:(id)a4;
- (id)_deviceVerifySignature:(id)a3 forData:(id)a4;
- (id)_hostCreateSignature:(id *)a3 forData:(id)a4;
- (id)_hostVerifySignature:(id)a3 forData:(id)a4;
- (id)beginHostSessionWithDeviceResponseData:(id)a3;
- (id)createSignature:(id *)a3 forData:(id)a4;
- (id)deviceInfo;
- (id)establishDeviceSessionWithRequestData:(id)a3 responseData:(id *)a4;
- (id)establishHostSessionWithDeviceInfo:(id)a3 clientRequestData:(id *)a4;
- (id)verifySignature:(id)a3 forData:(id)a4;
@end

@implementation ATGrappaSession

- (id)_hostVerifySignature:(id)a3 forData:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 length] && objc_msgSend(v6, "length"))
  {
    sessionId = self->_sessionId;
    v9 = [v7 bytes];
    v10 = [v7 length];
    v11 = [v6 bytes];
    [v6 length];
    tTA34a4tbgsKsWljx9Ip(sessionId, v9, v10, v11);
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

  else if ([v7 length] || objc_msgSend(v6, "length"))
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

- (id)_hostCreateSignature:(id *)a3 forData:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(__CFData *)v6 length])
  {
    v16 = 0;
    v15 = 0;
    sessionId = self->_sessionId;
    BytePtr = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(v6);
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
      *a3 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:v15];
      X5EvIJWqdcALcjaxX6Pl(v16);
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    *a3 = 0;
  }

  return v13;
}

- (id)_deviceVerifySignature:(id)a3 forData:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 length] && objc_msgSend(v5, "length"))
  {
    [v6 bytes];
    [v6 length];
    [v5 bytes];
    [v5 length];
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

  else if ([v6 length] || objc_msgSend(v5, "length"))
  {
LABEL_9:
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_deviceCreateSignature:(id *)a3 forData:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(__CFData *)v6 length])
  {
    v15 = 0;
    sessionId = self->_sessionId;
    BytePtr = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(v6);
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
      *a3 = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:0];
      X5EvIJWqdcALcjaxX6Pl(v15);
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    *a3 = 0;
  }

  return v13;
}

- (id)verifySignature:(id)a3 forData:(id)a4
{
  if (self->_sessionType)
  {
    [(ATGrappaSession *)self _hostVerifySignature:a3 forData:a4];
  }

  else
  {
    [(ATGrappaSession *)self _deviceVerifySignature:a3 forData:a4];
  }
  v4 = ;

  return v4;
}

- (id)createSignature:(id *)a3 forData:(id)a4
{
  if (self->_sessionType)
  {
    [(ATGrappaSession *)self _hostCreateSignature:a3 forData:a4];
  }

  else
  {
    [(ATGrappaSession *)self _deviceCreateSignature:a3 forData:a4];
  }
  v4 = ;

  return v4;
}

- (id)beginHostSessionWithDeviceResponseData:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_sessionType != 1)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"ATGrappa.m" lineNumber:109 description:@"function is host-only"];
  }

  LainiFYJT9auDqhZYWzW(self->_sessionId, [v5 bytes], objc_msgSend(v5, "length"));
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

- (id)establishHostSessionWithDeviceInfo:(id)a3 clientRequestData:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (self->_sessionType != 1)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"ATGrappa.m" lineNumber:85 description:@"function is host-only"];
  }

  v8 = [v7 objectForKey:@"version"];
  v20[0] = [v8 unsignedCharValue];

  v9 = [v7 objectForKey:@"deviceType"];
  v20[1] = [v9 unsignedIntValue];

  v10 = [v7 objectForKey:@"protocolVersion"];
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
    *a4 = v15;
  }

  return v14;
}

- (id)establishDeviceSessionWithRequestData:(id)a3 responseData:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (!self->_sessionType)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_14:
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"ATGrappa.m" lineNumber:66 description:@"no session request data"];

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v14 = [MEMORY[0x277CCA890] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"ATGrappa.m" lineNumber:65 description:@"function is client-only"];

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
      *a4 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:0];
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

- (ATGrappaSession)initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ATGrappaSession;
  result = [(ATGrappaSession *)&v5 init];
  if (result)
  {
    result->_sessionType = a3;
  }

  return result;
}

@end