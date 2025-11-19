@interface CNABPredicateObservable
@end

@implementation CNABPredicateObservable

id *__98___CNABPredicateObservable_observableWithPredicates_sortOrdering_options_addressBook_environment___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [(_CNABPredicateObservable *)[v3 alloc] initWithPredicate:v4 sortOrdering:*(a1 + 64) options:*(a1 + 48) addressBook:*(a1 + 56) environment:*(a1 + 32)];

  return v5;
}

void __38___CNABPredicateObservable_subscribe___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isCanceled] & 1) == 0)
  {
    __38___CNABPredicateObservable_subscribe___block_invoke_cold_1(a1, v3);
  }
}

uint64_t __60___CNABPredicateObservable_schedulerForIdentifier_provider___block_invoke()
{
  v0 = [MEMORY[0x1E6996660] atomicCache];
  v1 = schedulerForIdentifier_provider__cn_once_object_0;
  schedulerForIdentifier_provider__cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __38___CNABPredicateObservable_subscribe___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(v7 + 24);
    v9 = *(v7 + 40) & 1;
    v10 = *(v7 + 16);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = 0;
  }

  [v4 searchPeopleWithPredicate:v6 sortOrder:v8 ranked:v9 inAddressBook:v10 withDelegate:?];
  result = [a2 isCanceled];
  if ((result & 1) == 0)
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = v12[4];
    }

    else
    {
      v13 = 0;
    }

    return [v12 predicateShouldContinue:v13 afterFindingRecord:0 moreComing:0];
  }

  return result;
}

@end