@interface AEAssessmentApplicationDescriptor
- (AEAssessmentApplicationDescriptor)initWithBundleIdentifier:(id)a3 teamIdentifier:(id)a4 requiresSignatureValidation:(BOOL)a5;
- (AEAssessmentApplicationDescriptor)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)isEqualToDescriptor:(void *)a1;
@end

@implementation AEAssessmentApplicationDescriptor

- (AEAssessmentApplicationDescriptor)initWithBundleIdentifier:(id)a3 teamIdentifier:(id)a4 requiresSignatureValidation:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = AEAssessmentApplicationDescriptor;
  v10 = [(AEAssessmentApplicationDescriptor *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;

    v13 = [v9 copy];
    teamIdentifier = v10->_teamIdentifier;
    v10->_teamIdentifier = v13;

    v10->_requiresSignatureValidation = a5;
  }

  return v10;
}

- (AEAssessmentApplicationDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AEAssessmentApplicationDescriptor;
  v5 = [(AEAssessmentApplicationDescriptor *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"teamIdentifier"];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requiresSignatureValidation"];
    v5->_requiresSignatureValidation = [v10 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AEAssessmentApplicationDescriptor *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(AEAssessmentApplicationDescriptor *)self teamIdentifier];
  [v4 encodeObject:v6 forKey:@"teamIdentifier"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentApplicationDescriptor requiresSignatureValidation](self, "requiresSignatureValidation")}];
  [v4 encodeObject:v7 forKey:@"requiresSignatureValidation"];
}

- (unint64_t)hash
{
  v3 = [(AEAssessmentApplicationDescriptor *)self bundleIdentifier];
  v4 = [v3 hash];
  v5 = [(AEAssessmentApplicationDescriptor *)self teamIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentApplicationDescriptor requiresSignatureValidation](self, "requiresSignatureValidation")}];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v6 = 1;
      goto LABEL_6;
    }

    if ([(AEAssessmentApplicationDescriptor *)v4 isMemberOfClass:objc_opt_class()])
    {
      v6 = [(AEAssessmentApplicationDescriptor *)self isEqualToDescriptor:v5];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(AEAssessmentApplicationDescriptor *)self bundleIdentifier];
  v6 = [(AEAssessmentApplicationDescriptor *)self teamIdentifier];
  v7 = [(AEAssessmentApplicationDescriptor *)self requiresSignatureValidation];
  v8 = @"No";
  if (v7)
  {
    v8 = @"Yes";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p { bundleIdentifier = %@, teamIdentifier = %@, requiresSignatureValidation = %@ }>", v4, self, v5, v6, v8];

  return v9;
}

- (void)isEqualToDescriptor:(void *)a1
{
  v8 = a2;
  if (!a1)
  {
    goto LABEL_24;
  }

  v9 = [a1 bundleIdentifier];
  if (v9 || ([v8 bundleIdentifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v2 = [a1 bundleIdentifier];
    v3 = [v8 bundleIdentifier];
    if (![v2 isEqual:v3])
    {

      a1 = 0;
      goto LABEL_21;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 teamIdentifier];
  if (v11 || ([v8 teamIdentifier], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [a1 teamIdentifier];
    v6 = [v8 teamIdentifier];
    if (([v5 isEqual:v6] & 1) == 0)
    {

      a1 = 0;
      if (v11)
      {
        goto LABEL_19;
      }

LABEL_13:

      if ((v10 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v18 = v10;
    v12 = v4;
    v13 = 1;
  }

  else
  {
    v18 = v10;
    v12 = v4;
    v17 = 0;
    v13 = 0;
  }

  v14 = [a1 requiresSignatureValidation];
  a1 = (v14 ^ [v8 requiresSignatureValidation] ^ 1);
  if (v13)
  {
  }

  v4 = v12;
  v10 = v18;
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_19:

  if (v10)
  {
LABEL_20:
  }

LABEL_21:
  if (!v9)
  {
  }

LABEL_24:
  return a1;
}

@end