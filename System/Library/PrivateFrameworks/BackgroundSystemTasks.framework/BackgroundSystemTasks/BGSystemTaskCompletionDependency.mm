@interface BGSystemTaskCompletionDependency
- (BGSystemTaskCompletionDependency)initWithIdentifier:(id)a3;
- (id)asDictionary;
@end

@implementation BGSystemTaskCompletionDependency

- (BGSystemTaskCompletionDependency)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BGSystemTaskCompletionDependency;
  v6 = [(BGSystemTaskCompletionDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (id)asDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:@"DependencyTypeCompletion" forKeyedSubscript:@"DependencyType"];
  [v3 setObject:self->_identifier forKeyedSubscript:@"DependencyIdentifier"];

  return v3;
}

@end