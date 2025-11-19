@interface HKFHIRResource
- (BOOL)isEqual:(id)a3;
- (HKFHIRResource)init;
- (HKFHIRResource)initWithCoder:(id)a3;
- (HKFHIRResource)initWithResourceType:(id)a3 identifier:(id)a4 FHIRVersion:(id)a5 data:(id)a6 sourceURL:(id)a7 lastUpdatedDate:(id)a8;
- (NSString)sourceString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFHIRResource

- (HKFHIRResource)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKFHIRResource)initWithResourceType:(id)a3 identifier:(id)a4 FHIRVersion:(id)a5 data:(id)a6 sourceURL:(id)a7 lastUpdatedDate:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v16)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKFHIRResource initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:];
    if (v14)
    {
LABEL_3:
      if (v15)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  [HKFHIRResource initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:];
  if (v15)
  {
LABEL_4:
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_12:
    [HKFHIRResource initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:];
    if (v19)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  [HKFHIRResource initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:];
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v19)
  {
    goto LABEL_6;
  }

LABEL_13:
  [HKFHIRResource initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:];
LABEL_6:
  v34.receiver = self;
  v34.super_class = HKFHIRResource;
  v20 = [(HKFHIRResource *)&v34 init];
  if (v20)
  {
    v21 = [v16 copy];
    FHIRVersion = v20->_FHIRVersion;
    v20->_FHIRVersion = v21;

    v23 = [v14 copy];
    resourceType = v20->_resourceType;
    v20->_resourceType = v23;

    v25 = [v15 copy];
    identifier = v20->_identifier;
    v20->_identifier = v25;

    v27 = [v17 copy];
    data = v20->_data;
    v20->_data = v27;

    v29 = [v18 copy];
    sourceURL = v20->_sourceURL;
    v20->_sourceURL = v29;

    v31 = [v19 copy];
    lastUpdatedDate = v20->_lastUpdatedDate;
    v20->_lastUpdatedDate = v31;
  }

  return v20;
}

- (NSString)sourceString
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(HKFHIRResource *)self data];
  v4 = [v2 hk_stringForDisplayFromFHIRData:v3];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(HKFHIRResource *)self resourceType];
  v4 = [v3 hash];
  v5 = [(HKFHIRResource *)self identifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(HKFHIRResource *)self FHIRVersion];
  v8 = [v7 hash];
  v9 = [(HKFHIRResource *)self data];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(HKFHIRResource *)self sourceURL];
  v12 = [v11 hash];
  v13 = [(HKFHIRResource *)self lastUpdatedDate];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKFHIRResource *)self FHIRVersion];
      v7 = [(HKFHIRResource *)v5 FHIRVersion];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKFHIRResource *)v5 FHIRVersion];
        if (!v9)
        {
          goto LABEL_34;
        }

        v10 = v9;
        v11 = [(HKFHIRResource *)self FHIRVersion];
        v12 = [(HKFHIRResource *)v5 FHIRVersion];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_35;
        }
      }

      v6 = [(HKFHIRResource *)self resourceType];
      v15 = [(HKFHIRResource *)v5 resourceType];
      v8 = v15;
      if (v6 == v15)
      {
      }

      else
      {
        v16 = [(HKFHIRResource *)v5 resourceType];
        if (!v16)
        {
          goto LABEL_34;
        }

        v17 = v16;
        v18 = [(HKFHIRResource *)self resourceType];
        v19 = [(HKFHIRResource *)v5 resourceType];
        v20 = [v18 isEqual:v19];

        if (!v20)
        {
          goto LABEL_35;
        }
      }

      v6 = [(HKFHIRResource *)self identifier];
      v21 = [(HKFHIRResource *)v5 identifier];
      v8 = v21;
      if (v6 == v21)
      {
      }

      else
      {
        v22 = [(HKFHIRResource *)v5 identifier];
        if (!v22)
        {
          goto LABEL_34;
        }

        v23 = v22;
        v24 = [(HKFHIRResource *)self identifier];
        v25 = [(HKFHIRResource *)v5 identifier];
        v26 = [v24 isEqual:v25];

        if (!v26)
        {
          goto LABEL_35;
        }
      }

      v6 = [(HKFHIRResource *)self data];
      v27 = [(HKFHIRResource *)v5 data];
      v8 = v27;
      if (v6 == v27)
      {
      }

      else
      {
        v28 = [(HKFHIRResource *)v5 data];
        if (!v28)
        {
          goto LABEL_34;
        }

        v29 = v28;
        v30 = [(HKFHIRResource *)self data];
        v31 = [(HKFHIRResource *)v5 data];
        v32 = [v30 isEqual:v31];

        if (!v32)
        {
          goto LABEL_35;
        }
      }

      v6 = [(HKFHIRResource *)self sourceURL];
      v33 = [(HKFHIRResource *)v5 sourceURL];
      v8 = v33;
      if (v6 == v33)
      {
      }

      else
      {
        v34 = [(HKFHIRResource *)v5 sourceURL];
        if (!v34)
        {
          goto LABEL_34;
        }

        v35 = v34;
        v36 = [(HKFHIRResource *)self sourceURL];
        v37 = [(HKFHIRResource *)v5 sourceURL];
        v38 = [v36 isEqual:v37];

        if (!v38)
        {
          goto LABEL_35;
        }
      }

      v6 = [(HKFHIRResource *)self lastUpdatedDate];
      v39 = [(HKFHIRResource *)v5 lastUpdatedDate];
      v8 = v39;
      if (v6 == v39)
      {

LABEL_39:
        v14 = 1;
        goto LABEL_36;
      }

      v40 = [(HKFHIRResource *)v5 lastUpdatedDate];
      if (v40)
      {
        v41 = v40;
        v42 = [(HKFHIRResource *)self lastUpdatedDate];
        v43 = [(HKFHIRResource *)v5 lastUpdatedDate];
        v44 = [v42 isEqual:v43];

        if (v44)
        {
          goto LABEL_39;
        }

LABEL_35:
        v14 = 0;
LABEL_36:

        goto LABEL_37;
      }

LABEL_34:

      goto LABEL_35;
    }

    v14 = 0;
  }

LABEL_37:

  return v14;
}

- (HKFHIRResource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FHIRVersion"];
  if (!v5)
  {
    v14 = xmmword_191DCD6B0;
    v15 = 2;
    v5 = [[HKFHIRVersion alloc] initWithSemanticVersion:&v14];
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ResourceType"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x1E695DF00];
  [v4 decodeDoubleForKey:@"LastUpdatedDate"];
  v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
  self = [(HKFHIRResource *)self initWithResourceType:v6 identifier:v7 FHIRVersion:v5 data:v8 sourceURL:v10 lastUpdatedDate:v12];

  v10 = self;
LABEL_8:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(HKFHIRResource *)self FHIRVersion];
  [v12 encodeObject:v4 forKey:@"FHIRVersion"];

  v5 = [(HKFHIRResource *)self resourceType];
  [v12 encodeObject:v5 forKey:@"ResourceType"];

  v6 = [(HKFHIRResource *)self identifier];
  [v12 encodeObject:v6 forKey:@"Identifier"];

  v7 = [(HKFHIRResource *)self data];
  [v12 encodeObject:v7 forKey:@"Data"];

  v8 = [(HKFHIRResource *)self sourceURL];

  if (v8)
  {
    v9 = [(HKFHIRResource *)self sourceURL];
    v10 = [v9 absoluteString];
    [v12 encodeObject:v10 forKey:@"SourceURL"];
  }

  v11 = [(HKFHIRResource *)self lastUpdatedDate];
  [v11 timeIntervalSinceReferenceDate];
  [v12 encodeDouble:@"LastUpdatedDate" forKey:?];
}

- (void)initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"FHIRVersion" object:? file:? lineNumber:? description:?];
}

- (void)initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"resourceType" object:? file:? lineNumber:? description:?];
}

- (void)initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

- (void)initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"lastUpdatedDate" object:? file:? lineNumber:? description:?];
}

@end