@interface WFSSHKeyFormatED25519
+ (id)generateKeyPairWithKeySize:(unint64_t)a3 comment:(id)a4;
+ (id)keyPairFromPrivateKey:(id)a3 comment:(id)a4 error:(id *)a5;
+ (id)sshPrivateKeyFromED25519PrivateKey:(id)a3 publicKey:(id)a4 comment:(id)a5;
+ (id)sshPublicKeyFromED25519Data:(id)a3;
@end

@implementation WFSSHKeyFormatED25519

+ (id)sshPrivateKeyFromED25519PrivateKey:(id)a3 publicKey:(id)a4 comment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(WFSSHKeyEncoder);
  [(WFSSHKeyEncoder *)v11 encodeString:@"openssh-key-v1"];
  [(WFSSHKeyEncoder *)v11 encodeChar:0];
  [(WFSSHKeyEncoder *)v11 encodeStringWithPreceedingLength:@"none"];
  [(WFSSHKeyEncoder *)v11 encodeStringWithPreceedingLength:@"none"];
  v12 = objc_opt_new();
  [(WFSSHKeyEncoder *)v11 encodeDataWithPreceedingLength:v12];

  [(WFSSHKeyEncoder *)v11 encodeInteger:1];
  v13 = [a1 sshPublicKeyFromED25519Data:v9];
  if (v13)
  {
    [(WFSSHKeyEncoder *)v11 encodeDataWithPreceedingLength:v13];
    v14 = objc_alloc_init(WFSSHKeyEncoder);
    v15 = arc4random_uniform(0xFFFFFFFF);
    [(WFSSHKeyEncoder *)v14 encodeInteger:v15];
    [(WFSSHKeyEncoder *)v14 encodeInteger:v15];
    v16 = [a1 publicKeyType];
    [(WFSSHKeyEncoder *)v14 encodeStringWithPreceedingLength:v16];

    [(WFSSHKeyEncoder *)v14 encodeDataWithPreceedingLength:v9];
    -[WFSSHKeyEncoder encodeInteger:](v14, "encodeInteger:", [v9 length] + objc_msgSend(v8, "length"));
    [(WFSSHKeyEncoder *)v14 encodeData:v8];
    [(WFSSHKeyEncoder *)v14 encodeData:v9];
    [(WFSSHKeyEncoder *)v14 encodeStringWithPreceedingLength:v10];
    v17 = [(WFSSHKeyEncoder *)v14 encodedLength]| 0xFFFFFFFFFFFFFFF8;
    v18 = 1;
    do
    {
      [(WFSSHKeyEncoder *)v14 encodeChar:v18++];
    }

    while (!__CFADD__(v17++, 1));
    v20 = [(WFSSHKeyEncoder *)v14 encodedData];
    [(WFSSHKeyEncoder *)v11 encodeDataWithPreceedingLength:v20];

    v21 = [(WFSSHKeyEncoder *)v11 encodedData];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)sshPublicKeyFromED25519Data:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(WFSSHKeyEncoder);
  [(WFSSHKeyEncoder *)v5 encodeInteger:11];
  v6 = [a1 publicKeyType];
  [(WFSSHKeyEncoder *)v5 encodeString:v6];

  [(WFSSHKeyEncoder *)v5 encodeDataWithPreceedingLength:v4];
  v7 = [(WFSSHKeyEncoder *)v5 encodedData];

  return v7;
}

+ (id)keyPairFromPrivateKey:(id)a3 comment:(id)a4 error:(id *)a5
{
  v37[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [[WFSSHKeyDecoder alloc] initWithData:v7];
  v9 = -[WFSSHKeyDecoder decodeStringWithLength:](v8, "decodeStringWithLength:", [@"openssh-key-v1" length]);
  if ([v9 isEqualToString:@"openssh-key-v1"])
  {
    [(WFSSHKeyDecoder *)v8 advanceBy:1];
    v10 = [(WFSSHKeyDecoder *)v8 decodeStringWithPrecedingLength];
    v11 = [(WFSSHKeyDecoder *)v8 decodeStringWithPrecedingLength];
    v12 = [(WFSSHKeyDecoder *)v8 decodeDataWithPrecedingLength];
    if ([v10 isEqualToString:@"none"])
    {
      if ([(WFSSHKeyDecoder *)v8 decodeInteger]== 1)
      {
        [(WFSSHKeyDecoder *)v8 advanceBy:[(WFSSHKeyDecoder *)v8 decodeInteger]];
        [(WFSSHKeyDecoder *)v8 decodeInteger];
        v13 = [(WFSSHKeyDecoder *)v8 decodeInteger];
        if (v13 == [(WFSSHKeyDecoder *)v8 decodeInteger])
        {
          v14 = [(WFSSHKeyDecoder *)v8 decodeStringWithPrecedingLength];
          v15 = [a1 publicKeyType];
          v16 = [v14 isEqualToString:v15];

          if (v16)
          {
            v17 = [(WFSSHKeyDecoder *)v8 decodeDataWithPrecedingLength];
            v18 = [(WFSSHKeyDecoder *)v8 decodeDataWithPrecedingLength];
            v31 = [(WFSSHKeyDecoder *)v8 decodeStringWithPrecedingLength];
            if ([v17 length] == 32)
            {
              v30 = v18;
              v19 = [a1 sshPublicKeyFromED25519Data:v17];
              if (v19)
              {
                v20 = [[WFSSHKeyPair alloc] initWithFormat:a1 privateKeyData:v7 publicKeyData:v19 keySize:0 comment:v31];
              }

              else
              {
                v20 = 0;
              }

              v18 = v30;
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

      if (!a5)
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
      if (!a5)
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
    *a5 = [v22 errorWithDomain:@"WFSSHKeyED25519ErrorDomain" code:1 userInfo:v27];

    goto LABEL_17;
  }

  if (!a5)
  {
    v20 = 0;
    goto LABEL_20;
  }

  v21 = MEMORY[0x277CCA9B8];
  v36 = *MEMORY[0x277CCA450];
  v10 = WFLocalizedString(@"Unable to parse magic bytes from OpenSSH key.");
  v37[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  [v21 errorWithDomain:@"WFSSHKeyED25519ErrorDomain" code:1 userInfo:v11];
  *a5 = v20 = 0;
LABEL_19:

LABEL_20:
  v28 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)generateKeyPairWithKeySize:(unint64_t)a3 comment:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (ccrng() && (memset(v16, 0, sizeof(v16)), v14 = 0u, v15 = 0u, ccsha512_di(), !cced25519_make_key_pair()))
  {
    v7 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:v16 length:{32, v14, v15}];
    v8 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:&v14 length:32];
    v9 = [a1 sshPrivateKeyFromED25519PrivateKey:v8 publicKey:v7 comment:v5];
    v10 = [a1 sshPublicKeyFromED25519Data:v7];
    v11 = v10;
    v6 = 0;
    if (v9 && v10)
    {
      v6 = [[WFSSHKeyPair alloc] initWithFormat:a1 privateKeyData:v9 publicKeyData:v10 keySize:0 comment:v5];
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