@interface NEVPNProtocolIKEv2
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)needToUpdateKeychain;
- (NEVPNProtocolIKEv2)initWithCoder:(id)coder;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)initWithPluginType:(void *)type;
- (void)setDefaultsForUIConfiguration;
- (void)setPluginType:(void *)type;
- (void)syncWithKeychainInDomain:(int64_t)domain configuration:(id)configuration suffix:(id)suffix;
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
    data = [v7 data];
    v3 = [data length] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)syncWithKeychainInDomain:(int64_t)domain configuration:(id)configuration suffix:(id)suffix
{
  configurationCopy = configuration;
  suffixCopy = suffix;
  v17.receiver = self;
  v17.super_class = NEVPNProtocolIKEv2;
  [(NEVPNProtocolIPSec *)&v17 syncWithKeychainInDomain:domain configuration:configurationCopy suffix:suffixCopy];
  Property = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
  v12 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v11, 32, 1);
  }

  v13 = Property;

  if (v13 && [v13 domain] == domain)
  {
    if (suffixCopy)
    {
      v14 = [suffixCopy stringByAppendingString:@".PPK"];
    }

    else
    {
      v14 = @"PPK";
    }

    ppkConfiguration = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
    identifier = [ppkConfiguration identifier];
    [v13 syncUsingConfiguration:configurationCopy accountName:identifier passwordType:2 identifierSuffix:v14];
  }
}

- (id)copyLegacyDictionary
{
  v50.receiver = self;
  v50.super_class = NEVPNProtocolIKEv2;
  copyLegacyDictionary = [(NEVPNProtocolIPSec *)&v50 copyLegacyDictionary];
  if (!copyLegacyDictionary)
  {
    return copyLegacyDictionary;
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

  [copyLegacyDictionary setObject:*v4 forKeyedSubscript:@"DeadPeerDetectionRate"];
LABEL_11:
  serverCertificateIssuerCommonName = [(NEVPNProtocolIKEv2 *)self serverCertificateIssuerCommonName];

  if (serverCertificateIssuerCommonName)
  {
    serverCertificateIssuerCommonName2 = [(NEVPNProtocolIKEv2 *)self serverCertificateIssuerCommonName];
    [copyLegacyDictionary setObject:serverCertificateIssuerCommonName2 forKeyedSubscript:@"ServerCertificateIssuerCommonName"];
  }

  serverCertificateCommonName = [(NEVPNProtocolIKEv2 *)self serverCertificateCommonName];

  if (serverCertificateCommonName)
  {
    serverCertificateCommonName2 = [(NEVPNProtocolIKEv2 *)self serverCertificateCommonName];
    [copyLegacyDictionary setObject:serverCertificateCommonName2 forKeyedSubscript:@"ServerCertificateCommonName"];
  }

  iKESecurityAssociationParameters = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParameters];
  copyDictionary = [(NEVPNIKEv2SecurityAssociationParameters *)iKESecurityAssociationParameters copyDictionary];
  [copyLegacyDictionary setObject:copyDictionary forKeyedSubscript:@"IKESecurityAssociationParameters"];

  childSecurityAssociationParameters = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParameters];
  copyDictionary2 = [(NEVPNIKEv2SecurityAssociationParameters *)childSecurityAssociationParameters copyDictionary];
  [copyLegacyDictionary setObject:copyDictionary2 forKeyedSubscript:@"ChildSecurityAssociationParameters"];

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

  [copyLegacyDictionary setObject:*v13 forKeyedSubscript:@"CertificateType"];
LABEL_26:
  if ([(NEVPNProtocolIPSec *)self useExtendedAuthentication])
  {
    v14 = &unk_1F38BA6E8;
  }

  else
  {
    v14 = &unk_1F38BA700;
  }

  [copyLegacyDictionary setObject:v14 forKeyedSubscript:@"ExtendedAuthEnabled"];
  if ([(NEVPNProtocolIKEv2 *)self useConfigurationAttributeInternalIPSubnet])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 useConfigurationAttributeInternalIPSubnet](self, "useConfigurationAttributeInternalIPSubnet")}];
    [copyLegacyDictionary setObject:v15 forKeyedSubscript:@"UseConfigurationAttributeInternalIPSubnet"];
  }

  if ([(NEVPNProtocolIKEv2 *)self disableMOBIKE])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 disableMOBIKE](self, "disableMOBIKE")}];
    [copyLegacyDictionary setObject:v16 forKeyedSubscript:@"DisableMOBIKE"];
  }

  if ([(NEVPNProtocolIKEv2 *)self disableRedirect])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 disableRedirect](self, "disableRedirect")}];
    [copyLegacyDictionary setObject:v17 forKeyedSubscript:@"DisableRedirect"];
  }

  if ([(NEVPNProtocolIKEv2 *)self enablePFS])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 enablePFS](self, "enablePFS")}];
    [copyLegacyDictionary setObject:v18 forKeyedSubscript:@"EnablePFS"];
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 allowPostQuantumKeyExchangeFallback](self, "allowPostQuantumKeyExchangeFallback")}];
  [copyLegacyDictionary setObject:v19 forKeyedSubscript:@"AllowPostQuantumKeyExchangeFallback"];

  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[NEVPNProtocolIKEv2 natKeepAliveOffloadEnable](self, "natKeepAliveOffloadEnable")}];
  [copyLegacyDictionary setObject:v20 forKeyedSubscript:@"NATKeepAliveOffloadEnable"];

  if ([(NEVPNProtocolIKEv2 *)self natKeepAliveOffloadInterval])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[NEVPNProtocolIKEv2 natKeepAliveOffloadInterval](self, "natKeepAliveOffloadInterval")}];
    [copyLegacyDictionary setObject:v21 forKeyedSubscript:@"NATKeepAliveInterval"];
  }

  if ([(NEVPNProtocolIKEv2 *)self disableMOBIKERetryOnWake])
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[NEVPNProtocolIKEv2 disableMOBIKERetryOnWake](self, "disableMOBIKERetryOnWake")}];
    [copyLegacyDictionary setObject:v22 forKeyedSubscript:@"DisableMOBIKERetryOnWake"];
  }

  if ([(NEVPNProtocolIKEv2 *)self enableRevocationCheck])
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 enableRevocationCheck](self, "enableRevocationCheck")}];
    [copyLegacyDictionary setObject:v23 forKeyedSubscript:@"EnableCertificateRevocationCheck"];

    if ([(NEVPNProtocolIKEv2 *)self strictRevocationCheck])
    {
      v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPNProtocolIKEv2 strictRevocationCheck](self, "strictRevocationCheck")}];
      [copyLegacyDictionary setObject:v24 forKeyedSubscript:@"StrictCertificateRevocationCheck"];
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

  [copyLegacyDictionary setObject:*v25 forKeyedSubscript:@"TLSMinimumVersion"];
LABEL_51:
  if ([(NEVPNProtocolIKEv2 *)self maximumTLSVersion]== NEVPNIKEv2TLSVersion1_0)
  {
    v26 = kNEIKEv2TLSVersion1_0Value;
LABEL_57:
    [copyLegacyDictionary setObject:*v26 forKeyedSubscript:@"TLSMaximumVersion"];
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
    [copyLegacyDictionary setObject:v27 forKeyedSubscript:@"EnableFallback"];
  }

  if ([(NEVPNProtocolIKEv2 *)self mtu])
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NEVPNProtocolIKEv2 mtu](self, "mtu")}];
    [copyLegacyDictionary setObject:v28 forKeyedSubscript:@"MTU"];
  }

  ppkConfiguration = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];

  if (ppkConfiguration)
  {
    Property = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
    v32 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v31, 32, 1);
    }

    data = [Property data];

    if (data)
    {
      ppkConfiguration2 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
      v36 = ppkConfiguration2;
      if (ppkConfiguration2)
      {
        ppkConfiguration2 = objc_getProperty(ppkConfiguration2, v35, 32, 1);
      }

      data2 = [ppkConfiguration2 data];
      [copyLegacyDictionary setObject:data2 forKeyedSubscript:@"PPK"];
    }

    ppkConfiguration3 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
    identifier = [ppkConfiguration3 identifier];
    v40 = [identifier copy];
    [copyLegacyDictionary setObject:v40 forKeyedSubscript:@"PPKIdentifier"];

    v41 = MEMORY[0x1E696AD98];
    ppkConfiguration4 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
    v43 = [v41 numberWithBool:{objc_msgSend(ppkConfiguration4, "isMandatory")}];
    [copyLegacyDictionary setObject:v43 forKeyedSubscript:@"PPKMandatory"];

    ppkConfiguration5 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
    keychainReference = [ppkConfiguration5 keychainReference];

    if (keychainReference)
    {
      ppkConfiguration6 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
      keychainReference2 = [ppkConfiguration6 keychainReference];
      v48 = [keychainReference2 copy];
      [copyLegacyDictionary setObject:v48 forKeyedSubscript:@"PPKReference"];
    }
  }

  return copyLegacyDictionary;
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

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v52 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v49.receiver = self;
  v49.super_class = NEVPNProtocolIKEv2;
  v5 = [(NEVPNProtocolIPSec *)&v49 checkValidityAndCollectErrors:errorsCopy];
  iKESecurityAssociationParametersArray = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParametersArray];
  v7 = [iKESecurityAssociationParametersArray count];

  if (v7)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    iKESecurityAssociationParametersArray2 = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParametersArray];
    v9 = [iKESecurityAssociationParametersArray2 countByEnumeratingWithState:&v45 objects:v51 count:16];
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
            objc_enumerationMutation(iKESecurityAssociationParametersArray2);
          }

          v5 &= [*(*(&v45 + 1) + 8 * i) checkValidityAndCollectErrors:errorsCopy];
        }

        v10 = [iKESecurityAssociationParametersArray2 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v10);
    }
  }

  else
  {
    iKESecurityAssociationParameters = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParameters];
    v14 = [iKESecurityAssociationParameters checkValidityAndCollectErrors:errorsCopy];

    v5 &= v14;
  }

  childSecurityAssociationParametersArray = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParametersArray];
  v16 = [childSecurityAssociationParametersArray count];

  if (v16)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    childSecurityAssociationParametersArray2 = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParametersArray];
    v18 = [childSecurityAssociationParametersArray2 countByEnumeratingWithState:&v41 objects:v50 count:16];
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
            objc_enumerationMutation(childSecurityAssociationParametersArray2);
          }

          v5 &= [*(*(&v41 + 1) + 8 * j) checkValidityAndCollectErrors:errorsCopy];
        }

        v19 = [childSecurityAssociationParametersArray2 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v19);
    }
  }

  else
  {
    childSecurityAssociationParameters = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParameters];
    v23 = [childSecurityAssociationParameters checkValidityAndCollectErrors:errorsCopy];

    LOBYTE(v5) = v23 & v5;
  }

  v24 = errorsCopy;
  if (self)
  {
    if (!self->_strictAlgorithmSelection)
    {
      goto LABEL_32;
    }

    iKESecurityAssociationParameters2 = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParameters];
    encryptionAlgorithm = [iKESecurityAssociationParameters2 encryptionAlgorithm];

    childSecurityAssociationParameters2 = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParameters];
    encryptionAlgorithm2 = [childSecurityAssociationParameters2 encryptionAlgorithm];

    v29 = (encryptionAlgorithm - 2) > 5 ? 0 : qword_1BAA4FB98[encryptionAlgorithm - 2];
    v30 = (encryptionAlgorithm2 - 2) > 5 ? 0 : qword_1BAA4FB98[encryptionAlgorithm2 - 2];
    if (v29 >= v30)
    {
      goto LABEL_32;
    }

    v31 = MEMORY[0x1E696AEC0];
    StringFromIKEv2EncryptionAlgorithm = createStringFromIKEv2EncryptionAlgorithm(encryptionAlgorithm);
    v33 = createStringFromIKEv2EncryptionAlgorithm(encryptionAlgorithm2);
    v34 = [v31 stringWithFormat:@"IKE SA encryption algorithm (%@) is weaker than Child SA encryption algorithm (%@)", StringFromIKEv2EncryptionAlgorithm, v33];
    [NEConfiguration addError:v34 toList:v24];
  }

  LOBYTE(v5) = 0;
LABEL_32:

  ppkConfiguration = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
  if (ppkConfiguration)
  {
    v36 = ppkConfiguration;
    ppkConfiguration2 = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
    v38 = [ppkConfiguration2 checkValidityAndCollectErrors:v24];

    LOBYTE(v5) = v38 & v5;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31.receiver = self;
  v31.super_class = NEVPNProtocolIKEv2;
  v4 = [(NEVPNProtocolIPSec *)&v31 copyWithZone:zone];
  pluginType = [(NEVPNProtocolIKEv2 *)self pluginType];
  [(NEVPNProtocolIKEv2 *)v4 setPluginType:pluginType];

  [v4 setDeadPeerDetectionRate:{-[NEVPNProtocolIKEv2 deadPeerDetectionRate](self, "deadPeerDetectionRate")}];
  serverCertificateIssuerCommonName = [(NEVPNProtocolIKEv2 *)self serverCertificateIssuerCommonName];
  [v4 setServerCertificateIssuerCommonName:serverCertificateIssuerCommonName];

  serverCertificateCommonName = [(NEVPNProtocolIKEv2 *)self serverCertificateCommonName];
  [v4 setServerCertificateCommonName:serverCertificateCommonName];

  iKESecurityAssociationParameters = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParameters];
  v9 = [iKESecurityAssociationParameters copy];
  v10 = v4[37];
  v4[37] = v9;

  childSecurityAssociationParameters = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParameters];
  v12 = [childSecurityAssociationParameters copy];
  v13 = v4[38];
  v4[38] = v12;

  iKESecurityAssociationParametersArray = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParametersArray];

  if (iKESecurityAssociationParametersArray)
  {
    v15 = objc_alloc(MEMORY[0x1E695DEC8]);
    iKESecurityAssociationParametersArray2 = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParametersArray];
    v17 = [v15 initWithArray:iKESecurityAssociationParametersArray2 copyItems:1];
    v18 = v4[44];
    v4[44] = v17;
  }

  childSecurityAssociationParametersArray = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParametersArray];

  if (childSecurityAssociationParametersArray)
  {
    v20 = objc_alloc(MEMORY[0x1E695DEC8]);
    childSecurityAssociationParametersArray2 = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParametersArray];
    v22 = [v20 initWithArray:childSecurityAssociationParametersArray2 copyItems:1];
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
  providerBundleIdentifier = [(NEVPNProtocolIKEv2 *)self providerBundleIdentifier];
  v26 = v4[46];
  v4[46] = providerBundleIdentifier;

  *(v4 + 245) = [(NEVPNProtocolIKEv2 *)self enableRevocationCheck];
  *(v4 + 246) = [(NEVPNProtocolIKEv2 *)self strictRevocationCheck];
  v4[39] = [(NEVPNProtocolIKEv2 *)self minimumTLSVersion];
  v4[40] = [(NEVPNProtocolIKEv2 *)self maximumTLSVersion];
  v4[47] = [(NEVPNProtocolIKEv2 *)self tunnelKind];
  *(v4 + 251) = [(NEVPNProtocolIKEv2 *)self disableInitialContact];
  *(v4 + 247) = [(NEVPNProtocolIKEv2 *)self enableFallback];
  v4[41] = [(NEVPNProtocolIKEv2 *)self mtu];
  ppkConfiguration = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
  v28 = [ppkConfiguration copy];
  v29 = v4[42];
  v4[42] = v28;

  return v4;
}

- (void)setPluginType:(void *)type
{
  v3 = a2;
  if (type)
  {
    v14 = v3;
    v4 = [v3 copy];
    v5 = type[43];
    type[43] = v4;

    v7 = type[10];
    if (v14)
    {
      if (v7 != 1)
      {
        type[10] = 1;
        v8 = objc_getProperty(type, v6, 96, 1);
        [v8 setDomain:1];

        passwordKeychainItem = [type passwordKeychainItem];
        [passwordKeychainItem setDomain:1];
      }

      v10 = @"com.apple.managed.vpn.shared";
      typeCopy2 = type;
    }

    else
    {
      if (v7)
      {
        type[10] = 0;
        v12 = objc_getProperty(type, v6, 96, 1);
        [v12 setDomain:0];

        passwordKeychainItem2 = [type passwordKeychainItem];
        [passwordKeychainItem2 setDomain:0];
      }

      typeCopy2 = type;
      v10 = 0;
    }

    objc_setProperty_atomic(typeCopy2, v6, v10, 88);
    v3 = v14;
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = NEVPNProtocolIKEv2;
  [(NEVPNProtocolIPSec *)&v15 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:-[NEVPNProtocolIKEv2 deadPeerDetectionRate](self forKey:{"deadPeerDetectionRate"), @"DeadPeerDetectionRate"}];
  serverCertificateIssuerCommonName = [(NEVPNProtocolIKEv2 *)self serverCertificateIssuerCommonName];
  [coderCopy encodeObject:serverCertificateIssuerCommonName forKey:@"ServerCertificateIssuer"];

  serverCertificateCommonName = [(NEVPNProtocolIKEv2 *)self serverCertificateCommonName];
  [coderCopy encodeObject:serverCertificateCommonName forKey:@"ServerCertificateCommonName"];

  iKESecurityAssociationParameters = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParameters];
  [coderCopy encodeObject:iKESecurityAssociationParameters forKey:@"IKESAParameters"];

  childSecurityAssociationParameters = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParameters];
  [coderCopy encodeObject:childSecurityAssociationParameters forKey:@"ChildSAParameters"];

  iKESecurityAssociationParametersArray = [(NEVPNProtocolIKEv2 *)self IKESecurityAssociationParametersArray];
  [coderCopy encodeObject:iKESecurityAssociationParametersArray forKey:@"IKESAParametersArray"];

  childSecurityAssociationParametersArray = [(NEVPNProtocolIKEv2 *)self childSecurityAssociationParametersArray];
  [coderCopy encodeObject:childSecurityAssociationParametersArray forKey:@"ChildSAParametersArray"];

  if (self)
  {
    [coderCopy encodeBool:self->_strictAlgorithmSelection forKey:@"StrictAlgorithmSelection"];
    wakeForRekey = self->_wakeForRekey;
  }

  else
  {
    [coderCopy encodeBool:0 forKey:@"StrictAlgorithmSelection"];
    wakeForRekey = 0;
  }

  [coderCopy encodeBool:wakeForRekey forKey:@"WakeForRekey"];
  [coderCopy encodeInt32:-[NEVPNProtocolIKEv2 certificateType](self forKey:{"certificateType"), @"CertificateType"}];
  [coderCopy encodeBool:-[NEVPNProtocolIKEv2 useConfigurationAttributeInternalIPSubnet](self forKey:{"useConfigurationAttributeInternalIPSubnet"), @"UseConfigurationAttributeInternalIPSubnet"}];
  [coderCopy encodeBool:-[NEVPNProtocolIKEv2 disableMOBIKE](self forKey:{"disableMOBIKE"), @"DisableMOBIKE"}];
  [coderCopy encodeBool:-[NEVPNProtocolIKEv2 disableRedirect](self forKey:{"disableRedirect"), @"DisableRedirect"}];
  [coderCopy encodeBool:-[NEVPNProtocolIKEv2 enablePFS](self forKey:{"enablePFS"), @"EnablePFS"}];
  [coderCopy encodeBool:-[NEVPNProtocolIKEv2 allowPostQuantumKeyExchangeFallback](self forKey:{"allowPostQuantumKeyExchangeFallback"), @"AllowPostQuantumKeyExchangeMethodFallback"}];
  [coderCopy encodeBool:-[NEVPNProtocolIKEv2 opportunisticPFS](self forKey:{"opportunisticPFS"), @"OpportunisticPFS"}];
  [coderCopy encodeInt32:-[NEVPNProtocolIKEv2 natKeepAliveOffloadEnable](self forKey:{"natKeepAliveOffloadEnable"), @"NATKeepAliveOffloadEnable"}];
  [coderCopy encodeInt32:-[NEVPNProtocolIKEv2 natKeepAliveOffloadInterval](self forKey:{"natKeepAliveOffloadInterval"), @"NATKeepAliveOffloadInterval"}];
  [coderCopy encodeInt32:-[NEVPNProtocolIKEv2 disableMOBIKERetryOnWake](self forKey:{"disableMOBIKERetryOnWake"), @"DisableMOBIKERetryOnWake"}];
  providerBundleIdentifier = [(NEVPNProtocolIKEv2 *)self providerBundleIdentifier];
  [coderCopy encodeObject:providerBundleIdentifier forKey:@"ProviderBundleIdentifier"];

  pluginType = [(NEVPNProtocolIKEv2 *)self pluginType];
  [coderCopy encodeObject:pluginType forKey:@"PluginType"];

  [coderCopy encodeBool:-[NEVPNProtocolIKEv2 enableRevocationCheck](self forKey:{"enableRevocationCheck"), @"EnableRevocationCheck"}];
  [coderCopy encodeBool:-[NEVPNProtocolIKEv2 strictRevocationCheck](self forKey:{"strictRevocationCheck"), @"StrictRevocationCheck"}];
  [coderCopy encodeInt32:-[NEVPNProtocolIKEv2 minimumTLSVersion](self forKey:{"minimumTLSVersion"), @"MinimumTLSVersion"}];
  [coderCopy encodeInt32:-[NEVPNProtocolIKEv2 maximumTLSVersion](self forKey:{"maximumTLSVersion"), @"MaximumTLSVersion"}];
  [coderCopy encodeInt32:-[NEVPNProtocolIKEv2 tunnelKind](self forKey:{"tunnelKind"), @"TunnelType"}];
  [coderCopy encodeBool:-[NEVPNProtocolIKEv2 disableInitialContact](self forKey:{"disableInitialContact"), @"DisableInitialContact"}];
  [coderCopy encodeBool:-[NEVPNProtocolIKEv2 enableFallback](self forKey:{"enableFallback"), @"EnableFallback"}];
  [coderCopy encodeInt32:-[NEVPNProtocolIKEv2 mtu](self forKey:{"mtu"), @"MTU"}];
  ppkConfiguration = [(NEVPNProtocolIKEv2 *)self ppkConfiguration];
  [coderCopy encodeObject:ppkConfiguration forKey:@"PPKConfiguration"];
}

- (NEVPNProtocolIKEv2)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = NEVPNProtocolIKEv2;
  v5 = [(NEVPNProtocolIPSec *)&v31 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_deadPeerDetectionRate = [coderCopy decodeInt32ForKey:@"DeadPeerDetectionRate"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServerCertificateIssuer"];
    serverCertificateIssuerCommonName = v5->_serverCertificateIssuerCommonName;
    v5->_serverCertificateIssuerCommonName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServerCertificateCommonName"];
    serverCertificateCommonName = v5->_serverCertificateCommonName;
    v5->_serverCertificateCommonName = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"IKESAParametersArray"];
    IKESecurityAssociationParametersArray = v5->_IKESecurityAssociationParametersArray;
    v5->_IKESecurityAssociationParametersArray = v13;

    v15 = 0;
    if (!v5->_IKESecurityAssociationParametersArray)
    {
      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IKESAParameters"];
    }

    IKESecurityAssociationParameters = v5->_IKESecurityAssociationParameters;
    v5->_IKESecurityAssociationParameters = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"ChildSAParametersArray"];
    childSecurityAssociationParametersArray = v5->_childSecurityAssociationParametersArray;
    v5->_childSecurityAssociationParametersArray = v20;

    v22 = 0;
    if (!v5->_childSecurityAssociationParametersArray)
    {
      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ChildSAParameters"];
    }

    childSecurityAssociationParameters = v5->_childSecurityAssociationParameters;
    v5->_childSecurityAssociationParameters = v22;

    v5->_strictAlgorithmSelection = [coderCopy decodeBoolForKey:@"StrictAlgorithmSelection"];
    v5->_wakeForRekey = [coderCopy decodeBoolForKey:@"WakeForRekey"];
    v5->_certificateType = [coderCopy decodeInt32ForKey:@"CertificateType"];
    v5->_useConfigurationAttributeInternalIPSubnet = [coderCopy decodeBoolForKey:@"UseConfigurationAttributeInternalIPSubnet"];
    v5->_disableMOBIKE = [coderCopy decodeBoolForKey:@"DisableMOBIKE"];
    v5->_disableRedirect = [coderCopy decodeBoolForKey:@"DisableRedirect"];
    v5->_enablePFS = [coderCopy decodeBoolForKey:@"EnablePFS"];
    v5->_allowPostQuantumKeyExchangeFallback = [coderCopy decodeBoolForKey:@"AllowPostQuantumKeyExchangeMethodFallback"];
    v5->_opportunisticPFS = [coderCopy decodeBoolForKey:@"OpportunisticPFS"];
    v5->_natKeepAliveOffloadEnable = [coderCopy decodeInt32ForKey:@"NATKeepAliveOffloadEnable"];
    v5->_natKeepAliveOffloadInterval = [coderCopy decodeInt32ForKey:@"NATKeepAliveOffloadInterval"];
    v5->_disableMOBIKERetryOnWake = [coderCopy decodeInt32ForKey:@"DisableMOBIKERetryOnWake"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProviderBundleIdentifier"];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PluginType"];
    pluginType = v5->_pluginType;
    v5->_pluginType = v26;

    v5->_enableRevocationCheck = [coderCopy decodeBoolForKey:@"EnableRevocationCheck"];
    v5->_strictRevocationCheck = [coderCopy decodeBoolForKey:@"StrictRevocationCheck"];
    v5->_minimumTLSVersion = [coderCopy decodeInt32ForKey:@"MinimumTLSVersion"];
    v5->_maximumTLSVersion = [coderCopy decodeInt32ForKey:@"MaximumTLSVersion"];
    v5->_tunnelKind = [coderCopy decodeInt32ForKey:@"TunnelType"];
    v5->_disableInitialContact = [coderCopy decodeBoolForKey:@"DisableInitialContact"];
    v5->_enableFallback = [coderCopy decodeBoolForKey:@"EnableFallback"];
    v5->_mtu = [coderCopy decodeInt32ForKey:@"MTU"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PPKConfiguration"];
    ppkConfiguration = v5->_ppkConfiguration;
    v5->_ppkConfiguration = v28;
  }

  return v5;
}

- (void)initWithPluginType:(void *)type
{
  v3 = a2;
  if (type)
  {
    v11.receiver = type;
    v11.super_class = NEVPNProtocolIKEv2;
    v4 = objc_msgSendSuper2(&v11, sel_initWithType_, 5);
    type = v4;
    if (v4)
    {
      [(NEVPNProtocolIKEv2 *)v4 setPluginType:v3];
      type[33] = 2;
      v5 = objc_alloc_init(NEVPNIKEv2SecurityAssociationParameters);
      v6 = type[37];
      type[37] = v5;

      v7 = objc_alloc_init(NEVPNIKEv2SecurityAssociationParameters);
      v8 = type[38];
      type[38] = v7;

      [type[37] setLifetimeMinutes:60];
      [type[38] setLifetimeMinutes:30];
      *(type + 249) = 0;
      *(type + 248) = 0;
      type[36] = 1;
      *(type + 240) = 0;
      *(type + 241) = 0;
      *(type + 242) = 0;
      *(type + 243) = 0;
      *(type + 244) = 0;
      *(type + 250) = 0;
      *(type + 63) = 0;
      *(type + 64) = 0;
      v9 = type[46];
      type[46] = 0;

      *(type + 65) = 0;
      [type setDisconnectOnWake:0];
      [type setUseExtendedAuthentication:0];
      type[47] = 1;
      *(type + 251) = 0;
      *(type + 247) = 0;
    }
  }

  return type;
}

@end