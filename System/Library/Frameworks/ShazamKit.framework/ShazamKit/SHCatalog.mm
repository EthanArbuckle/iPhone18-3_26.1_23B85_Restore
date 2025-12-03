@interface SHCatalog
+ (BOOL)_validateInstallationID:(id)d;
- (NSTimeInterval)maximumQuerySignatureDuration;
- (NSTimeInterval)minimumQuerySignatureDuration;
- (SHCatalog)initWithConfiguration:(id)configuration error:(id *)error;
- (id)_createMatcher;
- (id)_createSessionDriver;
@end

@implementation SHCatalog

- (SHCatalog)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v7 = objc_opt_class();
  installationID = [configurationCopy installationID];
  LOBYTE(v7) = [v7 _validateInstallationID:installationID];

  if ((v7 & 1) == 0)
  {
    v16 = MEMORY[0x277CBEAD8];
    v17 = *MEMORY[0x277CBE660];
    v18 = MEMORY[0x277CCACA8];
    installationID2 = [configurationCopy installationID];
    [v18 stringWithFormat:@"%@ is not a valid installation ID", installationID2];
    v27 = LABEL_10:;
    v24 = [v16 exceptionWithName:v17 reason:v27 userInfo:0];
    v28 = v24;

LABEL_11:
    objc_exception_throw(v24);
  }

  [configurationCopy streamingBufferDuration];
  if (v9 <= 0.0)
  {
    v20 = MEMORY[0x277CBEAD8];
    v21 = *MEMORY[0x277CBE660];
    v22 = MEMORY[0x277CCACA8];
    [configurationCopy streamingBufferDuration];
    installationID2 = [v22 stringWithFormat:@"%f is not a valid buffer duration", v23];
    v24 = [v20 exceptionWithName:v21 reason:installationID2 userInfo:0];
    v25 = v24;
    goto LABEL_11;
  }

  signatureDurationRange = [configurationCopy signatureDurationRange];
  [signatureDurationRange lowerBound];
  v12 = v11;

  if (v12 <= 0.0)
  {
    v16 = MEMORY[0x277CBEAD8];
    v17 = *MEMORY[0x277CBE660];
    v26 = MEMORY[0x277CCACA8];
    installationID2 = [configurationCopy signatureDurationRange];
    [v26 stringWithFormat:@"%@ is not a valid signature duration range", installationID2];
    goto LABEL_10;
  }

  v29.receiver = self;
  v29.super_class = SHCatalog;
  v13 = [(SHCatalog *)&v29 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->__configuration, configuration);
  }

  return v14;
}

- (NSTimeInterval)minimumQuerySignatureDuration
{
  _configuration = [(SHCatalog *)self _configuration];
  signatureDurationRange = [_configuration signatureDurationRange];
  [signatureDurationRange lowerBound];
  v5 = v4;

  return v5;
}

- (NSTimeInterval)maximumQuerySignatureDuration
{
  _configuration = [(SHCatalog *)self _configuration];
  signatureDurationRange = [_configuration signatureDurationRange];
  [signatureDurationRange upperBound];
  v5 = v4;

  return v5;
}

- (id)_createMatcher
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)_createSessionDriver
{
  v3 = [SHStreamingSessionDriver alloc];
  [(SHCatalog *)self minimumQuerySignatureDuration];
  v5 = v4;
  [(SHCatalog *)self maximumQuerySignatureDuration];
  v7 = v6;
  _configuration = [(SHCatalog *)self _configuration];
  [_configuration streamingBufferDuration];
  v10 = v9;
  _configuration2 = [(SHCatalog *)self _configuration];
  musicalFeaturesConfiguration = [_configuration2 musicalFeaturesConfiguration];
  v13 = [(SHStreamingSessionDriver *)v3 initWithMinimumSignatureDuration:musicalFeaturesConfiguration maximumSignatureDuration:v5 bufferDuration:v7 musicalFeaturesConfiguration:v10];

  return v13;
}

+ (BOOL)_validateInstallationID:(id)d
{
  v3 = MEMORY[0x277CCA900];
  dCopy = d;
  whitespaceAndNewlineCharacterSet = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [dCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  LOBYTE(dCopy) = [v6 length] != 0;
  return dCopy;
}

@end