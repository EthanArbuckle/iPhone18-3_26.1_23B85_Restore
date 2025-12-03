@interface MPModelLibrarySearchRequestOperation
- (MPModelLibrarySearchRequestOperation)init;
- (id).cxx_construct;
- (void)cancel;
- (void)execute;
@end

@implementation MPModelLibrarySearchRequestOperation

- (id).cxx_construct
{
  *(self + 35) = 0;
  *(self + 36) = 0;
  return self;
}

- (void)cancel
{
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MPModelLibrarySearchRequestOperation_cancel__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(accessSerialQueue, block);
  v4.receiver = self;
  v4.super_class = MPModelLibrarySearchRequestOperation;
  [(MPAsyncOperation *)&v4 cancel];
}

mlcore::LocalizedSearchQuery *__46__MPModelLibrarySearchRequestOperation_cancel__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 280);
  if (result)
  {
    return mlcore::LocalizedSearchQuery::cancel(result);
  }

  return result;
}

- (void)execute
{
  v17 = *MEMORY[0x1E69E9840];
  mediaLibrary = [(MPModelLibraryRequest *)self->_request mediaLibrary];
  v4 = [MPMediaLibraryView alloc];
  mediaLibrary2 = [(MPModelLibraryRequest *)self->_request mediaLibrary];
  v14 = [(MPMediaLibraryView *)v4 initWithLibrary:mediaLibrary2 filteringOptions:[(MPModelLibraryRequest *)self->_request filteringOptions]];

  searchString = [(MPModelLibrarySearchRequest *)self->_request searchString];
  [(MPModelLibrarySearchRequest *)self->_request maximumResultsPerScope];
  scopes = [(MPModelLibrarySearchRequest *)self->_request scopes];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (searchString && [searchString length] && objc_msgSend(scopes, "count"))
  {
    if ([searchString UTF8String])
    {
      operator new();
    }

    v12 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      buf = 138543362;
      *buf_4 = searchString;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_FAULT, "MPModelLibrarySearchRequestOperation: NULL utf8 from string: '%{public}@'", &buf, 0xCu);
    }

    [(MPAsyncOperation *)self finishWithError:0];
  }

  else
  {
    if (![(MPAsyncOperation *)self isCancelled])
    {
      if (searchString)
      {
        if ([searchString length])
        {
          v9 = [scopes count];
          if (v9)
          {
            v10 = -9001;
          }

          else
          {
            v10 = -9004;
          }

          if (v9)
          {
            v11 = @"Cannot run library search request due to unknown error.";
          }

          else
          {
            v11 = @"Cannot run library search request with no requested scopes.";
          }
        }

        else
        {
          v11 = @"Cannot run library search request with an empty search string.";
          v10 = -9003;
        }
      }

      else
      {
        v11 = @"Cannot run library search request with a nil search string.";
        v10 = -9002;
      }

      v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibrarySearchRequestErrorDomain" code:v10 debugDescription:v11];
      (*(self->_responseHandler + 2))();
    }

    [(MPAsyncOperation *)self finish];
  }
}

void __47__MPModelLibrarySearchRequestOperation_execute__block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = (a1[4] + 280);
  v3 = a1[6];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = v2[1];
  *v2 = v1;
  v2[1] = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void __47__MPModelLibrarySearchRequestOperation_execute__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v8 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3321888768;
    v15[2] = __47__MPModelLibrarySearchRequestOperation_execute__block_invoke_2;
    v15[3] = &unk_1F1497918;
    memset(v19, 0, 24);
    std::vector<std::shared_ptr<mlcore::LocalizedSearchScope>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::LocalizedSearchScope>*,std::shared_ptr<mlcore::LocalizedSearchScope>*>(v19, *(a1 + 56), *(a1 + 64), (*(a1 + 64) - *(a1 + 56)) >> 4);
    v9 = a2[1];
    v19[3] = *a2;
    v20 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v16 = v10;
    v17 = v11;
    v12 = v7;
    v18 = v12;
    [v8 enumerateObjectsUsingBlock:v15];
    v13 = [[MPModelLibrarySearchSectionedCollectionDataSource alloc] initWithEntitiesQueryResultContainers:v12];
    [(MPModelLibrarySearchSectionedCollectionDataSource *)v13 setRequest:*(*(a1 + 48) + 296)];
    v14 = [[MPLazySectionedCollection alloc] initWithDataSource:v13];
    v6 = [[MPModelLibrarySearchResponse alloc] initWithRequest:*(*(a1 + 48) + 296)];
    [(MPModelResponse *)v6 setResults:v14];

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    v21 = v19;
    std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v21);
  }

  (*(*(*(a1 + 48) + 304) + 16))();
  [*(a1 + 48) finishWithError:v5];
}

void __47__MPModelLibrarySearchRequestOperation_execute__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 56);
  if (a3 >= (*(a1 + 64) - v6) >> 4)
  {
    std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = (v6 + 16 * a3);
  v8 = *v7;
  v9 = v7[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v21 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v21 = 0;
  }

  v20 = v8;
  mlcore::LocalizedSearchQueryResult::resultForSearchScope();
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v22 && mlcore::EntityQueryResult::entityCount(v22))
  {
    v10 = objc_alloc_init(MPMediaLibraryEntityTranslationContext);
    v11 = [v5 itemKind];
    [(MPMediaLibraryEntityTranslationContext *)v10 setModelKind:v11];

    [(MPMediaLibraryEntityTranslationContext *)v10 setMediaLibrary:*(a1 + 32)];
    v12 = [v5 itemKind];
    -[MPMediaLibraryEntityTranslationContext setMultiQuery:](v10, "setMultiQuery:", [v12 modelClass] == objc_opt_class());

    v13 = [*(a1 + 40) userIdentity];
    v14 = [v13 accountDSID];
    [(MPMediaLibraryEntityTranslationContext *)v10 setPersonID:v14];

    v15 = *(a1 + 48);
    v16 = [MPModelLibrarySearchEntityResultContainer alloc];
    v18 = v22;
    v19 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = [(MPModelLibrarySearchEntityResultContainer *)v16 initWithEntityQueryResult:&v18 forScope:v5 entityTranslationContext:v10];
    [v15 addObject:{v17, v18}];

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

- (MPModelLibrarySearchRequestOperation)init
{
  v6.receiver = self;
  v6.super_class = MPModelLibrarySearchRequestOperation;
  v2 = [(MPAsyncOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlayer.MPModelLibrarySearchRequestOperation.accessSerialQueue", 0);
    accessSerialQueue = v2->_accessSerialQueue;
    v2->_accessSerialQueue = v3;
  }

  return v2;
}

@end