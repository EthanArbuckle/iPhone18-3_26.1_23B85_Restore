@interface CLEEDCryptoUtilities
+ (__SecCertificate)copyCertFromBase64String:(id)string;
+ (__SecKey)copyPublicKeyFromPrivateKey:(__SecKey *)key;
+ (__SecKey)createKeyFromExternalRepresentationData:(id)data keyClass:(id)class;
+ (__SecKey)createKeyFromExternalRepresentationString:(id)string keyClass:(id)class;
+ (__SecKey)createRandomP256PrivateKey;
+ (id)copyAdrPublicKeyData:(id)data;
+ (id)createKeyExternalRepresentation:(__SecKey *)representation;
+ (id)getAESGCMDecryptedData:(id)data key:(id)key iv:(id)iv authTag:(id)tag;
+ (id)getDerivedKeyWithLength:(int)length secretData:(id)data additionalInfo:(id)info;
+ (id)getECIESDecryptedData:(id)data key:(__SecKey *)key sharedInfo:(id)info;
+ (id)getECIESEncryptedData:(id)data key:(__SecKey *)key sharedInfo:(id)info prependKeyFingerprint:(BOOL)fingerprint;
+ (id)getGMACWithAuthData:(id)data key:(id)key iv:(id)iv;
+ (id)getKeyExternalRepresentation:(__SecKey *)representation;
+ (id)getKeyFingerprint:(__SecKey *)fingerprint;
+ (id)getKeyFingerprintWithKeyData:(id)data;
+ (id)getRandomBytes:(int)bytes;
+ (id)getSessionIDWithPhoneNumber:(id)number sessionStartTime:(int64_t)time;
@end

@implementation CLEEDCryptoUtilities

+ (id)getSessionIDWithPhoneNumber:(id)number sessionStartTime:(int64_t)time
{
  timeCopy = time;
  v5 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(number, "length") + 8}];
  [v5 appendData:{objc_msgSend(number, "dataUsingEncoding:", 4)}];
  [v5 appendBytes:&timeCopy length:8];
  return v5;
}

+ (__SecCertificate)copyCertFromBase64String:(id)string
{
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:string options:0];
  v4 = v3;
  if (v3 && [(__CFData *)v3 length])
  {
    v5 = SecCertificateCreateWithData(0, v4);

    return v5;
  }

  else
  {

    return 0;
  }
}

+ (id)getECIESDecryptedData:(id)data key:(__SecKey *)key sharedInfo:(id)info
{
  v17 = *MEMORY[0x1E69E9840];
  if (data && key && info)
  {
    v13 = *MEMORY[0x1E697B230];
    infoCopy = info;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&infoCopy forKeys:&v13 count:1];
    v5 = *MEMORY[0x1E697B138];
    DecryptedDataWithParameters = SecKeyCreateDecryptedDataWithParameters();
    v7 = DecryptedDataWithParameters;
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v8 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v16 = "+[CLEEDCryptoUtilities getECIESDecryptedData:key:sharedInfo:]";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getECIESDecryptedData:key:sharedInfo:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    DecryptedDataWithParameters = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return DecryptedDataWithParameters;
}

+ (__SecKey)copyPublicKeyFromPrivateKey:(__SecKey *)key
{
  v14 = *MEMORY[0x1E69E9840];
  if (!key)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v8 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v13 = "+[CLEEDCryptoUtilities copyPublicKeyFromPrivateKey:]";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil privateKey,early return", buf, 0xCu);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities copyPublicKeyFromPrivateKey:]", "CoreLocation: %s\n", v10);
    if (v10 == buf)
    {
      goto LABEL_26;
    }

    v7 = v10;
    goto LABEL_25;
  }

  result = SecKeyCopyPublicKey(key);
  if (!result)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v4 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v13 = "+[CLEEDCryptoUtilities copyPublicKeyFromPrivateKey:]";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to copy public key from private key\n", buf, 0xCu);
    }

    v5 = sub_19B87DD40();
    if ((*(v5 + 160) & 0x80000000) != 0 && (*(v5 + 164) & 0x80000000) != 0 && (*(v5 + 168) & 0x80000000) != 0 && !*(v5 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities copyPublicKeyFromPrivateKey:]", "CoreLocation: %s\n", v6);
    if (v6 == buf)
    {
      goto LABEL_26;
    }

    v7 = v6;
LABEL_25:
    free(v7);
LABEL_26:
    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)createKeyExternalRepresentation:(__SecKey *)representation
{
  v35 = *MEMORY[0x1E69E9840];
  if (!representation)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v14 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v28 = "+[CLEEDCryptoUtilities createKeyExternalRepresentation:]";
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil key,early return", buf, 0xCu);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v19 = 136446210;
    v20 = "+[CLEEDCryptoUtilities createKeyExternalRepresentation:]";
    v16 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createKeyExternalRepresentation:]", "CoreLocation: %s\n", v16);
    if (v16 == buf)
    {
      goto LABEL_26;
    }

    v13 = v16;
    goto LABEL_25;
  }

  error = 0;
  result = SecKeyCopyExternalRepresentation(representation, &error);
  if (error)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v4 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      code = [(__CFError *)error code];
      v6 = [-[__CFError domain](error "domain")];
      v7 = [-[__CFError localizedDescription](error "localizedDescription")];
      *buf = 136446978;
      v28 = "+[CLEEDCryptoUtilities createKeyExternalRepresentation:]";
      v29 = 1024;
      v30 = code;
      v31 = 2080;
      v32 = v6;
      v33 = 2080;
      v34 = v7;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to produce external representation for key,error code,%d,domain,%s,reason,%s\n", buf, 0x26u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) != 0 && (*(v8 + 164) & 0x80000000) != 0 && (*(v8 + 168) & 0x80000000) != 0 && !*(v8 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    code2 = [(__CFError *)error code];
    v10 = [-[__CFError domain](error "domain")];
    v11 = [-[__CFError localizedDescription](error "localizedDescription")];
    v19 = 136446978;
    v20 = "+[CLEEDCryptoUtilities createKeyExternalRepresentation:]";
    v21 = 1024;
    v22 = code2;
    v23 = 2080;
    v24 = v10;
    v25 = 2080;
    v26 = v11;
    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createKeyExternalRepresentation:]", "CoreLocation: %s\n", v12);
    if (v12 == buf)
    {
      goto LABEL_26;
    }

    v13 = v12;
LABEL_25:
    free(v13);
LABEL_26:
    result = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)getKeyExternalRepresentation:(__SecKey *)representation
{
  v18 = *MEMORY[0x1E69E9840];
  if (!representation)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v8 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v17 = "+[CLEEDCryptoUtilities getKeyExternalRepresentation:]";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil key,early return", buf, 0xCu);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getKeyExternalRepresentation:]", "CoreLocation: %s\n", v10);
    if (v10 == buf)
    {
      goto LABEL_27;
    }

    v11 = v10;
    goto LABEL_26;
  }

  v3 = [CLEEDCryptoUtilities createKeyExternalRepresentation:?];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 base64EncodedStringWithOptions:0];

    v6 = *MEMORY[0x1E69E9840];
    return v5;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
  }

  v12 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v17 = "+[CLEEDCryptoUtilities getKeyExternalRepresentation:]";
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil extRep,early return", buf, 0xCu);
  }

  v13 = sub_19B87DD40();
  if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getKeyExternalRepresentation:]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      v11 = v14;
LABEL_26:
      free(v11);
    }
  }

LABEL_27:
  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (__SecKey)createKeyFromExternalRepresentationData:(id)data keyClass:(id)class
{
  v40 = *MEMORY[0x1E69E9840];
  if (!data || !class)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v17 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v33 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationData:keyClass:]";
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v22 = 136446210;
    v23 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationData:keyClass:]";
    v19 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationData:keyClass:]", "CoreLocation: %s\n", v19);
    if (v19 == buf)
    {
      goto LABEL_27;
    }

    v16 = v19;
    goto LABEL_26;
  }

  v4 = *MEMORY[0x1E697AD78];
  v5 = *MEMORY[0x1E697AD30];
  v30[0] = *MEMORY[0x1E697AD68];
  v30[1] = v5;
  v31[0] = v4;
  v31[1] = class;
  error = 0;
  result = SecKeyCreateWithData(data, [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2], &error);
  if (error)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v7 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      code = [(__CFError *)error code];
      v9 = [-[__CFError domain](error "domain")];
      v10 = [-[__CFError localizedDescription](error "localizedDescription")];
      *buf = 136446978;
      v33 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationData:keyClass:]";
      v34 = 1024;
      v35 = code;
      v36 = 2080;
      v37 = v9;
      v38 = 2080;
      v39 = v10;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to create key from external representation,error code,%d,domain,%s,reason,%s\n", buf, 0x26u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    code2 = [(__CFError *)error code];
    v13 = [-[__CFError domain](error "domain")];
    v14 = [-[__CFError localizedDescription](error "localizedDescription")];
    v22 = 136446978;
    v23 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationData:keyClass:]";
    v24 = 1024;
    v25 = code2;
    v26 = 2080;
    v27 = v13;
    v28 = 2080;
    v29 = v14;
    v15 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationData:keyClass:]", "CoreLocation: %s\n", v15);
    if (v15 == buf)
    {
      goto LABEL_27;
    }

    v16 = v15;
LABEL_26:
    free(v16);
LABEL_27:
    result = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

+ (__SecKey)createKeyFromExternalRepresentationString:(id)string keyClass:(id)class
{
  v18 = *MEMORY[0x1E69E9840];
  if (!string || !class)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v11 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v17 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationString:keyClass:]";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v13 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationString:keyClass:]", "CoreLocation: %s\n", v13);
    if (v13 == buf)
    {
      goto LABEL_27;
    }

    v10 = v13;
    goto LABEL_26;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:string options:0];
  v6 = [CLEEDCryptoUtilities createKeyFromExternalRepresentationData:v5 keyClass:class];

  if (!v6)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v7 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v17 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationString:keyClass:]";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil key,early return", buf, 0xCu);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) != 0 && (*(v8 + 164) & 0x80000000) != 0 && (*(v8 + 168) & 0x80000000) != 0 && !*(v8 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationString:keyClass:]", "CoreLocation: %s\n", v9);
    if (v9 == buf)
    {
      goto LABEL_27;
    }

    v10 = v9;
LABEL_26:
    free(v10);
LABEL_27:
    v6 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)copyAdrPublicKeyData:(id)data
{
  v26 = *MEMORY[0x1E69E9840];
  if (!data)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v11 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v25 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil adrCert,early return", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      goto LABEL_51;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v22 = 136446210;
    v23 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
LABEL_37:
    v15 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }

    goto LABEL_51;
  }

  v3 = [CLEEDCryptoUtilities copyCertFromBase64String:?];
  if (!v3)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v13 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v25 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil cert obtained from copyCertFromBase64String,early return", buf, 0xCu);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
    {
      goto LABEL_51;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v22 = 136446210;
    v23 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
    goto LABEL_37;
  }

  v4 = v3;
  v5 = SecCertificateCopyKey(v3);
  if (!v5)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v16 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v25 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil publicKey obtained from SecCertificateCopyKey,early return", buf, 0xCu);
    }

    v17 = sub_19B87DD40();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
      }

      v22 = 136446210;
      v23 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
      v18 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    CFRelease(v4);
LABEL_51:
    v7 = 0;
    goto LABEL_52;
  }

  v6 = v5;
  error = 0;
  v7 = SecKeyCopyExternalRepresentation(v5, &error);
  if (!v7)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v8 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v25 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil adrPublicKeyData obtained from SecKeyCopyExternalRepresentation,early return", buf, 0xCu);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
      }

      v22 = 136446210;
      v23 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  CFRelease(v4);
  CFRelease(v6);
LABEL_52:
  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)getRandomBytes:(int)bytes
{
  v19 = *MEMORY[0x1E69E9840];
  bytesCopy = bytes;
  v5 = [MEMORY[0x1E695DF88] dataWithLength:bytes];
  v6 = SecRandomCopyBytes(*MEMORY[0x1E697B308], bytesCopy, [v5 mutableBytes]);
  if (v6)
  {
    v7 = v6;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v8 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "+[CLEEDCryptoUtilities getRandomBytes:]";
      v15 = 1024;
      bytesCopy2 = bytes;
      v17 = 1024;
      v18 = v7;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to create %d random bytes with error code %d\n", buf, 0x18u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getRandomBytes:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v5 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (__SecKey)createRandomP256PrivateKey
{
  v33[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E697AD78];
  v3 = *MEMORY[0x1E697AD50];
  v32[0] = *MEMORY[0x1E697AD68];
  v32[1] = v3;
  v33[0] = v2;
  v33[1] = &unk_1F0E8CD48;
  error = 0;
  result = SecKeyCreateRandomKey([MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2], &error);
  if (error)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v5 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      code = [(__CFError *)error code];
      v7 = [-[__CFError domain](error "domain")];
      v8 = [-[__CFError localizedDescription](error "localizedDescription")];
      *buf = 136446978;
      v25 = "+[CLEEDCryptoUtilities createRandomP256PrivateKey]";
      v26 = 2048;
      v27 = code;
      v28 = 2080;
      v29 = v7;
      v30 = 2080;
      v31 = v8;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to create random P-256 private key,error code,%ld,domain,%s,reason,%s\n", buf, 0x2Au);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
      }

      code2 = [(__CFError *)error code];
      v11 = [-[__CFError domain](error "domain")];
      v12 = [-[__CFError localizedDescription](error "localizedDescription")];
      v16 = 136446978;
      v17 = "+[CLEEDCryptoUtilities createRandomP256PrivateKey]";
      v18 = 2048;
      v19 = code2;
      v20 = 2080;
      v21 = v11;
      v22 = 2080;
      v23 = v12;
      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createRandomP256PrivateKey]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    result = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)getKeyFingerprintWithKeyData:(id)data
{
  v13 = *MEMORY[0x1E69E9840];
  if (data)
  {
    v4 = [MEMORY[0x1E695DF88] dataWithLength:32];
    CC_SHA256([data bytes], objc_msgSend(data, "length"), objc_msgSend(v4, "mutableBytes"));
    v5 = *MEMORY[0x1E69E9840];

    return [v4 subdataWithRange:{0, 2}];
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v7 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v12 = "+[CLEEDCryptoUtilities getKeyFingerprintWithKeyData:]";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil keyData,early return", buf, 0xCu);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getKeyFingerprintWithKeyData:]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    v10 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

+ (id)getKeyFingerprint:(__SecKey *)fingerprint
{
  v17 = *MEMORY[0x1E69E9840];
  if (!fingerprint)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v6 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v16 = "+[CLEEDCryptoUtilities getKeyFingerprint:]";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil key,early return", buf, 0xCu);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) != 0 && (*(v7 + 164) & 0x80000000) != 0 && (*(v7 + 168) & 0x80000000) != 0 && !*(v7 + 152))
    {
      goto LABEL_29;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getKeyFingerprint:]", "CoreLocation: %s\n", v8);
    if (v8 == buf)
    {
      goto LABEL_29;
    }

    v9 = v8;
    goto LABEL_28;
  }

  v3 = [CLEEDCryptoUtilities createKeyExternalRepresentation:?];
  if (!v3)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v10 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v16 = "+[CLEEDCryptoUtilities getKeyFingerprint:]";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil keyData,early return", buf, 0xCu);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
    {
      goto LABEL_29;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getKeyFingerprint:]", "CoreLocation: %s\n", v12);
    if (v12 == buf)
    {
      goto LABEL_29;
    }

    v9 = v12;
LABEL_28:
    free(v9);
LABEL_29:
    v13 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v4 = v3;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66B58](CLEEDCryptoUtilities, sel_getKeyFingerprintWithKeyData_);
}

+ (id)getDerivedKeyWithLength:(int)length secretData:(id)data additionalInfo:(id)info
{
  v27 = *MEMORY[0x1E69E9840];
  if (!data || !info)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v12 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v24 = "+[CLEEDCryptoUtilities getDerivedKeyWithLength:secretData:additionalInfo:]";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      goto LABEL_36;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getDerivedKeyWithLength:secretData:additionalInfo:]", "CoreLocation: %s\n", v14);
    if (v14 == buf)
    {
      goto LABEL_36;
    }

    v15 = v14;
    goto LABEL_35;
  }

  [info bytes];
  [info length];
  AnsiX963 = CCKDFParametersCreateAnsiX963();
  if (AnsiX963)
  {
    v9 = AnsiX963;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v10 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v24 = "+[CLEEDCryptoUtilities getDerivedKeyWithLength:secretData:additionalInfo:]";
      v25 = 1024;
      v26 = v9;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to create ANSI X9.63 KDF params,result,%d\n", buf, 0x12u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
    {
      goto LABEL_36;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 == -1)
    {
      goto LABEL_33;
    }

LABEL_44:
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
LABEL_33:
    v20 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getDerivedKeyWithLength:secretData:additionalInfo:]", "CoreLocation: %s\n", v20);
    if (v20 == buf)
    {
LABEL_36:
      v16 = 0;
      goto LABEL_37;
    }

    v15 = v20;
LABEL_35:
    free(v15);
    goto LABEL_36;
  }

  v16 = [MEMORY[0x1E695DF88] dataWithLength:length];
  [data bytes];
  [data length];
  [v16 mutableBytes];
  [v16 length];
  v17 = CCDeriveKey();
  CCKDFParametersDestroy();
  if (v17)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v18 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v24 = "+[CLEEDCryptoUtilities getDerivedKeyWithLength:secretData:additionalInfo:]";
      v25 = 1024;
      v26 = v17;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to derive key,result,%d\n", buf, 0x12u);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
    {
      goto LABEL_36;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_37:
  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (id)getGMACWithAuthData:(id)data key:(id)key iv:(id)iv
{
  v24 = *MEMORY[0x1E69E9840];
  if (!data || !key || !iv)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v15 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v21 = "+[CLEEDCryptoUtilities getGMACWithAuthData:key:iv:]";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
    {
      goto LABEL_28;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v17 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getGMACWithAuthData:key:iv:]", "CoreLocation: %s\n", v17);
    if (v17 == buf)
    {
      goto LABEL_28;
    }

    v14 = v17;
    goto LABEL_27;
  }

  v8 = [MEMORY[0x1E695DF88] dataWithLength:16];
  [key bytes];
  [key length];
  [iv bytes];
  [iv length];
  [data bytes];
  [data length];
  [v8 mutableBytes];
  [v8 length];
  v9 = CCCryptorGCMOneshotEncrypt();
  if (v9)
  {
    v10 = v9;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v11 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v21 = "+[CLEEDCryptoUtilities getGMACWithAuthData:key:iv:]";
      v22 = 1024;
      v23 = v10;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to compute GMAC,error,%d\n", buf, 0x12u);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      goto LABEL_28;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v13 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getGMACWithAuthData:key:iv:]", "CoreLocation: %s\n", v13);
    if (v13 == buf)
    {
      goto LABEL_28;
    }

    v14 = v13;
LABEL_27:
    free(v14);
LABEL_28:
    v8 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)getAESGCMDecryptedData:(id)data key:(id)key iv:(id)iv authTag:(id)tag
{
  v26 = *MEMORY[0x1E69E9840];
  if (!data || !key || !iv || !tag)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v17 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v23 = "+[CLEEDCryptoUtilities getAESGCMDecryptedData:key:iv:authTag:]";
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      goto LABEL_29;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v19 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getAESGCMDecryptedData:key:iv:authTag:]", "CoreLocation: %s\n", v19);
    if (v19 == buf)
    {
      goto LABEL_29;
    }

    v16 = v19;
    goto LABEL_28;
  }

  v10 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(data, "length")}];
  [key bytes];
  [key length];
  [iv bytes];
  [iv length];
  [data bytes];
  [data length];
  [v10 mutableBytes];
  [tag bytes];
  [tag length];
  v11 = CCCryptorGCMOneshotDecrypt();
  if (v11)
  {
    v12 = v11;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v13 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = "+[CLEEDCryptoUtilities getAESGCMDecryptedData:key:iv:authTag:]";
      v24 = 1024;
      v25 = v12;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to decrypt data,error,%d\n", buf, 0x12u);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
    {
      goto LABEL_29;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v15 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getAESGCMDecryptedData:key:iv:authTag:]", "CoreLocation: %s\n", v15);
    if (v15 == buf)
    {
      goto LABEL_29;
    }

    v16 = v15;
LABEL_28:
    free(v16);
LABEL_29:
    v10 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)getECIESEncryptedData:(id)data key:(__SecKey *)key sharedInfo:(id)info prependKeyFingerprint:(BOOL)fingerprint
{
  v27 = *MEMORY[0x1E69E9840];
  if (!data || !key || !info)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v12 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v26 = "+[CLEEDCryptoUtilities getECIESEncryptedData:key:sharedInfo:prependKeyFingerprint:]";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      goto LABEL_18;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getECIESEncryptedData:key:sharedInfo:prependKeyFingerprint:]", "CoreLocation: %s\n", v14);
    if (v14 == buf)
    {
      goto LABEL_18;
    }

    v11 = v14;
LABEL_17:
    free(v11);
LABEL_18:
    EncryptedDataWithParameters = 0;
    goto LABEL_19;
  }

  fingerprintCopy = fingerprint;
  v23 = *MEMORY[0x1E697B230];
  infoCopy = info;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&infoCopy forKeys:&v23 count:1];
  v8 = *MEMORY[0x1E697B138];
  EncryptedDataWithParameters = SecKeyCreateEncryptedDataWithParameters();
  v10 = EncryptedDataWithParameters;
  if (fingerprintCopy)
  {
    v17 = [CLEEDCryptoUtilities getKeyFingerprint:key];
    if (v17)
    {
      v18 = v17;
      v19 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(EncryptedDataWithParameters, "length") + 2}];
      [v19 appendData:v18];
      [v19 appendData:EncryptedDataWithParameters];
      EncryptedDataWithParameters = v19;
      goto LABEL_19;
    }

    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v20 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v26 = "+[CLEEDCryptoUtilities getECIESEncryptedData:key:sharedInfo:prependKeyFingerprint:]";
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil keyFingerprint,early return", buf, 0xCu);
    }

    v21 = sub_19B87DD40();
    if ((*(v21 + 160) & 0x80000000) != 0 && (*(v21 + 164) & 0x80000000) != 0 && (*(v21 + 168) & 0x80000000) != 0 && !*(v21 + 152))
    {
      goto LABEL_18;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v22 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getECIESEncryptedData:key:sharedInfo:prependKeyFingerprint:]", "CoreLocation: %s\n", v22);
    if (v22 == buf)
    {
      goto LABEL_18;
    }

    v11 = v22;
    goto LABEL_17;
  }

LABEL_19:
  v15 = *MEMORY[0x1E69E9840];
  return EncryptedDataWithParameters;
}

@end