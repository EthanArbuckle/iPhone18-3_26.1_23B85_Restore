@interface NEVPNIKEv2SecurityAssociationParameters
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEVPNIKEv2SecurityAssociationParameters)init;
- (NEVPNIKEv2SecurityAssociationParameters)initWithCoder:(id)coder;
- (id)copyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEVPNIKEv2SecurityAssociationParameters

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v44 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  if ([(NEVPNIKEv2SecurityAssociationParameters *)self lifetimeMinutes]< 10 || [(NEVPNIKEv2SecurityAssociationParameters *)self lifetimeMinutes]>= 1441)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid SA life time (%d), valid range is %d to %d inclusive", -[NEVPNIKEv2SecurityAssociationParameters lifetimeMinutes](self, "lifetimeMinutes"), 10, 1440];
    v5 = LABEL_4:;
    [NEConfiguration addError:v5 toList:errorsCopy];

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  diffieHellmanGroup = [(NEVPNIKEv2SecurityAssociationParameters *)self diffieHellmanGroup];
  if ((diffieHellmanGroup - 14) >= 8 && (diffieHellmanGroup - 31) >= 2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid DH group (%zd), valid values are 14-21, 31, and 32", -[NEVPNIKEv2SecurityAssociationParameters diffieHellmanGroup](self, "diffieHellmanGroup"), v35, v36];
    goto LABEL_4;
  }

  if (([(NEVPNIKEv2SecurityAssociationParameters *)self encryptionAlgorithm]- 3) >= 5)
  {
    v10 = MEMORY[0x1E696AEC0];
    StringFromIKEv2EncryptionAlgorithm = createStringFromIKEv2EncryptionAlgorithm([(NEVPNIKEv2SecurityAssociationParameters *)self encryptionAlgorithm]);
    v12 = [v10 stringWithFormat:@"Invalid encryption algorithm (%@), valid values are %@, %@, %@, %@, and %@", StringFromIKEv2EncryptionAlgorithm, @"AES-128", @"AES-256", @"AES-128-GCM", @"AES-256-GCM", @"ChaCha20Poly1305"];
    [NEConfiguration addError:v12 toList:errorsCopy];
  }

  if (([(NEVPNIKEv2SecurityAssociationParameters *)self integrityAlgorithm]- 3) >= 3)
  {
    v17 = MEMORY[0x1E696AEC0];
    integrityAlgorithm = [(NEVPNIKEv2SecurityAssociationParameters *)self integrityAlgorithm];
    if ((integrityAlgorithm - 1) >= 5)
    {
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%ld)", integrityAlgorithm];
    }

    else
    {
      v19 = off_1E7F0B440[integrityAlgorithm - 1];
    }

    v20 = [v17 stringWithFormat:@"Invalid integrity algorithm (%@), valid values are %@, %@, and %@", v19, @"SHA2-256", @"SHA2-384", @"SHA2-512"];
    [NEConfiguration addError:v20 toList:errorsCopy];

    goto LABEL_5;
  }

  v13 = errorsCopy;
  if (!self)
  {
    v6 = 0;
    goto LABEL_46;
  }

  postQuantumKeyExchangeMethods = [(NEVPNIKEv2SecurityAssociationParameters *)self postQuantumKeyExchangeMethods];
  v15 = [postQuantumKeyExchangeMethods count];
  if (!v15)
  {
    v6 = 1;
    goto LABEL_45;
  }

  if (v15 >= 8)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Too many post-quantum KE methods (%zu > 7)", v15];
    [NEConfiguration addError:v16 toList:v13];

    v6 = 0;
    goto LABEL_45;
  }

  v21 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v15 + 1];
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NEVPNIKEv2SecurityAssociationParameters diffieHellmanGroup](self, "diffieHellmanGroup")}];
  [v21 addObject:v22];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = postQuantumKeyExchangeMethods;
  v23 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v23)
  {
    v6 = 1;
    goto LABEL_44;
  }

  v24 = v23;
  v25 = *v40;
  v37 = postQuantumKeyExchangeMethods;
  while (2)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v40 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v39 + 1) + 8 * i);
      if (!isa_nsnumber(v27))
      {
        [NEConfiguration addError:v13 toList:?];
        v6 = 0;
        postQuantumKeyExchangeMethods = v37;
        goto LABEL_44;
      }

      v28 = v27;
      integerValue = [v28 integerValue];
      v30 = integerValue;
      if (integerValue > 0x25)
      {
LABEL_47:
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        v32 = MEMORY[0x1E696AEC0];
        if (has_internal_diagnostics)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid additional KE Method (%zd), valid values are 0, 14-21, 31, 32, 36 and 37", v30];
          goto LABEL_43;
        }

LABEL_42:
        [v32 stringWithFormat:@"Invalid post-quantum KE Method (%zd), valid values are 0, 36, and 37", v30];
        v33 = LABEL_43:;
        [NEConfiguration addError:v33 toList:v13];
        postQuantumKeyExchangeMethods = v37;

        v6 = 0;
        goto LABEL_44;
      }

      if (((1 << integerValue) & 0x1803FC000) != 0)
      {
        if ((os_variant_has_internal_diagnostics() & 1) == 0)
        {
          v32 = MEMORY[0x1E696AEC0];
          goto LABEL_42;
        }
      }

      else if (((1 << integerValue) & 0x3000000001) == 0)
      {
        goto LABEL_47;
      }

      if ([v21 containsObject:v28])
      {
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicated post-quantum KE method (%zd)", v30];
        [NEConfiguration addError:v31 toList:v13];
      }

      else if (v30)
      {
        [v21 addObject:v28];
      }
    }

    v24 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    v6 = 1;
    postQuantumKeyExchangeMethods = v37;
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_44:

LABEL_45:
LABEL_46:

LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEVPNIKEv2SecurityAssociationParameters allocWithZone:?]];
  if (v4)
  {
    [(NEVPNIKEv2SecurityAssociationParameters *)v4 setEncryptionAlgorithm:[(NEVPNIKEv2SecurityAssociationParameters *)self encryptionAlgorithm]];
    [(NEVPNIKEv2SecurityAssociationParameters *)v4 setIntegrityAlgorithm:[(NEVPNIKEv2SecurityAssociationParameters *)self integrityAlgorithm]];
    [(NEVPNIKEv2SecurityAssociationParameters *)v4 setDiffieHellmanGroup:[(NEVPNIKEv2SecurityAssociationParameters *)self diffieHellmanGroup]];
    v5 = objc_alloc(MEMORY[0x1E695DEC8]);
    postQuantumKeyExchangeMethods = [(NEVPNIKEv2SecurityAssociationParameters *)self postQuantumKeyExchangeMethods];
    v7 = [v5 initWithArray:postQuantumKeyExchangeMethods copyItems:1];
    [(NEVPNIKEv2SecurityAssociationParameters *)v4 setPostQuantumKeyExchangeMethods:v7];

    [(NEVPNIKEv2SecurityAssociationParameters *)v4 setLifetimeMinutes:[(NEVPNIKEv2SecurityAssociationParameters *)self lifetimeMinutes]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[NEVPNIKEv2SecurityAssociationParameters encryptionAlgorithm](self forKey:{"encryptionAlgorithm"), @"EncryptionAlgorithm"}];
  [coderCopy encodeInt32:-[NEVPNIKEv2SecurityAssociationParameters integrityAlgorithm](self forKey:{"integrityAlgorithm"), @"IntegrityAlgorithm"}];
  [coderCopy encodeInt32:-[NEVPNIKEv2SecurityAssociationParameters diffieHellmanGroup](self forKey:{"diffieHellmanGroup"), @"DiffieHellmanGroup"}];
  postQuantumKeyExchangeMethods = [(NEVPNIKEv2SecurityAssociationParameters *)self postQuantumKeyExchangeMethods];
  [coderCopy encodeObject:postQuantumKeyExchangeMethods forKey:@"PostQuantumKeyExchangeMethods"];

  [coderCopy encodeInt32:-[NEVPNIKEv2SecurityAssociationParameters lifetimeMinutes](self forKey:{"lifetimeMinutes"), @"LifeTime"}];
}

- (NEVPNIKEv2SecurityAssociationParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NEVPNIKEv2SecurityAssociationParameters *)self init];
  if (v5)
  {
    v5->_encryptionAlgorithm = [coderCopy decodeInt32ForKey:@"EncryptionAlgorithm"];
    v5->_integrityAlgorithm = [coderCopy decodeInt32ForKey:@"IntegrityAlgorithm"];
    v5->_diffieHellmanGroup = [coderCopy decodeInt32ForKey:@"DiffieHellmanGroup"];
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PostQuantumKeyExchangeMethods"];
    if (v6)
    {
      objc_storeStrong(&v5->_postQuantumKeyExchangeMethods, v6);
    }

    v5->_lifetimeMinutes = [coderCopy decodeInt32ForKey:@"LifeTime"];
  }

  return v5;
}

- (NEVPNIKEv2SecurityAssociationParameters)init
{
  v7.receiver = self;
  v7.super_class = NEVPNIKEv2SecurityAssociationParameters;
  v2 = [(NEVPNIKEv2SecurityAssociationParameters *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_encryptionAlgorithm = xmmword_1BAA4E600;
    postQuantumKeyExchangeMethods = v2->_postQuantumKeyExchangeMethods;
    v5 = MEMORY[0x1E695E0F0];
    v2->_diffieHellmanGroup = 14;
    v2->_postQuantumKeyExchangeMethods = v5;

    v3->_lifetimeMinutes = 10;
  }

  return v3;
}

- (id)copyDictionary
{
  if (!self)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([self encryptionAlgorithm] == 1)
  {
    v3 = kNEIKEv2EncryptionAlgorithmDESValue;
  }

  else if ([self encryptionAlgorithm] == 2)
  {
    v3 = kNEIKEv2EncryptionAlgorithm3DESValue;
  }

  else if ([self encryptionAlgorithm] == 3)
  {
    v3 = kNEIKEv2EncryptionAlgorithmAES128Value;
  }

  else if ([self encryptionAlgorithm] == 4)
  {
    v3 = kNEIKEv2EncryptionAlgorithmAES256Value;
  }

  else if ([self encryptionAlgorithm] == 5)
  {
    v3 = kNEIKEv2EncryptionAlgorithmAES128GCMValue;
  }

  else if ([self encryptionAlgorithm] == 6)
  {
    v3 = kNEIKEv2EncryptionAlgorithmAES256GCMValue;
  }

  else
  {
    if ([self encryptionAlgorithm] != 7)
    {
      goto LABEL_17;
    }

    v3 = kNEIKEv2EncryptionAlgorithmChaCha20Poly1305Value;
  }

  [v2 setObject:*v3 forKeyedSubscript:@"EncryptionAlgorithm"];
LABEL_17:
  if ([self integrityAlgorithm] == 1)
  {
    v4 = kNEIKEv2IntegrityAlgorithmSHA96Value;
LABEL_27:
    [v2 setObject:*v4 forKeyedSubscript:@"IntegrityAlgorithm"];
    goto LABEL_28;
  }

  if ([self integrityAlgorithm] == 2)
  {
    v4 = kNEIKEv2IntegrityAlgorithmSHA160Value;
    goto LABEL_27;
  }

  if ([self integrityAlgorithm] == 3)
  {
    v4 = kNEIKEv2IntegrityAlgorithmSHA256Value;
    goto LABEL_27;
  }

  if ([self integrityAlgorithm] == 4)
  {
    v4 = kNEIKEv2IntegrityAlgorithmSHA384Value;
    goto LABEL_27;
  }

  if ([self integrityAlgorithm] == 5)
  {
    v4 = kNEIKEv2IntegrityAlgorithmSHA512Value;
    goto LABEL_27;
  }

LABEL_28:
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "diffieHellmanGroup")}];
  [v2 setObject:v5 forKeyedSubscript:@"DiffieHellmanGroup"];

  postQuantumKeyExchangeMethods = [self postQuantumKeyExchangeMethods];
  [v2 setObject:postQuantumKeyExchangeMethods forKeyedSubscript:@"PostQuantumKeyExchangeMethods"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(self, "lifetimeMinutes")}];
  [v2 setObject:v7 forKeyedSubscript:@"LifeTimeInMinutes"];

  return v2;
}

@end