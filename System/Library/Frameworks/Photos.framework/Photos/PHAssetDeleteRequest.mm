@interface PHAssetDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error;
- (PHAssetDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (void)_updateSyndicationStateForSyndicationIdentifier:(id)identifier savedAssetType:(signed __int16)type sourceLibraryID:(int64_t)d;
- (void)deleteManagedObject:(id)object photoLibrary:(id)library;
- (void)encodeToXPCDict:(id)dict;
@end

@implementation PHAssetDeleteRequest

- (void)_updateSyndicationStateForSyndicationIdentifier:(id)identifier savedAssetType:(signed __int16)type sourceLibraryID:(int64_t)d
{
  identifierCopy = identifier;
  operation = [(PHTrashableObjectDeleteRequest *)self operation];
  if (operation)
  {
    if (operation != 2)
    {
      goto LABEL_6;
    }

    v7 = &__block_literal_global_82;
  }

  else
  {
    v7 = &__block_literal_global_4773;
  }

  [MEMORY[0x1E69BE540] performTransactionOnSyndicationLibraryWithSyndicationIdentifier:identifierCopy block:v7];
LABEL_6:
}

- (void)deleteManagedObject:(id)object photoLibrary:(id)library
{
  v32 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  libraryCopy = library;
  v8 = objectCopy;
  additionalAttributes = [v8 additionalAttributes];
  syndicationIdentifier = [additionalAttributes syndicationIdentifier];

  savedAssetType = [v8 savedAssetType];
  libraryServicesManager = [libraryCopy libraryServicesManager];
  wellKnownPhotoLibraryIdentifier = [libraryServicesManager wellKnownPhotoLibraryIdentifier];

  if (wellKnownPhotoLibraryIdentifier != 3)
  {
    operation = [(PHTrashableObjectDeleteRequest *)self operation];
    if (operation == 2)
    {
      v25 = v8;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      [libraryCopy userUntrashAssets:v20];
    }

    else if (operation == 1)
    {
      deleteOptions = [(PHAssetDeleteRequest *)self deleteOptions];
      expungeSource = [deleteOptions expungeSource];

      if (expungeSource > 8)
      {
        v24 = 0;
      }

      else
      {
        v24 = off_1E75A41F8[expungeSource];
      }

      v26 = v8;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      [libraryCopy userExpungeAssets:v20 localOnlyDelete:0 expungeReasonFromClient:v24];
    }

    else
    {
      if (operation)
      {
        goto LABEL_18;
      }

      clientBundleID = [(PHObjectDeleteRequest *)self clientBundleID];
      lowercaseString = [clientBundleID lowercaseString];
      v19 = [lowercaseString hasPrefix:@"com.apple."];

      v27 = v8;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      if (v19)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      [libraryCopy userTrashAssets:v20 withTrashedReason:v21];
    }

LABEL_18:
    if (wellKnownPhotoLibraryIdentifier != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v14 = PLSyndicationGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    uuid = [v8 uuid];
    *buf = 138543618;
    v29 = uuid;
    v30 = 2114;
    v31 = syndicationIdentifier;
    _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_INFO, "Preventing PhotoKit delete of asset %{public}@ / %{public}@ in syndication library", buf, 0x16u);
  }

LABEL_19:
  if (syndicationIdentifier)
  {
    [(PHAssetDeleteRequest *)self _updateSyndicationStateForSyndicationIdentifier:syndicationIdentifier savedAssetType:savedAssetType sourceLibraryID:wellKnownPhotoLibraryIdentifier];
  }

LABEL_21:
}

- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v28.receiver = self;
  v28.super_class = PHAssetDeleteRequest;
  v29 = 0;
  v7 = [(PHTrashableObjectDeleteRequest *)&v28 validateForDeleteManagedObject:objectCopy error:&v29];
  v8 = v29;
  if (v7)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objectCopy isCloudSharedAsset] && !-[PHObjectDeleteRequest isClientEntitled](self, "isClientEntitled"))
    {
      v18 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A578];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot modify iCloud Shared Streams"];
      v37[0] = v9;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      v20 = [v18 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v19];
LABEL_21:

      v12 = 0;
      v8 = v20;
LABEL_22:

      if (!error)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    if ([(PHTrashableObjectDeleteRequest *)self operation]!= 1)
    {
      v12 = 1;
      goto LABEL_25;
    }

    v9 = objectCopy;
    if ([v9 hasLibraryScope] && !objc_msgSend(v9, "canPerformEditOperation:", 101))
    {
      v21 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to expunge shared library asset contributed by others"];
      v35 = v19;
      v22 = MEMORY[0x1E695DF20];
      v23 = &v35;
      v24 = &v34;
    }

    else
    {
      clientBundleID = [(PHObjectDeleteRequest *)self clientBundleID];
      lowercaseString = [clientBundleID lowercaseString];
      if ([lowercaseString hasPrefix:@"com.apple."])
      {

LABEL_14:
        deleteOptions = [(PHAssetDeleteRequest *)self deleteOptions];
        expungeSource = [deleteOptions expungeSource];

        if (expungeSource)
        {
          v12 = 1;
          goto LABEL_22;
        }

        v21 = MEMORY[0x1E696ABC0];
        v30 = *MEMORY[0x1E696A578];
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset expunge request without expungeSource being set. Set expungeSource on the PHAssetDeletionOptions passed into the expunge request"];
        v31 = v19;
        v22 = MEMORY[0x1E695DF20];
        v23 = &v31;
        v24 = &v30;
        goto LABEL_20;
      }

      clientBundleID2 = [(PHObjectDeleteRequest *)self clientBundleID];
      lowercaseString2 = [clientBundleID2 lowercaseString];
      v15 = [lowercaseString2 hasPrefix:@"com.appleinternal."];

      if (v15)
      {
        goto LABEL_14;
      }

      v21 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset expunge restricted to Apple apps only"];
      v33 = v19;
      v22 = MEMORY[0x1E695DF20];
      v23 = &v33;
      v24 = &v32;
    }

LABEL_20:
    v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    v20 = [v21 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v25];

    v8 = v25;
    goto LABEL_21;
  }

  v12 = 0;
  if (!error)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (!v12)
  {
    v26 = v8;
    v12 = 0;
    *error = v8;
  }

LABEL_25:

  return v12;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  v6.receiver = self;
  v6.super_class = PHAssetDeleteRequest;
  [(PHTrashableObjectDeleteRequest *)&v6 encodeToXPCDict:dictCopy];
  if (self->_deleteOptions)
  {
    deleteOptions = [(PHAssetDeleteRequest *)self deleteOptions];
    [deleteOptions encodeToXPCDict:dictCopy];
  }
}

- (PHAssetDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  v15.receiver = self;
  v15.super_class = PHAssetDeleteRequest;
  v9 = [(PHTrashableObjectDeleteRequest *)&v15 initWithXPCDict:dictCopy request:request clientAuthorization:authorization];
  if (v9)
  {
    v10 = [[PHAssetDeleteOptions alloc] initWithXPCDict:dictCopy];
    deleteOptions = v9->_deleteOptions;
    v9->_deleteOptions = v10;

    if (!v9->_deleteOptions)
    {
      v12 = objc_alloc_init(PHAssetDeleteOptions);
      v13 = v9->_deleteOptions;
      v9->_deleteOptions = v12;
    }
  }

  return v9;
}

@end