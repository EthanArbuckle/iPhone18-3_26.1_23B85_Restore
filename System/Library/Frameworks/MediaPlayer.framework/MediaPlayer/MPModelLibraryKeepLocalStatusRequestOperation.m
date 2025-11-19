@interface MPModelLibraryKeepLocalStatusRequestOperation
- (id).cxx_construct;
- (shared_ptr<mlcore::EntityQuery>)downloadableItemsQuery;
- (void)execute;
- (void)setDownloadableItemsQuery:(shared_ptr<mlcore::EntityQuery>)a3;
@end

@implementation MPModelLibraryKeepLocalStatusRequestOperation

- (id).cxx_construct
{
  *(self + 40) = 0;
  *(self + 41) = 0;
  return self;
}

- (void)setDownloadableItemsQuery:(shared_ptr<mlcore::EntityQuery>)a3
{
  p_downloadableItemsQuery = &self->_downloadableItemsQuery;
  v5 = *a3.__ptr_;
  v4 = *(a3.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_downloadableItemsQuery.__cntrl_;
  p_downloadableItemsQuery->__ptr_ = v5;
  p_downloadableItemsQuery->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<mlcore::EntityQuery>)downloadableItemsQuery
{
  cntrl = self->_downloadableItemsQuery.__cntrl_;
  *v2 = self->_downloadableItemsQuery.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)execute
{
  libraryView = self->_libraryView;
  if (!libraryView)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MPModelLibraryKeepLocalStatusRequestOperation.mm" lineNumber:28 description:@"Library view must not be nil."];

    libraryView = self->_libraryView;
  }

  v5 = [(MPMediaLibraryView *)libraryView library];
  v6 = [v5 uniqueIdentifier];

  ptr = self->_downloadableItemsQuery.__ptr_;
  if (ptr)
  {
    mlcore::Query::predicate(&v16, ptr);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke;
    aBlock[3] = &unk_1F1496948;
    v28 = v16;
    v29 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock[4] = self;
    v27 = v6;
    v8 = _Block_copy(aBlock);
    redownloadableItemCount = self->_redownloadableItemCount;
    if (!redownloadableItemCount)
    {
      v25 = MEMORY[0x1A58E1100]();
      v24 = 0;
      std::allocate_shared[abi:ne200100]<mlcore::AggregateFunctionQuery,std::allocator<mlcore::AggregateFunctionQuery>,mlcore::EntityClass *,mlcore::AggregateFunctionQuery::AggregateFunction,decltype(nullptr),std::shared_ptr<mlcore::Predicate> &,0>();
    }

    v8[2](v8, [(NSNumber *)redownloadableItemCount longValue]);

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else if (self->_downloadablePlaylistItemEntityQueryBlock)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_2_13;
    v22[3] = &unk_1E767A9E8;
    v22[4] = self;
    v23 = v6;
    v10 = _Block_copy(v22);
    v11 = self->_redownloadableItemCount;
    if (v11)
    {
      v10[2](v10, [(NSNumber *)v11 longValue]);
    }

    else
    {
      (*(self->_downloadablePlaylistItemEntityQueryBlock + 2))(&v16);
      v14 = self->_libraryView;
      v20 = v16;
      v21 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_9;
      v18[3] = &unk_1E767A950;
      v19 = v10;
      [(MPMediaLibraryView *)v14 performCoreQuery:&v20 withCompletion:v18];
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MPModelLibraryKeepLocalStatusRequestOperation.mm" lineNumber:290 description:@"Invalid creation options for MPModelLibraryKeepLocalStatusRequestOperation. downloadableItemsQuery or downloadablePlaylistItemEntityQueryBlock  must be specified"];

    responseHandler = self->_responseHandler;
    if (responseHandler)
    {
      (*(responseHandler + 2))(responseHandler, 0, 0);
    }

    [(MPAsyncOperation *)self finishWithError:0];
  }
}

void __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (a2 <= 0x96)
    {
      MEMORY[0x1A58E1100]();
      operator new();
    }

    v5 = MEMORY[0x1A58E1100]();
    v6 = *(a1 + 56);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    mlcore::ItemPropertyKeepLocalStatus(v5);
    std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<int>,std::allocator<mlcore::ComparisonPredicate<int>>,mlcore::ModelProperty<int> *&,mlcore::ComparisonOperator &,int const&,mlcore::ComparisonOptions &,0>();
  }

  v7 = objc_alloc_init(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration);
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v7 setEnableState:*(*(a1 + 32) + 280)];
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v7 setIdentifyingModelObject:*(*(a1 + 32) + 288)];
  v3 = *(a1 + 32);
  v4 = v3[39];
  if (v4)
  {
    (*(v4 + 16))(v3[39], v7, 0);
    v3 = *(a1 + 32);
  }

  [v3 finish];
}

void __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mlcore::AggregateFunctionQueryResult::value(v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_2_13(uint64_t a1, unint64_t a2)
{
  v32[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a2 <= 0x96)
    {
      v3 = (*(*(*(a1 + 32) + 272) + 16))(v25);
      v4 = mlcore::PlaylistItemPropertyItemPersistentID(v3);
      v5 = mlcore::ItemPropertyPersistentID(v4);
      Property = MPMediaLibraryGetProperty(v4, v5);
      v7 = mlcore::PlaylistItemPropertyItemPersistentID(Property);
      v8 = mlcore::ItemPropertyStoreID(v7);
      v9 = MPMediaLibraryGetProperty(v7, v8);
      v10 = mlcore::PlaylistItemPropertyItemPersistentID(v9);
      v11 = mlcore::ItemPropertySubscriptionStoreItemID(v10);
      v12 = MPMediaLibraryGetProperty(v10, v11);
      v13 = mlcore::PlaylistItemPropertyItemPersistentID(v12);
      HasNonPurgeableAsset = mlcore::ItemPropertyHasNonPurgeableAsset(v13);
      v15 = MPMediaLibraryGetProperty(v13, HasNonPurgeableAsset);
      v16 = mlcore::PlaylistItemPropertyItemPersistentID(v15);
      v17 = mlcore::ItemPropertyKeepLocalStatus(v16);
      v18 = MPMediaLibraryGetProperty(v16, v17);
      v31[0] = Property;
      v31[1] = v9;
      v31[2] = v12;
      v31[3] = v15;
      v31[4] = v18;
      memset(v28, 0, sizeof(v28));
      std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase * const*,mlcore::ModelPropertyBase * const*>(v28, v31, v32, 5uLL);
    }

    (*(*(*(a1 + 32) + 272) + 16))(&v27);
    v21 = mlcore::Query::predicate(&v26, v27);
    memset(v25, 0, sizeof(v25));
    v22 = mlcore::PlaylistItemPropertyItemPersistentID(v21);
    v23 = mlcore::ItemPropertyKeepLocalStatus(v22);
    MPMediaLibraryGetProperty(v22, v23);
    v29 = 0;
    LODWORD(v30) = 2;
    std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<int>,std::allocator<mlcore::ComparisonPredicate<int>>,mlcore::ModelProperty<int> *&,mlcore::ComparisonOperator &,int const&,mlcore::ComparisonOptions &,0>();
  }

  v24 = objc_alloc_init(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration);
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v24 setEnableState:*(*(a1 + 32) + 280)];
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v24 setIdentifyingModelObject:*(*(a1 + 32) + 288)];
  v19 = *(a1 + 32);
  v20 = v19[39];
  if (v20)
  {
    (*(v20 + 16))(v19[39], v24, 0);
    v19 = *(a1 + 32);
  }

  [v19 finish];
}

void __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mlcore::EntityQueryResult::entityCount(v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_3_14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *a2;
  if (*a2)
  {
    v7 = *(a2 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = v7;
    v31 = v5;
    mlcore::EntityQueryResult::allEntities(&v40, v6);
    v9 = v40;
    v8 = v41;
    if (v40 != v41)
    {
      v10 = 0;
      v11 = 0;
      v32 = v35;
      v33 = 0;
      while (1)
      {
        v12 = *v9;
        v13 = *(v9 + 8);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = mlcore::Entity::propertyCache(v12);
        v15 = MPMediaLibraryPropertyCacheValueForProperty(*(a1 + 48), v14);
        v16 = [v15 BOOLValue];

        if (!v16)
        {
          break;
        }

        ++v33;
        ++v11;
        if (v13)
        {
          goto LABEL_10;
        }

LABEL_11:
        v9 += 16;
        if (v9 == v8)
        {
          goto LABEL_23;
        }
      }

      v17 = MPMediaLibraryPropertyCacheValueForProperty(*(a1 + 56), v14);
      v18 = [v17 intValue];

      if (v18 > 0)
      {
        ++v11;
      }

      v19 = [MPIdentifierSet alloc];
      v20 = [@"LibraryKeepLocal-" stringByAppendingString:*(a1 + 32)];
      v21 = +[MPModelPlaylistEntryKind identityKind];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v35[0] = __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_4_20;
      v35[1] = &unk_1E767A998;
      v22 = *(a1 + 32);
      v23 = *(a1 + 64);
      v36 = v22;
      v37 = v23;
      v38 = v14;
      v39 = *(a1 + 72);
      v24 = [(MPIdentifierSet *)v19 initWithSource:v20 modelKind:v21 block:v34];

      if (v24)
      {
        if (!v10)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v10 addObject:{v24, v30, v31, v32}];
      }

      if (!v13)
      {
        goto LABEL_11;
      }

LABEL_10:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      goto LABEL_11;
    }

    v11 = 0;
    v33 = 0;
    v10 = 0;
LABEL_23:
    v42 = &v40;
    std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v42);
    v25 = v30;
    v5 = v31;
    v26 = v33;
  }

  else
  {
    v25 = 0;
    v11 = 0;
    v26 = 0;
    v10 = 0;
  }

  v27 = objc_alloc_init(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration);
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v27 setEnableState:*(*(a1 + 40) + 280)];
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v27 setIdentifyingModelObject:*(*(a1 + 40) + 288)];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v27 setRedownloadableItemCount:*(a1 + 88)];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v27 setDownloadEnabledItemCount:v11];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v27 setNonPurgeableItemCount:v26];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v27 setPendingItemIdentifiers:v10];
  v28 = *(a1 + 40);
  v29 = v28[39];
  if (v29)
  {
    (*(v29 + 16))(v28[39], v27, 0);
    v28 = *(a1 + 40);
  }

  [v28 finish];

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *a2;
  if (*a2)
  {
    v7 = *(a2 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = mlcore::EntityQueryResult::entityCount(v6);
  }

  memset(v10, 0, sizeof(v10));
  if (*(a1 + 40))
  {
    v6 = std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](v10, (a1 + 40));
  }

  v8 = mlcore::PlaylistItemPropertyItemPersistentID(v6);
  HasNonPurgeableAsset = mlcore::ItemPropertyHasNonPurgeableAsset(v8);
  Property = MPMediaLibraryGetProperty(v8, HasNonPurgeableAsset);
  v11 = 0;
  std::allocate_shared[abi:ne200100]<mlcore::UnaryPredicate<int>,std::allocator<mlcore::UnaryPredicate<int>>,mlcore::ModelProperty<int> *&,mlcore::UnaryOperator,0>();
}

void __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_8(void *a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = mlcore::EntityQueryResult::entityCount(v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = objc_alloc_init(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration);
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v8 setEnableState:*(a1[4] + 280)];
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v8 setIdentifyingModelObject:*(a1[4] + 288)];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v8 setRedownloadableItemCount:a1[5]];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v8 setNonPurgeableItemCount:v7];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v8 setDownloadEnabledItemCount:a1[6]];
  v9 = a1[4];
  v10 = v9[39];
  if (v10)
  {
    (*(v10 + 16))(v9[39], v8, 0);
    v9 = a1[4];
  }

  [v9 finish];

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_4_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_5;
  v8[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v9 = *(a1 + 40);
  [v3 setLibraryIdentifiersWithDatabaseID:v4 block:v8];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_6;
  v5[3] = &__block_descriptor_56_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v6 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
  v7 = *(a1 + 64);
  [v3 setUniversalStoreIdentifiersWithBlock:v5];
}

void __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = MPMediaLibraryPropertyCacheValueForProperty(*(a1 + 32), *(a1 + 40));
  [v4 setPersistentID:{objc_msgSend(v3, "longLongValue")}];
}

void __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MPMediaLibraryPropertyCacheValueForProperty(*(a1 + 32), *(a1 + 40));
  [v5 setAdamID:{objc_msgSend(v3, "longLongValue")}];

  v4 = MPMediaLibraryPropertyCacheValueForProperty(*(a1 + 48), *(a1 + 40));
  [v5 setSubscriptionAdamID:{objc_msgSend(v4, "longLongValue")}];
}

void __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v7 = objc_alloc_init(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration);
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v7 setEnableState:*(*(a1 + 40) + 280)];
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v7 setIdentifyingModelObject:*(*(a1 + 40) + 288)];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v7 setRedownloadableItemCount:*(a1 + 48)];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v7 setDownloadEnabledItemCount:0];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v7 setNonPurgeableItemCount:0];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v7 setPendingItemIdentifiers:0];
  v8 = *(a1 + 40);
  v9 = v8[39];
  if (v9)
  {
    (*(v9 + 16))(v8[39], v7, 0);
    v8 = *(a1 + 40);
  }

  [v8 finish];
}

void __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *a2;
  if (*a2)
  {
    v7 = *(a2 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    mlcore::AggregateFunctionQueryResult::value(v6);
  }

  v8 = *(a1 + 48);
  v10[0] = *(a1 + 40);
  v10[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v9, 0, sizeof(v9));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate> const*,std::shared_ptr<mlcore::Predicate> const*>(v9, v10, v11, 1uLL);
}

void __56__MPModelLibraryKeepLocalStatusRequestOperation_execute__block_invoke_4(void *a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = mlcore::AggregateFunctionQueryResult::value(v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = objc_alloc_init(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration);
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v8 setEnableState:*(a1[4] + 280)];
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v8 setIdentifyingModelObject:*(a1[4] + 288)];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v8 setRedownloadableItemCount:a1[5]];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v8 setNonPurgeableItemCount:v7];
  [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v8 setDownloadEnabledItemCount:a1[6]];
  v9 = a1[4];
  v10 = v9[39];
  if (v10)
  {
    (*(v10 + 16))(v9[39], v8, 0);
    v9 = a1[4];
  }

  [v9 finish];

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

@end