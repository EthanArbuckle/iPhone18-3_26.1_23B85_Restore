@interface MPMediaLibraryView
- (BOOL)hasEntitiesForModelKind:(id)a3;
- (MPMediaLibraryView)initWithLibrary:(id)a3 filteringOptions:(unint64_t)a4;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (shared_ptr<mlcore::DeviceLibraryView>)mlCoreView;
- (shared_ptr<mlcore::QueryResult>)_performCoreQuery:(shared_ptr<mlcore:(id *)a4 :Query>)a3 error:;
- (shared_ptr<mlcore::QueryResult>)resultsForCoreQuery:(shared_ptr<mlcore:(id *)a4 :Query>)a3 error:;
- (uint64_t)performCoreQuery:withCompletion:;
- (uint64_t)performCoreSearchQuery:withCompletion:;
- (void)performCoreQuery:(shared_ptr<mlcore:(id)a4 :Query>)a3 withCompletion:;
- (void)performCoreQuery:withCompletion:;
- (void)performCoreSearchQuery:(shared_ptr<mlcore:(id)a4 :LocalizedSearchQuery>)a3 withCompletion:;
- (void)performCoreSearchQuery:withCompletion:;
@end

@implementation MPMediaLibraryView

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (shared_ptr<mlcore::QueryResult>)_performCoreQuery:(shared_ptr<mlcore:(id *)a4 :Query>)a3 error:
{
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = v4;
  v9 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x4012000000;
  v30 = __Block_byref_object_copy__8949;
  v31 = __Block_byref_object_dispose__8950;
  v32 = "";
  v33 = 0;
  v34 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__59;
  v25 = __Block_byref_object_dispose__60;
  v26 = 0;
  v10 = *(var0 + 1);
  v19 = *var0;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__MPMediaLibraryView__performCoreQuery_error___block_invoke;
  v15[3] = &unk_1E7677080;
  v17 = &v27;
  v18 = &v21;
  v11 = v9;
  v16 = v11;
  [(MPMediaLibraryView *)self performCoreQuery:&v19 withCompletion:v15];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  if (var1)
  {
    *var1 = v22[5];
  }

  v12 = v28[7];
  *v8 = v28[6];
  v8[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  result.var1 = v14;
  result.var0 = v13;
  return result;
}

void __46__MPMediaLibraryView__performCoreQuery_error___block_invoke(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(v6 + 56);
  *(v6 + 48) = v8;
  *(v6 + 56) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (shared_ptr<mlcore::QueryResult>)resultsForCoreQuery:(shared_ptr<mlcore:(id *)a4 :Query>)a3 error:
{
  var1 = a3.var1;
  v8 = v4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4012000000;
  v26 = __Block_byref_object_copy__8949;
  v27 = __Block_byref_object_dispose__8950;
  v28 = "";
  v29 = 0;
  v30 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__59;
  v21 = __Block_byref_object_dispose__60;
  v22 = 0;
  v9 = *(a3.var0 + 1);
  v15 = *a3.var0;
  v16 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__MPMediaLibraryView_resultsForCoreQuery_error___block_invoke;
  v14[3] = &unk_1E7677058;
  v14[4] = &v23;
  v14[5] = &v17;
  v14[6] = &v31;
  [(MPMediaLibraryView *)self performCoreQuery:&v15 withCompletion:v14, a4];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v32[3])
  {
    if (!var1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"MPMediaLibraryView.mm" lineNumber:233 description:@"MLCore library queries should be guaranteed no-escape"];

  if (var1)
  {
LABEL_7:
    *var1 = v18[5];
  }

LABEL_8:
  v10 = v24[7];
  *v8 = v24[6];
  v8[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Block_object_dispose(&v31, 8);
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

void __48__MPMediaLibraryView_resultsForCoreQuery_error___block_invoke(void *a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1[4] + 8);
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(v6 + 56);
  *(v6 + 48) = v8;
  *(v6 + 56) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  *(*(a1[6] + 8) + 24) = 1;
}

- (void)performCoreSearchQuery:(shared_ptr<mlcore:(id)a4 :LocalizedSearchQuery>)a3 withCompletion:
{
  ptr = a3.__ptr_;
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3.__cntrl_;
  +[MPMediaLibrary logDatabaseAccess];
  v6 = *(ptr + 1);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = &unk_1F1495920;
  v7[1] = _Block_copy(v5);
  v7[3] = v7;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::shared_ptr<mlcore::LocalizedSearchQueryResult>)>::__value_func[abi:ne200100](v8, v7);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::shared_ptr<mlcore::LocalizedSearchQueryResult>)>::__value_func[abi:ne200100](v9, v8);
  v10 = 0;
  operator new();
}

- (uint64_t)performCoreSearchQuery:withCompletion:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z60-[MPMediaLibraryView performCoreSearchQuery:withCompletion:]E3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)performCoreSearchQuery:withCompletion:
{

  JUMPOUT(0x1A58E14E0);
}

- (void)performCoreQuery:(shared_ptr<mlcore:(id)a4 :Query>)a3 withCompletion:
{
  var0 = a3.var0;
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3.var1;
  +[MPMediaLibrary logDatabaseAccess];
  v6 = *(var0 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = &unk_1F1495810;
  v7[1] = _Block_copy(v5);
  v7[3] = v7;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::shared_ptr<mlcore::QueryResult>)>::__value_func[abi:ne200100](v8, v7);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::shared_ptr<mlcore::QueryResult>)>::__value_func[abi:ne200100](v9, v8);
  v10 = 0;
  operator new();
}

- (uint64_t)performCoreQuery:withCompletion:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z54-[MPMediaLibraryView performCoreQuery:withCompletion:]E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)performCoreQuery:withCompletion:
{

  JUMPOUT(0x1A58E14E0);
}

- (shared_ptr<mlcore::DeviceLibraryView>)mlCoreView
{
  cntrl = self->_coreView.__cntrl_;
  *v2 = self->_coreView.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (BOOL)hasEntitiesForModelKind:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPMediaLibraryEntityTranslationContext);
  [(MPMediaLibraryEntityTranslationContext *)v5 setMediaLibrary:self->_library];
  [(MPMediaLibraryEntityTranslationContext *)v5 setModelKind:v4];
  v6 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [v4 modelClass]);
  v7 = +[MPPropertySet emptyPropertySet];
  if (v6)
  {
    [v6 entityQueryForPropertySet:v7 sortDescriptors:0 context:v5 view:self];
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v13 = xmmword_1A273DDF0;
  mlcore::RangeQuery::setRange();
  v11 = v14;
  v12 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(MPMediaLibraryView *)self _performCoreQuery:&v11 error:0];
  v9 = *(&v13 + 1);
  v8 = v13;
  v13 = 0uLL;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v8)
  {
    LOBYTE(v8) = mlcore::EntityQueryResult::entityCount(v8) != 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(MPMediaLibraryView *)self library];
  v6 = [v4 initWithLibrary:v5 filteringOptions:{-[MPMediaLibraryView filteringOptions](self, "filteringOptions")}];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  filteringOptions = self->_filteringOptions;
  if ((filteringOptions & 2) != 0)
  {
    [v3 addObject:@"local"];
    filteringOptions = self->_filteringOptions;
  }

  if ((filteringOptions & 4) != 0)
  {
    [v4 addObject:@"include-non-library"];
    filteringOptions = self->_filteringOptions;
  }

  if ((filteringOptions & 8) != 0)
  {
    [v4 addObject:@"purchased"];
    filteringOptions = self->_filteringOptions;
  }

  if ((filteringOptions & 0x10) != 0)
  {
    [v4 addObject:@"subscription"];
    filteringOptions = self->_filteringOptions;
  }

  if ((filteringOptions & 0x20) != 0)
  {
    [v4 addObject:@"unprotected"];
    filteringOptions = self->_filteringOptions;
  }

  if ((filteringOptions & 0x80) != 0)
  {
    [v4 addObject:@"pinned-containers"];
    filteringOptions = self->_filteringOptions;
  }

  if ((filteringOptions & 0x100) != 0)
  {
    [v4 addObject:@"pinned-collections"];
    filteringOptions = self->_filteringOptions;
  }

  if ((filteringOptions & 0x100000) != 0)
  {
    [v4 addObject:@"loved"];
    filteringOptions = self->_filteringOptions;
  }

  if ((filteringOptions & 0x200000) != 0)
  {
    [v4 addObject:@"favorited"];
    filteringOptions = self->_filteringOptions;
  }

  if ((filteringOptions & 0x400000) != 0)
  {
    [v4 addObject:@"include-empty"];
    filteringOptions = self->_filteringOptions;
  }

  if ((filteringOptions & 0x800000) != 0)
  {
    [v4 addObject:@"favorited-entity"];
    filteringOptions = self->_filteringOptions;
  }

  if ((filteringOptions & 0x1000000) != 0)
  {
    [v4 addObject:@"favorited-collection"];
    filteringOptions = self->_filteringOptions;
  }

  if ((filteringOptions & 0x10000) != 0)
  {
    [v4 addObject:@"ignore-restrictions"];
    filteringOptions = self->_filteringOptions;
  }

  if ((filteringOptions & 0x20000) != 0)
  {
    [v4 addObject:@"clean-lyrics"];
  }

  if ([v4 count])
  {
    v6 = [v4 componentsJoinedByString:@"|"];
  }

  else
  {
    v6 = @"<none>";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p: [filter: %@]>", objc_opt_class(), self, v6];

  return v7;
}

- (MPMediaLibraryView)initWithLibrary:(id)a3 filteringOptions:(unint64_t)a4
{
  v7 = a3;
  v20.receiver = self;
  v20.super_class = MPMediaLibraryView;
  v8 = [(MPMediaLibraryView *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_library, a3);
    v9->_filteringOptions = a4;
    library = v9->_library;
    if (library)
    {
      [(MPMediaLibrary *)library _MediaLibrary_coreLibrary];
      v18 = v15;
      v19 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v16 = 0;
      v18 = 0;
      v19 = 0;
    }

    mlcore::LibraryView::viewWithLibrary();
    v11 = v17[0];
    v17[0] = 0uLL;
    cntrl = v9->_coreView.__cntrl_;
    v9->_coreView = v11;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      if (*(&v17[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17[0] + 1));
      }
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (MPMLCoreInitialize(void)::onceToken != -1)
    {
      dispatch_once(&MPMLCoreInitialize(void)::onceToken, &__block_literal_global_43831);
    }

    mlcore::LibraryView::filters(v9->_coreView.__ptr_);
    if ((a4 & 0x10000) == 0)
    {
      v13 = +[MPRestrictionsMonitor sharedRestrictionsMonitor];
      mlcore::ContentRestrictions::ContentRestrictions(v17);
      [v13 allowsExplicitContent];
      mlcore::ContentRestrictions::setRestrictExplicitLyrics(v17);
      [v13 maximumTVShowRating];
      mlcore::ContentRestrictions::setRestrictedTVShowsRank(v17);
      [v13 maximumMovieRating];
      mlcore::ContentRestrictions::setRestrictedMoviesRank(v17);
      [v13 allowsMusicVideos];
      mlcore::ContentRestrictions::setRestrictMusicVideos(v17);
      mlcore::LibraryView::setContentRestrictions();
    }

    mlcore::LibraryView::setFilters(v9->_coreView.__ptr_);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  return v9;
}

@end