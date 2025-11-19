@interface HKFHIRIdentifier
+ (HKFHIRIdentifier)FHIRIdentifierWithString:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (HKFHIRIdentifier)init;
- (HKFHIRIdentifier)initWithCoder:(id)a3;
- (HKFHIRIdentifier)initWithResourceType:(id)a3 identifier:(id)a4;
- (NSString)stringValue;
- (id)description;
- (id)identifierForContainedResourceWithIdentifier:(id)a3 error:(id *)a4;
- (id)parentResourceIdentifierWithError:(id *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFHIRIdentifier

+ (HKFHIRIdentifier)FHIRIdentifierWithString:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"failed to parse FHIR identifier nil identifier"];;
    if (!v10)
    {
      goto LABEL_9;
    }

    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v9 = [v7 rangeOfString:@"/"];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"failed to parse FHIR identifier invalid format"];;
    if (!v10)
    {
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

    if (!a4)
    {
LABEL_5:
      _HKLogDroppedError(v10);
      goto LABEL_9;
    }

LABEL_8:
    v11 = v10;
    v12 = 0;
    *a4 = v10;
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
      v12 = [[a1 alloc] initWithResourceType:v13 identifier:v10];
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
    if (a4)
    {
      v20 = v18;
      *a4 = v19;
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

- (HKFHIRIdentifier)initWithResourceType:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKFHIRIdentifier;
  v8 = [(HKFHIRIdentifier *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    resourceType = v8->_resourceType;
    v8->_resourceType = v9;

    v11 = [v7 copy];
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

- (id)identifierForContainedResourceWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(NSString *)self->_identifier containsString:@"#"])
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"trying to create a contained resource identifier by containing in an already contained resource: %@", self}];
LABEL_5:
    v11 = 0;
    goto LABEL_7;
  }

  v7 = [v6 identifier];
  v8 = [v7 containsString:@"#"];

  if (v8)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = HKSensitiveLogItem(v6);
    [v9 hk_assignError:a4 code:3 format:{@"trying to create a contained resource identifier by containing an already contained resource: %@", v10}];

    goto LABEL_5;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [(HKFHIRIdentifier *)self stringValue];
  v14 = [v6 identifier];
  v15 = [v12 stringWithFormat:@"%@%@%@", v13, @"#", v14];

  v16 = [HKFHIRIdentifier alloc];
  v17 = [v6 resourceType];
  v11 = [(HKFHIRIdentifier *)v16 initWithResourceType:v17 identifier:v15];

LABEL_7:

  return v11;
}

- (id)parentResourceIdentifierWithError:(id *)a3
{
  if ([(NSString *)self->_identifier containsString:@"#"])
  {
    v5 = [(NSString *)self->_identifier componentsSeparatedByString:@"#"];
    if ([v5 count] == 2)
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [HKFHIRIdentifier FHIRIdentifierWithString:v6 error:a3];
    }

    else
    {
      v8 = MEMORY[0x1E696ABC0];
      resourceType = self->_resourceType;
      v6 = HKSensitiveLogItem(self->_identifier);
      [v8 hk_assignError:a3 code:3 format:{@"invalid FHIR identifier on %@: %@", resourceType, v6}];
      v7 = 0;
    }
  }

  else
  {
    v7 = [(HKFHIRIdentifier *)self copy];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKFHIRIdentifier *)self resourceType];
  [v4 encodeObject:v5 forKey:@"ResourceType"];

  v6 = [(HKFHIRIdentifier *)self identifier];
  [v4 encodeObject:v6 forKey:@"Identifier"];
}

- (HKFHIRIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKFHIRIdentifier;
  v5 = [(HKFHIRIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ResourceType"];
    resourceType = v5->_resourceType;
    v5->_resourceType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v23.receiver = self;
  v23.super_class = HKFHIRIdentifier;
  if ([(HKFHIRIdentifier *)&v23 isKindOfClass:v5])
  {
    v6 = v4;
    v7 = [(HKFHIRIdentifier *)self resourceType];
    v8 = [v6 resourceType];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [v6 resourceType];
      if (!v10)
      {
        goto LABEL_12;
      }

      v11 = v10;
      v12 = [(HKFHIRIdentifier *)self resourceType];
      v13 = [v6 resourceType];
      v14 = [v12 isEqualToString:v13];

      if (!v14)
      {
        goto LABEL_13;
      }
    }

    v7 = [(HKFHIRIdentifier *)self identifier];
    v16 = [v6 identifier];
    v9 = v16;
    if (v7 == v16)
    {

LABEL_15:
      v15 = 1;
      goto LABEL_16;
    }

    v17 = [v6 identifier];
    if (v17)
    {
      v18 = v17;
      v19 = [(HKFHIRIdentifier *)self identifier];
      v20 = [v6 identifier];
      v21 = [v19 isEqualToString:v20];

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
  v3 = [(HKFHIRIdentifier *)self resourceType];
  v4 = [v3 hash];
  v5 = [(HKFHIRIdentifier *)self identifier];
  v6 = [v5 hash];

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