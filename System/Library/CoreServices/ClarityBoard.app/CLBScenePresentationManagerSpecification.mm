@interface CLBScenePresentationManagerSpecification
+ (id)specificationWithSessionRole:(id)a3;
- (CLBScenePresentationManagerSpecification)initWithSessionRole:(id)a3;
@end

@implementation CLBScenePresentationManagerSpecification

+ (id)specificationWithSessionRole:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSessionRole:v4];

  return v5;
}

- (CLBScenePresentationManagerSpecification)initWithSessionRole:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CLBScenePresentationManagerSpecification;
  v6 = [(CLBScenePresentationManagerSpecification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionRole, a3);
  }

  return v7;
}

@end