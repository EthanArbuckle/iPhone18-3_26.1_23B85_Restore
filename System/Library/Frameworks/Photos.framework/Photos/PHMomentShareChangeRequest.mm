@interface PHMomentShareChangeRequest
+ (id)changeRequestForMomentShare:(id)share;
+ (id)creationRequestForMomentShareWithTitle:(id)title publicPermission:(signed __int16)permission creationDate:(id)date createMomentShareAssetsFromAssets:(id)assets creationOptionsPerAsset:(id)asset preview:(id)preview originatingMomentShare:(id)share;
+ (id)validateMomentShareCreationDate:(id)date error:(id *)error;
+ (void)expungeMomentShares:(id)shares;
+ (void)trashMomentShares:(id)shares;
- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)prepareForPhotoLibraryCheck:(id)check error:(id *)error;
- (BOOL)shouldIgnoreBudgets;
- (BOOL)shouldNotifyOnUploadCompletion;
- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (NSData)previewData;
- (NSDate)creationDate;
- (NSString)originatingScopeIdentifier;
- (NSString)title;
- (PHMomentShareChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHMomentShareChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (PHObjectPlaceholder)placeholderForCreatedMomentShare;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (id)thumbnailImageData;
- (signed)compatibilityState;
- (signed)mode;
- (void)createMomentShareAssetsFromAssets:(id)assets withCreationOptionsPerAsset:(id)asset withPreview:(id)preview;
- (void)encodeToXPCDict:(id)dict;
- (void)setCompatibilityState:(signed __int16)state;
- (void)setCreationDate:(id)date;
- (void)setOriginatingScopeIdentifier:(id)identifier;
- (void)setPreviewData:(id)data;
- (void)setPublicPermission:(signed __int16)permission;
- (void)setShouldIgnoreBudgets:(BOOL)budgets;
- (void)setShouldNotifyOnUploadCompletion:(BOOL)completion;
- (void)setThumbnailImageData:(id)data;
- (void)setTitle:(id)title;
@end

@implementation PHMomentShareChangeRequest

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v20 = 0;
  v9 = [helper applyMutationsToManagedObject:objectCopy error:&v20];
  v10 = v20;

  if (!v9)
  {
    v15 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  participantsHelper = self->_participantsHelper;
  v19 = v10;
  v12 = [(PHShareParticipantRelationshipChangeRequestHelper *)participantsHelper applyMutationsToManagedObject:objectCopy error:&v19];
  v13 = v19;

  if (!v12)
  {
    v15 = 0;
    v10 = v13;
    if (!error)
    {
      goto LABEL_11;
    }

LABEL_9:
    if ((v15 & 1) == 0)
    {
      v16 = v10;
      v15 = 0;
      *error = v10;
    }

    goto LABEL_11;
  }

  if (!self->_changedAssets)
  {
    v15 = 1;
    goto LABEL_12;
  }

  assetsHelper = self->_assetsHelper;
  v18 = v13;
  v15 = [(PHShareAssetChangeRequestHelper *)assetsHelper applyMutationsToManagedObject:objectCopy error:&v18];
  v10 = v18;

  if (error)
  {
    goto LABEL_9;
  }

LABEL_11:
  v13 = v10;
LABEL_12:

  return v15;
}

- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error
{
  v24[8] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v21 = 0;
  v11 = [helper allowMutationToManagedObject:objectCopy propertyKey:keyCopy error:&v21];

  v12 = v21;
  if (!v11)
  {
    v14 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v24[0] = @"title";
  v24[1] = @"publicPermission";
  v24[2] = @"momentShareAssets";
  v24[3] = @"creationDate";
  v24[4] = @"participants";
  v24[5] = @"shouldIgnoreBudgets";
  v24[6] = @"shouldNotifyOnUploadCompletion";
  v24[7] = @"compatibilityState";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:8];
  if (-[PHChangeRequest isNewRequest](self, "isNewRequest") || ([v13 containsObject:keyCopy] & 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on key %@", keyCopy];
    v23 = keyCopy;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v18 = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v17];

    v14 = 0;
    v12 = v18;
  }

  if (error)
  {
LABEL_9:
    if (!v14)
    {
      v19 = v12;
      *error = v12;
    }
  }

LABEL_11:

  return v14;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v6 = MEMORY[0x1E69BE5D0];
  libraryCopy = library;
  uuid = [(PHChangeRequest *)self uuid];
  creationDate = [(PHMomentShareChangeRequest *)self creationDate];
  title = [(PHMomentShareChangeRequest *)self title];
  v11 = [v6 createOwnedShareWithUUID:uuid creationDate:creationDate title:title inPhotoLibrary:libraryCopy];

  if (error && !v11)
  {
    *error = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
  }

  return v11;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  creationDate = [(PHMomentShareChangeRequest *)self creationDate];
  v14 = 0;
  v8 = [objc_opt_class() validateMomentShareCreationDate:creationDate error:&v14];
  v9 = v14;

  if (v8)
  {
    if ([libraryCopy isCloudPhotoLibraryEnabled])
    {
      v10 = 1;
      goto LABEL_8;
    }

    v11 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"iCloud Photo Library is not enabled. iCPL must be enabled to create moment shares"];

    v9 = v11;
  }

  if (error)
  {
    v12 = v9;
    v10 = 0;
    *error = v9;
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (void)createMomentShareAssetsFromAssets:(id)assets withCreationOptionsPerAsset:(id)asset withPreview:(id)preview
{
  v48 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  assetCopy = asset;
  previewCopy = preview;
  if ([(PHChangeRequest *)self isNewRequest])
  {
    placeholderForCreatedMomentShare = [(PHMomentShareChangeRequest *)self placeholderForCreatedMomentShare];
  }

  else
  {
    placeholderForCreatedMomentShare = self->_originalMomentShare;
  }

  v12 = placeholderForCreatedMomentShare;
  v44 = 0;
  assetsHelper = [(PHMomentShareChangeRequest *)self assetsHelper];
  v43 = 0;
  [assetsHelper addAssetsToCPLShare:assetsCopy creationOptionsPerAsset:assetCopy withMomentSharePreview:previewCopy outKeyAssetIdentifier:&v43 outContainsEPPAssets:&v44];
  v14 = v43;

  if (v44)
  {
    v15 = 1;
  }

  else
  {
    alwaysCreateEPPMomentShares = [MEMORY[0x1E6994AE0] alwaysCreateEPPMomentShares];
    v17 = PLBackendGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (alwaysCreateEPPMomentShares)
    {
      if (v18)
      {
        uuid = [(PHObject *)v12 uuid];
        *buf = 138543362;
        v47 = uuid;
        v15 = 1;
        _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_INFO, "Moment Share %{public}@ should contain no EPP assets but forcing EPP Moment Share anyway", buf, 0xCu);
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      if (v18)
      {
        uuid2 = [(PHObject *)v12 uuid];
        *buf = 138543362;
        v47 = uuid2;
        _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_INFO, "Moment Share %{public}@ should contain no EPP assets so is NOT an EPP Moment Share", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  [(PHMomentShareChangeRequest *)self setCompatibilityState:v15];
  if (previewCopy)
  {
    v38 = v14;
    v21 = assetCopy;
    v22 = assetsCopy;
    v23 = v12;
    thumbnailImageData = [previewCopy thumbnailImageData];
    [(PHMomentShareChangeRequest *)self setThumbnailImageData:thumbnailImageData];

    v25 = objc_alloc_init(MEMORY[0x1E6994B28]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    previewImageData = [previewCopy previewImageData];
    v27 = [previewImageData countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v40;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(previewImageData);
          }

          [v25 addPreviewImageData:*(*(&v39 + 1) + 8 * i)];
        }

        v28 = [previewImageData countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v28);
    }

    keyAsset = [previewCopy keyAsset];

    v12 = v23;
    assetsCopy = v22;
    assetCopy = v21;
    v14 = v38;
    if (keyAsset)
    {
      if (v38)
      {
        [v25 setKeyAssetIdentifier:v38];
      }

      keyAsset2 = [previewCopy keyAsset];
      uuid3 = [keyAsset2 uuid];
      keySourceAssetIdentifier = self->_keySourceAssetIdentifier;
      self->_keySourceAssetIdentifier = uuid3;

      [previewCopy cropRect];
      v35 = NSStringFromRect(v49);
      [v25 setCropRectString:v35];
      data = [v25 data];
      [(PHMomentShareChangeRequest *)self setPreviewData:data];
    }
  }

  self->_changedAssets = 1;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];
}

- (void)setCompatibilityState:(signed __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"compatibilityState"];
}

- (signed)compatibilityState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"compatibilityState"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setPublicPermission:(signed __int16)permission
{
  permissionCopy = permission;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:permissionCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"publicPermission"];
}

- (signed)mode
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"publicPermission"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setShouldNotifyOnUploadCompletion:(BOOL)completion
{
  completionCopy = completion;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:completionCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"shouldNotifyOnUploadCompletion"];
}

- (BOOL)shouldNotifyOnUploadCompletion
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"shouldNotifyOnUploadCompletion"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setShouldIgnoreBudgets:(BOOL)budgets
{
  budgetsCopy = budgets;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:budgetsCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"shouldIgnoreBudgets"];
}

- (BOOL)shouldIgnoreBudgets
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"shouldIgnoreBudgets"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setPreviewData:(id)data
{
  dataCopy = data;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dataCopy)
  {
    [mutations setObject:dataCopy forKeyedSubscript:@"previewData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"previewData"];
  }

  else
  {
    [mutations removeObjectForKey:@"previewData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"previewData"];
  }
}

- (NSData)previewData
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"previewData"];

  return v5;
}

- (void)setThumbnailImageData:(id)data
{
  dataCopy = data;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dataCopy)
  {
    [mutations setObject:dataCopy forKeyedSubscript:@"thumbnailImageData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"thumbnailImageData"];
  }

  else
  {
    [mutations removeObjectForKey:@"thumbnailImageData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"thumbnailImageData"];
  }
}

- (id)thumbnailImageData
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"thumbnailImageData"];

  return v5;
}

- (void)setCreationDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"creationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"creationDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"creationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"creationDate"];
  }
}

- (NSDate)creationDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"creationDate"];

  return v5;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (titleCopy)
  {
    [mutations setObject:titleCopy forKeyedSubscript:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"title"];
  }

  else
  {
    [mutations removeObjectForKey:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"title"];
  }
}

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"title"];

  return v5;
}

- (void)setOriginatingScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (identifierCopy)
  {
    [mutations setObject:identifierCopy forKeyedSubscript:@"originatingScopeIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"originatingScopeIdentifier"];
  }

  else
  {
    [mutations removeObjectForKey:@"originatingScopeIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"originatingScopeIdentifier"];
  }
}

- (NSString)originatingScopeIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"originatingScopeIdentifier"];

  return v5;
}

- (PHObjectPlaceholder)placeholderForCreatedMomentShare
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (BOOL)prepareForPhotoLibraryCheck:(id)check error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  type = [check type];
  v6 = type;
  if (error && type != 1)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Change must be performed within the sharedMomentSharePhotoLibrary";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v8];
  }

  return v6 == 1;
}

- (void)encodeToXPCDict:(id)dict
{
  xdict = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:xdict];

  participantsHelper = [(PHMomentShareChangeRequest *)self participantsHelper];
  [participantsHelper encodeToXPCDict:xdict];

  assetsHelper = [(PHMomentShareChangeRequest *)self assetsHelper];
  [assetsHelper encodeToXPCDict:xdict];

  xpc_dictionary_set_BOOL(xdict, "changedAssetsKey", self->_changedAssets);
}

- (PHMomentShareChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v20.receiver = self;
  v20.super_class = PHMomentShareChangeRequest;
  v11 = [(PHChangeRequest *)&v20 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
      objc_storeWeak(&v11->_clientConnection, currentConnection);

      v15 = [(PHRelationshipChangeRequestHelper *)[PHShareParticipantRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"participants" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      participantsHelper = v11->_participantsHelper;
      v11->_participantsHelper = v15;

      v17 = [[PHShareAssetChangeRequestHelper alloc] initWithXpcDict:dictCopy request:requestCopy changeRequest:v11];
      assetsHelper = v11->_assetsHelper;
      v11->_assetsHelper = v17;

      v11->_changedAssets = xpc_dictionary_get_BOOL(dictCopy, "changedAssetsKey");
    }
  }

  return v11;
}

- (PHMomentShareChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = PHMomentShareChangeRequest;
  v8 = [(PHChangeRequest *)&v16 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = [(PHRelationshipChangeRequestHelper *)[PHShareParticipantRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"participants" changeRequestHelper:v8->super._helper];
    participantsHelper = v8->_participantsHelper;
    v8->_participantsHelper = v11;

    v13 = [[PHShareAssetChangeRequestHelper alloc] initWithChangeRequest:v8];
    assetsHelper = v8->_assetsHelper;
    v8->_assetsHelper = v13;
  }

  return v8;
}

- (id)initForNewObject
{
  v12.receiver = self;
  v12.super_class = PHMomentShareChangeRequest;
  v2 = [(PHChangeRequest *)&v12 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v5 = [(PHRelationshipChangeRequestHelper *)[PHShareParticipantRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"participants" changeRequestHelper:v2->super._helper];
    participantsHelper = v2->_participantsHelper;
    v2->_participantsHelper = v5;

    v7 = [[PHShareAssetChangeRequestHelper alloc] initWithChangeRequest:v2];
    assetsHelper = v2->_assetsHelper;
    v2->_assetsHelper = v7;

    v9 = v2->_assetsHelper;
    placeholderForCreatedMomentShare = [(PHMomentShareChangeRequest *)v2 placeholderForCreatedMomentShare];
    [(PHShareAssetChangeRequestHelper *)v9 setBackingShare:placeholderForCreatedMomentShare];
  }

  return v2;
}

+ (void)expungeMomentShares:(id)shares
{
  v34 = *MEMORY[0x1E69E9840];
  sharesCopy = shares;
  +[PHPhotoLibrary assertTransaction];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = sharesCopy;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = MEMORY[0x1E695DF30];
          v18 = *MEMORY[0x1E695D940];
          v19 = MEMORY[0x1E696AEC0];
          v20 = NSStringFromSelector(a2);
          v21 = [v19 stringWithFormat:@"Invalid object %@ passed to %@, objects must be of type PHMomentShare", v10, v20];
          v22 = [v17 exceptionWithName:v18 reason:v21 userInfo:0];
          v23 = v22;

          objc_exception_throw(v22);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(PHObjectDeleteRequest *)PHMomentShareDeleteRequest deleteRequestForObject:*(*(&v24 + 1) + 8 * j)];
        [v16 setOperation:1];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }
}

+ (void)trashMomentShares:(id)shares
{
  v34 = *MEMORY[0x1E69E9840];
  sharesCopy = shares;
  +[PHPhotoLibrary assertTransaction];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = sharesCopy;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = MEMORY[0x1E695DF30];
          v18 = *MEMORY[0x1E695D940];
          v19 = MEMORY[0x1E696AEC0];
          v20 = NSStringFromSelector(a2);
          v21 = [v19 stringWithFormat:@"Invalid object %@ passed to %@, objects must be of type PHMomentShare", v10, v20];
          v22 = [v17 exceptionWithName:v18 reason:v21 userInfo:0];
          v23 = v22;

          objc_exception_throw(v22);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(PHObjectDeleteRequest *)PHMomentShareDeleteRequest deleteRequestForObject:*(*(&v24 + 1) + 8 * j)];
        [v16 setOperation:0];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }
}

+ (id)validateMomentShareCreationDate:(id)date error:(id *)error
{
  dateCopy = date;
  if (dateCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Nil creation date not supported"];
    if (error)
    {
      v6 = v6;
      *error = v6;
    }
  }

  return dateCopy;
}

+ (id)creationRequestForMomentShareWithTitle:(id)title publicPermission:(signed __int16)permission creationDate:(id)date createMomentShareAssetsFromAssets:(id)assets creationOptionsPerAsset:(id)asset preview:(id)preview originatingMomentShare:(id)share
{
  permissionCopy = permission;
  assetsCopy = assets;
  assetCopy = asset;
  previewCopy = preview;
  shareCopy = share;
  dateCopy = date;
  titleCopy = title;
  if (![assetsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMomentShareChangeRequest.m" lineNumber:137 description:@"assets must not be empty"];
  }

  initForNewObject = [[PHMomentShareChangeRequest alloc] initForNewObject];
  [initForNewObject setTitle:titleCopy];

  [initForNewObject setPublicPermission:permissionCopy];
  [initForNewObject setCreationDate:dateCopy];

  if (shareCopy)
  {
    scopeIdentifier = [shareCopy scopeIdentifier];
    if (scopeIdentifier)
    {
      [initForNewObject setOriginatingScopeIdentifier:scopeIdentifier];
    }
  }

  [initForNewObject createMomentShareAssetsFromAssets:assetsCopy withCreationOptionsPerAsset:assetCopy withPreview:previewCopy];

  return initForNewObject;
}

+ (id)changeRequestForMomentShare:(id)share
{
  shareCopy = share;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHMomentShareChangeRequest alloc];
    uuid = [shareCopy uuid];
    objectID = [shareCopy objectID];
    v7 = [(PHMomentShareChangeRequest *)v4 initWithUUID:uuid objectID:objectID];

    [(PHMomentShareChangeRequest *)v7 _setOriginalMomentShare:shareCopy];
    participantsHelper = [(PHMomentShareChangeRequest *)v7 participantsHelper];
    [participantsHelper setOriginalShare:shareCopy];

    assetsHelper = [(PHMomentShareChangeRequest *)v7 assetsHelper];
    [assetsHelper setBackingShare:shareCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end