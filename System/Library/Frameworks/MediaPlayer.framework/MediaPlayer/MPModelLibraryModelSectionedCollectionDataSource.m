@interface MPModelLibraryModelSectionedCollectionDataSource
- (BOOL)_allowedEntityIdentifiersContainsAllPersistentIDs;
- (BOOL)hasSameContentAsDataSource:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MPModelLibraryModelSectionedCollectionDataSource)initWithRequest:(id)a3 sectionQueryResults:(shared_ptr<mlcore:(void *)a5 :EntityQueryResult>)a4 itemQueryResults:;
- (id).cxx_construct;
- (id)identifiersForItemAtIndexPath:(id)a3;
- (id)identifiersForSectionAtIndex:(int64_t)a3;
- (id)indexPathForItemWithIdentifiersIntersectingSet:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (shared_ptr<mlcore::EntityQueryResult>)sectionEntityQueryResult;
- (shared_ptr<std::map<long)itemEntityQueryResults;
- (unint64_t)_adjustedIndexForSectionIndex:(int64_t)a3;
- (unint64_t)hash;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
- (unint64_t)numberOfSections;
- (void)_populateIndexMap;
@end

@implementation MPModelLibraryModelSectionedCollectionDataSource

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 8) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  *(self + 6) = self + 56;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  return self;
}

- (shared_ptr<mlcore::EntityQueryResult>)sectionEntityQueryResult
{
  cntrl = self->_sectionEntityQueryResult.__cntrl_;
  *v2 = self->_sectionEntityQueryResult.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<std::map<long)itemEntityQueryResults
{
  cntrl = self->_itemEntityQueryResults.__cntrl_;
  *v2 = self->_itemEntityQueryResults.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (unint64_t)hash
{
  v2 = MSVHasherSharedSeed();
  v3 = 0;
  v101 = 0;
  v97 = v2 ^ 0x736F6D6570736575;
  v98 = v4 ^ 0x646F72616E646F6DLL;
  v99 = v2 ^ 0x6C7967656E657261;
  v100 = v4 ^ 0x7465646279746573;
  while (v3 < mlcore::EntityQueryResult::entityCount(self->_sectionEntityQueryResult.__ptr_))
  {
    v5 = mlcore::EntityQueryResult::persistentIDAtIndex(self->_sectionEntityQueryResult.__ptr_);
    v6 = v5;
    v7 = v101 & 0xFF00000000000000;
    if ((v101 & 0x400000000000000) != 0)
    {
      v29 = v101 & 0xFFFFFFFFFFFFFFLL | (v5 << 32);
      v30 = (v97 + v98) ^ __ROR8__(v98, 51);
      v31 = v99 + (v100 ^ v29);
      v32 = __ROR8__(v100 ^ v29, 48);
      v33 = (v31 ^ v32) + __ROR8__(v97 + v98, 32);
      v34 = v33 ^ __ROR8__(v31 ^ v32, 43);
      v35 = v31 + v30;
      v99 = __ROR8__(v35, 32);
      v100 = v34;
      v97 = v33 ^ v29;
      v98 = v35 ^ __ROR8__(v30, 47);
      v7 += HIDWORD(v5);
    }

    else
    {
      v8 = v97;
      v9 = v98;
      v10 = v100;
      v11 = v100 ^ v101 & 0xFFFFFFFFFFFFFFLL;
      v12 = (v97 + v98) ^ __ROR8__(v98, 51);
      v13 = v99 + v11;
      v14 = (v99 + v11) ^ __ROR8__(v11, 48);
      v15 = v14 + __ROR8__(v97 + v98, 32);
      v16 = v15 ^ __ROR8__(v14, 43);
      v17 = v13 + v12;
      v18 = v17 ^ __ROR8__(v12, 47);
      v19 = __ROR8__(v17, 32);
      if ((v101 & 0x3FFFFFFFFFFFFFFLL) != 0)
      {
        v20 = v19;
      }

      else
      {
        v7 = v101;
        v20 = v99;
      }

      if ((v101 & 0x3FFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v15 ^ v101 & 0xFFFFFFFFFFFFFFLL;
        v9 = v18;
        v10 = v16;
      }

      v21 = v10 ^ v6;
      v22 = v8 + v9;
      v23 = v22 ^ __ROR8__(v9, 51);
      v24 = v20 + v21;
      v25 = __ROR8__(v21, 48);
      v26 = (v24 ^ v25) + __ROR8__(v22, 32);
      v27 = v26 ^ __ROR8__(v24 ^ v25, 43);
      v28 = v24 + v23;
      v99 = __ROR8__(v28, 32);
      v100 = v27;
      v97 = v26 ^ v6;
      v98 = v28 ^ __ROR8__(v23, 47);
    }

    v101 = v7 + 0x800000000000000;
    v36 = std::map<long long,std::shared_ptr<mlcore::EntityQueryResult>>::at(*(self->_itemEntityQueryResults.__ptr_ + 1), v6);
    v38 = *v36;
    v37 = v36[1];
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    for (i = 0; i < mlcore::EntityQueryResult::entityCount(v38); ++i)
    {
      v40 = mlcore::EntityQueryResult::persistentIDAtIndex(v38);
      v41 = v101;
      if ((v101 & 0x400000000000000) != 0)
      {
        v60 = v101 & 0xFFFFFFFFFFFFFFLL | (v40 << 32);
        v61 = (v97 + v98) ^ __ROR8__(v98, 51);
        v62 = v99 + (v100 ^ v60);
        v63 = __ROR8__(v100 ^ v60, 48);
        v64 = (v62 ^ v63) + __ROR8__(v97 + v98, 32);
        v65 = v64 ^ __ROR8__(v62 ^ v63, 43);
        v66 = v62 + v61;
        v99 = __ROR8__(v66, 32);
        v100 = v65;
        v97 = v64 ^ v60;
        v98 = v66 ^ __ROR8__(v61, 47);
        v59 = (v101 & 0xFF00000000000000) + HIDWORD(v40) + 0x800000000000000;
      }

      else
      {
        v42 = v97;
        v44 = v99;
        v43 = v98;
        v45 = v100;
        if ((v101 & 0x3FFFFFFFFFFFFFFLL) != 0)
        {
          v46 = (v97 + v98) ^ __ROR8__(v98, 51);
          v47 = v99 + (v100 ^ v101 & 0xFFFFFFFFFFFFFFLL);
          v48 = __ROR8__(v100 ^ v101 & 0xFFFFFFFFFFFFFFLL, 48);
          v49 = (v47 ^ v48) + __ROR8__(v97 + v98, 32);
          v45 = v49 ^ __ROR8__(v47 ^ v48, 43);
          v50 = v47 + v46;
          v43 = v50 ^ __ROR8__(v46, 47);
          v44 = __ROR8__(v50, 32);
          v42 = v49 ^ v101 & 0xFFFFFFFFFFFFFFLL;
          v41 = v101 & 0xFF00000000000000;
        }

        v51 = v45 ^ v40;
        v52 = v42 + v43;
        v53 = (v42 + v43) ^ __ROR8__(v43, 51);
        v54 = v44 + v51;
        v55 = __ROR8__(v51, 48);
        v56 = (v54 ^ v55) + __ROR8__(v52, 32);
        v57 = v56 ^ __ROR8__(v54 ^ v55, 43);
        v58 = v54 + v53;
        v99 = __ROR8__(v58, 32);
        v100 = v57;
        v97 = v56 ^ v40;
        v98 = v58 ^ __ROR8__(v53, 47);
        v59 = v41 + 0x800000000000000;
      }

      v101 = v59;
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    ++v3;
  }

  v67 = (v97 + v98) ^ __ROR8__(v98, 51);
  v68 = v99 + (v100 ^ v101);
  v69 = __ROR8__(v100 ^ v101, 48);
  v70 = (v68 ^ v69) + __ROR8__(v97 + v98, 32);
  v71 = v70 ^ __ROR8__(v68 ^ v69, 43);
  v72 = v68 + v67;
  v73 = v72 ^ __ROR8__(v67, 47);
  v74 = (v70 ^ v101) + v73;
  v75 = v74 ^ __ROR8__(v73, 51);
  v76 = (__ROR8__(v72, 32) ^ 0xFFLL) + v71;
  v77 = __ROR8__(v71, 48);
  v78 = __ROR8__(v74, 32) + (v76 ^ v77);
  v79 = v78 ^ __ROR8__(v76 ^ v77, 43);
  v80 = v75 + v76;
  v81 = v80 ^ __ROR8__(v75, 47);
  v82 = v81 + v78;
  v83 = v82 ^ __ROR8__(v81, 51);
  v84 = __ROR8__(v80, 32) + v79;
  v85 = __ROR8__(v79, 48);
  v86 = __ROR8__(v82, 32) + (v84 ^ v85);
  v87 = v86 ^ __ROR8__(v84 ^ v85, 43);
  v88 = v83 + v84;
  v89 = v88 ^ __ROR8__(v83, 47);
  v90 = v89 + v86;
  v91 = v90 ^ __ROR8__(v89, 51);
  v92 = __ROR8__(v88, 32) + v87;
  v93 = __ROR8__(v87, 48);
  v94 = __ROR8__(v90, 32) + (v92 ^ v93);
  return (v91 + v92) ^ __ROR8__(v91, 47) ^ v94 ^ __ROR8__(v91 + v92, 32) ^ v94 ^ __ROR8__(v92 ^ v93, 43);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else if ([(MPModelLibraryModelSectionedCollectionDataSource *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(MPModelLibraryModelSectionedCollectionDataSource *)self hasSameContentAsDataSource:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_allowedEntityIdentifiersContainsAllPersistentIDs
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(MPMediaLibraryEntityTranslationContext *)self->_sectionTranslationContext allowedEntityIdentifiers];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 library];
        if ([v7 persistentID])
        {
        }

        else
        {
          v8 = [v6 musicKit_possibleLibraryPersistentID] == 0;

          if (v8)
          {
            v9 = 0;
            goto LABEL_13;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_13:

  return v9;
}

- (unint64_t)_adjustedIndexForSectionIndex:(int64_t)a3
{
  if (self->_allowedSectionPersistentIDToSectionQueryResultsIndexMap.__tree_.__size_)
  {
    v5 = self->_allowedSectionPersistentIDs.__begin_[a3];
    v10[0] = v5;
    for (i = self->_allowedSectionPersistentIDToSectionQueryResultsIndexMap.__tree_.__end_node_.__left_; i; i = *i)
    {
      v7 = i[4];
      if (v5 >= v7)
      {
        if (v7 >= v5)
        {
          goto LABEL_8;
        }

        ++i;
      }
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MPModelLibraryModelSectionedCollectionDataSource.mm" lineNumber:263 description:@"_allowedSectionPersistentIDToSectionQueryResultsIndexMap must contain an entry for every value in _allowedSectionIdentifiers"];

LABEL_8:
    v10[10] = v10;
    return std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&self->_allowedSectionPersistentIDToSectionQueryResultsIndexMap, v5)[5];
  }

  return a3;
}

- (void)_populateIndexMap
{
  v3 = 0;
  v33 = *MEMORY[0x1E69E9840];
  while (v3 < mlcore::EntityQueryResult::entityCount(self->_sectionEntityQueryResult.__ptr_))
  {
    v26 = mlcore::EntityQueryResult::persistentIDAtIndex(self->_sectionEntityQueryResult.__ptr_);
    v31 = &v26;
    std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&self->_allowedSectionPersistentIDToSectionQueryResultsIndexMap, v26)[5] = v3++;
  }

  v4 = [(MPMediaLibraryEntityTranslationContext *)self->_sectionTranslationContext allowedEntityIdentifiers];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v27 + 1) + 8 * v8) library];
        v10 = [v9 persistentID];

        for (i = self->_allowedSectionPersistentIDToSectionQueryResultsIndexMap.__tree_.__end_node_.__left_; i; i = *i)
        {
          v12 = i[4];
          if (v10 >= v12)
          {
            if (v12 >= v10)
            {
              end = self->_allowedSectionPersistentIDs.__end_;
              cap = self->_allowedSectionPersistentIDs.__cap_;
              if (end >= cap)
              {
                begin = self->_allowedSectionPersistentIDs.__begin_;
                v17 = end - begin;
                v18 = end - begin;
                v19 = v18 + 1;
                if ((v18 + 1) >> 61)
                {
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                v20 = cap - begin;
                if (v20 >> 2 > v19)
                {
                  v19 = v20 >> 2;
                }

                if (v20 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v21 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v21 = v19;
                }

                if (v21)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v21);
                }

                v22 = end - begin;
                v23 = (8 * v18);
                v24 = (8 * v18 - 8 * v22);
                *v23 = v10;
                v15 = v23 + 1;
                memcpy(v24, begin, v17);
                v25 = self->_allowedSectionPersistentIDs.__begin_;
                self->_allowedSectionPersistentIDs.__begin_ = v24;
                self->_allowedSectionPersistentIDs.__end_ = v15;
                self->_allowedSectionPersistentIDs.__cap_ = 0;
                if (v25)
                {
                  operator delete(v25);
                }
              }

              else
              {
                *end = v10;
                v15 = end + 1;
              }

              self->_allowedSectionPersistentIDs.__end_ = v15;
              break;
            }

            ++i;
          }
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }
}

- (id)indexPathForItemWithIdentifiersIntersectingSet:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = v4;
  if (!self->_sectionEntityQueryResult.__ptr_ || ([v4 library], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "persistentID"), v5, !v6))
  {
LABEL_26:
    v19 = 0;
    goto LABEL_27;
  }

  v7 = 0;
  do
  {
    if (v7 >= mlcore::EntityQueryResult::entityCount(self->_sectionEntityQueryResult.__ptr_))
    {
      goto LABEL_26;
    }

    v8 = mlcore::EntityQueryResult::persistentIDAtIndex(self->_sectionEntityQueryResult.__ptr_);
    v9 = v8;
    begin = self->_allowedSectionPersistentIDs.__begin_;
    end = self->_allowedSectionPersistentIDs.__end_;
    v12 = begin;
    if (begin != end)
    {
      while (*v12 != v8)
      {
        if (++v12 == end)
        {
          v12 = self->_allowedSectionPersistentIDs.__end_;
          break;
        }
      }
    }

    if (end == v12)
    {
      v14 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        v23 = self;
        v24 = 2048;
        v25 = v7;
        v26 = 2048;
        v27 = v9;
        _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEBUG, "MPModelLibraryModelSectionedCollectionDataSource %p: indexPathForItemWithIdentifiersIntersectingSet: adjustedSectionIndex not translated [currentSectionPersistentID not found in _allowedSectionPersistentIDs] adjustedSectionIndex=%zu currentSectionPersistentID=%lld", buf, 0x20u);
      }

      v13 = v7;
    }

    else
    {
      v13 = v12 - begin;
    }

    v15 = std::map<long long,std::shared_ptr<mlcore::EntityQueryResult>>::at(*(self->_itemEntityQueryResults.__ptr_ + 1), v9);
    v16 = *v15;
    v17 = v15[1];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    for (i = 0; ; ++i)
    {
      if (i >= mlcore::EntityQueryResult::entityCount(v16))
      {
        v19 = 0;
        if (!v17)
        {
          goto LABEL_22;
        }

LABEL_21:
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        goto LABEL_22;
      }

      if (mlcore::EntityQueryResult::persistentIDAtIndex(v16) == v6)
      {
        break;
      }
    }

    v19 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:v13];
    if (v17)
    {
      goto LABEL_21;
    }

LABEL_22:
    ++v7;
  }

  while (!v19);
LABEL_27:

  return v19;
}

- (id)identifiersForSectionAtIndex:(int64_t)a3
{
  ptr = self->_sectionEntityQueryResult.__ptr_;
  if (ptr && mlcore::EntityQueryResult::entityCount(ptr))
  {
    v7 = [(MPModelLibraryModelSectionedCollectionDataSource *)self _adjustedIndexForSectionIndex:a3];
    v8 = mlcore::EntityQueryResult::entityCount(self->_sectionEntityQueryResult.__ptr_);
    if (v7 >= v8)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"MPModelLibraryModelSectionedCollectionDataSource.mm" lineNumber:192 description:{@"Adjusted section index out of bounds: %ld (sectionIndex = %ld / sectionEntityCount = %ld)", v7, a3, v8}];
    }

    v9 = mlcore::EntityQueryResult::propertyCaches(self->_sectionEntityQueryResult.__ptr_);
    v10 = *v9;
    if (0x84BDA12F684BDA13 * ((v9[1] - *v9) >> 3) <= v7)
    {
      std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = [(MPMediaLibraryEntityTranslationContext *)self->_sectionTranslationContext modelKind];
    v12 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [v11 modelClass]);

    v13 = [v12 identifiersForPropertyCache:v10 + 216 * v7 context:self->_sectionTranslationContext];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)identifiersForItemAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [v5 section];
  v7 = [(MPModelLibraryModelSectionedCollectionDataSource *)self _adjustedIndexForSectionIndex:v6];
  v8 = mlcore::EntityQueryResult::entityCount(self->_sectionEntityQueryResult.__ptr_);
  if (v7 >= v8)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"MPModelLibraryModelSectionedCollectionDataSource.mm" lineNumber:167 description:{@"Adjusted section index out of bounds: %ld (sectionIndex = %ld / sectionEntityCount = %ld)", v7, v6, v8}];
  }

  v9 = mlcore::EntityQueryResult::persistentIDAtIndex(self->_sectionEntityQueryResult.__ptr_);
  v10 = std::map<long long,std::shared_ptr<mlcore::EntityQueryResult>>::at(*(self->_itemEntityQueryResults.__ptr_ + 1), v9);
  v12 = *v10;
  v11 = v10[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    mlcore::EntityQueryResult::entityCache(&v22, v12);
    v13 = (*(*v22 + 32))(v22);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v13)
    {
      v14 = [(MPModelLibraryModelSectionedCollectionDataSource *)self itemAtIndexPath:v5];
      v15 = [v14 identifiers];
    }

    else
    {
      v17 = [(MPModelRequest *)self->_request itemKind];
      v14 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [v17 modelClass]);

      v18 = mlcore::EntityQueryResult::propertyCaches(v12);
      v19 = [v5 item];
      if (0x84BDA12F684BDA13 * ((v18[1] - *v18) >> 3) <= v19)
      {
        std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
      }

      v15 = [v14 identifiersForPropertyCache:*v18 + 216 * v19 context:self->_itemTranslationContext];
    }

    v16 = v15;

    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 0;
    if (v11)
    {
LABEL_15:
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  return v16;
}

- (id)itemAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [v5 section];
  v7 = [(MPModelLibraryModelSectionedCollectionDataSource *)self _adjustedIndexForSectionIndex:v6];
  v8 = mlcore::EntityQueryResult::entityCount(self->_sectionEntityQueryResult.__ptr_);
  if (v7 >= v8)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"MPModelLibraryModelSectionedCollectionDataSource.mm" lineNumber:136 description:{@"Adjusted section index out of bounds: %ld (sectionIndex = %ld / sectionEntityCount = %ld)", v7, v6, v8}];
  }

  v9 = [(MPModelRequest *)self->_request itemKind];
  v10 = [objc_msgSend(v9 "modelClass")];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MPModelLibraryModelSectionedCollectionDataSource.mm" lineNumber:139 description:@"MPModelLibraryModelSectionedCollectionDataSource does not support MPModelLibraryPin"];

    v12 = 0;
  }

  else
  {
    v13 = mlcore::EntityQueryResult::persistentIDAtIndex(self->_sectionEntityQueryResult.__ptr_);
    v14 = std::map<long long,std::shared_ptr<mlcore::EntityQueryResult>>::at(*(self->_itemEntityQueryResults.__ptr_ + 1), v13);
    v16 = *v14;
    v15 = v14[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v16)
    {
      [v5 item];
      mlcore::EntityQueryResult::entityAtIndex(v16);
      +[MPMediaLibrary logDatabaseAccess];
      if (v23)
      {
        v17 = [(MPModelRequest *)self->_request itemKind];
        v18 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [v17 modelClass]);

        v19 = [(MPModelRequest *)self->_request itemProperties];
        v20 = (*(*v23 + 48))();
        v12 = [v18 objectForPropertySet:v19 entityClass:v20 propertyCache:mlcore::Entity::propertyCache(v23) context:self->_itemTranslationContext];
      }

      else
      {
        v12 = 0;
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }
    }

    else
    {
      v12 = 0;
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  return v12;
}

- (BOOL)hasSameContentAsDataSource:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (ptr = self->_sectionEntityQueryResult.__ptr_) != 0 && (v6 = v4[12]) != 0)
  {
    v7 = v4[13];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      ptr = self->_sectionEntityQueryResult.__ptr_;
    }

    v8 = mlcore::EntityQueryResult::entityCount(ptr);
    if (v8 == mlcore::EntityQueryResult::entityCount(v6))
    {
      v9 = 0;
      for (i = v7; ; v7 = i)
      {
        if (v9 >= mlcore::EntityQueryResult::entityCount(self->_sectionEntityQueryResult.__ptr_))
        {
          v21 = 1;
          if (v7)
          {
            goto LABEL_37;
          }

          goto LABEL_29;
        }

        v10 = mlcore::EntityQueryResult::persistentIDAtIndex(self->_sectionEntityQueryResult.__ptr_);
        if (v10 != mlcore::EntityQueryResult::persistentIDAtIndex(v6))
        {
          goto LABEL_30;
        }

        v11 = std::map<long long,std::shared_ptr<mlcore::EntityQueryResult>>::at(*(self->_itemEntityQueryResults.__ptr_ + 1), v10);
        v13 = *v11;
        v12 = v11[1];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = std::map<long long,std::shared_ptr<mlcore::EntityQueryResult>>::at(*(v4[10] + 8), v10);
        v16 = *v14;
        v15 = v14[1];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v13 || v16 == 0)
        {
          break;
        }

        v18 = mlcore::EntityQueryResult::entityCount(v13);
        if (v18 != mlcore::EntityQueryResult::entityCount(v16))
        {
          break;
        }

        v19 = 0;
        while (v19 < mlcore::EntityQueryResult::entityCount(v13))
        {
          v20 = mlcore::EntityQueryResult::persistentIDAtIndex(v13);
          ++v19;
          if (v20 != mlcore::EntityQueryResult::persistentIDAtIndex(v16))
          {
            goto LABEL_32;
          }
        }

        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        ++v9;
      }

LABEL_32:
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v21 = 0;
      v7 = i;
      if (!i)
      {
        goto LABEL_29;
      }
    }

    else
    {
LABEL_30:
      v21 = 0;
      if (!v7)
      {
        goto LABEL_29;
      }
    }

LABEL_37:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v21 = 0;
  }

LABEL_29:

  return v21;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  ptr = self->_sectionEntityQueryResult.__ptr_;
  if (!ptr || !mlcore::EntityQueryResult::entityCount(ptr))
  {
    return 0;
  }

  v7 = [(MPModelLibraryModelSectionedCollectionDataSource *)self _adjustedIndexForSectionIndex:a3];
  v8 = mlcore::EntityQueryResult::entityCount(self->_sectionEntityQueryResult.__ptr_);
  if (v7 >= v8)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MPModelLibraryModelSectionedCollectionDataSource.mm" lineNumber:82 description:{@"Adjusted section index out of bounds: %ld (sectionIndex = %ld / sectionEntityCount = %ld)", v7, a3, v8}];
  }

  v9 = mlcore::EntityQueryResult::persistentIDAtIndex(self->_sectionEntityQueryResult.__ptr_);
  v10 = std::map<long long,std::shared_ptr<mlcore::EntityQueryResult>>::at(*(self->_itemEntityQueryResults.__ptr_ + 1), v9);
  v11 = *v10;
  v12 = v10[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    v13 = mlcore::EntityQueryResult::entityCount(v11);
    if (!v12)
    {
      return v13;
    }

    goto LABEL_12;
  }

  v13 = 0;
  if (v12)
  {
LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v13;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v6 = [(MPModelLibraryModelSectionedCollectionDataSource *)self _adjustedIndexForSectionIndex:?];
  v7 = mlcore::EntityQueryResult::entityCount(self->_sectionEntityQueryResult.__ptr_);
  if (v6 >= v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MPModelLibraryModelSectionedCollectionDataSource.mm" lineNumber:59 description:{@"Adjusted section index out of bounds: %ld (sectionIndex = %ld / sectionEntityCount = %ld)", v6, a3, v7}];
  }

  mlcore::EntityQueryResult::entityAtIndex(self->_sectionEntityQueryResult.__ptr_);
  +[MPMediaLibrary logDatabaseAccess];
  if (v15)
  {
    v8 = [(MPModelRequest *)self->_request sectionKind];
    v9 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [v8 modelClass]);

    v10 = [(MPModelRequest *)self->_request sectionProperties];
    v11 = (*(*v15 + 48))();
    v12 = [v9 objectForPropertySet:v10 entityClass:v11 propertyCache:mlcore::Entity::propertyCache(v15) context:self->_sectionTranslationContext];
  }

  else
  {
    v12 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return v12;
}

- (unint64_t)numberOfSections
{
  result = self->_sectionEntityQueryResult.__ptr_;
  if (result)
  {
    return mlcore::EntityQueryResult::entityCount(result);
  }

  return result;
}

- (MPModelLibraryModelSectionedCollectionDataSource)initWithRequest:(id)a3 sectionQueryResults:(shared_ptr<mlcore:(void *)a5 :EntityQueryResult>)a4 itemQueryResults:
{
  ptr = a4.__ptr_;
  v8 = a3;
  v9 = [(MPModelLibraryModelSectionedCollectionDataSource *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    v12 = *ptr;
    v11 = *(ptr + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v10->_sectionEntityQueryResult.__cntrl_;
    v10->_sectionEntityQueryResult.__ptr_ = v12;
    v10->_sectionEntityQueryResult.__cntrl_ = v11;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    operator new();
  }

  return 0;
}

@end