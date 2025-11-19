@interface MPModelPlaylistEntriesShareEligibilityRequestOperation
- (void)execute;
@end

@implementation MPModelPlaylistEntriesShareEligibilityRequestOperation

- (void)execute
{
  v3 = objc_alloc_init(MPModelLibraryRequest);
  v4 = [(MPAsyncOperation *)self userIdentity];
  v5 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v4];
  [(MPModelLibraryRequest *)v3 setMediaLibrary:v5];

  v6 = [MPMediaLibraryView alloc];
  v7 = [(MPModelLibraryRequest *)v3 mediaLibrary];
  [(MPMediaLibraryView *)v6 initWithLibrary:v7 filteringOptions:[(MPModelLibraryRequest *)v3 filteringOptions]];

  v9 = mlcore::PlaylistItemPropertyItemPersistentID(v8);
  v10 = mlcore::ItemPropertySubscriptionStoreItemID(v9);
  Property = MPMediaLibraryGetProperty(v9, v10);
  v11 = 1;
  std::allocate_shared[abi:ne200100]<mlcore::UnaryPredicate<long long>,std::allocator<mlcore::UnaryPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::UnaryOperator,0>();
}

uint64_t __65__MPModelPlaylistEntriesShareEligibilityRequestOperation_execute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  if (v12 || (v9 = *a2) == 0)
  {
    v6 = 0;
  }

  else
  {
    v10 = *(a2 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = mlcore::AggregateFunctionQueryResult::value(v9) != 0;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  v7 = *(*(a1 + 32) + 280);
  v8 = v12;
  if (v7)
  {
    v7 = (*(v7 + 16))(v7, v6, v12);
    v8 = v12;
  }

  return MEMORY[0x1EEE66BE0](v7, v5, v8);
}

@end