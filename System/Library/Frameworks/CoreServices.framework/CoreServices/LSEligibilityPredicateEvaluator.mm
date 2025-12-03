@interface LSEligibilityPredicateEvaluator
+ (id)sharedCachingEligibilityPredicateEvaluator;
- (LSEligibilityPredicateEvaluator)initWithResolver:(id)resolver;
- (id)evaluatePredicate:(id)predicate error:(id *)error;
@end

@implementation LSEligibilityPredicateEvaluator

- (LSEligibilityPredicateEvaluator)initWithResolver:(id)resolver
{
  resolverCopy = resolver;
  v9.receiver = self;
  v9.super_class = LSEligibilityPredicateEvaluator;
  v6 = [(LSEligibilityPredicateEvaluator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resolver, resolver);
  }

  return v7;
}

- (id)evaluatePredicate:(id)predicate error:(id *)error
{
  v4 = [predicate evaluateWithDomainEligibilityResolver:self->_resolver error:error];

  return v4;
}

+ (id)sharedCachingEligibilityPredicateEvaluator
{
  if (+[LSEligibilityPredicateEvaluator(LSInternalCachingEvaluator) sharedCachingEligibilityPredicateEvaluator]::onceToken != -1)
  {
    +[LSEligibilityPredicateEvaluator(LSInternalCachingEvaluator) sharedCachingEligibilityPredicateEvaluator];
  }

  v3 = +[LSEligibilityPredicateEvaluator(LSInternalCachingEvaluator) sharedCachingEligibilityPredicateEvaluator]::result;

  return v3;
}

void __105__LSEligibilityPredicateEvaluator_LSInternalCachingEvaluator__sharedCachingEligibilityPredicateEvaluator__block_invoke()
{
  v2 = objc_alloc_init(LSEligibilityCacheEligibilityResolver);
  v0 = [[LSEligibilityPredicateEvaluator alloc] initWithResolver:v2];
  v1 = +[LSEligibilityPredicateEvaluator(LSInternalCachingEvaluator) sharedCachingEligibilityPredicateEvaluator]::result;
  +[LSEligibilityPredicateEvaluator(LSInternalCachingEvaluator) sharedCachingEligibilityPredicateEvaluator]::result = v0;
}

@end