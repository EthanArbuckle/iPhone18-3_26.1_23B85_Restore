@interface HKFHIRResource
- (BOOL)isEqual:(id)equal;
- (HKFHIRResource)init;
- (HKFHIRResource)initWithCoder:(id)coder;
- (HKFHIRResource)initWithResourceType:(id)type identifier:(id)identifier FHIRVersion:(id)version data:(id)data sourceURL:(id)l lastUpdatedDate:(id)date;
- (NSString)sourceString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKFHIRResource)initWithResourceType:(id)type identifier:(id)identifier FHIRVersion:(id)version data:(id)data sourceURL:(id)l lastUpdatedDate:(id)date
{
  typeCopy = type;
  identifierCopy = identifier;
  versionCopy = version;
  dataCopy = data;
  lCopy = l;
  dateCopy = date;
  if (versionCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKFHIRResource initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:];
    if (typeCopy)
    {
LABEL_3:
      if (identifierCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  [HKFHIRResource initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:];
  if (identifierCopy)
  {
LABEL_4:
    if (dataCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    [HKFHIRResource initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:];
    if (dateCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  [HKFHIRResource initWithResourceType:identifier:FHIRVersion:data:sourceURL:lastUpdatedDate:];
  if (!dataCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (dateCopy)
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
    v21 = [versionCopy copy];
    FHIRVersion = v20->_FHIRVersion;
    v20->_FHIRVersion = v21;

    v23 = [typeCopy copy];
    resourceType = v20->_resourceType;
    v20->_resourceType = v23;

    v25 = [identifierCopy copy];
    identifier = v20->_identifier;
    v20->_identifier = v25;

    v27 = [dataCopy copy];
    data = v20->_data;
    v20->_data = v27;

    v29 = [lCopy copy];
    sourceURL = v20->_sourceURL;
    v20->_sourceURL = v29;

    v31 = [dateCopy copy];
    lastUpdatedDate = v20->_lastUpdatedDate;
    v20->_lastUpdatedDate = v31;
  }

  return v20;
}

- (NSString)sourceString
{
  v2 = MEMORY[0x1E696ACB0];
  data = [(HKFHIRResource *)self data];
  v4 = [v2 hk_stringForDisplayFromFHIRData:data];

  return v4;
}

- (unint64_t)hash
{
  resourceType = [(HKFHIRResource *)self resourceType];
  v4 = [resourceType hash];
  identifier = [(HKFHIRResource *)self identifier];
  v6 = [identifier hash] ^ v4;
  fHIRVersion = [(HKFHIRResource *)self FHIRVersion];
  v8 = [fHIRVersion hash];
  data = [(HKFHIRResource *)self data];
  v10 = v6 ^ v8 ^ [data hash];
  sourceURL = [(HKFHIRResource *)self sourceURL];
  v12 = [sourceURL hash];
  lastUpdatedDate = [(HKFHIRResource *)self lastUpdatedDate];
  v14 = v12 ^ [lastUpdatedDate hash];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      fHIRVersion = [(HKFHIRResource *)self FHIRVersion];
      fHIRVersion2 = [(HKFHIRResource *)v5 FHIRVersion];
      v8 = fHIRVersion2;
      if (fHIRVersion == fHIRVersion2)
      {
      }

      else
      {
        fHIRVersion3 = [(HKFHIRResource *)v5 FHIRVersion];
        if (!fHIRVersion3)
        {
          goto LABEL_34;
        }

        v10 = fHIRVersion3;
        fHIRVersion4 = [(HKFHIRResource *)self FHIRVersion];
        fHIRVersion5 = [(HKFHIRResource *)v5 FHIRVersion];
        v13 = [fHIRVersion4 isEqual:fHIRVersion5];

        if (!v13)
        {
          goto LABEL_35;
        }
      }

      fHIRVersion = [(HKFHIRResource *)self resourceType];
      resourceType = [(HKFHIRResource *)v5 resourceType];
      v8 = resourceType;
      if (fHIRVersion == resourceType)
      {
      }

      else
      {
        resourceType2 = [(HKFHIRResource *)v5 resourceType];
        if (!resourceType2)
        {
          goto LABEL_34;
        }

        v17 = resourceType2;
        resourceType3 = [(HKFHIRResource *)self resourceType];
        resourceType4 = [(HKFHIRResource *)v5 resourceType];
        v20 = [resourceType3 isEqual:resourceType4];

        if (!v20)
        {
          goto LABEL_35;
        }
      }

      fHIRVersion = [(HKFHIRResource *)self identifier];
      identifier = [(HKFHIRResource *)v5 identifier];
      v8 = identifier;
      if (fHIRVersion == identifier)
      {
      }

      else
      {
        identifier2 = [(HKFHIRResource *)v5 identifier];
        if (!identifier2)
        {
          goto LABEL_34;
        }

        v23 = identifier2;
        identifier3 = [(HKFHIRResource *)self identifier];
        identifier4 = [(HKFHIRResource *)v5 identifier];
        v26 = [identifier3 isEqual:identifier4];

        if (!v26)
        {
          goto LABEL_35;
        }
      }

      fHIRVersion = [(HKFHIRResource *)self data];
      data = [(HKFHIRResource *)v5 data];
      v8 = data;
      if (fHIRVersion == data)
      {
      }

      else
      {
        data2 = [(HKFHIRResource *)v5 data];
        if (!data2)
        {
          goto LABEL_34;
        }

        v29 = data2;
        data3 = [(HKFHIRResource *)self data];
        data4 = [(HKFHIRResource *)v5 data];
        v32 = [data3 isEqual:data4];

        if (!v32)
        {
          goto LABEL_35;
        }
      }

      fHIRVersion = [(HKFHIRResource *)self sourceURL];
      sourceURL = [(HKFHIRResource *)v5 sourceURL];
      v8 = sourceURL;
      if (fHIRVersion == sourceURL)
      {
      }

      else
      {
        sourceURL2 = [(HKFHIRResource *)v5 sourceURL];
        if (!sourceURL2)
        {
          goto LABEL_34;
        }

        v35 = sourceURL2;
        sourceURL3 = [(HKFHIRResource *)self sourceURL];
        sourceURL4 = [(HKFHIRResource *)v5 sourceURL];
        v38 = [sourceURL3 isEqual:sourceURL4];

        if (!v38)
        {
          goto LABEL_35;
        }
      }

      fHIRVersion = [(HKFHIRResource *)self lastUpdatedDate];
      lastUpdatedDate = [(HKFHIRResource *)v5 lastUpdatedDate];
      v8 = lastUpdatedDate;
      if (fHIRVersion == lastUpdatedDate)
      {

LABEL_39:
        v14 = 1;
        goto LABEL_36;
      }

      lastUpdatedDate2 = [(HKFHIRResource *)v5 lastUpdatedDate];
      if (lastUpdatedDate2)
      {
        v41 = lastUpdatedDate2;
        lastUpdatedDate3 = [(HKFHIRResource *)self lastUpdatedDate];
        lastUpdatedDate4 = [(HKFHIRResource *)v5 lastUpdatedDate];
        v44 = [lastUpdatedDate3 isEqual:lastUpdatedDate4];

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

- (HKFHIRResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FHIRVersion"];
  if (!v5)
  {
    v14 = xmmword_191DCD6B0;
    v15 = 2;
    v5 = [[HKFHIRVersion alloc] initWithSemanticVersion:&v14];
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ResourceType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
  if (v9)
  {
    selfCopy = [MEMORY[0x1E695DFF8] URLWithString:v9];
    if (!selfCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v11 = MEMORY[0x1E695DF00];
  [coderCopy decodeDoubleForKey:@"LastUpdatedDate"];
  v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
  self = [(HKFHIRResource *)self initWithResourceType:v6 identifier:v7 FHIRVersion:v5 data:v8 sourceURL:selfCopy lastUpdatedDate:v12];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fHIRVersion = [(HKFHIRResource *)self FHIRVersion];
  [coderCopy encodeObject:fHIRVersion forKey:@"FHIRVersion"];

  resourceType = [(HKFHIRResource *)self resourceType];
  [coderCopy encodeObject:resourceType forKey:@"ResourceType"];

  identifier = [(HKFHIRResource *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"Identifier"];

  data = [(HKFHIRResource *)self data];
  [coderCopy encodeObject:data forKey:@"Data"];

  sourceURL = [(HKFHIRResource *)self sourceURL];

  if (sourceURL)
  {
    sourceURL2 = [(HKFHIRResource *)self sourceURL];
    absoluteString = [sourceURL2 absoluteString];
    [coderCopy encodeObject:absoluteString forKey:@"SourceURL"];
  }

  lastUpdatedDate = [(HKFHIRResource *)self lastUpdatedDate];
  [lastUpdatedDate timeIntervalSinceReferenceDate];
  [coderCopy encodeDouble:@"LastUpdatedDate" forKey:?];
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