@interface BGSystemTaskCompletionDependency
- (BGSystemTaskCompletionDependency)initWithIdentifier:(id)identifier;
- (id)asDictionary;
@end

@implementation BGSystemTaskCompletionDependency

- (BGSystemTaskCompletionDependency)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = BGSystemTaskCompletionDependency;
  v6 = [(BGSystemTaskCompletionDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (id)asDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"DependencyTypeCompletion" forKeyedSubscript:@"DependencyType"];
  [dictionary setObject:self->_identifier forKeyedSubscript:@"DependencyIdentifier"];

  return dictionary;
}

@end