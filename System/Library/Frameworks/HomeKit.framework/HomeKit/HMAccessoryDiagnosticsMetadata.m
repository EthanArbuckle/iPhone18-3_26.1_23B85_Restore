@interface HMAccessoryDiagnosticsMetadata
- (HMAccessoryDiagnosticsMetadata)initWithCoder:(id)a3;
- (HMAccessoryDiagnosticsMetadata)initWithSnapshotPath:(id)a3 urlParameters:(id)a4 privacyPolicyURL:(id)a5 uploadDestination:(id)a6 consentVersion:(id)a7 uploadType:(id)a8;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessoryDiagnosticsMetadata

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessoryDiagnosticsMetadata *)self snapshotPath];
  [v4 encodeObject:v5 forKey:@"HMA.diagnostics.ck.sp"];

  v6 = [(HMAccessoryDiagnosticsMetadata *)self urlParameters];
  [v4 encodeObject:v6 forKey:@"HMA.diagnostics.ck.urlp"];

  v7 = [(HMAccessoryDiagnosticsMetadata *)self privacyPolicyURL];
  [v4 encodeObject:v7 forKey:@"HMA.diagnostics.ck.purl"];

  v8 = [(HMAccessoryDiagnosticsMetadata *)self uploadDestination];
  [v4 encodeObject:v8 forKey:@"HMA.diagnostics.ck.udest"];

  v9 = [(HMAccessoryDiagnosticsMetadata *)self consentVersion];
  [v4 encodeObject:v9 forKey:@"HMA.diagnostics.ck.cv"];

  v10 = [(HMAccessoryDiagnosticsMetadata *)self uploadType];
  [v4 encodeObject:v10 forKey:@"HMA.diagnostics.ck.ut"];
}

- (HMAccessoryDiagnosticsMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.sp"];
  v6 = objc_opt_class();
  v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.urlp"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.purl"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.udest"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.cv"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.ut"];

  v12 = [(HMAccessoryDiagnosticsMetadata *)self initWithSnapshotPath:v5 urlParameters:v7 privacyPolicyURL:v8 uploadDestination:v9 consentVersion:v10 uploadType:v11];
  return v12;
}

- (id)attributeDescriptions
{
  v24[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v23 = [(HMAccessoryDiagnosticsMetadata *)self snapshotPath];
  v22 = [v3 initWithName:@"snapshotPath" value:v23];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v21 = [(HMAccessoryDiagnosticsMetadata *)self urlParameters];
  v5 = [v4 initWithName:@"urlParameters" value:v21];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMAccessoryDiagnosticsMetadata *)self privacyPolicyURL];
  v8 = [v6 initWithName:@"privacyPolicyURL" value:v7];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = [(HMAccessoryDiagnosticsMetadata *)self uploadDestination];
  v11 = [v9 initWithName:@"uploadDestination" value:v10];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = [(HMAccessoryDiagnosticsMetadata *)self consentVersion];
  v14 = [v12 initWithName:@"consentVersion" value:v13];
  v24[4] = v14;
  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  v16 = [(HMAccessoryDiagnosticsMetadata *)self uploadType];
  v17 = [v15 initWithName:@"uploadType" value:v16];
  v24[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:6];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (HMAccessoryDiagnosticsMetadata)initWithSnapshotPath:(id)a3 urlParameters:(id)a4 privacyPolicyURL:(id)a5 uploadDestination:(id)a6 consentVersion:(id)a7 uploadType:(id)a8
{
  v25 = a3;
  v15 = a4;
  v24 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = HMAccessoryDiagnosticsMetadata;
  v19 = [(HMAccessoryDiagnosticsMetadata *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_snapshotPath, a3);
    v21 = [v15 copy];
    urlParameters = v20->_urlParameters;
    v20->_urlParameters = v21;

    objc_storeStrong(&v20->_privacyPolicyURL, a5);
    objc_storeStrong(&v20->_uploadDestination, a6);
    objc_storeStrong(&v20->_consentVersion, a7);
    objc_storeStrong(&v20->_uploadType, a8);
  }

  return v20;
}

@end