@interface MPMediaEntity
+ (BOOL)canFilterByProperty:(NSString *)property;
- (BOOL)isEqual:(id)equal;
- (MPMediaEntity)initWithCoder:(id)coder;
- (MPMediaEntity)initWithMultiverseIdentifier:(id)identifier library:(id)library;
- (MPMediaEntityPersistentID)persistentID;
- (MPMediaLibrary)mediaLibrary;
- (id)genericModelObjectWithRequestedProperties:(id)properties;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateValuesForProperties:(NSSet *)properties usingBlock:(void *)block;
@end

@implementation MPMediaEntity

- (id)genericModelObjectWithRequestedProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [MPModelGenericObject alloc];
  v6 = +[MPIdentifierSet emptyIdentifierSet];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__MPMediaEntity_NewMP__genericModelObjectWithRequestedProperties___block_invoke;
  v10[3] = &unk_1E7676FE0;
  v7 = propertiesCopy;
  v11 = v7;
  selfCopy = self;
  v8 = [(MPModelObject *)v5 initWithIdentifiers:v6 block:v10];

  return v8;
}

void __66__MPMediaEntity_NewMP__genericModelObjectWithRequestedProperties___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [*(a1 + 32) relationships];
  v6 = [v5 objectForKey:@"MPModelRelationshipGenericSong"];
  v7 = objc_alloc_init(MPMediaLibraryEntityTranslationContext);
  [(MPMediaLibraryEntityTranslationContext *)v7 setIdentifierSourcePrefix:@"MPMediaEntity-"];
  v8 = [*(a1 + 40) mediaLibrary];
  v9 = v8;
  if (!v8)
  {
    v2 = [MEMORY[0x1E69E4680] activeAccount];
    v9 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v2];
  }

  [(MPMediaLibraryEntityTranslationContext *)v7 setMediaLibrary:v9];
  if (!v8)
  {
  }

  v10 = [*(a1 + 40) mediaLibrary];
  v11 = [v10 userIdentity];
  v12 = [v11 accountDSID];
  [(MPMediaLibraryEntityTranslationContext *)v7 setPersonID:v12];

  [(MPMediaLibraryEntityTranslationContext *)v7 setFilteringOptions:65540];
  v13 = [MPMediaLibraryView alloc];
  v14 = [(MPMediaLibraryEntityTranslationContext *)v7 mediaLibrary];
  v15 = [(MPMediaLibraryView *)v13 initWithLibrary:v14 filteringOptions:[(MPMediaLibraryEntityTranslationContext *)v7 filteringOptions]];

  if (v15)
  {
    [(MPMediaLibraryView *)v15 mlCoreView];
    v16 = *v29;
  }

  else
  {
    v16 = 0uLL;
  }

  v139 = v16;
  mlcore::EntityCache::EntityCache();
  if (*(&v139 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v139 + 1));
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([*(a1 + 40) mediaType] & 1) == 0)
  {
    [v4 setSong:0];
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v20 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class()];
  [*(a1 + 40) persistentID];
  if (v20)
  {
    [v20 MLCorePropertiesForPropertySet:v6];
  }

  else
  {
    v137 = 0;
    __p = 0;
    v138 = 0;
  }

  [v20 entityClass];
  mlcore::EntityCache::setPropertiesToFetchForEntityClass();
  if (__p)
  {
    v137 = __p;
    operator delete(__p);
  }

  [v20 entityClass];
  v124 = 1065353216;
  *&v126[8] = 0u;
  *&v131[8] = 0u;
  v129 = 1065353216;
  v123 = 0u;
  v122 = 0u;
  v125 = 0u;
  *v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  *&v126[16] = 1065353216;
  *v131 = 0u;
  v130 = 0u;
  *&v131[16] = 1065353216;
  v133 = 0u;
  v132 = 0u;
  v134 = 1065353216;
  v121 = MEMORY[0x1E69B0818] + 16;
  v135 = MEMORY[0x1E69B0818] + 56;
  mlcore::EntityCache::entityForClassAndPersistentID();
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v121);
  +[MPMediaLibrary logDatabaseAccess];
  [v4 setSong:0];

  v17 = 1;
LABEL_15:
  v18 = [v5 objectForKey:@"MPModelRelationshipGenericPlaylist"];

  if (v18)
  {
    if ((v17 & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [v4 setPlaylist:0];
    }

    else
    {
      v19 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class()];
      [*(a1 + 40) persistentID];
      if (v19)
      {
        [v19 MLCorePropertiesForPropertySet:v18];
      }

      else
      {
        v119 = 0;
        v118 = 0;
        v120 = 0;
      }

      [v19 entityClass];
      mlcore::EntityCache::setPropertiesToFetchForEntityClass();
      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      [v19 entityClass];
      v106 = 1065353216;
      *&v108[8] = 0u;
      *&v113[8] = 0u;
      v111 = 1065353216;
      v105 = 0u;
      v104 = 0u;
      v107 = 0u;
      *v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      *&v108[16] = 1065353216;
      *v113 = 0u;
      v112 = 0u;
      *&v113[16] = 1065353216;
      v115 = 0u;
      v114 = 0u;
      v116 = 1065353216;
      v103 = MEMORY[0x1E69B0818] + 16;
      v117 = MEMORY[0x1E69B0818] + 56;
      mlcore::EntityCache::entityForClassAndPersistentID();
      mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v103);
      +[MPMediaLibrary logDatabaseAccess];
      [v4 setPlaylist:0];

      v17 = 1;
    }
  }

  v21 = [v5 objectForKey:@"MPModelRelationshipGenericAlbum"];

  if (v21)
  {
    if (v17 & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && [*(a1 + 40) groupingType] == 1)
    {
      v22 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class()];
      [*(a1 + 40) persistentID];
      if (v22)
      {
        [v22 MLCorePropertiesForPropertySet:v21];
      }

      else
      {
        v101 = 0;
        v100 = 0;
        v102 = 0;
      }

      [v22 entityClass];
      mlcore::EntityCache::setPropertiesToFetchForEntityClass();
      if (v100)
      {
        v101 = v100;
        operator delete(v100);
      }

      [v22 entityClass];
      v88 = 1065353216;
      *&v90[8] = 0u;
      *&v95[8] = 0u;
      v93 = 1065353216;
      v87 = 0u;
      v86 = 0u;
      v89 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      *&v90[16] = 1065353216;
      v94 = 0u;
      *v95 = 0u;
      *&v95[16] = 1065353216;
      v97 = 0u;
      v96 = 0u;
      v98 = 1065353216;
      v85 = MEMORY[0x1E69B0818] + 16;
      v99 = MEMORY[0x1E69B0818] + 56;
      mlcore::EntityCache::entityForClassAndPersistentID();
      mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v85);
      +[MPMediaLibrary logDatabaseAccess];
      [v4 setAlbum:0];

      v17 = 1;
    }

    else
    {
      [v4 setAlbum:0];
    }
  }

  v23 = [v5 objectForKey:@"MPModelRelationshipGenericArtist"];

  if (v23)
  {
    if (v17 & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && [*(a1 + 40) groupingType] == 2)
    {
      v24 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class()];
      [*(a1 + 40) persistentID];
      if (v24)
      {
        [v24 MLCorePropertiesForPropertySet:v23];
      }

      else
      {
        v83 = 0;
        v82 = 0;
        v84 = 0;
      }

      [v24 entityClass];
      mlcore::EntityCache::setPropertiesToFetchForEntityClass();
      if (v82)
      {
        v83 = v82;
        operator delete(v82);
      }

      [v24 entityClass];
      v70 = 1065353216;
      *&v72[8] = 0u;
      *&v77[8] = 0u;
      v75 = 1065353216;
      v69 = 0u;
      v68 = 0u;
      v71 = 0u;
      *v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      *&v72[16] = 1065353216;
      v76 = 0u;
      *v77 = 0u;
      *&v77[16] = 1065353216;
      v79 = 0u;
      v78 = 0u;
      v80 = 1065353216;
      v67 = MEMORY[0x1E69B0818] + 16;
      v81 = MEMORY[0x1E69B0818] + 56;
      mlcore::EntityCache::entityForClassAndPersistentID();
      mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v67);
      +[MPMediaLibrary logDatabaseAccess];
      [v4 setArtist:0];

      v17 = 1;
    }

    else
    {
      [v4 setArtist:0];
    }
  }

  v25 = [v5 objectForKey:@"MPModelRelationshipGenericTVEpisode"];

  if (v25)
  {
    if (v17 & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && [*(a1 + 40) mediaType] == 512)
    {
      v26 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class()];
      [*(a1 + 40) persistentID];
      if (v26)
      {
        [v26 MLCorePropertiesForPropertySet:v25];
      }

      else
      {
        v64 = 0;
        v65 = 0;
        v66 = 0;
      }

      [v26 entityClass];
      mlcore::EntityCache::setPropertiesToFetchForEntityClass();
      if (v64)
      {
        v65 = v64;
        operator delete(v64);
      }

      [v26 entityClass];
      v52 = 1065353216;
      *&v54[8] = 0u;
      *&v59[8] = 0u;
      v57 = 1065353216;
      v51 = 0u;
      v50 = 0u;
      v53 = 0u;
      *v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      *&v54[16] = 1065353216;
      v58 = 0u;
      *v59 = 0u;
      *&v59[16] = 1065353216;
      v61 = 0u;
      v60 = 0u;
      v62 = 1065353216;
      v49 = MEMORY[0x1E69B0818] + 16;
      v63 = MEMORY[0x1E69B0818] + 56;
      mlcore::EntityCache::entityForClassAndPersistentID();
      mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v49);
      +[MPMediaLibrary logDatabaseAccess];
      [v4 setTvEpisode:0];

      v17 = 1;
    }

    else
    {
      [v4 setTvEpisode:0];
    }
  }

  v27 = [v5 objectForKey:@"MPModelRelationshipGenericMovie"];

  if (v27)
  {
    if (v17 & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && [*(a1 + 40) mediaType] == 256)
    {
      v28 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class()];
      [*(a1 + 40) persistentID];
      if (v28)
      {
        [v28 MLCorePropertiesForPropertySet:v27];
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
      }

      [v28 entityClass];
      mlcore::EntityCache::setPropertiesToFetchForEntityClass();
      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }

      [v28 entityClass];
      *&v41[8] = 0u;
      v39 = 1065353216;
      v32 = 0u;
      v31 = 0u;
      v33 = 1065353216;
      v34 = 0u;
      v35 = 0u;
      v36 = 1065353216;
      v37 = 0u;
      v38 = 0u;
      v40 = 0u;
      *v41 = 0u;
      *&v41[16] = 1065353216;
      v43 = 0u;
      v42 = 0u;
      v44 = 1065353216;
      v30 = MEMORY[0x1E69B0818] + 16;
      v45 = MEMORY[0x1E69B0818] + 56;
      mlcore::EntityCache::entityForClassAndPersistentID();
      mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v30);
      +[MPMediaLibrary logDatabaseAccess];
      [v4 setMovie:0];
    }

    else
    {
      [v4 setMovie:0];
    }
  }

  MEMORY[0x1A58DF7C0](v140);
}

- (MPMediaLibrary)mediaLibrary
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaEntity.m" lineNumber:130 description:@"subclass must implement"];

  return 0;
}

- (unint64_t)hash
{
  v3 = [(MPMediaEntity *)self valueForProperty:@"persistentID"];
  v4 = v3;
  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
    v6 = unsignedLongLongValue ^ HIDWORD(unsignedLongLongValue);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MPMediaEntity;
    v6 = [(MPMediaEntity *)&v8 hash];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (-[MPMediaEntity valueForProperty:](self, "valueForProperty:", @"persistentID"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [equalCopy valueForProperty:@"persistentID"];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MPMediaEntity;
    v8 = [(MPMediaEntity *)&v10 isEqual:equalCopy];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaEntity.m" lineNumber:94 description:@"subclass must implement"];
}

- (MPMediaEntity)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaEntity.m" lineNumber:89 description:@"subclass must implement"];

  return 0;
}

- (MPMediaEntity)initWithMultiverseIdentifier:(id)identifier library:(id)library
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaEntity.m" lineNumber:84 description:@"subclass must implement"];

  return 0;
}

- (void)enumerateValuesForProperties:(NSSet *)properties usingBlock:(void *)block
{
  v6 = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__MPMediaEntity_enumerateValuesForProperties_usingBlock___block_invoke;
  v8[3] = &unk_1E7678D88;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(NSSet *)properties enumerateObjectsUsingBlock:v8];
}

void __57__MPMediaEntity_enumerateValuesForProperties_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForProperty:v4];
  (*(*(a1 + 40) + 16))();
}

- (MPMediaEntityPersistentID)persistentID
{
  v2 = [(MPMediaEntity *)self valueForProperty:@"persistentID"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

+ (BOOL)canFilterByProperty:(NSString *)property
{
  v3 = property;
  if ([(NSString *)v3 isEqualToString:@"persistentID"]|| [(NSString *)v3 isEqualToString:@"entityRevision"]|| [(NSString *)v3 isEqualToString:@"albumStoreID"]|| [(NSString *)v3 isEqualToString:@"keepLocal"]|| [(NSString *)v3 isEqualToString:@"keepLocalStatus"]|| [(NSString *)v3 isEqualToString:@"keepLocalStatusReason"]|| [(NSString *)v3 isEqualToString:@"keepLocalConstraints"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(NSString *)v3 isEqualToString:@"fileSize"];
  }

  return v4;
}

@end