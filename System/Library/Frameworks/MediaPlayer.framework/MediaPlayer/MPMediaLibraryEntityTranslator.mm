@interface MPMediaLibraryEntityTranslator
+ (NSArray)allTranslators;
+ (id)_translatorForMPModelClass:(Class)class mlcoreEntityClass:(void *)entityClass create:(BOOL)create transient:(BOOL)transient;
+ (id)translatorForMPModelClass:(Class)class;
- (Class)classForRelationshipKey:(id)key;
- (id)_cachedIdentifierSourceForContext:(id)context;
- (id)_objectForPropertySet:(id)set entityClass:(void *)class propertyCache:(const void *)cache baseTranslator:(id)translator prependKeyPath:(id)path context:(id)context;
- (id)_propertyTranslatorForKeyPath:(id)path;
- (id)_valueForKeyPath:(id)path forPropertyCache:(const void *)cache context:(id)context;
- (id)identifiersForPropertyCache:(const void *)cache context:(id)context;
- (id)objectForPropertySet:(id)set entityClass:(void *)class propertyCache:(const void *)cache context:(id)context;
- (shared_ptr<mlcore::EntityQuery>)entityQueryForPropertySet:(id)set sortDescriptors:(id)descriptors context:(id)context view:(id)view;
- (shared_ptr<mlcore::EntityQuery>)entityQueryForPropertySet:(id)set sortDescriptors:(id)descriptors context:(id)context view:(id)view deferLoadingRelationProperties:(BOOL)properties;
- (shared_ptr<mlcore::PropertiesQuery>)propertiesQueryForPropertySet:(id)set scopedContainers:(id)containers allowedItemIdentifiers:(id)identifiers view:(id)view;
- (shared_ptr<std::unordered_map<std::string,)_propertyMapForKeyPath:(id)path includePropertiesToSort:(BOOL)sort;
- (unordered_map<std::string,)propertiesToFetchForPropertyKey:()std:()std:(std:(mlcore:(MPMediaLibraryEntityTranslator *)self :(SEL)a3 ModelPropertyBase *>>> *__return_ptr)retstr :(id)a4 allocator<std::pair<const)std::string :equal_to<std::string> :hash<std::string>;
- (vector<mlcore::ModelPropertyBase)_MLCorePropertiesForPropertySet:(MPMediaLibraryEntityTranslator *)self withForeignPropertyBase:(SEL)base deferLoadingRelationProperties:(id)properties;
- (vector<mlcore::SortDescriptor,)MLCoreSortDescriptorsForModelSortDescriptors:(MPMediaLibraryEntityTranslator *)self;
- (vector<std::shared_ptr<mlcore::Predicate>,)MLCorePredicateForModelPropertyFilters:(MPMediaLibraryEntityTranslator *)self;
- (void)_propertyForKeyPath:(id)path;
- (void)mapIdentifierMLProperties:(const void *)properties identifierCreationBlock:(id)block;
- (void)mapPropertyKey:(id)key toMLProperty:(void *)property;
- (void)mapPropertyKey:(id)key withPropertiesToFetch:(const void *)fetch propertiesToSort:(const void *)sort sortTransformer:(id)transformer filterTransformer:(id)filterTransformer valueTransformer:(id)valueTransformer;
- (void)mapPropertyKey:(id)key withPropertiesToFetch:(const void *)fetch valueTransformer:(id)transformer;
- (void)mapRelationshipKey:(id)key toModelClass:(Class)class transient:(BOOL)transient usingForeignPropertyBase:(void *)base;
- (void)mapRelationshipKey:(id)key toModelClass:(Class)class transient:(BOOL)transient usingForeignPropertyBase:(void *)base relationshipValidationProperties:(const void *)properties isValidRelationshipHandler:(id)handler;
@end

@implementation MPMediaLibraryEntityTranslator

- (vector<mlcore::ModelPropertyBase)_MLCorePropertiesForPropertySet:(MPMediaLibraryEntityTranslator *)self withForeignPropertyBase:(SEL)base deferLoadingRelationProperties:(id)properties
{
  v81 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v73 = &v72;
  v74 = 0x5812000000;
  v75 = __Block_byref_object_copy__168;
  v76 = __Block_byref_object_dispose__169;
  v77 = "";
  memset(v78, 0, sizeof(v78));
  v79 = 1065353216;
  propertiesCopy = properties;
  properties = [propertiesCopy properties];
  v8 = properties;
  if (properties)
  {
    v9 = [properties setByAddingObject:@"_default"];
  }

  else
  {
    v9 = [MEMORY[0x1E695DFD8] setWithObject:@"_default"];
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v10)
  {
    v11 = *v69;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v69 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v68 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_propertiesToTranslators objectForKeyedSubscript:v13];
        v15 = v14;
        if (!v14)
        {
          mPModelClass = [(MPMediaLibraryEntityTranslator *)self MPModelClass];
          v18 = MEMORY[0x1E696AEC0];
          v19 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
          v20 = [v18 stringWithFormat:@"MediaLibrary property mapping missing for %@:%@", v19, v13];
          MPModelPropertyMappingMissing(mPModelClass, v13, v20);

LABEL_15:
          mPModelClass2 = [(MPMediaLibraryEntityTranslator *)self MPModelClass];
          v22 = MEMORY[0x1E696AEC0];
          v23 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
          v24 = [v22 stringWithFormat:@"MediaLibrary property translator mapping missing for %@:%@", v23, v13];
          MPModelPropertyMappingMissing(mPModelClass2, v13, v24);

          goto LABEL_16;
        }

        [v14 propertiesToFetchMap];
        v16 = v65;
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        if (!v16)
        {
          goto LABEL_15;
        }

LABEL_16:
        [v15 propertiesToFetchMap];
        std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(&v65, __p);
        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v63);
        }

        _MPMLGetForeignPropertyMap(&__p, a5, &v65);
        v25 = v64;
        if (v64)
        {
          do
          {
            std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::__emplace_unique_key_args<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase * const&>(v73 + 6, v25[5]);
            v25 = *v25;
          }

          while (v25);
          v26 = v64;
        }

        else
        {
          v26 = 0;
        }

        std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v26);
        v27 = __p;
        __p = 0;
        if (v27)
        {
          operator delete(v27);
        }

        std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v67);
        v28 = v65;
        v65 = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v68 objects:v80 count:16];
    }

    while (v10);
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  if (!a6)
  {
    relationships = [propertiesCopy relationships];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __121__MPMediaLibraryEntityTranslator__MLCorePropertiesForPropertySet_withForeignPropertyBase_deferLoadingRelationProperties___block_invoke;
    v56[3] = &unk_1E767DC78;
    v56[4] = self;
    v56[5] = &v58;
    v56[6] = &v72;
    v56[7] = a5;
    v57 = a6;
    [relationships enumerateKeysAndObjectsUsingBlock:v56];

    if (v59[3])
    {
      v30 = [(NSMutableDictionary *)self->_propertiesToTranslators objectForKeyedSubscript:@"_MPModelPropertyPlaylistEntryArtwork"];
      v31 = v30;
      if (v30)
      {
        [v30 propertiesToFetchMap];
        v32 = v65;
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        if (v32)
        {
          goto LABEL_37;
        }
      }

      else
      {
        mPModelClass3 = [(MPMediaLibraryEntityTranslator *)self MPModelClass];
        v34 = MEMORY[0x1E696AEC0];
        v35 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
        v36 = [v34 stringWithFormat:@"MediaLibrary property mapping missing for %@:%@", v35, @"_MPModelPropertyPlaylistEntryArtwork"];
        MPModelPropertyMappingMissing(mPModelClass3, @"_MPModelPropertyPlaylistEntryArtwork", v36);
      }

      mPModelClass4 = [(MPMediaLibraryEntityTranslator *)self MPModelClass];
      v38 = MEMORY[0x1E696AEC0];
      v39 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
      v40 = [v38 stringWithFormat:@"MediaLibrary property translator mapping missing for %@:%@", v39, @"_MPModelPropertyPlaylistEntryArtwork"];
      MPModelPropertyMappingMissing(mPModelClass4, @"_MPModelPropertyPlaylistEntryArtwork", v40);

LABEL_37:
      [v31 propertiesToFetchMap];
      std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(&v65, __p);
      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v63);
      }

      _MPMLGetForeignPropertyMap(&__p, a5, &v65);
      v41 = v64;
      if (v64)
      {
        do
        {
          if (*(v41 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v54, v41[2], v41[3]);
          }

          else
          {
            v54 = *(v41 + 2);
          }

          v55 = v41[5];
          std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::__emplace_unique_key_args<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase * const&>(v73 + 6, v55);
          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          v41 = *v41;
        }

        while (v41);
        v42 = v64;
      }

      else
      {
        v42 = 0;
      }

      std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v42);
      v43 = __p;
      __p = 0;
      if (v43)
      {
        operator delete(v43);
      }

      std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v67);
      v44 = v65;
      v65 = 0;
      if (v44)
      {
        operator delete(v44);
      }
    }
  }

  v45 = v73[8];
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  if (v45)
  {
    v46 = 0;
    v47 = v45;
    do
    {
      ++v46;
      v47 = *v47;
    }

    while (v47);
    std::vector<mlcore::ModelPropertyBase *>::__vallocate[abi:ne200100](retstr, v46);
  }

  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v72, 8);
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(v78);

  return result;
}

void __121__MPMediaLibraryEntityTranslator__MLCorePropertiesForPropertySet_withForeignPropertyBase_deferLoadingRelationProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
  if (!v7)
  {
    v8 = [*(a1 + 32) MPModelClass];
    v9 = MEMORY[0x1E696AEC0];
    v10 = NSStringFromClass([*(a1 + 32) MPModelClass]);
    v11 = [v9 stringWithFormat:@"MediaLibrary relationship mapping missing for %@:%@", v10, v5];
    MPModelPropertyMappingMissing(v8, v5, v11);
  }

  if (v5 == @"MPModelRelationshipPlaylistEntrySong" || v5 == @"MPModelRelationshipPlaylistEntryMovie" || v5 == @"MPModelRelationshipPlaylistEntryTVEpisode")
  {
    v12 = [v6 mutableCopy];
    [v12 removeProperty:@"MPModelPropertySongArtwork"];
    [v12 removeProperty:@"MPModelPropertyMovieArtwork"];
    [v12 removeProperty:@"MPModelPropertyTVEpisodeArtwork"];
    *(*(*(a1 + 40) + 8) + 24) = 1;

    v6 = v12;
  }

  [v7 relationshipValidationProperties];
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v30, __p);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _MPMLGetForeignPropertyMap(&__p, *(a1 + 56), v30);
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__move_assign(v30, &__p);
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v29);
  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v31;
  if (v31)
  {
    do
    {
      std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::__emplace_unique_key_args<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase * const&>((*(*(a1 + 48) + 8) + 48), v14[5]);
      v14 = *v14;
    }

    while (v14);
  }

  if ([v7 transient])
  {
    v15 = [v7 entityTranslator];
    v16 = v15;
    if (v15)
    {
      [v15 _MLCorePropertiesForPropertySet:v6 withForeignPropertyBase:*(a1 + 56) deferLoadingRelationProperties:*(a1 + 64)];
    }

    else
    {
      __p = 0;
      v28 = 0;
      v29 = 0;
    }

    v21 = __p;
    v22 = v28;
    if (__p != v28)
    {
      v23 = *(*(a1 + 48) + 8);
      do
      {
        std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::__emplace_unique_key_args<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase * const&>((v23 + 48), *v21++);
      }

      while (v21 != v22);
LABEL_29:
      v21 = __p;
    }
  }

  else
  {
    Property = [v7 foreignPropertyBase];
    v18 = *(a1 + 56);
    if (v18)
    {
      Property = MPMediaLibraryGetProperty(v18, Property);
    }

    v19 = [v7 entityTranslator];
    v20 = v19;
    if (v19)
    {
      [v19 _MLCorePropertiesForPropertySet:v6 withForeignPropertyBase:Property deferLoadingRelationProperties:*(a1 + 64)];
    }

    else
    {
      __p = 0;
      v28 = 0;
      v29 = 0;
    }

    v21 = __p;
    v24 = v28;
    if (__p != v28)
    {
      v25 = *(*(a1 + 48) + 8);
      do
      {
        std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::__emplace_unique_key_args<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase * const&>((v25 + 48), *v21++);
      }

      while (v21 != v24);
      goto LABEL_29;
    }
  }

  if (v21)
  {
    v28 = v21;
    operator delete(v21);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v31);
  v26 = v30[0];
  v30[0] = 0;
  if (v26)
  {
    operator delete(v26);
  }
}

- (id)_objectForPropertySet:(id)set entityClass:(void *)class propertyCache:(const void *)cache baseTranslator:(id)translator prependKeyPath:(id)path context:(id)context
{
  setCopy = set;
  translatorCopy = translator;
  pathCopy = path;
  contextCopy = context;
  if (*(cache + 19) + *(cache + 24) + *(cache + 14) + *(cache + 9) + *(cache + 4))
  {
    v20 = [pathCopy arrayByAddingObject:@"_default"];
    v21 = [translatorCopy _valueForKeyPath:v20 forPropertyCache:cache context:contextCopy];

    v22 = objc_alloc([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __120__MPMediaLibraryEntityTranslator__objectForPropertySet_entityClass_propertyCache_baseTranslator_prependKeyPath_context___block_invoke;
    v24[3] = &unk_1E767DC50;
    v25 = setCopy;
    selfCopy = self;
    v30 = a2;
    v27 = translatorCopy;
    v28 = pathCopy;
    cacheCopy = cache;
    v29 = contextCopy;
    classCopy = class;
    v19 = [v22 initWithIdentifiers:v21 block:v24];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __120__MPMediaLibraryEntityTranslator__objectForPropertySet_entityClass_propertyCache_baseTranslator_prependKeyPath_context___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__163;
  v37 = __Block_byref_object_dispose__164;
  v38 = [*(a1 + 32) properties];
  v4 = [*(a1 + 32) relationships];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __120__MPMediaLibraryEntityTranslator__objectForPropertySet_entityClass_propertyCache_baseTranslator_prependKeyPath_context___block_invoke_165;
  v32[3] = &unk_1E767DC00;
  v32[4] = &v33;
  [v4 enumerateKeysAndObjectsUsingBlock:v32];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v34[5];
  v5 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v5)
  {
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:v8];
        if (!v9)
        {
          v19 = [MEMORY[0x1E696AAA8] currentHandler];
          v13 = *(a1 + 72);
          v14 = *(a1 + 40);
          v15 = NSStringFromClass([v14 MPModelClass]);
          [v19 handleFailureInMethod:v13 object:v14 file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:594 description:{@"Property mapping missing for %@:%@", v15, v8}];
        }

        v10 = *(a1 + 48);
        v11 = [*(a1 + 56) arrayByAddingObject:v8];
        v12 = [v10 _valueForKeyPath:v11 forPropertyCache:*(a1 + 80) context:*(a1 + 64)];

        [v3 setValue:v12 forModelKey:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v5);
  }

  v16 = [*(a1 + 32) relationships];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __120__MPMediaLibraryEntityTranslator__objectForPropertySet_entityClass_propertyCache_baseTranslator_prependKeyPath_context___block_invoke_2;
  v21[3] = &unk_1E767DC28;
  v17 = *(a1 + 72);
  v21[4] = *(a1 + 40);
  v26 = v17;
  v22 = *(a1 + 56);
  v18 = v3;
  v23 = v18;
  v24 = *(a1 + 48);
  v25 = *(a1 + 64);
  v27 = *(a1 + 80);
  [v16 enumerateKeysAndObjectsUsingBlock:v21];

  _Block_object_dispose(&v33, 8);
}

void __120__MPMediaLibraryEntityTranslator__objectForPropertySet_entityClass_propertyCache_baseTranslator_prependKeyPath_context___block_invoke_165(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = a2;
  v7 = a3;
  if (v16 == @"MPModelRelationshipPlaylistEntrySong")
  {
    v10 = [v7 properties];
    v11 = [v10 containsObject:@"MPModelPropertySongArtwork"];
    goto LABEL_8;
  }

  if (v16 == @"MPModelRelationshipPlaylistEntryTVEpisode")
  {
    v10 = [v7 properties];
    v11 = [v10 containsObject:@"MPModelPropertyTVEpisodeArtwork"];
LABEL_8:
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v16 == @"MPModelRelationshipPlaylistEntryMovie")
  {
    v8 = [v7 properties];
    v9 = [v8 containsObject:@"MPModelPropertyMovieArtwork"];

    if (v9)
    {
LABEL_9:
      v13 = [*(*(*(a1 + 32) + 8) + 40) setByAddingObject:@"_MPModelPropertyPlaylistEntryArtwork"];
      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      *a4 = 1;
    }
  }

LABEL_10:
}

void __120__MPMediaLibraryEntityTranslator__objectForPropertySet_entityClass_propertyCache_baseTranslator_prependKeyPath_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
  if (!v7)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = *(a1 + 72);
    v30 = *(a1 + 32);
    v31 = NSStringFromClass([v30 MPModelClass]);
    [v28 handleFailureInMethod:v29 object:v30 file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:601 description:{@"Relationship mapping missing for %@:%@", v31, v5}];
  }

  v8 = [*(a1 + 40) arrayByAddingObject:v5];
  v9 = objc_opt_class();
  if ([v9 isSubclassOfClass:objc_opt_class()])
  {
    v10 = *(a1 + 56);
    v11 = [v8 subarrayWithRange:{0, objc_msgSend(v8, "count") - 1}];
    v12 = [v10 _propertyForKeyPath:v11];

    [v7 relationshipValidationProperties];
    std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v35, __p);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    _MPMLGetForeignPropertyMap(&__p, v12, v35);
    std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__move_assign(v35, &__p);
    std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v34);
    v13 = __p;
    __p = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    if ([v7 transient])
    {
      v14 = 1;
      goto LABEL_17;
    }

    v15 = *(a1 + 56);
    v16 = [v8 subarrayWithRange:{0, objc_msgSend(v8, "count") - 1}];
    v17 = [v15 _propertyForKeyPath:v16];

    [v7 relationshipValidationProperties];
    std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v35, __p);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    _MPMLGetForeignPropertyMap(&__p, v17, v35);
    std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__move_assign(v35, &__p);
    std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v34);
    v18 = __p;
    __p = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  v19 = [v7 validRelationshipHandler];
  v14 = (v19)[2](v19, *(a1 + 64), v35, *(a1 + 80));

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v35[2]);
  v20 = v35[0];
  v35[0] = 0;
  if (v20)
  {
    operator delete(v20);
  }

LABEL_17:
  v21 = [v7 entityTranslator];
  v22 = *(a1 + 56);
  v23 = [*(a1 + 32) MPModelClass];
  if (v23 != objc_opt_class())
  {
    if (!v14)
    {
      v27 = 0;
      v25 = v22;
      goto LABEL_24;
    }

    v24 = *(a1 + 88);
    v25 = v22;
    goto LABEL_22;
  }

  v25 = v21;
  v8 = MEMORY[0x1E695E0F0];
  v26 = [v25 entityClass];
  v24 = *(a1 + 88);
  if (v26 == v24)
  {
LABEL_22:
    v27 = [v21 _objectForPropertySet:v6 entityClass:v24 propertyCache:*(a1 + 80) baseTranslator:v25 prependKeyPath:v8 context:*(a1 + 64)];
    goto LABEL_24;
  }

  v27 = 0;
LABEL_24:
  [*(a1 + 48) setValue:v27 forModelKey:v5];
}

- (id)_valueForKeyPath:(id)path forPropertyCache:(const void *)cache context:(id)context
{
  pathCopy = path;
  contextCopy = context;
  v11 = [(MPMediaLibraryEntityTranslator *)self _propertyTranslatorForKeyPath:pathCopy];
  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:561 description:{@"Property mapping missing for %@:%@", v17, pathCopy}];
  }

  valueTransformer = [v11 valueTransformer];

  if (valueTransformer)
  {
    [(MPMediaLibraryEntityTranslator *)self _propertyMapForKeyPath:pathCopy includePropertiesToSort:0];
    valueTransformer2 = [v11 valueTransformer];
    v14 = (valueTransformer2)[2](valueTransformer2, contextCopy, v18, cache);

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (shared_ptr<std::unordered_map<std::string,)_propertyMapForKeyPath:(id)path includePropertiesToSort:(BOOL)sort
{
  sortCopy = sort;
  v8 = v4;
  v41[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([pathCopy count] < 2 || (v41[0] = @"MPModelRelationshipPlaylistEntrySong", v41[1] = @"MPModelRelationshipPlaylistEntryTVEpisode", v41[2] = @"MPModelRelationshipPlaylistEntryMovie", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v41, 3), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(pathCopy, "objectAtIndexedSubscript:", objc_msgSend(pathCopy, "count") - 2), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "containsObject:", v11), v11, v10, !v12))
  {
LABEL_11:
    v19 = [(MPMediaLibraryEntityTranslator *)self _propertyTranslatorForKeyPath:pathCopy];
    v13 = v19;
    if (v19)
    {
      [v19 propertiesToFetchMap];
      if (sortCopy)
      {
        goto LABEL_14;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:539 description:{@"Property mapping missing for %@:%@", v29, pathCopy}];

      *v8 = 0;
      v8[1] = 0;
      if (sortCopy)
      {
        goto LABEL_14;
      }
    }

    if ([pathCopy count] < 2)
    {
      goto LABEL_27;
    }

LABEL_14:
    std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(&v34, *v8);
    if (sortCopy)
    {
      [v13 propertiesToSortMap];
      std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v36);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      v20 = v39;
      if (v39)
      {
        do
        {
          std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mlcore::ModelPropertyBase *> const&>(&v34, v20 + 2);
          v20 = *v20;
        }

        while (v20);
        v21 = v39;
      }

      else
      {
        v21 = 0;
      }

      std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v21);
      v22 = __p[0];
      __p[0] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    if ([pathCopy count] >= 2)
    {
      v23 = [pathCopy subarrayWithRange:{0, objc_msgSend(pathCopy, "count") - 1}];
      v24 = [(MPMediaLibraryEntityTranslator *)self _propertyForKeyPath:v23];

      _MPMLGetForeignPropertyMap(__p, v24, &v34);
      std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__move_assign(&v34, __p);
      std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v39);
      v25 = __p[0];
      __p[0] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    operator new();
  }

  v13 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class()];
  v40[0] = @"MPModelPropertySongArtwork";
  v40[1] = @"MPModelPropertyTVEpisodeArtwork";
  v40[2] = @"MPModelPropertyMovieArtwork";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
  lastObject = [pathCopy lastObject];
  v16 = [v14 containsObject:lastObject];

  if (!v16)
  {

    goto LABEL_11;
  }

  v17 = [v13[1] objectForKeyedSubscript:@"_MPModelPropertyPlaylistEntryArtwork"];
  v18 = v17;
  if (v17)
  {
    [v17 propertiesToFetchMap];
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (v34)
    {
      goto LABEL_8;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:531 description:{@"Property mapping missing for %@:%@", v31, @"_MPModelPropertyPlaylistEntryArtwork"}];
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  v33 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:532 description:{@"Property translator mapping missing for %@:%@", v33, @"_MPModelPropertyPlaylistEntryArtwork"}];

  if (!v18)
  {
    *v8 = 0;
    v8[1] = 0;
    goto LABEL_9;
  }

LABEL_8:
  [v18 propertiesToFetchMap];
LABEL_9:

LABEL_27:
  result.__cntrl_ = v27;
  result.__ptr_ = v26;
  return result;
}

- (void)_propertyForKeyPath:(id)path
{
  v27 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  selfCopy = self;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = pathCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v20 = a2;
    v8 = 0;
    v9 = 0;
    v10 = *v23;
    p_isa = &selfCopy->super.isa;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [p_isa[2] objectForKeyedSubscript:v13];

        v8 = v14;
        if (!v14)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v17 = NSStringFromClass([p_isa MPModelClass]);
          [currentHandler handleFailureInMethod:v20 object:selfCopy file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:505 description:{@"Relationship mapping missing for %@:%@", v17, v13}];
        }

        entityTranslator = [v8 entityTranslator];

        p_isa = entityTranslator;
        if (([v8 transient] & 1) == 0)
        {
          if (v9)
          {
            Property = MPMediaLibraryGetProperty(v9, [v8 foreignPropertyBase]);
          }

          else
          {
            Property = [v8 foreignPropertyBase];
          }

          v9 = Property;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);

    selfCopy = entityTranslator;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_propertyTranslatorForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy count] == 1)
  {
    propertiesToTranslators = self->_propertiesToTranslators;
    lastObject = [pathCopy lastObject];
    v7 = [(NSMutableDictionary *)propertiesToTranslators objectForKeyedSubscript:lastObject];
  }

  else
  {
    relationshipsToTranslators = self->_relationshipsToTranslators;
    firstObject = [pathCopy firstObject];
    lastObject = [(NSMutableDictionary *)relationshipsToTranslators objectForKeyedSubscript:firstObject];

    entityTranslator = [lastObject entityTranslator];
    v11 = [pathCopy subarrayWithRange:{1, objc_msgSend(pathCopy, "count") - 1}];
    v7 = [entityTranslator _propertyTranslatorForKeyPath:v11];
  }

  return v7;
}

- (id)_cachedIdentifierSourceForContext:(id)context
{
  v122 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  os_unfair_lock_lock_with_options();
  {
    [MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers = 0u;
    *&qword_1EB098748 = 0u;
    dword_1EB098758 = 1065353216;
  }

  v4 = MSVHasherSharedSeed();
  v118 = 0;
  memset(v117, 0, sizeof(v117));
  v114 = xmmword_1A273DE00;
  *v115.i8 = vadd_s32(vdup_n_s32(v4), 0x85EBCA7724234428);
  v115.i32[2] = v4;
  v115.i32[3] = v4 + 1640531535;
  v116 = 0uLL;
  LODWORD(v117[0]) = 0;
  mediaLibrary = [contextCopy mediaLibrary];
  uniqueIdentifier = [mediaLibrary uniqueIdentifier];
  _MSV_XXH_XXH32_update_27340(&v114 + 2, [uniqueIdentifier UTF8String], objc_msgSend(uniqueIdentifier, "length"));

  identifierSourcePrefix = [contextCopy identifierSourcePrefix];
  v8 = identifierSourcePrefix;
  _MSV_XXH_XXH32_update_27340(&v114 + 2, [identifierSourcePrefix UTF8String], objc_msgSend(identifierSourcePrefix, "length"));

  memset(&v119[8], 0, 64);
  *v119 = v114;
  if (v114 <= 3000)
  {
    if (v114 <= 1999)
    {
      if (!v114)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
        [currentHandler handleFailureInFunction:v43 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];

        goto LABEL_51;
      }

      if (v114 != 1000)
      {
        goto LABEL_51;
      }

      v9 = (*(&v114 + 1) + v115.i64[0]) ^ __ROR8__(v115.i64[0], 51);
      v10 = v115.i64[1] + (v116 ^ *(&v116 + 1));
      v11 = __ROR8__(v116 ^ *(&v116 + 1), 48);
      v12 = (v10 ^ v11) + __ROR8__(*(&v114 + 1) + v115.i64[0], 32);
      v13 = v12 ^ __ROR8__(v10 ^ v11, 43);
      v14 = v10 + v9;
      v15 = v14 ^ __ROR8__(v9, 47);
      v16 = (v12 ^ *(&v116 + 1)) + v15;
      v17 = v16 ^ __ROR8__(v15, 51);
      v18 = (__ROR8__(v14, 32) ^ 0xFFLL) + v13;
      v19 = __ROR8__(v13, 48);
      v20 = __ROR8__(v16, 32) + (v18 ^ v19);
      v21 = v20 ^ __ROR8__(v18 ^ v19, 43);
      v22 = v17 + v18;
      v23 = v22 ^ __ROR8__(v17, 47);
      v24 = v23 + v20;
      v25 = v24 ^ __ROR8__(v23, 51);
      v26 = __ROR8__(v22, 32) + v21;
      v27 = __ROR8__(v21, 48);
      v28 = __ROR8__(v24, 32) + (v26 ^ v27);
      v29 = v28 ^ __ROR8__(v26 ^ v27, 43);
      v30 = v25 + v26;
      v31 = v30 ^ __ROR8__(v25, 47);
      v32 = v31 + v28;
      v33 = v32 ^ __ROR8__(v31, 51);
      v34 = __ROR8__(v30, 32) + v29;
      v35 = __ROR8__(v29, 48);
      v36 = __ROR8__(v32, 32) + (v34 ^ v35);
      v37 = v36 ^ __ROR8__(v34 ^ v35, 43);
      v38 = v33 + v34;
      *(&v114 + 1) = v36;
      v115.i64[0] = v38 ^ __ROR8__(v33, 47);
      v115.i64[1] = __ROR8__(v38, 32);
      *&v116 = v37;
      v39 = v115.i64[0] ^ v36 ^ v115.i64[1] ^ v37;
      goto LABEL_38;
    }

    if (v114 != 2000)
    {
      if (v114 != 3000)
      {
        goto LABEL_51;
      }

      v40 = &v116;
      if (HIDWORD(v114))
      {
        v41 = vaddvq_s32(vorrq_s8(vshlq_u32(v115, xmmword_1A273DD70), vshlq_u32(v115, xmmword_1A273DD60)));
      }

      else
      {
        v41 = v115.i32[2] + 374761393;
      }

      v53 = DWORD2(v114) + v41;
      v54 = v117[0] & 0xF;
      if (v54 >= 4)
      {
        do
        {
          v55 = *v40++;
          HIDWORD(v56) = v53 - 1028477379 * v55;
          LODWORD(v56) = HIDWORD(v56);
          v53 = 668265263 * (v56 >> 15);
          v54 -= 4;
        }

        while (v54 > 3);
      }

      for (; v54; --v54)
      {
        v57 = *v40;
        v40 = (v40 + 1);
        HIDWORD(v58) = v53 + 374761393 * v57;
        LODWORD(v58) = HIDWORD(v58);
        v53 = -1640531535 * (v58 >> 21);
      }

      v59 = -1028477379 * ((-2048144777 * (v53 ^ (v53 >> 15))) ^ ((-2048144777 * (v53 ^ (v53 >> 15))) >> 13));
      v60 = v59 ^ HIWORD(v59);
      goto LABEL_50;
    }

    switch(v115.u8[3])
    {
      case 1u:
        v44 = v115.u8[0];
        break;
      case 2u:
        v44 = v115.u16[0];
        break;
      case 3u:
        v44 = v115.u16[0] | (v115.u8[2] << 16);
        break;
      default:
        v61 = DWORD2(v114);
        goto LABEL_49;
    }

    v61 = (461845907 * ((380141568 * v44) | ((-862048943 * v44) >> 17))) ^ DWORD2(v114);
LABEL_49:
    v62 = -2048144789 * (HIDWORD(v114) ^ v61 ^ ((HIDWORD(v114) ^ v61) >> 16));
    v60 = (-1028477387 * (v62 ^ (v62 >> 13))) ^ ((-1028477387 * (v62 ^ (v62 >> 13))) >> 16);
    DWORD2(v114) = v60;
LABEL_50:
    *&v119[8] = v60;
    goto LABEL_51;
  }

  if (v114 > 4000)
  {
    switch(v114)
    {
      case 0xFA1:
        CC_SHA1_Final(&v119[8], (&v114 + 8));
        break;
      case 0x10A0:
        CC_SHA256_Final(&v119[8], (&v114 + 8));
        break;
      case 0x11A0:
        CC_SHA512_Final(&v119[8], (&v114 + 8));
        break;
    }

    goto LABEL_51;
  }

  if (v114 == 3001)
  {
    v45 = v117;
    if (*(&v114 + 1) < 0x20uLL)
    {
      v46 = v116 + 0x27D4EB2F165667C5;
    }

    else
    {
      v46 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((__ROR8__(v115.i64[1], 57) + __ROR8__(v115.i64[0], 63) + __ROR8__(v116, 52) + __ROR8__(*(&v116 + 1), 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v115.i64[0], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v115.i64[1], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v116, 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *(&v116 + 1), 33)));
    }

    v47 = v46 + *(&v114 + 1);
    v48 = BYTE8(v114) & 0x1F;
    if (v48 >= 8)
    {
      do
      {
        v49 = *v45++;
        v47 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v49, 33)) ^ v47, 37);
        v48 -= 8;
      }

      while (v48 > 7);
    }

    if (v48 >= 4)
    {
      v50 = *v45;
      v45 = (v45 + 4);
      v47 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v50) ^ v47, 41);
      v48 -= 4;
    }

    for (; v48; --v48)
    {
      v51 = *v45;
      v45 = (v45 + 1);
      v47 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v51) ^ v47, 53);
    }

    v52 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v47 ^ (v47 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v47 ^ (v47 >> 33))) >> 29));
    v39 = v52 ^ HIDWORD(v52);
LABEL_38:
    *&v119[8] = v39;
    goto LABEL_51;
  }

  if (v114 == 4000)
  {
    CC_MD5_Final(&v119[8], (&v114 + 8));
  }

LABEL_51:
  v120[0] = *v119;
  v120[1] = *&v119[16];
  v120[2] = *&v119[32];
  v120[3] = *&v119[48];
  v121 = *&v119[64];
  if (*v119 > 3999)
  {
    if (*v119 > 4255)
    {
      if (*v119 == 4256)
      {
        v104 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v105 = 0;
        v106 = v120 + 8;
        do
        {
          v107 = *v106++;
          v108 = &v104[v105];
          *v108 = MSVFastHexStringFromBytes_hexCharacters_55966[v107 >> 4];
          v108[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v107 & 0xF];
          v105 += 2;
        }

        while (v105 != 64);
        v109 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v104 length:64 encoding:4 freeWhenDone:1];
        v69 = [v109 hash];

        goto LABEL_65;
      }

      if (*v119 == 4512)
      {
        v92 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v93 = 0;
        v94 = v120 + 8;
        do
        {
          v95 = *v94++;
          v96 = &v92[v93];
          *v96 = MSVFastHexStringFromBytes_hexCharacters_55966[v95 >> 4];
          v96[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v95 & 0xF];
          v93 += 2;
        }

        while (v93 != 128);
        v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v92 length:128 encoding:4 freeWhenDone:1];
        v69 = [v97 hash];

        goto LABEL_65;
      }
    }

    else
    {
      if (*v119 == 4000)
      {
        v98 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
        v99 = 0;
        v100 = v120 + 8;
        do
        {
          v101 = *v100++;
          v102 = &v98[v99];
          *v102 = MSVFastHexStringFromBytes_hexCharacters_55966[v101 >> 4];
          v102[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v101 & 0xF];
          v99 += 2;
        }

        while (v99 != 32);
        v103 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v98 length:32 encoding:4 freeWhenDone:1];
        v69 = [v103 hash];

        goto LABEL_65;
      }

      if (*v119 == 4001)
      {
        v63 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
        v64 = 0;
        v65 = v120 + 8;
        do
        {
          v66 = *v65++;
          v67 = &v63[v64];
          *v67 = MSVFastHexStringFromBytes_hexCharacters_55966[v66 >> 4];
          v67[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v66 & 0xF];
          v64 += 2;
        }

        while (v64 != 40);
        v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v63 length:40 encoding:4 freeWhenDone:1];
        v69 = [v68 hash];

        goto LABEL_65;
      }
    }

    goto LABEL_113;
  }

  if (*v119 > 2999)
  {
    if (*v119 != 3000 && *v119 != 3001)
    {
      goto LABEL_113;
    }
  }

  else if (*v119 != 1000 && *v119 != 2000)
  {
LABEL_113:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v111 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSUInteger _MSVHashGetHash(MSVHash)"];
    [currentHandler2 handleFailureInFunction:v111 file:@"MSVHasher+Algorithms.h" lineNumber:301 description:@"Cannot obtain hash from unknown hasher algorithm"];

    v69 = 0;
    goto LABEL_65;
  }

  v69 = DWORD2(v120[0]);
LABEL_65:
  if (!*(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 1))
  {
    goto LABEL_81;
  }

  v70 = vcnt_s8(*(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 8));
  v70.i16[0] = vaddlv_u8(v70);
  if (v70.u32[0] > 1uLL)
  {
    v71 = v69;
    if (*(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 1) <= v69)
    {
      v71 = v69 % DWORD2([MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers);
    }
  }

  else
  {
    v71 = (DWORD2([MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers) - 1) & v69;
  }

  v72 = *([MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 8 * v71);
  if (!v72 || (v73 = *v72) == 0)
  {
LABEL_81:
    v75 = MEMORY[0x1E696AD60];
    identifierSourcePrefix2 = [contextCopy identifierSourcePrefix];
    v77 = [identifierSourcePrefix2 length];
    mediaLibrary2 = [contextCopy mediaLibrary];
    uniqueIdentifier2 = [mediaLibrary2 uniqueIdentifier];
    v80 = [v75 stringWithCapacity:{v77 + objc_msgSend(uniqueIdentifier2, "length") + 8}];

    identifierSourcePrefix3 = [contextCopy identifierSourcePrefix];
    v82 = identifierSourcePrefix3;
    if (identifierSourcePrefix3)
    {
      v83 = identifierSourcePrefix3;
    }

    else
    {
      v83 = &stru_1F149ECA8;
    }

    [v80 appendString:v83];

    [v80 appendString:@"Library-"];
    mediaLibrary3 = [contextCopy mediaLibrary];
    uniqueIdentifier3 = [mediaLibrary3 uniqueIdentifier];
    [v80 appendString:uniqueIdentifier3];

    v86 = [v80 copy];
    if (!*(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 1))
    {
      goto LABEL_101;
    }

    v87 = vcnt_s8(*(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 8));
    v87.i16[0] = vaddlv_u8(v87);
    if (v87.u32[0] > 1uLL)
    {
      v88 = v69;
      if (*(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 1) <= v69)
      {
        v88 = v69 % DWORD2([MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers);
      }
    }

    else
    {
      v88 = (DWORD2([MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers) - 1) & v69;
    }

    v89 = *([MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 8 * v88);
    if (!v89 || (v90 = *v89) == 0)
    {
LABEL_101:
      operator new();
    }

    while (1)
    {
      v91 = v90[1];
      if (v91 == v69)
      {
        if (*(v90 + 4) == v69)
        {
          objc_storeStrong(v90 + 3, v86);

          goto LABEL_114;
        }
      }

      else
      {
        if (v87.u32[0] > 1uLL)
        {
          if (v91 >= *(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 1))
          {
            v91 %= *(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 1);
          }
        }

        else
        {
          v91 &= *(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 1) - 1;
        }

        if (v91 != v88)
        {
          goto LABEL_101;
        }
      }

      v90 = *v90;
      if (!v90)
      {
        goto LABEL_101;
      }
    }
  }

  while (1)
  {
    v74 = v73[1];
    if (v74 == v69)
    {
      break;
    }

    if (v70.u32[0] > 1uLL)
    {
      if (v74 >= *(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 1))
      {
        v74 %= *(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 1);
      }
    }

    else
    {
      v74 &= *(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::cachedIdentifiers + 1) - 1;
    }

    if (v74 != v71)
    {
      goto LABEL_81;
    }

LABEL_80:
    v73 = *v73;
    if (!v73)
    {
      goto LABEL_81;
    }
  }

  if (*(v73 + 4) != v69)
  {
    goto LABEL_80;
  }

  v113 = v73[3];
  v86 = v113;
  if (!v113)
  {
    goto LABEL_81;
  }

LABEL_114:
  os_unfair_lock_unlock(&[MPMediaLibraryEntityTranslator _cachedIdentifierSourceForContext:]::lock);

  return v86;
}

- (unordered_map<std::string,)propertiesToFetchForPropertyKey:()std:()std:(std:(mlcore:(MPMediaLibraryEntityTranslator *)self :(SEL)a3 ModelPropertyBase *>>> *__return_ptr)retstr :(id)a4 allocator<std::pair<const)std::string :equal_to<std::string> :hash<std::string>
{
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_propertiesToTranslators objectForKeyedSubscript:v7];
  v9 = v8;
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
    [currentHandler handleFailureInMethod:a3 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:448 description:{@"Property mapping missing for %@:%@", v12, v7}];

LABEL_9:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
    [currentHandler2 handleFailureInMethod:a3 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:449 description:{@"Property translator mapping missing for %@:%@", v14, v7}];

    goto LABEL_5;
  }

  [v8 propertiesToFetchMap];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_5:
  [v9 propertiesToFetchMap];
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(retstr, v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return result;
}

- (Class)classForRelationshipKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_relationshipsToTranslators objectForKeyedSubscript:key];
  relationshipModelClass = [v3 relationshipModelClass];

  return relationshipModelClass;
}

- (vector<std::shared_ptr<mlcore::Predicate>,)MLCorePredicateForModelPropertyFilters:(MPMediaLibraryEntityTranslator *)self
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v7)
  {
    v41 = *v47;
    do
    {
      v42 = v7;
      for (i = 0; i != v42; ++i)
      {
        if (*v47 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v46 + 1) + 8 * i);
        keys = [v9 keys];
        value = [v9 value];
        [v9 comparisonType];
        v12 = [(MPMediaLibraryEntityTranslator *)self _propertyTranslatorForKeyPath:keys];
        if (!v12)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v35 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
          [currentHandler handleFailureInMethod:a3 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:431 description:{@"Property mapping missing for %@:%@", v35, keys}];
        }

        filterTransformer = [v12 filterTransformer];
        v14 = filterTransformer == 0;

        if (v14)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a3 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:432 description:{@"Property filter transformer missing for property filter: %@", v9}];
        }

        [(MPMediaLibraryEntityTranslator *)self _propertyMapForKeyPath:keys includePropertiesToSort:0];
        filterTransformer2 = [v12 filterTransformer];
        filterTransformer2[2](&v44);

        var1 = retstr->var1;
        var2 = retstr->var2;
        if (var1 >= var2)
        {
          selfCopy = self;
          var0 = retstr->var0;
          v21 = var1 - retstr->var0;
          v22 = v21 >> 4;
          v23 = (v21 >> 4) + 1;
          if (v23 >> 60)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v24 = var2 - var0;
          if (v24 >> 3 > v23)
          {
            v23 = v24 >> 3;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF0)
          {
            v25 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          v53 = retstr;
          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::Predicate>>>(v25);
          }

          v26 = (16 * v22);
          v50 = 0;
          v51 = 16 * v22;
          v52 = (16 * v22);
          v27 = v22 == 0;
          self = selfCopy;
          if (v27)
          {
            if (v21 < 1)
            {
              if (var1 == var0)
              {
                v28 = 1;
              }

              else
              {
                v28 = v21 >> 3;
              }

              v54 = v53;
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::Predicate>>>(v28);
            }

            v26 = (v26 - (((v21 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
            v51 = v26;
            *&v52 = v26;
          }

          *v26 = v44;
          v29 = v45;
          v26[1] = v45;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
            v26 = v52;
          }

          *&v52 = v26 + 2;
          memcpy(v26 + 2, var1, retstr->var1 - var1);
          v30 = retstr->var0;
          v31 = v51;
          *&v52 = v52 + retstr->var1 - var1;
          retstr->var1 = var1;
          v32 = (v31 - (var1 - v30));
          memcpy(v32, v30, var1 - v30);
          v33 = retstr->var0;
          retstr->var0 = v32;
          v34 = retstr->var2;
          *&retstr->var1 = v52;
          *&v52 = v33;
          *(&v52 + 1) = v34;
          v50 = v33;
          v51 = v33;
          std::__split_buffer<std::shared_ptr<mlcore::Predicate>>::~__split_buffer(&v50);
        }

        else
        {
          *var1 = v44;
          v18 = v45;
          *(var1 + 1) = v45;
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          retstr->var1 = var1 + 16;
        }

        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v7);
  }

  return result;
}

- (vector<mlcore::SortDescriptor,)MLCoreSortDescriptorsForModelSortDescriptors:(MPMediaLibraryEntityTranslator *)self
{
  v73 = *MEMORY[0x1E69E9840];
  v6 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v7)
  {
    v8 = 0;
    v61 = *v67;
    selfCopy = self;
    do
    {
      v62 = v7;
      for (i = 0; i != v62; ++i)
      {
        if (*v67 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v66 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          keyPath = [v10 keyPath];
        }

        else
        {
          v12 = [v10 key];
          v71 = v12;
          keyPath = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
        }

        if (![keyPath count])
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a3 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:408 description:@"Sort descriptor must have at least one key."];
        }

        v13 = [(MPMediaLibraryEntityTranslator *)self _propertyTranslatorForKeyPath:keyPath];
        if (!v13)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v54 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
          [currentHandler2 handleFailureInMethod:a3 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:411 description:{@"Property mapping missing for %@:%@", v54, keyPath}];
        }

        sortTransformer = [v13 sortTransformer];
        v15 = sortTransformer == 0;

        if (v15)
        {
          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler3 handleFailureInMethod:a3 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:412 description:{@"Sort descriptor missing transformer: %@", v10}];
        }

        [(MPMediaLibraryEntityTranslator *)self _propertyMapForKeyPath:keyPath includePropertiesToSort:1];
        sortTransformer2 = [v13 sortTransformer];
        sortTransformer2[2](&v63);

        v17 = retstr;
        v19 = v63;
        v18 = v64;
        v20 = v64 - v63;
        if (v64 - v63 < 1)
        {
          retstr = v17;
        }

        else if (-v8 >= v20)
        {
          if (v63 != v64)
          {
            v23 = v8;
            do
            {
              *v8 = MEMORY[0x1E69B0820] + 16;
              v24 = *(v19 + 8);
              *(v8 + 4) = *(v19 + 16);
              *(v8 + 1) = v24;
              v19 += 24;
              v8 = (v8 + 24);
              v23 = (v23 + 24);
            }

            while (v19 != v18);
          }

          retstr = v17;
          v17->var1 = v8;
        }

        else
        {
          v21 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v17->var0) >> 3) - 0x5555555555555555 * (v20 >> 3);
          if (v21 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * (-v17->var0 >> 3) > v21)
          {
            v21 = 0x5555555555555556 * (-v17->var0 >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v17->var0 >> 3) >= 0x555555555555555)
          {
            v22 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::SortDescriptor>>(v22);
          }

          v25 = 8 * ((v8 - v17->var0) >> 3);
          v26 = v25;
          v27 = v25 + v20;
          v28 = (v63 + 8);
          v29 = v25;
          v30 = v25;
          do
          {
            *v30 = MEMORY[0x1E69B0820] + 16;
            v31 = *v28;
            *(v30 + 16) = *(v28 + 2);
            *(v30 + 8) = v31;
            v30 += 24;
            v29 += 24;
            v28 += 3;
          }

          while (v30 != v27);
          var1 = v17->var1;
          if (var1 == v8)
          {
            v42 = v8;
            p_var0 = &v17->var0;
          }

          else
          {
            v33 = v18 + v25 - v19;
            v34 = v8;
            v35 = v27;
            do
            {
              *v35 = MEMORY[0x1E69B0820] + 16;
              v36 = *(v34 + 1);
              *(v35 + 16) = *(v34 + 4);
              *(v35 + 8) = v36;
              v34 = (v34 + 24);
              v35 += 24;
              v33 += 24;
            }

            while (v34 != var1);
            v37 = v8;
            v38 = v8;
            v39 = v8;
            do
            {
              v40 = *v39;
              v39 = (v39 + 24);
              (*v40)(v38);
              v37 = (v37 + 24);
              v38 = v39;
            }

            while (v39 != var1);
            p_var0 = &v17->var0;
            v42 = v17->var1;
            v26 = v25;
          }

          var0 = *p_var0;
          v44 = (v25 - (v8 - *p_var0));
          v45 = v8 - *p_var0;
          self = selfCopy;
          if (v45)
          {
            v46 = v26 - 8 * (v45 >> 3);
            v47 = var0;
            v48 = v44;
            do
            {
              *v48 = MEMORY[0x1E69B0820] + 16;
              v49 = v47[1];
              *(v48 + 4) = *(v47 + 4);
              *(v48 + 1) = v49;
              v47 += 3;
              v48 = (v48 + 24);
              v46 += 24;
            }

            while (v47 != v8);
            v50 = var0;
            v51 = var0;
            do
            {
              v52 = *v51;
              v51 += 3;
              (*v52)();
              v50 += 3;
            }

            while (v51 != v8);
            var0 = v17->var0;
            self = selfCopy;
          }

          v8 = (v27 + v42 - v8);
          v17->var0 = v44;
          v17->var1 = v8;
          v17->var2 = 0;
          retstr = v17;
          if (var0)
          {
            operator delete(var0);
          }
        }

        v70 = &v63;
        std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100](&v70);
        if (v65)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v65);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v7);
  }

  return result;
}

- (shared_ptr<mlcore::PropertiesQuery>)propertiesQueryForPropertySet:(id)set scopedContainers:(id)containers allowedItemIdentifiers:(id)identifiers view:(id)view
{
  setCopy = set;
  containersCopy = containers;
  identifiersCopy = identifiers;
  viewCopy = view;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if ([identifiersCopy count])
  {
    allowedItemPredicatesBlock = self->_allowedItemPredicatesBlock;
    if (allowedItemPredicatesBlock)
    {
      allowedItemPredicatesBlock[2](&v35);
      v15 = v35;
      v16 = v36 - v35;
      v17 = (v36 - v35) >> 4;
      if (v17 >= 1)
      {
        v18 = v32;
        if (v33 - v32 >= v16)
        {
          v32 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::Predicate>>,std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(&v31, v35, v36, v32);
        }

        else
        {
          v19 = v17 + ((v32 - v31) >> 4);
          if (v19 >> 60)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v20 = v33 - v31;
          if ((v33 - v31) >> 3 > v19)
          {
            v19 = v20 >> 3;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v21 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          v39 = &v31;
          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::Predicate>>>(v21);
          }

          v22 = 16 * ((v32 - v31) >> 4);
          v38 = 0;
          v23 = (v22 + v16);
          v24 = v22;
          do
          {
            *v24 = *v15;
            v25 = *(v15 + 1);
            *(v24 + 1) = v25;
            if (v25)
            {
              atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
            }

            v24 += 16;
            v15 += 16;
          }

          while (v24 != v23);
          memcpy(v23, v18, v32 - v18);
          v26 = &v23[v32 - v18];
          v32 = v18;
          v27 = v18 - v31;
          v28 = (v22 - (v18 - v31));
          memcpy(v28, v31, v27);
          v29 = v31;
          v30 = v33;
          v31 = v28;
          v32 = v26;
          v33 = v38;
          v37[2] = v29;
          v38 = v30;
          v37[0] = v29;
          v37[1] = v29;
          std::__split_buffer<std::shared_ptr<mlcore::Predicate>>::~__split_buffer(v37);
        }
      }

      v37[0] = &v35;
      std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](v37);
    }
  }

  memset(v34, 0, sizeof(v34));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v34, v31, v32, (v32 - v31) >> 4);
  mlcore::CreateAndPredicate();
  operator new();
}

- (shared_ptr<mlcore::EntityQuery>)entityQueryForPropertySet:(id)set sortDescriptors:(id)descriptors context:(id)context view:(id)view deferLoadingRelationProperties:(BOOL)properties
{
  propertiesCopy = properties;
  v13 = v7;
  v113 = *MEMORY[0x1E69E9840];
  setCopy = set;
  descriptorsCopy = descriptors;
  contextCopy = context;
  viewCopy = view;
  entityQueryBlock = self->_entityQueryBlock;
  v63 = viewCopy;
  if (!entityQueryBlock)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v55 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:277 description:{@"No entityQueryBlock was mapped for %@", v55}];

    entityQueryBlock = self->_entityQueryBlock;
  }

  if (viewCopy)
  {
    [viewCopy mlCoreView];
    v16 = v76;
  }

  else
  {
    v16 = 0uLL;
  }

  v107 = v16;
  v76 = 0uLL;
  entityQueryBlock[2](entityQueryBlock, contextCopy, &v107);
  if (*(&v107 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v107 + 1));
  }

  v17 = +[MPPropertySet emptyPropertySet];
  [(MPMediaLibraryEntityTranslator *)self MLCorePropertiesForPropertySet:v17 deferLoadingRelationProperties:propertiesCopy];

  v104 = 0;
  __p = 0;
  v103 = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&__p, v105, v106, (v106 - v105) >> 3);
  mlcore::EntityQuery::setIdentityPropertiesToFetch();
  if (__p)
  {
    v103 = __p;
    operator delete(__p);
  }

  if (!*v13)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v57 = NSStringFromClass([(MPMediaLibraryEntityTranslator *)self MPModelClass]);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:283 description:{@"%@ entityQueryBlock did not return a query.", v57}];
  }

  mPModelClass = [(MPMediaLibraryEntityTranslator *)self MPModelClass];
  if (mPModelClass == objc_opt_class())
  {
    v94 = 0;
    v95 = &v94;
    v96 = 0x4012000000;
    v97 = __Block_byref_object_copy__43576;
    v98 = __Block_byref_object_dispose__43577;
    v99 = "";
    v22 = v13[1];
    v100 = *v13;
    v101 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    modelKind = [contextCopy modelKind];
    relationships = [setCopy relationships];
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __120__MPMediaLibraryEntityTranslator_entityQueryForPropertySet_sortDescriptors_context_view_deferLoadingRelationProperties___block_invoke;
    v88[3] = &unk_1E767DBB0;
    v93 = a2;
    v88[4] = self;
    v92 = &v94;
    v89 = viewCopy;
    v24 = contextCopy;
    v90 = v24;
    v59 = modelKind;
    v91 = v59;
    [relationships enumerateKeysAndObjectsUsingBlock:v88];

    [v24 setModelKind:v59];
    __src = 0;
    v87 = 0uLL;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = descriptorsCopy;
    v25 = [obj countByEnumeratingWithState:&v82 objects:v112 count:16];
    if (v25)
    {
      v67 = *v83;
      selfCopy = self;
      do
      {
        v26 = 0;
        v66 = v25;
        do
        {
          if (*v83 != v67)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v82 + 1) + 8 * v26);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler3 handleFailureInMethod:a2 object:self file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:311 description:@"MPModelGenericObject can only be sorted by MPMulitSortDescriptor."];
          }

          *&v76 = 0;
          *(&v76 + 1) = &v76;
          v77 = 0x4812000000;
          v78 = __Block_byref_object_copy__127;
          v79 = __Block_byref_object_dispose__128;
          v80 = "";
          memset(v81, 0, 24);
          relatedProperties = [v27 relatedProperties];
          v75[0] = MEMORY[0x1E69E9820];
          v75[1] = 3221225472;
          v75[2] = __120__MPMediaLibraryEntityTranslator_entityQueryForPropertySet_sortDescriptors_context_view_deferLoadingRelationProperties___block_invoke_130;
          v75[3] = &unk_1E767DBD8;
          v75[4] = self;
          v75[5] = v27;
          v75[6] = &v76;
          v75[7] = a2;
          [relatedProperties enumerateKeysAndObjectsUsingBlock:v75];

          v30 = *(*(&v76 + 1) + 48);
          v29 = *(*(&v76 + 1) + 56);
          v31 = v29 - v30;
          if (v29 - v30 >= 1)
          {
            v32 = v87;
            if (*(&v87 + 1) - v87 >= v31)
            {
              if (v29 != v30)
              {
                v35 = 0;
                do
                {
                  v32[v35] = MEMORY[0x1E69B0830] + 16;
                  std::unordered_map<mlcore::EntityClass *,mlcore::ModelPropertyBase *>::unordered_map(&v32[v35 + 1], v30 + v35 * 8 + 8);
                  LODWORD(v32[v35 + 6]) = *(v30 + v35 * 8 + 48);
                  v35 += 7;
                }

                while (v30 + v35 * 8 != v29);
                v32 = (v32 + v35 * 8);
                self = selfCopy;
                v25 = v66;
              }

              *&v87 = v32;
            }

            else
            {
              v33 = 0x6DB6DB6DB6DB6DB7 * ((v87 - __src) >> 3) + 0x6DB6DB6DB6DB6DB7 * (v31 >> 3);
              if (v33 > 0x492492492492492)
              {
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              if (0xDB6DB6DB6DB6DB6ELL * ((*(&v87 + 1) - __src) >> 3) > v33)
              {
                v33 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v87 + 1) - __src) >> 3);
              }

              if ((0x6DB6DB6DB6DB6DB7 * ((*(&v87 + 1) - __src) >> 3)) >= 0x249249249249249)
              {
                v34 = 0x492492492492492;
              }

              else
              {
                v34 = v33;
              }

              p_src = &__src;
              if (v34)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::MultiSortDescriptor>>(v34);
              }

              v36 = 0;
              v37 = 8 * ((v87 - __src) >> 3);
              v108 = 0;
              v109 = v37;
              v110 = v37;
              do
              {
                *(v37 + v36) = MEMORY[0x1E69B0830] + 16;
                std::unordered_map<mlcore::EntityClass *,mlcore::ModelPropertyBase *>::unordered_map(v37 + v36 + 8, v30 + v36 + 8);
                *(v37 + v36 + 48) = *(v30 + v36 + 48);
                v36 += 56;
              }

              while (v31 != v36);
              *&v110 = v37 + v31;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<mlcore::MultiSortDescriptor>,mlcore::MultiSortDescriptor*>(v32, v87, v37 + v31);
              *&v110 = v110 + v87 - v32;
              *&v87 = v32;
              v38 = v109 + __src - v32;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<mlcore::MultiSortDescriptor>,mlcore::MultiSortDescriptor*>(__src, v32, v38);
              v39 = __src;
              v40 = *(&v87 + 1);
              __src = v38;
              v87 = v110;
              *&v110 = v39;
              *(&v110 + 1) = v40;
              v109 = v39;
              v108 = v39;
              std::__split_buffer<mlcore::MultiSortDescriptor>::~__split_buffer(&v108);
              viewCopy = v63;
              self = selfCopy;
              v25 = v66;
            }
          }

          _Block_object_dispose(&v76, 8);
          v108 = v81;
          std::vector<mlcore::MultiSortDescriptor>::__destroy_vector::operator()[abi:ne200100](&v108);
          ++v26;
        }

        while (v26 != v25);
        v25 = [obj countByEnumeratingWithState:&v82 objects:v112 count:16];
      }

      while (v25);
    }

    mlcore::MultiEntityQuery::setMultiSortDescriptors();
    *&v76 = &__src;
    std::vector<mlcore::MultiSortDescriptor>::__destroy_vector::operator()[abi:ne200100](&v76);

    _Block_object_dispose(&v94, 8);
    if (v101)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v101);
    }
  }

  else
  {
    [(MPMediaLibraryEntityTranslator *)self MLCorePropertiesForPropertySet:setCopy deferLoadingRelationProperties:propertiesCopy];
    v73 = 0;
    v74 = 0;
    v72 = 0;
    std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&v72, v76, *(&v76 + 1), (*(&v76 + 1) - v76) >> 3);
    mlcore::PropertiesQuery::setPropertiesToFetch();
    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    [(MPMediaLibraryEntityTranslator *)self MLCoreSortDescriptorsForModelSortDescriptors:descriptorsCopy];
    if (v109 != v108)
    {
      mlcore::PropertiesQuery::setSortDescriptors();
    }

    propertyFilters = [contextCopy propertyFilters];
    [(MPMediaLibraryEntityTranslator *)self MLCorePredicateForModelPropertyFilters:propertyFilters];

    if (v87 != __src)
    {
      mlcore::Query::predicate(&v71, *v13);
      v20 = v87;
      if (v87 >= *(&v87 + 1))
      {
        v42 = __src;
        v43 = v87 - __src;
        v44 = (v87 - __src) >> 4;
        v45 = v44 + 1;
        if ((v44 + 1) >> 60)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v46 = *(&v87 + 1) - __src;
        if ((*(&v87 + 1) - __src) >> 3 > v45)
        {
          v45 = v46 >> 3;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v47 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = v45;
        }

        v98 = &__src;
        if (v47)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::Predicate>>>(v47);
        }

        v48 = (16 * v44);
        v49 = &v48[-((v87 - __src) >> 4)];
        *v48 = v71;
        v21 = (v48 + 1);
        v71 = 0uLL;
        memcpy(v49, v42, v43);
        v50 = __src;
        v51 = *(&v87 + 1);
        __src = v49;
        v87 = v21;
        v96 = v50;
        v97 = v51;
        v95 = v50;
        v94 = v50;
        std::__split_buffer<std::shared_ptr<mlcore::Predicate>>::~__split_buffer(&v94);
        *&v87 = v21;
        if (*(&v71 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v71 + 1));
          v21 = v87;
        }
      }

      else
      {
        *v87 = v71;
        v21 = v20 + 16;
        *&v87 = v21;
      }

      memset(v69, 0, sizeof(v69));
      std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v69, __src, v21, (v21 - __src) >> 4);
      mlcore::CreateAndPredicate();
      mlcore::Query::setPredicate();
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      v94 = v69;
      std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v94);
    }

    v94 = &__src;
    std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v94);
    v94 = &v108;
    std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100](&v94);
    if (v76)
    {
      *(&v76 + 1) = v76;
      operator delete(v76);
    }
  }

  if ([contextCopy sortUsingAllowedEntityIdentifiers])
  {
    v76 = 0uLL;
    v77 = 0;
    mlcore::PropertiesQuery::setSortDescriptors();
    v94 = &v76;
    std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100](&v94);
  }

  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }

  result.__cntrl_ = v53;
  result.__ptr_ = v52;
  return result;
}

void __120__MPMediaLibraryEntityTranslator_entityQueryForPropertySet_sortDescriptors_context_view_deferLoadingRelationProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
  if (!v7)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = *(a1 + 72);
    v24 = *(a1 + 32);
    v25 = NSStringFromClass([v24 MPModelClass]);
    [v22 handleFailureInMethod:v23 object:v24 file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:292 description:{@"Relationship mapping missing for %@:%@", v25, v5}];
  }

  v8 = [v7 entityTranslator];
  v9 = v8;
  if (v8)
  {
    [v8 MLCorePropertiesForPropertySet:v6];
    v10 = v39;
    v11 = v40;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  v37 = 0;
  v38 = 0;
  __p = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&__p, v10, v11, (v11 - v10) >> 3);
  [v9 entityClass];
  mlcore::MultiEntityQuery::setPropertiesToFetchForEntityClass();
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  v12 = [*(a1 + 40) copy];
  v13 = v12;
  if (v12)
  {
    [v12 mlCoreView];
    v15 = v34;
    v14 = v35;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v34 = 0;
  v35 = 0;

  v16 = [*(a1 + 56) relationshipKinds];
  v17 = [v16 objectForKeyedSubscript:v5];
  [*(a1 + 48) setModelKind:v17];

  v18 = [v9 entityQueryBlock];
  v19 = v18;
  v20 = *(a1 + 48);
  v32 = v15;
  v33 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v18 + 16))(&v34, v18, v20, &v32);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v30 = v15;
  v31 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v9 entityClass];
  mlcore::MultiEntityQuery::setViewForEntityClass();
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  mlcore::Query::predicate(&v28, v34);
  v21 = v28;
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v21)
  {
    mlcore::Query::predicate(&v26, v34);
    [v9 entityClass];
    mlcore::MultiEntityQuery::setPredicateForEntityClass();
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void __120__MPMediaLibraryEntityTranslator_entityQueryForPropertySet_sortDescriptors_context_view_deferLoadingRelationProperties___block_invoke_130(uint64_t a1, void *a2, void *a3)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
  if (!v7)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = *(a1 + 56);
    v26 = *(a1 + 32);
    v27 = NSStringFromClass([v26 MPModelClass]);
    [v24 handleFailureInMethod:v25 object:v26 file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:316 description:{@"Relationship mapping missing for %@:%@", v27, v5}];
  }

  v8 = [v7 entityTranslator];
  v42[0] = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v6 ascending:{objc_msgSend(*(a1 + 40), "ascending")}];
  v31 = v42[0];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  if (v8)
  {
    [v8 MLCoreSortDescriptorsForModelSortDescriptors:v9];
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  v11 = *(*(*(a1 + 48) + 8) + 48);
  v10 = *(*(*(a1 + 48) + 8) + 56);
  v12 = v39;
  if (v10 == v11)
  {
    v13 = v40;
    if (v39 == v40)
    {
      v11 = *(*(*(a1 + 48) + 8) + 56);
    }

    else
    {
      v14 = MEMORY[0x1E69B0820] + 16;
      do
      {
        v37[0] = v14;
        v15 = *(v12 + 16);
        v37[1] = *(v12 + 8);
        v38 = v15;
        mlcore::SortDescriptor::ordering(v37);
        mlcore::MultiSortDescriptor::MultiSortDescriptor();
        std::vector<mlcore::MultiSortDescriptor>::push_back[abi:ne200100]((*(*(a1 + 48) + 8) + 48), &v34);
        mlcore::MultiSortDescriptor::MultiSortDescriptor();
        std::vector<mlcore::MultiSortDescriptor>::push_back[abi:ne200100]((*(*(a1 + 48) + 8) + 48), &v32);
        v32 = MEMORY[0x1E69B0830] + 16;
        std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(&v33);
        v34 = (MEMORY[0x1E69B0830] + 16);
        std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(&v35);
        v12 += 24;
      }

      while (v12 != v13);
      v11 = *(*(*(a1 + 48) + 8) + 48);
      v10 = *(*(*(a1 + 48) + 8) + 56);
      v12 = v39;
    }
  }

  v16 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v11) >> 3);
  v17 = v40;
  if (v16 != 0xAAAAAAAAAAAAAAABLL * ((v40 - v12) >> 3) + 1)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:332 description:@"All relatedProperties must have the same number of core sort descriptors."];

    v12 = v39;
    v17 = v40;
  }

  if (v17 != v12)
  {
    v30 = v6;
    v29 = v5;
    v18 = 0;
    v19 = 0;
    v20 = (MEMORY[0x1E69B0820] + 16);
    v21 = 8;
    do
    {
      v34 = v20;
      v22 = *(v12 + v21);
      v36 = *(v12 + v21 + 8);
      v35 = v22;
      mlcore::SortDescriptor::property(&v34);
      [v8 entityClass];
      mlcore::MultiSortDescriptor::setPropertyForEntityClass();
      ++v19;
      v12 = v39;
      v18 += 56;
      v21 += 24;
    }

    while (v19 < 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3));
    v5 = v29;
    v6 = v30;
  }

  v23 = [v8 entityClass];
  (*(*v23 + 120))(v23);
  [v8 entityClass];
  mlcore::MultiSortDescriptor::setPropertyForEntityClass();
  v34 = &v39;
  std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100](&v34);
}

- (shared_ptr<mlcore::EntityQuery>)entityQueryForPropertySet:(id)set sortDescriptors:(id)descriptors context:(id)context view:(id)view
{
  v6 = [(MPMediaLibraryEntityTranslator *)self entityQueryForPropertySet:set sortDescriptors:descriptors context:context view:view deferLoadingRelationProperties:0];
  result.__cntrl_ = v7;
  result.__ptr_ = v6;
  return result;
}

- (id)identifiersForPropertyCache:(const void *)cache context:(id)context
{
  v4 = [(MPMediaLibraryEntityTranslator *)self _valueForKeyPath:&unk_1F150A8A0 forPropertyCache:cache context:context];

  return v4;
}

- (id)objectForPropertySet:(id)set entityClass:(void *)class propertyCache:(const void *)cache context:(id)context
{
  v6 = [(MPMediaLibraryEntityTranslator *)self _objectForPropertySet:set entityClass:class propertyCache:cache baseTranslator:self prependKeyPath:MEMORY[0x1E695E0F0] context:context];

  return v6;
}

- (void)mapRelationshipKey:(id)key toModelClass:(Class)class transient:(BOOL)transient usingForeignPropertyBase:(void *)base relationshipValidationProperties:(const void *)properties isValidRelationshipHandler:(id)handler
{
  transientCopy = transient;
  keyCopy = key;
  handlerCopy = handler;
  if (!self->_relationshipsToTranslators)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    relationshipsToTranslators = self->_relationshipsToTranslators;
    self->_relationshipsToTranslators = v15;
  }

  v17 = objc_alloc_init(_MPMediaLibraryEntityRelationshipTranslator);
  [(NSMutableDictionary *)self->_relationshipsToTranslators setObject:v17 forKeyedSubscript:keyCopy];
  [(_MPMediaLibraryEntityRelationshipTranslator *)v17 setTransient:transientCopy];
  [(_MPMediaLibraryEntityRelationshipTranslator *)v17 setRelationshipModelClass:class];
  [(_MPMediaLibraryEntityRelationshipTranslator *)v17 setForeignPropertyBase:base];
  [(_MPMediaLibraryEntityRelationshipTranslator *)v17 setValidRelationshipHandler:handlerCopy];
  std::allocate_shared[abi:ne200100]<std::unordered_map<std::string,mlcore::ModelPropertyBase *>,std::allocator<std::unordered_map<std::string,mlcore::ModelPropertyBase *>>,std::unordered_map<std::string,mlcore::ModelPropertyBase *> const&,0>();
}

- (void)mapRelationshipKey:(id)key toModelClass:(Class)class transient:(BOOL)transient usingForeignPropertyBase:(void *)base
{
  transientCopy = transient;
  v16 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  std::string::basic_string[abi:ne200100]<0>(v13, "joinProperty");
  baseCopy = base;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v13, 1);
  [(MPMediaLibraryEntityTranslator *)self mapRelationshipKey:keyCopy toModelClass:class transient:transientCopy usingForeignPropertyBase:base relationshipValidationProperties:__p isValidRelationshipHandler:&__block_literal_global_108_43634];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(__p[2]);
  v11 = __p[0];
  __p[0] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }
}

BOOL __101__MPMediaLibraryEntityTranslator_mapRelationshipKey_toModelClass_transient_usingForeignPropertyBase___block_invoke(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "joinProperty");
  v13 = __p;
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p);
  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9 != 0;
}

- (void)mapPropertyKey:(id)key withPropertiesToFetch:(const void *)fetch propertiesToSort:(const void *)sort sortTransformer:(id)transformer filterTransformer:(id)filterTransformer valueTransformer:(id)valueTransformer
{
  keyCopy = key;
  transformerCopy = transformer;
  filterTransformerCopy = filterTransformer;
  valueTransformerCopy = valueTransformer;
  propertiesToTranslators = self->_propertiesToTranslators;
  if (!propertiesToTranslators)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = self->_propertiesToTranslators;
    self->_propertiesToTranslators = v17;

    propertiesToTranslators = self->_propertiesToTranslators;
  }

  [(NSMutableDictionary *)propertiesToTranslators objectForKeyedSubscript:keyCopy];
  if (!objc_claimAutoreleasedReturnValue())
  {
    [(NSMutableDictionary *)self->_propertiesToTranslators setObject:objc_alloc_init(_MPMediaLibraryEntityPropertyTranslator) forKey:keyCopy];
  }

  std::allocate_shared[abi:ne200100]<std::unordered_map<std::string,mlcore::ModelPropertyBase *>,std::allocator<std::unordered_map<std::string,mlcore::ModelPropertyBase *>>,std::unordered_map<std::string,mlcore::ModelPropertyBase *> const&,0>();
}

- (void)mapPropertyKey:(id)key withPropertiesToFetch:(const void *)fetch valueTransformer:(id)transformer
{
  keyCopy = key;
  *__p = 0u;
  *v16 = 0u;
  v17 = 1065353216;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__MPMediaLibraryEntityTranslator_mapPropertyKey_withPropertiesToFetch_valueTransformer___block_invoke;
  v12[3] = &unk_1E767DB88;
  v13 = keyCopy;
  v14 = a2;
  v12[4] = self;
  v10 = keyCopy;
  [(MPMediaLibraryEntityTranslator *)self mapPropertyKey:v10 withPropertiesToFetch:fetch propertiesToSort:__p sortTransformer:v12 valueTransformer:transformer];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v16[0]);
  v11 = __p[0];
  __p[0] = 0;
  if (v11)
  {
    operator delete(v11);
  }
}

void __88__MPMediaLibraryEntityTranslator_mapPropertyKey_withPropertiesToFetch_valueTransformer___block_invoke(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (*(a2 + 24) != 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a1[6] object:a1[4] file:@"MPMediaLibraryEntityTranslator.mm" lineNumber:200 description:{@"Sorting by %@ is ambiguous, please define sortTransformer.", a1[5]}];
  }

  [v7 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
  mlcore::SortDescriptor::SortDescriptor();
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a4, v9, &v10, 1uLL);
}

- (void)mapPropertyKey:(id)key toMLProperty:(void *)property
{
  v12 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  std::string::basic_string[abi:ne200100]<0>(v9, "property");
  propertyCopy = property;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v9, 1);
  [(MPMediaLibraryEntityTranslator *)self mapPropertyKey:keyCopy withPropertiesToFetch:__p valueTransformer:&__block_literal_global_94_43643];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(__p[2]);
  v7 = __p[0];
  __p[0] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

id __62__MPMediaLibraryEntityTranslator_mapPropertyKey_toMLProperty___block_invoke(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "property");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

- (void)mapIdentifierMLProperties:(const void *)properties identifierCreationBlock:(id)block
{
  blockCopy = block;
  *__p = 0u;
  *v12 = 0u;
  v13 = 1065353216;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__MPMediaLibraryEntityTranslator_mapIdentifierMLProperties_identifierCreationBlock___block_invoke;
  v9[3] = &unk_1E767DB60;
  v9[4] = self;
  v10 = blockCopy;
  v7 = blockCopy;
  [(MPMediaLibraryEntityTranslator *)self mapPropertyKey:@"_default" withPropertiesToFetch:properties propertiesToSort:__p sortTransformer:0 valueTransformer:v9];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v12[0]);
  v8 = __p[0];
  __p[0] = 0;
  if (v8)
  {
    operator delete(v8);
  }
}

MPIdentifierSet *__84__MPMediaLibraryEntityTranslator_mapIdentifierMLProperties_identifierCreationBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 modelKind];
  if ([v7 isMultiQuery])
  {
    v9 = +[MPModelGenericObjectKind identityKind];

    v8 = v9;
  }

  v10 = [*(a1 + 32) _cachedIdentifierSourceForContext:v7];
  v11 = [MPIdentifierSet alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__MPMediaLibraryEntityTranslator_mapIdentifierMLProperties_identifierCreationBlock___block_invoke_2;
  v15[3] = &unk_1E767DB38;
  v17 = *(a1 + 40);
  v12 = v7;
  v16 = v12;
  v18 = a3;
  v19 = a4;
  v13 = [(MPIdentifierSet *)v11 initWithSource:v10 modelKind:v8 block:v15];

  return v13;
}

void __84__MPMediaLibraryEntityTranslator_mapIdentifierMLProperties_identifierCreationBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
}

+ (id)translatorForMPModelClass:(Class)class
{
  if (MPMLCoreInitialize(void)::onceToken != -1)
  {
    dispatch_once(&MPMLCoreInitialize(void)::onceToken, &__block_literal_global_43831);
  }

  return [self _translatorForMPModelClass:class mlcoreEntityClass:0 create:0 transient:0];
}

+ (id)_translatorForMPModelClass:(Class)class mlcoreEntityClass:(void *)entityClass create:(BOOL)create transient:(BOOL)transient
{
  createCopy = create;
  entityClassCopy = entityClass;
  entityClassCopy2 = entityClass;
  classCopy = class;
  os_unfair_lock_lock_with_options();
  if (class)
  {
    v11 = __MPClassToTranslator();
    v22 = &classCopy;
    v12 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},MPMediaLibraryEntityTranslator * {__strong}>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPMediaLibraryEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPMediaLibraryEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},MPMediaLibraryEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(v11, classCopy);
LABEL_5:
    entityClassCopy = v12[3];
    goto LABEL_6;
  }

  if (entityClassCopy)
  {
    v13 = __MLEntityClassToTranslator();
    v22 = &entityClassCopy2;
    v12 = std::__hash_table<std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>,std::__unordered_map_hasher<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>,std::hash<mlcore::EntityClass *>,std::equal_to<mlcore::EntityClass *>,true>,std::__unordered_map_equal<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>,std::equal_to<mlcore::EntityClass *>,std::hash<mlcore::EntityClass *>,true>,std::allocator<std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>>>::__emplace_unique_key_args<mlcore::EntityClass *,std::piecewise_construct_t const&,std::tuple<mlcore::EntityClass * const&>,std::tuple<>>(v13, entityClassCopy2);
    goto LABEL_5;
  }

LABEL_6:
  if (!entityClassCopy && createCopy)
  {
    if (entityClassCopy2)
    {
      transientCopy = 1;
    }

    else
    {
      transientCopy = transient;
    }

    if (!classCopy || !transientCopy)
    {
      __assert_rtn("+[MPMediaLibraryEntityTranslator _translatorForMPModelClass:mlcoreEntityClass:create:transient:]", "MPMediaLibraryEntityTranslator.mm", 138, "MPModelClass && (entityClass || transient)");
    }

    entityClassCopy = objc_alloc_init(self);
    objc_storeStrong(entityClassCopy + 4, classCopy);
    entityClassCopy[5] = entityClassCopy2;
    *(entityClassCopy + 24) = transient;
    v15 = __MPClassToTranslator();
    v22 = &classCopy;
    v16 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},MPMediaLibraryEntityTranslator * {__strong}>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPMediaLibraryEntityTranslator * {__strong}>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},MPMediaLibraryEntityTranslator * {__strong}>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},MPMediaLibraryEntityTranslator * {__strong}>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(v15, classCopy);
    objc_storeStrong(v16 + 3, entityClassCopy);
    if (entityClassCopy2)
    {
      v17 = __MLEntityClassToTranslator();
      v22 = &entityClassCopy2;
      v18 = std::__hash_table<std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>,std::__unordered_map_hasher<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>,std::hash<mlcore::EntityClass *>,std::equal_to<mlcore::EntityClass *>,true>,std::__unordered_map_equal<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>,std::equal_to<mlcore::EntityClass *>,std::hash<mlcore::EntityClass *>,true>,std::allocator<std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>>>::__emplace_unique_key_args<mlcore::EntityClass *,std::piecewise_construct_t const&,std::tuple<mlcore::EntityClass * const&>,std::tuple<>>(v17, entityClassCopy2);
      objc_storeStrong(v18 + 3, entityClassCopy);
    }
  }

  os_unfair_lock_unlock(&__translatorLock);

  return entityClassCopy;
}

+ (NSArray)allTranslators
{
  os_unfair_lock_lock_with_options();
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(__MPClassToTranslator() + 24)];
  for (i = *(__MPClassToTranslator() + 16); i; i = *i)
  {
    if (i[3])
    {
      [v2 addObject:?];
    }
  }

  os_unfair_lock_unlock(&__translatorLock);

  return v2;
}

@end