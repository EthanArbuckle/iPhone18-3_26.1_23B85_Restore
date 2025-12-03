@interface FMDCryptoUtil
+ (BOOL)generatePublicPrivateKeyPair:(id *)pair privateKey:(id *)key;
+ (__SecKey)dataToKey:(id)key isPublic:(BOOL)public;
+ (id)decryptData:(id)data privateKeyData:(id)keyData;
+ (id)keyToData:(__SecKey *)data;
+ (id)publicKeyFromPrivateKey:(id)key;
+ (void)testCrypto;
+ (void)testCrypto2:(id)crypto2 privateKey:(id)key;
@end

@implementation FMDCryptoUtil

+ (BOOL)generatePublicPrivateKeyPair:(id *)pair privateKey:(id *)key
{
  v16[0] = kSecAttrKeyType;
  v16[1] = kSecAttrKeySizeInBits;
  v17[0] = kSecAttrKeyTypeEC;
  v17[1] = &off_100028CA8;
  v6 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  error = 0;
  v7 = SecKeyCreateRandomKey(v6, &error);
  if (error)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  v9 = !v8;
  if (v8)
  {
    v11 = sub_100004FC8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = error;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "### key gen completed with %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = v7;
    *pair = [FMDCryptoUtil keyToData:SecKeyCopyPublicKey(v7)];
    *key = [FMDCryptoUtil keyToData:v10];
  }

  return v9;
}

+ (id)decryptData:(id)data privateKeyData:(id)keyData
{
  dataCopy = data;
  keyDataCopy = keyData;
  v7 = keyDataCopy;
  v8 = 0;
  if (dataCopy && keyDataCopy)
  {
    v9 = sub_100004FC8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      fm_hexString = [v7 fm_hexString];
      *buf = 138412546;
      v21 = fm_hexString;
      v22 = 2112;
      v23 = dataCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "### privateKey = %@ cipherText = %@", buf, 0x16u);
    }

    v11 = [objc_opt_class() dataToKey:v7 isPublic:0];
    v12 = sub_100004FC8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "### decoded privateKey = %@", buf, 0xCu);
    }

    error = 0;
    v8 = SecKeyCreateDecryptedData(v11, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, dataCopy, &error);
    if (v8)
    {
      v13 = sub_100004FC8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        bytes = [(__CFData *)v8 bytes];
        *buf = 136315138;
        v21 = bytes;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "### decryption success with cipherText = %s", buf, 0xCu);
      }

      v15 = v8;
    }

    else
    {
      v16 = error;
      v17 = sub_100004FC8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100015DEC();
      }
    }
  }

  return v8;
}

+ (void)testCrypto
{
  v29[0] = kSecAttrKeyType;
  v29[1] = kSecAttrKeySizeInBits;
  v30[0] = kSecAttrKeyTypeEC;
  v30[1] = &off_100028CA8;
  v3 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  error = 0;
  v4 = SecKeyCreateRandomKey(v3, &error);
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = error;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "### key gen completed with %@", buf, 0xCu);
  }

  v6 = SecKeyCopyPublicKey(v4);
  if (SecKeyIsAlgorithmSupported(v6, kSecKeyOperationTypeEncrypt, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM))
  {
    v7 = [NSData dataWithBytes:"This is a secret!\n" length:19];
    v8 = [v7 length];
    v9 = SecKeyGetBlockSize(v6) - 130;
    v10 = sub_100004FC8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      BlockSize = SecKeyGetBlockSize(v6);
      *buf = 134217984;
      v26 = (BlockSize - 130);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "### max message size %lu", buf, 0xCu);
    }

    if (v8 >= v9)
    {
      v12 = sub_100004FC8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100015E60(v7);
      }
    }

    else
    {
      v23 = 0;
      v12 = SecKeyCreateEncryptedData(v6, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v7, &v23);
      if (v12)
      {
        v13 = sub_100004FC8();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          bytes = [v12 bytes];
          *buf = 138412546;
          v26 = v12;
          v27 = 2080;
          v28 = bytes;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "### encryption success with cipherText = %@\n cipherString = %s", buf, 0x16u);
        }

        v23 = 0;
        v15 = SecKeyCreateDecryptedData(v4, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v12, &v23);
        if (v15)
        {
          v16 = sub_100004FC8();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            bytes2 = [(__CFData *)v15 bytes];
            *buf = 136315138;
            v26 = bytes2;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "### decryption success with cipherText = %s", buf, 0xCu);
          }

          v18 = objc_opt_class();
          v19 = [self keyToData:v6];
          v20 = [self keyToData:v4];
          [v18 testCrypto2:v19 privateKey:v20];
        }

        else
        {
          v19 = v23;
          v20 = sub_100004FC8();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100015EEC(v19);
          }
        }
      }

      else
      {
        v21 = v23;
        v22 = sub_100004FC8();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100015F8C();
        }
      }
    }
  }

  else
  {
    v7 = sub_100004FC8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100016000();
    }
  }
}

+ (void)testCrypto2:(id)crypto2 privateKey:(id)key
{
  crypto2Copy = crypto2;
  keyCopy = key;
  v7 = [objc_opt_class() dataToKey:keyCopy isPublic:0];
  v8 = [objc_opt_class() dataToKey:crypto2Copy isPublic:1];
  v9 = sub_100004FC8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = crypto2Copy;
    v28 = 2112;
    v29 = keyCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "### publicKeyData = %@ privateKeyData = %@", buf, 0x16u);
  }

  v10 = sub_100004FC8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    bytes = [crypto2Copy bytes];
    bytes2 = [keyCopy bytes];
    *buf = 136315394;
    v27 = bytes;
    v28 = 2080;
    v29 = bytes2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "### string publicKeyData = %s privateKeyData = %s", buf, 0x16u);
  }

  if (SecKeyIsAlgorithmSupported(v8, kSecKeyOperationTypeEncrypt, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM))
  {
    v13 = [NSData dataWithBytes:"This is a secret!\n" length:19];
    v14 = [v13 length];
    v15 = SecKeyGetBlockSize(v8) - 130;
    v16 = sub_100004FC8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      BlockSize = SecKeyGetBlockSize(v8);
      *buf = 134217984;
      v27 = (BlockSize - 130);
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "### max message size %lu", buf, 0xCu);
    }

    if (v14 >= v15)
    {
      v18 = sub_100004FC8();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100015E60(v13);
      }
    }

    else
    {
      error = 0;
      v18 = SecKeyCreateEncryptedData(v8, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v13, &error);
      if (v18)
      {
        v19 = sub_100004FC8();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          bytes3 = [v18 bytes];
          *buf = 138412546;
          v27 = v18;
          v28 = 2080;
          v29 = bytes3;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "### encryption success with cipherText = %@\n cipherString = %s", buf, 0x16u);
        }

        error = 0;
        v21 = SecKeyCreateDecryptedData(v7, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v18, &error);
        if (v21)
        {
          v22 = sub_100004FC8();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            bytes4 = [(__CFData *)v21 bytes];
            *buf = 136315138;
            v27 = bytes4;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "### decryption success with cipherText = %s", buf, 0xCu);
          }
        }

        else
        {
          v22 = error;
          v24 = sub_100004FC8();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_100015EEC(v22);
          }
        }
      }

      else
      {
        v21 = error;
        v22 = sub_100004FC8();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100015F8C();
        }
      }
    }
  }

  else
  {
    v13 = sub_100004FC8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100016000();
    }
  }
}

+ (id)keyToData:(__SecKey *)data
{
  error = 0;
  v3 = SecKeyCopyExternalRepresentation(data, &error);
  if (!v3)
  {
    v4 = error;
    v5 = sub_100004FC8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "### error converting keys = %@", buf, 0xCu);
    }
  }

  return v3;
}

+ (__SecKey)dataToKey:(id)key isPublic:(BOOL)public
{
  if (!key)
  {
    return 0;
  }

  v15[0] = kSecAttrKeyType;
  v15[1] = kSecAttrKeyClass;
  v4 = &kSecAttrKeyClassPublic;
  if (!public)
  {
    v4 = &kSecAttrKeyClassPrivate;
  }

  v5 = *v4;
  v16[0] = kSecAttrKeyTypeEC;
  v16[1] = v5;
  v15[2] = kSecAttrKeySizeInBits;
  v16[2] = &off_100028CA8;
  keyCopy = key;
  v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  error = 0;
  v8 = SecKeyCreateWithData(keyCopy, v7, &error);

  if (!v8)
  {
    v9 = error;
    v10 = sub_100004FC8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "### error generating keys = %@", buf, 0xCu);
    }
  }

  return v8;
}

+ (id)publicKeyFromPrivateKey:(id)key
{
  keyCopy = key;
  v4 = [objc_opt_class() dataToKey:keyCopy isPublic:0];

  if (v4)
  {
    v5 = SecKeyCopyPublicKey(v4);
    v6 = [objc_opt_class() keyToData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end