@interface HKHealthStoreConfiguration
- (BOOL)isEqual:(id)a3;
- (HKHealthStoreConfiguration)initWithCoder:(id)a3;
- (HKHealthStoreConfiguration)initWithSourceBundleIdentifier:(id)a3 sourceVersion:(id)a4 debugIdentifier:(id)a5 profileIdentifier:(id)a6 applicationSDKVersionToken:(unint64_t)a7;
- (HKHealthStoreConfiguration)initWithSourceBundleIdentifier:(id)a3 sourceVersion:(id)a4 debugIdentifier:(id)a5 profileIdentifier:(id)a6 applicationSDKVersionToken:(unint64_t)a7 daemonLaunchDarwinNotificationName:(id)a8 writeAuthorizationUsageDescriptionOverride:(id)a9 readAuthorizationUsageDescriptionOverride:(id)a10 clinicalReadAuthorizationUsageDescriptionOverride:(id)a11 researchStudyUsageDescriptionOverride:(id)a12;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHealthStoreConfiguration

- (HKHealthStoreConfiguration)initWithSourceBundleIdentifier:(id)a3 sourceVersion:(id)a4 debugIdentifier:(id)a5 profileIdentifier:(id)a6 applicationSDKVersionToken:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = HKHealthStoreConfiguration;
  v16 = [(HKHealthStoreConfiguration *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    sourceBundleIdentifier = v16->_sourceBundleIdentifier;
    v16->_sourceBundleIdentifier = v17;

    v19 = [v13 copy];
    sourceVersion = v16->_sourceVersion;
    v16->_sourceVersion = v19;

    v21 = [v14 copy];
    debugIdentifier = v16->_debugIdentifier;
    v16->_debugIdentifier = v21;

    v23 = [v15 copy];
    profileIdentifier = v16->_profileIdentifier;
    v16->_profileIdentifier = v23;

    v16->_applicationSDKVersionToken = a7;
  }

  return v16;
}

- (HKHealthStoreConfiguration)initWithSourceBundleIdentifier:(id)a3 sourceVersion:(id)a4 debugIdentifier:(id)a5 profileIdentifier:(id)a6 applicationSDKVersionToken:(unint64_t)a7 daemonLaunchDarwinNotificationName:(id)a8 writeAuthorizationUsageDescriptionOverride:(id)a9 readAuthorizationUsageDescriptionOverride:(id)a10 clinicalReadAuthorizationUsageDescriptionOverride:(id)a11 researchStudyUsageDescriptionOverride:(id)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v47.receiver = self;
  v47.super_class = HKHealthStoreConfiguration;
  v26 = [(HKHealthStoreConfiguration *)&v47 init];
  if (v26)
  {
    v27 = [v17 copy];
    sourceBundleIdentifier = v26->_sourceBundleIdentifier;
    v26->_sourceBundleIdentifier = v27;

    v29 = [v18 copy];
    sourceVersion = v26->_sourceVersion;
    v26->_sourceVersion = v29;

    v31 = [v19 copy];
    debugIdentifier = v26->_debugIdentifier;
    v26->_debugIdentifier = v31;

    v33 = [v20 copy];
    profileIdentifier = v26->_profileIdentifier;
    v26->_profileIdentifier = v33;

    v26->_applicationSDKVersionToken = a7;
    v35 = [v21 copy];
    daemonLaunchDarwinNotificationName = v26->_daemonLaunchDarwinNotificationName;
    v26->_daemonLaunchDarwinNotificationName = v35;

    v37 = [v22 copy];
    writeAuthorizationUsageDescriptionOverride = v26->_writeAuthorizationUsageDescriptionOverride;
    v26->_writeAuthorizationUsageDescriptionOverride = v37;

    v39 = [v23 copy];
    readAuthorizationUsageDescriptionOverride = v26->_readAuthorizationUsageDescriptionOverride;
    v26->_readAuthorizationUsageDescriptionOverride = v39;

    v41 = [v24 copy];
    clinicalReadAuthorizationUsageDescriptionOverride = v26->_clinicalReadAuthorizationUsageDescriptionOverride;
    v26->_clinicalReadAuthorizationUsageDescriptionOverride = v41;

    v43 = [v25 copy];
    researchStudyUsageDescriptionOverride = v26->_researchStudyUsageDescriptionOverride;
    v26->_researchStudyUsageDescriptionOverride = v43;
  }

  return v26;
}

- (HKHealthStoreConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HKHealthStoreConfiguration;
  v5 = [(HKHealthStoreConfiguration *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sbid"];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sver"];
    sourceVersion = v5->_sourceVersion;
    v5->_sourceVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dbid"];
    debugIdentifier = v5->_debugIdentifier;
    v5->_debugIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
    profileIdentifier = v5->_profileIdentifier;
    v5->_profileIdentifier = v12;

    v5->_applicationSDKVersionToken = HKBitPatternCastSignedToUnsignedInt64([v4 decodeInt64ForKey:@"sdkv"]);
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dlnn"];
    daemonLaunchDarwinNotificationName = v5->_daemonLaunchDarwinNotificationName;
    v5->_daemonLaunchDarwinNotificationName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wado"];
    writeAuthorizationUsageDescriptionOverride = v5->_writeAuthorizationUsageDescriptionOverride;
    v5->_writeAuthorizationUsageDescriptionOverride = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rado"];
    readAuthorizationUsageDescriptionOverride = v5->_readAuthorizationUsageDescriptionOverride;
    v5->_readAuthorizationUsageDescriptionOverride = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cado"];
    clinicalReadAuthorizationUsageDescriptionOverride = v5->_clinicalReadAuthorizationUsageDescriptionOverride;
    v5->_clinicalReadAuthorizationUsageDescriptionOverride = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rsdo"];
    researchStudyUsageDescriptionOverride = v5->_researchStudyUsageDescriptionOverride;
    v5->_researchStudyUsageDescriptionOverride = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  v5 = a3;
  [v5 encodeObject:sourceBundleIdentifier forKey:@"sbid"];
  [v5 encodeObject:self->_sourceVersion forKey:@"sver"];
  [v5 encodeObject:self->_debugIdentifier forKey:@"dbid"];
  [v5 encodeObject:self->_profileIdentifier forKey:@"pid"];
  [v5 encodeInt64:HKBitPatternCastUnsignedToSignedInt64(self->_applicationSDKVersionToken) forKey:@"sdkv"];
  [v5 encodeObject:self->_daemonLaunchDarwinNotificationName forKey:@"dlnn"];
  [v5 encodeObject:self->_writeAuthorizationUsageDescriptionOverride forKey:@"wado"];
  [v5 encodeObject:self->_readAuthorizationUsageDescriptionOverride forKey:@"rado"];
  [v5 encodeObject:self->_clinicalReadAuthorizationUsageDescriptionOverride forKey:@"cado"];
  [v5 encodeObject:self->_researchStudyUsageDescriptionOverride forKey:@"rsdo"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_32;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_31;
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  v6 = v4->_sourceBundleIdentifier;
  if (sourceBundleIdentifier != v6 && (!v6 || ![(NSString *)sourceBundleIdentifier isEqualToString:?]))
  {
    goto LABEL_31;
  }

  sourceVersion = self->_sourceVersion;
  v8 = v4->_sourceVersion;
  if (sourceVersion != v8 && (!v8 || ![(NSString *)sourceVersion isEqualToString:?]))
  {
    goto LABEL_31;
  }

  debugIdentifier = self->_debugIdentifier;
  v10 = v4->_debugIdentifier;
  if (debugIdentifier != v10 && (!v10 || ![(NSString *)debugIdentifier isEqualToString:?]))
  {
    goto LABEL_31;
  }

  profileIdentifier = self->_profileIdentifier;
  v12 = v4->_profileIdentifier;
  if (profileIdentifier != v12 && (!v12 || ![(HKProfileIdentifier *)profileIdentifier isEqual:?]))
  {
    goto LABEL_31;
  }

  if (self->_applicationSDKVersionToken != v4->_applicationSDKVersionToken)
  {
    goto LABEL_31;
  }

  daemonLaunchDarwinNotificationName = self->_daemonLaunchDarwinNotificationName;
  v14 = v4->_daemonLaunchDarwinNotificationName;
  if (daemonLaunchDarwinNotificationName != v14 && (!v14 || ![(NSString *)daemonLaunchDarwinNotificationName isEqual:?]))
  {
    goto LABEL_31;
  }

  writeAuthorizationUsageDescriptionOverride = self->_writeAuthorizationUsageDescriptionOverride;
  v16 = v4->_writeAuthorizationUsageDescriptionOverride;
  if (writeAuthorizationUsageDescriptionOverride != v16 && (!v16 || ![(NSString *)writeAuthorizationUsageDescriptionOverride isEqual:?]))
  {
    goto LABEL_31;
  }

  readAuthorizationUsageDescriptionOverride = self->_readAuthorizationUsageDescriptionOverride;
  v18 = v4->_readAuthorizationUsageDescriptionOverride;
  if (readAuthorizationUsageDescriptionOverride != v18 && (!v18 || ![(NSString *)readAuthorizationUsageDescriptionOverride isEqual:?]))
  {
    goto LABEL_31;
  }

  clinicalReadAuthorizationUsageDescriptionOverride = self->_clinicalReadAuthorizationUsageDescriptionOverride;
  v20 = v4->_clinicalReadAuthorizationUsageDescriptionOverride;
  if (clinicalReadAuthorizationUsageDescriptionOverride != v20 && (!v20 || ![(NSString *)clinicalReadAuthorizationUsageDescriptionOverride isEqual:?]))
  {
    goto LABEL_31;
  }

  researchStudyUsageDescriptionOverride = self->_researchStudyUsageDescriptionOverride;
  v22 = v4->_researchStudyUsageDescriptionOverride;
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