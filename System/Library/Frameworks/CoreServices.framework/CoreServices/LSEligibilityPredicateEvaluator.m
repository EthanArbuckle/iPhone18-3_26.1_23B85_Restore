@interface LSEligibilityPredicateEvaluator
+ (id)sharedCachingEligibilityPredicateEvaluator;
- (LSEligibilityPredicateEvaluator)initWithResolver:(id)a3;
- (id)evaluatePredicate:(id)a3 error:(id *)a4;
@end

@implementation LSEligibilityPredicateEvaluator

- (LSEligibilityPredicateEvaluator)initWithResolver:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LSEligibilityPredicateEvaluator;
  v6 = [(LSEligibilityPredicateEvaluator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resolver, a3);
  }

  return v7;
}

- (id)evaluatePredicate:(id)a3 error:(id *)a4
{
  v4 = [a3 evaluateWithDomainEligibilityResolver:self->_resolver error:a4];

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