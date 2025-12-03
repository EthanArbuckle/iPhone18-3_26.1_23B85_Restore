@interface BLSHPresentationEntry
- (BLSHEnvironmentDateSpecifier)currentSpecifier;
- (BLSHPresentationEntry)initWithEnvironment:(id)environment userObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (id)debugDescription;
- (id)description;
@end

@implementation BLSHPresentationEntry

- (BLSHEnvironmentDateSpecifier)currentSpecifier
{
  presentationDate = [(BLSHBacklightSceneHostEnvironment *)self->_environment presentationDate];
  if (presentationDate)
  {
    visualState = [(BLSHBacklightSceneHostEnvironment *)self->_environment visualState];
    v5 = +[BLSHEnvironmentDateSpecifier specifierWithPresentationDate:fidelity:environment:](BLSHEnvironmentDateSpecifier, "specifierWithPresentationDate:fidelity:environment:", presentationDate, [visualState updateFidelity], self->_environment);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BLSHPresentationEntry)initWithEnvironment:(id)environment userObject:(id)object
{
  environmentCopy = environment;
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = BLSHPresentationEntry;
  v9 = [(BLSHPresentationEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, environment);
    objc_storeStrong(&v10->_userObject, object);
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = MEMORY[0x277CCACA8];
  environment = self->_environment;
  identifier = [(BLSHBacklightSceneHostEnvironment *)environment identifier];
  v7 = [v4 stringWithFormat:@"<%p:%@>", environment, identifier];
  [v3 appendString:v7 withName:@"environment"];

  if (!self->_userObject)
  {
    [v3 appendString:@"<nil>" withName:@"userObject"];
  }

  build = [v3 build];

  return build;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_environment withName:@"environment"];
  v5 = [v3 appendObject:self->_userObject withName:@"userObject"];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    environment = self->_environment;
    environment = [equalCopy environment];
    v7 = [(BLSHBacklightSceneHostEnvironment *)environment isEqual:environment];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end