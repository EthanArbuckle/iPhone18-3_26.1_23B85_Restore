@interface PHAssetComment
+ (id)entityKeyMap;
+ (id)fetchCommentsForAsset:(id)asset options:(id)options;
+ (id)fetchCommentsForCloudFeedEntry:(id)entry options:(id)options;
+ (id)fetchCommentsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)fetchLikesForAsset:(id)asset options:(id)options;
+ (id)fetchLikesForCloudFeedEntry:(id)entry options:(id)options;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
- (BOOL)_isInterestingToUser:(id)user cloudSharedProperties:(id)properties;
- (BOOL)isInterestingForAlbumsSorting;
- (PHAssetComment)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
@end

@implementation PHAssetComment

- (BOOL)isInterestingForAlbumsSorting
{
  if ([(PHAssetComment *)self isMyComment])
  {
    return 1;
  }

  return [(PHAssetComment *)self isInterestingToUser];
}

- (BOOL)_isInterestingToUser:(id)user cloudSharedProperties:(id)properties
{
  v18 = *MEMORY[0x1E69E9840];
  userCopy = user;
  propertiesCopy = properties;
  if (![userCopy isCloudSharedAsset])
  {
    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = userCopy;
      v10 = "Comment marked as not interesting because it's not for a cloudSharedAsset: %@.";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  cloudIsMyAsset = [propertiesCopy cloudIsMyAsset];
  if ([(PHAssetComment *)self isMyComment])
  {
    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v10 = "Ignoring comment notification because it's my comment";
      v11 = v9;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 2;
LABEL_7:
      _os_log_impl(&dword_19C86F000, v11, v12, v10, &v16, v13);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (cloudIsMyAsset)
  {
    LOBYTE(v14) = 1;
    goto LABEL_10;
  }

  if ([propertiesCopy cloudHasCommentsByMe])
  {
    v14 = ![(PHAssetComment *)self isLike];
    goto LABEL_10;
  }

LABEL_9:
  LOBYTE(v14) = 0;
LABEL_10:

  return v14;
}

- (PHAssetComment)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  v40[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  libraryCopy = library;
  v38.receiver = self;
  v38.super_class = PHAssetComment;
  v10 = [(PHObject *)&v38 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:libraryCopy];
  if (v10)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"cloudGUID"];
    uuid = v10->super._uuid;
    v10->super._uuid = v11;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"isCaption"];
    v10->_isCaption = [v13 BOOLValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"isBatchComment"];
    v10->_isBatchComment = [v14 BOOLValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"isDeletable"];
    v10->_isDeletable = [v15 BOOLValue];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"isLike"];
    v10->_isLike = [v16 BOOLValue];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"isMyComment"];
    v10->_isMyComment = [v17 BOOLValue];

    v18 = [dictionaryCopy objectForKeyedSubscript:@"commentClientDate"];
    commentClientDate = v10->_commentClientDate;
    v10->_commentClientDate = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"commentDate"];
    commentDate = v10->_commentDate;
    v10->_commentDate = v20;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"commentText"];
    commentText = v10->_commentText;
    v10->_commentText = v22;

    v24 = [dictionaryCopy objectForKeyedSubscript:@"cloudGUID"];
    cloudGUID = v10->_cloudGUID;
    v10->_cloudGUID = v24;

    v26 = [dictionaryCopy objectForKeyedSubscript:@"commenterHashedPersonID"];
    commenterHashedPersonID = v10->_commenterHashedPersonID;
    v10->_commenterHashedPersonID = v26;

    if (v10->_isLike)
    {
      v28 = @"likedAsset";
    }

    else
    {
      v28 = @"commentedAsset";
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:v28];
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    v40[0] = @"PHAssetPropertySetCloudShared";
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v31];

    v39 = v29;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    v33 = [PHAsset fetchAssetsWithObjectIDs:v32 options:librarySpecificFetchOptions];
    firstObject = [v33 firstObject];

    cloudSharedProperties = [firstObject cloudSharedProperties];
    if (firstObject)
    {
      v10->_isInterestingToUser = [(PHAssetComment *)v10 _isInterestingToUser:firstObject cloudSharedProperties:cloudSharedProperties];
    }

    if (-[PHAssetComment isDeletable](v10, "isDeletable") || ([cloudSharedProperties cloudIsMyAsset] & 1) != 0)
    {
      isMyComment = 1;
    }

    else
    {
      isMyComment = [(PHAssetComment *)v10 isMyComment];
    }

    v10->_canBeDeletedByUser = isMyComment;
  }

  return v10;
}

+ (id)fetchLikesForCloudFeedEntry:(id)entry options:(id)options
{
  v4 = [PHQuery queryForLikesForCloudFeedEntry:entry options:options];
  executeQuery = [v4 executeQuery];

  return executeQuery;
}

+ (id)fetchLikesForAsset:(id)asset options:(id)options
{
  v4 = [PHQuery queryForLikesForAsset:asset options:options];
  executeQuery = [v4 executeQuery];

  return executeQuery;
}

+ (id)fetchCommentsForCloudFeedEntry:(id)entry options:(id)options
{
  v4 = [PHQuery queryForCommentsForCloudFeedEntry:entry options:options];
  executeQuery = [v4 executeQuery];

  return executeQuery;
}

+ (id)fetchCommentsForAsset:(id)asset options:(id)options
{
  v4 = [PHQuery queryForCommentsForAsset:asset options:options];
  executeQuery = [v4 executeQuery];

  return executeQuery;
}

+ (id)fetchCommentsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  v4 = [PHQuery queryForCommentsWithLocalIdentifiers:identifiers options:options];
  executeQuery = [v4 executeQuery];

  return executeQuery;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_50217;

  return v2;
}

void __30__PHAssetComment_entityKeyMap__block_invoke()
{
  v25[10] = *MEMORY[0x1E69E9840];
  v12 = [PHEntityKeyMap alloc];
  v23[1] = @"cloudGUID";
  v24[0] = @"cloudGUID";
  v23[0] = @"uuid";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v25[0] = v13;
  v24[1] = @"isCaption";
  v22 = @"isCaption";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v25[1] = v0;
  v24[2] = @"isBatchComment";
  v21 = @"isBatchComment";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v25[2] = v1;
  v24[3] = @"isDeletable";
  v20 = @"isDeletable";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v25[3] = v2;
  v24[4] = @"isLike";
  v19 = @"isLike";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v25[4] = v3;
  v24[5] = @"isMyComment";
  v18 = @"isMyComment";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v25[5] = v4;
  v24[6] = @"commentClientDate";
  v17 = @"commentClientDate";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v25[6] = v5;
  v24[7] = @"commentDate";
  v16 = @"commentDate";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v25[7] = v6;
  v24[8] = @"commenterHashedPersonID";
  v15 = @"commenterHashedPersonID";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v25[8] = v7;
  v24[9] = @"commentText";
  v14 = @"commentText";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v25[9] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:10];
  v10 = [(PHEntityKeyMap *)v12 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_15_50217;
  entityKeyMap_pl_once_object_15_50217 = v10;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PHAssetComment_propertiesToFetchWithHint___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (propertiesToFetchWithHint__onceToken_50229 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_50229, block);
  }

  v3 = propertiesToFetchWithHint__array_50230;

  return v3;
}

void __44__PHAssetComment_propertiesToFetchWithHint___block_invoke()
{
  v4[13] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v0 setName:@"objectID"];
  v1 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  [v0 setExpression:v1];

  [v0 setExpressionResultType:2000];
  v4[0] = v0;
  v4[1] = @"cloudGUID";
  v4[2] = @"commentClientDate";
  v4[3] = @"commentDate";
  v4[4] = @"commenterHashedPersonID";
  v4[5] = @"commentText";
  v4[6] = @"isBatchComment";
  v4[7] = @"isCaption";
  v4[8] = @"isDeletable";
  v4[9] = @"isLike";
  v4[10] = @"isMyComment";
  v4[11] = @"likedAsset";
  v4[12] = @"commentedAsset";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:13];
  v3 = propertiesToFetchWithHint__array_50230;
  propertiesToFetchWithHint__array_50230 = v2;
}

@end