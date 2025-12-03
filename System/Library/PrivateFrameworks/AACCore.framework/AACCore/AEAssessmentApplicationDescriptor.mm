@interface AEAssessmentApplicationDescriptor
- (AEAssessmentApplicationDescriptor)initWithBundleIdentifier:(id)identifier teamIdentifier:(id)teamIdentifier requiresSignatureValidation:(BOOL)validation;
- (AEAssessmentApplicationDescriptor)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)isEqualToDescriptor:(void *)descriptor;
@end

@implementation AEAssessmentApplicationDescriptor

- (AEAssessmentApplicationDescriptor)initWithBundleIdentifier:(id)identifier teamIdentifier:(id)teamIdentifier requiresSignatureValidation:(BOOL)validation
{
  identifierCopy = identifier;
  teamIdentifierCopy = teamIdentifier;
  v16.receiver = self;
  v16.super_class = AEAssessmentApplicationDescriptor;
  v10 = [(AEAssessmentApplicationDescriptor *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;

    v13 = [teamIdentifierCopy copy];
    teamIdentifier = v10->_teamIdentifier;
    v10->_teamIdentifier = v13;

    v10->_requiresSignatureValidation = validation;
  }

  return v10;
}

- (AEAssessmentApplicationDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AEAssessmentApplicationDescriptor;
  v5 = [(AEAssessmentApplicationDescriptor *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"teamIdentifier"];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requiresSignatureValidation"];
    v5->_requiresSignatureValidation = [v10 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(AEAssessmentApplicationDescriptor *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  teamIdentifier = [(AEAssessmentApplicationDescriptor *)self teamIdentifier];
  [coderCopy encodeObject:teamIdentifier forKey:@"teamIdentifier"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentApplicationDescriptor requiresSignatureValidation](self, "requiresSignatureValidation")}];
  [coderCopy encodeObject:v7 forKey:@"requiresSignatureValidation"];
}

- (unint64_t)hash
{
  bundleIdentifier = [(AEAssessmentApplicationDescriptor *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  teamIdentifier = [(AEAssessmentApplicationDescriptor *)self teamIdentifier];
  v6 = [teamIdentifier hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentApplicationDescriptor requiresSignatureValidation](self, "requiresSignatureValidation")}];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (equalCopy == self)
    {
      v6 = 1;
      goto LABEL_6;
    }

    if ([(AEAssessmentApplicationDescriptor *)equalCopy isMemberOfClass:objc_opt_class()])
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
  bundleIdentifier = [(AEAssessmentApplicationDescriptor *)self bundleIdentifier];
  teamIdentifier = [(AEAssessmentApplicationDescriptor *)self teamIdentifier];
  requiresSignatureValidation = [(AEAssessmentApplicationDescriptor *)self requiresSignatureValidation];
  v8 = @"No";
  if (requiresSignatureValidation)
  {
    v8 = @"Yes";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p { bundleIdentifier = %@, teamIdentifier = %@, requiresSignatureValidation = %@ }>", v4, self, bundleIdentifier, teamIdentifier, v8];

  return v9;
}

- (void)isEqualToDescriptor:(void *)descriptor
{
  v8 = a2;
  if (!descriptor)
  {
    goto LABEL_24;
  }

  bundleIdentifier = [descriptor bundleIdentifier];
  if (bundleIdentifier || ([v8 bundleIdentifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    bundleIdentifier2 = [descriptor bundleIdentifier];
    bundleIdentifier3 = [v8 bundleIdentifier];
    if (![bundleIdentifier2 isEqual:bundleIdentifier3])
    {

      descriptor = 0;
      goto LABEL_21;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  teamIdentifier = [descriptor teamIdentifier];
  if (teamIdentifier || ([v8 teamIdentifier], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    teamIdentifier2 = [descriptor teamIdentifier];
    teamIdentifier3 = [v8 teamIdentifier];
    if (([teamIdentifier2 isEqual:teamIdentifier3] & 1) == 0)
    {

      descriptor = 0;
      if (teamIdentifier)
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

  requiresSignatureValidation = [descriptor requiresSignatureValidation];
  descriptor = (requiresSignatureValidation ^ [v8 requiresSignatureValidation] ^ 1);
  if (v13)
  {
  }

  v4 = v12;
  v10 = v18;
  if (!teamIdentifier)
  {
    goto LABEL_13;
  }

LABEL_19:

  if (v10)
  {
LABEL_20:
  }

LABEL_21:
  if (!bundleIdentifier)
  {
  }

LABEL_24:
  return descriptor;
}

@end