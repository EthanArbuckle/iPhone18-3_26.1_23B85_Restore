@interface BGSystemTaskResultDependency
- (BGSystemTaskResultDependency)initWithIdentifier:(id)a3 batchSize:(unint64_t)a4;
- (id)asDictionary;
@end

@implementation BGSystemTaskResultDependency

- (BGSystemTaskResultDependency)initWithIdentifier:(id)a3 batchSize:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BGSystemTaskResultDependency;
  v8 = [(BGSystemTaskResultDependency *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_batchSize = a4;
  }

  return v9;
}

- (id)asDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:@"DependencyTypeResult" forKeyedSubscript:@"DependencyType"];
  [v3 setObject:self->_identifier forKeyedSubscript:@"DependencyIdentifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  [v3 setObject:v4 forKeyedSubscript:@"ResultDependencyBatchSize"];

  return v3;
}

@end