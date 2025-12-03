@interface MPModelLibraryHasPurchasesRequestOperation
- (void)execute;
@end

@implementation MPModelLibraryHasPurchasesRequestOperation

- (void)execute
{
  request = [(MPModelLibraryHasPurchasesRequestOperation *)self request];
  modelObject = [request modelObject];
  v5 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class()];

  if (v5)
  {
    v6 = [MPMediaLibraryView alloc];
    request2 = [(MPModelLibraryHasPurchasesRequestOperation *)self request];
    mediaLibrary = [request2 mediaLibrary];
    v9 = [(MPMediaLibraryView *)v6 initWithLibrary:mediaLibrary filteringOptions:8];

    entityClass = [v5 entityClass];
    (*(*entityClass + 120))(entityClass);
    if (v9)
    {
      [(MPMediaLibraryView *)v9 mlCoreView];
    }

    else
    {
      v12 = 0;
    }

    [v5 entityClass];
    mlcore::LibraryView::filterPredicateForEntityClass();
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    [(MPModelLibraryHasPurchasesRequestOperation *)self request];
    [objc_claimAutoreleasedReturnValue() modelObject];
    [objc_claimAutoreleasedReturnValue() identifiers];
    [objc_claimAutoreleasedReturnValue() library];
    [objc_claimAutoreleasedReturnValue() persistentID];
    std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator &,long long const&,mlcore::ComparisonOptions &,0>();
  }

  responseHandler = [(MPModelLibraryHasPurchasesRequestOperation *)self responseHandler];
  responseHandler[2](responseHandler, 0, 0);
}

void __53__MPModelLibraryHasPurchasesRequestOperation_execute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = mlcore::EntityQueryResult::entityCount(v5);
    v8 = [*(a1 + 32) responseHandler];
    (v8)[2](v8, v7 != 0, 0);

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v9 = [*(a1 + 32) responseHandler];
    (v9)[2](v9, 0, v10);
  }
}

@end