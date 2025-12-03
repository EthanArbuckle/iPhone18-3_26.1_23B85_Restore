@interface HKHealthWrapEncryptor
- (BOOL)_appendEncryptedBytes:(const char *)bytes length:(unint64_t)length error:(id *)error;
- (BOOL)_finalizeCryptorWithError:(id *)error;
- (BOOL)_startCryptorWithError:(id *)error;
- (BOOL)_updateCryptorWithData:(id)data error:(id *)error;
- (BOOL)_updateHeaderWithKey:(id)key iv:(id)iv hmacKey:(id)hmacKey error:(id *)error;
- (BOOL)_writeStream:(const char *)stream length:(unint64_t)length hash:(BOOL)hash error:(id *)error;
- (BOOL)finalizeWithError:(id *)error;
- (BOOL)startWithError:(id *)error;
- (HKHealthWrapEncryptor)initWithOutputStream:(id)stream certificate:(__SecCertificate *)certificate algorithm:(unsigned int)algorithm options:(unsigned int)options keySize:(unsigned int)size uuid:(id)uuid studyUUID:(id)d compressionEnabled:(BOOL)self0;
- (__SecKey)_copyAndVerifyPublicKeyFromCertificate:(__SecCertificate *)certificate error:(id *)error;
- (id)_encryptData:(id)data withCertificate:(__SecCertificate *)certificate error:(id *)error;
- (void)dealloc;
@end

@implementation HKHealthWrapEncryptor

- (HKHealthWrapEncryptor)initWithOutputStream:(id)stream certificate:(__SecCertificate *)certificate algorithm:(unsigned int)algorithm options:(unsigned int)options keySize:(unsigned int)size uuid:(id)uuid studyUUID:(id)d compressionEnabled:(BOOL)self0
{
  streamCopy = stream;
  uuidCopy = uuid;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = HKHealthWrapEncryptor;
  v19 = [(HKHealthWrapEncryptor *)&v22 init];
  if (v19)
  {
    if (!certificate)
    {
      [HKHealthWrapEncryptor initWithOutputStream:certificate:algorithm:options:keySize:uuid:studyUUID:compressionEnabled:];
    }

    objc_storeStrong(&v19->_outputStream, stream);
    v19->_certificate = CFRetain(certificate);
    v19->_algorithm = algorithm;
    v19->_options = options;
    v19->_keySize = size;
    v19->_cryptor = 0;
    objc_storeStrong(&v19->_uuid, uuid);
    objc_storeStrong(&v19->_studyUUID, d);
    v19->_hmacAlgorithm = 2;
    v19->_encryptedBytesCount = 0;
    v19->_compressionEnabled = enabled;
  }

  return v19;
}

- (void)dealloc
{
  certificate = self->_certificate;
  if (certificate)
  {
    CFRelease(certificate);
    self->_certificate = 0;
  }

  cryptor = self->_cryptor;
  if (cryptor)
  {
    CCCryptorRelease(cryptor);
    self->_cryptor = 0;
  }

  v5.receiver = self;
  v5.super_class = HKHealthWrapEncryptor;
  [(HKHealthWrapEncryptor *)&v5 dealloc];
}

- (__SecKey)_copyAndVerifyPublicKeyFromCertificate:(__SecCertificate *)certificate error:(id *)error
{
  if (certificate)
  {
    if (error)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKHealthWrapEncryptor _copyAndVerifyPublicKeyFromCertificate:error:];
    if (error)
    {
      goto LABEL_3;
    }
  }

  [HKHealthWrapEncryptor _copyAndVerifyPublicKeyFromCertificate:error:];
LABEL_3:
  v6 = SecCertificateCopyKey(certificate);
  if (!v6)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:@"No public key found in certificate"];
  }

  return v6;
}

- (id)_encryptData:(id)data withCertificate:(__SecCertificate *)certificate error:(id *)error
{
  dataCopy = data;
  if (dataCopy)
  {
    if (certificate)
    {
      goto LABEL_3;
    }

LABEL_15:
    [HKHealthWrapEncryptor _encryptData:withCertificate:error:];
    if (error)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  [HKHealthWrapEncryptor _encryptData:withCertificate:error:];
  if (!certificate)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (error)
  {
    goto LABEL_4;
  }

LABEL_16:
  [HKHealthWrapEncryptor _encryptData:withCertificate:error:];
LABEL_4:
  v9 = [(HKHealthWrapEncryptor *)self _copyAndVerifyPublicKeyFromCertificate:certificate error:error];
  if (v9)
  {
    v10 = v9;
    error = 0;
    v11 = SecKeyCreateEncryptedData(v9, *MEMORY[0x1E697B170], dataCopy, &error);
    CFRelease(v10);
    errorCopy = error;
    v13 = errorCopy;
    if (errorCopy)
    {
      if (error)
      {
        v14 = errorCopy;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError(errorCopy);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_updateHeaderWithKey:(id)key iv:(id)iv hmacKey:(id)hmacKey error:(id *)error
{
  keyCopy = key;
  ivCopy = iv;
  hmacKeyCopy = hmacKey;
  if (keyCopy)
  {
    if (ivCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    [HKHealthWrapEncryptor _updateHeaderWithKey:iv:hmacKey:error:];
    if (error)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  [HKHealthWrapEncryptor _updateHeaderWithKey:iv:hmacKey:error:];
  if (!ivCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (error)
  {
    goto LABEL_4;
  }

LABEL_12:
  [HKHealthWrapEncryptor _updateHeaderWithKey:iv:hmacKey:error:];
LABEL_4:
  v13 = objc_alloc_init(HKHealthWrapCodableMessageKey);
  [(HKHealthWrapCodableMessageKey *)v13 setKey:keyCopy];
  [(HKHealthWrapCodableMessageKey *)v13 setIv:ivCopy];
  data = [(HKHealthWrapCodableMessageKey *)v13 data];
  v15 = [(HKHealthWrapEncryptor *)self _encryptData:data withCertificate:self->_certificate error:error];

  if (v15)
  {
    [(HKHealthWrapCodableMessageHeader *)self->_header setEncryptedMessageKey:v15];
    v16 = [(HKHealthWrapEncryptor *)self _encryptData:hmacKeyCopy withCertificate:self->_certificate error:error];
    v17 = v16 != 0;
    if (v16)
    {
      [(HKHealthWrapCodableMessageHeader *)self->_header setEncryptedHMACKey:v16];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_startCryptorWithError:(id *)error
{
  self->_encryptedBytesCount = 0;
  cryptorRef = 0;
  v5 = [MEMORY[0x1E695DF88] dataWithLength:16];
  v6 = *MEMORY[0x1E697B308];
  if (!SecRandomCopyBytes(*MEMORY[0x1E697B308], [v5 length], objc_msgSend(v5, "mutableBytes")))
  {
    v8 = [MEMORY[0x1E695DF88] dataWithLength:self->_keySize];
    if (SecRandomCopyBytes(v6, self->_keySize, [v8 mutableBytes]))
    {
      [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:{@"Key generation: %d", *__error()}];
      v7 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v9 = [MEMORY[0x1E695DF88] dataWithLength:32];
    if (SecRandomCopyBytes(v6, 0x20uLL, [v9 mutableBytes]))
    {
      [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:{@"HMAC key generation: %d", *__error()}];
    }

    else if ([(HKHealthWrapEncryptor *)self _updateHeaderWithKey:v8 iv:v5 hmacKey:v9 error:error])
    {
      CCHmacInit(&self->_hmacContext, self->_hmacAlgorithm, [v9 bytes], 0x20uLL);
      CCHmacUpdate(&self->_hmacContext, [v5 bytes], objc_msgSend(v5, "length"));
      studyUUID = [(HKHealthWrapCodableMessageHeader *)self->_header studyUUID];
      if ([studyUUID length])
      {
        CCHmacUpdate(&self->_hmacContext, [studyUUID bytes], objc_msgSend(studyUUID, "length"));
      }

      data = bswap32([(HKHealthWrapCodableMessageHeader *)self->_header trailingHMACLength]);
      v13 = bswap32([(HKHealthWrapCodableMessageHeader *)self->_header trailingSHALength]);
      CCHmacUpdate(&self->_hmacContext, &data, 4uLL);
      CCHmacUpdate(&self->_hmacContext, &v13, 4uLL);
      v11 = CCCryptorCreate(0, self->_algorithm, self->_options, [v8 bytes], self->_keySize, objc_msgSend(v5, "bytes"), &cryptorRef);
      v7 = v11 == 0;
      if (v11)
      {
        [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:{@"cryptor create: %d", v11}];
      }

      else
      {
        self->_cryptor = cryptorRef;
      }

      goto LABEL_13;
    }

    v7 = 0;
LABEL_13:

    goto LABEL_14;
  }

  [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:{@"IV generation: %d", *__error()}];
  v7 = 0;
LABEL_15:

  return v7;
}

- (BOOL)startWithError:(id *)error
{
  CC_SHA256_Init(&self->_sha256Context);
  v5 = objc_alloc_init(HKHealthWrapCodableMessageHeader);
  header = self->_header;
  self->_header = v5;

  [(HKHealthWrapCodableMessageHeader *)self->_header setVersion:3];
  hk_dataForUUIDBytes = [(NSUUID *)self->_uuid hk_dataForUUIDBytes];
  [(HKHealthWrapCodableMessageHeader *)self->_header setUploadUUID:hk_dataForUUIDBytes];

  hk_dataForUUIDBytes2 = [(NSUUID *)self->_studyUUID hk_dataForUUIDBytes];
  [(HKHealthWrapCodableMessageHeader *)self->_header setStudyUUID:hk_dataForUUIDBytes2];

  [(HKHealthWrapCodableMessageHeader *)self->_header setTrailingHMACLength:32];
  [(HKHealthWrapCodableMessageHeader *)self->_header setTrailingSHALength:32];
  [(HKHealthWrapCodableMessageHeader *)self->_header setCompressed:self->_compressionEnabled];
  v9 = [MEMORY[0x1E695DF88] dataWithLength:0x2000];
  buffer = self->_buffer;
  self->_buffer = v9;

  if (self->_buffer && self->_header)
  {
    v11 = SecCertificateCopyData(self->_certificate);
    if (v11)
    {
      [(HKHealthWrapCodableMessageHeader *)self->_header setEncryptionIdentity:v11];
      if ([(HKHealthWrapEncryptor *)self _startCryptorWithError:error])
      {
        [(NSOutputStream *)self->_outputStream open];
        data = [(HKHealthWrapCodableMessageHeader *)self->_header data];
        v15 = bswap32([data length]);
        if ([(HKHealthWrapEncryptor *)self _writeStream:&v15 length:4 hash:1 error:error])
        {
          v13 = -[HKHealthWrapEncryptor _writeStream:length:hash:error:](self, "_writeStream:length:hash:error:", [data bytes], objc_msgSend(data, "length"), 1, error);
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_12;
      }
    }

    else
    {
      [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:@"Could not copy certificate"];
    }

    v13 = 0;
LABEL_12:

    return v13;
  }

  [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:@"Could not allocate buffer or header"];
  return 0;
}

- (BOOL)_writeStream:(const char *)stream length:(unint64_t)length hash:(BOOL)hash error:(id *)error
{
  lengthCopy = length;
  streamCopy = stream;
  if (hash)
  {
    if (length >= 0xFFFFFFFF)
    {
      [HKHealthWrapEncryptor _writeStream:length:hash:error:];
    }

    CC_SHA256_Update(&self->_sha256Context, stream, length);
  }

  if (!lengthCopy)
  {
    return 1;
  }

  while (1)
  {
    v10 = [(NSOutputStream *)self->_outputStream write:streamCopy maxLength:lengthCopy];
    if (v10 <= 0)
    {
      break;
    }

    v11 = lengthCopy >= v10;
    lengthCopy -= v10;
    if (!v11)
    {
      [HKHealthWrapEncryptor _writeStream:length:hash:error:];
    }

    streamCopy += v10;
    if (!lengthCopy)
    {
      return 1;
    }
  }

  if (!error)
  {
    return 0;
  }

  streamError = [(NSOutputStream *)self->_outputStream streamError];
  v14 = streamError;
  result = 0;
  *error = streamError;
  return result;
}

- (BOOL)_appendEncryptedBytes:(const char *)bytes length:(unint64_t)length error:(id *)error
{
  CCHmacUpdate(&self->_hmacContext, bytes, length);
  self->_encryptedBytesCount += length;

  return [(HKHealthWrapEncryptor *)self _writeStream:bytes length:length hash:1 error:error];
}

- (BOOL)_updateCryptorWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [dataCopy length];
  bytes = [dataCopy bytes];
  if ([dataCopy length])
  {
    v9 = 0;
    while (1)
    {
      v10 = v7 - v9 >= 0x1FF0 ? 8176 : v7 - v9;
      dataOutMoved = 0;
      v11 = CCCryptorUpdate(self->_cryptor, (bytes + v9), v10, [(NSMutableData *)self->_buffer mutableBytes], 0x2000uLL, &dataOutMoved);
      if (v11)
      {
        break;
      }

      if (dataOutMoved)
      {
        bytes2 = [(NSMutableData *)self->_buffer bytes];
        if (![(HKHealthWrapEncryptor *)self _appendEncryptedBytes:bytes2 length:dataOutMoved error:error])
        {
          goto LABEL_12;
        }
      }

      v9 += v10;
      if (v9 >= [dataCopy length])
      {
        goto LABEL_10;
      }
    }

    [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:{@"crpytor update: %d", v11}];
LABEL_12:
    v13 = 0;
  }

  else
  {
LABEL_10:
    v13 = 1;
  }

  return v13;
}

- (BOOL)_finalizeCryptorWithError:(id *)error
{
  dataOutMoved = 0;
  v5 = CCCryptorFinal(self->_cryptor, [(NSMutableData *)self->_buffer mutableBytes], 0x2000uLL, &dataOutMoved);
  if (v5)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:{@"crpytor update: %d", v5}];
    LOBYTE(v6) = 0;
  }

  else if (!dataOutMoved || (v7 = [(NSMutableData *)self->_buffer bytes], v6 = [(HKHealthWrapEncryptor *)self _appendEncryptedBytes:v7 length:dataOutMoved error:error]))
  {
    data = bswap64(self->_encryptedBytesCount);
    CCHmacUpdate(&self->_hmacContext, &data, 8uLL);
    LOBYTE(v6) = [(HKHealthWrapEncryptor *)self _writeStream:&data length:8 hash:1 error:error];
  }

  return v6;
}

- (BOOL)finalizeWithError:(id *)error
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(HKHealthWrapEncryptor *)self _finalizeCryptorWithError:?]&& (CCHmacFinal(&self->_hmacContext, macOut), [(HKHealthWrapEncryptor *)self _writeStream:macOut length:32 hash:1 error:error]))
  {
    CC_SHA256_Final(md, &self->_sha256Context);
    v5 = [(HKHealthWrapEncryptor *)self _writeStream:md length:32 hash:0 error:error];
    if (v5)
    {
      [(NSOutputStream *)self->_outputStream close];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)initWithOutputStream:certificate:algorithm:options:keySize:uuid:studyUUID:compressionEnabled:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"certificate != NULL" object:? file:? lineNumber:? description:?];
}

- (void)_copyAndVerifyPublicKeyFromCertificate:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"certificate != NULL" object:? file:? lineNumber:? description:?];
}

- (void)_copyAndVerifyPublicKeyFromCertificate:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"error != NULL" object:? file:? lineNumber:? description:?];
}

- (void)_encryptData:withCertificate:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"data != nil" object:? file:? lineNumber:? description:?];
}

- (void)_encryptData:withCertificate:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"certificate != NULL" object:? file:? lineNumber:? description:?];
}

- (void)_encryptData:withCertificate:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"error != NULL" object:? file:? lineNumber:? description:?];
}

- (void)_updateHeaderWithKey:iv:hmacKey:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"key != nil" object:? file:? lineNumber:? description:?];
}

- (void)_updateHeaderWithKey:iv:hmacKey:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"iv != nil" object:? file:? lineNumber:? description:?];
}

- (void)_updateHeaderWithKey:iv:hmacKey:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"error != NULL" object:? file:? lineNumber:? description:?];
}

@end