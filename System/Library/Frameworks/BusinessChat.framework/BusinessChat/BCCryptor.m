@interface BCCryptor
+ (void)encryptData:(id)a3 key:(id)a4 completion:(id)a5;
@end

@implementation BCCryptor

+ (void)encryptData:(id)a3 key:(id)a4 completion:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 length])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:1];
    if (v10)
    {
      v11 = LogCategory_Daemon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_236EA0000, v11, OS_LOG_TYPE_DEFAULT, "BCCryptor: encrypt data for key %@", &buf, 0xCu);
      }

      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __40__BCCryptor_encryptData_key_completion___block_invoke;
      v32 = &unk_278A0E8C8;
      v34 = v9;
      v33 = v7;
      v12 = &v29;
      v13 = v10;
      objc_opt_self();
      v14 = *MEMORY[0x277CDC000];
      v15 = *MEMORY[0x277CDC028];
      v42[0] = *MEMORY[0x277CDBFE0];
      v42[1] = v15;
      v16 = *MEMORY[0x277CDC030];
      *&buf = v14;
      *(&buf + 1) = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v42 count:{2, v29, v30}];
      error = 0;
      v18 = SecKeyCreateWithData(v13, v17, &error);

      v19 = LogCategory_Daemon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 138412290;
        *&v41[4] = error;
        _os_log_impl(&dword_236EA0000, v19, OS_LOG_TYPE_DEFAULT, "BCCryptor: publicKeyFromData %@", v41, 0xCu);
      }

      if (v18)
      {
        v31(v12, v18, 0);
        CFRelease(v18);
      }

      else
      {
        v25 = objc_alloc(MEMORY[0x277CCA9B8]);
        v40 = *MEMORY[0x277CCA450];
        *v41 = @"Failed creating key";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
        v27 = [v25 initWithDomain:@"com.apple.icloud.messages.business.cryptor" code:2 userInfo:v26];

        v31(v12, 0, v27);
      }

      v23 = v34;
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x277CCA9B8]);
      v36 = *MEMORY[0x277CCA450];
      v37 = @"Key is not UTF8";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v24 = [v22 initWithDomain:@"com.apple.icloud.messages.business.cryptor" code:1 userInfo:v23];
      (*(v9 + 2))(v9, 0, v24);
    }
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x277CCA9B8]);
    v38 = *MEMORY[0x277CCA450];
    v39 = @"Empty string received for key";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v10 = [v20 initWithDomain:@"com.apple.icloud.messages.business.cryptor" code:0 userInfo:v21];

    (*(v9 + 2))(v9, 0, v10);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __40__BCCryptor_encryptData_key_completion___block_invoke(uint64_t a1, __SecKey *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_Daemon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = a2;
    _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCCryptor: public key %@", buf, 0xCu);
  }

  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (a2 && (v7 = *MEMORY[0x277CDC320], SecKeyIsAlgorithmSupported(a2, kSecKeyOperationTypeEncrypt, *MEMORY[0x277CDC320])))
  {
    error = 0;
    v8 = SecKeyCreateEncryptedData(a2, v7, *(a1 + 32), &error);
    v9 = [(__CFData *)v8 base64EncodedStringWithOptions:0];
    v10 = LogCategory_Daemon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = error;
      _os_log_impl(&dword_236EA0000, v10, OS_LOG_TYPE_DEFAULT, "BCCryptor: Encryption result %@", buf, 0xCu);
    }

    v11 = LogCategory_Daemon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(__CFData *)v8 description];
      *buf = 138412290;
      v28 = v12;
      _os_log_impl(&dword_236EA0000, v11, OS_LOG_TYPE_DEFAULT, "BCCryptor: Encrypted data %@", buf, 0xCu);
    }

    v13 = *(a1 + 40);
    if (v9)
    {
      (*(v13 + 16))(v13, v9, 0);
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x277CCA9B8]);
      v23 = *MEMORY[0x277CCA450];
      v24 = @"Unable to encrypt token";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v20 = [v18 initWithDomain:@"com.apple.icloud.messages.business.cryptor" code:4 userInfo:v19];
      (*(v13 + 16))(v13, 0, v20);
    }
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v25 = *MEMORY[0x277CCA450];
    v26 = @"Public key invalid";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v17 = [v15 initWithDomain:@"com.apple.icloud.messages.business.cryptor" code:3 userInfo:v16];
    (*(v14 + 16))(v14, 0, v17);
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end