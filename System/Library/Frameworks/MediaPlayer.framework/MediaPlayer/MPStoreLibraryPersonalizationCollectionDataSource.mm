@interface MPStoreLibraryPersonalizationCollectionDataSource
+ (id)_completePersonalizedObjectWithLibraryObject:(id)object personalizationProperties:(id)properties overrideLibraryAddedStatus:(int64_t)status;
+ (id)_lightweightPersonalizedLyricsWithUnpersonalizedLyrics:(id)lyrics libraryLyrics:(id)libraryLyrics identifiers:(id)identifiers personalizationProperties:(id)properties;
+ (id)_lightweightPersonalizedObjectWithUnpersonalizedObject:(id)object libraryObject:(id)libraryObject personalizationProperties:(id)properties overrideLibraryAddedStatus:(int64_t)status;
+ (id)_lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:(id)position identifiers:(id)identifiers personalizationProperties:(id)properties;
+ (id)_lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:(id)position libraryPlaybackPosition:(id)playbackPosition personalizationProperties:(id)properties;
+ (id)_lightweightPersonalizedStoreAssetWithUnpersonalizedAsset:(id)asset libraryAsset:(id)libraryAsset personalizationProperties:(id)properties;
- (MPStoreLibraryPersonalizationCollectionDataSource)init;
- (id).cxx_construct;
- (id)_libraryObjectWithRelativeModelClass:(Class)class identifierSet:(id)set propertySet:(id)propertySet;
- (id)identifiersForItemAtIndexPath:(id)path;
- (id)identifiersForSectionAtIndex:(int64_t)index;
- (id)indexPathForItemWithIdentifiersIntersectingSet:(id)set;
- (id)itemAtIndexPath:(id)path;
- (id)sectionAtIndex:(unint64_t)index;
- (shared_ptr<mlcore::EntityCache>)_entityCacheForEntityClass:(void *)class propertiesToFetch:(vector<mlcore:(std::allocator<mlcore::ModelPropertyBase *>> *)fetch :ModelPropertyBase *);
@end

@implementation MPStoreLibraryPersonalizationCollectionDataSource

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (shared_ptr<mlcore::EntityCache>)_entityCacheForEntityClass:(void *)class propertiesToFetch:(vector<mlcore:(std::allocator<mlcore::ModelPropertyBase *>> *)fetch :ModelPropertyBase *)
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
    if (v14 == fetch->var1 - fetch->var0)
    {
      v15 = memcmp(v12, fetch->var0, v14);
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

- (id)_libraryObjectWithRelativeModelClass:(Class)class identifierSet:(id)set propertySet:(id)propertySet
{
  setCopy = set;
  propertySetCopy = propertySet;
  library = [setCopy library];
  persistentID = [library persistentID];

  v12 = 0;
  if (propertySetCopy && persistentID)
  {
    v13 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:class];
    entityClass = [v13 entityClass];
    if (v13)
    {
      [v13 MLCorePropertiesForPropertySet:propertySetCopy];
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
    [(MPStoreLibraryPersonalizationCollectionDataSource *)self _entityCacheForEntityClass:entityClass propertiesToFetch:&v43];
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
      library2 = [(MPMediaLibraryView *)self->_libraryView library];
      [(MPMediaLibraryEntityTranslationContext *)v15 setMediaLibrary:library2];

      v17 = [MPModelKind kindWithModelClass:class];
      [(MPMediaLibraryEntityTranslationContext *)v15 setModelKind:v17];

      [(MPMediaLibraryEntityTranslationContext *)v15 setIdentifierSourcePrefix:@"PersonalizedDataSource-"];
      if ([MEMORY[0x1E69E4688] canAccessAccountStore])
      {
        library3 = [(MPMediaLibraryView *)self->_libraryView library];
        userIdentity = [library3 userIdentity];
        accountDSID = [userIdentity accountDSID];
        [(MPMediaLibraryEntityTranslationContext *)v15 setPersonID:accountDSID];
      }

      v21 = (*(*v41 + 48))(v41);
      v12 = [v13 objectForPropertySet:propertySetCopy entityClass:v21 propertyCache:mlcore::Entity::propertyCache(v41) context:v15];
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

- (id)indexPathForItemWithIdentifiersIntersectingSet:(id)set
{
  setCopy = set;
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
  selfCopy = self;
  v12 = &v13;
  v10 = setCopy;
  v6 = setCopy;
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

- (id)identifiersForSectionAtIndex:(int64_t)index
{
  v4 = [(MPSectionedCollection *)self->_unpersonalizedContentDescriptors sectionAtIndex:index];
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    model = [v4 model];
    relativeModelObjectForStoreLibraryPersonalization = [model relativeModelObjectForStoreLibraryPersonalization];
    v9 = objc_opt_class();
    if (v9)
    {
      v10 = [(NSMapTable *)self->_relativeModelClassToMappingResponse objectForKey:v9];
      identifiers = [relativeModelObjectForStoreLibraryPersonalization identifiers];
      v12 = [v10 libraryIdentifierSetForIdentifierSet:identifiers];

      identifiers2 = [relativeModelObjectForStoreLibraryPersonalization identifiers];
      v14 = [v12 unionSet:identifiers2];
      v15 = v14;
      if (v14)
      {
        identifiers3 = v14;
      }

      else
      {
        identifiers3 = [relativeModelObjectForStoreLibraryPersonalization identifiers];
      }

      identifiers5 = identifiers3;
    }

    else
    {
      identifiers4 = [relativeModelObjectForStoreLibraryPersonalization identifiers];
      if (identifiers4)
      {
        v10 = identifiers4;
        identifiers5 = v10;
      }

      else
      {
        identifiers5 = [model identifiers];
        v10 = 0;
      }
    }
  }

  else
  {
    identifiers5 = [v4 identifiers];
  }

  return identifiers5;
}

- (id)identifiersForItemAtIndexPath:(id)path
{
  v72[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [(MPSectionedCollection *)self->_unpersonalizedContentDescriptors itemAtIndexPath:pathCopy];
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v8 = v5;
    model = [v8 model];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [model type] == 5)
    {

      identifiers = [model identifiers];
    }

    else
    {

      relativeModelObjectForStoreLibraryPersonalization = [model relativeModelObjectForStoreLibraryPersonalization];
      v16 = objc_opt_class();
      if (v16)
      {
        identifiers2 = [relativeModelObjectForStoreLibraryPersonalization identifiers];
        if (identifiers2)
        {
          v52 = [(NSMapTable *)self->_relativeModelClassToMappingResponse objectForKey:v16];
          v18 = [v52 libraryIdentifierSetForIdentifierSet:identifiers2];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 unionSet:identifiers2];
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
                selfCopy4 = self;
                v62 = 2114;
                v63 = pathCopy;
                v64 = 2114;
                v65 = v19;
                v66 = 2114;
                v67 = identifiers2;
                _os_log_impl(&dword_1A238D000, v40, OS_LOG_TYPE_ERROR, "MPStoreLibraryPersonalizationCollectionDataSource %p: identifiersForItemAtIndexPath returning MPIdentifierSet.emptyIdentifierSet [libraryIdentifiers unionSet: failed] indexPath=%{public}@ libraryIdentifiers=%{public}@ originalIdentifiers=%{public}@", buf, 0x2Au);
              }

              v41 = MEMORY[0x1E69B13D8];
              v58[0] = pathCopy;
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
              v44 = [identifiers2 description];
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

            identifiers = v22;
          }

          else
          {
            identifiers = identifiers2;
          }
        }

        else
        {
          v30 = os_log_create("com.apple.amp.mediaplayer", "Default");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            selfCopy4 = self;
            v62 = 2114;
            v63 = pathCopy;
            v64 = 2114;
            v65 = relativeModelObjectForStoreLibraryPersonalization;
            _os_log_impl(&dword_1A238D000, v30, OS_LOG_TYPE_ERROR, "MPStoreLibraryPersonalizationCollectionDataSource %p: identifiersForItemAtIndexPath returning MPIdentifierSet.emptyIdentifierSet [effectiveOriginalObject has no identifiers] indexPath=%{public}@ effectiveOriginalObject=%{public}@", buf, 0x20u);
          }

          v31 = MEMORY[0x1E69B13D8];
          v69[0] = pathCopy;
          v68[0] = @"indexPath";
          v68[1] = @"originalObject";
          v32 = [model description];
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
          v35 = [relativeModelObjectForStoreLibraryPersonalization description];
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

          identifiers = +[MPIdentifierSet emptyIdentifierSet];
        }
      }

      else
      {
        identifiers = [model identifiers];
        if (!identifiers)
        {
          v23 = _MPLogCategoryDefault();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            selfCopy4 = self;
            v62 = 2114;
            v63 = pathCopy;
            v64 = 2114;
            v65 = model;
            _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_ERROR, "MPStoreLibraryPersonalizationCollectionDataSource %p: identifiersForItemAtIndexPath returning MPIdentifierSet.emptyIdentifierSet [originalObject has no identifiers] indexPath=%{public}@ originalObject=%{public}@", buf, 0x20u);
          }

          v24 = MEMORY[0x1E69B13D8];
          v54[0] = @"indexPath";
          v54[1] = @"originalObject";
          v55[0] = pathCopy;
          v25 = [model description];
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

          identifiers = +[MPIdentifierSet emptyIdentifierSet];
        }
      }
    }
  }

  else
  {
    identifiers = [v5 identifiers];
    if (identifiers)
    {
      goto LABEL_50;
    }

    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v71[0] = @"indexPath";
    v71[1] = @"possibleObject";
    v72[0] = pathCopy;
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
      selfCopy4 = self;
      v62 = 2114;
      v63 = pathCopy;
      v64 = 2114;
      v65 = v5;
      _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_ERROR, "MPStoreLibraryPersonalizationCollectionDataSource %p: identifiersForItemAtIndexPath returning MPIdentifierSet.emptyIdentifierSet [unpersonalizedContentDescriptors did not contain MPStoreLibraryPersonalizationContentDescriptor] indexPath=%{public}@ possibleObject=%{public}@", buf, 0x20u);
    }

    [MEMORY[0x1E69B13D8] snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"Tracklisting-LazySectionedCollectionDataSource-InvalidStateBug" context:@"-[MPStoreLibraryPersonalizationCollectionDataSource identifiersForItemAtIndexPath:] (unpersonalizedContentDescriptors did not contain MPStoreLibraryPersonalizationContentDescriptor)" triggerThresholdValues:0 events:v8 completion:0];
    identifiers = +[MPIdentifierSet emptyIdentifierSet];
  }

LABEL_50:

  return identifiers;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(MPSectionedCollection *)self->_unpersonalizedContentDescriptors itemAtIndexPath:pathCopy];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = v5;
  v9 = v8;
  v10 = v8;
  if (v6 == v7)
  {
    model = [v8 model];
    relativeModelObjectForStoreLibraryPersonalization = [model relativeModelObjectForStoreLibraryPersonalization];
    v13 = objc_opt_class();
    v10 = model;
    if (!v13)
    {
LABEL_30:

      goto LABEL_31;
    }

    v47 = [(NSMapTable *)self->_relativeModelClassToMappingResponse objectForKey:v13];
    identifiers = [relativeModelObjectForStoreLibraryPersonalization identifiers];
    v15 = [v47 libraryIdentifierSetForIdentifierSet:identifiers];
    v16 = v15;
    if (v15)
    {
      identifiers2 = v15;
    }

    else
    {
      identifiers2 = [relativeModelObjectForStoreLibraryPersonalization identifiers];
    }

    v17 = [(NSDictionary *)self->_itemIndexPathToOverridePropertySet objectForKey:pathCopy];
    itemProperties = v17;
    if (!v17)
    {
      itemProperties = self->_itemProperties;
    }

    v19 = itemProperties;

    personalizationStyle = [v9 personalizationStyle];
    if ((personalizationStyle - 1) < 2)
    {
      v42 = relativeModelObjectForStoreLibraryPersonalization;
      v43 = v19;
      v27 = [model personalizationScopedPropertiesForProperties:v19];
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

      relativeModelObjectForStoreLibraryPersonalization = v42;
      requiredStoreLibraryPersonalizationProperties = [v13 requiredStoreLibraryPersonalizationProperties];
      v31 = requiredStoreLibraryPersonalizationProperties;
      if (requiredStoreLibraryPersonalizationProperties)
      {
        v32 = requiredStoreLibraryPersonalizationProperties;
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

      v25 = [(MPStoreLibraryPersonalizationCollectionDataSource *)self _libraryObjectWithRelativeModelClass:v13 identifierSet:identifiers2 propertySet:v23];
      v26 = [objc_opt_class() _lightweightPersonalizedObjectWithUnpersonalizedObject:v42 libraryObject:v25 personalizationProperties:v23 overrideLibraryAddedStatus:0];
      if (v26 == v42)
      {
        v10 = model;
      }

      else
      {
        v38 = [model objectWithStoreLibraryPersonalizationRelativeModelObject:v26];
        v39 = v38;
        v10 = model;
        if (v38)
        {
          v10 = v38;
        }
      }
    }

    else
    {
      v10 = model;
      if ((personalizationStyle - 3) >= 2)
      {
LABEL_29:

        goto LABEL_30;
      }

      v21 = [model personalizationScopedPropertiesForProperties:v19];
      v22 = [(MPStoreLibraryPersonalizationCollectionDataSource *)self _libraryObjectWithRelativeModelClass:v13 identifierSet:identifiers2 propertySet:v21];
      v45 = v21;
      if (!v22)
      {
        v33 = 0;
        v10 = model;
LABEL_28:

        goto LABEL_29;
      }

      v23 = [objc_opt_class() _completePersonalizedObjectWithLibraryObject:v22 personalizationProperties:v21 overrideLibraryAddedStatus:0];
      v24 = [model objectWithStoreLibraryPersonalizationRelativeModelObject:v23];
      v44 = v22;
      if (!v24)
      {
        v25 = 0;
        v10 = model;
        goto LABEL_27;
      }

      v43 = v19;
      v25 = v24;
      v26 = model;
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

- (id)sectionAtIndex:(unint64_t)index
{
  v5 = [(MPSectionedCollection *)self->_unpersonalizedContentDescriptors sectionAtIndex:?];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = v5;
  v9 = v8;
  v10 = v8;
  if (v6 == v7)
  {
    model = [v8 model];
    relativeModelObjectForStoreLibraryPersonalization = [model relativeModelObjectForStoreLibraryPersonalization];
    v13 = objc_opt_class();
    v10 = model;
    if (!v13)
    {
LABEL_30:

      goto LABEL_31;
    }

    v41 = [(NSMapTable *)self->_relativeModelClassToMappingResponse objectForKey:v13];
    identifiers = [relativeModelObjectForStoreLibraryPersonalization identifiers];
    v43 = [v41 libraryIdentifierSetForIdentifierSet:identifiers];

    sectionToLibraryAddedOverride = self->_sectionToLibraryAddedOverride;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
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

    personalizationStyle = [v9 personalizationStyle];
    if ((personalizationStyle - 3) < 2)
    {
      v42 = relativeModelObjectForStoreLibraryPersonalization;
      v27 = [model personalizationScopedPropertiesForProperties:self->_sectionProperties];
      v28 = [(MPStoreLibraryPersonalizationCollectionDataSource *)self _libraryObjectWithRelativeModelClass:v13 identifierSet:v43 propertySet:v27];
      if (!v28)
      {
        v10 = model;
LABEL_28:

        relativeModelObjectForStoreLibraryPersonalization = v42;
        goto LABEL_29;
      }

      v29 = [objc_opt_class() _completePersonalizedObjectWithLibraryObject:v28 personalizationProperties:v27 overrideLibraryAddedStatus:v18];
      v30 = [model objectWithStoreLibraryPersonalizationRelativeModelObject:v29];
      if (!v30)
      {
        v31 = 0;
        v10 = model;
        goto LABEL_27;
      }

      v31 = v30;
      v32 = model;
      v10 = v31;
    }

    else
    {
      v10 = model;
      if ((personalizationStyle - 1) > 1)
      {
LABEL_29:

        goto LABEL_30;
      }

      v38 = v18;
      v42 = relativeModelObjectForStoreLibraryPersonalization;
      v20 = [model personalizationScopedPropertiesForProperties:self->_sectionProperties];
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

      requiredStoreLibraryPersonalizationProperties = [v13 requiredStoreLibraryPersonalizationProperties];
      v25 = requiredStoreLibraryPersonalizationProperties;
      if (requiredStoreLibraryPersonalizationProperties)
      {
        v26 = requiredStoreLibraryPersonalizationProperties;
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
        v10 = model;
      }

      else
      {
        v35 = [model objectWithStoreLibraryPersonalizationRelativeModelObject:v32];
        v36 = v35;
        v10 = model;
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

+ (id)_completePersonalizedObjectWithLibraryObject:(id)object personalizationProperties:(id)properties overrideLibraryAddedStatus:(int64_t)status
{
  objectCopy = object;
  propertiesCopy = properties;
  v9 = objectCopy;
  properties = [propertiesCopy properties];
  v11 = objc_opt_class();
  if ([v11 isSubclassOfClass:objc_opt_class()])
  {
    v12 = v9;
    identifiers = [v12 identifiers];
    v14 = v37;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke;
    v37[3] = &unk_1E767B8F0;
    v37[4] = properties;
    statusCopy = status;
    v38 = v12;
    v15 = [v38 copyWithIdentifiers:identifiers block:v37];
  }

  else if ([v11 isSubclassOfClass:objc_opt_class()])
  {
    v16 = v9;
    identifiers = [v16 identifiers];
    v14 = v34;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_2;
    v34[3] = &unk_1E767B918;
    v34[4] = properties;
    statusCopy2 = status;
    v35 = v16;
    v15 = [v35 copyWithIdentifiers:identifiers block:v34];
  }

  else if ([v11 isSubclassOfClass:objc_opt_class()])
  {
    v17 = v9;
    identifiers = [v17 identifiers];
    v14 = v31;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_3;
    v31[3] = &unk_1E767B940;
    v31[4] = properties;
    statusCopy3 = status;
    v32 = v17;
    v15 = [v32 copyWithIdentifiers:identifiers block:v31];
  }

  else if ([v11 isSubclassOfClass:objc_opt_class()])
  {
    v18 = v9;
    identifiers = [v18 identifiers];
    v14 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_4;
    v28[3] = &unk_1E767B8A0;
    v28[4] = properties;
    statusCopy4 = status;
    v29 = v18;
    v15 = [v29 copyWithIdentifiers:identifiers block:v28];
  }

  else if ([v11 isSubclassOfClass:objc_opt_class()])
  {
    v19 = v9;
    identifiers = [v19 identifiers];
    v14 = v25;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_5;
    v25[3] = &unk_1E767B8C8;
    v25[4] = properties;
    statusCopy5 = status;
    v26 = v19;
    v15 = [v26 copyWithIdentifiers:identifiers block:v25];
  }

  else
  {
    v20 = v9;
    if (![v11 isSubclassOfClass:objc_opt_class()])
    {
      goto LABEL_14;
    }

    v21 = v9;
    identifiers = [v21 identifiers];
    v14 = v23;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __151__MPStoreLibraryPersonalizationCollectionDataSource__completePersonalizedObjectWithLibraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_6;
    v23[3] = &unk_1E767EE78;
    v23[4] = properties;
    v24 = v21;
    v15 = [v24 copyWithIdentifiers:identifiers block:v23];
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

+ (id)_lightweightPersonalizedObjectWithUnpersonalizedObject:(id)object libraryObject:(id)libraryObject personalizationProperties:(id)properties overrideLibraryAddedStatus:(int64_t)status
{
  objectCopy = object;
  libraryObjectCopy = libraryObject;
  propertiesCopy = properties;
  v13 = objectCopy;
  v75 = propertiesCopy;
  identifiers = [v13 identifiers];
  properties = [propertiesCopy properties];
  relationships = [propertiesCopy relationships];
  v14 = objc_opt_class();
  if ([v14 isSubclassOfClass:objc_opt_class()])
  {
    v15 = v13;
    if (libraryObjectCopy)
    {
      v16 = libraryObjectCopy;
      identifiers2 = [v16 identifiers];
      v18 = [identifiers2 unionSet:identifiers];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = identifiers;
      }

      v21 = v20;

      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke;
      v110[3] = &unk_1E767B7B8;
      v111 = properties;
      statusCopy = status;
      v22 = v16;
      v112 = v22;
      v113 = relationships;
      selfCopy = self;
      v23 = v15;
      v114 = v23;
      v24 = [v23 copyWithIdentifiers:v21 block:v110];

      v15 = v23;
    }

    else
    {
      v22 = [relationships objectForKey:@"MPModelRelationshipSongPlaybackPosition"];
      v24 = v15;
      if (v22)
      {
        if ([v15 hasLoadedValueForKey:@"MPModelRelationshipSongPlaybackPosition"])
        {
          playbackPosition = [v15 playbackPosition];
        }

        else
        {
          playbackPosition = 0;
        }

        if (![playbackPosition hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionShouldRememberBookmarkTime"] || (v24 = v15, objc_msgSend(playbackPosition, "shouldRememberBookmarkTime")))
        {
          identifiers3 = [v15 identifiers];
          v53 = [self _lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:playbackPosition identifiers:identifiers3 personalizationProperties:v22];

          v24 = v15;
          if (playbackPosition != v53)
          {
            identifiers4 = [v15 identifiers];
            v108[0] = MEMORY[0x1E69E9820];
            v108[1] = 3221225472;
            v108[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_2;
            v108[3] = &unk_1E767D0F0;
            v109 = v53;
            v24 = [v15 copyWithIdentifiers:identifiers4 block:v108];
          }
        }
      }

      v55 = [relationships objectForKey:@"MPModelRelationshipSongLyrics"];
      if (v55)
      {
        if ([v15 hasLoadedValueForKey:@"MPModelRelationshipSongLyrics"])
        {
          lyrics = [v15 lyrics];
        }

        else
        {
          lyrics = 0;
        }

        identifiers5 = [lyrics identifiers];
        v58 = [lyrics copyWithIdentifiers:identifiers5 block:&__block_literal_global_32326];

        identifiers6 = [v15 identifiers];
        v106[0] = MEMORY[0x1E69E9820];
        v106[1] = 3221225472;
        v106[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_4;
        v106[3] = &unk_1E767D0F0;
        v60 = v58;
        v107 = v60;
        v61 = [v15 copyWithIdentifiers:identifiers6 block:v106];

        v24 = v61;
        libraryObjectCopy = 0;
      }
    }

    goto LABEL_71;
  }

  if ([v14 isSubclassOfClass:objc_opt_class()])
  {
    v15 = v13;
    if (libraryObjectCopy)
    {
      v25 = libraryObjectCopy;
      identifiers7 = [v25 identifiers];
      v27 = [identifiers7 unionSet:identifiers];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = identifiers;
      }

      v30 = v29;

      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_5;
      v100[3] = &unk_1E767B800;
      v101 = properties;
      statusCopy2 = status;
      v22 = v25;
      v102 = v22;
      v103 = relationships;
      selfCopy2 = self;
      v24 = [v15 copyWithIdentifiers:v30 block:v100];

      v31 = v101;
LABEL_19:

      goto LABEL_71;
    }

    v22 = [relationships objectForKey:@"MPModelRelationshipTVEpisodePlaybackPosition"];
    if (v22)
    {
      if ([v15 hasLoadedValueForKey:@"MPModelRelationshipTVEpisodePlaybackPosition"])
      {
        playbackPosition2 = [v15 playbackPosition];
      }

      else
      {
        playbackPosition2 = 0;
      }

      if ([playbackPosition2 hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionShouldRememberBookmarkTime"])
      {
        v24 = v15;
        if (![playbackPosition2 shouldRememberBookmarkTime])
        {
          goto LABEL_70;
        }
      }

      identifiers8 = [v15 identifiers];
      v69 = [self _lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:playbackPosition2 identifiers:identifiers8 personalizationProperties:v22];

      v24 = v15;
      if (playbackPosition2 == v69)
      {
LABEL_69:

LABEL_70:
        goto LABEL_71;
      }

      identifiers9 = [v15 identifiers];
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_6;
      v98[3] = &unk_1E767B828;
      v99 = v69;
      v24 = [v15 copyWithIdentifiers:identifiers9 block:v98];

      v71 = v99;
LABEL_68:

      goto LABEL_69;
    }

    goto LABEL_52;
  }

  if ([v14 isSubclassOfClass:objc_opt_class()])
  {
    v15 = v13;
    if (libraryObjectCopy)
    {
      v32 = libraryObjectCopy;
      identifiers10 = [v32 identifiers];
      v34 = [identifiers10 unionSet:identifiers];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = identifiers;
      }

      v37 = v36;

      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_7;
      v92[3] = &unk_1E767B850;
      v93 = properties;
      statusCopy3 = status;
      v22 = v32;
      v94 = v22;
      v95 = relationships;
      selfCopy3 = self;
      v24 = [v15 copyWithIdentifiers:v37 block:v92];

      v31 = v93;
      goto LABEL_19;
    }

    v22 = [relationships objectForKey:@"MPModelRelationshipMoviePlaybackPosition"];
    if (v22)
    {
      if ([v15 hasLoadedValueForKey:@"MPModelRelationshipMoviePlaybackPosition"])
      {
        playbackPosition2 = [v15 playbackPosition];
      }

      else
      {
        playbackPosition2 = 0;
      }

      if ([playbackPosition2 hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionShouldRememberBookmarkTime"])
      {
        v24 = v15;
        if (![playbackPosition2 shouldRememberBookmarkTime])
        {
          goto LABEL_70;
        }
      }

      identifiers11 = [v15 identifiers];
      v69 = [self _lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:playbackPosition2 identifiers:identifiers11 personalizationProperties:v22];

      v24 = v15;
      if (playbackPosition2 == v69)
      {
        goto LABEL_69;
      }

      identifiers12 = [v15 identifiers];
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_8;
      v90[3] = &unk_1E767B878;
      v91 = v69;
      v24 = [v15 copyWithIdentifiers:identifiers12 block:v90];

      v71 = v91;
      goto LABEL_68;
    }

LABEL_52:
    v24 = v15;
    goto LABEL_71;
  }

  if ([v14 isSubclassOfClass:objc_opt_class()])
  {
    v39 = libraryObjectCopy;
    identifiers13 = [v39 identifiers];
    v41 = [identifiers13 unionSet:identifiers];
    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = identifiers;
    }

    v44 = v43;

    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_9;
    v86[3] = &unk_1E767B8A0;
    v87 = properties;
    statusCopy4 = status;
    v15 = v39;
    v88 = v15;
    v24 = [v13 copyWithIdentifiers:v44 block:v86];

    v22 = v87;
  }

  else if ([v14 isSubclassOfClass:objc_opt_class()])
  {
    v46 = libraryObjectCopy;
    identifiers14 = [v46 identifiers];
    v48 = [identifiers14 unionSet:identifiers];
    v49 = v48;
    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = identifiers;
    }

    v51 = v50;

    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_11;
    v82[3] = &unk_1E767B8C8;
    v83 = properties;
    statusCopy5 = status;
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

    v62 = libraryObjectCopy;
    identifiers15 = [v62 identifiers];
    v64 = [identifiers15 unionSet:identifiers];
    v65 = v64;
    if (v64)
    {
      v66 = v64;
    }

    else
    {
      v66 = identifiers;
    }

    v67 = v66;

    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __175__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedObjectWithUnpersonalizedObject_libraryObject_personalizationProperties_overrideLibraryAddedStatus___block_invoke_12;
    v79[3] = &unk_1E767EE78;
    v80 = properties;
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

+ (id)_lightweightPersonalizedStoreAssetWithUnpersonalizedAsset:(id)asset libraryAsset:(id)libraryAsset personalizationProperties:(id)properties
{
  assetCopy = asset;
  libraryAssetCopy = libraryAsset;
  propertiesCopy = properties;
  properties = [propertiesCopy properties];
  identifiers = [assetCopy identifiers];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __150__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedStoreAssetWithUnpersonalizedAsset_libraryAsset_personalizationProperties___block_invoke;
  v17[3] = &unk_1E767B790;
  v12 = properties;
  v18 = v12;
  v13 = libraryAssetCopy;
  v19 = v13;
  v14 = assetCopy;
  v20 = v14;
  v15 = [v14 copyWithIdentifiers:identifiers block:v17];

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

+ (id)_lightweightPersonalizedLyricsWithUnpersonalizedLyrics:(id)lyrics libraryLyrics:(id)libraryLyrics identifiers:(id)identifiers personalizationProperties:(id)properties
{
  lyricsCopy = lyrics;
  libraryLyricsCopy = libraryLyrics;
  propertiesCopy = properties;
  identifiers = [lyricsCopy identifiers];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __160__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedLyricsWithUnpersonalizedLyrics_libraryLyrics_identifiers_personalizationProperties___block_invoke;
  v16[3] = &unk_1E767EEF0;
  v12 = propertiesCopy;
  v17 = v12;
  v13 = libraryLyricsCopy;
  v18 = v13;
  v14 = [lyricsCopy copyWithIdentifiers:identifiers block:v16];

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

+ (id)_lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:(id)position identifiers:(id)identifiers personalizationProperties:(id)properties
{
  positionCopy = position;
  propertiesCopy = properties;
  if ([positionCopy hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionStoreUbiquitousIdentifier"] && (objc_msgSend(positionCopy, "storeUbiquitousIdentifier"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    properties = [propertiesCopy properties];
    v10 = +[MPUbiquitousPlaybackPositionController sharedUbiquitousPlaybackPositionController];
    v11 = [v10 playbackPositionForLocalEntityIdentifier:v8];

    if (v11)
    {
      identifiers = [positionCopy identifiers];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __166__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition_identifiers_personalizationProperties___block_invoke;
      v15[3] = &unk_1E767E980;
      v16 = properties;
      v17 = v11;
      v13 = [positionCopy copyWithIdentifiers:identifiers block:v15];
    }

    else
    {
      v13 = positionCopy;
    }
  }

  else
  {
    v13 = positionCopy;
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

+ (id)_lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition:(id)position libraryPlaybackPosition:(id)playbackPosition personalizationProperties:(id)properties
{
  positionCopy = position;
  playbackPositionCopy = playbackPosition;
  propertiesCopy = properties;
  properties = [propertiesCopy properties];
  identifiers = [positionCopy identifiers];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __178__MPStoreLibraryPersonalizationCollectionDataSource__lightweightPersonalizedPlaybackPositionWithUnpersonalizedPlaybackPosition_libraryPlaybackPosition_personalizationProperties___block_invoke;
  v16[3] = &unk_1E767E980;
  v12 = properties;
  v17 = v12;
  v13 = playbackPositionCopy;
  v18 = v13;
  v14 = [positionCopy copyWithIdentifiers:identifiers block:v16];

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