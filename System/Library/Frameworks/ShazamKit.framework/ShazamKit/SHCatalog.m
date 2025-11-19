@interface SHCatalog
+ (BOOL)_validateInstallationID:(id)a3;
- (NSTimeInterval)maximumQuerySignatureDuration;
- (NSTimeInterval)minimumQuerySignatureDuration;
- (SHCatalog)initWithConfiguration:(id)a3 error:(id *)a4;
- (id)_createMatcher;
- (id)_createSessionDriver;
@end

@implementation SHCatalog

- (SHCatalog)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v6 installationID];
  LOBYTE(v7) = [v7 _validateInstallationID:v8];

  if ((v7 & 1) == 0)
  {
    v16 = MEMORY[0x277CBEAD8];
    v17 = *MEMORY[0x277CBE660];
    v18 = MEMORY[0x277CCACA8];
    v19 = [v6 installationID];
    [v18 stringWithFormat:@"%@ is not a valid installation ID", v19];
    v27 = LABEL_10:;
    v24 = [v16 exceptionWithName:v17 reason:v27 userInfo:0];
    v28 = v24;

LABEL_11:
    objc_exception_throw(v24);
  }

  [v6 streamingBufferDuration];
  if (v9 <= 0.0)
  {
    v20 = MEMORY[0x277CBEAD8];
    v21 = *MEMORY[0x277CBE660];
    v22 = MEMORY[0x277CCACA8];
    [v6 streamingBufferDuration];
    v19 = [v22 stringWithFormat:@"%f is not a valid buffer duration", v23];
    v24 = [v20 exceptionWithName:v21 reason:v19 userInfo:0];
    v25 = v24;
    goto LABEL_11;
  }

  v10 = [v6 signatureDurationRange];
  [v10 lowerBound];
  v12 = v11;

  if (v12 <= 0.0)
  {
    v16 = MEMORY[0x277CBEAD8];
    v17 = *MEMORY[0x277CBE660];
    v26 = MEMORY[0x277CCACA8];
    v19 = [v6 signatureDurationRange];
    [v26 stringWithFormat:@"%@ is not a valid signature duration range", v19];
    goto LABEL_10;
  }

  v29.receiver = self;
  v29.super_class = SHCatalog;
  v13 = [(SHCatalog *)&v29 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->__configuration, a3);
  }

  return v14;
}

- (NSTimeInterval)minimumQuerySignatureDuration
{
  v2 = [(SHCatalog *)self _configuration];
  v3 = [v2 signatureDurationRange];
  [v3 lowerBound];
  v5 = v4;

  return v5;
}

- (NSTimeInterval)maximumQuerySignatureDuration
{
  v2 = [(SHCatalog *)self _configuration];
  v3 = [v2 signatureDurationRange];
  [v3 upperBound];
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
  v8 = [(SHCatalog *)self _configuration];
  [v8 streamingBufferDuration];
  v10 = v9;
  v11 = [(SHCatalog *)self _configuration];
  v12 = [v11 musicalFeaturesConfiguration];
  v13 = [(SHStreamingSessionDriver *)v3 initWithMinimumSignatureDuration:v12 maximumSignatureDuration:v5 bufferDuration:v7 musicalFeaturesConfiguration:v10];

  return v13;
}

+ (BOOL)_validateInstallationID:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  LOBYTE(v4) = [v6 length] != 0;
  return v4;
}

@end