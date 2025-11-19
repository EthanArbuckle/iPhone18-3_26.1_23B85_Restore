@interface CNContactFetchRequestExecutor
- (id)initWithDataMapper:(id *)a1;
- (void)observableForFetchRequest:(void *)a1;
@end

@implementation CNContactFetchRequestExecutor

- (id)initWithDataMapper:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = CNContactFetchRequestExecutor;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

- (void)observableForFetchRequest:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [[CNContactFetchRequestExecutorPredicateEvaluator alloc] initWithFetchRequestPrototype:v3 dataMapper:v2[1]];
    v5 = [v3 predicate];

    [(CNContactFetchRequestExecutorPredicateEvaluator *)v4 evaluatePredicate:v5];
    v2 = [(CNContactFetchRequestExecutorPredicateEvaluator *)v4 observable];
  }

  return v2;
}

@end