@interface AEAssessmentApplication
+ (id)instanceFromApplicationDescriptor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)applicationDescriptor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initWithBundleIdentifier:(void *)a3 teamIdentifier:(char)a4 requiresSignatureValidation:;
- (uint64_t)isEqualToApplication:(uint64_t)a1;
- (unint64_t)hash;
@end

@implementation AEAssessmentApplication

- (id)applicationDescriptor
{
  v2 = [objc_alloc(MEMORY[0x277CE46E0]) initWithBundleIdentifier:self->_bundleIdentifier teamIdentifier:self->_teamIdentifier requiresSignatureValidation:self->_requiresSignatureValidation];

  return v2;
}

+ (id)instanceFromApplicationDescriptor:(id)a3
{
  if (a3)
  {
    v7[1] = v3;
    v8 = v4;
    [(AEAssessmentApplication *)a3 instanceFromApplicationDescriptor:v7];
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

    if ([(AEAssessmentApplication *)v4 isMemberOfClass:objc_opt_class()])
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

- (id)initWithBundleIdentifier:(void *)a3 teamIdentifier:(char)a4 requiresSignatureValidation:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = AEAssessmentApplication;
    a1 = objc_msgSendSuper2(&v14, sel_init);
    if (a1)
    {
      v9 = [v7 copy];
      v10 = *(a1 + 2);
      *(a1 + 2) = v9;

      v11 = [v8 copy];
      v12 = *(a1 + 3);
      *(a1 + 3) = v11;

      *(a1 + 8) = a4;
    }
  }

  return a1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AEAssessmentApplication allocWithZone:a3];
  bundleIdentifier = self->_bundleIdentifier;
  teamIdentifier = self->_teamIdentifier;
  requiresSignatureValidation = self->_requiresSignatureValidation;

  return [(AEAssessmentApplication *)v4 initWithBundleIdentifier:teamIdentifier teamIdentifier:requiresSignatureValidation requiresSignatureValidation:?];
}

- (uint64_t)isEqualToApplication:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 16);
    a1 = (!(v4 | v3[2]) || [v4 isEqual:?]) && ((v5 = *(a1 + 24), !(v5 | v3[3])) || objc_msgSend(v5, "isEqual:")) && *(a1 + 8) == *(v3 + 8);
  }

  return a1;
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