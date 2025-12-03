@interface CNContactFetchRequestExecutor
- (id)initWithDataMapper:(id *)mapper;
- (void)observableForFetchRequest:(void *)request;
@end

@implementation CNContactFetchRequestExecutor

- (id)initWithDataMapper:(id *)mapper
{
  v4 = a2;
  if (mapper)
  {
    v7.receiver = mapper;
    v7.super_class = CNContactFetchRequestExecutor;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    mapper = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return mapper;
}

- (void)observableForFetchRequest:(void *)request
{
  requestCopy = request;
  if (request)
  {
    v3 = a2;
    v4 = [[CNContactFetchRequestExecutorPredicateEvaluator alloc] initWithFetchRequestPrototype:v3 dataMapper:requestCopy[1]];
    predicate = [v3 predicate];

    [(CNContactFetchRequestExecutorPredicateEvaluator *)v4 evaluatePredicate:predicate];
    requestCopy = [(CNContactFetchRequestExecutorPredicateEvaluator *)v4 observable];
  }

  return requestCopy;
}

@end