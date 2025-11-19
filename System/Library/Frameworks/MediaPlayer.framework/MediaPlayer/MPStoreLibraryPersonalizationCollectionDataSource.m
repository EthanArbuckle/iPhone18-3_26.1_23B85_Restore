@interface MPStoreLibraryPersonalizationCollectionDataSource
+ (id)_completePersonalizedObjectWithLibraryObject:(id)a3 personalizationProperties:(id)a4 overrideLibraryAddedStatus:(int64_t)a5;
+ (id)_lightweightPersonalizedLyricsWithUnpersonalizedLyrics:(id)a3 libraryLyrics:(id)a4 identifiers:(id)a5 personalizationProperties:(id)a6;
+ (id)_lightweightPersonalizedObjectWithUnpersonalizedObject:(id)a3 libraryObject:(id)a4 personalizationProperties:(id)a5 overrideLibraryAddedStatus:(int64_t)a6;
+ (id)_lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:(id)a3 identifiers:(id)a4 personalizationProperties:(id)a5;
+ (id)_lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:(id)a3 libraryPlaybackPosition:(id)a4 personalizationProperties:(id)a5;
+ (id)_lightweightPersonalizedStoreAssetWithUnpersonalizedAsset:(id)a3 libraryAsset:(id)a4 personalizationProperties:(id)a5;
- (MPStoreLibraryPersonalizationCollectionDataSource)init;
- (id).cxx_construct;
- (id)_libraryObjectWithRelativeModelClass:(Class)a3 identifierSet:(id)a4 propertySet:(id)a5;
- (id)identifiersForItemAtIndexPath:(id)a3;
- (id)identifiersForSectionAtIndex:(int64_t)a3;
- (id)indexPathForItemWithIdentifiersIntersectingSet:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (shared_ptr<mlcore::EntityCache>)_entityCacheForEntityClass:(void *)a3 propertiesToFetch:(vector<mlcore:(std::allocator<mlcore::ModelPropertyBase *>> *)a4 :ModelPropertyBase *);
@end

@implementation MPStoreLibraryPersonalizationCollectionDataSource

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (shared_ptr<mlcore::EntityCache>)_entityCacheForEntityClass:(void *)a3 propertiesToFetch:(vector<mlcore:(std::allocator<mlcore::ModelPropertyBase *>> *)a4 :ModelPropertyBase *)
{
  v7 = v4;
  os_unfair_lock_assert_owner(&self->_lock);
  begin = self->_entityCaches.__begin_;
  end = self->_entityCaches.__end_;
  if (begin == end)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v11 = *begin;
    v10 = begin[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = mlcore::EntityCache::propertiesToFetchForEntityClass();
    v12 = *v13;
    v14 = *(v13 + 8) - *v13;
    if (v14 == a4->var1 - a4->var0)
    {
      v15 = memcmp(v12, a4->var0, v14);
      if (!v15)
      {
        break;
      }
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    begin += 2;
    if (begin == end)
    {
      *v7 = v11;
      v7[1] = v10;
LABEL_10:
      libraryView = self->_libraryView;
      if (libraryView)
      {
        [(MPMediaLibraryView *)libraryView mlCoreView];
      }

      std::allocate_shared[abi:ne200100]<mlcore::EntityCache,std::allocator<mlcore::EntityCache>,std::shared_ptr<mlcore::DeviceLibraryView>,0>();
    }
  }

  *v7 = v11;
  v7[1] = v10;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (id)_libraryObjectWithRelativeModelClass:(Class)a3 identifierSet:(id)a4 propertySet:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 library];
  v11 = [v10 persistentID];

  v12 = 0;
  if (v9 && v11)
  {
    v13 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:a3];
    v14 = [v13 entityClass];
    if (v13)
    {
      [v13 MLCorePropertiesForPropertySet:v9];
    }

    else
    {
      __p = 0;
      v24 = 0;
    }

    os_unfair_lock_lock(&self->_lock);
    v44 = 0;
    v45 = 0;
    v43 = 0;
    std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&v43, __p, v24, (v24 - __p) >> 3);
    [(MPStoreLibraryPersonalizationCollectionDataSource *)self _entityCacheForEntityClass:v14 propertiesToFetch:&v43];
    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    *&v31[8] = 0u;
    v28 = 0u;
    v29 = 0u;
    v34 = 1065353216;
    *&v36[8] = 0u;
    v30[0] = 1065353216;
    *&v30[1] = 0u;
    *v31 = 0u;
    v33 = 0u;
    v32 = 0u;
    *&v31[16] = 1065353216;
    v35 = 0u;
    *v36 = 0u;
    *&v36[16] = 1065353216;
    v38 = 0u;
    v37 = 0u;
    v39 = 1065353216;
    v27 = MEMORY[0x1E69B0818] + 16;
    v40 = MEMORY[0x1E69B0818] + 56;
    (*(*v25 + 24))(&v41);
    mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v27);
    +[MPMediaLibrary logDatabaseAccess];
    if (v41)
    {
      v15 = objc_alloc_init(MPMediaLibraryEntityTranslationContext);
      v16 = [(MPMediaLibraryView *)self->_libraryView library];
      [(MPMediaLibraryEntityTranslationContext *)v15 setMediaLibrary:v16];

      v17 = [MPModelKind kindWithModelClass:a3];
      [(MPMediaLibraryEntityTranslationContext *)v15 setModelKind:v17];

      [(MPMediaLibraryEntityTranslationContext *)v15 setIdentifierSourcePrefix:@"PersonalizedDataSource-"];
      if ([MEMORY[0x1E69E4688] canAccessAccountStore])
      {
        v18 = [(MPMediaLibraryView *)self->_libraryView library];
        v19 = [v18 userIdentity];
        v20 = [v19 accountDSID];
        [(MPMediaLibraryEntityTranslationContext *)v15 setPersonID:v20];
      }

      v21 = (*(*v41 + 48))(v41);
      v12 = [v13 objectForPropertySet:v9 entityClass:v21 propertyCache:mlcore::Entity::propertyCache(v41) context:v15];
    }

    else
    {
      v12 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  return v12;
}

- (id)indexPathForItemWithIdentifiersIntersectingSet:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__32244;
  v17 = __Block_byref_object_dispose__32245;
  v18 = 0;
  unpersonalizedContentDescriptors = self->_unpersonalizedContentDescriptors;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__MPStoreLibraryPersonalizationCollectionDataSource_indexPathForItemWithIdentifiersIntersectingSet___block_invoke;
  v9[3] = &unk_1E767B768;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  [(MPSectionedCollection *)unpersonalizedContentDescriptors enumerateItemsUsingBlock:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __100__MPStoreLibraryPersonalizationCollectionDataSource_indexPathForItemWithIdentifiersIntersectingSet___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v21 = a2;
  v7 = a3;
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v9 = [v21 model];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v9 = v21;
  }

  v10 = v9;
  if (v9)
  {
    v11 = [v9 identifiers];
    v12 = [v11 intersectsSet:a1[4]];

    if (v12)
    {
      v13 = *(a1[6] + 8);
      v14 = v7;
      v15 = *(v13 + 40);
      *(v13 + 40) = v14;
    }

    else
    {
      v15 = [v10 relativeModelObjectForStoreLibraryPersonalization];
      v16 = objc_opt_class();
      if (v16)
      {
        v17 = [*(a1[5] + 80) objectForKey:v16];
        v18 = [v15 identifiers];
        v19 = [v17 libraryIdentifierSetForIdentifierSet:v18];
        v20 = [v19 unionSet:v18];
        if ([v20 intersectsSet:a1[4]])
        {
          objc_storeStrong((*(a1[6] + 8) + 40), a3);
        }
      }
    }

    if (*(*(a1[6] + 8) + 40))
    {
      *a4 = 1;
    }
  }

LABEL_15:
}

- (id)identifiersForSectionAtIndex:(int64_t)a3
{
  v4 = [(MPSectionedCollection *)self->_unpersonalizedContentDescriptors sectionAtIndex:a3];
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [v4 model];
    v8 = [v7 relativeModelObjectForStoreLibraryPersonalization];
    v9 = objc_opt_class();
    if (v9)
    {
      v10 = [(NSMapTable *)self->_relativeModelClassToMappingResponse objectForKey:v9];
      v11 = [v8 identifiers];
      v12 = [v10 libraryIdentifierSetForIdentifierSet:v11];

      v13 = [v8 identifiers];
      v14 = [v12 unionSet:v13];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = [v8 identifiers];
      }

      v6 = v16;
    }

    else
    {
      v17 = [v8 identifiers];
      if (v17)
      {
        v10 = v17;
        v6 = v10;
      }

      else
      {
        v6 = [v7 identifiers];
        v10 = 0;
      }
    }
  }

  else
  {
    v6 = [v4 identifiers];
  }

  return v6;
}

- (id)identifiersForItemAtIndexPath:(id)a3
{
  v72[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MPSectionedCollection *)self->_unpersonalizedContentDescriptors itemAtIndexPath:v4];
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v8 = v5;
    v15 = [v8 model];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [v15 type] == 5)
    {

      v7 = [v15 identifiers];
    }

    else
    {

      v53 = [v15 relativeModelObjectForStoreLibraryPersonalization];
      v16 = objc_opt_class();
      if (v16)
      {
        v17 = [v53 identifiers];
        if (v17)
        {
          v52 = [(NSMapTable *)self->_relativeModelClassToMappingResponse objectForKey:v16];
          v18 = [v52 libraryIdentifierSetForIdentifierSet:v17];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 unionSet:v17];
            v21 = v20;
            if (v20)
            {
              v22 = v20;
            }

            else
            {
              v40 = _MPLogCategoryDefault();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218754;
                v61 = self;
                v62 = 2114;
                v63 = v4;
                v64 = 2114;
                v65 = v19;
                v66 = 2114;
                v67 = v17;
                _os_log_impl(&dword_1A238D000, v40, OS_LOG_TYPE_ERROR, "MPStoreLibraryPersonalizationCollectionDataSource %p: identifiersForItemAtIndexPath returning MPIdentifierSet.emptyIdentifierSet [libraryIdentifiers unionSet: failed] indexPath=%{public}@ libraryIdentifiers=%{public}@ originalIdentifiers=%{public}@", buf, 0x2Au);
              }

              v41 = MEMORY[0x1E69B13D8];
              v58[0] = v4;
              v57[0] = @"indexPath";
              v57[1] = @"libraryIdentifiers";
              v42 = [v19 description];
              v50 = v42;
              v51 = v41;
              if (v42)
              {
                v43 = v42;
              }

              else
              {
                v43 = @"@";
              }

              v58[1] = v43;
              v57[2] = @"originalIdentifiers";
              v44 = [v17 description];
              v45 = v44;
              if (v44)
              {
                v46 = v44;
              }

              else
              {
                v46 = @"@";
              }

              v58[2] = v46;
              v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];
              v59 = v47;
              v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
              [v51 snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"Tracklisting-LazySectionedCollectionDataSource-InvalidStateBug" context:@"-[MPStoreLibraryPersonalizationCollectionDataSource identifiersForItemAtIndexPath:] (libraryIdentifiers unionSet: failed)" triggerThresholdValues:0 events:v48 completion:0];

              v22 = +[MPIdentifierSet emptyIdentifierSet];
            }

            v7 = v22;
          }

          else
          {
            v7 = v17;
          }
        }

        else
        {
          v30 = os_log_create("com.apple.amp.mediaplayer", "Default");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            v61 = self;
            v62 = 2114;
            v63 = v4;
            v64 = 2114;
            v65 = v53;
            _os_log_impl(&dword_1A238D000, v30, OS_LOG_TYPE_ERROR, "MPStoreLibraryPersonalizationCollectionDataSource %p: identifiersForItemAtIndexPath returning MPIdentifierSet.emptyIdentifierSet [effectiveOriginalObject has no identifiers] indexPath=%{public}@ effectiveOriginalObject=%{public}@", buf, 0x20u);
          }

          v31 = MEMORY[0x1E69B13D8];
          v69[0] = v4;
          v68[0] = @"indexPath";
          v68[1] = @"originalObject";
          v32 = [v15 description];
          v33 = v32;
          if (v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = @"@";
          }

          v69[1] = v34;
          v68[2] = @"effectiveOriginalObject";
          v35 = [v53 description];
          v36 = v35;
          if (v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = @"@";
          }

          v69[2] = v37;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:3];
          v70 = v38;
          v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
          [v31 snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"Tracklisting-LazySectionedCollectionDataSource-InvalidStateBug" context:@"-[MPStoreLibraryPersonalizationCollectionDataSource identifiersForItemAtIndexPath:] (effectiveOriginalObject has no identifiers)" triggerThresholdValues:0 events:v39 completion:0];

          v7 = +[MPIdentifierSet emptyIdentifierSet];
        }
      }

      else
      {
        v7 = [v15 identifiers];
        if (!v7)
        {
          v23 = _MPLogCategoryDefault();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            v61 = self;
            v62 = 2114;
            v63 = v4;
            v64 = 2114;
            v65 = v15;
            _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_ERROR, "MPStoreLibraryPersonalizationCollectionDataSource %p: identifiersForItemAtIndexPath returning MPIdentifierSet.emptyIdentifierSet [originalObject has no identifiers] indexPath=%{public}@ originalObject=%{public}@", buf, 0x20u);
          }

          v24 = MEMORY[0x1E69B13D8];
          v54[0] = @"indexPath";
          v54[1] = @"originalObject";
          v55[0] = v4;
          v25 = [v15 description];
          v26 = v25;
          v27 = @"@";
          if (v25)
          {
            v27 = v25;
          }

          v55[1] = v27;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
          v56 = v28;
          v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
          [v24 snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"Tracklisting-LazySectionedCollectionDataSource-InvalidStateBug" context:@"-[MPStoreLibraryPersonalizationCollectionDataSource identifiersForItemAtIndexPath:] (originalObject has no identifiers)" triggerThresholdValues:0 events:v29 completion:0];

          v7 = +[MPIdentifierSet emptyIdentifierSet];
        }
      }
    }
  }

  else
  {
    v7 = [v5 identifiers];
    if (v7)
    {
      goto LABEL_50;
    }

    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v71[0] = @"indexPath";
    v71[1] = @"possibleObject";
    v72[0] = v4;
    v9 = [v5 description];
    v10 = v9;
    v11 = @"@";
    if (v9)
    {
      v11 = v9;
    }

    v72[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
    [v8 addObject:v12];

    if (!v5)
    {
      v13 = [(MPSectionedCollection *)self->_unpersonalizedContentDescriptors description];
      [v8 addObject:v13];
    }

    v14 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v61 = self;
      v62 = 2114;
      v63 = v4;
      v64 = 2114;
      v65 = v5;
      _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_ERROR, "MPStoreLibraryPersonalizationCollectionDataSource %p: identifiersForItemAtIndexPath returning MPIdentifierSet.emptyIdentifierSet [unpersonalizedContentDescriptors did not contain MPStoreLibraryPersonalizationContentDescriptor] indexPath=%{public}@ possibleObject=%{public}@", buf, 0x20u);
    }

    [MEMORY[0x1E69B13D8] snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"Tracklisting-LazySectionedCollectionDataSource-InvalidStateBug" context:@"-[MPStoreLibraryPersonalizationCollectionDataSource identifiersForItemAtIndexPath:] (unpersonalizedContentDescriptors did not contain MPStoreLibraryPersonalizationContentDescriptor)" triggerThresholdValues:0 events:v8 completion:0];
    v7 = +[MPIdentifierSet emptyIdentifierSet];
  }

LABEL_50:

  return v7;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MPSectionedCollection *)self->_unpersonalizedContentDescriptors itemAtIndexPath:v4];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = v5;
  v9 = v8;
  v10 = v8;
  if (v6 == v7)
  {
    v11 = [v8 model];
    v12 = [v11 relativeModelObjectForStoreLibraryPersonalization];
    v13 = objc_opt_class();
    v10 = v11;
    if (!v13)
    {
LABEL_30:

      goto LABEL_31;
    }

    v47 = [(NSMapTable *)self->_relativeModelClassToMappingResponse objectForKey:v13];
    v14 = [v12 identifiers];
    v15 = [v47 libraryIdentifierSetForIdentifierSet:v14];
    v16 = v15;
    if (v15)
    {
      v46 = v15;
    }

    else
    {
      v46 = [v12 identifiers];
    }

    v17 = [(NSDictionary *)self->_itemIndexPathToOverridePropertySet objectForKey:v4];
    itemProperties = v17;
    if (!v17)
    {
      itemProperties = self->_itemProperties;
    }

    v19 = itemProperties;

    v20 = [v9 personalizationStyle];
    if ((v20 - 1) < 2)
    {
      v42 = v12;
      v43 = v19;
      v27 = [v11 personalizationScopedPropertiesForProperties:v19];
      v28 = v27;
      if (!v27)
      {
        v28 = +[MPPropertySet emptyPropertySet];
      }

      v29 = [MPStoreLibraryPersonalizationContentDescriptor lightweightPersonalizationPropertiesForModelClass:v13];
      v41 = [v28 propertySetByIntersectingWithPropertySet:v29];

      if (!v27)
      {
      }

      v12 = v42;
      v30 = [v13 requiredStoreLibraryPersonalizationProperties];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = +[MPPropertySet emptyPropertySet];
      }

      v34 = v32;

      v44 = v34;
      v35 = [v34 propertySetByCombiningWithPropertySet:v41];

      v36 = v35;
      v45 = v35;
      v37 = [MPStoreLibraryPersonalizationContentDescriptor requiredLightweightPersonalizationPropertiesForModelClass:v13 requestedProperties:v35];
      v23 = [v36 propertySetByCombiningWithPropertySet:v37];

      v25 = [(MPStoreLibraryPersonalizationCollectionDataSource *)self _libraryObjectWithRelativeModelClass:v13 identifierSet:v46 propertySet:v23];
      v26 = [objc_opt_class() _lightweightPersonalizedObjectWithUnpersonalizedObject:v42 libraryObject:v25 personalizationProperties:v23 overrideLibraryAddedStatus:0];
      if (v26 == v42)
      {
        v10 = v11;
      }

      else
      {
        v38 = [v11 objectWithStoreLibraryPersonalizationRelativeModelObject:v26];
        v39 = v38;
        v10 = v11;
        if (v38)
        {
          v10 = v38;
        }
      }
    }

    else
    {
      v10 = v11;
      if ((v20 - 3) >= 2)
      {
LABEL_29:

        goto LABEL_30;
      }

      v21 = [v11 personalizationScopedPropertiesForProperties:v19];
      v22 = [(MPStoreLibraryPersonalizationCollectionDataSource *)self _libraryObjectWithRelativeModelClass:v13 identifierSet:v46 propertySet:v21];
      v45 = v21;
      if (!v22)
      {
        v33 = 0;
        v10 = v11;
LABEL_28:

        goto LABEL_29;
      }

      v23 = [objc_opt_class() _completePersonalizedObjectWithLibraryObject:v22 personalizationProperties:v21 overrideLibraryAddedStatus:0];
      v24 = [v11 objectWithStoreLibraryPersonalizationRelativeModelObject:v23];
      v44 = v22;
      if (!v24)
      {
        v25 = 0;
        v10 = v11;
        goto LABEL_27;
      }

      v43 = v19;
      v25 = v24;
      v26 = v11;
      v10 = v25;
    }

    v19 = v43;
LABEL_27:

    v33 = v44;
    goto LABEL_28;
  }

LABEL_31:

  return v10;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v5 = [(MPSectionedCollection *)self->_unpersonalizedContentDescriptors sectionAtIndex:?];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = v5;
  v9 = v8;
  v10 = v8;
  if (v6 == v7)
  {
    v11 = [v8 model];
    v12 = [v11 relativeModelObjectForStoreLibraryPersonalization];
    v13 = objc_opt_class();
    v10 = v11;
    if (!v13)
    {
LABEL_30:

      goto LABEL_31;
    }

    v41 = [(NSMapTable *)self->_relativeModelClassToMappingResponse objectForKey:v13];
    v14 = [v12 identifiers];
    v43 = [v41 libraryIdentifierSetForIdentifierSet:v14];

    sectionToLibraryAddedOverride = self->_sectionToLibraryAddedOverride;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v17 = [(NSMutableDictionary *)sectionToLibraryAddedOverride objectForKey:v16];

    v40 = v17;
    if (v17)
    {
      if ([v17 BOOLValue])
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = [v9 personalizationStyle];
    if ((v19 - 3) < 2)
    {
      v42 = v12;
      v27 = [v11 personalizationScopedPropertiesForProperties:self->_sectionProperties];
      v28 = [(MPStoreLibraryPersonalizationCollectionDataSource *)self _libraryObjectWithRelativeModelClass:v13 identifierSet:v43 propertySet:v27];
      if (!v28)
      {
        v10 = v11;
LABEL_28:

        v12 = v42;
        goto LABEL_29;
      }

      v29 = [objc_opt_class() _completePersonalizedObjectWithLibraryObject:v28 personalizationProperties:v27 overrideLibraryAddedStatus:v18];
      v30 = [v11 objectWithStoreLibraryPersonalizationRelativeModelObject:v29];
      if (!v30)
      {
        v31 = 0;
        v10 = v11;
        goto LABEL_27;
      }

      v31 = v30;
      v32 = v11;
      v10 = v31;
    }

    else
    {
      v10 = v11;
      if ((v19 - 1) > 1)
      {
LABEL_29:

        goto LABEL_30;
      }

      v38 = v18;
      v42 = v12;
      v20 = [v11 personalizationScopedPropertiesForProperties:self->_sectionProperties];
      v21 = v20;
      if (!v20)
      {
        v21 = +[MPPropertySet emptyPropertySet];
      }

      v22 = [MPStoreLibraryPersonalizationContentDescriptor lightweightPersonalizationPropertiesForModelClass:v13];
      v23 = [v21 propertySetByIntersectingWithPropertySet:v22];

      if (!v20)
      {
      }

      v24 = [v13 requiredStoreLibraryPersonalizationProperties];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = +[MPPropertySet emptyPropertySet];
      }

      v33 = v26;

      v39 = v33;
      v27 = [v23 propertySetByCombiningWithPropertySet:v33];

      v34 = [MPStoreLibraryPersonalizationContentDescriptor requiredLightweightPersonalizationPropertiesForModelClass:v13 requestedProperties:v27];
      v28 = v39;
      v29 = [v27 propertySetByCombiningWithPropertySet:v34];

      v31 = [(MPStoreLibraryPersonalizationCollectionDataSource *)self _libraryObjectWithRelativeModelClass:v13 identifierSet:v43 propertySet:v29];
      v32 = [objc_opt_class() _lightweightPersonalizedObjectWithUnpersonalizedObject:v42 libraryObject:v31 personalizationProperties:v29 overrideLibraryAddedStatus:v38];
      if (v32 == v42)
      {
        v10 = v11;
      }

      else
      {
        v35 = [v11 objectWithStoreLibraryPersonalizationRelativeModelObject:v32];
        v36 = v35;
        v10 = v11;
        if (v35)
        {
          v10 = v35;
        }
      }
    }

LABEL_27:
    goto LABEL_28;
  }

LABEL_31:

  return v10;
}

- (MPStoreLibraryPersonalizationCollectionDataSource)init
{
  v3.receiver = self;
  v3.super_class = MPStoreLibraryPersonalizationCollectionDataSource;
  result = [(MPStoreLibraryPersonalizationCollectionDataSource *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)_completePersonalizedObjectWithLibraryObject:(id)a3 personalizationProperties:(id)a4 overrideLibraryAddedStatus:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = [v8 properties];
  v11 = objc_opt_class();
  if ([v11 isSubclassOfClass:objc_opt_class()])
  {
    v12 = v9;
    v13 = [v12 identifiers];
    v14 = v37;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke;
    v37[3] = &unk_1E767B8F0;
    v37[4] = v10;
    v39 = a5;
    v38 = v12;
    v15 = [v38 copyWithIdentifiers:v13 block:v37];
  }

  else if ([v11 isSubclassOfClass:objc_opt_class()])
  {
    v16 = v9;
    v13 = [v16 identifiers];
    v14 = v34;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_2;
    v34[3] = &unk_1E767B918;
    v34[4] = v10;
    v36 = a5;
    v35 = v16;
    v15 = [v35 copyWithIdentifiers:v13 block:v34];
  }

  else if ([v11 isSubclassOfClass:objc_opt_class()])
  {
    v17 = v9;
    v13 = [v17 identifiers];
    v14 = v31;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_3;
    v31[3] = &unk_1E767B940;
    v31[4] = v10;
    v33 = a5;
    v32 = v17;
    v15 = [v32 copyWithIdentifiers:v13 block:v31];
  }

  else if ([v11 isSubclassOfClass:objc_opt_class()])
  {
    v18 = v9;
    v13 = [v18 identifiers];
    v14 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_4;
    v28[3] = &unk_1E767B8A0;
    v28[4] = v10;
    v30 = a5;
    v29 = v18;
    v15 = [v29 copyWithIdentifiers:v13 block:v28];
  }

  else if ([v11 isSubclassOfClass:objc_opt_class()])
  {
    v19 = v9;
    v13 = [v19 identifiers];
    v14 = v25;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_5;
    v25[3] = &unk_1E767B8C8;
    v25[4] = v10;
    v27 = a5;
    v26 = v19;
    v15 = [v26 copyWithIdentifiers:v13 block:v25];
  }

  else
  {
    v20 = v9;
    if (![v11 isSubclassOfClass:objc_opt_class()])
    {
      goto LABEL_14;
    }

    v21 = v9;
    v13 = [v21 identifiers];
    v14 = v23;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_6;
    v23[3] = &unk_1E767EE78;
    v23[4] = v10;
    v24 = v21;
    v15 = [v24 copyWithIdentifiers:v13 block:v23];
  }

  v20 = v15;

LABEL_14:

  return v20;
}

void __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) containsObject:@"MPModelPropertySongLibraryAdded"])
  {
    v3 = *(a1 + 48);
    if (v3 == 1)
    {
      v4 = 1;
    }

    else if (v3 == 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = [*(a1 + 40) isLibraryAdded];
    }

    [v5 setLibraryAdded:v4];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertySongIsFavorite"])
  {
    [v5 setIsFavorite:{objc_msgSend(*(a1 + 40), "isFavorite")}];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertySongIsDisliked"])
  {
    [v5 setIsDisliked:{objc_msgSend(*(a1 + 40), "isDisliked")}];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertySongIsPinned"])
  {
    [v5 setIsPinned:{objc_msgSend(*(a1 + 40), "isPinned")}];
  }
}

void __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) containsObject:@"MPModelPropertyTVEpisodeLibraryAdded"])
  {
    v3 = *(a1 + 48);
    if (v3 == 1)
    {
      v4 = 1;
    }

    else if (v3 == 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = [*(a1 + 40) isLibraryAdded];
    }

    [v5 setLibraryAdded:v4];
  }
}

void __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) containsObject:@"MPModelPropertyMovieLibraryAdded"])
  {
    v3 = *(a1 + 48);
    if (v3 == 1)
    {
      v4 = 1;
    }

    else if (v3 == 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = [*(a1 + 40) isLibraryAdded];
    }

    [v5 setLibraryAdded:v4];
  }
}

void __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) containsObject:@"MPModelPropertyAlbumLibraryAdded"])
  {
    v3 = *(a1 + 48);
    if (v3 == 1)
    {
      v4 = 1;
    }

    else if (v3 == 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = [*(a1 + 40) isLibraryAdded];
    }

    [v5 setLibraryAdded:v4];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertyAlbumIsFavorite"])
  {
    [v5 setIsFavorite:{objc_msgSend(*(a1 + 40), "isFavorite")}];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertyAlbumIsDisliked"])
  {
    [v5 setIsDisliked:{objc_msgSend(*(a1 + 40), "isDisliked")}];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertyAlbumIsPinned"])
  {
    [v5 setIsPinned:{objc_msgSend(*(a1 + 40), "isPinned")}];
  }
}

void __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) containsObject:@"MPModelPropertyPlaylistLibraryAdded"])
  {
    v3 = *(a1 + 48);
    if (v3 == 1)
    {
      v4 = 1;
    }

    else if (v3 == 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = [*(a1 + 40) isLibraryAdded];
    }

    [v5 setLibraryAdded:v4];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertyPlaylistIsFavorite"])
  {
    [v5 setIsFavorite:{objc_msgSend(*(a1 + 40), "isFavorite")}];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertyPlaylistIsDisliked"])
  {
    [v5 setIsDisliked:{objc_msgSend(*(a1 + 40), "isDisliked")}];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertyPlaylistIsPinned"])
  {
    [v5 setIsPinned:{objc_msgSend(*(a1 + 40), "isPinned")}];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertyPlaylistHasAnyCleanTracks"])
  {
    [v5 setHasAnyCleanTracks:{objc_msgSend(*(a1 + 40), "hasAnyCleanTracks")}];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertyPlaylistHasAnyCleanDownloadedTracks"])
  {
    [v5 setHasAnyCleanTracks:{objc_msgSend(*(a1 + 40), "hasAnyCleanDownloadedTracks")}];
  }
}

void __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:@"MPModelPropertyArtistIsFavorite"])
  {
    [v3 setIsFavorite:{objc_msgSend(*(a1 + 40), "isFavorite")}];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertyArtistIsDisliked"])
  {
    [v3 setIsDisliked:{objc_msgSend(*(a1 + 40), "isDisliked")}];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertyArtistLibraryAdded"])
  {
    [v3 setLibraryAdded:{objc_msgSend(*(a1 + 40), "isLibraryAdded")}];
  }

  if ([*(a1 + 32) containsObject:@"MPModelPropertyArtistIsPinned"])
  {
    [v3 setIsPinned:{objc_msgSend(*(a1 + 40), "isPinned")}];
  }
}

+ (id)_lightweightPersonalizedObjectWithUnpersonalizedObject:(id)a3 libraryObject:(id)a4 personalizationProperties:(id)a5 overrideLibraryAddedStatus:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v10;
  v75 = v12;
  v77 = [v13 identifiers];
  v76 = [v12 properties];
  v78 = [v12 relationships];
  v14 = objc_opt_class();
  if ([v14 isSubclassOfClass:objc_opt_class()])
  {
    v15 = v13;
    if (v11)
    {
      v16 = v11;
      v17 = [v16 identifiers];
      v18 = [v17 unionSet:v77];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v77;
      }

      v21 = v20;

      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke;
      v110[3] = &unk_1E767B7B8;
      v111 = v76;
      v115 = a6;
      v22 = v16;
      v112 = v22;
      v113 = v78;
      v116 = a1;
      v23 = v15;
      v114 = v23;
      v24 = [v23 copyWithIdentifiers:v21 block:v110];

      v15 = v23;
    }

    else
    {
      v22 = [v78 objectForKey:@"MPModelRelationshipSongPlaybackPosition"];
      v24 = v15;
      if (v22)
      {
        if ([v15 hasLoadedValueForKey:@"MPModelRelationshipSongPlaybackPosition"])
        {
          v38 = [v15 playbackPosition];
        }

        else
        {
          v38 = 0;
        }

        if (![v38 hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionShouldRememberBookmarkTime"] || (v24 = v15, objc_msgSend(v38, "shouldRememberBookmarkTime")))
        {
          v52 = [v15 identifiers];
          v53 = [a1 _lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:v38 identifiers:v52 personalizationProperties:v22];

          v24 = v15;
          if (v38 != v53)
          {
            v54 = [v15 identifiers];
            v108[0] = MEMORY[0x1E69E9820];
            v108[1] = 3221225472;
            v108[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_2;
            v108[3] = &unk_1E767D0F0;
            v109 = v53;
            v24 = [v15 copyWithIdentifiers:v54 block:v108];
          }
        }
      }

      v55 = [v78 objectForKey:@"MPModelRelationshipSongLyrics"];
      if (v55)
      {
        if ([v15 hasLoadedValueForKey:@"MPModelRelationshipSongLyrics"])
        {
          v56 = [v15 lyrics];
        }

        else
        {
          v56 = 0;
        }

        v57 = [v56 identifiers];
        v58 = [v56 copyWithIdentifiers:v57 block:&__block_literal_global_32326];

        v59 = [v15 identifiers];
        v106[0] = MEMORY[0x1E69E9820];
        v106[1] = 3221225472;
        v106[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_4;
        v106[3] = &unk_1E767D0F0;
        v60 = v58;
        v107 = v60;
        v61 = [v15 copyWithIdentifiers:v59 block:v106];

        v24 = v61;
        v11 = 0;
      }
    }

    goto LABEL_71;
  }

  if ([v14 isSubclassOfClass:objc_opt_class()])
  {
    v15 = v13;
    if (v11)
    {
      v25 = v11;
      v26 = [v25 identifiers];
      v27 = [v26 unionSet:v77];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v77;
      }

      v30 = v29;

      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_5;
      v100[3] = &unk_1E767B800;
      v101 = v76;
      v104 = a6;
      v22 = v25;
      v102 = v22;
      v103 = v78;
      v105 = a1;
      v24 = [v15 copyWithIdentifiers:v30 block:v100];

      v31 = v101;
LABEL_19:

      goto LABEL_71;
    }

    v22 = [v78 objectForKey:@"MPModelRelationshipTVEpisodePlaybackPosition"];
    if (v22)
    {
      if ([v15 hasLoadedValueForKey:@"MPModelRelationshipTVEpisodePlaybackPosition"])
      {
        v45 = [v15 playbackPosition];
      }

      else
      {
        v45 = 0;
      }

      if ([v45 hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionShouldRememberBookmarkTime"])
      {
        v24 = v15;
        if (![v45 shouldRememberBookmarkTime])
        {
          goto LABEL_70;
        }
      }

      v68 = [v15 identifiers];
      v69 = [a1 _lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:v45 identifiers:v68 personalizationProperties:v22];

      v24 = v15;
      if (v45 == v69)
      {
LABEL_69:

LABEL_70:
        goto LABEL_71;
      }

      v70 = [v15 identifiers];
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_6;
      v98[3] = &unk_1E767B828;
      v99 = v69;
      v24 = [v15 copyWithIdentifiers:v70 block:v98];

      v71 = v99;
LABEL_68:

      goto LABEL_69;
    }

    goto LABEL_52;
  }

  if ([v14 isSubclassOfClass:objc_opt_class()])
  {
    v15 = v13;
    if (v11)
    {
      v32 = v11;
      v33 = [v32 identifiers];
      v34 = [v33 unionSet:v77];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = v77;
      }

      v37 = v36;

      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_7;
      v92[3] = &unk_1E767B850;
      v93 = v76;
      v96 = a6;
      v22 = v32;
      v94 = v22;
      v95 = v78;
      v97 = a1;
      v24 = [v15 copyWithIdentifiers:v37 block:v92];

      v31 = v93;
      goto LABEL_19;
    }

    v22 = [v78 objectForKey:@"MPModelRelationshipMoviePlaybackPosition"];
    if (v22)
    {
      if ([v15 hasLoadedValueForKey:@"MPModelRelationshipMoviePlaybackPosition"])
      {
        v45 = [v15 playbackPosition];
      }

      else
      {
        v45 = 0;
      }

      if ([v45 hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionShouldRememberBookmarkTime"])
      {
        v24 = v15;
        if (![v45 shouldRememberBookmarkTime])
        {
          goto LABEL_70;
        }
      }

      v72 = [v15 identifiers];
      v69 = [a1 _lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:v45 identifiers:v72 personalizationProperties:v22];

      v24 = v15;
      if (v45 == v69)
      {
        goto LABEL_69;
      }

      v73 = [v15 identifiers];
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_8;
      v90[3] = &unk_1E767B878;
      v91 = v69;
      v24 = [v15 copyWithIdentifiers:v73 block:v90];

      v71 = v91;
      goto LABEL_68;
    }

LABEL_52:
    v24 = v15;
    goto LABEL_71;
  }

  if ([v14 isSubclassOfClass:objc_opt_class()])
  {
    v39 = v11;
    v40 = [v39 identifiers];
    v41 = [v40 unionSet:v77];
    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = v77;
    }

    v44 = v43;

    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_9;
    v86[3] = &unk_1E767B8A0;
    v87 = v76;
    v89 = a6;
    v15 = v39;
    v88 = v15;
    v24 = [v13 copyWithIdentifiers:v44 block:v86];

    v22 = v87;
  }

  else if ([v14 isSubclassOfClass:objc_opt_class()])
  {
    v46 = v11;
    v47 = [v46 identifiers];
    v48 = [v47 unionSet:v77];
    v49 = v48;
    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = v77;
    }

    v51 = v50;

    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_11;
    v82[3] = &unk_1E767B8C8;
    v83 = v76;
    v85 = a6;
    v15 = v46;
    v84 = v15;
    v24 = [v13 copyWithIdentifiers:v51 block:v82];

    v22 = v83;
  }

  else
  {
    v24 = v13;
    if (![v14 isSubclassOfClass:objc_opt_class()])
    {
      goto LABEL_72;
    }

    v62 = v11;
    v63 = [v62 identifiers];
    v64 = [v63 unionSet:v77];
    v65 = v64;
    if (v64)
    {
      v66 = v64;
    }

    else
    {
      v66 = v77;
    }

    v67 = v66;

    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_12;
    v79[3] = &unk_1E767EE78;
    v80 = v76;
    v15 = v62;
    v81 = v15;
    v24 = [v13 copyWithIdentifiers:v67 block:v79];

    v22 = v80;
  }

LABEL_71:

LABEL_72:

  return v24;
}

void __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = *v35;
    do
    {
      v6 = 0;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * v6);
        v8 = *(a1 + 64);
        if (v8 == 1)
        {
          v9 = 1;
        }

        else if (v8 == 2)
        {
          v9 = 0;
        }

        else
        {
          v9 = [*(a1 + 40) isLibraryAdded];
        }

        if ([v7 isEqualToString:@"MPModelPropertySongIsPinned"])
        {
          [v3 setIsPinned:{objc_msgSend(*(a1 + 40), "isPinned")}];
        }

        if ([v7 isEqualToString:@"MPModelPropertySongIsFavorite"])
        {
          [v3 setIsFavorite:{objc_msgSend(*(a1 + 40), "isFavorite")}];
        }

        if ([v7 isEqualToString:@"MPModelPropertySongIsDisliked"])
        {
          [v3 setIsDisliked:{objc_msgSend(*(a1 + 40), "isDisliked")}];
        }

        if ([v7 isEqualToString:@"MPModelPropertySongLibraryAdded"])
        {
          [v3 setLibraryAdded:v9];
        }

        else if ([v7 isEqualToString:@"MPModelPropertySongKeepLocalEnableState"])
        {
          [v3 setKeepLocalEnableState:{objc_msgSend(*(a1 + 40), "keepLocalEnableState")}];
        }

        else if ([v7 isEqualToString:@"MPModelPropertySongKeepLocalManagedStatus"])
        {
          [v3 setKeepLocalManagedStatus:{objc_msgSend(*(a1 + 40), "keepLocalManagedStatus")}];
        }

        else if ([v7 isEqualToString:@"MPModelPropertySongKeepLocalManagedStatusReason"])
        {
          [v3 setKeepLocalManagedStatusReason:{objc_msgSend(*(a1 + 40), "keepLocalManagedStatusReason")}];
        }

        else if ([v7 isEqualToString:@"MPModelPropertySongKeepLocalConstraints"])
        {
          [v3 setKeepLocalConstraints:{objc_msgSend(*(a1 + 40), "keepLocalConstraints")}];
        }

        else if ([v7 isEqualToString:@"MPModelPropertySongUserRating"])
        {
          if (([*(a1 + 40) hasCloudSyncSource] | v9))
          {
            [*(a1 + 40) userRating];
            [v3 setUserRating:?];
          }
        }

        else
        {
          v10 = [v7 isEqualToString:@"MPModelPropertySongCloudStatus"];
          v11 = *(a1 + 40);
          if (v10)
          {
            [v3 setCloudStatus:{objc_msgSend(v11, "cloudStatus")}];
          }

          else if ([v11 hasCloudSyncSource] && objc_msgSend(v7, "isEqualToString:", @"MPModelPropertySongLibraryAddEligible"))
          {
            if ([*(a1 + 40) isLibraryAddEligible])
            {
              v12 = 1;
            }

            else
            {
              v12 = [v3 isLibraryAddEligible];
            }

            [v3 setLibraryAddEligible:v12];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v4 = v13;
    }

    while (v13);
  }

  v14 = [*(a1 + 48) objectForKey:@"MPModelRelationshipSongLocalFileAsset"];
  v15 = v14 == 0;

  if (!v15)
  {
    v16 = [*(a1 + 40) localFileAsset];
    [v3 setLocalFileAsset:v16];
  }

  v17 = [*(a1 + 48) objectForKey:@"MPModelRelationshipSongPlaybackPosition"];
  if (v17)
  {
    if ([v3 hasLoadedValueForKey:@"MPModelRelationshipSongPlaybackPosition"])
    {
      v18 = [v3 playbackPosition];
    }

    else
    {
      v18 = 0;
    }

    v19 = *(a1 + 72);
    v20 = [*(a1 + 40) playbackPosition];
    v21 = [v19 _lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:v18 libraryPlaybackPosition:v20 personalizationProperties:v17];
    [v3 setPlaybackPosition:v21];
  }

  v22 = [*(a1 + 48) objectForKey:@"MPModelRelationshipSongLyrics"];
  if (v22)
  {
    if ([*(a1 + 56) hasLoadedValueForKey:@"MPModelRelationshipSongLyrics"])
    {
      v23 = [*(a1 + 56) lyrics];
    }

    else
    {
      v23 = 0;
    }

    v24 = *(a1 + 72);
    v25 = [*(a1 + 40) lyrics];
    v26 = [*(a1 + 56) identifiers];
    v27 = [v24 _lightweightPersonalizedLyricsWithUnpersonalizedLyrics:v23 libraryLyrics:v25 identifiers:v26 personalizationProperties:v22];
    [v3 setLyrics:v27];
  }

  if ([*(a1 + 40) hasCloudSyncSource])
  {
    v28 = [*(a1 + 48) objectForKey:@"MPModelRelationshipSongStoreAsset"];
    if (v28)
    {
      if ([v3 hasLoadedValueForKey:@"MPModelRelationshipSongStoreAsset"])
      {
        v29 = [v3 storeAsset];
      }

      else
      {
        v29 = 0;
      }

      v30 = *(a1 + 72);
      v31 = [*(a1 + 40) storeAsset];
      v32 = [v30 _lightweightPersonalizedStoreAssetWithUnpersonalizedAsset:v29 libraryAsset:v31 personalizationProperties:v28];
      [v3 setStoreAsset:v32];
    }
  }
}

void __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_5(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = *v29;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        if ([v8 isEqualToString:{@"MPModelPropertyTVEpisodeLibraryAdded", v28}])
        {
          v9 = *(a1 + 56);
          if (v9 == 1)
          {
            v10 = 1;
          }

          else if (v9 == 2)
          {
            v10 = 0;
          }

          else
          {
            v10 = [*(a1 + 40) isLibraryAdded];
          }

          [v3 setLibraryAdded:v10];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyTVEpisodeKeepLocalEnableState"])
        {
          [v3 setKeepLocalEnableState:{objc_msgSend(*(a1 + 40), "keepLocalEnableState")}];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyTVEpisodeKeepLocalManagedStatus"])
        {
          [v3 setKeepLocalManagedStatus:{objc_msgSend(*(a1 + 40), "keepLocalManagedStatus")}];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyTVEpisodeKeepLocalManagedStatusReason"])
        {
          [v3 setKeepLocalManagedStatusReason:{objc_msgSend(*(a1 + 40), "keepLocalManagedStatusReason")}];
        }

        else
        {
          v11 = [v8 isEqualToString:@"MPModelPropertyTVEpisodeKeepLocalConstraints"];
          v12 = *(a1 + 40);
          if (v11)
          {
            [v3 setKeepLocalConstraints:{objc_msgSend(v12, "keepLocalConstraints")}];
          }

          else if ([v12 hasCloudSyncSource] && objc_msgSend(v8, "isEqualToString:", @"MPModelPropertyTVEpisodeLibraryAddEligible"))
          {
            if ([*(a1 + 40) isLibraryAddEligible])
            {
              v13 = 1;
            }

            else
            {
              v13 = [v3 isLibraryAddEligible];
            }

            [v3 setLibraryAddEligible:v13];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v14 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v5 = v14;
    }

    while (v14);
  }

  v15 = [*(a1 + 48) objectForKey:@"MPModelRelationshipTVEpisodeLocalFileAsset"];
  v16 = v15 == 0;

  if (!v16)
  {
    v17 = [*(a1 + 40) localFileAsset];
    [v3 setLocalFileAsset:v17];
  }

  v18 = [*(a1 + 48) objectForKey:{@"MPModelRelationshipTVEpisodePlaybackPosition", v28}];
  if (v18)
  {
    if ([v3 hasLoadedValueForKey:@"MPModelRelationshipTVEpisodePlaybackPosition"])
    {
      v19 = [v3 playbackPosition];
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a1 + 64);
    v21 = [*(a1 + 40) playbackPosition];
    v22 = [v20 _lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:v19 libraryPlaybackPosition:v21 personalizationProperties:v18];
    [v3 setPlaybackPosition:v22];
  }

  if ([*(a1 + 40) hasCloudSyncSource])
  {
    v23 = [*(a1 + 48) objectForKey:@"MPModelRelationshipTVEpisodeStoreAsset"];
    if (v23)
    {
      v24 = *(a1 + 64);
      v25 = [v3 storeAsset];
      v26 = [*(a1 + 40) storeAsset];
      v27 = [v24 _lightweightPersonalizedStoreAssetWithUnpersonalizedAsset:v25 libraryAsset:v26 personalizationProperties:v23];
      [v3 setStoreAsset:v27];
    }
  }
}

void __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_7(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = *v29;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        if ([v8 isEqualToString:{@"MPModelPropertyMovieLibraryAdded", v28}])
        {
          v9 = *(a1 + 56);
          if (v9 == 1)
          {
            v10 = 1;
          }

          else if (v9 == 2)
          {
            v10 = 0;
          }

          else
          {
            v10 = [*(a1 + 40) isLibraryAdded];
          }

          [v3 setLibraryAdded:v10];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyMovieKeepLocalEnableState"])
        {
          [v3 setKeepLocalEnableState:{objc_msgSend(*(a1 + 40), "keepLocalEnableState")}];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyMovieKeepLocalManagedStatus"])
        {
          [v3 setKeepLocalManagedStatus:{objc_msgSend(*(a1 + 40), "keepLocalManagedStatus")}];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyMovieKeepLocalManagedStatusReason"])
        {
          [v3 setKeepLocalManagedStatusReason:{objc_msgSend(*(a1 + 40), "keepLocalManagedStatusReason")}];
        }

        else
        {
          v11 = [v8 isEqualToString:@"MPModelPropertyMovieKeepLocalConstraints"];
          v12 = *(a1 + 40);
          if (v11)
          {
            [v3 setKeepLocalConstraints:{objc_msgSend(v12, "keepLocalConstraints")}];
          }

          else if ([v12 hasCloudSyncSource] && objc_msgSend(v8, "isEqualToString:", @"MPModelPropertyMovieLibraryAddEligible"))
          {
            if ([*(a1 + 40) isLibraryAddEligible])
            {
              v13 = 1;
            }

            else
            {
              v13 = [v3 isLibraryAddEligible];
            }

            [v3 setLibraryAddEligible:v13];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v14 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v5 = v14;
    }

    while (v14);
  }

  v15 = [*(a1 + 48) objectForKey:@"MPModelRelationshipMovieLocalFileAsset"];
  v16 = v15 == 0;

  if (!v16)
  {
    v17 = [*(a1 + 40) localFileAsset];
    [v3 setLocalFileAsset:v17];
  }

  v18 = [*(a1 + 48) objectForKey:{@"MPModelRelationshipMoviePlaybackPosition", v28}];
  if (v18)
  {
    if ([v3 hasLoadedValueForKey:@"MPModelRelationshipMoviePlaybackPosition"])
    {
      v19 = [v3 playbackPosition];
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a1 + 64);
    v21 = [*(a1 + 40) playbackPosition];
    v22 = [v20 _lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:v19 libraryPlaybackPosition:v21 personalizationProperties:v18];
    [v3 setPlaybackPosition:v22];
  }

  if ([*(a1 + 40) hasCloudSyncSource])
  {
    v23 = [*(a1 + 48) objectForKey:@"MPModelRelationshipMovieStoreAsset"];
    if (v23)
    {
      v24 = *(a1 + 64);
      v25 = [v3 storeAsset];
      v26 = [*(a1 + 40) storeAsset];
      v27 = [v24 _lightweightPersonalizedStoreAssetWithUnpersonalizedAsset:v25 libraryAsset:v26 personalizationProperties:v23];
      [v3 setStoreAsset:v27];
    }
  }
}

void __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_9(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    v10 = v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        if ([v7 isEqualToString:{@"MPModelPropertyAlbumLibraryAdded", v10}])
        {
          v8 = *(a1 + 48);
          if (v8 == 1)
          {
            v9 = 1;
          }

          else if (v8 == 2)
          {
            v9 = 0;
          }

          else
          {
            v9 = [*(a1 + 40) isLibraryAdded];
          }

          [v3 setLibraryAdded:v9];
        }

        if ([v7 isEqualToString:@"MPModelPropertyAlbumIsPinned"])
        {
          [v3 setIsPinned:{objc_msgSend(*(a1 + 40), "isPinned")}];
        }

        if ([v7 isEqualToString:@"MPModelPropertyAlbumIsFavorite"])
        {
          [v3 setIsFavorite:{objc_msgSend(*(a1 + 40), "isFavorite")}];
        }

        if ([v7 isEqualToString:@"MPModelPropertyAlbumIsDisliked"])
        {
          [v3 setIsDisliked:{objc_msgSend(*(a1 + 40), "isDisliked")}];
        }

        else if ([v7 isEqualToString:@"MPModelPropertyAlbumKeepLocalEnableState"])
        {
          [v3 setKeepLocalEnableState:{objc_msgSend(*(a1 + 40), "keepLocalEnableState")}];
        }

        else if ([v7 isEqualToString:@"MPModelPropertyAlbumKeepLocalManagedStatus"])
        {
          [v3 setKeepLocalManagedStatus:{objc_msgSend(*(a1 + 40), "keepLocalManagedStatus")}];
        }

        else if ([v7 isEqualToString:@"MPModelPropertyAlbumKeepLocalManagedStatusReason"])
        {
          [v3 setKeepLocalManagedStatusReason:{objc_msgSend(*(a1 + 40), "keepLocalManagedStatusReason")}];
        }

        else if ([v7 isEqualToString:@"MPModelPropertyAlbumKeepLocalConstraints"])
        {
          [v3 setKeepLocalConstraints:{objc_msgSend(*(a1 + 40), "keepLocalConstraints")}];
        }

        else if ([v7 isEqualToString:@"MPModelPropertyAlbumLibraryAddEligible"])
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v13[0] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_10;
          v13[1] = &unk_1E76823C0;
          v14 = v3;
          v15 = *(a1 + 40);
          [MPModelObject performWithoutEnforcement:v12];
        }

        else if ([v7 isEqualToString:@"MPModelPropertyAlbumIsStoreRedownloadable"])
        {
          [v3 setStoreRedownloadable:{objc_msgSend(*(a1 + 40), "isStoreRedownloadable")}];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

void __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_11(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 isEqualToString:@"MPModelPropertyPlaylistLibraryAdded"])
        {
          v8 = *(a1 + 48);
          if (v8 == 1)
          {
            v9 = 1;
          }

          else if (v8 == 2)
          {
            v9 = 0;
          }

          else
          {
            v9 = [*(a1 + 40) isLibraryAdded];
          }

          [v3 setLibraryAdded:v9];
        }

        if ([v7 isEqualToString:@"MPModelPropertyPlaylistIsPinned"])
        {
          [v3 setIsPinned:{objc_msgSend(*(a1 + 40), "isPinned")}];
        }

        if ([v7 isEqualToString:@"MPModelPropertyPlaylistIsFavorite"])
        {
          [v3 setIsFavorite:{objc_msgSend(*(a1 + 40), "isFavorite")}];
        }

        if ([v7 isEqualToString:@"MPModelPropertyPlaylistIsDisliked"])
        {
          [v3 setIsDisliked:{objc_msgSend(*(a1 + 40), "isDisliked")}];
        }

        if ([v7 isEqualToString:@"MPModelPropertyPlaylistHasAnyCleanTracks"])
        {
          [v3 setHasAnyCleanTracks:{objc_msgSend(*(a1 + 40), "hasAnyCleanTracks")}];
        }

        if ([v7 isEqualToString:@"MPModelPropertyPlaylistHasAnyCleanDownloadedTracks"])
        {
          [v3 setHasAnyCleanTracks:{objc_msgSend(*(a1 + 40), "hasAnyCleanDownloadedTracks")}];
        }

        else if ([v7 isEqualToString:@"MPModelPropertyPlaylistKeepLocalEnableState"])
        {
          [v3 setKeepLocalEnableState:{objc_msgSend(*(a1 + 40), "keepLocalEnableState")}];
        }

        else if ([v7 isEqualToString:@"MPModelPropertyPlaylistKeepLocalManagedStatus"])
        {
          [v3 setKeepLocalManagedStatus:{objc_msgSend(*(a1 + 40), "keepLocalManagedStatus")}];
        }

        else if ([v7 isEqualToString:@"MPModelPropertyPlaylistKeepLocalManagedStatusReason"])
        {
          [v3 setKeepLocalManagedStatusReason:{objc_msgSend(*(a1 + 40), "keepLocalManagedStatusReason")}];
        }

        else if ([v7 isEqualToString:@"MPModelPropertyPlaylistKeepLocalConstraints"])
        {
          [v3 setKeepLocalConstraints:{objc_msgSend(*(a1 + 40), "keepLocalConstraints")}];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_12(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isEqualToString:@"MPModelPropertyArtistIsFavorite"])
        {
          [v3 setIsFavorite:{objc_msgSend(*(a1 + 40), "isFavorite")}];
        }

        if ([v7 isEqualToString:@"MPModelPropertyArtistIsDisliked"])
        {
          [v3 setIsDisliked:{objc_msgSend(*(a1 + 40), "isDisliked")}];
        }

        if ([v7 isEqualToString:@"MPModelPropertyArtistLibraryAdded"])
        {
          [v3 setLibraryAdded:{objc_msgSend(*(a1 + 40), "isLibraryAdded")}];
        }

        if ([v7 isEqualToString:@"MPModelPropertyArtistIsPinned"])
        {
          [v3 setIsPinned:{objc_msgSend(*(a1 + 40), "isPinned")}];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

uint64_t __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ([v2 isLibraryAddEligible])
  {
    v3 = 1;
  }

  else
  {
    v3 = [*(a1 + 40) isLibraryAddEligible];
  }

  return [v2 setLibraryAddEligible:v3];
}

+ (id)_lightweightPersonalizedStoreAssetWithUnpersonalizedAsset:(id)a3 libraryAsset:(id)a4 personalizationProperties:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 properties];
  v11 = [v7 identifiers];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __150__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedStoreAssetWithUnpersonalizedAsset_libraryAsset_personalizationProperties___block_invoke;
  v17[3] = &unk_1E767B790;
  v12 = v10;
  v18 = v12;
  v13 = v8;
  v19 = v13;
  v14 = v7;
  v20 = v14;
  v15 = [v14 copyWithIdentifiers:v11 block:v17];

  return v15;
}

void __150__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedStoreAssetWithUnpersonalizedAsset_libraryAsset_personalizationProperties___block_invoke(id *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isEqualToString:{@"MPModelPropertyStoreAssetEndpointType", v11}])
        {
          [v3 setEndpointType:{objc_msgSend(a1[5], "endpointType")}];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyStoreAssetRedownloadParameters"])
        {
          v9 = [a1[5] redownloadParameters];
          [v3 setRedownloadParameters:v9];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyStoreAssetAccountIdentifier"])
        {
          [v3 setAccountIdentifier:{objc_msgSend(a1[5], "accountIdentifier")}];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyStoreAssetShouldReportPlayEvents"])
        {
          [v3 setShouldReportPlayEvents:{objc_msgSend(a1[5], "shouldReportPlayEvents")}];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyStoreAssetRedownloadable"])
        {
          if ([a1[5] isRedownloadable])
          {
            v10 = 1;
          }

          else
          {
            v10 = [a1[6] isRedownloadable];
          }

          [v3 setRedownloadable:v10];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

+ (id)_lightweightPersonalizedLyricsWithUnpersonalizedLyrics:(id)a3 libraryLyrics:(id)a4 identifiers:(id)a5 personalizationProperties:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [v8 identifiers];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __160__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedLyricsWithUnpersonalizedLyrics_libraryLyrics_identifiers_personalizationProperties___block_invoke;
  v16[3] = &unk_1E767EEF0;
  v12 = v10;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v14 = [v8 copyWithIdentifiers:v11 block:v16];

  return v14;
}

void __160__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedLyricsWithUnpersonalizedLyrics_libraryLyrics_identifiers_personalizationProperties___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) properties];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v4 = v9 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v8 + 1) + 8 * v7) isEqualToString:{@"MPModelPropertyLyricsHasLibraryLyrics", v8}])
        {
          [v3 setHasLibraryLyrics:{objc_msgSend(*(a1 + 40), "hasLibraryLyrics")}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (id)_lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:(id)a3 identifiers:(id)a4 personalizationProperties:(id)a5
{
  v6 = a3;
  v7 = a5;
  if ([v6 hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionStoreUbiquitousIdentifier"] && (objc_msgSend(v6, "storeUbiquitousIdentifier"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = [v7 properties];
    v10 = +[MPUbiquitousPlaybackPositionController sharedUbiquitousPlaybackPositionController];
    v11 = [v10 playbackPositionForLocalEntityIdentifier:v8];

    if (v11)
    {
      v12 = [v6 identifiers];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __166__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition_identifiers_personalizationProperties___block_invoke;
      v15[3] = &unk_1E767E980;
      v16 = v9;
      v17 = v11;
      v13 = [v6 copyWithIdentifiers:v12 block:v15];
    }

    else
    {
      v13 = v6;
    }
  }

  else
  {
    v13 = v6;
  }

  return v13;
}

void __166__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition_identifiers_personalizationProperties___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isEqualToString:{@"MPModelPropertyPlaybackPositionBookmarkTime", v11}])
        {
          [*(a1 + 40) bookmarkTime];
          [v3 setBookmarkTime:v9 / 1000.0];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyPlaybackPositionHasBeenPlayed"])
        {
          [v3 setHasBeenPlayed:{objc_msgSend(*(a1 + 40), "hasBeenPlayed")}];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyPlaybackPositionUserPlayCount"])
        {
          [v3 setUserPlayCount:{objc_msgSend(*(a1 + 40), "userPlayCount")}];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyPlaybackPositionStoreUbiquitousIdentifier"])
        {
          v10 = [*(a1 + 40) ubiquitousIdentifier];
          [v3 setStoreUbiquitousIdentifier:v10];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

+ (id)_lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:(id)a3 libraryPlaybackPosition:(id)a4 personalizationProperties:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 properties];
  v11 = [v7 identifiers];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __178__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition_libraryPlaybackPosition_personalizationProperties___block_invoke;
  v16[3] = &unk_1E767E980;
  v12 = v10;
  v17 = v12;
  v13 = v8;
  v18 = v13;
  v14 = [v7 copyWithIdentifiers:v11 block:v16];

  return v14;
}

void __178__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition_libraryPlaybackPosition_personalizationProperties___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isEqualToString:{@"MPModelPropertyPlaybackPositionBookmarkTime", v9}])
        {
          [*(a1 + 40) bookmarkTime];
          [v3 setBookmarkTime:?];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyPlaybackPositionHasBeenPlayed"])
        {
          [v3 setHasBeenPlayed:{objc_msgSend(*(a1 + 40), "hasBeenPlayed")}];
        }

        else if ([v8 isEqualToString:@"MPModelPropertyPlaybackPositionUserPlayCount"])
        {
          [v3 setUserPlayCount:{objc_msgSend(*(a1 + 40), "userPlayCount")}];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end