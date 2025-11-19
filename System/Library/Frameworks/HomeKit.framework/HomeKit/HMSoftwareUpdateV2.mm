@interface HMSoftwareUpdateV2
+ (id)shortDescription;
+ (id)softwareUpdateFromDescriptor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMSoftwareUpdateV2)initWithStatus:(int64_t)a3 error:(id)a4 documentationMetadata:(id)a5 version:(id)a6 downloadSize:(unint64_t)a7 humanReadableUpdateName:(id)a8 rampFeatureEnabledOnServer:(BOOL)a9;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
@end

@implementation HMSoftwareUpdateV2

- (NSArray)attributeDescriptions
{
  v27[7] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMSoftwareUpdateV2 status](self, "status")}];
  v25 = [v3 initWithName:@"status" value:v26];
  v27[0] = v25;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v24 = [(HMSoftwareUpdateV2 *)self error];
  v23 = [v4 initWithName:@"error" value:v24];
  v27[1] = v23;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  v22 = [(HMSoftwareUpdateV2 *)self documentationMetadata];
  v6 = [v5 initWithName:@"documentationMetadata" value:v22];
  v27[2] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMSoftwareUpdateV2 *)self version];
  v9 = [v7 initWithName:@"version" value:v8];
  v27[3] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMSoftwareUpdateV2 downloadSize](self, "downloadSize")}];
  v12 = [v10 initWithName:@"downloadSize" value:v11];
  v27[4] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  v14 = [(HMSoftwareUpdateV2 *)self humanReadableUpdateName];
  v15 = [v13 initWithName:@"humanReadableUpdateName" value:v14];
  v27[5] = v15;
  v16 = objc_alloc(MEMORY[0x1E69A29C8]);
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSoftwareUpdateV2 rampFeatureEnabledOnServer](self, "rampFeatureEnabledOnServer")}];
  v18 = [v16 initWithName:@"rampFeatureEnabledOnServer" value:v17];
  v27[6] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:7];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v22) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = [(HMSoftwareUpdateV2 *)self status];
    if (v7 != [(HMSoftwareUpdateV2 *)v6 status])
    {
      goto LABEL_13;
    }

    v8 = [(HMSoftwareUpdateV2 *)self error];
    v9 = [(HMSoftwareUpdateV2 *)v6 error];
    v10 = HMFEqualObjects();

    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = [(HMSoftwareUpdateV2 *)self documentationMetadata];
    v12 = [(HMSoftwareUpdateV2 *)v6 documentationMetadata];
    v13 = HMFEqualObjects();

    if (!v13)
    {
      goto LABEL_13;
    }

    v14 = [(HMSoftwareUpdateV2 *)self version];
    v15 = [(HMSoftwareUpdateV2 *)v6 version];
    v16 = HMFEqualObjects();

    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = [(HMSoftwareUpdateV2 *)self downloadSize];
    if (v17 != [(HMSoftwareUpdateV2 *)v6 downloadSize])
    {
      goto LABEL_13;
    }

    v18 = [(HMSoftwareUpdateV2 *)self humanReadableUpdateName];
    v19 = [(HMSoftwareUpdateV2 *)v6 humanReadableUpdateName];
    v20 = HMFEqualObjects();

    if (v20)
    {
      v21 = [(HMSoftwareUpdateV2 *)self rampFeatureEnabledOnServer];
      v22 = v21 ^ [(HMSoftwareUpdateV2 *)v6 rampFeatureEnabledOnServer]^ 1;
    }

    else
    {
LABEL_13:
      LOBYTE(v22) = 0;
    }
  }

  return v22;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMSoftwareUpdateV2 status](self, "status")}];
  v4 = [v3 hash];
  v5 = [(HMSoftwareUpdateV2 *)self error];
  v6 = [v5 hash];
  v7 = [(HMSoftwareUpdateV2 *)self documentationMetadata];
  v8 = v6 ^ [v7 hash];
  v9 = [(HMSoftwareUpdateV2 *)self version];
  v10 = v8 ^ [v9 hash] ^ v4;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMSoftwareUpdateV2 downloadSize](self, "downloadSize")}];
  v12 = [v11 hash];
  v13 = [(HMSoftwareUpdateV2 *)self humanReadableUpdateName];
  v14 = v10 ^ v12 ^ [v13 hash];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSoftwareUpdateV2 rampFeatureEnabledOnServer](self, "rampFeatureEnabledOnServer")}];
  v16 = [v15 hash];

  return v14 ^ v16;
}

- (HMSoftwareUpdateV2)initWithStatus:(int64_t)a3 error:(id)a4 documentationMetadata:(id)a5 version:(id)a6 downloadSize:(unint64_t)a7 humanReadableUpdateName:(id)a8 rampFeatureEnabledOnServer:(BOOL)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v25.receiver = self;
  v25.super_class = HMSoftwareUpdateV2;
  v20 = [(HMSoftwareUpdateV2 *)&v25 init];
  v21 = v20;
  if (v20)
  {
    v20->_status = a3;
    objc_storeStrong(&v20->_error, a4);
    objc_storeStrong(&v21->_documentationMetadata, a5);
    objc_storeStrong(&v21->_version, a6);
    v21->_downloadSize = a7;
    v22 = [v19 copy];
    humanReadableUpdateName = v21->_humanReadableUpdateName;
    v21->_humanReadableUpdateName = v22;

    v21->_rampFeatureEnabledOnServer = a9;
  }

  return v21;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)softwareUpdateFromDescriptor:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [HMSoftwareUpdateV2 alloc];
    v5 = [v3 status];
    v6 = [v3 error];
    v7 = [v3 documentationMetadata];
    v8 = [v3 version];
    v9 = [v3 downloadSize];
    v10 = [v9 unsignedIntValue];
    v11 = [v3 humanReadableUpdateName];
    v12 = [v3 rampFeatureEnabledOnServer];

    LOBYTE(v15) = [v12 BOOLValue];
    v13 = [(HMSoftwareUpdateV2 *)v4 initWithStatus:v5 error:v6 documentationMetadata:v7 version:v8 downloadSize:v10 humanReadableUpdateName:v11 rampFeatureEnabledOnServer:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end