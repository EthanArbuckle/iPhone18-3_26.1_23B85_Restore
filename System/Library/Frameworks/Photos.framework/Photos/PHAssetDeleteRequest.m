@interface PHAssetDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4;
- (PHAssetDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (void)_updateSyndicationStateForSyndicationIdentifier:(id)a3 savedAssetType:(signed __int16)a4 sourceLibraryID:(int64_t)a5;
- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4;
- (void)encodeToXPCDict:(id)a3;
@end

@implementation PHAssetDeleteRequest

- (void)_updateSyndicationStateForSyndicationIdentifier:(id)a3 savedAssetType:(signed __int16)a4 sourceLibraryID:(int64_t)a5
{
  v8 = a3;
  v6 = [(PHTrashableObjectDeleteRequest *)self operation];
  if (v6)
  {
    if (v6 != 2)
    {
      goto LABEL_6;
    }

    v7 = &__block_literal_global_82;
  }

  else
  {
    v7 = &__block_literal_global_4773;
  }

  [MEMORY[0x1E69BE540] performTransactionOnSyndicationLibraryWithSyndicationIdentifier:v8 block:v7];
LABEL_6:
}

- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 additionalAttributes];
  v10 = [v9 syndicationIdentifier];

  v11 = [v8 savedAssetType];
  v12 = [v7 libraryServicesManager];
  v13 = [v12 wellKnownPhotoLibraryIdentifier];

  if (v13 != 3)
  {
    v16 = [(PHTrashableObjectDeleteRequest *)self operation];
    if (v16 == 2)
    {
      v25 = v8;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      [v7 userUntrashAssets:v20];
    }

    else if (v16 == 1)
    {
      v22 = [(PHAssetDeleteRequest *)self deleteOptions];
      v23 = [v22 expungeSource];

      if (v23 > 8)
      {
        v24 = 0;
      }

      else
      {
        v24 = off_1E75A41F8[v23];
      }

      v26 = v8;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      [v7 userExpungeAssets:v20 localOnlyDelete:0 expungeReasonFromClient:v24];
    }

    else
    {
      if (v16)
      {
        goto LABEL_18;
      }

      v17 = [(PHObjectDeleteRequest *)self clientBundleID];
      v18 = [v17 lowercaseString];
      v19 = [v18 hasPrefix:@"com.apple."];

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

      [v7 userTrashAssets:v20 withTrashedReason:v21];
    }

LABEL_18:
    if (v13 != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v14 = PLSyndicationGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v8 uuid];
    *buf = 138543618;
    v29 = v15;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_INFO, "Preventing PhotoKit delete of asset %{public}@ / %{public}@ in syndication library", buf, 0x16u);
  }

LABEL_19:
  if (v10)
  {
    [(PHAssetDeleteRequest *)self _updateSyndicationStateForSyndicationIdentifier:v10 savedAssetType:v11 sourceLibraryID:v13];
  }

LABEL_21:
}

- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28.receiver = self;
  v28.super_class = PHAssetDeleteRequest;
  v29 = 0;
  v7 = [(PHTrashableObjectDeleteRequest *)&v28 validateForDeleteManagedObject:v6 error:&v29];
  v8 = v29;
  if (v7)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 isCloudSharedAsset] && !-[PHObjectDeleteRequest isClientEntitled](self, "isClientEntitled"))
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

      if (!a4)
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

    v9 = v6;
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
      v10 = [(PHObjectDeleteRequest *)self clientBundleID];
      v11 = [v10 lowercaseString];
      if ([v11 hasPrefix:@"com.apple."])
      {

LABEL_14:
        v16 = [(PHAssetDeleteRequest *)self deleteOptions];
        v17 = [v16 expungeSource];

        if (v17)
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

      v13 = [(PHObjectDeleteRequest *)self clientBundleID];
      v14 = [v13 lowercaseString];
      v15 = [v14 hasPrefix:@"com.appleinternal."];

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
  if (!a4)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (!v12)
  {
    v26 = v8;
    v12 = 0;
    *a4 = v8;
  }

LABEL_25:

  return v12;
}

- (void)encodeToXPCDict:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PHAssetDeleteRequest;
  [(PHTrashableObjectDeleteRequest *)&v6 encodeToXPCDict:v4];
  if (self->_deleteOptions)
  {
    v5 = [(PHAssetDeleteRequest *)self deleteOptions];
    [v5 encodeToXPCDict:v4];
  }
}

- (PHAssetDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = PHAssetDeleteRequest;
  v9 = [(PHTrashableObjectDeleteRequest *)&v15 initWithXPCDict:v8 request:a4 clientAuthorization:a5];
  if (v9)
  {
    v10 = [[PHAssetDeleteOptions alloc] initWithXPCDict:v8];
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