@interface AEAssessmentApplication
+ (id)instanceFromApplicationDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (id)applicationDescriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initWithBundleIdentifier:(void *)identifier teamIdentifier:(char)teamIdentifier requiresSignatureValidation:;
- (uint64_t)isEqualToApplication:(uint64_t)application;
- (unint64_t)hash;
@end

@implementation AEAssessmentApplication

- (id)applicationDescriptor
{
  v2 = [objc_alloc(MEMORY[0x277CE46E0]) initWithBundleIdentifier:self->_bundleIdentifier teamIdentifier:self->_teamIdentifier requiresSignatureValidation:self->_requiresSignatureValidation];

  return v2;
}

+ (id)instanceFromApplicationDescriptor:(id)descriptor
{
  if (descriptor)
  {
    v7[1] = v3;
    v8 = v4;
    [(AEAssessmentApplication *)descriptor instanceFromApplicationDescriptor:v7];
    v5 = v7[0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleIdentifier hash];
  v4 = [(NSString *)self->_teamIdentifier hash]^ v3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_requiresSignatureValidation];
  v6 = [v5 hash];

  return v4 ^ v6;
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

    if ([(AEAssessmentApplication *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = [(AEAssessmentApplication *)self isEqualToApplication:v5];
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
  if (self->_requiresSignatureValidation)
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  return [v3 stringWithFormat:@"<%@: %p { bundleIdentifier = %@, teamIdentifier = %@, requiresSignatureChecks = %@ }>", v4, self, self->_bundleIdentifier, self->_teamIdentifier, v5];
}

- (id)initWithBundleIdentifier:(void *)identifier teamIdentifier:(char)teamIdentifier requiresSignatureValidation:
{
  v7 = a2;
  identifierCopy = identifier;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = AEAssessmentApplication;
    self = objc_msgSendSuper2(&v14, sel_init);
    if (self)
    {
      v9 = [v7 copy];
      v10 = *(self + 2);
      *(self + 2) = v9;

      v11 = [identifierCopy copy];
      v12 = *(self + 3);
      *(self + 3) = v11;

      *(self + 8) = teamIdentifier;
    }
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AEAssessmentApplication allocWithZone:zone];
  bundleIdentifier = self->_bundleIdentifier;
  teamIdentifier = self->_teamIdentifier;
  requiresSignatureValidation = self->_requiresSignatureValidation;

  return [(AEAssessmentApplication *)v4 initWithBundleIdentifier:teamIdentifier teamIdentifier:requiresSignatureValidation requiresSignatureValidation:?];
}

- (uint64_t)isEqualToApplication:(uint64_t)application
{
  v3 = a2;
  if (application)
  {
    v4 = *(application + 16);
    application = (!(v4 | v3[2]) || [v4 isEqual:?]) && ((v5 = *(application + 24), !(v5 | v3[3])) || objc_msgSend(v5, "isEqual:")) && *(application + 8) == *(v3 + 8);
  }

  return application;
}

+ (void)instanceFromApplicationDescriptor:(void *)a1 .cold.1(void *a1, id *a2)
{
  v3 = a1;
  v4 = [AEAssessmentApplication alloc];
  v7 = [v3 bundleIdentifier];
  v5 = [v3 teamIdentifier];
  v6 = [v3 requiresSignatureValidation];

  *a2 = [(AEAssessmentApplication *)v4 initWithBundleIdentifier:v7 teamIdentifier:v5 requiresSignatureValidation:v6];
}

@end