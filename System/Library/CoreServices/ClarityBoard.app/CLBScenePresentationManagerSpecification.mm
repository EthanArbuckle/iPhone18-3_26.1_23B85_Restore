@interface CLBScenePresentationManagerSpecification
+ (id)specificationWithSessionRole:(id)role;
- (CLBScenePresentationManagerSpecification)initWithSessionRole:(id)role;
@end

@implementation CLBScenePresentationManagerSpecification

+ (id)specificationWithSessionRole:(id)role
{
  roleCopy = role;
  v5 = [[self alloc] initWithSessionRole:roleCopy];

  return v5;
}

- (CLBScenePresentationManagerSpecification)initWithSessionRole:(id)role
{
  roleCopy = role;
  v9.receiver = self;
  v9.super_class = CLBScenePresentationManagerSpecification;
  v6 = [(CLBScenePresentationManagerSpecification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionRole, role);
  }

  return v7;
}

@end