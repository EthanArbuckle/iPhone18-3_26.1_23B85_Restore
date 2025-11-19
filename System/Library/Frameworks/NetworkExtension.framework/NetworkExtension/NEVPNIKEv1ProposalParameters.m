@interface NEVPNIKEv1ProposalParameters
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NEVPNIKEv1ProposalParameters)init;
- (NEVPNIKEv1ProposalParameters)initWithCoder:(id)a3;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEVPNIKEv1ProposalParameters

- (id)copyLegacyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NEVPNIKEv1ProposalParameters *)self encryptionAlgorithm]== 1)
  {
    v4 = kNEIKEv1EncryptionAlgorithmDESValue;
  }

  else if ([(NEVPNIKEv1ProposalParameters *)self encryptionAlgorithm]== 2)
  {
    v4 = kNEIKEv1EncryptionAlgorithm3DESValue;
  }

  else if ([(NEVPNIKEv1ProposalParameters *)self encryptionAlgorithm]== 3)
  {
    v4 = kNEIKEv1EncryptionAlgorithmAESValue;
  }

  else
  {
    if ([(NEVPNIKEv1ProposalParameters *)self encryptionAlgorithm]!= 4)
    {
      goto LABEL_10;
    }

    v4 = kNEIKEv1EncryptionAlgorithmAES256Value;
  }

  [v3 setObject:*v4 forKeyedSubscript:@"EncryptionAlgorithm"];
LABEL_10:
  if ([(NEVPNIKEv1ProposalParameters *)self integrityAlgorithm]== 1)
  {
    v5 = kNEIKEv1IntegrityAlgorithmSHA1Value;
LABEL_14:
    [v3 setObject:*v5 forKeyedSubscript:@"HashAlgorithm"];
    goto LABEL_15;
  }

  if ([(NEVPNIKEv1ProposalParameters *)self integrityAlgorithm]== 2)
  {
    v5 = kNEIKEv1IntegrityAlgorithmMD5Value;
    goto LABEL_14;
  }

LABEL_15:
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[NEVPNIKEv1ProposalParameters diffieHellmanGroup](self, "diffieHellmanGroup")}];
  [v3 setObject:v6 forKeyedSubscript:@"DHGroup"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[NEVPNIKEv1ProposalParameters lifetimeSeconds](self, "lifetimeSeconds")}];
  [v3 setObject:v7 forKeyedSubscript:@"Lifetime"];

  return v3;
}

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = NEVPNIKEv1ProposalParameters;
  v5 = [(NEVPNIKEv1ProposalParameters *)&v31 init];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = [v4 objectForKeyedSubscript:@"EncryptionAlgorithm"];
  v7 = isa_nsstring(v6);

  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"EncryptionAlgorithm"];
    v9 = [@"DES" isEqualToString:v8];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v11 = [v4 objectForKeyedSubscript:@"EncryptionAlgorithm"];
      v12 = [@"3DES" isEqualToString:v11];

      if (v12)
      {
        v10 = 2;
      }

      else
      {
        v13 = [v4 objectForKeyedSubscript:@"EncryptionAlgorithm"];
        v14 = [@"AES" isEqualToString:v13];

        if (v14)
        {
          v10 = 3;
        }

        else
        {
          v15 = [v4 objectForKeyedSubscript:@"EncryptionAlgorithm"];
          v16 = [@"AES256" isEqualToString:v15];

          if (!v16)
          {
            goto LABEL_12;
          }

          v10 = 4;
        }
      }
    }

    [(NEVPNIKEv1ProposalParameters *)v5 setEncryptionAlgorithm:v10];
  }

LABEL_12:
  v17 = [v4 objectForKeyedSubscript:@"HashAlgorithm"];
  v18 = isa_nsstring(v17);

  if (v18)
  {
    v19 = [v4 objectForKeyedSubscript:@"HashAlgorithm"];
    v20 = [@"SHA1" isEqualToString:v19];

    if (v20)
    {
      v21 = 1;
LABEL_17:
      [(NEVPNIKEv1ProposalParameters *)v5 setIntegrityAlgorithm:v21];
      goto LABEL_18;
    }

    v22 = [v4 objectForKeyedSubscript:@"HashAlgorithm"];
    v23 = [@"MD5" isEqualToString:v22];

    if (v23)
    {
      v21 = 2;
      goto LABEL_17;
    }
  }

LABEL_18:
  v24 = [v4 objectForKeyedSubscript:@"DHGroup"];
  v25 = isa_nsnumber(v24);

  if (v25)
  {
    v26 = [v4 objectForKeyedSubscript:@"DHGroup"];
    -[NEVPNIKEv1ProposalParameters setDiffieHellmanGroup:](v5, "setDiffieHellmanGroup:", [v26 intValue]);
  }

  v27 = [v4 objectForKeyedSubscript:@"Lifetime"];
  v28 = isa_nsnumber(v27);

  if (v28)
  {
    v29 = [v4 objectForKeyedSubscript:@"Lifetime"];
    -[NEVPNIKEv1ProposalParameters setLifetimeSeconds:](v5, "setLifetimeSeconds:", [v29 intValue]);
  }

LABEL_22:

  return v5;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  if ([(NEVPNIKEv1ProposalParameters *)self lifetimeSeconds]>= 600 && [(NEVPNIKEv1ProposalParameters *)self lifetimeSeconds]<= 86400)
  {
    v6 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid SA lifetime seconds (%d), valid range is %d to %d inclusive", -[NEVPNIKEv1ProposalParameters lifetimeSeconds](self, "lifetimeSeconds"), 600, 86400];
    [NEConfiguration addError:v5 toList:v4];

    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEVPNIKEv1ProposalParameters allocWithZone:?]];
  if (v4)
  {
    [(NEVPNIKEv1ProposalParameters *)v4 setEncryptionAlgorithm:[(NEVPNIKEv1ProposalParameters *)self encryptionAlgorithm]];
    [(NEVPNIKEv1ProposalParameters *)v4 setIntegrityAlgorithm:[(NEVPNIKEv1ProposalParameters *)self integrityAlgorithm]];
    [(NEVPNIKEv1ProposalParameters *)v4 setDiffieHellmanGroup:[(NEVPNIKEv1ProposalParameters *)self diffieHellmanGroup]];
    [(NEVPNIKEv1ProposalParameters *)v4 setLifetimeSeconds:[(NEVPNIKEv1ProposalParameters *)self lifetimeSeconds]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[NEVPNIKEv1ProposalParameters encryptionAlgorithm](self forKey:{"encryptionAlgorithm"), @"LegacyEncryptionAlgorithm"}];
  [v4 encodeInt32:-[NEVPNIKEv1ProposalParameters integrityAlgorithm](self forKey:{"integrityAlgorithm"), @"LegacyIntegrityAlgorithm"}];
  [v4 encodeInt32:-[NEVPNIKEv1ProposalParameters diffieHellmanGroup](self forKey:{"diffieHellmanGroup"), @"LegacyDiffieHellmanGroup"}];
  [v4 encodeInt32:-[NEVPNIKEv1ProposalParameters lifetimeSeconds](self forKey:{"lifetimeSeconds"), @"LegacyLifeTime"}];
}

- (NEVPNIKEv1ProposalParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEVPNIKEv1ProposalParameters *)self init];
  if (v5)
  {
    v5->_encryptionAlgorithm = [v4 decodeInt32ForKey:@"LegacyEncryptionAlgorithm"];
    v5->_integrityAlgorithm = [v4 decodeInt32ForKey:@"LegacyIntegrityAlgorithm"];
    v5->_diffieHellmanGroup = [v4 decodeInt32ForKey:@"LegacyDiffieHellmanGroup"];
    v5->_lifetimeSeconds = [v4 decodeInt32ForKey:@"LegacyLifeTime"];
  }

  return v5;
}

- (NEVPNIKEv1ProposalParameters)init
{
  v3.receiver = self;
  v3.super_class = NEVPNIKEv1ProposalParameters;
  result = [(NEVPNIKEv1ProposalParameters *)&v3 init];
  if (result)
  {
    *&result->_encryptionAlgorithm = xmmword_1BAA4E610;
    *&result->_diffieHellmanGroup = 0xE1000000002;
  }

  return result;
}

@end