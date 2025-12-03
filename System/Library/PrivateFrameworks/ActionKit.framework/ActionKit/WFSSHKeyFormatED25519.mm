@interface WFSSHKeyFormatED25519
+ (id)generateKeyPairWithKeySize:(unint64_t)size comment:(id)comment;
+ (id)keyPairFromPrivateKey:(id)key comment:(id)comment error:(id *)error;
+ (id)sshPrivateKeyFromED25519PrivateKey:(id)key publicKey:(id)publicKey comment:(id)comment;
+ (id)sshPublicKeyFromED25519Data:(id)data;
@end

@implementation WFSSHKeyFormatED25519

+ (id)sshPrivateKeyFromED25519PrivateKey:(id)key publicKey:(id)publicKey comment:(id)comment
{
  keyCopy = key;
  publicKeyCopy = publicKey;
  commentCopy = comment;
  v11 = objc_alloc_init(WFSSHKeyEncoder);
  [(WFSSHKeyEncoder *)v11 encodeString:@"openssh-key-v1"];
  [(WFSSHKeyEncoder *)v11 encodeChar:0];
  [(WFSSHKeyEncoder *)v11 encodeStringWithPreceedingLength:@"none"];
  [(WFSSHKeyEncoder *)v11 encodeStringWithPreceedingLength:@"none"];
  v12 = objc_opt_new();
  [(WFSSHKeyEncoder *)v11 encodeDataWithPreceedingLength:v12];

  [(WFSSHKeyEncoder *)v11 encodeInteger:1];
  v13 = [self sshPublicKeyFromED25519Data:publicKeyCopy];
  if (v13)
  {
    [(WFSSHKeyEncoder *)v11 encodeDataWithPreceedingLength:v13];
    v14 = objc_alloc_init(WFSSHKeyEncoder);
    v15 = arc4random_uniform(0xFFFFFFFF);
    [(WFSSHKeyEncoder *)v14 encodeInteger:v15];
    [(WFSSHKeyEncoder *)v14 encodeInteger:v15];
    publicKeyType = [self publicKeyType];
    [(WFSSHKeyEncoder *)v14 encodeStringWithPreceedingLength:publicKeyType];

    [(WFSSHKeyEncoder *)v14 encodeDataWithPreceedingLength:publicKeyCopy];
    -[WFSSHKeyEncoder encodeInteger:](v14, "encodeInteger:", [publicKeyCopy length] + objc_msgSend(keyCopy, "length"));
    [(WFSSHKeyEncoder *)v14 encodeData:keyCopy];
    [(WFSSHKeyEncoder *)v14 encodeData:publicKeyCopy];
    [(WFSSHKeyEncoder *)v14 encodeStringWithPreceedingLength:commentCopy];
    v17 = [(WFSSHKeyEncoder *)v14 encodedLength]| 0xFFFFFFFFFFFFFFF8;
    v18 = 1;
    do
    {
      [(WFSSHKeyEncoder *)v14 encodeChar:v18++];
    }

    while (!__CFADD__(v17++, 1));
    encodedData = [(WFSSHKeyEncoder *)v14 encodedData];
    [(WFSSHKeyEncoder *)v11 encodeDataWithPreceedingLength:encodedData];

    encodedData2 = [(WFSSHKeyEncoder *)v11 encodedData];
  }

  else
  {
    encodedData2 = 0;
  }

  return encodedData2;
}

+ (id)sshPublicKeyFromED25519Data:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(WFSSHKeyEncoder);
  [(WFSSHKeyEncoder *)v5 encodeInteger:11];
  publicKeyType = [self publicKeyType];
  [(WFSSHKeyEncoder *)v5 encodeString:publicKeyType];

  [(WFSSHKeyEncoder *)v5 encodeDataWithPreceedingLength:dataCopy];
  encodedData = [(WFSSHKeyEncoder *)v5 encodedData];

  return encodedData;
}

+ (id)keyPairFromPrivateKey:(id)key comment:(id)comment error:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v8 = [[WFSSHKeyDecoder alloc] initWithData:keyCopy];
  v9 = -[WFSSHKeyDecoder decodeStringWithLength:](v8, "decodeStringWithLength:", [@"openssh-key-v1" length]);
  if ([v9 isEqualToString:@"openssh-key-v1"])
  {
    [(WFSSHKeyDecoder *)v8 advanceBy:1];
    decodeStringWithPrecedingLength = [(WFSSHKeyDecoder *)v8 decodeStringWithPrecedingLength];
    decodeStringWithPrecedingLength2 = [(WFSSHKeyDecoder *)v8 decodeStringWithPrecedingLength];
    decodeDataWithPrecedingLength = [(WFSSHKeyDecoder *)v8 decodeDataWithPrecedingLength];
    if ([decodeStringWithPrecedingLength isEqualToString:@"none"])
    {
      if ([(WFSSHKeyDecoder *)v8 decodeInteger]== 1)
      {
        [(WFSSHKeyDecoder *)v8 advanceBy:[(WFSSHKeyDecoder *)v8 decodeInteger]];
        [(WFSSHKeyDecoder *)v8 decodeInteger];
        decodeInteger = [(WFSSHKeyDecoder *)v8 decodeInteger];
        if (decodeInteger == [(WFSSHKeyDecoder *)v8 decodeInteger])
        {
          decodeStringWithPrecedingLength3 = [(WFSSHKeyDecoder *)v8 decodeStringWithPrecedingLength];
          publicKeyType = [self publicKeyType];
          v16 = [decodeStringWithPrecedingLength3 isEqualToString:publicKeyType];

          if (v16)
          {
            decodeDataWithPrecedingLength2 = [(WFSSHKeyDecoder *)v8 decodeDataWithPrecedingLength];
            decodeDataWithPrecedingLength3 = [(WFSSHKeyDecoder *)v8 decodeDataWithPrecedingLength];
            decodeStringWithPrecedingLength4 = [(WFSSHKeyDecoder *)v8 decodeStringWithPrecedingLength];
            if ([decodeDataWithPrecedingLength2 length] == 32)
            {
              v30 = decodeDataWithPrecedingLength3;
              v19 = [self sshPublicKeyFromED25519Data:decodeDataWithPrecedingLength2];
              if (v19)
              {
                v20 = [[WFSSHKeyPair alloc] initWithFormat:self privateKeyData:keyCopy publicKeyData:v19 keySize:0 comment:decodeStringWithPrecedingLength4];
              }

              else
              {
                v20 = 0;
              }

              decodeDataWithPrecedingLength3 = v30;
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
          }

          goto LABEL_18;
        }

LABEL_17:
        v20 = 0;
LABEL_18:

        goto LABEL_19;
      }

      if (!error)
      {
        goto LABEL_17;
      }

      v22 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v23 = WFLocalizedString(@"Multiple keys are not supported.");
      v33 = v23;
      v24 = MEMORY[0x277CBEAC0];
      v25 = &v33;
      v26 = &v32;
    }

    else
    {
      if (!error)
      {
        goto LABEL_17;
      }

      v22 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA450];
      v23 = WFLocalizedString(@"Encrypted SSH keys are not currently supported.");
      v35 = v23;
      v24 = MEMORY[0x277CBEAC0];
      v25 = &v35;
      v26 = &v34;
    }

    v27 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
    *error = [v22 errorWithDomain:@"WFSSHKeyED25519ErrorDomain" code:1 userInfo:v27];

    goto LABEL_17;
  }

  if (!error)
  {
    v20 = 0;
    goto LABEL_20;
  }

  v21 = MEMORY[0x277CCA9B8];
  v36 = *MEMORY[0x277CCA450];
  decodeStringWithPrecedingLength = WFLocalizedString(@"Unable to parse magic bytes from OpenSSH key.");
  v37[0] = decodeStringWithPrecedingLength;
  decodeStringWithPrecedingLength2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  [v21 errorWithDomain:@"WFSSHKeyED25519ErrorDomain" code:1 userInfo:decodeStringWithPrecedingLength2];
  *error = v20 = 0;
LABEL_19:

LABEL_20:
  v28 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)generateKeyPairWithKeySize:(unint64_t)size comment:(id)comment
{
  v17 = *MEMORY[0x277D85DE8];
  commentCopy = comment;
  if (ccrng() && (memset(v16, 0, sizeof(v16)), v14 = 0u, v15 = 0u, ccsha512_di(), !cced25519_make_key_pair()))
  {
    v7 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:v16 length:{32, v14, v15}];
    v8 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:&v14 length:32];
    v9 = [self sshPrivateKeyFromED25519PrivateKey:v8 publicKey:v7 comment:commentCopy];
    v10 = [self sshPublicKeyFromED25519Data:v7];
    v11 = v10;
    v6 = 0;
    if (v9 && v10)
    {
      v6 = [[WFSSHKeyPair alloc] initWithFormat:self privateKeyData:v9 publicKeyData:v10 keySize:0 comment:commentCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

@end