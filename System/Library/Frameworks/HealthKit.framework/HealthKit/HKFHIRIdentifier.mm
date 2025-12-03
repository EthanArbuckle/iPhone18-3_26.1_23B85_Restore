@interface HKFHIRIdentifier
+ (HKFHIRIdentifier)FHIRIdentifierWithString:(id)string error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKFHIRIdentifier)init;
- (HKFHIRIdentifier)initWithCoder:(id)coder;
- (HKFHIRIdentifier)initWithResourceType:(id)type identifier:(id)identifier;
- (NSString)stringValue;
- (id)description;
- (id)identifierForContainedResourceWithIdentifier:(id)identifier error:(id *)error;
- (id)parentResourceIdentifierWithError:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFHIRIdentifier

+ (HKFHIRIdentifier)FHIRIdentifierWithString:(id)string error:(id *)error
{
  stringCopy = string;
  v8 = stringCopy;
  if (!stringCopy)
  {
    v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"failed to parse FHIR identifier nil identifier"];;
    if (!v10)
    {
      goto LABEL_9;
    }

    if (!error)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v9 = [stringCopy rangeOfString:@"/"];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"failed to parse FHIR identifier invalid format"];;
    if (!v10)
    {
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

    if (!error)
    {
LABEL_5:
      _HKLogDroppedError(v10);
      goto LABEL_9;
    }

LABEL_8:
    v11 = v10;
    v12 = 0;
    *error = v10;
LABEL_10:
    v13 = v10;
    goto LABEL_23;
  }

  v14 = v9;
  v13 = [v8 substringToIndex:v9];
  v10 = [v8 substringFromIndex:v14 + 1];
  if (v13 && [v13 length])
  {
    if (v10 && [v10 length])
    {
      v12 = [[self alloc] initWithResourceType:v13 identifier:v10];
      goto LABEL_23;
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = objc_opt_class();
    v17 = @"failed to parse FHIR identifier; missing identifier";
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = objc_opt_class();
    v17 = @"failed to parse FHIR identifier; missing resource type";
  }

  v18 = [v15 hk_errorForInvalidArgument:@"@" class:v16 selector:a2 format:v17];
  v19 = v18;
  if (v18)
  {
    if (error)
    {
      v20 = v18;
      *error = v19;
    }

    else
    {
      _HKLogDroppedError(v18);
    }
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (HKFHIRIdentifier)initWithResourceType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = HKFHIRIdentifier;
  v8 = [(HKFHIRIdentifier *)&v14 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    resourceType = v8->_resourceType;
    v8->_resourceType = v9;

    v11 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v11;
  }

  return v8;
}

- (HKFHIRIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (NSString)stringValue
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@%@", self->_resourceType, @"/", self->_identifier];

  return v2;
}

- (id)identifierForContainedResourceWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ([(NSString *)self->_identifier containsString:@"#"])
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"trying to create a contained resource identifier by containing in an already contained resource: %@", self}];
LABEL_5:
    v11 = 0;
    goto LABEL_7;
  }

  identifier = [identifierCopy identifier];
  v8 = [identifier containsString:@"#"];

  if (v8)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = HKSensitiveLogItem(identifierCopy);
    [v9 hk_assignError:error code:3 format:{@"trying to create a contained resource identifier by containing an already contained resource: %@", v10}];

    goto LABEL_5;
  }

  v12 = MEMORY[0x1E696AEC0];
  stringValue = [(HKFHIRIdentifier *)self stringValue];
  identifier2 = [identifierCopy identifier];
  v15 = [v12 stringWithFormat:@"%@%@%@", stringValue, @"#", identifier2];

  v16 = [HKFHIRIdentifier alloc];
  resourceType = [identifierCopy resourceType];
  v11 = [(HKFHIRIdentifier *)v16 initWithResourceType:resourceType identifier:v15];

LABEL_7:

  return v11;
}

- (id)parentResourceIdentifierWithError:(id *)error
{
  if ([(NSString *)self->_identifier containsString:@"#"])
  {
    v5 = [(NSString *)self->_identifier componentsSeparatedByString:@"#"];
    if ([v5 count] == 2)
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [HKFHIRIdentifier FHIRIdentifierWithString:v6 error:error];
    }

    else
    {
      v8 = MEMORY[0x1E696ABC0];
      resourceType = self->_resourceType;
      v6 = HKSensitiveLogItem(self->_identifier);
      [v8 hk_assignError:error code:3 format:{@"invalid FHIR identifier on %@: %@", resourceType, v6}];
      v7 = 0;
    }
  }

  else
  {
    v7 = [(HKFHIRIdentifier *)self copy];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  resourceType = [(HKFHIRIdentifier *)self resourceType];
  [coderCopy encodeObject:resourceType forKey:@"ResourceType"];

  identifier = [(HKFHIRIdentifier *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
}

- (HKFHIRIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKFHIRIdentifier;
  v5 = [(HKFHIRIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ResourceType"];
    resourceType = v5->_resourceType;
    v5->_resourceType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v23.receiver = self;
  v23.super_class = HKFHIRIdentifier;
  if ([(HKFHIRIdentifier *)&v23 isKindOfClass:v5])
  {
    v6 = equalCopy;
    resourceType = [(HKFHIRIdentifier *)self resourceType];
    resourceType2 = [v6 resourceType];
    v9 = resourceType2;
    if (resourceType == resourceType2)
    {
    }

    else
    {
      resourceType3 = [v6 resourceType];
      if (!resourceType3)
      {
        goto LABEL_12;
      }

      v11 = resourceType3;
      resourceType4 = [(HKFHIRIdentifier *)self resourceType];
      resourceType5 = [v6 resourceType];
      v14 = [resourceType4 isEqualToString:resourceType5];

      if (!v14)
      {
        goto LABEL_13;
      }
    }

    resourceType = [(HKFHIRIdentifier *)self identifier];
    identifier = [v6 identifier];
    v9 = identifier;
    if (resourceType == identifier)
    {

LABEL_15:
      v15 = 1;
      goto LABEL_16;
    }

    identifier2 = [v6 identifier];
    if (identifier2)
    {
      v18 = identifier2;
      identifier3 = [(HKFHIRIdentifier *)self identifier];
      identifier4 = [v6 identifier];
      v21 = [identifier3 isEqualToString:identifier4];

      if (v21)
      {
        goto LABEL_15;
      }

LABEL_13:
      v15 = 0;
LABEL_16:

      goto LABEL_17;
    }

LABEL_12:

    goto LABEL_13;
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (unint64_t)hash
{
  resourceType = [(HKFHIRIdentifier *)self resourceType];
  v4 = [resourceType hash];
  identifier = [(HKFHIRIdentifier *)self identifier];
  v6 = [identifier hash];

  return v6 ^ v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  resourceType = self->_resourceType;
  v4 = HKSensitiveLogItem(self->_identifier);
  v5 = [v2 stringWithFormat:@"%@(%@)", resourceType, v4];

  return v5;
}

@end