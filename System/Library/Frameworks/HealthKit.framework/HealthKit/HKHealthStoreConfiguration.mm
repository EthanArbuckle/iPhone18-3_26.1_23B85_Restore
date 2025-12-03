@interface HKHealthStoreConfiguration
- (BOOL)isEqual:(id)equal;
- (HKHealthStoreConfiguration)initWithCoder:(id)coder;
- (HKHealthStoreConfiguration)initWithSourceBundleIdentifier:(id)identifier sourceVersion:(id)version debugIdentifier:(id)debugIdentifier profileIdentifier:(id)profileIdentifier applicationSDKVersionToken:(unint64_t)token;
- (HKHealthStoreConfiguration)initWithSourceBundleIdentifier:(id)identifier sourceVersion:(id)version debugIdentifier:(id)debugIdentifier profileIdentifier:(id)profileIdentifier applicationSDKVersionToken:(unint64_t)token daemonLaunchDarwinNotificationName:(id)name writeAuthorizationUsageDescriptionOverride:(id)override readAuthorizationUsageDescriptionOverride:(id)self0 clinicalReadAuthorizationUsageDescriptionOverride:(id)self1 researchStudyUsageDescriptionOverride:(id)self2;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHealthStoreConfiguration

- (HKHealthStoreConfiguration)initWithSourceBundleIdentifier:(id)identifier sourceVersion:(id)version debugIdentifier:(id)debugIdentifier profileIdentifier:(id)profileIdentifier applicationSDKVersionToken:(unint64_t)token
{
  identifierCopy = identifier;
  versionCopy = version;
  debugIdentifierCopy = debugIdentifier;
  profileIdentifierCopy = profileIdentifier;
  v26.receiver = self;
  v26.super_class = HKHealthStoreConfiguration;
  v16 = [(HKHealthStoreConfiguration *)&v26 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    sourceBundleIdentifier = v16->_sourceBundleIdentifier;
    v16->_sourceBundleIdentifier = v17;

    v19 = [versionCopy copy];
    sourceVersion = v16->_sourceVersion;
    v16->_sourceVersion = v19;

    v21 = [debugIdentifierCopy copy];
    debugIdentifier = v16->_debugIdentifier;
    v16->_debugIdentifier = v21;

    v23 = [profileIdentifierCopy copy];
    profileIdentifier = v16->_profileIdentifier;
    v16->_profileIdentifier = v23;

    v16->_applicationSDKVersionToken = token;
  }

  return v16;
}

- (HKHealthStoreConfiguration)initWithSourceBundleIdentifier:(id)identifier sourceVersion:(id)version debugIdentifier:(id)debugIdentifier profileIdentifier:(id)profileIdentifier applicationSDKVersionToken:(unint64_t)token daemonLaunchDarwinNotificationName:(id)name writeAuthorizationUsageDescriptionOverride:(id)override readAuthorizationUsageDescriptionOverride:(id)self0 clinicalReadAuthorizationUsageDescriptionOverride:(id)self1 researchStudyUsageDescriptionOverride:(id)self2
{
  identifierCopy = identifier;
  versionCopy = version;
  debugIdentifierCopy = debugIdentifier;
  profileIdentifierCopy = profileIdentifier;
  nameCopy = name;
  overrideCopy = override;
  descriptionOverrideCopy = descriptionOverride;
  usageDescriptionOverrideCopy = usageDescriptionOverride;
  studyUsageDescriptionOverrideCopy = studyUsageDescriptionOverride;
  v47.receiver = self;
  v47.super_class = HKHealthStoreConfiguration;
  v26 = [(HKHealthStoreConfiguration *)&v47 init];
  if (v26)
  {
    v27 = [identifierCopy copy];
    sourceBundleIdentifier = v26->_sourceBundleIdentifier;
    v26->_sourceBundleIdentifier = v27;

    v29 = [versionCopy copy];
    sourceVersion = v26->_sourceVersion;
    v26->_sourceVersion = v29;

    v31 = [debugIdentifierCopy copy];
    debugIdentifier = v26->_debugIdentifier;
    v26->_debugIdentifier = v31;

    v33 = [profileIdentifierCopy copy];
    profileIdentifier = v26->_profileIdentifier;
    v26->_profileIdentifier = v33;

    v26->_applicationSDKVersionToken = token;
    v35 = [nameCopy copy];
    daemonLaunchDarwinNotificationName = v26->_daemonLaunchDarwinNotificationName;
    v26->_daemonLaunchDarwinNotificationName = v35;

    v37 = [overrideCopy copy];
    writeAuthorizationUsageDescriptionOverride = v26->_writeAuthorizationUsageDescriptionOverride;
    v26->_writeAuthorizationUsageDescriptionOverride = v37;

    v39 = [descriptionOverrideCopy copy];
    readAuthorizationUsageDescriptionOverride = v26->_readAuthorizationUsageDescriptionOverride;
    v26->_readAuthorizationUsageDescriptionOverride = v39;

    v41 = [usageDescriptionOverrideCopy copy];
    clinicalReadAuthorizationUsageDescriptionOverride = v26->_clinicalReadAuthorizationUsageDescriptionOverride;
    v26->_clinicalReadAuthorizationUsageDescriptionOverride = v41;

    v43 = [studyUsageDescriptionOverrideCopy copy];
    researchStudyUsageDescriptionOverride = v26->_researchStudyUsageDescriptionOverride;
    v26->_researchStudyUsageDescriptionOverride = v43;
  }

  return v26;
}

- (HKHealthStoreConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = HKHealthStoreConfiguration;
  v5 = [(HKHealthStoreConfiguration *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sbid"];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sver"];
    sourceVersion = v5->_sourceVersion;
    v5->_sourceVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dbid"];
    debugIdentifier = v5->_debugIdentifier;
    v5->_debugIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
    profileIdentifier = v5->_profileIdentifier;
    v5->_profileIdentifier = v12;

    v5->_applicationSDKVersionToken = HKBitPatternCastSignedToUnsignedInt64([coderCopy decodeInt64ForKey:@"sdkv"]);
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dlnn"];
    daemonLaunchDarwinNotificationName = v5->_daemonLaunchDarwinNotificationName;
    v5->_daemonLaunchDarwinNotificationName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wado"];
    writeAuthorizationUsageDescriptionOverride = v5->_writeAuthorizationUsageDescriptionOverride;
    v5->_writeAuthorizationUsageDescriptionOverride = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rado"];
    readAuthorizationUsageDescriptionOverride = v5->_readAuthorizationUsageDescriptionOverride;
    v5->_readAuthorizationUsageDescriptionOverride = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cado"];
    clinicalReadAuthorizationUsageDescriptionOverride = v5->_clinicalReadAuthorizationUsageDescriptionOverride;
    v5->_clinicalReadAuthorizationUsageDescriptionOverride = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rsdo"];
    researchStudyUsageDescriptionOverride = v5->_researchStudyUsageDescriptionOverride;
    v5->_researchStudyUsageDescriptionOverride = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sourceBundleIdentifier forKey:@"sbid"];
  [coderCopy encodeObject:self->_sourceVersion forKey:@"sver"];
  [coderCopy encodeObject:self->_debugIdentifier forKey:@"dbid"];
  [coderCopy encodeObject:self->_profileIdentifier forKey:@"pid"];
  [coderCopy encodeInt64:HKBitPatternCastUnsignedToSignedInt64(self->_applicationSDKVersionToken) forKey:@"sdkv"];
  [coderCopy encodeObject:self->_daemonLaunchDarwinNotificationName forKey:@"dlnn"];
  [coderCopy encodeObject:self->_writeAuthorizationUsageDescriptionOverride forKey:@"wado"];
  [coderCopy encodeObject:self->_readAuthorizationUsageDescriptionOverride forKey:@"rado"];
  [coderCopy encodeObject:self->_clinicalReadAuthorizationUsageDescriptionOverride forKey:@"cado"];
  [coderCopy encodeObject:self->_researchStudyUsageDescriptionOverride forKey:@"rsdo"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_32;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_31;
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  v6 = equalCopy->_sourceBundleIdentifier;
  if (sourceBundleIdentifier != v6 && (!v6 || ![(NSString *)sourceBundleIdentifier isEqualToString:?]))
  {
    goto LABEL_31;
  }

  sourceVersion = self->_sourceVersion;
  v8 = equalCopy->_sourceVersion;
  if (sourceVersion != v8 && (!v8 || ![(NSString *)sourceVersion isEqualToString:?]))
  {
    goto LABEL_31;
  }

  debugIdentifier = self->_debugIdentifier;
  v10 = equalCopy->_debugIdentifier;
  if (debugIdentifier != v10 && (!v10 || ![(NSString *)debugIdentifier isEqualToString:?]))
  {
    goto LABEL_31;
  }

  profileIdentifier = self->_profileIdentifier;
  v12 = equalCopy->_profileIdentifier;
  if (profileIdentifier != v12 && (!v12 || ![(HKProfileIdentifier *)profileIdentifier isEqual:?]))
  {
    goto LABEL_31;
  }

  if (self->_applicationSDKVersionToken != equalCopy->_applicationSDKVersionToken)
  {
    goto LABEL_31;
  }

  daemonLaunchDarwinNotificationName = self->_daemonLaunchDarwinNotificationName;
  v14 = equalCopy->_daemonLaunchDarwinNotificationName;
  if (daemonLaunchDarwinNotificationName != v14 && (!v14 || ![(NSString *)daemonLaunchDarwinNotificationName isEqual:?]))
  {
    goto LABEL_31;
  }

  writeAuthorizationUsageDescriptionOverride = self->_writeAuthorizationUsageDescriptionOverride;
  v16 = equalCopy->_writeAuthorizationUsageDescriptionOverride;
  if (writeAuthorizationUsageDescriptionOverride != v16 && (!v16 || ![(NSString *)writeAuthorizationUsageDescriptionOverride isEqual:?]))
  {
    goto LABEL_31;
  }

  readAuthorizationUsageDescriptionOverride = self->_readAuthorizationUsageDescriptionOverride;
  v18 = equalCopy->_readAuthorizationUsageDescriptionOverride;
  if (readAuthorizationUsageDescriptionOverride != v18 && (!v18 || ![(NSString *)readAuthorizationUsageDescriptionOverride isEqual:?]))
  {
    goto LABEL_31;
  }

  clinicalReadAuthorizationUsageDescriptionOverride = self->_clinicalReadAuthorizationUsageDescriptionOverride;
  v20 = equalCopy->_clinicalReadAuthorizationUsageDescriptionOverride;
  if (clinicalReadAuthorizationUsageDescriptionOverride != v20 && (!v20 || ![(NSString *)clinicalReadAuthorizationUsageDescriptionOverride isEqual:?]))
  {
    goto LABEL_31;
  }

  researchStudyUsageDescriptionOverride = self->_researchStudyUsageDescriptionOverride;
  v22 = equalCopy->_researchStudyUsageDescriptionOverride;
  if (researchStudyUsageDescriptionOverride == v22)
  {
LABEL_32:
    v23 = 1;
    goto LABEL_33;
  }

  if (!v22)
  {
LABEL_31:
    v23 = 0;
    goto LABEL_33;
  }

  v23 = [(NSString *)researchStudyUsageDescriptionOverride isEqual:?];
LABEL_33:

  return v23;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sourceBundleIdentifier hash];
  v4 = [(NSString *)self->_sourceVersion hash]^ v3;
  v5 = [(NSString *)self->_debugIdentifier hash];
  v6 = v4 ^ v5 ^ [(HKProfileIdentifier *)self->_profileIdentifier hash];
  applicationSDKVersionToken = self->_applicationSDKVersionToken;
  v8 = applicationSDKVersionToken ^ [(NSString *)self->_daemonLaunchDarwinNotificationName hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_writeAuthorizationUsageDescriptionOverride hash];
  v10 = [(NSString *)self->_readAuthorizationUsageDescriptionOverride hash];
  v11 = v10 ^ [(NSString *)self->_clinicalReadAuthorizationUsageDescriptionOverride hash];
  return v9 ^ v11 ^ [(NSString *)self->_researchStudyUsageDescriptionOverride hash];
}

@end