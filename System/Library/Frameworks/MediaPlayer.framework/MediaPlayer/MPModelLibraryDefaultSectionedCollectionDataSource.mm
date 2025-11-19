@interface MPModelLibraryDefaultSectionedCollectionDataSource
- (BOOL)_allowedEntityIdentifiersContainsAllPersistentIDs;
- (BOOL)_usesSections;
- (BOOL)hasSameContentAsDataSource:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MPModelLibraryDefaultSectionedCollectionDataSource)initWithRequest:(id)a3 itemQueryResults:(shared_ptr<mlcore::EntityQueryResult>)a4;
- (_NSRange)optionalSectionIndexTitlesRange;
- (id).cxx_construct;
- (id)_buildIndexPathToContainerUniqueIDMapFromItemQueryResults:(shared_ptr<mlcore::EntityQueryResult>)a3;
- (id)_constructEmptyLibraryPinWithIdentifiers:(id)a3 referralObject:(id)a4 underlyingObjectClass:(Class)a5;
- (id)_libraryPinAtIndexPath:(id)a3 withEntity:(shared_ptr<mlcore::Entity>)a4;
- (id)_stateDumpObject;
- (id)identifiersForItemAtIndexPath:(id)a3;
- (id)indexPathForItemWithIdentifiersIntersectingSet:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (id)sectionIndexTitles;
- (int64_t)indexOfSectionForSectionIndexTitleAtIndex:(int64_t)a3;
- (shared_ptr<mlcore::EntityQueryResult>)itemQueryResults;
- (unint64_t)_adjustedGlobalIndexForIndexPath:(id)a3;
- (unint64_t)hash;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
- (unint64_t)numberOfSections;
- (void)_populateIndexMap;
@end

@implementation MPModelLibraryDefaultSectionedCollectionDataSource

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 4) = 0;
  *(self + 5) = self + 48;
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

- (shared_ptr<mlcore::EntityQueryResult>)itemQueryResults
{
  cntrl = self->_itemQueryResults.__cntrl_;
  *v2 = self->_itemQueryResults.__ptr_;
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
  v3 = MSVHasherSharedSeed();
  v4 = 0;
  v69 = 0;
  v65 = v3 ^ 0x736F6D6570736575;
  v66 = v5 ^ 0x646F72616E646F6DLL;
  v67 = v3 ^ 0x6C7967656E657261;
  v68 = v5 ^ 0x7465646279746573;
  while (v4 < mlcore::EntityQueryResult::entityCount(self->_itemQueryResults.__ptr_))
  {
    v6 = mlcore::EntityQueryResult::persistentIDAtIndex(self->_itemQueryResults.__ptr_);
    v7 = v69 & 0xFF00000000000000;
    if ((v69 & 0x400000000000000) != 0)
    {
      v29 = v69 & 0xFFFFFFFFFFFFFFLL | (v6 << 32);
      v30 = (v65 + v66) ^ __ROR8__(v66, 51);
      v31 = v67 + (v68 ^ v29);
      v32 = __ROR8__(v68 ^ v29, 48);
      v33 = (v31 ^ v32) + __ROR8__(v65 + v66, 32);
      v34 = v33 ^ __ROR8__(v31 ^ v32, 43);
      v35 = v31 + v30;
      v67 = __ROR8__(v35, 32);
      v68 = v34;
      v65 = v33 ^ v29;
      v66 = v35 ^ __ROR8__(v30, 47);
      v7 += HIDWORD(v6);
    }

    else
    {
      v8 = v65;
      v9 = v66;
      v10 = v68;
      v11 = v68 ^ v69 & 0xFFFFFFFFFFFFFFLL;
      v12 = (v65 + v66) ^ __ROR8__(v66, 51);
      v13 = v67 + v11;
      v14 = (v67 + v11) ^ __ROR8__(v11, 48);
      v15 = v14 + __ROR8__(v65 + v66, 32);
      v16 = v15 ^ __ROR8__(v14, 43);
      v17 = v13 + v12;
      v18 = v17 ^ __ROR8__(v12, 47);
      v19 = __ROR8__(v17, 32);
      if ((v69 & 0x3FFFFFFFFFFFFFFLL) != 0)
      {
        v20 = v19;
      }

      else
      {
        v7 = v69;
        v20 = v67;
      }

      if ((v69 & 0x3FFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v15 ^ v69 & 0xFFFFFFFFFFFFFFLL;
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
      v67 = __ROR8__(v28, 32);
      v68 = v27;
      v65 = v26 ^ v6;
      v66 = v28 ^ __ROR8__(v23, 47);
    }

    v69 = v7 + 0x800000000000000;
    ++v4;
  }

  v36 = (v65 + v66) ^ __ROR8__(v66, 51);
  v37 = v67 + (v68 ^ v69);
  v38 = __ROR8__(v68 ^ v69, 48);
  v39 = (v37 ^ v38) + __ROR8__(v65 + v66, 32);
  v40 = v39 ^ __ROR8__(v37 ^ v38, 43);
  v41 = v37 + v36;
  v42 = v41 ^ __ROR8__(v36, 47);
  v43 = (v39 ^ v69) + v42;
  v44 = v43 ^ __ROR8__(v42, 51);
  v45 = (__ROR8__(v41, 32) ^ 0xFFLL) + v40;
  v46 = __ROR8__(v40, 48);
  v47 = __ROR8__(v43, 32) + (v45 ^ v46);
  v48 = v47 ^ __ROR8__(v45 ^ v46, 43);
  v49 = v44 + v45;
  v50 = v49 ^ __ROR8__(v44, 47);
  v51 = v50 + v47;
  v52 = v51 ^ __ROR8__(v50, 51);
  v53 = __ROR8__(v49, 32) + v48;
  v54 = __ROR8__(v48, 48);
  v55 = __ROR8__(v51, 32) + (v53 ^ v54);
  v56 = v55 ^ __ROR8__(v53 ^ v54, 43);
  v57 = v52 + v53;
  v58 = v57 ^ __ROR8__(v52, 47);
  v59 = v58 + v55;
  v60 = v59 ^ __ROR8__(v58, 51);
  v61 = __ROR8__(v57, 32) + v56;
  v62 = __ROR8__(v56, 48);
  v63 = __ROR8__(v59, 32) + (v61 ^ v62);
  return (v60 + v61) ^ __ROR8__(v60, 47) ^ v63 ^ __ROR8__(v60 + v61, 32) ^ v63 ^ __ROR8__(v61 ^ v62, 43);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else if ([(MPModelLibraryDefaultSectionedCollectionDataSource *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self hasSameContentAsDataSource:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_constructEmptyLibraryPinWithIdentifiers:(id)a3 referralObject:(id)a4 underlyingObjectClass:(Class)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MPModelLibraryPin alloc];
  v10 = v7;
  if (!v7)
  {
    v10 = [v8 identifiers];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __132__MPModelLibraryDefaultSectionedCollectionDataSource__constructEmptyLibraryPinWithIdentifiers_referralObject_underlyingObjectClass___block_invoke;
  v14[3] = &unk_1E76770A8;
  v11 = v8;
  v15 = v11;
  v16 = a5;
  v12 = [(MPModelObject *)v9 initWithIdentifiers:v10 block:v14];
  if (!v7)
  {
  }

  return v12;
}

void __132__MPModelLibraryDefaultSectionedCollectionDataSource__constructEmptyLibraryPinWithIdentifiers_referralObject_underlyingObjectClass___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) hasLoadedValueForKey:@"MPModelPropertyLibraryPinPosition"])
  {
    v3 = [*(a1 + 32) position];
  }

  else
  {
    v3 = 0;
  }

  [v9 setPosition:v3];
  if ([*(a1 + 32) hasLoadedValueForKey:@"MPModelPropertyLibraryPinPositionUUID"])
  {
    v4 = [*(a1 + 32) positionUUID];
    [v9 setPositionUUID:v4];
  }

  else
  {
    [v9 setPositionUUID:&stru_1F149ECA8];
  }

  if ([*(a1 + 32) hasLoadedValueForKey:@"MPModelPropertyLibraryPinEntityType"])
  {
    v5 = [*(a1 + 32) pinnedEntityType];
  }

  else
  {
    v5 = 0;
  }

  [v9 setPinnedEntityType:v5];
  if ([*(a1 + 32) hasLoadedValueForKey:@"MPModelPropertyLibraryPinDefaultAction"])
  {
    v6 = [*(a1 + 32) defaultAction];
  }

  else
  {
    v6 = 3;
  }

  [v9 setDefaultAction:v6];
  if ([*(a1 + 32) hasLoadedValueForKey:@"MPModelPropertyLibraryPinEntityPersistentID"])
  {
    v7 = [*(a1 + 32) pinnedEntityPersistentID];
  }

  else
  {
    v7 = 0;
  }

  [v9 setPinnedEntityPersistentID:v7];
  v8 = *(a1 + 40);
  if (!v8)
  {
    [v9 setSong:0];
    [v9 setPlaylist:0];
    [v9 setAlbum:0];
LABEL_21:
    [v9 setArtist:0];
    goto LABEL_22;
  }

  if ([v8 isSubclassOfClass:objc_opt_class()])
  {
    [v9 setSong:0];
    goto LABEL_22;
  }

  if ([*(a1 + 40) isSubclassOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if ([*(a1 + 40) isSubclassOfClass:objc_opt_class()])
  {
    [v9 setAlbum:0];
  }

  else if ([*(a1 + 40) isSubclassOfClass:objc_opt_class()])
  {
    [v9 setPlaylist:0];
  }

LABEL_22:
}

- (id)_buildIndexPathToContainerUniqueIDMapFromItemQueryResults:(shared_ptr<mlcore::EntityQueryResult>)a3
{
  ptr = a3.__ptr_;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:mlcore::EntityQueryResult::entityCount(*a3.__ptr_)];
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:mlcore::EntityQueryResult::entityCount(*ptr)];
  for (i = 0; i < mlcore::EntityQueryResult::entityCount(self->_itemQueryResults.__ptr_); ++i)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:mlcore::EntityQueryResult::persistentIDAtIndex(self->_itemQueryResults.__ptr_)];
    v9 = [v5 objectForKey:v8];

    if (v9)
    {
      v10 = [v5 objectForKey:v8];
      v11 = [v10 integerValue] + 1;
    }

    else
    {
      v11 = 1;
    }

    v12 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:0];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v11];
    [v6 setObject:v13 forKeyedSubscript:v12];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    [v5 setObject:v14 forKeyedSubscript:v8];
  }

  v15 = [v6 copy];

  return v15;
}

- (id)_libraryPinAtIndexPath:(id)a3 withEntity:(shared_ptr<mlcore::Entity>)a4
{
  var0 = a4.var0;
  v122[1] = *MEMORY[0x1E69E9840];
  v77 = a3;
  v6 = [(MPModelLibraryRequest *)self->_request filteringOptions];
  v7 = +[MPRestrictionsMonitor sharedRestrictionsMonitor];
  v8 = [v7 allowsExplicitContent];
  v75 = *&v6 & 0x10000;
  v9 = (*&v6 & 0x10000) != 0;

  v96 = 0;
  v95 = 0;
  MEMORY[0x1A58DF930](v97, 0, &v95);
  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v96);
  }

  mlcore::Entity::propertyCache(*var0);
  mlcore::PropertyCache::PropertyCache();
  v10 = mlcore::Entity::persistentID(*var0);
  mlcore::Entity::propertyCache(*var0);
  v11 = mlcore::PropertyCache::PropertyCache();
  v12 = *var0;
  v13 = mlcore::LibraryPinPropertyEntityType(v11);
  v14 = mlcore::Entity::valueForProperty<int>(v12, v13);
  v15 = *var0;
  v16 = mlcore::LibraryPinPropertyEntityPersistentID(v14);
  if (!mlcore::PropertyCache::hasValueForProperty((v15 + 8), v16))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1A58E1460](exception, "faulting not implemented yet");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v17 = mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::valueForProperty(v15 + 8, v16);
  v18 = v17;
  v78 = 0;
  v19 = 0;
  if (!v10)
  {
    v79 = 0;
    goto LABEL_17;
  }

  v79 = 0;
  if (!v17)
  {
    goto LABEL_17;
  }

  if (v14 > 3)
  {
    if (v14 == 4)
    {
      v78 = MPModelRelationshipLibraryPinAlbum;
      v20 = +[MPModelAlbumKind identityKind];
      v21 = objc_opt_class();
    }

    else
    {
      v19 = 0;
      v78 = 0;
      v79 = 0;
      if (v14 != 7)
      {
        goto LABEL_17;
      }

      v78 = MPModelRelationshipLibraryPinArtist;
      v20 = +[MPModelArtistKind identityKind];
      v21 = objc_opt_class();
    }
  }

  else if (v14)
  {
    v19 = 0;
    v78 = 0;
    v79 = 0;
    if (v14 != 1)
    {
      goto LABEL_17;
    }

    v78 = MPModelRelationshipLibraryPinPlaylist;
    v20 = +[MPModelPlaylistKind identityKind];
    v21 = objc_opt_class();
  }

  else
  {
    v78 = MPModelRelationshipLibraryPinSong;
    v20 = +[MPModelSongKind identityKind];
    v21 = objc_opt_class();
  }

  v19 = v21;
  v79 = v20;
LABEL_17:
  v74 = v9 | v8;
  v22 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v23 = v79;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138545410;
    *&buf[4] = v77;
    v103 = 2048;
    v104 = v10;
    v105 = 2048;
    v106 = v18;
    v107 = 1024;
    v108 = v14;
    v109 = 2114;
    v110 = v79;
    v111 = 2114;
    v112 = v19;
    v113 = 1024;
    v114 = v75 >> 16;
    v115 = 1024;
    v116 = v8;
    v117 = 1024;
    v118 = v74 & 1;
    _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_DEFAULT, "Starting to build out pin at indexPath=%{public}@, pinPID=%lld, entityPID=%lld, entityType=%d, relationshipModelKind=%{public}@, relationshipModelClass=%{public}@, requestIgnoresRestrictedContent=%{BOOL}u, allowsExplicitContent=%{BOOL}u, returnOriginalPin=%{BOOL}u", buf, 0x4Cu);
  }

  if (!v10 || !v18 || !v79 || !v19)
  {
    v32 = MEMORY[0x1E69B13D8];
    v120[0] = @"Pin PersistentID";
    v33 = [MEMORY[0x1E696AD98] numberWithLongLong:v10];
    v121[0] = v33;
    v120[1] = @"Entity PersistentID";
    v34 = [MEMORY[0x1E696AD98] numberWithLongLong:v18];
    v121[1] = v34;
    v120[2] = @"PinnedEntityType";
    v23 = v79;
    v35 = [MEMORY[0x1E696AD98] numberWithInt:v14];
    v121[2] = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:v120 count:3];
    v122[0] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:1];
    [v32 snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"RequestBuiltInvalidPin" context:@"Invalid Library Pin" triggerThresholdValues:0 events:v37 completion:0];

LABEL_50:
    v50 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self identifiersForItemAtIndexPath:v77];
    v49 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self _constructEmptyLibraryPinWithIdentifiers:v50 referralObject:0 underlyingObjectClass:0];
    v51 = os_log_create("com.apple.amp.mediaplayer", "Default_Oversize");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v50;
      _os_log_impl(&dword_1A238D000, v51, OS_LOG_TYPE_ERROR, "request produced an invalid pin - creating empty pin with identifiers=%{public}@", buf, 0xCu);
    }

    v48 = 0;
    goto LABEL_56;
  }

  v24 = [MPIdentifierSet alloc];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __88__MPModelLibraryDefaultSectionedCollectionDataSource__libraryPinAtIndexPath_withEntity___block_invoke;
  v92[3] = &unk_1E767CDA0;
  v92[4] = self;
  v92[5] = v18;
  v73 = [(MPIdentifierSet *)v24 initWithSource:@"MPModelLibraryDefaultSectionedCollectionDataSource" modelKind:v79 block:v92];
  v25 = [(MPModelLibraryRequest *)self->_request filteringOptions];
  v26 = [MPMediaLibraryView alloc];
  v27 = [(MPModelLibraryRequest *)self->_request mediaLibrary];
  v76 = [(MPMediaLibraryView *)v26 initWithLibrary:v27 filteringOptions:v25 | v75 ^ 0x10000];

  v72 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:v19];
  v28 = [(MPModelRequest *)self->_request itemProperties];
  v29 = [v28 relationships];
  v30 = [v29 objectForKey:v78];
  v119 = v73;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
  if (v72)
  {
    [v72 propertiesQueryForPropertySet:v30 scopedContainers:0 allowedItemIdentifiers:v31 view:v76];
  }

  else
  {
    v90 = 0;
    v91 = 0;
  }

  v86 = v90;
  v87 = v91;
  if (v91)
  {
    atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v85 = 0;
  if (v76)
  {
    [(MPMediaLibraryView *)v76 resultsForCoreQuery:&v86 error:&v85];
    v71 = v85;
  }

  else
  {
    v71 = 0;
    v88 = 0;
    v89 = 0;
  }

  if (v87)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v87);
  }

  if (!v71)
  {
    v62 = v88;
    if (v88)
    {
      v63 = v89;
      if (v89)
      {
        atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v64 = mlcore::PropertiesQueryResult::allResults(v62);
      v82 = 0;
      v83 = 0;
      v84 = 0;
      std::vector<mlcore::PropertyCache>::__init_with_size[abi:ne200100]<mlcore::PropertyCache*,mlcore::PropertyCache*>(&v82, *v64, v64[1], 0x84BDA12F684BDA13 * ((v64[1] - *v64) >> 3));
      if (v83 != v82)
      {
        mlcore::PropertyCache::PropertyCache();
        v101[0] = &unk_1F14959F0;
        v101[3] = v101;
        mlcore::PropertyCache::mergePropertiesFromCache();
        std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](v101);
        mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(buf);
      }

      *buf = &v82;
      std::vector<mlcore::PropertyCache>::__destroy_vector::operator()[abi:ne200100](buf);
      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v63);
      }
    }
  }

  v38 = [(MPModelRequest *)self->_request itemKind];
  v39 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [v38 modelClass]);

  v40 = [(MPModelRequest *)self->_request itemProperties];
  v41 = [v39 objectForPropertySet:v40 entityClass:(*(**var0 + 48))() propertyCache:v94 context:self->_entityTranslationContext];

  if (self->_indexPathToContainerUniqueIDMap)
  {
    v42 = [v41 identifiers];
    v43 = [(MPMediaLibraryEntityTranslationContext *)self->_entityTranslationContext mediaLibrary];
    v44 = [v43 uniqueIdentifier];
    v45 = [@"Library-DefaultSectionedCollection-" stringByAppendingString:v44];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __88__MPModelLibraryDefaultSectionedCollectionDataSource__libraryPinAtIndexPath_withEntity___block_invoke_3;
    v80[3] = &unk_1E767EE00;
    v80[4] = self;
    v81 = v77;
    v46 = [v42 copyWithSource:v45 block:v80];
    v47 = [v41 copyWithIdentifiers:v46 block:&__block_literal_global_97];

    v41 = v47;
  }

  if (v89)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v89);
  }

  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if (!v41)
  {
    goto LABEL_50;
  }

  v48 = v41;
  if (![v48 persistentID]|| ![v48 pinnedEntityPersistentID]|| [v48 pinnedEntityType]!= 1 && [v48 pinnedEntityType]!= 4 && [v48 pinnedEntityType]!= 3 && [v48 pinnedEntityType]!= 2)
  {
    v52 = MEMORY[0x1E69B13D8];
    v98[0] = @"Pin PersistentID";
    v53 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[NSObject persistentID](v48, "persistentID")}];
    v99[0] = v53;
    v98[1] = @"Entity PersistentID";
    v54 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[NSObject pinnedEntityPersistentID](v48, "pinnedEntityPersistentID")}];
    v99[1] = v54;
    v98[2] = @"PinnedEntityType";
    v55 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject pinnedEntityType](v48, "pinnedEntityType")}];
    v99[2] = v55;
    v23 = v79;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:3];
    v100 = v56;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
    [v52 snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"QueryProducedInvalidPin" context:@"Invalid Library Pin" triggerThresholdValues:0 events:v57 completion:0];

    v50 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self identifiersForItemAtIndexPath:v77];
    v58 = os_log_create("com.apple.amp.mediaplayer", "Default_Oversize");
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v48;
      v103 = 2114;
      v104 = v50;
      _os_log_impl(&dword_1A238D000, v58, OS_LOG_TYPE_ERROR, "request produced an invalid pin=%{public}@ - creating empty pin with identifiers=%{public}@", buf, 0x16u);
    }

    v49 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self _constructEmptyLibraryPinWithIdentifiers:v50 referralObject:0 underlyingObjectClass:0];
    v51 = v48;
    goto LABEL_56;
  }

  if (v74)
  {
    v49 = v48;
    v23 = v79;
    goto LABEL_58;
  }

  v65 = [v48 pinnedEntityType];
  if (v65 <= 2)
  {
    v23 = v79;
    if (v65 == 1)
    {
      v50 = [v48 anyObject];
      if ([v50 isExplicitSong])
      {
        v49 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self _constructEmptyLibraryPinWithIdentifiers:0 referralObject:v48 underlyingObjectClass:objc_opt_class()];

        v51 = _MPLogCategoryDefault();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v50;
          v67 = "pinned song=%{public}@ is explicit and restrictions are enforced";
          goto LABEL_91;
        }

        goto LABEL_56;
      }

      goto LABEL_88;
    }

    if (v65 == 2)
    {
      v50 = [v48 anyObject];
      v66 = [v50 trackCount];
      if (!((v66 == 0) | [v50 hasAnyCleanTracks] & 1))
      {
        v49 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self _constructEmptyLibraryPinWithIdentifiers:0 referralObject:v48 underlyingObjectClass:objc_opt_class()];

        v51 = _MPLogCategoryDefault();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v50;
          v67 = "pinned playlist=%{public}@ has no clean tracks and restrictions are enforced";
LABEL_91:
          v68 = v51;
          v69 = 12;
          goto LABEL_92;
        }

        goto LABEL_56;
      }

LABEL_88:
      v49 = v48;
      goto LABEL_57;
    }

LABEL_81:
    v50 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self identifiersForItemAtIndexPath:v77];
    v49 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self _constructEmptyLibraryPinWithIdentifiers:v50 referralObject:0 underlyingObjectClass:0];

    v51 = _MPLogCategoryDefault();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = v48;
      v103 = 2114;
      v104 = v49;
      v105 = 2114;
      v106 = v50;
      v67 = "pin=%{public}@ has incorrect type, returning %{public}@ with identifiers=%{public}@";
      v68 = v51;
      v69 = 32;
LABEL_92:
      _os_log_impl(&dword_1A238D000, v68, OS_LOG_TYPE_DEFAULT, v67, buf, v69);
      goto LABEL_56;
    }

    goto LABEL_56;
  }

  v23 = v79;
  if (v65 == 3)
  {
    v50 = [v48 anyObject];
    if ([v50 songCount] && !objc_msgSend(v50, "cleanSongCount"))
    {
      v49 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self _constructEmptyLibraryPinWithIdentifiers:0 referralObject:v48 underlyingObjectClass:objc_opt_class()];

      v51 = _MPLogCategoryDefault();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v50;
        v67 = "pinned artist=%{public}@ has no clean tracks and restrictions are enforced";
        goto LABEL_91;
      }

      goto LABEL_56;
    }

    goto LABEL_88;
  }

  if (v65 != 4)
  {
    goto LABEL_81;
  }

  v50 = [v48 anyObject];
  if ([v50 cleanSongCount])
  {
    goto LABEL_88;
  }

  v49 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self _constructEmptyLibraryPinWithIdentifiers:0 referralObject:v48 underlyingObjectClass:objc_opt_class()];

  v51 = _MPLogCategoryDefault();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v50;
    v67 = "pinned album=%{public}@ has no clean tracks and restrictions are enforced";
    goto LABEL_91;
  }

LABEL_56:

LABEL_57:
LABEL_58:
  v59 = os_log_create("com.apple.amp.mediaplayer", "Default_Oversize");
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v48;
    v103 = 2114;
    v104 = v49;
    _os_log_impl(&dword_1A238D000, v59, OS_LOG_TYPE_DEFAULT, "pin=%{public}@, returning object=%{public}@", buf, 0x16u);
  }

  v60 = v49;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v93);
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v94);

  mlcore::EntityQuery::~EntityQuery(v97);

  return v60;
}

void __88__MPModelLibraryDefaultSectionedCollectionDataSource__libraryPinAtIndexPath_withEntity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 64) mediaLibrary];
  v5 = [v4 uniqueIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__MPModelLibraryDefaultSectionedCollectionDataSource__libraryPinAtIndexPath_withEntity___block_invoke_2;
  v6[3] = &__block_descriptor_40_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v6[4] = *(a1 + 40);
  [v3 setLibraryIdentifiersWithDatabaseID:v5 block:v6];
}

void __88__MPModelLibraryDefaultSectionedCollectionDataSource__libraryPinAtIndexPath_withEntity___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:*(a1 + 40)];
  [v4 setContainerUniqueID:v3];
}

- (BOOL)_allowedEntityIdentifiersContainsAllPersistentIDs
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(MPMediaLibraryEntityTranslationContext *)self->_entityTranslationContext allowedEntityIdentifiers];
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

- (unint64_t)_adjustedGlobalIndexForIndexPath:(id)a3
{
  v5 = a3;
  v6 = mlcore::EntityQueryResult::sections(self->_itemQueryResults.__ptr_);
  v7 = [v5 item];
  v8 = v6[1];
  v9 = v8 - *v6;
  if (v8 != *v6 && [(MPModelLibraryDefaultSectionedCollectionDataSource *)self _usesSections])
  {
    v10 = [v5 section];
    v11 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 4);
    if (v10 >= v11)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"MPModelLibraryDefaultSectionedCollectionDataSource.mm" lineNumber:394 description:{@"Section index out of bounds: %ld (sectionCount = %ld)", v10, v11}];
    }

    v12 = *v6 + 48 * v10;
    if (*(v12 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *v12, *(v12 + 8));
    }

    else
    {
      v13 = *v12;
      v21.__r_.__value_.__r.__words[2] = *(v12 + 16);
      *&v21.__r_.__value_.__l.__data_ = v13;
    }

    v14 = *(v12 + 24);
    v23 = *(v12 + 40);
    v22 = v14;
    v7 += *mlcore::Section::range(&v21);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  if (self->_allowedItemPersistentIDToItemQueryResultsIndexMap.__tree_.__size_)
  {
    v15 = self->_allowedItemPersistentIDs.__begin_[v7];
    v21.__r_.__value_.__r.__words[0] = v15;
    for (i = self->_allowedItemPersistentIDToItemQueryResultsIndexMap.__tree_.__end_node_.__left_; i; i = *i)
    {
      v17 = i[4];
      if (v15 >= v17)
      {
        if (v17 >= v15)
        {
          goto LABEL_17;
        }

        ++i;
      }
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MPModelLibraryDefaultSectionedCollectionDataSource.mm" lineNumber:404 description:@"_allowedItemPersistentIDToItemQueryResultsIndexMap must contain an entry for every value in _allowedItemIdentifiers"];

    v15 = v21.__r_.__value_.__r.__words[0];
LABEL_17:
    v24 = &v21;
    v7 = std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&self->_allowedItemPersistentIDToItemQueryResultsIndexMap, v15)[5];
  }

  return v7;
}

- (void)_populateIndexMap
{
  v3 = 0;
  v33 = *MEMORY[0x1E69E9840];
  while (v3 < mlcore::EntityQueryResult::entityCount(self->_itemQueryResults.__ptr_))
  {
    v26 = mlcore::EntityQueryResult::persistentIDAtIndex(self->_itemQueryResults.__ptr_);
    v31 = &v26;
    std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&self->_allowedItemPersistentIDToItemQueryResultsIndexMap, v26)[5] = v3++;
  }

  v4 = [(MPMediaLibraryEntityTranslationContext *)self->_entityTranslationContext allowedEntityIdentifiers];
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

        for (i = self->_allowedItemPersistentIDToItemQueryResultsIndexMap.__tree_.__end_node_.__left_; i; i = *i)
        {
          v12 = i[4];
          if (v10 >= v12)
          {
            if (v12 >= v10)
            {
              end = self->_allowedItemPersistentIDs.__end_;
              cap = self->_allowedItemPersistentIDs.__cap_;
              if (end >= cap)
              {
                begin = self->_allowedItemPersistentIDs.__begin_;
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
                v25 = self->_allowedItemPersistentIDs.__begin_;
                self->_allowedItemPersistentIDs.__begin_ = v24;
                self->_allowedItemPersistentIDs.__end_ = v15;
                self->_allowedItemPersistentIDs.__cap_ = 0;
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

              self->_allowedItemPersistentIDs.__end_ = v15;
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

- (BOOL)_usesSections
{
  if ([(MPModelLibraryRequest *)self->_request disableImplicitSectioning])
  {
    LOBYTE(ptr) = 0;
  }

  else
  {
    ptr = self->_itemQueryResults.__ptr_;
    if (ptr)
    {
      LOBYTE(ptr) = mlcore::EntityQueryResult::entityCount(ptr) > 0x31;
    }
  }

  return ptr;
}

- (id)indexPathForItemWithIdentifiersIntersectingSet:(id)a3
{
  v41 = a3;
  if (!self->_allowedItemPersistentIDToItemQueryResultsIndexMap.__tree_.__size_)
  {
    v12 = [(MPModelLibraryRequest *)self->_request mediaLibrary];
    v13 = [v12 uniqueIdentifier];
    v14 = [v41 library];
    v15 = [v14 databaseID];
    v16 = v13;
    v17 = v15;
    v18 = v16;
    v19 = v17;
    v20 = v19;
    if (v18 == v19)
    {
    }

    else
    {
      v21 = [v18 isEqual:v19];

      if ((v21 & 1) == 0)
      {
        v22 = 0;
LABEL_20:

        v24 = [(MPModelRequest *)self->_request itemKind];
        v7 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [v24 modelClass]);

        v25 = 0;
        for (i = 0; ; ++i)
        {
          if (i >= mlcore::EntityQueryResult::entityCount(self->_itemQueryResults.__ptr_))
          {
            goto LABEL_42;
          }

          ptr = self->_itemQueryResults.__ptr_;
          if (v22)
          {
            if (v22 == mlcore::EntityQueryResult::persistentIDAtIndex(ptr))
            {
              goto LABEL_28;
            }
          }

          else
          {
            v28 = mlcore::EntityQueryResult::propertyCaches(ptr);
            if (0x84BDA12F684BDA13 * ((v28[1] - *v28) >> 3) <= i)
            {
              std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
            }

            v29 = [v7 identifiersForPropertyCache:*v28 + v25 context:self->_entityTranslationContext];
            v30 = [v41 intersectsSet:v29];

            if (v30)
            {
LABEL_28:
              v31 = mlcore::EntityQueryResult::sections(self->_itemQueryResults.__ptr_);
              if (v31[1] == *v31 || ![(MPModelLibraryDefaultSectionedCollectionDataSource *)self _usesSections])
              {
                v10 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:0];
              }

              else
              {
                v32 = *v31;
                if (v31[1] == *v31)
                {
LABEL_42:
                  v10 = 0;
                  goto LABEL_44;
                }

                v33 = 0;
                v34 = 0;
                v10 = 0;
                do
                {
                  v35 = (v32 + v33);
                  if (*(v32 + v33 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v42, *v35, *(v35 + 1));
                  }

                  else
                  {
                    v36 = *v35;
                    v42.__r_.__value_.__r.__words[2] = *(v35 + 2);
                    *&v42.__r_.__value_.__l.__data_ = v36;
                  }

                  v37 = *(v32 + v33 + 24);
                  v44 = *(v32 + v33 + 40);
                  v43 = v37;
                  v38 = mlcore::Section::range(&v42);
                  if (i >= *v38 && i < v38[1] + *v38)
                  {
                    v39 = [MEMORY[0x1E696AC88] indexPathForItem:i - *v38 inSection:v34];

                    v10 = v39;
                  }

                  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v42.__r_.__value_.__l.__data_);
                  }

                  ++v34;
                  v32 = *v31;
                  v33 += 48;
                }

                while (v34 < 0xAAAAAAAAAAAAAAABLL * ((v31[1] - *v31) >> 4));
              }

LABEL_44:

              goto LABEL_45;
            }
          }

          v25 += 216;
        }
      }
    }

    v23 = [v41 library];
    v22 = [v23 persistentID];

    goto LABEL_20;
  }

  v4 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self numberOfSections];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self identifiersForSectionAtIndex:v6];
      if ([v41 intersectsSet:v7])
      {
        break;
      }

      v8 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self numberOfItemsInSection:v6];
      if (v8 < 1)
      {
LABEL_9:
        v10 = v5;
      }

      else
      {
        v9 = 0;
        while (1)
        {
          v10 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:v6];
          v11 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self identifiersForItemAtIndexPath:v10];
          if ([v41 intersectsSet:v11])
          {
            break;
          }

          if (v8 == ++v9)
          {
            goto LABEL_9;
          }
        }
      }

      ++v6;
      v5 = v10;
      if (v6 == v4)
      {
        goto LABEL_45;
      }
    }

    v10 = [MEMORY[0x1E696AC88] indexPathWithIndex:v6];

    goto LABEL_44;
  }

  v10 = 0;
LABEL_45:

  return v10;
}

- (id)identifiersForItemAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self _adjustedGlobalIndexForIndexPath:v5];
  v7 = mlcore::EntityQueryResult::entityCount(self->_itemQueryResults.__ptr_);
  if (v6 >= v7)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MPModelLibraryDefaultSectionedCollectionDataSource.mm" lineNumber:260 description:{@"Adjusted global index out of bounds: %ld (indexPath = %@ / entityCount = %ld)", v6, v5, v7}];
  }

  v8 = mlcore::EntityQueryResult::propertyCaches(self->_itemQueryResults.__ptr_);
  v9 = *v8;
  if (0x84BDA12F684BDA13 * ((v8[1] - *v8) >> 3) <= v6)
  {
    std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = [(MPModelRequest *)self->_request itemKind];
  v11 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [v10 modelClass]);

  v12 = [v11 identifiersForPropertyCache:v9 + 216 * v6 context:self->_entityTranslationContext];
  if (self->_indexPathToContainerUniqueIDMap)
  {
    v13 = [(MPMediaLibraryEntityTranslationContext *)self->_entityTranslationContext mediaLibrary];
    v14 = [v13 uniqueIdentifier];
    v15 = [@"Library-DefaultSectionedCollection-" stringByAppendingString:v14];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __84__MPModelLibraryDefaultSectionedCollectionDataSource_identifiersForItemAtIndexPath___block_invoke;
    v19[3] = &unk_1E767EE00;
    v19[4] = self;
    v20 = v5;
    v16 = [v12 copyWithSource:v15 block:v19];

    v12 = v16;
  }

  return v12;
}

void __84__MPModelLibraryDefaultSectionedCollectionDataSource_identifiersForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:*(a1 + 40)];
  [v4 setContainerUniqueID:v3];
}

- (int64_t)indexOfSectionForSectionIndexTitleAtIndex:(int64_t)a3
{
  v5 = mlcore::EntityQueryResult::sections(self->_itemQueryResults.__ptr_);
  if (v5[1] == *v5 || ![(MPModelLibraryDefaultSectionedCollectionDataSource *)self _usesSections])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = *v5;
  v6 = v5[1];
  v8 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self sectionIndexTitles];
  v9 = [v8 count];
  v10 = v6 - v7;
  v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 4);

  if (v9 - 1 == a3)
  {
    return v11 - 1;
  }

  if (v10 < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = 0;
  v14 = 0;
  if (v11 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 4);
  }

  v16 = v15 - 1;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v17 = *v5;
    v18 = (*v5 + v13);
    if (*(v18 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v18, *(v18 + 1));
    }

    else
    {
      v19 = *v18;
      __p.__r_.__value_.__r.__words[2] = *(v18 + 2);
      *&__p.__r_.__value_.__l.__data_ = v19;
    }

    v20 = *(v17 + v13 + 24);
    v28 = *(v17 + v13 + 40);
    v27 = v20;
    v21 = mlcore::Section::sectionIndex(&__p);
    v22 = v21;
    v23 = v14 - 1;
    if (v21 <= a3)
    {
      v23 = v12;
    }

    if (v21 == a3)
    {
      v12 = v14;
    }

    else
    {
      v12 = v23;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v22 >= a3)
    {
      break;
    }

    v13 += 48;
  }

  while (v16 != v14++);
  return v12;
}

- (_NSRange)optionalSectionIndexTitlesRange
{
  v3 = mlcore::EntityQueryResult::sections(self->_itemQueryResults.__ptr_);
  if (v3[1] == *v3 || ![(MPModelLibraryDefaultSectionedCollectionDataSource *)self _usesSections])
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = mlcore::EntityQueryResult::optionalLocalizedSectionIndicesRange(self->_itemQueryResults.__ptr_);
  }

  result.length = v5;
  result.location = v4;
  return result;
}

- (id)sectionIndexTitles
{
  v3 = mlcore::EntityQueryResult::sections(self->_itemQueryResults.__ptr_);
  if (v3[1] == *v3 || ![(MPModelLibraryDefaultSectionedCollectionDataSource *)self _usesSections])
  {
    v10 = 0;
  }

  else
  {
    v4 = mlcore::EntityQueryResult::localizedSectionIndices(self->_itemQueryResults.__ptr_);
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*v4)[1] - **v4)];
    v6 = **v4;
    for (i = (*v4)[1]; v6 != i; v6 += 3)
    {
      v8 = v6;
      if (*(v6 + 23) < 0)
      {
        v8 = *v6;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
      [v5 addObject:v9];
    }

    v10 = [v5 copy];
  }

  return v10;
}

- (id)itemAtIndexPath:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self _adjustedGlobalIndexForIndexPath:v5];
  v7 = mlcore::EntityQueryResult::entityCount(self->_itemQueryResults.__ptr_);
  if (v6 >= v7)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"MPModelLibraryDefaultSectionedCollectionDataSource.mm" lineNumber:166 description:{@"Adjusted global index out of bounds: %ld (indexPath = %@ / entityCount = %ld)", v6, v5, v7}];
  }

  mlcore::EntityQueryResult::entityAtIndex(self->_itemQueryResults.__ptr_);
  +[MPMediaLibrary logDatabaseAccess];
  request = self->_request;
  if (v28)
  {
    v9 = [(MPModelRequest *)request itemKind];
    v10 = [objc_msgSend(v9 "modelClass")];

    if (v10)
    {
      v32 = v28;
      v33 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self _libraryPinAtIndexPath:v5 withEntity:&v32];
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }
    }

    else
    {
      v16 = [(MPModelRequest *)self->_request itemKind];
      v17 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [v16 modelClass]);

      v18 = [(MPModelRequest *)self->_request itemProperties];
      v19 = (*(*v28 + 48))();
      v11 = [v17 objectForPropertySet:v18 entityClass:v19 propertyCache:mlcore::Entity::propertyCache(v28) context:self->_entityTranslationContext];

      if (self->_indexPathToContainerUniqueIDMap)
      {
        v20 = [v11 identifiers];
        v21 = [(MPMediaLibraryEntityTranslationContext *)self->_entityTranslationContext mediaLibrary];
        v22 = [v21 uniqueIdentifier];
        v23 = [@"Library-DefaultSectionedCollection-" stringByAppendingString:v22];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __70__MPModelLibraryDefaultSectionedCollectionDataSource_itemAtIndexPath___block_invoke;
        v30[3] = &unk_1E767EE00;
        v30[4] = self;
        v31 = v5;
        v24 = [v20 copyWithSource:v23 block:v30];
        v25 = [v11 copyWithIdentifiers:v24 block:&__block_literal_global_9204];

        v11 = v25;
      }
    }
  }

  else
  {
    v12 = [(MPModelRequest *)request itemKind];
    v13 = [objc_msgSend(v12 "modelClass")];

    if (v13)
    {
      v14 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self identifiersForItemAtIndexPath:v5];
      v15 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v35 = v5;
        v36 = 2114;
        v37 = v14;
        _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, "Library pin at indexPath=%{public}@ is nil, Creating a default library pin with identifiers=%{public}@", buf, 0x16u);
      }

      v11 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self _constructEmptyLibraryPinWithIdentifiers:v14 referralObject:0 underlyingObjectClass:0];
    }

    else
    {
      v11 = 0;
    }
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  return v11;
}

void __70__MPModelLibraryDefaultSectionedCollectionDataSource_itemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:*(a1 + 40)];
  [v4 setContainerUniqueID:v3];
}

- (BOOL)hasSameContentAsDataSource:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (ptr = self->_itemQueryResults.__ptr_) != 0 && (v6 = v4[10]) != 0)
  {
    v7 = v4[11];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      ptr = self->_itemQueryResults.__ptr_;
    }

    v8 = mlcore::EntityQueryResult::entityCount(ptr);
    if (v8 == mlcore::EntityQueryResult::entityCount(v6))
    {
      v9 = 0;
      while (1)
      {
        v10 = mlcore::EntityQueryResult::entityCount(self->_itemQueryResults.__ptr_);
        v11 = v9 >= v10;
        if (v9 >= v10)
        {
          break;
        }

        v12 = mlcore::EntityQueryResult::persistentIDAtIndex(self->_itemQueryResults.__ptr_);
        ++v9;
        if (v12 != mlcore::EntityQueryResult::persistentIDAtIndex(v6))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v11 = 0;
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  result = self->_itemQueryResults.__ptr_;
  if (result)
  {
    v6 = mlcore::EntityQueryResult::sections(result);
    if (v6[1] == *v6 || ![(MPModelLibraryDefaultSectionedCollectionDataSource *)self _usesSections])
    {
      return mlcore::EntityQueryResult::entityCount(self->_itemQueryResults.__ptr_);
    }

    else
    {
      return *(mlcore::Section::range((*v6 + 48 * a3)) + 8);
    }
  }

  return result;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v5 = mlcore::EntityQueryResult::sections(self->_itemQueryResults.__ptr_);
  if (0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4) > a3 && [(MPModelLibraryDefaultSectionedCollectionDataSource *)self _usesSections])
  {
    v6 = MEMORY[0x1E696AEC0];
    mlcore::Section::localizedTitle(__p, (*v5 + 48 * a3));
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = [v6 stringWithUTF8String:v7];
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v8 = &stru_1F149ECA8;
  }

  return v8;
}

- (unint64_t)numberOfSections
{
  if (!self->_itemQueryResults.__ptr_)
  {
    return 0;
  }

  if (![(MPModelLibraryDefaultSectionedCollectionDataSource *)self _usesSections])
  {
    return 1;
  }

  v3 = mlcore::EntityQueryResult::sections(self->_itemQueryResults.__ptr_);
  if (0xAAAAAAAAAAAAAAABLL * ((v3[1] - *v3) >> 4) < 2)
  {
    return 1;
  }

  v4 = mlcore::EntityQueryResult::sections(self->_itemQueryResults.__ptr_);
  return 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 4);
}

- (id)_stateDumpObject
{
  v40[2] = *MEMORY[0x1E69E9840];
  ptr = self->_itemQueryResults.__ptr_;
  v31 = self;
  if (ptr)
  {
    v4 = mlcore::EntityQueryResult::sections(ptr);
    v6 = *v4;
    v5 = v4[1];
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 4);
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
    if (v5 != v6)
    {
      v9 = 0;
      if (v7 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v7;
      }

      do
      {
        v11 = *v4;
        v12 = (*v4 + v9);
        if (*(v12 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v32, *v12, *(v12 + 1));
        }

        else
        {
          v13 = *v12;
          v32.__r_.__value_.__r.__words[2] = *(v12 + 2);
          *&v32.__r_.__value_.__l.__data_ = v13;
        }

        v14 = *(v11 + v9 + 24);
        v34 = *(v11 + v9 + 40);
        v33 = v14;
        v15 = MEMORY[0x1E696AEC0];
        mlcore::Section::localizedTitle(__p, &v32);
        if (v36 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        v17 = [v15 stringWithUTF8String:v16];
        v18 = *mlcore::Section::range(&v32);
        v19 = *(mlcore::Section::range(&v32) + 8);
        v20 = [v15 stringWithFormat:@"MLCore::Section(%@, {%zu, %zu}, %d)", v17, v18, v19, mlcore::Section::sectionIndex(&v32)];

        if (v36 < 0)
        {
          operator delete(__p[0]);
        }

        [v8 addObject:v20];

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        v9 += 48;
        --v10;
      }

      while (v10);
    }

    v39[0] = @"entityCount";
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:mlcore::EntityQueryResult::entityCount(v31->_itemQueryResults.__ptr_)];
    v39[1] = @"sections";
    v40[0] = v21;
    v40[1] = v8;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  }

  else
  {
    v22 = MEMORY[0x1E695E0F8];
  }

  v37[0] = @"_obj";
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), v31];
  v24 = v23;
  request = @"@";
  size = v31->_allowedItemPersistentIDToItemQueryResultsIndexMap.__tree_.__size_;
  if (v31->_request)
  {
    request = v31->_request;
  }

  v38[0] = v23;
  v38[1] = request;
  v37[1] = @"request";
  v37[2] = @"itemQueryResults";
  v38[2] = v22;
  v37[3] = @"allowedItemPersistentIDToItemQueryResultsIndexMap.size";
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:size];
  v38[3] = v27;
  v37[4] = @"allowedItemPersistentIDs.size";
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v31->_allowedItemPersistentIDs.__end_ - v31->_allowedItemPersistentIDs.__begin_];
  v38[4] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:5];

  return v29;
}

- (MPModelLibraryDefaultSectionedCollectionDataSource)initWithRequest:(id)a3 itemQueryResults:(shared_ptr<mlcore::EntityQueryResult>)a4
{
  ptr = a4.__ptr_;
  v7 = a3;
  v8 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)self init];
  v9 = v8;
  v10 = v8;
  if (!v8)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&v8->_request, a3);
  v12 = *ptr;
  v11 = *(ptr + 1);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = v10->_itemQueryResults.__cntrl_;
  v10->_itemQueryResults.__ptr_ = v12;
  v10->_itemQueryResults.__cntrl_ = v11;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  v14 = [(MPModelLibraryRequest *)v9->_request itemTranslationContext];
  entityTranslationContext = v10->_entityTranslationContext;
  v10->_entityTranslationContext = v14;

  v16 = [(MPMediaLibraryEntityTranslationContext *)v10->_entityTranslationContext allowedEntityIdentifiers];
  if ([v16 count])
  {
    v17 = [(MPModelRequest *)v9->_request itemSortDescriptors];
    if (v17)
    {
    }

    else
    {
      v25 = [(MPModelLibraryRequest *)v9->_request sortUsingAllowedItemIdentifiers];

      if (!v25)
      {
        goto LABEL_10;
      }

      if ([(MPModelLibraryDefaultSectionedCollectionDataSource *)v10 _allowedEntityIdentifiersContainsAllPersistentIDs])
      {
        [(MPModelLibraryDefaultSectionedCollectionDataSource *)v10 _populateIndexMap];
        goto LABEL_10;
      }

      v16 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_ERROR, "Skipping sorting by allowed item identifiers because allowedItemIdentifiers for _entityTranslationContext does not contain either a persistentID or a possiblePersistentID.", buf, 2u);
      }
    }
  }

LABEL_10:
  v18 = [(MPModelLibraryRequest *)v9->_request legacyMediaQuery];
  if (v18)
  {
    v19 = [(MPModelLibraryRequest *)v9->_request legacyMediaQuery];
    v20 = [v19 _hasStaticEntities];

    if (v20)
    {
      v21 = v10->_itemQueryResults.__cntrl_;
      v26 = v10->_itemQueryResults.__ptr_;
      v27 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = [(MPModelLibraryDefaultSectionedCollectionDataSource *)v10 _buildIndexPathToContainerUniqueIDMapFromItemQueryResults:&v26];
      indexPathToContainerUniqueIDMap = v10->_indexPathToContainerUniqueIDMap;
      v10->_indexPathToContainerUniqueIDMap = v22;

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }
  }

LABEL_16:

  return v10;
}

@end