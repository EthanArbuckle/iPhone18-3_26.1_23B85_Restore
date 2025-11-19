@interface NSData(AppleMediaServices)
+ (__CFString)_labelForDataProtectionClass:()AppleMediaServices;
+ (id)_AESKeyForDataProtectionClass:()AppleMediaServices error:;
+ (id)_generateInitializationVectorDataWithError:()AppleMediaServices;
+ (id)ams_generateEncryptionKey;
+ (uint64_t)_accessibleAttributeForDataProtectionClass:()AppleMediaServices;
- (id)_compressGZIP;
- (id)_compressLZMA;
- (id)_decompressGZIP;
- (id)_decompressLZMA;
- (id)ams_SHA1;
- (id)ams_compressWithAlgorithm:()AppleMediaServices;
- (id)ams_decompressWithAlgorithm:()AppleMediaServices;
- (id)ams_decryptUsingDataProtectionClass:()AppleMediaServices initializationVectorData:tagData:error:;
- (id)ams_decryptUsingKey:()AppleMediaServices initializationVectorData:tagData:error:;
- (id)ams_urlSafeBase64EncodedString;
- (void)ams_encryptDataUsingDataProtectionClass:()AppleMediaServices error:;
- (void)ams_encryptDataUsingKey:()AppleMediaServices error:;
@end

@implementation NSData(AppleMediaServices)

- (id)_compressGZIP
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 bytes];
  v4 = [a1 length];
  v5 = 0;
  if (v3)
  {
    v6 = v4;
    if (v4)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v4];
      memset(&v11.avail_in, 0, 104);
      v11.avail_in = v6;
      v11.avail_out = v6;
      v11.next_out = [v7 mutableBytes];
      if (v7 && !deflateInit2_(&v11, -1, 8, 31, 8, 0, "1.2.12", 112) && (v8 = deflate(&v11, 4), v9 = deflateEnd(&v11), v8 == 1) && !v9 && v6 == v11.total_in)
      {
        [v7 setLength:v11.total_out];
        v5 = [v7 copy];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  objc_autoreleasePoolPop(v2);

  return v5;
}

- (id)ams_SHA1
{
  if ([a1 length])
  {
    v2 = [MEMORY[0x1E695DF88] dataWithLength:20];
    CC_SHA1([a1 bytes], objc_msgSend(a1, "length"), objc_msgSend(v2, "mutableBytes"));
    v3 = [v2 copy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_decompressGZIP
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&strm.avail_in, 0, 104);
  strm.avail_in = [a1 length];
  strm.next_in = [a1 bytes];
  v2 = 0;
  if (!inflateInit2_(&strm, 31, "1.2.12", 112))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
    while (1)
    {
      strm.avail_out = 0x4000;
      strm.next_out = v6;
      v3 = inflate(&strm, 0);
      if (v3 > 1)
      {
        break;
      }

      v4 = v3;
      if (strm.avail_out != 0x4000)
      {
        [v2 appendBytes:v6 length:0x4000 - strm.avail_out];
      }

      if (v4)
      {
        inflateEnd(&strm);
        goto LABEL_9;
      }
    }

    inflateEnd(&strm);

    v2 = 0;
  }

LABEL_9:

  return v2;
}

- (id)ams_compressWithAlgorithm:()AppleMediaServices
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v3 = [a1 _compressGZIP];
  }

  else
  {
    v3 = [a1 _compressLZMA];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (id)ams_decompressWithAlgorithm:()AppleMediaServices
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v3 = [a1 _decompressGZIP];
  }

  else
  {
    v3 = [a1 _decompressLZMA];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (id)_compressLZMA
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v10 = 0;
  v3 = [a1 compressedDataUsingAlgorithm:2 error:&v10];
  v4 = v10;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      *buf = 138543874;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error compressing LZMA data. %{public}@", buf, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v2);

  return v3;
}

- (id)_decompressLZMA
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v10 = 0;
  v3 = [a1 decompressedDataUsingAlgorithm:2 error:&v10];
  v4 = v10;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      *buf = 138543874;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error decompressing LZMA data. %{public}@", buf, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v2);

  return v3;
}

- (id)ams_urlSafeBase64EncodedString
{
  v1 = [a1 base64EncodedStringWithOptions:0];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  v3 = [v2 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

  if (([v3 length] & 3) != 0 && (v4 = objc_msgSend(v3, "length") & 3) != 0)
  {
    do
    {
      v5 = [v3 stringByAppendingString:@"="];

      v3 = v5;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (id)ams_decryptUsingDataProtectionClass:()AppleMediaServices initializationVectorData:tagData:error:
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E695DEF0] _AESKeyForDataProtectionClass:a3 error:a6];
  if (v12)
  {
    v13 = [a1 ams_decryptUsingKey:v12 initializationVectorData:v10 tagData:v11 error:a6];
  }

  else
  {
    v14 = +[AMSLogConfig sharedConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2048;
      v20 = a3;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get the AES key. Data decryption will fail. dataProtectionClass = %lu", &v17, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)ams_decryptUsingKey:()AppleMediaServices initializationVectorData:tagData:error:
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E695DF88];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 dataWithLength:{objc_msgSend(a1, "length")}];
  [v12 bytes];
  [v12 length];

  [v11 bytes];
  [v11 length];

  [a1 bytes];
  v14 = [a1 length];
  v15 = [v13 mutableBytes];
  v16 = [v10 bytes];
  v17 = [v10 length];

  v18 = CCCryptorGCMOneshotDecrypt();
  if (v18)
  {
    v19 = v18;
    v20 = v13;
    v21 = [AMSLogConfig sharedConfig:v14];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v21 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v32 = objc_opt_class();
      v33 = 1024;
      v34 = v19;
      _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Data decryption failed. status = %d", buf, 0x12u);
    }

    if (a6)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decrypt data. status = %d", v19];
      v29 = @"AMSCryptoErrorCode";
      v24 = [MEMORY[0x1E696AD98] numberWithInt:v19];
      v30 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *a6 = AMSCustomError(@"AMSErrorDomain", 4, @"Data Encryption", v23, v25, 0);
    }

    v26 = 0;
  }

  else
  {
    v26 = v13;
    v20 = v13;
  }

  return v26;
}

- (void)ams_encryptDataUsingDataProtectionClass:()AppleMediaServices error:
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E695DEF0] _AESKeyForDataProtectionClass:? error:?];
  if (v8)
  {
    [a1 ams_encryptDataUsingKey:v8 error:a3];
  }

  else
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get the AES key. Data encryption will fail. dataProtectionClass = %lu", &v11, 0x16u);
    }

    __copy_constructor_8_8_s0_s8_s16(a4);
  }
}

- (void)ams_encryptDataUsingKey:()AppleMediaServices error:
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if ([v7 length] == 32)
  {
    v8 = [MEMORY[0x1E695DEF0] _generateInitializationVectorDataWithError:a3];
    if (v8)
    {
      v24 = a3;
      v26 = a4;
      v9 = [MEMORY[0x1E695DF88] dataWithLength:16];
      v10 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(a1, "length")}];
      [v7 bytes];
      [v7 length];
      [v8 bytes];
      [v8 length];
      [a1 bytes];
      v11 = [a1 length];
      v12 = [v10 mutableBytes];
      v22 = [v9 mutableBytes];
      v23 = [v9 length];
      v13 = CCCryptorGCMOneshotEncrypt();
      if (v13)
      {
        v14 = v13;
        v25 = v10;
        v15 = v9;
        v16 = [AMSLogConfig sharedConfig:v11];
        if (!v16)
        {
          v16 = +[AMSLogConfig sharedConfig];
        }

        v17 = [v16 OSLogObject];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v28 = objc_opt_class();
          v29 = 1024;
          LODWORD(v30) = v14;
          _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Data encryption failed. status = %d", buf, 0x12u);
        }

        if (v24)
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to encrypt data. status = %d", v14];
          *v24 = AMSError(3, @"Data Encryption", v18, 0);
        }

        __copy_constructor_8_8_s0_s8_s16(v26);
        v10 = v25;
      }

      else
      {
        *v26 = v10;
        v26[1] = v8;
        v26[2] = v9;
        v15 = v9;
      }
    }

    else
    {
      __copy_constructor_8_8_s0_s8_s16(a4);
    }
  }

  else
  {
    v19 = +[AMSLogConfig sharedConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v28 = objc_opt_class();
      v29 = 2048;
      v30 = [v7 length];
      v31 = 2048;
      v32 = 32;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@: The encryption key isn't valid. Data encryption will fail. length = %lu, requiredLength = %lu", buf, 0x20u);
    }

    if (a3)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The encryption key isn't valid. Data encryption will fail. length = %lu, requiredLength = %lu", objc_msgSend(v7, "length"), 32];
      *a3 = AMSError(3, @"Data Encryption", v21, 0);
    }

    __copy_constructor_8_8_s0_s8_s16(a4);
  }
}

+ (id)ams_generateEncryptionKey
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF88] dataWithLength:32];
  Bytes = CCRandomGenerateBytes([v0 mutableBytes], 0x20uLL);
  if (Bytes)
  {
    v2 = Bytes;
    v3 = +[AMSLogConfig sharedConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543618;
      v8 = objc_opt_class();
      v9 = 1024;
      v10 = v2;
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to generate an encryption/decryption key. status = %d", &v7, 0x12u);
    }

    v5 = 0;
  }

  else
  {
    v5 = v0;
  }

  return v5;
}

+ (uint64_t)_accessibleAttributeForDataProtectionClass:()AppleMediaServices
{
  if (a3 == 1)
  {
    return *MEMORY[0x1E697ABE0];
  }

  else
  {
    return 0;
  }
}

+ (id)_AESKeyForDataProtectionClass:()AppleMediaServices error:
{
  v46 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_164 != -1)
  {
    dispatch_once(&_MergedGlobals_164, &__block_literal_global_156);
  }

  v7 = qword_1ED6E32B8;
  if (+[AMSUnitTests isRunningUnitTests])
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Running unit tests. We won't go to the keychain for the AES key. dataProtectionClass = %lu", buf, 0x16u);
    }

    v10 = [AMSUnitTests encryptionKeyForDataProtectionClass:a3];
  }

  else
  {
    if (qword_1ED6E32C0 != -1)
    {
      dispatch_once(&qword_1ED6E32C0, &__block_literal_global_50_1);
    }

    v11 = qword_1ED6E32C8;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = __Block_byref_object_copy__78;
    v44 = __Block_byref_object_dispose__78;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v45 = [v11 objectForKeyedSubscript:v12];

    v13 = *(*&buf[8] + 40);
    if (v13)
    {
      v10 = v13;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], @"apple");
      v15 = [a1 _labelForDataProtectionClass:a3];
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC40], v15);
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AD30], *MEMORY[0x1E697AD48]);
      v16 = [a1 _labelForDataProtectionClass:a3];
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ADC8], v16);
      v17 = *MEMORY[0x1E695E4D0];
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B390], *MEMORY[0x1E695E4D0]);
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B020]);
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B318], v17);
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__NSData_AppleMediaServices___AESKeyForDataProtectionClass_error___block_invoke_52;
      block[3] = &unk_1E73BE1D8;
      block[4] = &v32;
      block[5] = buf;
      block[6] = Mutable;
      dispatch_sync(v7, block);
      if (*(v33 + 6) == -25300)
      {
        v18 = +[AMSLogConfig sharedConfig];
        if (!v18)
        {
          v18 = +[AMSLogConfig sharedConfig];
        }

        v19 = [v18 OSLogObject];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_opt_class();
          *v36 = 138543618;
          v37 = v20;
          v38 = 2048;
          v39 = a3;
          _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Generating an AMSDataProtectionClass encryption/decryption key. dataProtectionClass = %lu", v36, 0x16u);
        }

        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __66__NSData_AppleMediaServices___AESKeyForDataProtectionClass_error___block_invoke_53;
        v30[3] = &unk_1E73BE200;
        v30[6] = Mutable;
        v30[7] = a1;
        v30[8] = a3;
        v30[4] = &v32;
        v30[5] = buf;
        dispatch_barrier_sync(v7, v30);
      }

      CFRelease(Mutable);
      if (*(v33 + 6))
      {
        v21 = +[AMSLogConfig sharedConfig];
        if (!v21)
        {
          v21 = +[AMSLogConfig sharedConfig];
        }

        v22 = [v21 OSLogObject];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_opt_class();
          v24 = *(v33 + 6);
          *v36 = 138543874;
          v37 = v23;
          v38 = 2048;
          v39 = a3;
          v40 = 1024;
          v41 = v24;
          _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch an AMSDataProtectionClass encryption/decryption key. dataProtectionClass = %lu | error = %d", v36, 0x1Cu);
        }

        if (a4)
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to fetch an AMSDataProtectionClass encryption/decryption key. error = %d", *(v33 + 6)];
          *a4 = AMSError(0, @"Data Encryption", v25, 0);
        }

        v10 = 0;
      }

      else
      {
        v26 = *(*&buf[8] + 40);
        if (v26)
        {
          v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
          [v11 setObject:v26 forKeyedSubscript:v27];

          v28 = *(*&buf[8] + 40);
        }

        else
        {
          v28 = 0;
        }

        v10 = v28;
      }

      _Block_object_dispose(&v32, 8);
    }

    _Block_object_dispose(buf, 8);
  }

  return v10;
}

+ (id)_generateInitializationVectorDataWithError:()AppleMediaServices
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF88] dataWithLength:16];
  Bytes = CCRandomGenerateBytes([v4 mutableBytes], 0x10uLL);
  if (Bytes)
  {
    v6 = Bytes;
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = objc_opt_class();
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to generate IV data. Data encryption will fail. status = %d", buf, 0x12u);
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to generate IV data. status = %d", v6];
    if (a3)
    {
      *a3 = AMSError(3, @"Data Encryption", v9, 0);
    }

    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

+ (__CFString)_labelForDataProtectionClass:()AppleMediaServices
{
  if (a3)
  {
    return @"AMS Class C Encryption Key";
  }

  else
  {
    return @"None";
  }
}

@end