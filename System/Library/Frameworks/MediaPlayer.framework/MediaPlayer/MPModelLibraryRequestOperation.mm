@interface MPModelLibraryRequestOperation
- (BOOL)_validateRequest;
- (id)_libraryView;
- (id)_sectionProperties;
- (void)_executeLegacyRequest;
- (void)_executeNewRequest;
- (void)_insertPropertyCacheForEntityPID:(int64_t)d entityClass:(void *)class entityTranslator:(id)translator translationContext:(id)context propertyCachesVector:(const void *)vector;
- (void)_modifyRequestByAddingExplicitContentPropertiesForPinnedItems;
- (void)_sanityCheckRequest;
- (void)execute;
- (void)finishWithError:(id)error;
@end

@implementation MPModelLibraryRequestOperation

- (void)execute
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    request = self->_request;
    mediaLibrary = [(MPModelLibraryRequest *)request mediaLibrary];
    *buf = 138543874;
    selfCopy = self;
    v16 = 2114;
    v17 = request;
    v18 = 2114;
    v19 = mediaLibrary;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Executing request %{public}@ against library %{public}@", buf, 0x20u);
  }

  if ([(MPModelLibraryRequestOperation *)self _validateRequest])
  {
    legacyMediaQuery = [(MPModelLibraryRequest *)self->_request legacyMediaQuery];
    v7 = legacyMediaQuery == 0;

    if (v7)
    {
      [(MPModelLibraryRequestOperation *)self _sanityCheckRequest];
      [(MPModelLibraryRequestOperation *)self _executeNewRequest];
    }

    else
    {
      [(MPModelLibraryRequestOperation *)self _executeLegacyRequest];
    }
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    mediaLibrary2 = [(MPModelLibraryRequest *)self->_request mediaLibrary];
    databasePath = [mediaLibrary2 databasePath];
    mediaLibrary3 = [(MPModelLibraryRequest *)self->_request mediaLibrary];
    v12 = [mediaLibrary3 description];
    v13 = [v8 msv_errorWithDomain:@"MPRequestErrorDomain" code:1 debugDescription:{@"Invalid request database path=%@, mediaLibrary=%@", databasePath, v12}];

    (*(self->_responseHandler + 2))();
    [(MPModelLibraryRequestOperation *)self finishWithError:v13];
  }
}

- (BOOL)_validateRequest
{
  mediaLibrary = [(MPModelLibraryRequest *)self->_request mediaLibrary];
  databasePath = [mediaLibrary databasePath];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:databasePath];

  return v5;
}

- (void)_sanityCheckRequest
{
  v53 = *MEMORY[0x1E69E9840];
  request = [(MPModelLibraryRequestOperation *)self request];
  itemKind = [request itemKind];
  modelClass = [itemKind modelClass];

  v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [request scopedContainers];
  v3 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v3)
  {
    v4 = *v42;
    v32 = *MEMORY[0x1E69B1340];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v42 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v41 + 1) + 8 * i);
        v7 = objc_opt_class();
        if (v7)
        {
          [v35 addObject:v7];
        }

        else
        {
          v8 = os_log_create("com.apple.amp.mediaplayer", "Library");
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            selfCopy2 = self;
            v48 = 2114;
            v49 = request;
            v50 = 2114;
            v51 = v6;
            _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "MPModelLibraryRequestOperation: %p _sanityCheckRequest: nil container class request=%{public}@ scopedContainer=%{public}@", buf, 0x20u);
          }

          v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"request:%@", request];
          v9 = MEMORY[0x1E696AEC0];
          scopedContainers = [request scopedContainers];
          v36 = [v9 stringWithFormat:@"scopedContainers:%@", scopedContainers];

          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"container:%@", v6];
          v12 = dispatch_semaphore_create(0);
          v13 = MEMORY[0x1E69B13D8];
          v14 = MEMORY[0x1E696AEC0];
          label = [request label];
          v16 = [v14 stringWithFormat:@"%@", label];
          v45[0] = v37;
          v45[1] = v36;
          v45[2] = v11;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __53__MPModelLibraryRequestOperation__sanityCheckRequest__block_invoke;
          v39[3] = &unk_1E7682518;
          v18 = v12;
          v40 = v18;
          [v13 snapshotWithDomain:v32 type:@"Bug" subType:@"ModelRequestWithNilContainerClass" context:v16 triggerThresholdValues:0 events:v17 completion:v39];

          dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v3);
  }

  v19 = request;
  if ([v35 containsObject:modelClass] && modelClass != objc_opt_class() && modelClass != objc_opt_class())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    label2 = [request label];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelLibraryRequestOperation.mm" lineNumber:355 description:{@"scopedContainers cannot contain a MPModelObject subclass matching the itemKind's modelClass. label=%@", label2}];

    v19 = request;
  }

  allowedItemIdentifiers = [v19 allowedItemIdentifiers];
  for (j = 0; j < [allowedItemIdentifiers count]; ++j)
  {
    for (k = 0; k < [allowedItemIdentifiers count]; ++k)
    {
      if (j != k)
      {
        v23 = [allowedItemIdentifiers objectAtIndexedSubscript:j];
        v24 = [allowedItemIdentifiers objectAtIndexedSubscript:k];
        v25 = [v23 intersectsSet:v24];

        if (v25)
        {
          v26 = os_log_create("com.apple.amp.mediaplayer", "Library");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            label3 = [request label];
            *buf = 134218498;
            selfCopy2 = self;
            v48 = 2114;
            v49 = label3;
            v50 = 2114;
            v51 = allowedItemIdentifiers;
            _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_FAULT, "MPModelLibraryRequestOperation: %p _sanityCheckRequest: allowedItemIdentifiers must contain unique array elements -- cannot contain duplicates. label=%{public}@ allowedItemIdentifiers=%{public}@", buf, 0x20u);
          }
        }
      }
    }
  }
}

- (void)_executeNewRequest
{
  v177 = *MEMORY[0x1E69E9840];
  request = [(MPModelLibraryRequestOperation *)self request];
  mediaLibrary = [request mediaLibrary];
  request2 = [(MPModelLibraryRequestOperation *)self request];
  label = [request2 label];
  v7 = label;
  if (!label)
  {
    request3 = [(MPModelLibraryRequestOperation *)self request];
    v7 = [request3 description];
  }

  v104 = [mediaLibrary connectionAssertionWithIdentifier:v7];
  if (!label)
  {
  }

  _libraryView = [(MPModelLibraryRequestOperation *)self _libraryView];
  sectionKind = [(MPModelRequest *)self->_request sectionKind];
  modelClass = [sectionKind modelClass];

  itemKind = [(MPModelRequest *)self->_request itemKind];
  modelClass2 = [itemKind modelClass];

  contentRange = [(MPModelLibraryRequest *)self->_request contentRange];
  v100 = v11;
  v101 = [modelClass2 isSubclassOfClass:objc_opt_class()];
  v12 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = _libraryView;
    _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Executing request using view %{public}@", buf, 0x16u);
  }

  if (modelClass2)
  {
    v102 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:modelClass2];
  }

  else
  {
    v102 = 0;
  }

  if (v101)
  {
    [(MPModelLibraryRequestOperation *)self _modifyRequestByAddingExplicitContentPropertiesForPinnedItems];
  }

  v103 = [[MPModelLibraryResponse alloc] initWithRequest:self->_request];
  [(MPModelLibraryResponse *)v103 setLibraryAssertion:v104];
  scopedContainersPropertySet = [(MPModelLibraryRequest *)self->_request scopedContainersPropertySet];
  if (scopedContainersPropertySet)
  {
    scopedContainers = [(MPModelLibraryRequest *)self->_request scopedContainers];
    v14 = [scopedContainers count] == 0;

    if (!v14)
    {
      v15 = MEMORY[0x1E695DF70];
      scopedContainers2 = [(MPModelLibraryRequest *)self->_request scopedContainers];
      v107 = [v15 arrayWithCapacity:{objc_msgSend(scopedContainers2, "count")}];

      properties = [scopedContainersPropertySet properties];
      LOBYTE(v15) = [properties count] == 0;

      if ((v15 & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelLibraryRequestOperation.mm" lineNumber:406 description:{@"scopedContainersPropertySet must be a generic object property set: %@", scopedContainersPropertySet}];
      }

      v112 = objc_alloc_init(MPMediaLibraryEntityTranslationContext);
      mediaLibrary2 = [(MPModelLibraryRequest *)self->_request mediaLibrary];
      [(MPMediaLibraryEntityTranslationContext *)v112 setMediaLibrary:mediaLibrary2];

      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      obj = [(MPModelLibraryRequest *)self->_request scopedContainers];
      v19 = [obj countByEnumeratingWithState:&v165 objects:v176 count:16];
      if (v19)
      {
        v20 = *v166;
        do
        {
          v21 = 0;
          do
          {
            if (*v166 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v165 + 1) + 8 * v21);
            identifiers = [v22 identifiers];
            modelKind = [identifiers modelKind];
            [(MPMediaLibraryEntityTranslationContext *)v112 setModelKind:modelKind];

            v25 = +[MPModelGenericObject relationshipKeyForGenericObjectType:](MPModelGenericObject, "relationshipKeyForGenericObjectType:", [objc_opt_class() genericObjectType]);
            relationships = [scopedContainersPropertySet relationships];
            v27 = [relationships objectForKeyedSubscript:v25];
            v28 = v27;
            if (v27)
            {
              v29 = v27;
            }

            else
            {
              v29 = +[MPPropertySet emptyPropertySet];
            }

            v30 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class()];
            identifiers2 = [v22 identifiers];
            v175 = identifiers2;
            v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v175 count:1];
            if (v30)
            {
              [v30 propertiesQueryForPropertySet:v29 scopedContainers:MEMORY[0x1E695E0F0] allowedItemIdentifiers:v32 view:_libraryView];
            }

            else
            {
              v145 = 0;
              v146 = 0;
            }

            v33 = v145;
            if (!v145)
            {
              currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler2 handleFailureInMethod:a2 object:self->_request file:v22 lineNumber:? description:?];

              v33 = 0;
            }

            v163 = v33;
            v164 = v146;
            if (v146)
            {
              atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v162 = 0;
            if (_libraryView)
            {
              [_libraryView resultsForCoreQuery:&v163 error:&v162];
              v34 = v162;
            }

            else
            {
              v34 = 0;
              v139 = 0;
              v140 = 0;
            }

            if (v164)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v164);
            }

            if (!v34 && v139)
            {
              if (v140)
              {
                atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v35 = mlcore::PropertiesQueryResult::allResults(v139);
              memset(buf, 0, sizeof(buf));
              std::vector<mlcore::PropertyCache>::__init_with_size[abi:ne200100]<mlcore::PropertyCache*,mlcore::PropertyCache*>(buf, *v35, v35[1], 0x84BDA12F684BDA13 * ((v35[1] - *v35) >> 3));
              if (*&buf[8] - *buf == 216)
              {
                entityClass = [v30 entityClass];
                if (*&buf[8] == *buf)
                {
                  std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
                }

                v37 = [v30 objectForPropertySet:v29 entityClass:entityClass propertyCache:? context:?];
                v38 = [MPModelGenericObject genericObjectWithModelObject:v37];
                if (v38)
                {
                  [v107 addObject:v38];
                }
              }

              v160 = buf;
              std::vector<mlcore::PropertyCache>::__destroy_vector::operator()[abi:ne200100](&v160);
              if (v140)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v140);
              }
            }

            if (v140)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v140);
            }

            if (v146)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v146);
            }

            ++v21;
          }

          while (v19 != v21);
          v40 = [obj countByEnumeratingWithState:&v165 objects:v176 count:16];
          v19 = v40;
        }

        while (v40);
      }

      [(MPModelLibraryResponse *)v103 setScopedContainers:v107];
    }
  }

  if (!modelClass)
  {
    itemTranslationContext = [(MPModelLibraryRequest *)self->_request itemTranslationContext];
    v44 = [_libraryView copy];
    itemProperties = [(MPModelRequest *)self->_request itemProperties];
    itemSortDescriptors = [(MPModelRequest *)self->_request itemSortDescriptors];
    if (v102)
    {
      [v102 entityQueryForPropertySet:itemProperties sortDescriptors:itemSortDescriptors context:itemTranslationContext view:v44 deferLoadingRelationProperties:v101];
    }

    else
    {
      *&buf[8] = 0;
      *buf = 0;
    }

    v63 = *buf;
    if (!*buf)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self->_request file:? lineNumber:? description:?];

      v63 = *buf;
    }

    if (v100)
    {
      v145 = contentRange;
      v146 = v100;
      mlcore::RangeQuery::setRange();
      v63 = *buf;
    }

    v118 = v63;
    v119 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    v117 = 0;
    if (v44)
    {
      [v44 resultsForCoreQuery:&v118 error:&v117];
      v64 = v117;
    }

    else
    {
      v64 = 0;
      v145 = 0;
      v146 = 0;
    }

    if (v119)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v119);
    }

    if (v64)
    {
      [(MPModelLibraryRequestOperation *)self finishWithError:v64];
    }

    else
    {
      v65 = v145;
      if (!v145)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler4 handleFailureInMethod:a2 object:self file:@"MPModelLibraryRequestOperation.mm" lineNumber:630 description:@"item query did not produce error or result"];

        v65 = v145;
      }

      v66 = v146;
      if (v146)
      {
        atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v67 = [MPModelLibraryDefaultSectionedCollectionDataSource alloc];
      request = self->_request;
      v115 = v65;
      v116 = v66;
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v69 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)v67 initWithRequest:request itemQueryResults:&v115];
      if (v116)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v116);
      }

      v70 = [[MPLazySectionedCollection alloc] initWithDataSource:v69];
      [(MPModelResponse *)v103 setResults:v70];

      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      }
    }

    if (v146)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v146);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (!v64)
    {
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  obja = [(MPModelLibraryRequestOperation *)self _sectionProperties];
  v41 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:modelClass];
  sectionTranslationContext = [(MPModelLibraryRequest *)self->_request sectionTranslationContext];
  sectionSortDescriptors = [(MPModelRequest *)self->_request sectionSortDescriptors];
  if (v41)
  {
    [v41 entityQueryForPropertySet:obja sortDescriptors:sectionSortDescriptors context:sectionTranslationContext view:_libraryView];
  }

  else
  {
    v161 = 0;
    v160 = 0;
  }

  if (!v160)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self->_request file:? lineNumber:? description:?];
  }

  filterText = [(MPModelLibraryRequest *)self->_request filterText];
  if (![filterText length])
  {

    goto LABEL_68;
  }

  sectionKind2 = [(MPModelRequest *)self->_request sectionKind];
  identityKind = [sectionKind2 identityKind];
  v50 = +[MPModelPlaylistKind identityKind];
  v51 = identityKind;
  v52 = v50;
  v53 = v52;
  if (v51 != v52)
  {
    v54 = [v51 isEqual:v52];

    if (v54)
    {
      goto LABEL_70;
    }

LABEL_68:
    v55 = 0;
    goto LABEL_117;
  }

LABEL_70:
  v56 = mlcore::PropertiesQuery::propertiesToFetch(v160);
  memset(buf, 0, sizeof(buf));
  v57 = std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(buf, *v56, v56[1], (v56[1] - *v56) >> 3);
  IsLimited = mlcore::PlaylistPropertySmartIsLimited(v57);
  v59 = IsLimited;
  v60 = *&buf[8];
  if (*&buf[8] >= *&buf[16])
  {
    v71 = *buf;
    v72 = *&buf[8] - *buf;
    v73 = (*&buf[8] - *buf) >> 3;
    v74 = v73 + 1;
    if ((v73 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v75 = *&buf[16] - *buf;
    if ((*&buf[16] - *buf) >> 2 > v74)
    {
      v74 = v75 >> 2;
    }

    if (v75 >= 0x7FFFFFFFFFFFFFF8)
    {
      v76 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v76 = v74;
    }

    if (v76)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::ModelPropertyBase *>>(v76);
    }

    v62 = 0;
    *(8 * v73) = v59;
    v61 = 8 * v73 + 8;
    memcpy(0, v71, v72);
    *buf = 0;
    *&buf[16] = 0;
    if (v71)
    {
      operator delete(v71);
    }
  }

  else
  {
    **&buf[8] = IsLimited;
    v61 = v60 + 8;
    v62 = *buf;
  }

  *&buf[8] = v61;
  v158 = 0;
  v159 = 0;
  __p = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&__p, v62, v61, (v61 - v62) >> 3);
  mlcore::PropertiesQuery::setPropertiesToFetch();
  if (__p)
  {
    v158 = __p;
    operator delete(__p);
  }

  if (*buf)
  {
    operator delete(*buf);
  }

  v55 = 1;
LABEL_117:
  if (v100)
  {
    *buf = contentRange;
    *&buf[8] = v100;
    mlcore::RangeQuery::setRange();
  }

  v153 = v160;
  v154 = v161;
  if (v161)
  {
    atomic_fetch_add_explicit(&v161->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v152 = 0;
  if (_libraryView)
  {
    [_libraryView resultsForCoreQuery:&v153 error:&v152];
    v77 = v152;
  }

  else
  {
    v77 = 0;
    v155 = 0;
    v156 = 0;
  }

  if (v154)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v154);
  }

  if (v77)
  {
    [(MPModelLibraryRequestOperation *)self finishWithError:v77];
    if (v156)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v156);
    }

    if (v161)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v161);
    }

    goto LABEL_159;
  }

  v78 = v155;
  if (!v155)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self->_request file:? lineNumber:? description:?];

    v78 = v155;
  }

  v79 = v156;
  if (v156)
  {
    atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4812000000;
  v170 = __Block_byref_object_copy__28942;
  v171 = __Block_byref_object_dispose__28943;
  v172 = "";
  v174[1] = 0;
  v174[0] = 0;
  v173 = v174;
  if (!v102)
  {
    goto LABEL_146;
  }

  itemTranslationContext2 = [(MPModelLibraryRequest *)self->_request itemTranslationContext];
  scopedContainers3 = [itemTranslationContext2 scopedContainers];
  v108 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v145 = 0;
  v146 = &v145;
  v147 = 0x3812000000;
  v148 = __Block_byref_object_copy__94;
  v149 = __Block_byref_object_dispose__95;
  v150 = "";
  v151 = 0;
  v139 = 0;
  v140 = &v139;
  v141 = 0x3032000000;
  v142 = __Block_byref_object_copy__97;
  v143 = __Block_byref_object_dispose__98;
  v144 = 0;
  v82 = mlcore::EntityQueryResult::entityCount(v78);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __52__MPModelLibraryRequestOperation__executeNewRequest__block_invoke;
  block[3] = &unk_1F1496728;
  v129 = &v145;
  v130 = &v139;
  block[4] = self;
  v136 = v55;
  v132 = v78;
  v133 = v79;
  if (v79)
  {
    atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v83 = itemTranslationContext2;
  v123 = v83;
  v124 = sectionTranslationContext;
  v134 = modelClass;
  v84 = scopedContainers3;
  v125 = v84;
  v126 = _libraryView;
  v137 = v101;
  v135 = a2;
  v127 = v102;
  v131 = buf;
  v138 = modelClass != 0;
  v85 = v108;
  v128 = v85;
  dispatch_apply(v82, 0, block);
  shared_weak_owners = v140[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    [(MPModelLibraryRequestOperation *)self finishWithError:v140[1].__shared_weak_owners_];
  }

  else
  {
    v87 = [v85 copy];
    [(MPModelLibraryResponse *)v103 setSectionKeepLocalStatusConfigurations:v87];
  }

  if (v133)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v133);
  }

  _Block_object_dispose(&v139, 8);

  _Block_object_dispose(&v145, 8);
  if (shared_weak_owners)
  {
    v88 = 0;
  }

  else
  {
LABEL_146:
    v89 = [MPModelLibraryModelSectionedCollectionDataSource alloc];
    v90 = self->_request;
    v120 = v78;
    v121 = v79;
    if (v79)
    {
      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v91 = [(MPModelLibraryModelSectionedCollectionDataSource *)v89 initWithRequest:v90 sectionQueryResults:&v120 itemQueryResults:*&buf[8] + 48];
    if (v121)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v121);
    }

    v92 = [[MPLazySectionedCollection alloc] initWithDataSource:v91];
    [(MPModelResponse *)v103 setResults:v92];

    v88 = 1;
  }

  _Block_object_dispose(buf, 8);
  std::__tree<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::__map_value_compare<long long,std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>>>::destroy(v174[0]);
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  if (v156)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v156);
  }

  if (v161)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v161);
  }

  if (v88)
  {
LABEL_158:
    (*(self->_responseHandler + 2))();
    [(MPAsyncOperation *)self finish];
  }

LABEL_159:
}

- (id)_libraryView
{
  filteringOptions = [(MPModelLibraryRequest *)self->_request filteringOptions];
  itemKind = [(MPModelRequest *)self->_request itemKind];
  modelClass = [itemKind modelClass];
  v6 = objc_opt_class();

  if (modelClass == v6)
  {
    filteringOptions |= 4uLL;
  }

  v7 = [MPMediaLibraryView alloc];
  mediaLibrary = [(MPModelLibraryRequest *)self->_request mediaLibrary];
  v9 = [(MPMediaLibraryView *)v7 initWithLibrary:mediaLibrary filteringOptions:filteringOptions];

  return v9;
}

- (void)_modifyRequestByAddingExplicitContentPropertiesForPinnedItems
{
  v20[6] = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  itemProperties = [(MPModelRequest *)self->_request itemProperties];
  relationships = [itemProperties relationships];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __95__MPModelLibraryRequestOperation__modifyRequestByAddingExplicitContentPropertiesForPinnedItems__block_invoke;
  v18 = &unk_1E767A888;
  v6 = dictionary;
  v19 = v6;
  [relationships enumerateKeysAndObjectsUsingBlock:&v15];

  v7 = [(MPModelRequest *)self->_request itemProperties:v15];
  v20[0] = @"MPModelPropertyLibraryPinEntityType";
  v20[1] = @"MPModelPropertyLibraryPinEntityPersistentID";
  v20[2] = @"MPModelPropertyLibraryPinPersistentID";
  v20[3] = @"MPModelPropertyLibraryPinPosition";
  v20[4] = @"MPModelPropertyLibraryPinPositionUUID";
  v20[5] = @"MPModelPropertyLibraryPinDefaultAction";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:6];
  v9 = [MPPropertySet propertySetWithProperties:v8];
  v10 = [v7 propertySetByCombiningWithPropertySet:v9];

  v11 = [MPPropertySet alloc];
  properties = [v10 properties];
  allObjects = [properties allObjects];
  v14 = [(MPPropertySet *)v11 initWithProperties:allObjects relationships:v6];
  [(MPModelRequest *)self->_request setItemProperties:v14];
}

void __95__MPModelLibraryRequestOperation__modifyRequestByAddingExplicitContentPropertiesForPinnedItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"MPModelRelationshipLibraryPinPlaylist"])
  {
    v16[0] = @"MPModelPropertyPlaylistHasExplicitContent";
    v16[1] = @"MPModelPropertyPlaylistHasAnyCleanTracks";
    v16[2] = @"MPModelPropertyPlaylistTrackCount";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v8 = [MPPropertySet propertySetWithProperties:v7];
    v9 = [v6 propertySetByCombiningWithPropertySet:v8];

    [*(a1 + 32) setObject:v9 forKey:v5];
  }

  else
  {
    if ([v5 isEqualToString:@"MPModelRelationshipLibraryPinSong"])
    {
      v15 = @"MPModelPropertySongExplicit";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      v11 = [MPPropertySet propertySetWithProperties:v10];
      v12 = [v6 propertySetByCombiningWithPropertySet:v11];
    }

    else if ([v5 isEqualToString:@"MPModelRelationshipLibraryPinAlbum"])
    {
      v14 = @"MPModelPropertyAlbumCleanSongCount";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      v11 = [MPPropertySet propertySetWithProperties:v10];
      v12 = [v6 propertySetByCombiningWithPropertySet:v11];
    }

    else
    {
      if (![v5 isEqualToString:@"MPModelRelationshipLibraryPinArtist"])
      {
        v9 = 0;
        goto LABEL_12;
      }

      v13[0] = @"MPModelPropertyArtistCleanSongCount";
      v13[1] = @"MPModelPropertyArtistSongCount";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
      v11 = [MPPropertySet propertySetWithProperties:v10];
      v12 = [v6 propertySetByCombiningWithPropertySet:v11];
    }

    v9 = v12;
  }

  if (v9)
  {
    [*(a1 + 32) setObject:v9 forKey:v5];
  }

LABEL_12:
}

void __52__MPModelLibraryRequestOperation__executeNewRequest__block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  os_unfair_lock_lock((*(*(a1 + 88) + 8) + 48));
  v3 = *(*(*(a1 + 96) + 8) + 40);
  os_unfair_lock_unlock((*(*(a1 + 88) + 8) + 48));
  if (([*(a1 + 32) isCancelled] & 1) == 0 && !v3)
  {
    if (*(a1 + 144) == 1)
    {
      v4 = mlcore::EntityQueryResult::entityAtIndex(*(a1 + 112));
      IsLimited = mlcore::PlaylistPropertySmartIsLimited(v4);
      v6 = mlcore::Entity::valueForProperty<int>(v67, IsLimited) == 0;
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }
    }

    else
    {
      v6 = 1;
    }

    v40 = [*(a1 + 40) copy];
    v66 = mlcore::EntityQueryResult::persistentIDAtIndex(*(a1 + 112));
    v7 = [MPIdentifierSet alloc];
    v8 = [*(*(a1 + 32) + 272) sectionKind];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __52__MPModelLibraryRequestOperation__executeNewRequest__block_invoke_2;
    v63[3] = &unk_1E767CDA0;
    v64 = *(a1 + 48);
    v65 = v66;
    v42 = [(MPIdentifierSet *)v7 initWithSource:@"LibraryRequestOperation" modelKind:v8 block:v63];

    v9 = v40;
    v39 = [objc_alloc(*(a1 + 128)) initWithIdentifiers:v42 block:&__block_literal_global_28958];
    v10 = [*(a1 + 56) arrayByAddingObject:?];
    [v40 setScopedContainers:v10];

    v43 = [*(a1 + 64) copy];
    v41 = [*(*(a1 + 32) + 272) itemSortDescriptors];
    v11 = *(a1 + 72);
    v12 = [*(*(a1 + 32) + 272) itemProperties];
    if (v11)
    {
      [v11 entityQueryForPropertySet:v12 sortDescriptors:v41 context:v40 view:v43 deferLoadingRelationProperties:*(a1 + 145)];
    }

    else
    {
      v61 = 0;
      v62 = 0;
    }

    v13 = v61;
    if (!v61)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInMethod:*(a1 + 136) object:*(*(a1 + 32) + 272) file:? lineNumber:? description:?];

      v13 = 0;
    }

    v57 = v13;
    v58 = v62;
    if (v62)
    {
      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56 = 0;
    if (v43)
    {
      [v43 resultsForCoreQuery:&v57 error:&v56];
      v14 = v56;
    }

    else
    {
      v14 = 0;
      v59 = 0;
      v60 = 0;
    }

    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    if (v14)
    {
      objc_storeStrong((*(*(a1 + 96) + 8) + 40), v14);
    }

    else
    {
      v15 = v59;
      if (!v59)
      {
        v35 = [MEMORY[0x1E696AAA8] currentHandler];
        [v35 handleFailureInMethod:*(a1 + 136) object:*(a1 + 32) file:@"MPModelLibraryRequestOperation.mm" lineNumber:521 description:@"item query did not produce error or result"];

        v9 = v40;
        v15 = v59;
      }

      v16 = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = v16;
      os_unfair_lock_lock((*(*(a1 + 88) + 8) + 48));
      v17 = *(*(a1 + 104) + 8);
      v67 = &v66;
      v18 = std::__tree<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::__map_value_compare<long long,std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v17 + 48, v66);
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = v18[6];
      v18[5] = v15;
      v18[6] = v38;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      os_unfair_lock_unlock((*(*(a1 + 88) + 8) + 48));
      if (*(a1 + 146) == 1 && [*(*(a1 + 32) + 272) wantsDetailedKeepLocalRequestableResponse])
      {
        v20 = objc_alloc_init(MPModelLibraryResponseKeepLocalStatusConfiguration);
        v21 = v61;
        if (!v61 || !__dynamic_cast(v61, MEMORY[0x1E69B07D0], MEMORY[0x1E69B07E8], 0))
        {
          mlcore::Query::entityClass(v21);
          v27 = mlcore::Query::predicate(&v67, v61);
          mlcore::ItemPropertyIsStoreRedownloadable(v27);
          std::allocate_shared[abi:ne200100]<mlcore::UnaryPredicate<int>,std::allocator<mlcore::UnaryPredicate<int>>,mlcore::ModelProperty<int> *&,mlcore::UnaryOperator,0>();
        }

        v22 = v62;
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        v23 = [*(a1 + 64) copy];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __52__MPModelLibraryRequestOperation__executeNewRequest__block_invoke_5;
        v50[3] = &unk_1E767A860;
        v24 = *(a1 + 72);
        v25 = *(a1 + 32);
        v51 = v24;
        v52 = v25;
        v53 = v41;
        v54 = v9;
        v26 = v23;
        v55 = v26;
        [(MPModelLibraryResponseKeepLocalStatusConfiguration *)v20 setDownloadablePlaylistItemEntityQueryBlock:v50];

        os_unfair_lock_lock((*(*(a1 + 88) + 8) + 48));
        [*(a1 + 80) addObject:v20];
        os_unfair_lock_unlock((*(*(a1 + 88) + 8) + 48));
      }

      if (!v6 && (*(a1 + 144) & 1) != 0)
      {
        [*(a1 + 40) setFilterText:0];
        v37 = [*(a1 + 64) copy];
        v28 = *(a1 + 72);
        v29 = +[MPPropertySet emptyPropertySet];
        v30 = [*(*(a1 + 32) + 272) itemSortDescriptors];
        if (v28)
        {
          v31 = v28;
          v9 = v40;
          [v31 entityQueryForPropertySet:v29 sortDescriptors:v30 context:v40 view:v37];
        }

        else
        {
          v48 = 0;
          v49 = 0;
          v9 = v40;
        }

        v45 = v48;
        v46 = v49;
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v44 = 0;
        if (v37)
        {
          [v37 resultsForCoreQuery:&v45 error:&v44];
          v32 = v44;
        }

        else
        {
          v32 = 0;
          v47[0] = 0;
          v47[1] = 0;
        }

        if (v46)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        }

        if (!v32)
        {
          v33 = v47[0];
          if (!v47[0])
          {
            v36 = [MEMORY[0x1E696AAA8] currentHandler];
            [v36 handleFailureInMethod:*(a1 + 136) object:*(*(a1 + 32) + 272) file:? lineNumber:? description:?];

            v33 = v47[0];
          }

          if (v47[1])
          {
            atomic_fetch_add_explicit(v47[1] + 1, 1uLL, memory_order_relaxed);
          }

          mlcore::EntityQueryResult::propertyCaches(v33);
          mlcore::EntityQueryResult::propertyCaches(v15);
          operator new();
        }

        objc_storeStrong((*(*(a1 + 96) + 8) + 40), v32);
        if (v47[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47[1]);
        }

        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }
      }

      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }
    }

    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __52__MPModelLibraryRequestOperation__executeNewRequest__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mediaLibrary];
  v5 = [v4 uniqueIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__MPModelLibraryRequestOperation__executeNewRequest__block_invoke_3;
  v6[3] = &__block_descriptor_40_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v6[4] = *(a1 + 40);
  [v3 setLibraryIdentifiersWithDatabaseID:v5 block:v6];
}

void __52__MPModelLibraryRequestOperation__executeNewRequest__block_invoke_5(void *a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [*(a1[5] + 272) itemProperties];
  if (v2)
  {
    [v2 entityQueryForPropertySet:v3 sortDescriptors:a1[6] context:a1[7] view:a1[8]];
  }

  else
  {
    v7 = 0;
  }

  v4 = mlcore::Query::predicate(v8, v7);
  v5 = mlcore::PlaylistItemPropertyItemPersistentID(v4);
  IsStoreRedownloadable = mlcore::ItemPropertyIsStoreRedownloadable(v5);
  MPMediaLibraryGetProperty(v5, IsStoreRedownloadable);
  std::allocate_shared[abi:ne200100]<mlcore::UnaryPredicate<int>,std::allocator<mlcore::UnaryPredicate<int>>,mlcore::ModelProperty<int> *&,mlcore::UnaryOperator,0>();
}

- (id)_sectionProperties
{
  sectionProperties = [(MPModelRequest *)self->_request sectionProperties];
  if ([(MPModelLibraryRequest *)self->_request wantsDetailedKeepLocalRequestableResponse])
  {
    sectionKind = [(MPModelRequest *)self->_request sectionKind];
    modelClass = [sectionKind modelClass];

    if ([modelClass supportsKeepLocalStatusObservation])
    {
      requiredKeepLocalStatusObservationProperties = [modelClass requiredKeepLocalStatusObservationProperties];
      v7 = [requiredKeepLocalStatusObservationProperties propertySetByCombiningWithPropertySet:sectionProperties];

      sectionProperties = v7;
    }
  }

  return sectionProperties;
}

- (void)_insertPropertyCacheForEntityPID:(int64_t)d entityClass:(void *)class entityTranslator:(id)translator translationContext:(id)context propertyCachesVector:(const void *)vector
{
  v15[4] = *MEMORY[0x1E69E9840];
  translatorCopy = translator;
  contextCopy = context;
  _libraryView = [(MPModelLibraryRequestOperation *)self _libraryView];
  v13 = +[MPPropertySet emptyPropertySet];
  if (translatorCopy)
  {
    [translatorCopy entityQueryForPropertySet:v13 sortDescriptors:MEMORY[0x1E695E0F0] context:contextCopy view:_libraryView];
  }

  else
  {
    v14 = 0;
  }

  mlcore::Query::predicate(v15, v14);
  (*(*class + 120))(class);
  std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
}

void __136__MPModelLibraryRequestOperation__insertPropertyCacheForEntityPID_entityClass_entityTranslator_translationContext_propertyCachesVector___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = mlcore::EntityQueryResult::propertyCaches(v7);
  if (v8[1] == *v8)
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(a1 + 32);
      v11 = [*(v10 + 272) label];
      v12 = MEMORY[0x1E696AEC0];
      (*(**(a1 + 56) + 56))(__p);
      if (v19 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      v14 = [v12 stringWithUTF8String:v13];
      v15 = *(a1 + 64);
      v16 = [*(*(a1 + 32) + 272) legacyMediaQuery];
      *buf = 134219010;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      *&buf[22] = 2114;
      *v22 = v14;
      *&v22[8] = 2048;
      *&v22[10] = v15;
      *&v22[18] = 2114;
      *v23 = v16;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_FAULT, "MPModelLibraryRequestOperation: %p _insertPropertyCacheForEntityPID: no entity label=%{public}@ entityClass=%{public}@ entityPID=%lld legacyMediaQuery=%{public}@", buf, 0x34u);

      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *v22 = 0u;
    *&buf[8] = 0u;
    *&v22[16] = 1065353216;
    *&v23[4] = 0u;
    v24 = 0u;
    v25 = 1065353216;
    v27 = 0u;
    v26 = 0u;
    v28 = 1065353216;
    v29 = 0u;
    v30 = 0u;
    memset(v32, 0, sizeof(v32));
    v31 = 1065353216;
    v33 = 1065353216;
    *buf = MEMORY[0x1E69B0818] + 16;
    v34 = MEMORY[0x1E69B0818] + 56;
    v17 = *(a1 + 64);
    v20 = (*(**(a1 + 56) + 120))(*(a1 + 56));
    __p[0] = &v20;
    std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(v32, v20)[3] = v17;
    std::vector<mlcore::PropertyCache>::push_back[abi:ne200100](**(a1 + 48));
  }

  else
  {
    mlcore::EntityQueryResult::propertyCaches(v7);
    mlcore::PropertyCache::PropertyCache();
    std::vector<mlcore::PropertyCache>::push_back[abi:ne200100](**(a1 + 48));
  }

  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(buf);
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

- (void)_executeLegacyRequest
{
  v35 = *MEMORY[0x1E69E9840];
  legacyMediaQuery = [(MPModelLibraryRequest *)self->_request legacyMediaQuery];
  request = [(MPModelLibraryRequestOperation *)self request];
  mediaLibrary = [request mediaLibrary];

  request2 = [(MPModelLibraryRequestOperation *)self request];
  label = [request2 label];
  v8 = label;
  if (!label)
  {
    request3 = [(MPModelLibraryRequestOperation *)self request];
    v8 = [request3 description];
  }

  [mediaLibrary connectionAssertionWithIdentifier:v8];
  objc_claimAutoreleasedReturnValue();
  if (!label)
  {
  }

  v9 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = legacyMediaQuery;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Executing legacy request query %{public}@", buf, 0x16u);
  }

  _libraryView = [(MPModelLibraryRequestOperation *)self _libraryView];
  if (_libraryView)
  {
    [_libraryView mlCoreView];
  }

  _itemProperties = [(MPModelLibraryRequestOperation *)self _itemProperties];
  sectionKind = [(MPModelRequest *)self->_request sectionKind];
  modelClass = [sectionKind modelClass];

  itemKind = [(MPModelRequest *)self->_request itemKind];
  modelClass2 = [itemKind modelClass];

  if (modelClass2 && ([MPMediaLibraryEntityTranslator translatorForMPModelClass:modelClass2], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    [v15 MLCorePropertiesForPropertySet:_itemProperties deferLoadingRelationProperties:0];
  }

  else
  {
    v15 = 0;
    memset(buf, 0, 24);
  }

  if (![v15 entityClass])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    request4 = [(MPModelLibraryRequestOperation *)self request];
    label2 = [request4 label];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelLibraryRequestOperation.mm" lineNumber:107 description:{@"Request did not provide an entity class for %@ %@. label=%@", modelClass2, v15, label2}];
  }

  v16 = objc_alloc_init(MPMediaLibraryEntityTranslationContext);
  [(MPMediaLibraryEntityTranslationContext *)v16 setMediaLibrary:mediaLibrary];
  itemKind2 = [(MPModelRequest *)self->_request itemKind];
  [(MPMediaLibraryEntityTranslationContext *)v16 setModelKind:itemKind2];

  if (modelClass)
  {
    v32 = objc_alloc_init(MPMediaLibraryEntityTranslationContext);
    [(MPMediaLibraryEntityTranslationContext *)v32 setMediaLibrary:mediaLibrary];
    sectionKind2 = [(MPModelRequest *)self->_request sectionKind];
    [(MPMediaLibraryEntityTranslationContext *)v32 setModelKind:sectionKind2];

    _sectionProperties = [(MPModelLibraryRequestOperation *)self _sectionProperties];
    v19 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:modelClass];
    if (v19)
    {
      [v19 MLCorePropertiesForPropertySet:_sectionProperties];
    }

    if ([legacyMediaQuery groupingType])
    {
      [legacyMediaQuery collections];
      [objc_claimAutoreleasedReturnValue() resultSet];
    }

    else
    {
      if (modelClass == objc_opt_class())
      {
        v20 = [legacyMediaQuery copy];
        [v20 setGroupingType:6];
      }

      else
      {
        v20 = [legacyMediaQuery copy];
        [v20 setGroupingType:{objc_msgSend(legacyMediaQuery, "_representativeCollectionGroupingType")}];
      }

      collections = [v20 collections];

      [collections resultSet];
    }

    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  if ([modelClass2 isSubclassOfClass:objc_opt_class()])
  {
    [legacyMediaQuery items];
  }

  else
  {
    [legacyMediaQuery collections];
  }
  v33 = ;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v33;
    resultSet = [v21 resultSet];
    [resultSet revision];
    sectionInfo = [v21 sectionInfo];
  }

  else
  {
    sectionInfo = 0;
  }

  [sectionInfo sections];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

void __55__MPModelLibraryRequestOperation__executeLegacyRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__MPModelLibraryRequestOperation__executeLegacyRequest__block_invoke_2;
  v5[3] = &unk_1E7680B00;
  v5[4] = *(a1 + 40);
  [v3 setLibraryIdentifiersWithDatabaseID:v4 block:v5];
}

void __55__MPModelLibraryRequestOperation__executeLegacyRequest__block_invoke_3(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = *a3;
  [*(a1 + 32) _insertPropertyCacheForEntityPID:objc_msgSend(v4 entityClass:"longLongValue") entityTranslator:*(a1 + 56) translationContext:*(a1 + 40) propertyCachesVector:{*(a1 + 48), a1 + 64}];
}

void __55__MPModelLibraryRequestOperation__executeLegacyRequest__block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 range];
  v6 = v5;
  v7 = [v3 title];
  std::string::basic_string[abi:ne200100]<0>(v34, [v7 UTF8String]);

  v36 = v4;
  v37 = v6;
  mlcore::Section::Section();
  v8 = *(a1 + 32);
  v10 = v8[1];
  v9 = v8[2];
  if (v10 >= v9)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v8) >> 4);
    if (v11 + 1 > 0x555555555555555)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *v8) >> 4);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x2AAAAAAAAAAAAAALL)
    {
      v14 = 0x555555555555555;
    }

    else
    {
      v14 = v13;
    }

    v39 = *(a1 + 32);
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::Section>>(v14);
    }

    v16 = 48 * v11;
    v36 = 0;
    v37 = v16;
    v38 = v16;
    if (SHIBYTE(v31) < 0)
    {
      std::string::__init_copy_ctor_external(v16, __p[0], __p[1]);
      v17 = v37;
      v18 = v38;
    }

    else
    {
      *(v16 + 16) = v31;
      *v16 = *__p;
      v17 = v16;
      v18 = v16;
    }

    *(v16 + 40) = v33;
    *(v16 + 24) = v32;
    *&v38 = v18 + 48;
    v20 = *v8;
    v19 = v8[1];
    v40[0] = v8;
    v40[1] = &v42;
    v40[2] = &v43;
    v41 = 0;
    v21 = v17 + v20 - v19;
    v42 = v21;
    v43 = v21;
    if (v20 == v19)
    {
      v41 = 1;
    }

    else
    {
      v22 = v17 + v20 - v19;
      v23 = v20;
      do
      {
        if (*(v23 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v22, *v23, *(v23 + 1));
          v25 = v43;
        }

        else
        {
          v24 = *v23;
          *(v22 + 16) = *(v23 + 2);
          *v22 = v24;
          v25 = v22;
        }

        v26 = *(v23 + 24);
        *(v22 + 40) = *(v23 + 10);
        *(v22 + 24) = v26;
        v23 += 3;
        v22 = v25 + 48;
        v43 = v25 + 48;
      }

      while (v23 != v19);
      v41 = 1;
      do
      {
        if (v20[23] < 0)
        {
          operator delete(*v20);
        }

        v20 += 48;
      }

      while (v20 != v19);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<mlcore::Section>,mlcore::Section*>>::~__exception_guard_exceptions[abi:ne200100](v40);
    v27 = *v8;
    *v8 = v21;
    v28 = v8[2];
    v29 = v38;
    v37 = v27;
    *&v38 = v27;
    *(v8 + 1) = v29;
    *(&v38 + 1) = v28;
    v36 = v27;
    std::__split_buffer<mlcore::Section>::~__split_buffer(&v36);
    v15 = v29;
  }

  else
  {
    if (SHIBYTE(v31) < 0)
    {
      std::string::__init_copy_ctor_external(v8[1], __p[0], __p[1]);
    }

    else
    {
      *(v10 + 16) = v31;
      *v10 = *__p;
    }

    *(v10 + 40) = v33;
    *(v10 + 24) = v32;
    v15 = v10 + 48;
    v8[1] = v10 + 48;
  }

  v8[1] = v15;
  std::vector<std::string>::push_back[abi:ne200100](*(a1 + 48), v34);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }
}

void __55__MPModelLibraryRequestOperation__executeLegacyRequest__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPersistentID:{objc_msgSend(*(a1 + 32), "persistentID")}];
}

- (void)finishWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Library");
  v6 = v5;
  if (errorCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      msv_description = [errorCopy msv_description];
      *buf = 138543618;
      selfCopy2 = self;
      v11 = 2114;
      v12 = msv_description;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Finished error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = MPModelLibraryRequestOperation;
  [(MPAsyncOperation *)&v8 finishWithError:errorCopy];
}

@end