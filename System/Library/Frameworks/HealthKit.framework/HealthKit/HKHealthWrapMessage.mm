@interface HKHealthWrapMessage
+ (id)newOutputFileURL;
+ (id)newOutputFileURLInDirectory:(id)a3;
- (BOOL)_run:(id)a3 error:(id *)a4;
- (BOOL)appendData:(id)a3 error:(id *)a4;
- (BOOL)appendDataFromFileURL:(id)a3 error:(id *)a4;
- (BOOL)startWithError:(id *)a3;
- (BOOL)startWithOutputFileURL:(id)a3 error:(id *)a4;
- (HKHealthWrapMessage)initWithConfiguration:(id)a3;
- (HKHealthWrapMessage)initWithSenderUUID:(id)a3 studyUUID:(id)a4 channel:(id)a5 payloadType:(id)a6 startDate:(id)a7 endDate:(id)a8 payloadIdentifier:(id)a9 applicationData:(id)a10 certificate:(__SecCertificate *)cf;
- (id)_codableKeyValuePairsFromDictionary:(id)a3;
- (id)finalizeWithError:(id *)a3;
- (void)_cleanup;
- (void)_finalize;
- (void)_writeDataToCompressor:(id)a3;
- (void)dealloc;
- (void)receiveSinkContent:(id)a3;
- (void)sinkContentFinished;
@end

@implementation HKHealthWrapMessage

- (HKHealthWrapMessage)initWithSenderUUID:(id)a3 studyUUID:(id)a4 channel:(id)a5 payloadType:(id)a6 startDate:(id)a7 endDate:(id)a8 payloadIdentifier:(id)a9 applicationData:(id)a10 certificate:(__SecCertificate *)cf
{
  v17 = a3;
  v38 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v39.receiver = self;
  v39.super_class = HKHealthWrapMessage;
  v24 = [(HKHealthWrapMessage *)&v39 init];
  v25 = v24;
  if (v24)
  {
    v24->_compressionEnabled = 1;
    objc_storeStrong(&v24->_studyUUID, a4);
    v26 = objc_alloc_init(HKHealthWrapCodablePayloadHeader);
    payloadHeader = v25->_payloadHeader;
    v25->_payloadHeader = v26;

    v28 = [v22 copy];
    [(HKHealthWrapCodablePayloadHeader *)v25->_payloadHeader setPayloadIdentifier:v28];

    v29 = [v17 hk_dataForUUIDBytes];
    [(HKHealthWrapCodablePayloadHeader *)v25->_payloadHeader setSubjectUUID:v29];

    v30 = [v18 copy];
    [(HKHealthWrapCodablePayloadHeader *)v25->_payloadHeader setChannel:v30];

    v31 = [v19 copy];
    [(HKHealthWrapCodablePayloadHeader *)v25->_payloadHeader setPayloadType:v31];

    if (v20)
    {
      [v20 timeIntervalSinceReferenceDate];
      [(HKHealthWrapCodablePayloadHeader *)v25->_payloadHeader setStartDate:v32];
    }

    if (v21)
    {
      [v21 timeIntervalSinceReferenceDate];
      [(HKHealthWrapCodablePayloadHeader *)v25->_payloadHeader setEndDate:v33];
    }

    if (v23)
    {
      v34 = [v23 copy];
      [(HKHealthWrapCodablePayloadHeader *)v25->_payloadHeader setApplicationData:v34];
    }

    CFRetain(cf);
    v25->_certificate = cf;
    v35 = HKCreateSerialDispatchQueue(v25, @"stream");
    encryptQueue = v25->_encryptQueue;
    v25->_encryptQueue = v35;
  }

  return v25;
}

- (HKHealthWrapMessage)initWithConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [HKHealthWrapMessage initWithConfiguration:];
  }

  v5 = [v4 subjectUUID];
  v6 = [v4 studyUUID];
  v7 = [v4 channel];
  v8 = [v4 payloadType];
  v9 = [v4 startDate];
  v10 = [v4 endDate];
  v11 = [v4 payloadIdentifier];
  v12 = [v4 applicationData];
  v13 = -[HKHealthWrapMessage initWithSenderUUID:studyUUID:channel:payloadType:startDate:endDate:payloadIdentifier:applicationData:certificate:](self, "initWithSenderUUID:studyUUID:channel:payloadType:startDate:endDate:payloadIdentifier:applicationData:certificate:", v5, v6, v7, v8, v9, v10, v11, v12, [v4 certificate]);

  if (v13)
  {
    objc_storeStrong(&v13->_configuration, a3);
    if ([(HKHealthWrapMessageConfiguration *)v13->_configuration disableCompression])
    {
      v13->_compressionEnabled = 0;
    }

    v14 = [v4 keyValuePairs];
    v15 = [(HKHealthWrapMessage *)v13 _codableKeyValuePairsFromDictionary:v14];
    [(HKHealthWrapCodablePayloadHeader *)v13->_payloadHeader setKeyValuePairs:v15];
  }

  return v13;
}

- (void)dealloc
{
  certificate = self->_certificate;
  if (certificate)
  {
    CFRelease(certificate);
    self->_certificate = 0;
  }

  [(NSOutputStream *)self->_outputStream close];
  v4.receiver = self;
  v4.super_class = HKHealthWrapMessage;
  [(HKHealthWrapMessage *)&v4 dealloc];
}

- (id)_codableKeyValuePairsFromDictionary:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = a3;
    v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__HKHealthWrapMessage__codableKeyValuePairsFromDictionary___block_invoke;
    v8[3] = &unk_1E737BB50;
    v6 = v5;
    v9 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __59__HKHealthWrapMessage__codableKeyValuePairsFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_alloc_init(HKHealthWrapCodableKeyValue);
  v7 = objc_alloc_init(HKHealthWrapCodableValue);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HKHealthWrapCodableValue *)v7 setType:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(HKHealthWrapCodableValue *)v7 setType:3];
      [(HKHealthWrapCodableValue *)v7 setString:v5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(HKHealthWrapCodableValue *)v7 setType:4];
        -[HKHealthWrapCodableValue setInteger:](v7, "setInteger:", [v5 longLongValue]);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(HKHealthWrapCodableValue *)v7 setType:2];
          [(HKHealthWrapCodableValue *)v7 setBytes:v5];
        }

        else
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid value type for key: %@", v8}];
        }
      }
    }
  }

  [(HKHealthWrapCodableKeyValue *)v6 setValue:v7];
  [(HKHealthWrapCodableKeyValue *)v6 setKey:v8];
  [*(a1 + 32) addObject:v6];
}

- (BOOL)startWithError:(id *)a3
{
  v5 = [objc_opt_class() newOutputFileURL];
  LOBYTE(a3) = [(HKHealthWrapMessage *)self startWithOutputFileURL:v5 error:a3];

  return a3;
}

+ (id)newOutputFileURL
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = NSTemporaryDirectory();
  v5 = [v3 fileURLWithPath:v4];
  v6 = [a1 newOutputFileURLInDirectory:v5];

  return v6;
}

+ (id)newOutputFileURLInDirectory:(id)a3
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [v3 UUID];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v5 UUIDString];
  v8 = [v6 stringWithFormat:@"%@-%@", @"HealthWrap-", v7];

  v9 = [v4 URLByAppendingPathComponent:v8];

  return v9;
}

- (BOOL)startWithOutputFileURL:(id)a3 error:(id *)a4
{
  v7 = a3;
  self->_lastSuccess = 1;
  v8 = [MEMORY[0x1E696AFB0] UUID];
  objc_storeStrong(&self->_outputURL, a3);
  v9 = [objc_alloc(MEMORY[0x1E695DFC0]) initWithURL:v7 append:0];
  objc_storeStrong(&self->_outputStream, v9);
  MEMORY[0x193B03090](v9, self->_encryptQueue);
  v10 = [HKHealthWrapEncryptor alloc];
  LOBYTE(v17) = self->_compressionEnabled;
  v11 = [(HKHealthWrapEncryptor *)v10 initWithOutputStream:v9 certificate:self->_certificate algorithm:0 options:1 keySize:32 uuid:v8 studyUUID:self->_studyUUID compressionEnabled:v17];
  encryptor = self->_encryptor;
  self->_encryptor = v11;

  v13 = 0;
  if ([(HKHealthWrapEncryptor *)self->_encryptor startWithError:a4])
  {
    if (self->_compressionEnabled)
    {
      v14 = [[_HKCompressionEngine alloc] initWithFunction:0 algorithm:1 destination:self];
      compressionEngine = self->_compressionEngine;
      self->_compressionEngine = v14;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__HKHealthWrapMessage_startWithOutputFileURL_error___block_invoke;
    v18[3] = &unk_1E7376780;
    v18[4] = self;
    v13 = [(HKHealthWrapMessage *)self _run:v18 error:a4];
  }

  return v13;
}

void __52__HKHealthWrapMessage_startWithOutputFileURL_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HKHealthWrapMessage_startWithOutputFileURL_error___block_invoke_2;
  block[3] = &unk_1E7376780;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void __52__HKHealthWrapMessage_startWithOutputFileURL_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[1] data];
  [v1 _writeDataToCompressor:v2];
}

- (BOOL)appendDataFromFileURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:1 error:a4];
  if (v6)
  {
    v7 = [(HKHealthWrapMessage *)self appendData:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)appendData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__HKHealthWrapMessage_appendData_error___block_invoke;
  v9[3] = &unk_1E7378400;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  LOBYTE(a4) = [(HKHealthWrapMessage *)self _run:v9 error:a4];

  return a4;
}

- (void)_finalize
{
  if (self->_compressionEnabled)
  {
    compressionEngine = self->_compressionEngine;

    [(_HKCompressionEngine *)compressionEngine sourceContentFinished];
  }

  else
  {
    encryptor = self->_encryptor;
    obj = 0;
    v5 = [(HKHealthWrapEncryptor *)encryptor finalizeWithError:&obj];
    v6 = obj;
    self->_lastSuccess = v5;
    objc_storeStrong(&self->_lastError, v6);
  }
}

- (id)finalizeWithError:(id *)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__HKHealthWrapMessage_finalizeWithError___block_invoke;
  v6[3] = &unk_1E7376780;
  v6[4] = self;
  if ([(HKHealthWrapMessage *)self _run:v6 error:a3])
  {
    outputURL = self->_outputURL;
  }

  else
  {
    outputURL = 0;
  }

  return outputURL;
}

- (BOOL)_run:(id)a3 error:(id *)a4
{
  self->_lastSuccess = 1;
  (*(a3 + 2))(a3, a2);
  lastSuccess = self->_lastSuccess;
  if (!lastSuccess)
  {
    [(HKHealthWrapMessage *)self _cleanup];
    v7 = self->_lastError;
    v8 = v7;
    if (v7)
    {
      if (a4)
      {
        v9 = v7;
        *a4 = v8;
      }

      else
      {
        _HKLogDroppedError(v7);
      }
    }
  }

  return lastSuccess;
}

- (void)_writeDataToCompressor:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v16 = bswap64(v5);
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v16 length:8];
    if (self->_compressionEnabled)
    {
      [(_HKCompressionEngine *)self->_compressionEngine writeSourceContent:v6];
      [(_HKCompressionEngine *)self->_compressionEngine writeSourceContent:v4];
    }

    else
    {
      encryptor = self->_encryptor;
      v15 = 0;
      v8 = [(HKHealthWrapEncryptor *)encryptor appendData:v6 error:&v15];
      v9 = v15;
      self->_lastSuccess = v8;
      v10 = self->_encryptor;
      v14 = v9;
      v11 = [(HKHealthWrapEncryptor *)v10 appendData:v4 error:&v14];
      v12 = v14;

      self->_lastSuccess = v11;
      lastError = self->_lastError;
      self->_lastError = v12;
    }
  }
}

- (void)_cleanup
{
  compressionEngine = self->_compressionEngine;
  self->_compressionEngine = 0;

  [(HKHealthWrapEncryptor *)self->_encryptor finalizeWithError:0];
  encryptor = self->_encryptor;
  self->_encryptor = 0;

  [(NSOutputStream *)self->_outputStream close];
  outputStream = self->_outputStream;
  self->_outputStream = 0;

  if (self->_outputURL)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    [v6 removeItemAtURL:self->_outputURL error:0];

    outputURL = self->_outputURL;
    self->_outputURL = 0;
  }
}

- (void)receiveSinkContent:(id)a3
{
  v4 = a3;
  encryptQueue = self->_encryptQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__HKHealthWrapMessage_receiveSinkContent___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(encryptQueue, v7);
}

void __42__HKHealthWrapMessage_receiveSinkContent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);
  obj = 0;
  v4 = [v3 appendData:v2 error:&obj];
  v5 = obj;
  *(*(a1 + 32) + 73) = v4;
  objc_storeStrong((*(a1 + 32) + 80), v5);
}

- (void)sinkContentFinished
{
  encryptQueue = self->_encryptQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__HKHealthWrapMessage_sinkContentFinished__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_sync(encryptQueue, block);
}

void __42__HKHealthWrapMessage_sinkContentFinished__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  obj = 0;
  v3 = [v2 finalizeWithError:&obj];
  v4 = obj;
  *(*(a1 + 32) + 73) = v3;
  objc_storeStrong((*(a1 + 32) + 80), v4);
}

- (void)initWithConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"configuration != nil" object:? file:? lineNumber:? description:?];
}

@end