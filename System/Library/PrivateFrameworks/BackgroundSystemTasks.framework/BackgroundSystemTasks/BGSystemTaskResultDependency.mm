@interface BGSystemTaskResultDependency
- (BGSystemTaskResultDependency)initWithIdentifier:(id)identifier batchSize:(unint64_t)size;
- (id)asDictionary;
@end

@implementation BGSystemTaskResultDependency

- (BGSystemTaskResultDependency)initWithIdentifier:(id)identifier batchSize:(unint64_t)size
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = BGSystemTaskResultDependency;
  v8 = [(BGSystemTaskResultDependency *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_batchSize = size;
  }

  return v9;
}

- (id)asDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"DependencyTypeResult" forKeyedSubscript:@"DependencyType"];
  [dictionary setObject:self->_identifier forKeyedSubscript:@"DependencyIdentifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  [dictionary setObject:v4 forKeyedSubscript:@"ResultDependencyBatchSize"];

  return dictionary;
}

@end