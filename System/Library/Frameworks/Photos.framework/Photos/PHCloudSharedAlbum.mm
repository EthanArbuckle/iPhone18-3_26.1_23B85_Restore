@interface PHCloudSharedAlbum
+ (id)entityKeyMap;
+ (id)fetchCloudSharedAlbumsWithGUIDs:(id)ds options:(id)options;
+ (id)fetchCloudSharedAlbumsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
+ (id)transformValueExpression:(id)expression forKeyPath:(id)path;
- (BOOL)canPerformEditOperation:(int64_t)operation;
- (NSArray)invitationRecords;
- (NSString)cloudOwnerEmail;
- (NSString)cloudOwnerPhone;
- (PHCloudSharedAlbum)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
- (id)description;
- (id)localizedSharedByLabelAllowsEmail:(BOOL)email;
@end

@implementation PHCloudSharedAlbum

- (id)description
{
  v4.receiver = self;
  v4.super_class = PHCloudSharedAlbum;
  v2 = [(PHAssetCollection *)&v4 description];

  return v2;
}

- (BOOL)canPerformEditOperation:(int64_t)operation
{
  if (![MEMORY[0x1E69BF2F0] isEntitledForPhotoKit] || -[PHCollection isDeleted](self, "isDeleted"))
  {
LABEL_3:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if ([(PHAssetCollection *)self assetCollectionType]!= PHAssetCollectionTypeAlbum)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHCloudSharedAlbum.m" lineNumber:228 description:{@"Wrong type %lu", -[PHAssetCollection assetCollectionType](self, "assetCollectionType")}];
  }

  if ([(PHAssetCollection *)self assetCollectionSubtype]!= PHAssetCollectionSubtypeAlbumCloudShared)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHCloudSharedAlbum.m" lineNumber:229 description:{@"Wrong subtype %lu", -[PHAssetCollection assetCollectionSubtype](self, "assetCollectionSubtype")}];
  }

  cloudAlbumSubtype = self->_cloudAlbumSubtype;
  isOwned = [(PHCloudSharedAlbum *)self isOwned];
  if (cloudAlbumSubtype == 1)
  {
    LOBYTE(v6) = operation == 6 && isOwned;
    if ((operation & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      LOBYTE(v6) = 1;
    }
  }

  else if (isOwned)
  {
    LOBYTE(v6) = operation != 5 && operation != 2;
  }

  else
  {
    if ([(PHCloudSharedAlbum *)self isCloudMultipleContributorsEnabled])
    {
      if (operation < 7)
      {
        v6 = 0x4Au >> operation;
        return v6 & 1;
      }

      goto LABEL_3;
    }

    LOBYTE(v6) = operation == 6 || operation == 1;
  }

  return v6 & 1;
}

- (NSArray)invitationRecords
{
  v2 = [PHCloudSharedAlbumInvitationRecord fetchInvitationRecordsForSharedAlbum:self];
  fetchedObjects = [v2 fetchedObjects];

  return fetchedObjects;
}

- (NSString)cloudOwnerPhone
{
  photoLibrary = [(PHObject *)self photoLibrary];
  v3PhotoLibrary = [photoLibrary photoLibrary];
  personInfoManager = [v3PhotoLibrary personInfoManager];
  v6 = [personInfoManager phonesForInvitationRecordGUID:self->_cloudOwnerPersonID];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (NSString)cloudOwnerEmail
{
  photoLibrary = [(PHObject *)self photoLibrary];
  photoLibraryBundle = [photoLibrary photoLibraryBundle];
  emailAddressManager = [photoLibraryBundle emailAddressManager];
  cloudOwnerEmailKey = [(PHCloudSharedAlbum *)self cloudOwnerEmailKey];
  v7 = [emailAddressManager emailAddressForKey:cloudOwnerEmailKey];

  if (!v7)
  {
    v3PhotoLibrary = [photoLibrary photoLibrary];
    personInfoManager = [v3PhotoLibrary personInfoManager];
    cloudOwnerHashedPersonID = [(PHCloudSharedAlbum *)self cloudOwnerHashedPersonID];
    v7 = [personInfoManager emailForPersonID:cloudOwnerHashedPersonID];

    if (!v7)
    {
      if ((PLIsAssetsd() & 1) == 0)
      {
        [MEMORY[0x1E69BE860] checkedSharedAlbumServerModelRelationships];
      }

      v7 = 0;
    }
  }

  return v7;
}

- (id)localizedSharedByLabelAllowsEmail:(BOOL)email
{
  emailCopy = email;
  cloudOwnerFirstName = [(PHCloudSharedAlbum *)self cloudOwnerFirstName];
  cloudOwnerLastName = [(PHCloudSharedAlbum *)self cloudOwnerLastName];
  cloudOwnerFullName = [(PHCloudSharedAlbum *)self cloudOwnerFullName];
  cloudOwnerEmailKey = [(PHCloudSharedAlbum *)self cloudOwnerEmailKey];
  v9 = MEMORY[0x1E69BE330];
  isOwned = [(PHCloudSharedAlbum *)self isOwned];
  photoLibrary = [(PHObject *)self photoLibrary];
  photoLibraryBundle = [photoLibrary photoLibraryBundle];
  emailAddressManager = [photoLibraryBundle emailAddressManager];
  v14 = [v9 localizedSharedByLabelWithFirstName:cloudOwnerFirstName lastName:cloudOwnerLastName fullName:cloudOwnerFullName emailKey:cloudOwnerEmailKey isOwned:isOwned allowsEmail:emailCopy emailAddressManager:emailAddressManager];

  return v14;
}

- (PHCloudSharedAlbum)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  v46 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = PHCloudSharedAlbum;
  v9 = [(PHAssetCollection *)&v37 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:library];
  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"cloudMultipleContributorsEnabled"];
    v9->_cloudMultipleContributorsEnabled = [v10 BOOLValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isOwned"];
    v9->_owned = [v11 BOOLValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"cloudNotificationsEnabled"];
    v9->_cloudNotificationsEnabled = [v12 BOOLValue];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"cloudAlbumSubtype"];
    v9->_cloudAlbumSubtype = [v13 shortValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"cloudOwnerFirstName"];
    cloudOwnerFirstName = v9->_cloudOwnerFirstName;
    v9->_cloudOwnerFirstName = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"cloudOwnerLastName"];
    cloudOwnerLastName = v9->_cloudOwnerLastName;
    v9->_cloudOwnerLastName = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"cloudOwnerFullName"];
    cloudOwnerFullName = v9->_cloudOwnerFullName;
    v9->_cloudOwnerFullName = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"cloudOwnerEmailKey"];
    cloudOwnerEmailKey = v9->_cloudOwnerEmailKey;
    v9->_cloudOwnerEmailKey = v20;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"cloudOwnerHashedPersonID"];
    cloudOwnerHashedPersonID = v9->_cloudOwnerHashedPersonID;
    v9->_cloudOwnerHashedPersonID = v22;

    v24 = [dictionaryCopy objectForKeyedSubscript:@"publicURL"];
    publicURL = v9->_publicURL;
    v9->_publicURL = v24;

    v26 = [dictionaryCopy objectForKeyedSubscript:@"cloudPublicURLEnabled"];
    if ([v26 BOOLValue])
    {
      v27 = [dictionaryCopy objectForKeyedSubscript:@"cloudPublicURLEnabledLocal"];
      v9->_publicURLEnabled = [v27 BOOLValue];
    }

    else
    {
      v9->_publicURLEnabled = 0;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"cloudPersonID"];
    cloudOwnerPersonID = v9->_cloudOwnerPersonID;
    v9->_cloudOwnerPersonID = v28;

    v30 = [dictionaryCopy objectForKeyedSubscript:@"cloudRelationshipState"];
    cloudRelationshipState = v9->_cloudRelationshipState;
    v9->_cloudRelationshipState = v30;

    if (![(PHAssetCollection *)v9 assetCollectionType]|| ![(PHAssetCollection *)v9 assetCollectionSubtype])
    {
      v32 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        assetCollectionType = [(PHAssetCollection *)v9 assetCollectionType];
        assetCollectionSubtype = [(PHAssetCollection *)v9 assetCollectionSubtype];
        plAlbumKind = [(PHAssetCollection *)v9 plAlbumKind];
        *buf = 134218754;
        v39 = assetCollectionType;
        v40 = 2048;
        v41 = assetCollectionSubtype;
        v42 = 1024;
        v43 = plAlbumKind;
        v44 = 2112;
        v45 = dictionaryCopy;
        _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_FAULT, "PHCloudSharedAlbum: rdar://problem/18103586 Invalid asset collection type (%lu) or subtype (%lu) with album kind: %d, dict: %@", buf, 0x26u);
      }
    }
  }

  return v9;
}

+ (id)transformValueExpression:(id)expression forKeyPath:(id)path
{
  expressionCopy = expression;
  pathCopy = path;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PHCloudSharedAlbum_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transformValueExpression_forKeyPath__onceToken_51113 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_51113, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_51114 containsObject:pathCopy])
  {
    v8 = expressionCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __58__PHCloudSharedAlbum_transformValueExpression_forKeyPath___block_invoke()
{
  v4[10] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"localizedTitle";
  v4[1] = @"title";
  v4[2] = @"estimatedAssetCount";
  v4[3] = @"startDate";
  v4[4] = @"endDate";
  v4[5] = @"cloudGUID";
  v4[6] = @"cloudMultipleContributorsEnabled";
  v4[7] = @"isOwned";
  v4[8] = @"cloudAlbumSubtype";
  v4[9] = @"cloudRelationshipState";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:10];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_51114;
  transformValueExpression_forKeyPath___passThroughSet_51114 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_51136;

  return v2;
}

void __34__PHCloudSharedAlbum_entityKeyMap__block_invoke()
{
  v45[20] = *MEMORY[0x1E69E9840];
  v19 = [PHEntityKeyMap alloc];
  v43 = @"uuid";
  v44[0] = @"uuid";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v45[0] = v23;
  v44[1] = @"title";
  v42[0] = @"localizedTitle";
  v42[1] = @"title";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v45[1] = v22;
  v44[2] = @"cachedCount";
  v41 = @"estimatedAssetCount";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v45[2] = v21;
  v44[3] = @"customSortAscending";
  v40 = @"customSortAscending";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v45[3] = v20;
  v44[4] = @"customSortKey";
  v39 = @"customSortKey";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v45[4] = v18;
  v44[5] = @"startDate";
  v38 = @"startDate";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v45[5] = v17;
  v44[6] = @"endDate";
  v37 = @"endDate";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v45[6] = v16;
  v44[7] = @"cloudGUID";
  v36 = @"cloudGUID";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v45[7] = v15;
  v44[8] = @"privacyState";
  v35 = @"privacyState";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v45[8] = v14;
  v44[9] = @"cloudMultipleContributorsEnabled";
  v34 = @"cloudMultipleContributorsEnabled";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v45[9] = v13;
  v44[10] = @"isOwned";
  v33 = @"isOwned";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v45[10] = v12;
  v44[11] = @"cloudNotificationsEnabled";
  v32 = @"cloudNotificationsEnabled";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v45[11] = v0;
  v44[12] = @"cloudAlbumSubtype";
  v31 = @"cloudAlbumSubtype";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v45[12] = v1;
  v44[13] = @"cloudOwnerEmailKey";
  v30 = @"cloudOwnerEmailKey";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v45[13] = v2;
  v44[14] = @"cloudOwnerFirstName";
  v29 = @"cloudOwnerFirstName";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v45[14] = v3;
  v44[15] = @"cloudOwnerFullName";
  v28 = @"cloudOwnerFullName";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v45[15] = v4;
  v44[16] = @"cloudOwnerLastName";
  v27 = @"cloudOwnerLastName";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v45[16] = v5;
  v44[17] = @"cloudOwnerHashedPersonID";
  v26 = @"cloudOwnerHashedPersonID";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v45[17] = v6;
  v44[18] = @"cloudPersonID";
  v25 = @"cloudOwnerPersonID";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v45[18] = v7;
  v44[19] = @"cloudRelationshipState";
  v24 = @"cloudRelationshipState";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v45[19] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:20];
  v10 = [(PHEntityKeyMap *)v19 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_15_51136;
  entityKeyMap_pl_once_object_15_51136 = v10;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PHCloudSharedAlbum_propertiesToFetchWithHint___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = hint;
  if (propertiesToFetchWithHint__onceToken_51163 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_51163, block);
  }

  v3 = propertiesToFetchWithHint__array_51164;

  return v3;
}

void __48__PHCloudSharedAlbum_propertiesToFetchWithHint___block_invoke(uint64_t a1)
{
  v5[14] = *MEMORY[0x1E69E9840];
  v1 = [PHAssetCollection propertiesToFetchWithHint:*(a1 + 32)];
  v5[0] = @"cloudMultipleContributorsEnabled";
  v5[1] = @"isOwned";
  v5[2] = @"cloudNotificationsEnabled";
  v5[3] = @"cloudAlbumSubtype";
  v5[4] = @"cloudOwnerEmailKey";
  v5[5] = @"cloudOwnerFirstName";
  v5[6] = @"cloudOwnerFullName";
  v5[7] = @"cloudOwnerLastName";
  v5[8] = @"cloudOwnerHashedPersonID";
  v5[9] = @"publicURL";
  v5[10] = @"cloudPublicURLEnabled";
  v5[11] = @"cloudPublicURLEnabledLocal";
  v5[12] = @"cloudPersonID";
  v5[13] = @"cloudRelationshipState";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:14];
  v3 = [v1 arrayByAddingObjectsFromArray:v2];
  v4 = propertiesToFetchWithHint__array_51164;
  propertiesToFetchWithHint__array_51164 = v3;
}

+ (id)fetchCloudSharedAlbumsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PHCloudSharedAlbum_fetchCloudSharedAlbumsWithLocalIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = identifiersCopy;
  v6 = identifiersCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __73__PHCloudSharedAlbum_fetchCloudSharedAlbumsWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForCloudSharedAlbumsWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchCloudSharedAlbumsWithGUIDs:(id)ds options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  v7 = [v5 predicateWithFormat:@"%K in %@", @"cloudGUID", ds];
  [optionsCopy setPredicate:v7];

  v8 = [PHAssetCollection fetchAssetCollectionsWithType:1 subtype:101 options:optionsCopy];

  return v8;
}

@end