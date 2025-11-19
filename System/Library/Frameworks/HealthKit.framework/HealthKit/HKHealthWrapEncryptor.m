@interface HKHealthWrapEncryptor
- (BOOL)_appendEncryptedBytes:(const char *)a3 length:(unint64_t)a4 error:(id *)a5;
- (BOOL)_finalizeCryptorWithError:(id *)a3;
- (BOOL)_startCryptorWithError:(id *)a3;
- (BOOL)_updateCryptorWithData:(id)a3 error:(id *)a4;
- (BOOL)_updateHeaderWithKey:(id)a3 iv:(id)a4 hmacKey:(id)a5 error:(id *)a6;
- (BOOL)_writeStream:(const char *)a3 length:(unint64_t)a4 hash:(BOOL)a5 error:(id *)a6;
- (BOOL)finalizeWithError:(id *)a3;
- (BOOL)startWithError:(id *)a3;
- (HKHealthWrapEncryptor)initWithOutputStream:(id)a3 certificate:(__SecCertificate *)a4 algorithm:(unsigned int)a5 options:(unsigned int)a6 keySize:(unsigned int)a7 uuid:(id)a8 studyUUID:(id)a9 compressionEnabled:(BOOL)a10;
- (__SecKey)_copyAndVerifyPublicKeyFromCertificate:(__SecCertificate *)a3 error:(id *)a4;
- (id)_encryptData:(id)a3 withCertificate:(__SecCertificate *)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation HKHealthWrapEncryptor

- (HKHealthWrapEncryptor)initWithOutputStream:(id)a3 certificate:(__SecCertificate *)a4 algorithm:(unsigned int)a5 options:(unsigned int)a6 keySize:(unsigned int)a7 uuid:(id)a8 studyUUID:(id)a9 compressionEnabled:(BOOL)a10
{
  v16 = a3;
  v17 = a8;
  v18 = a9;
  v22.receiver = self;
  v22.super_class = HKHealthWrapEncryptor;
  v19 = [(HKHealthWrapEncryptor *)&v22 init];
  if (v19)
  {
    if (!a4)
    {
      [HKHealthWrapEncryptor initWithOutputStream:certificate:algorithm:options:keySize:uuid:studyUUID:compressionEnabled:];
    }

    objc_storeStrong(&v19->_outputStream, a3);
    v19->_certificate = CFRetain(a4);
    v19->_algorithm = a5;
    v19->_options = a6;
    v19->_keySize = a7;
    v19->_cryptor = 0;
    objc_storeStrong(&v19->_uuid, a8);
    objc_storeStrong(&v19->_studyUUID, a9);
    v19->_hmacAlgorithm = 2;
    v19->_encryptedBytesCount = 0;
    v19->_compressionEnabled = a10;
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

- (__SecKey)_copyAndVerifyPublicKeyFromCertificate:(__SecCertificate *)a3 error:(id *)a4
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKHealthWrapEncryptor _copyAndVerifyPublicKeyFromCertificate:error:];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  [HKHealthWrapEncryptor _copyAndVerifyPublicKeyFromCertificate:error:];
LABEL_3:
  v6 = SecCertificateCopyKey(a3);
  if (!v6)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:100 format:@"No public key found in certificate"];
  }

  return v6;
}

- (id)_encryptData:(id)a3 withCertificate:(__SecCertificate *)a4 error:(id *)a5
{
  v8 = a3;
  if (v8)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_15:
    [HKHealthWrapEncryptor _encryptData:withCertificate:error:];
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  [HKHealthWrapEncryptor _encryptData:withCertificate:error:];
  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (a5)
  {
    goto LABEL_4;
  }

LABEL_16:
  [HKHealthWrapEncryptor _encryptData:withCertificate:error:];
LABEL_4:
  v9 = [(HKHealthWrapEncryptor *)self _copyAndVerifyPublicKeyFromCertificate:a4 error:a5];
  if (v9)
  {
    v10 = v9;
    error = 0;
    v11 = SecKeyCreateEncryptedData(v9, *MEMORY[0x1E697B170], v8, &error);
    CFRelease(v10);
    v12 = error;
    v13 = v12;
    if (v12)
    {
      if (a5)
      {
        v14 = v12;
        *a5 = v13;
      }

      else
      {
        _HKLogDroppedError(v12);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_updateHeaderWithKey:(id)a3 iv:(id)a4 hmacKey:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:
    [HKHealthWrapEncryptor _updateHeaderWithKey:iv:hmacKey:error:];
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  [HKHealthWrapEncryptor _updateHeaderWithKey:iv:hmacKey:error:];
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (a6)
  {
    goto LABEL_4;
  }

LABEL_12:
  [HKHealthWrapEncryptor _updateHeaderWithKey:iv:hmacKey:error:];
LABEL_4:
  v13 = objc_alloc_init(HKHealthWrapCodableMessageKey);
  [(HKHealthWrapCodableMessageKey *)v13 setKey:v10];
  [(HKHealthWrapCodableMessageKey *)v13 setIv:v11];
  v14 = [(HKHealthWrapCodableMessageKey *)v13 data];
  v15 = [(HKHealthWrapEncryptor *)self _encryptData:v14 withCertificate:self->_certificate error:a6];

  if (v15)
  {
    [(HKHealthWrapCodableMessageHeader *)self->_header setEncryptedMessageKey:v15];
    v16 = [(HKHealthWrapEncryptor *)self _encryptData:v12 withCertificate:self->_certificate error:a6];
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

- (BOOL)_startCryptorWithError:(id *)a3
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
      [MEMORY[0x1E696ABC0] hk_assignError:a3 code:100 format:{@"Key generation: %d", *__error()}];
      v7 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v9 = [MEMORY[0x1E695DF88] dataWithLength:32];
    if (SecRandomCopyBytes(v6, 0x20uLL, [v9 mutableBytes]))
    {
      [MEMORY[0x1E696ABC0] hk_assignError:a3 code:100 format:{@"HMAC key generation: %d", *__error()}];
    }

    else if ([(HKHealthWrapEncryptor *)self _updateHeaderWithKey:v8 iv:v5 hmacKey:v9 error:a3])
    {
      CCHmacInit(&self->_hmacContext, self->_hmacAlgorithm, [v9 bytes], 0x20uLL);
      CCHmacUpdate(&self->_hmacContext, [v5 bytes], objc_msgSend(v5, "length"));
      v10 = [(HKHealthWrapCodableMessageHeader *)self->_header studyUUID];
      if ([v10 length])
      {
        CCHmacUpdate(&self->_hmacContext, [v10 bytes], objc_msgSend(v10, "length"));
      }

      data = bswap32([(HKHealthWrapCodableMessageHeader *)self->_header trailingHMACLength]);
      v13 = bswap32([(HKHealthWrapCodableMessageHeader *)self->_header trailingSHALength]);
      CCHmacUpdate(&self->_hmacContext, &data, 4uLL);
      CCHmacUpdate(&self->_hmacContext, &v13, 4uLL);
      v11 = CCCryptorCreate(0, self->_algorithm, self->_options, [v8 bytes], self->_keySize, objc_msgSend(v5, "bytes"), &cryptorRef);
      v7 = v11 == 0;
      if (v11)
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a3 code:100 format:{@"cryptor create: %d", v11}];
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

  [MEMORY[0x1E696ABC0] hk_assignError:a3 code:100 format:{@"IV generation: %d", *__error()}];
  v7 = 0;
LABEL_15:

  return v7;
}

- (BOOL)startWithError:(id *)a3
{
  CC_SHA256_Init(&self->_sha256Context);
  v5 = objc_alloc_init(HKHealthWrapCodableMessageHeader);
  header = self->_header;
  self->_header = v5;

  [(HKHealthWrapCodableMessageHeader *)self->_header setVersion:3];
  v7 = [(NSUUID *)self->_uuid hk_dataForUUIDBytes];
  [(HKHealthWrapCodableMessageHeader *)self->_header setUploadUUID:v7];

  v8 = [(NSUUID *)self->_studyUUID hk_dataForUUIDBytes];
  [(HKHealthWrapCodableMessageHeader *)self->_header setStudyUUID:v8];

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
      if ([(HKHealthWrapEncryptor *)self _startCryptorWithError:a3])
      {
        [(NSOutputStream *)self->_outputStream open];
        v12 = [(HKHealthWrapCodableMessageHeader *)self->_header data];
        v15 = bswap32([v12 length]);
        if ([(HKHealthWrapEncryptor *)self _writeStream:&v15 length:4 hash:1 error:a3])
        {
          v13 = -[HKHealthWrapEncryptor _writeStream:length:hash:error:](self, "_writeStream:length:hash:error:", [v12 bytes], objc_msgSend(v12, "length"), 1, a3);
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
      [MEMORY[0x1E696ABC0] hk_assignError:a3 code:100 format:@"Could not copy certificate"];
    }

    v13 = 0;
LABEL_12:

    return v13;
  }

  [MEMORY[0x1E696ABC0] hk_assignError:a3 code:100 format:@"Could not allocate buffer or header"];
  return 0;
}

- (BOOL)_writeStream:(const char *)a3 length:(unint64_t)a4 hash:(BOOL)a5 error:(id *)a6
{
  v7 = a4;
  v8 = a3;
  if (a5)
  {
    if (a4 >= 0xFFFFFFFF)
    {
      [HKHealthWrapEncryptor _writeStream:length:hash:error:];
    }

    CC_SHA256_Update(&self->_sha256Context, a3, a4);
  }

  if (!v7)
  {
    return 1;
  }

  while (1)
  {
    v10 = [(NSOutputStream *)self->_outputStream write:v8 maxLength:v7];
    if (v10 <= 0)
    {
      break;
    }

    v11 = v7 >= v10;
    v7 -= v10;
    if (!v11)
    {
      [HKHealthWrapEncryptor _writeStream:length:hash:error:];
    }

    v8 += v10;
    if (!v7)
    {
      return 1;
    }
  }

  if (!a6)
  {
    return 0;
  }

  v13 = [(NSOutputStream *)self->_outputStream streamError];
  v14 = v13;
  result = 0;
  *a6 = v13;
  return result;
}

- (BOOL)_appendEncryptedBytes:(const char *)a3 length:(unint64_t)a4 error:(id *)a5
{
  CCHmacUpdate(&self->_hmacContext, a3, a4);
  self->_encryptedBytesCount += a4;

  return [(HKHealthWrapEncryptor *)self _writeStream:a3 length:a4 hash:1 error:a5];
}

- (BOOL)_updateCryptorWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 length];
  v8 = [v6 bytes];
  if ([v6 length])
  {
    v9 = 0;
    while (1)
    {
      v10 = v7 - v9 >= 0x1FF0 ? 8176 : v7 - v9;
      dataOutMoved = 0;
      v11 = CCCryptorUpdate(self->_cryptor, (v8 + v9), v10, [(NSMutableData *)self->_buffer mutableBytes], 0x2000uLL, &dataOutMoved);
      if (v11)
      {
        break;
      }

      if (dataOutMoved)
      {
        v12 = [(NSMutableData *)self->_buffer bytes];
        if (![(HKHealthWrapEncryptor *)self _appendEncryptedBytes:v12 length:dataOutMoved error:a4])
        {
          goto LABEL_12;
        }
      }

      v9 += v10;
      if (v9 >= [v6 length])
      {
        goto LABEL_10;
      }
    }

    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:100 format:{@"crpytor update: %d", v11}];
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

- (BOOL)_finalizeCryptorWithError:(id *)a3
{
  dataOutMoved = 0;
  v5 = CCCryptorFinal(self->_cryptor, [(NSMutableData *)self->_buffer mutableBytes], 0x2000uLL, &dataOutMoved);
  if (v5)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a3 code:100 format:{@"crpytor update: %d", v5}];
    LOBYTE(v6) = 0;
  }

  else if (!dataOutMoved || (v7 = [(NSMutableData *)self->_buffer bytes], v6 = [(HKHealthWrapEncryptor *)self _appendEncryptedBytes:v7 length:dataOutMoved error:a3]))
  {
    data = bswap64(self->_encryptedBytesCount);
    CCHmacUpdate(&self->_hmacContext, &data, 8uLL);
    LOBYTE(v6) = [(HKHealthWrapEncryptor *)self _writeStream:&data length:8 hash:1 error:a3];
  }

  return v6;
}

- (BOOL)finalizeWithError:(id *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(HKHealthWrapEncryptor *)self _finalizeCryptorWithError:?]&& (CCHmacFinal(&self->_hmacContext, macOut), [(HKHealthWrapEncryptor *)self _writeStream:macOut length:32 hash:1 error:a3]))
  {
    CC_SHA256_Final(md, &self->_sha256Context);
    v5 = [(HKHealthWrapEncryptor *)self _writeStream:md length:32 hash:0 error:a3];
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