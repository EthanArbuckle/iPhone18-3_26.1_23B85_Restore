@interface HMAccessoryDiagnosticsMetadata
- (HMAccessoryDiagnosticsMetadata)initWithCoder:(id)coder;
- (HMAccessoryDiagnosticsMetadata)initWithSnapshotPath:(id)path urlParameters:(id)parameters privacyPolicyURL:(id)l uploadDestination:(id)destination consentVersion:(id)version uploadType:(id)type;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessoryDiagnosticsMetadata

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  snapshotPath = [(HMAccessoryDiagnosticsMetadata *)self snapshotPath];
  [coderCopy encodeObject:snapshotPath forKey:@"HMA.diagnostics.ck.sp"];

  urlParameters = [(HMAccessoryDiagnosticsMetadata *)self urlParameters];
  [coderCopy encodeObject:urlParameters forKey:@"HMA.diagnostics.ck.urlp"];

  privacyPolicyURL = [(HMAccessoryDiagnosticsMetadata *)self privacyPolicyURL];
  [coderCopy encodeObject:privacyPolicyURL forKey:@"HMA.diagnostics.ck.purl"];

  uploadDestination = [(HMAccessoryDiagnosticsMetadata *)self uploadDestination];
  [coderCopy encodeObject:uploadDestination forKey:@"HMA.diagnostics.ck.udest"];

  consentVersion = [(HMAccessoryDiagnosticsMetadata *)self consentVersion];
  [coderCopy encodeObject:consentVersion forKey:@"HMA.diagnostics.ck.cv"];

  uploadType = [(HMAccessoryDiagnosticsMetadata *)self uploadType];
  [coderCopy encodeObject:uploadType forKey:@"HMA.diagnostics.ck.ut"];
}

- (HMAccessoryDiagnosticsMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.sp"];
  v6 = objc_opt_class();
  v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.urlp"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.purl"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.udest"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.cv"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.ut"];

  v12 = [(HMAccessoryDiagnosticsMetadata *)self initWithSnapshotPath:v5 urlParameters:v7 privacyPolicyURL:v8 uploadDestination:v9 consentVersion:v10 uploadType:v11];
  return v12;
}

- (id)attributeDescriptions
{
  v24[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  snapshotPath = [(HMAccessoryDiagnosticsMetadata *)self snapshotPath];
  v22 = [v3 initWithName:@"snapshotPath" value:snapshotPath];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  urlParameters = [(HMAccessoryDiagnosticsMetadata *)self urlParameters];
  v5 = [v4 initWithName:@"urlParameters" value:urlParameters];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  privacyPolicyURL = [(HMAccessoryDiagnosticsMetadata *)self privacyPolicyURL];
  v8 = [v6 initWithName:@"privacyPolicyURL" value:privacyPolicyURL];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  uploadDestination = [(HMAccessoryDiagnosticsMetadata *)self uploadDestination];
  v11 = [v9 initWithName:@"uploadDestination" value:uploadDestination];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  consentVersion = [(HMAccessoryDiagnosticsMetadata *)self consentVersion];
  v14 = [v12 initWithName:@"consentVersion" value:consentVersion];
  v24[4] = v14;
  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  uploadType = [(HMAccessoryDiagnosticsMetadata *)self uploadType];
  v17 = [v15 initWithName:@"uploadType" value:uploadType];
  v24[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:6];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (HMAccessoryDiagnosticsMetadata)initWithSnapshotPath:(id)path urlParameters:(id)parameters privacyPolicyURL:(id)l uploadDestination:(id)destination consentVersion:(id)version uploadType:(id)type
{
  pathCopy = path;
  parametersCopy = parameters;
  lCopy = l;
  destinationCopy = destination;
  versionCopy = version;
  typeCopy = type;
  v26.receiver = self;
  v26.super_class = HMAccessoryDiagnosticsMetadata;
  v19 = [(HMAccessoryDiagnosticsMetadata *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_snapshotPath, path);
    v21 = [parametersCopy copy];
    urlParameters = v20->_urlParameters;
    v20->_urlParameters = v21;

    objc_storeStrong(&v20->_privacyPolicyURL, l);
    objc_storeStrong(&v20->_uploadDestination, destination);
    objc_storeStrong(&v20->_consentVersion, version);
    objc_storeStrong(&v20->_uploadType, type);
  }

  return v20;
}

@end