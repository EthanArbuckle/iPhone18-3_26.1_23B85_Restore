@interface LSFeatureFlagPredicateEvaluator
+ (id)defaultEvaluator;
- (LSFeatureFlagPredicateEvaluator)initWithResolver:(id)resolver;
@end

@implementation LSFeatureFlagPredicateEvaluator

- (LSFeatureFlagPredicateEvaluator)initWithResolver:(id)resolver
{
  resolverCopy = resolver;
  v9.receiver = self;
  v9.super_class = LSFeatureFlagPredicateEvaluator;
  v6 = [(LSFeatureFlagPredicateEvaluator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resolver, resolver);
  }

  return v7;
}

+ (id)defaultEvaluator
{
  if (+[LSFeatureFlagPredicateEvaluator defaultEvaluator]::onceToken != -1)
  {
    +[LSFeatureFlagPredicateEvaluator defaultEvaluator];
  }

  v3 = +[LSFeatureFlagPredicateEvaluator defaultEvaluator]::evaluator;

  return v3;
}

void __51__LSFeatureFlagPredicateEvaluator_defaultEvaluator__block_invoke()
{
  v0 = [LSFeatureFlagPredicateEvaluator alloc];
  v3 = +[_LSDefaultFeatureFlagResolver sharedInstance];
  v1 = [(LSFeatureFlagPredicateEvaluator *)v0 initWithResolver:?];
  v2 = +[LSFeatureFlagPredicateEvaluator defaultEvaluator]::evaluator;
  +[LSFeatureFlagPredicateEvaluator defaultEvaluator]::evaluator = v1;
}

@end