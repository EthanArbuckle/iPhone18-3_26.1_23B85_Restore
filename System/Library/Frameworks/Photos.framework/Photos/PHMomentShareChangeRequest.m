@interface PHMomentShareChangeRequest
+ (id)changeRequestForMomentShare:(id)a3;
+ (id)creationRequestForMomentShareWithTitle:(id)a3 publicPermission:(signed __int16)a4 creationDate:(id)a5 createMomentShareAssetsFromAssets:(id)a6 creationOptionsPerAsset:(id)a7 preview:(id)a8 originatingMomentShare:(id)a9;
+ (id)validateMomentShareCreationDate:(id)a3 error:(id *)a4;
+ (void)expungeMomentShares:(id)a3;
+ (void)trashMomentShares:(id)a3;
- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)prepareForPhotoLibraryCheck:(id)a3 error:(id *)a4;
- (BOOL)shouldIgnoreBudgets;
- (BOOL)shouldNotifyOnUploadCompletion;
- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (NSData)previewData;
- (NSDate)creationDate;
- (NSString)originatingScopeIdentifier;
- (NSString)title;
- (PHMomentShareChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHMomentShareChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (PHObjectPlaceholder)placeholderForCreatedMomentShare;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (id)thumbnailImageData;
- (signed)compatibilityState;
- (signed)mode;
- (void)createMomentShareAssetsFromAssets:(id)a3 withCreationOptionsPerAsset:(id)a4 withPreview:(id)a5;
- (void)encodeToXPCDict:(id)a3;
- (void)setCompatibilityState:(signed __int16)a3;
- (void)setCreationDate:(id)a3;
- (void)setOriginatingScopeIdentifier:(id)a3;
- (void)setPreviewData:(id)a3;
- (void)setPublicPermission:(signed __int16)a3;
- (void)setShouldIgnoreBudgets:(BOOL)a3;
- (void)setShouldNotifyOnUploadCompletion:(BOOL)a3;
- (void)setThumbnailImageData:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PHMomentShareChangeRequest

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(PHChangeRequest *)self helper];
  v20 = 0;
  v9 = [v8 applyMutationsToManagedObject:v7 error:&v20];
  v10 = v20;

  if (!v9)
  {
    v15 = 0;
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  participantsHelper = self->_participantsHelper;
  v19 = v10;
  v12 = [(PHShareParticipantRelationshipChangeRequestHelper *)participantsHelper applyMutationsToManagedObject:v7 error:&v19];
  v13 = v19;

  if (!v12)
  {
    v15 = 0;
    v10 = v13;
    if (!a5)
    {
      goto LABEL_11;
    }

LABEL_9:
    if ((v15 & 1) == 0)
    {
      v16 = v10;
      v15 = 0;
      *a5 = v10;
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
  v15 = [(PHShareAssetChangeRequestHelper *)assetsHelper applyMutationsToManagedObject:v7 error:&v18];
  v10 = v18;

  if (a5)
  {
    goto LABEL_9;
  }

LABEL_11:
  v13 = v10;
LABEL_12:

  return v15;
}

- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5
{
  v24[8] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [(PHChangeRequest *)self helper];
  v21 = 0;
  v11 = [v10 allowMutationToManagedObject:v9 propertyKey:v8 error:&v21];

  v12 = v21;
  if (!v11)
  {
    v14 = 0;
    if (!a5)
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
  if (-[PHChangeRequest isNewRequest](self, "isNewRequest") || ([v13 containsObject:v8] & 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on key %@", v8];
    v23 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v18 = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v17];

    v14 = 0;
    v12 = v18;
  }

  if (a5)
  {
LABEL_9:
    if (!v14)
    {
      v19 = v12;
      *a5 = v12;
    }
  }

LABEL_11:

  return v14;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E69BE5D0];
  v7 = a3;
  v8 = [(PHChangeRequest *)self uuid];
  v9 = [(PHMomentShareChangeRequest *)self creationDate];
  v10 = [(PHMomentShareChangeRequest *)self title];
  v11 = [v6 createOwnedShareWithUUID:v8 creationDate:v9 title:v10 inPhotoLibrary:v7];

  if (a4 && !v11)
  {
    *a4 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
  }

  return v11;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHMomentShareChangeRequest *)self creationDate];
  v14 = 0;
  v8 = [objc_opt_class() validateMomentShareCreationDate:v7 error:&v14];
  v9 = v14;

  if (v8)
  {
    if ([v6 isCloudPhotoLibraryEnabled])
    {
      v10 = 1;
      goto LABEL_8;
    }

    v11 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"iCloud Photo Library is not enabled. iCPL must be enabled to create moment shares"];

    v9 = v11;
  }

  if (a4)
  {
    v12 = v9;
    v10 = 0;
    *a4 = v9;
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (void)createMomentShareAssetsFromAssets:(id)a3 withCreationOptionsPerAsset:(id)a4 withPreview:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PHChangeRequest *)self isNewRequest])
  {
    v11 = [(PHMomentShareChangeRequest *)self placeholderForCreatedMomentShare];
  }

  else
  {
    v11 = self->_originalMomentShare;
  }

  v12 = v11;
  v44 = 0;
  v13 = [(PHMomentShareChangeRequest *)self assetsHelper];
  v43 = 0;
  [v13 addAssetsToCPLShare:v8 creationOptionsPerAsset:v9 withMomentSharePreview:v10 outKeyAssetIdentifier:&v43 outContainsEPPAssets:&v44];
  v14 = v43;

  if (v44)
  {
    v15 = 1;
  }

  else
  {
    v16 = [MEMORY[0x1E6994AE0] alwaysCreateEPPMomentShares];
    v17 = PLBackendGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v16)
    {
      if (v18)
      {
        v19 = [(PHObject *)v12 uuid];
        *buf = 138543362;
        v47 = v19;
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
        v20 = [(PHObject *)v12 uuid];
        *buf = 138543362;
        v47 = v20;
        _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_INFO, "Moment Share %{public}@ should contain no EPP assets so is NOT an EPP Moment Share", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  [(PHMomentShareChangeRequest *)self setCompatibilityState:v15];
  if (v10)
  {
    v38 = v14;
    v21 = v9;
    v22 = v8;
    v23 = v12;
    v24 = [v10 thumbnailImageData];
    [(PHMomentShareChangeRequest *)self setThumbnailImageData:v24];

    v25 = objc_alloc_init(MEMORY[0x1E6994B28]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v26 = [v10 previewImageData];
    v27 = [v26 countByEnumeratingWithState:&v39 objects:v45 count:16];
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
            objc_enumerationMutation(v26);
          }

          [v25 addPreviewImageData:*(*(&v39 + 1) + 8 * i)];
        }

        v28 = [v26 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v28);
    }

    v31 = [v10 keyAsset];

    v12 = v23;
    v8 = v22;
    v9 = v21;
    v14 = v38;
    if (v31)
    {
      if (v38)
      {
        [v25 setKeyAssetIdentifier:v38];
      }

      v32 = [v10 keyAsset];
      v33 = [v32 uuid];
      keySourceAssetIdentifier = self->_keySourceAssetIdentifier;
      self->_keySourceAssetIdentifier = v33;

      [v10 cropRect];
      v35 = NSStringFromRect(v49);
      [v25 setCropRectString:v35];
      v36 = [v25 data];
      [(PHMomentShareChangeRequest *)self setPreviewData:v36];
    }
  }

  self->_changedAssets = 1;
  v37 = [(PHChangeRequest *)self helper];
  [v37 didMutate];
}

- (void)setCompatibilityState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"compatibilityState"];
}

- (signed)compatibilityState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"compatibilityState"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setPublicPermission:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"publicPermission"];
}

- (signed)mode
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"publicPermission"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setShouldNotifyOnUploadCompletion:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"shouldNotifyOnUploadCompletion"];
}

- (BOOL)shouldNotifyOnUploadCompletion
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"shouldNotifyOnUploadCompletion"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setShouldIgnoreBudgets:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"shouldIgnoreBudgets"];
}

- (BOOL)shouldIgnoreBudgets
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"shouldIgnoreBudgets"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setPreviewData:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"previewData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"previewData"];
  }

  else
  {
    [v6 removeObjectForKey:@"previewData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"previewData"];
  }
}

- (NSData)previewData
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"previewData"];

  return v5;
}

- (void)setThumbnailImageData:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"thumbnailImageData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"thumbnailImageData"];
  }

  else
  {
    [v6 removeObjectForKey:@"thumbnailImageData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"thumbnailImageData"];
  }
}

- (id)thumbnailImageData
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"thumbnailImageData"];

  return v5;
}

- (void)setCreationDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"creationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"creationDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"creationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"creationDate"];
  }
}

- (NSDate)creationDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"creationDate"];

  return v5;
}

- (void)setTitle:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"title"];
  }

  else
  {
    [v6 removeObjectForKey:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"title"];
  }
}

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"title"];

  return v5;
}

- (void)setOriginatingScopeIdentifier:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"originatingScopeIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"originatingScopeIdentifier"];
  }

  else
  {
    [v6 removeObjectForKey:@"originatingScopeIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"originatingScopeIdentifier"];
  }
}

- (NSString)originatingScopeIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"originatingScopeIdentifier"];

  return v5;
}

- (PHObjectPlaceholder)placeholderForCreatedMomentShare
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (BOOL)prepareForPhotoLibraryCheck:(id)a3 error:(id *)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 type];
  v6 = v5;
  if (a4 && v5 != 1)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Change must be performed within the sharedMomentSharePhotoLibrary";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a4 = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v8];
  }

  return v6 == 1;
}

- (void)encodeToXPCDict:(id)a3
{
  xdict = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 encodeToXPCDict:xdict];

  v5 = [(PHMomentShareChangeRequest *)self participantsHelper];
  [v5 encodeToXPCDict:xdict];

  v6 = [(PHMomentShareChangeRequest *)self assetsHelper];
  [v6 encodeToXPCDict:xdict];

  xpc_dictionary_set_BOOL(xdict, "changedAssetsKey", self->_changedAssets);
}

- (PHMomentShareChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = PHMomentShareChangeRequest;
  v11 = [(PHChangeRequest *)&v20 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [MEMORY[0x1E696B0B8] currentConnection];
      objc_storeWeak(&v11->_clientConnection, v14);

      v15 = [(PHRelationshipChangeRequestHelper *)[PHShareParticipantRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"participants" xpcDict:v8 changeRequestHelper:v11->super._helper];
      participantsHelper = v11->_participantsHelper;
      v11->_participantsHelper = v15;

      v17 = [[PHShareAssetChangeRequestHelper alloc] initWithXpcDict:v8 request:v9 changeRequest:v11];
      assetsHelper = v11->_assetsHelper;
      v11->_assetsHelper = v17;

      v11->_changedAssets = xpc_dictionary_get_BOOL(v8, "changedAssetsKey");
    }
  }

  return v11;
}

- (PHMomentShareChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PHMomentShareChangeRequest;
  v8 = [(PHChangeRequest *)&v16 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
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
    v10 = [(PHMomentShareChangeRequest *)v2 placeholderForCreatedMomentShare];
    [(PHShareAssetChangeRequestHelper *)v9 setBackingShare:v10];
  }

  return v2;
}

+ (void)expungeMomentShares:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  +[PHPhotoLibrary assertTransaction];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v4;
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

+ (void)trashMomentShares:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  +[PHPhotoLibrary assertTransaction];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v4;
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

+ (id)validateMomentShareCreationDate:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Nil creation date not supported"];
    if (a4)
    {
      v6 = v6;
      *a4 = v6;
    }
  }

  return v5;
}

+ (id)creationRequestForMomentShareWithTitle:(id)a3 publicPermission:(signed __int16)a4 creationDate:(id)a5 createMomentShareAssetsFromAssets:(id)a6 creationOptionsPerAsset:(id)a7 preview:(id)a8 originatingMomentShare:(id)a9
{
  v12 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a5;
  v21 = a3;
  if (![v16 count])
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"PHMomentShareChangeRequest.m" lineNumber:137 description:@"assets must not be empty"];
  }

  v22 = [[PHMomentShareChangeRequest alloc] initForNewObject];
  [v22 setTitle:v21];

  [v22 setPublicPermission:v12];
  [v22 setCreationDate:v20];

  if (v19)
  {
    v23 = [v19 scopeIdentifier];
    if (v23)
    {
      [v22 setOriginatingScopeIdentifier:v23];
    }
  }

  [v22 createMomentShareAssetsFromAssets:v16 withCreationOptionsPerAsset:v17 withPreview:v18];

  return v22;
}

+ (id)changeRequestForMomentShare:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHMomentShareChangeRequest alloc];
    v5 = [v3 uuid];
    v6 = [v3 objectID];
    v7 = [(PHMomentShareChangeRequest *)v4 initWithUUID:v5 objectID:v6];

    [(PHMomentShareChangeRequest *)v7 _setOriginalMomentShare:v3];
    v8 = [(PHMomentShareChangeRequest *)v7 participantsHelper];
    [v8 setOriginalShare:v3];

    v9 = [(PHMomentShareChangeRequest *)v7 assetsHelper];
    [v9 setBackingShare:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end