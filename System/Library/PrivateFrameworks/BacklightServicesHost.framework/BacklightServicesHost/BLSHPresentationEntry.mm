@interface BLSHPresentationEntry
- (BLSHEnvironmentDateSpecifier)currentSpecifier;
- (BLSHPresentationEntry)initWithEnvironment:(id)a3 userObject:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)debugDescription;
- (id)description;
@end

@implementation BLSHPresentationEntry

- (BLSHEnvironmentDateSpecifier)currentSpecifier
{
  v3 = [(BLSHBacklightSceneHostEnvironment *)self->_environment presentationDate];
  if (v3)
  {
    v4 = [(BLSHBacklightSceneHostEnvironment *)self->_environment visualState];
    v5 = +[BLSHEnvironmentDateSpecifier specifierWithPresentationDate:fidelity:environment:](BLSHEnvironmentDateSpecifier, "specifierWithPresentationDate:fidelity:environment:", v3, [v4 updateFidelity], self->_environment);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BLSHPresentationEntry)initWithEnvironment:(id)a3 userObject:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BLSHPresentationEntry;
  v9 = [(BLSHPresentationEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, a3);
    objc_storeStrong(&v10->_userObject, a4);
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = MEMORY[0x277CCACA8];
  environment = self->_environment;
  v6 = [(BLSHBacklightSceneHostEnvironment *)environment identifier];
  v7 = [v4 stringWithFormat:@"<%p:%@>", environment, v6];
  [v3 appendString:v7 withName:@"environment"];

  if (!self->_userObject)
  {
    [v3 appendString:@"<nil>" withName:@"userObject"];
  }

  v8 = [v3 build];

  return v8;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_environment withName:@"environment"];
  v5 = [v3 appendObject:self->_userObject withName:@"userObject"];
  v6 = [v3 build];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    environment = self->_environment;
    v6 = [v4 environment];
    v7 = [(BLSHBacklightSceneHostEnvironment *)environment isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end