@interface MPStoreLibraryPersonalizationAggregateLibraryAddedOperation
@end

@implementation MPStoreLibraryPersonalizationAggregateLibraryAddedOperation

void __71___MPStoreLibraryPersonalizationAggregateLibraryAddedOperation_execute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = mlcore::AggregateFunctionQueryResult::value(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  v8 = v7[35];
  if (v8)
  {
    (*(v8 + 16))(v8, v5 == ((v7[37] - v7[36]) >> 3));
    v7 = *(a1 + 32);
  }

  [v7 finish];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

@end