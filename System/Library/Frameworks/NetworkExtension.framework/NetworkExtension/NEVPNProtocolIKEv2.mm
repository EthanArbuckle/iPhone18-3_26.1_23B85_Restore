@interface NEVPNProtocolIKEv2
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)needToUpdateKeychain;
- (NEVPNProtocolIKEv2)initWithCoder:(id)a3;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initWithPluginType:(void *)a1;
- (void)setDefaultsForUIConfiguration;
- (void)setPluginType:(void *)a1;
- (void)syncWithKeychainInDomain:(int64_t)a3 configuration:(id)a4 suffix:(id)a5;
@end

@implementation NEVPNProtocolIKEv2

- (BOOL)needToUpdateKeychain
{
  v10.receiver = self;
  v10.super_class = NEVPNProtocolIKEv2;
  if ([(NEVPNProtocolIPSec *)&v10 needToUpdateKeychain])
  {
    return 1;
  }

  Property = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
  v6 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 32, 1);
  }

  v7 = Property;

  if (v7)
  {
    v8 = [v7 data];
    v3 = [v8 length] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)syncWithKeychainInDomain:(int64_t)a3 configuration:(id)a4 suffix:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = NEVPNProtocolIKEv2;
  [(NEVPNProtocolIPSec *)&v17 syncWithKeychainInDomain:a3 configuration:v8 suffix:v9];
  Property = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
  v12 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v11, 32, 1);
  }

  v13 = Property;

  if (v13 && [v13 domain] == a3)
  {
    if (v9)
    {
      v14 = [v9 stringByAppendingString:@".PPK"];
    }

    else
    {
      v14 = @"PPK";
    }

    v15 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
    v16 = [v15 identifier];
    [v13 syncUsingConfiguration:v8 accountName:v16 passwordType:2 identifierSuffix:v14];
  }
}

- (id)copyLegacyDictionary
{
  v50.receiver = self;
  v50.super_class = NEVPNProtocolIKEv2;
  v3 = [(NEVPNProtocolIPSec *)&v50 copyLegacyDictionary];
  if (!v3)
  {
    return v3;
  }

  if ([(NEVPNProtocolIKEv2 *)self deadPeerDetectionRate])
  {
    if ([(NEVPNProtocolIKEv2 *)self deadPeerDetectionRate]== NEVPNIKEv2DeadPeerDetectionRateLow)
    {
      v4 = kNEIKEv2DeadPeerDetectionRateLowValue;
    }

    else if ([(NEVPNProtocolIKEv2 *)self deadPeerDetectionRate]== NEVPNIKEv2DeadPeerDetectionRateMedium)
    {
      v4 = kNEIKEv2DeadPeerDetectionRateMediumValue;
    }

    else
    {
      if ([(NEVPNProtocolIKEv2 *)self deadPeerDetectionRate]!= NEVPNIKEv2DeadPeerDetectionRateHigh)
      {
        goto LABEL_11;
      }

      v4 = kNEIKEv2DeadPeerDetectionRateHighValue;
    }
  }

  else
  {
    v4 = kNEIKEv2DeadPeerDetectionRateNoneValue;
  }

  [v3 setObject:*v4 forKeyedSubscript:@"DeadPeerDetectionRate"];
LABEL_11:
  v5 = [(NEVPNProtocolIKEv2 *)self serverCertificateIssuerCommonName];

  if (v5)
  {
    v6 = [(NEVPNProtocolIKEv2 *)self serverCertificateIssuerCommonName];
    [v3 setObject:v6 forKeyedSubscript:@"ServerCertificateIssuerCommonName"];
  }

  v7 = [(NEVPNProtocolIKEv2 *)self serverCertificateCommonName];

  if (v7)
  {
    v8 = [(NEVPNProtocolIKEv2 *)self serverCertificateCommonName];
    [v3 setObject:v8 forKeyedSubscript:@"ServerCertificateCommonName"];
  }

  v9 = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParameters];
  v10 = [(NEVPNIKEv2SecurityAssociationParameters *)v9 copyDictionary];
  [v3 setObject:v10 forKeyedSubscript:@"IKESecurityAssociationParameters"];

  v11 = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParameters];
  v12 = [(NEVPNIKEv2SecurityAssociationParameters *)v11 copyDictionary];
  [v3 setObject:v12 forKeyedSubscript:@"ChildSecurityAssociationParameters"];

  if ([(NEVPNProtocolIKEv2 *)self certificateType]== NEVPNIKEv2CertificateTypeRSA)
  {
    v13 = kNEIKEv2CertificateTypeRSAValue;
  }

  else if ([(NEVPNProtocolIKEv2 *)self certificateType]== NEVPNIKEv2CertificateTypeECDSA256)
  {
    v13 = kNEIKEv2CertificateTypeECDSA256Value;
  }

  else if ([(NEVPNProtocolIKEv2 *)self certificateType]== NEVPNIKEv2CertificateTypeECDSA384)
  {
    v13 = kNEIKEv2CertificateTypeECDSA384Value;
  }

  else if ([(NEVPNProtocolIKEv2 *)self certificateType]== NEVPNIKEv2CertificateTypeECDSA521)
  {
    v13 = kNEIKEv2CertificateTypeECDSA521Value;
  }

  else
  {
    if ([(NEVPNProtocolIKEv2 *)self certificateType]!= NEVPNIKEv2CertificateTypeEd25519)
    {
      goto LABEL_26;
    }

    v13 = kNEIKEv2CertificateTypeEd25519Value;
  }

  [v3 setObject:*v13 forKeyedSubscript:@"CertificateType"];
LABEL_26:
  if ([(NEVPNProtocolIPSec *)self useExtendedAuthentication])
  {
    v14 = &unk_1F38BA6E8;
  }

  else
  {
    v14 = &unk_1F38BA700;
  }

  [v3 setObject:v14 forKeyedSubscript:@"ExtendedAuthEnabled"];
  if ([(NEVPNProtocolIKEv2 *)self useConfigurationAttributeInternalIPSubnet])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 useConfigurationAttributeInternalIPSubnet](self, "useConfigurationAttributeInternalIPSubnet")}];
    [v3 setObject:v15 forKeyedSubscript:@"UseConfigurationAttributeInternalIPSubnet"];
  }

  if ([(NEVPNProtocolIKEv2 *)self disableMOBIKE])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 disableMOBIKE](self, "disableMOBIKE")}];
    [v3 setObject:v16 forKeyedSubscript:@"DisableMOBIKE"];
  }

  if ([(NEVPNProtocolIKEv2 *)self disableRedirect])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 disableRedirect](self, "disableRedirect")}];
    [v3 setObject:v17 forKeyedSubscript:@"DisableRedirect"];
  }

  if ([(NEVPNProtocolIKEv2 *)self enablePFS])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 enablePFS](self, "enablePFS")}];
    [v3 setObject:v18 forKeyedSubscript:@"EnablePFS"];
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 allowPostQuantumKeyExchangeFallback](self, "allowPostQuantumKeyExchangeFallback")}];
  [v3 setObject:v19 forKeyedSubscript:@"AllowPostQuantumKeyExchangeFallback"];

  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[NEVPNProtocolIKEv2 natKeepAliveOffloadEnable](self, "natKeepAliveOffloadEnable")}];
  [v3 setObject:v20 forKeyedSubscript:@"NATKeepAliveOffloadEnable"];

  if ([(NEVPNProtocolIKEv2 *)self natKeepAliveOffloadInterval])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[NEVPNProtocolIKEv2 natKeepAliveOffloadInterval](self, "natKeepAliveOffloadInterval")}];
    [v3 setObject:v21 forKeyedSubscript:@"NATKeepAliveInterval"];
  }

  if ([(NEVPNProtocolIKEv2 *)self disableMOBIKERetryOnWake])
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[NEVPNProtocolIKEv2 disableMOBIKERetryOnWake](self, "disableMOBIKERetryOnWake")}];
    [v3 setObject:v22 forKeyedSubscript:@"DisableMOBIKERetryOnWake"];
  }

  if ([(NEVPNProtocolIKEv2 *)self enableRevocationCheck])
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 enableRevocationCheck](self, "enableRevocationCheck")}];
    [v3 setObject:v23 forKeyedSubscript:@"EnableCertificateRevocationCheck"];

    if ([(NEVPNProtocolIKEv2 *)self strictRevocationCheck])
    {
      v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 strictRevocationCheck](self, "strictRevocationCheck")}];
      [v3 setObject:v24 forKeyedSubscript:@"StrictCertificateRevocationCheck"];
    }
  }

  if ([(NEVPNProtocolIKEv2 *)self minimumTLSVersion]== NEVPNIKEv2TLSVersion1_0)
  {
    v25 = kNEIKEv2TLSVersion1_0Value;
  }

  else if ([(NEVPNProtocolIKEv2 *)self minimumTLSVersion]== NEVPNIKEv2TLSVersion1_1)
  {
    v25 = kNEIKEv2TLSVersion1_1Value;
  }

  else
  {
    if ([(NEVPNProtocolIKEv2 *)self minimumTLSVersion]!= NEVPNIKEv2TLSVersion1_2)
    {
      goto LABEL_51;
    }

    v25 = kNEIKEv2TLSVersion1_2Value;
  }

  [v3 setObject:*v25 forKeyedSubscript:@"TLSMinimumVersion"];
LABEL_51:
  if ([(NEVPNProtocolIKEv2 *)self maximumTLSVersion]== NEVPNIKEv2TLSVersion1_0)
  {
    v26 = kNEIKEv2TLSVersion1_0Value;
LABEL_57:
    [v3 setObject:*v26 forKeyedSubscript:@"TLSMaximumVersion"];
    goto LABEL_58;
  }

  if ([(NEVPNProtocolIKEv2 *)self maximumTLSVersion]== NEVPNIKEv2TLSVersion1_1)
  {
    v26 = kNEIKEv2TLSVersion1_1Value;
    goto LABEL_57;
  }

  if ([(NEVPNProtocolIKEv2 *)self maximumTLSVersion]== NEVPNIKEv2TLSVersion1_2)
  {
    v26 = kNEIKEv2TLSVersion1_2Value;
    goto LABEL_57;
  }

LABEL_58:
  if ([(NEVPNProtocolIKEv2 *)self enableFallback])
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 enableFallback](self, "enableFallback")}];
    [v3 setObject:v27 forKeyedSubscript:@"EnableFallback"];
  }

  if ([(NEVPNProtocolIKEv2 *)self mtu])
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NEVPNProtocolIKEv2 mtu](self, "mtu")}];
    [v3 setObject:v28 forKeyedSubscript:@"MTU"];
  }

  v29 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];

  if (v29)
  {
    Property = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
    v32 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v31, 32, 1);
    }

    v33 = [Property data];

    if (v33)
    {
      v34 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
      v36 = v34;
      if (v34)
      {
        v34 = objc_getProperty(v34, v35, 32, 1);
      }

      v37 = [v34 data];
      [v3 setObject:v37 forKeyedSubscript:@"PPK"];
    }

    v38 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
    v39 = [v38 identifier];
    v40 = [v39 copy];
    [v3 setObject:v40 forKeyedSubscript:@"PPKIdentifier"];

    v41 = MEMORY[0x1E696AD98];
    v42 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
    v43 = [v41 numberWithBool:{objc_msgSend(v42, "isMandatory")}];
    [v3 setObject:v43 forKeyedSubscript:@"PPKMandatory"];

    v44 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
    v45 = [v44 keychainReference];

    if (v45)
    {
      v46 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
      v47 = [v46 keychainReference];
      v48 = [v47 copy];
      [v3 setObject:v48 forKeyedSubscript:@"PPKReference"];
    }
  }

  return v3;
}

- (void)setDefaultsForUIConfiguration
{
  v17[4] = *MEMORY[0x1E69E9840];
  IKESecurityAssociationParameters = self->_IKESecurityAssociationParameters;
  self->_IKESecurityAssociationParameters = 0;

  childSecurityAssociationParameters = self->_childSecurityAssociationParameters;
  self->_childSecurityAssociationParameters = 0;

  v5 = objc_alloc_init(NEVPNIKEv2SecurityAssociationParameters);
  [(NEVPNIKEv2SecurityAssociationParameters *)v5 setEncryptionAlgorithm:6];
  [(NEVPNIKEv2SecurityAssociationParameters *)v5 setIntegrityAlgorithm:3];
  [(NEVPNIKEv2SecurityAssociationParameters *)v5 setDiffieHellmanGroup:19];
  [(NEVPNIKEv2SecurityAssociationParameters *)v5 setPostQuantumKeyExchangeMethods:&unk_1F38BA898];
  [(NEVPNIKEv2SecurityAssociationParameters *)v5 setLifetimeMinutes:60];
  v6 = [(NEVPNIKEv2SecurityAssociationParameters *)v5 copy];
  [v6 setLifetimeMinutes:30];
  v7 = objc_alloc_init(NEVPNIKEv2SecurityAssociationParameters);
  [(NEVPNIKEv2SecurityAssociationParameters *)v7 setEncryptionAlgorithm:6];
  [(NEVPNIKEv2SecurityAssociationParameters *)v7 setIntegrityAlgorithm:3];
  [(NEVPNIKEv2SecurityAssociationParameters *)v7 setDiffieHellmanGroup:14];
  [(NEVPNIKEv2SecurityAssociationParameters *)v7 setPostQuantumKeyExchangeMethods:&unk_1F38BA8B0];
  [(NEVPNIKEv2SecurityAssociationParameters *)v7 setLifetimeMinutes:60];
  v8 = [(NEVPNIKEv2SecurityAssociationParameters *)v7 copy];
  [v8 setLifetimeMinutes:30];
  v9 = objc_alloc_init(NEVPNIKEv2SecurityAssociationParameters);
  [(NEVPNIKEv2SecurityAssociationParameters *)v9 setEncryptionAlgorithm:4];
  [(NEVPNIKEv2SecurityAssociationParameters *)v9 setIntegrityAlgorithm:3];
  [(NEVPNIKEv2SecurityAssociationParameters *)v9 setDiffieHellmanGroup:19];
  [(NEVPNIKEv2SecurityAssociationParameters *)v9 setPostQuantumKeyExchangeMethods:&unk_1F38BA8C8];
  [(NEVPNIKEv2SecurityAssociationParameters *)v9 setLifetimeMinutes:60];
  v10 = [(NEVPNIKEv2SecurityAssociationParameters *)v9 copy];
  [v10 setLifetimeMinutes:30];
  v11 = objc_alloc_init(NEVPNIKEv2SecurityAssociationParameters);
  [(NEVPNIKEv2SecurityAssociationParameters *)v11 setEncryptionAlgorithm:4];
  [(NEVPNIKEv2SecurityAssociationParameters *)v11 setIntegrityAlgorithm:3];
  [(NEVPNIKEv2SecurityAssociationParameters *)v11 setDiffieHellmanGroup:14];
  [(NEVPNIKEv2SecurityAssociationParameters *)v11 setPostQuantumKeyExchangeMethods:&unk_1F38BA8E0];
  [(NEVPNIKEv2SecurityAssociationParameters *)v11 setLifetimeMinutes:60];
  v12 = [(NEVPNIKEv2SecurityAssociationParameters *)v11 copy];
  [v12 setLifetimeMinutes:30];
  v17[0] = v5;
  v17[1] = v7;
  v17[2] = v9;
  v17[3] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  [(NEVPNProtocolIKEv2 *)self setIKESecurityAssociationParametersArray:v13];

  v16[0] = v6;
  v16[1] = v8;
  v16[2] = v10;
  v16[3] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  [(NEVPNProtocolIKEv2 *)self setChildSecurityAssociationParametersArray:v14];

  [(NEVPNProtocolIKEv2 *)self setEnablePFS:1];
  [(NEVPNProtocolIKEv2 *)self setOpportunisticPFS:1];
  [(NEVPNProtocolIKEv2 *)self setAllowPostQuantumKeyExchangeFallback:1];

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49.receiver = self;
  v49.super_class = NEVPNProtocolIKEv2;
  v5 = [(NEVPNProtocolIPSec *)&v49 checkValidityAndCollectErrors:v4];
  v6 = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParametersArray];
  v7 = [v6 count];

  if (v7)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v8 = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParametersArray];
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v46;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v5 &= [*(*(&v45 + 1) + 8 * i) checkValidityAndCollectErrors:v4];
        }

        v10 = [v8 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v13 = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParameters];
    v14 = [v13 checkValidityAndCollectErrors:v4];

    v5 &= v14;
  }

  v15 = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParametersArray];
  v16 = [v15 count];

  if (v16)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v17 = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParametersArray];
    v18 = [v17 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v42;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v42 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v5 &= [*(*(&v41 + 1) + 8 * j) checkValidityAndCollectErrors:v4];
        }

        v19 = [v17 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v22 = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParameters];
    v23 = [v22 checkValidityAndCollectErrors:v4];

    LOBYTE(v5) = v23 & v5;
  }

  v24 = v4;
  if (self)
  {
    if (!self->_strictAlgorithmSelection)
    {
      goto LABEL_32;
    }

    v25 = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParameters];
    v26 = [v25 encryptionAlgorithm];

    v27 = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParameters];
    v28 = [v27 encryptionAlgorithm];

    v29 = (v26 - 2) > 5 ? 0 : qword_1BAA4FB98[v26 - 2];
    v30 = (v28 - 2) > 5 ? 0 : qword_1BAA4FB98[v28 - 2];
    if (v29 >= v30)
    {
      goto LABEL_32;
    }

    v31 = MEMORY[0x1E696AEC0];
    StringFromIKEv2EncryptionAlgorithm = createStringFromIKEv2EncryptionAlgorithm(v26);
    v33 = createStringFromIKEv2EncryptionAlgorithm(v28);
    v34 = [v31 stringWithFormat:@"IKE SA encryption algorithm (%@) is weaker than Child SA encryption algorithm (%@)", StringFromIKEv2EncryptionAlgorithm, v33];
    [NEConfiguration addError:v34 toList:v24];
  }

  LOBYTE(v5) = 0;
LABEL_32:

  v35 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
  if (v35)
  {
    v36 = v35;
    v37 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
    v38 = [v37 checkValidityAndCollectErrors:v24];

    LOBYTE(v5) = v38 & v5;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31.receiver = self;
  v31.super_class = NEVPNProtocolIKEv2;
  v4 = [(NEVPNProtocolIPSec *)&v31 copyWithZone:a3];
  v5 = [(NEVPNProtocolIKEv2 *)self pluginType];
  [(NEVPNProtocolIKEv2 *)v4 setPluginType:v5];

  [v4 setDeadPeerDetectionRate:{-[NEVPNProtocolIKEv2 deadPeerDetectionRate](self, "deadPeerDetectionRate")}];
  v6 = [(NEVPNProtocolIKEv2 *)self serverCertificateIssuerCommonName];
  [v4 setServerCertificateIssuerCommonName:v6];

  v7 = [(NEVPNProtocolIKEv2 *)self serverCertificateCommonName];
  [v4 setServerCertificateCommonName:v7];

  v8 = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParameters];
  v9 = [v8 copy];
  v10 = v4[37];
  v4[37] = v9;

  v11 = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParameters];
  v12 = [v11 copy];
  v13 = v4[38];
  v4[38] = v12;

  v14 = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParametersArray];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x1E695DEC8]);
    v16 = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParametersArray];
    v17 = [v15 initWithArray:v16 copyItems:1];
    v18 = v4[44];
    v4[44] = v17;
  }

  v19 = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParametersArray];

  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x1E695DEC8]);
    v21 = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParametersArray];
    v22 = [v20 initWithArray:v21 copyItems:1];
    v23 = v4[45];
    v4[45] = v22;
  }

  if (self)
  {
    *(v4 + 249) = self->_strictAlgorithmSelection;
    wakeForRekey = self->_wakeForRekey;
  }

  else
  {
    wakeForRekey = 0;
    *(v4 + 249) = 0;
  }

  *(v4 + 248) = wakeForRekey;
  v4[36] = [(NEVPNProtocolIKEv2 *)self certificateType];
  *(v4 + 240) = [(NEVPNProtocolIKEv2 *)self useConfigurationAttributeInternalIPSubnet];
  *(v4 + 241) = [(NEVPNProtocolIKEv2 *)self disableMOBIKE];
  *(v4 + 242) = [(NEVPNProtocolIKEv2 *)self disableRedirect];
  *(v4 + 243) = [(NEVPNProtocolIKEv2 *)self enablePFS];
  *(v4 + 244) = [(NEVPNProtocolIKEv2 *)self allowPostQuantumKeyExchangeFallback];
  *(v4 + 250) = [(NEVPNProtocolIKEv2 *)self opportunisticPFS];
  *(v4 + 63) = [(NEVPNProtocolIKEv2 *)self natKeepAliveOffloadEnable];
  *(v4 + 64) = [(NEVPNProtocolIKEv2 *)self natKeepAliveOffloadInterval];
  *(v4 + 65) = [(NEVPNProtocolIKEv2 *)self disableMOBIKERetryOnWake];
  v25 = [(NEVPNProtocolIKEv2 *)self providerBundleIdentifier];
  v26 = v4[46];
  v4[46] = v25;

  *(v4 + 245) = [(NEVPNProtocolIKEv2 *)self enableRevocationCheck];
  *(v4 + 246) = [(NEVPNProtocolIKEv2 *)self strictRevocationCheck];
  v4[39] = [(NEVPNProtocolIKEv2 *)self minimumTLSVersion];
  v4[40] = [(NEVPNProtocolIKEv2 *)self maximumTLSVersion];
  v4[47] = [(NEVPNProtocolIKEv2 *)self tunnelKind];
  *(v4 + 251) = [(NEVPNProtocolIKEv2 *)self disableInitialContact];
  *(v4 + 247) = [(NEVPNProtocolIKEv2 *)self enableFallback];
  v4[41] = [(NEVPNProtocolIKEv2 *)self mtu];
  v27 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
  v28 = [v27 copy];
  v29 = v4[42];
  v4[42] = v28;

  return v4;
}

- (void)setPluginType:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v14 = v3;
    v4 = [v3 copy];
    v5 = a1[43];
    a1[43] = v4;

    v7 = a1[10];
    if (v14)
    {
      if (v7 != 1)
      {
        a1[10] = 1;
        v8 = objc_getProperty(a1, v6, 96, 1);
        [v8 setDomain:1];

        v9 = [a1 passwordKeychainItem];
        [v9 setDomain:1];
      }

      v10 = @"com.apple.managed.vpn.shared";
      v11 = a1;
    }

    else
    {
      if (v7)
      {
        a1[10] = 0;
        v12 = objc_getProperty(a1, v6, 96, 1);
        [v12 setDomain:0];

        v13 = [a1 passwordKeychainItem];
        [v13 setDomain:0];
      }

      v11 = a1;
      v10 = 0;
    }

    objc_setProperty_atomic(v11, v6, v10, 88);
    v3 = v14;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NEVPNProtocolIKEv2;
  [(NEVPNProtocolIPSec *)&v15 encodeWithCoder:v4];
  [v4 encodeInt32:-[NEVPNProtocolIKEv2 deadPeerDetectionRate](self forKey:{"deadPeerDetectionRate"), @"DeadPeerDetectionRate"}];
  v5 = [(NEVPNProtocolIKEv2 *)self serverCertificateIssuerCommonName];
  [v4 encodeObject:v5 forKey:@"ServerCertificateIssuer"];

  v6 = [(NEVPNProtocolIKEv2 *)self serverCertificateCommonName];
  [v4 encodeObject:v6 forKey:@"ServerCertificateCommonName"];

  v7 = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParameters];
  [v4 encodeObject:v7 forKey:@"IKESAParameters"];

  v8 = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParameters];
  [v4 encodeObject:v8 forKey:@"ChildSAParameters"];

  v9 = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParametersArray];
  [v4 encodeObject:v9 forKey:@"IKESAParametersArray"];

  v10 = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParametersArray];
  [v4 encodeObject:v10 forKey:@"ChildSAParametersArray"];

  if (self)
  {
    [v4 encodeBool:self->_strictAlgorithmSelection forKey:@"StrictAlgorithmSelection"];
    wakeForRekey = self->_wakeForRekey;
  }

  else
  {
    [v4 encodeBool:0 forKey:@"StrictAlgorithmSelection"];
    wakeForRekey = 0;
  }

  [v4 encodeBool:wakeForRekey forKey:@"WakeForRekey"];
  [v4 encodeInt32:-[NEVPNProtocolIKEv2 certificateType](self forKey:{"certificateType"), @"CertificateType"}];
  [v4 encodeBool:-[NEVPNProtocolIKEv2 useConfigurationAttributeInternalIPSubnet](self forKey:{"useConfigurationAttributeInternalIPSubnet"), @"UseConfigurationAttributeInternalIPSubnet"}];
  [v4 encodeBool:-[NEVPNProtocolIKEv2 disableMOBIKE](self forKey:{"disableMOBIKE"), @"DisableMOBIKE"}];
  [v4 encodeBool:-[NEVPNProtocolIKEv2 disableRedirect](self forKey:{"disableRedirect"), @"DisableRedirect"}];
  [v4 encodeBool:-[NEVPNProtocolIKEv2 enablePFS](self forKey:{"enablePFS"), @"EnablePFS"}];
  [v4 encodeBool:-[NEVPNProtocolIKEv2 allowPostQuantumKeyExchangeFallback](self forKey:{"allowPostQuantumKeyExchangeFallback"), @"AllowPostQuantumKeyExchangeMethodFallback"}];
  [v4 encodeBool:-[NEVPNProtocolIKEv2 opportunisticPFS](self forKey:{"opportunisticPFS"), @"OpportunisticPFS"}];
  [v4 encodeInt32:-[NEVPNProtocolIKEv2 natKeepAliveOffloadEnable](self forKey:{"natKeepAliveOffloadEnable"), @"NATKeepAliveOffloadEnable"}];
  [v4 encodeInt32:-[NEVPNProtocolIKEv2 natKeepAliveOffloadInterval](self forKey:{"natKeepAliveOffloadInterval"), @"NATKeepAliveOffloadInterval"}];
  [v4 encodeInt32:-[NEVPNProtocolIKEv2 disableMOBIKERetryOnWake](self forKey:{"disableMOBIKERetryOnWake"), @"DisableMOBIKERetryOnWake"}];
  v12 = [(NEVPNProtocolIKEv2 *)self providerBundleIdentifier];
  [v4 encodeObject:v12 forKey:@"ProviderBundleIdentifier"];

  v13 = [(NEVPNProtocolIKEv2 *)self pluginType];
  [v4 encodeObject:v13 forKey:@"PluginType"];

  [v4 encodeBool:-[NEVPNProtocolIKEv2 enableRevocationCheck](self forKey:{"enableRevocationCheck"), @"EnableRevocationCheck"}];
  [v4 encodeBool:-[NEVPNProtocolIKEv2 strictRevocationCheck](self forKey:{"strictRevocationCheck"), @"StrictRevocationCheck"}];
  [v4 encodeInt32:-[NEVPNProtocolIKEv2 minimumTLSVersion](self forKey:{"minimumTLSVersion"), @"MinimumTLSVersion"}];
  [v4 encodeInt32:-[NEVPNProtocolIKEv2 maximumTLSVersion](self forKey:{"maximumTLSVersion"), @"MaximumTLSVersion"}];
  [v4 encodeInt32:-[NEVPNProtocolIKEv2 tunnelKind](self forKey:{"tunnelKind"), @"TunnelType"}];
  [v4 encodeBool:-[NEVPNProtocolIKEv2 disableInitialContact](self forKey:{"disableInitialContact"), @"DisableInitialContact"}];
  [v4 encodeBool:-[NEVPNProtocolIKEv2 enableFallback](self forKey:{"enableFallback"), @"EnableFallback"}];
  [v4 encodeInt32:-[NEVPNProtocolIKEv2 mtu](self forKey:{"mtu"), @"MTU"}];
  v14 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
  [v4 encodeObject:v14 forKey:@"PPKConfiguration"];
}

- (NEVPNProtocolIKEv2)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = NEVPNProtocolIKEv2;
  v5 = [(NEVPNProtocolIPSec *)&v31 initWithCoder:v4];
  if (v5)
  {
    v5->_deadPeerDetectionRate = [v4 decodeInt32ForKey:@"DeadPeerDetectionRate"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServerCertificateIssuer"];
    serverCertificateIssuerCommonName = v5->_serverCertificateIssuerCommonName;
    v5->_serverCertificateIssuerCommonName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServerCertificateCommonName"];
    serverCertificateCommonName = v5->_serverCertificateCommonName;
    v5->_serverCertificateCommonName = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"IKESAParametersArray"];
    IKESecurityAssociationParametersArray = v5->_IKESecurityAssociationParametersArray;
    v5->_IKESecurityAssociationParametersArray = v13;

    v15 = 0;
    if (!v5->_IKESecurityAssociationParametersArray)
    {
      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IKESAParameters"];
    }

    IKESecurityAssociationParameters = v5->_IKESecurityAssociationParameters;
    v5->_IKESecurityAssociationParameters = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"ChildSAParametersArray"];
    childSecurityAssociationParametersArray = v5->_childSecurityAssociationParametersArray;
    v5->_childSecurityAssociationParametersArray = v20;

    v22 = 0;
    if (!v5->_childSecurityAssociationParametersArray)
    {
      v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ChildSAParameters"];
    }

    childSecurityAssociationParameters = v5->_childSecurityAssociationParameters;
    v5->_childSecurityAssociationParameters = v22;

    v5->_strictAlgorithmSelection = [v4 decodeBoolForKey:@"StrictAlgorithmSelection"];
    v5->_wakeForRekey = [v4 decodeBoolForKey:@"WakeForRekey"];
    v5->_certificateType = [v4 decodeInt32ForKey:@"CertificateType"];
    v5->_useConfigurationAttributeInternalIPSubnet = [v4 decodeBoolForKey:@"UseConfigurationAttributeInternalIPSubnet"];
    v5->_disableMOBIKE = [v4 decodeBoolForKey:@"DisableMOBIKE"];
    v5->_disableRedirect = [v4 decodeBoolForKey:@"DisableRedirect"];
    v5->_enablePFS = [v4 decodeBoolForKey:@"EnablePFS"];
    v5->_allowPostQuantumKeyExchangeFallback = [v4 decodeBoolForKey:@"AllowPostQuantumKeyExchangeMethodFallback"];
    v5->_opportunisticPFS = [v4 decodeBoolForKey:@"OpportunisticPFS"];
    v5->_natKeepAliveOffloadEnable = [v4 decodeInt32ForKey:@"NATKeepAliveOffloadEnable"];
    v5->_natKeepAliveOffloadInterval = [v4 decodeInt32ForKey:@"NATKeepAliveOffloadInterval"];
    v5->_disableMOBIKERetryOnWake = [v4 decodeInt32ForKey:@"DisableMOBIKERetryOnWake"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProviderBundleIdentifier"];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PluginType"];
    pluginType = v5->_pluginType;
    v5->_pluginType = v26;

    v5->_enableRevocationCheck = [v4 decodeBoolForKey:@"EnableRevocationCheck"];
    v5->_strictRevocationCheck = [v4 decodeBoolForKey:@"StrictRevocationCheck"];
    v5->_minimumTLSVersion = [v4 decodeInt32ForKey:@"MinimumTLSVersion"];
    v5->_maximumTLSVersion = [v4 decodeInt32ForKey:@"MaximumTLSVersion"];
    v5->_tunnelKind = [v4 decodeInt32ForKey:@"TunnelType"];
    v5->_disableInitialContact = [v4 decodeBoolForKey:@"DisableInitialContact"];
    v5->_enableFallback = [v4 decodeBoolForKey:@"EnableFallback"];
    v5->_mtu = [v4 decodeInt32ForKey:@"MTU"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PPKConfiguration"];
    ppkConfiguration = v5->_ppkConfiguration;
    v5->_ppkConfiguration = v28;
  }

  return v5;
}

- (void)initWithPluginType:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = NEVPNProtocolIKEv2;
    v4 = objc_msgSendSuper2(&v11, sel_initWithType_, 5);
    a1 = v4;
    if (v4)
    {
      [(NEVPNProtocolIKEv2 *)v4 setPluginType:v3];
      a1[33] = 2;
      v5 = objc_alloc_init(NEVPNIKEv2SecurityAssociationParameters);
      v6 = a1[37];
      a1[37] = v5;

      v7 = objc_alloc_init(NEVPNIKEv2SecurityAssociationParameters);
      v8 = a1[38];
      a1[38] = v7;

      [a1[37] setLifetimeMinutes:60];
      [a1[38] setLifetimeMinutes:30];
      *(a1 + 249) = 0;
      *(a1 + 248) = 0;
      a1[36] = 1;
      *(a1 + 240) = 0;
      *(a1 + 241) = 0;
      *(a1 + 242) = 0;
      *(a1 + 243) = 0;
      *(a1 + 244) = 0;
      *(a1 + 250) = 0;
      *(a1 + 63) = 0;
      *(a1 + 64) = 0;
      v9 = a1[46];
      a1[46] = 0;

      *(a1 + 65) = 0;
      [a1 setDisconnectOnWake:0];
      [a1 setUseExtendedAuthentication:0];
      a1[47] = 1;
      *(a1 + 251) = 0;
      *(a1 + 247) = 0;
    }
  }

  return a1;
}

@end