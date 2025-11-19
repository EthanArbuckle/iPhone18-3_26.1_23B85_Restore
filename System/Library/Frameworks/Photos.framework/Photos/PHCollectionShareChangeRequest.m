@interface PHCollectionShareChangeRequest
+ (id)changeRequestForCollectionShare:(id)a3;
+ (id)creationRequestForOwnedCollectionShareWithTitle:(id)a3 subtype:(int64_t)a4;
+ (void)_expungeCollectionShares:(id)a3 ignorePhotosctlExpungeOverride:(BOOL)a4;
+ (void)trashCollectionShares:(id)a3;
+ (void)unsubscribeCollectionShares:(id)a3;
+ (void)untrashCollectionShares:(id)a3;
- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)customSortAscending;
- (NSDate)creationDate;
- (NSString)title;
- (PHCollectionShare)originalCollectionShare;
- (PHCollectionShareChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHCollectionShareChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (PHObjectPlaceholder)placeholderForCreatedCollectionShare;
- (id)addParticipantWithEmailAddress:(id)a3;
- (id)addParticipantWithPhoneNumber:(id)a3;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (id)trashedDate;
- (signed)collectionShareKind;
- (signed)creationType;
- (signed)notificationState;
- (signed)publicPermission;
- (signed)publicURLState;
- (unsigned)customSortKey;
- (unsigned)status;
- (void)addAssetsToCollectionShareByCopyingSourceAssets:(id)a3 creationOptionsMappedToSourceAssets:(id)a4 withBatchCommentText:(id)a5;
- (void)addNewAssetsToCollectionShareWithAssetSource:(id)a3 withBatchCommentText:(id)a4 outNewAssetIdentifiers:(id *)a5;
- (void)encodeToXPCDict:(id)a3;
- (void)markAsViewed;
- (void)setCollectionShareKind:(signed __int16)a3;
- (void)setCreationDate:(id)a3;
- (void)setCreationType:(signed __int16)a3;
- (void)setCustomSortAscending:(BOOL)a3;
- (void)setCustomSortKey:(unsigned int)a3;
- (void)setNotificationState:(signed __int16)a3;
- (void)setPublicPermission:(signed __int16)a3;
- (void)setPublicURLState:(signed __int16)a3;
- (void)setStatus:(unsigned __int16)a3;
- (void)setTitle:(id)a3;
- (void)setTrashedDate:(id)a3;
- (void)stopSharingWithParticipants:(id)a3;
@end

@implementation PHCollectionShareChangeRequest

- (PHCollectionShare)originalCollectionShare
{
  WeakRetained = objc_loadWeakRetained(&self->_originalCollectionShare);

  return WeakRetained;
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PHChangeRequest *)self helper];
  v43 = 0;
  v11 = [v10 applyMutationsToManagedObject:v8 error:&v43];
  v12 = v43;

  v13 = v8;
  if (!v11)
  {
    goto LABEL_27;
  }

  v14 = [(PHCollectionShareChangeRequest *)self title];

  if (v14)
  {
    v15 = [(PHCollectionShareChangeRequest *)self title];
    [v13 updateTitle:v15];
  }

  if ([(PHCollectionShareChangeRequest *)self publicPermission])
  {
    v16 = [(PHCollectionShareChangeRequest *)self publicPermission];
    if ((v16 - 1) < 3)
    {
      v17 = (v16 - 1) + 1;
    }

    else
    {
      v17 = 0;
    }

    [v13 updatePublicPermission:v17];
  }

  if ([(PHCollectionShareChangeRequest *)self publicURLState])
  {
    v18 = [(PHCollectionShareChangeRequest *)self publicURLState];
    if (v18 == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2 * (v18 == 2);
    }

    [v13 updatePublicURLState:v19];
  }

  v20 = [(PHCollectionShareChangeRequest *)self participantsUnsharedFromCollectionShare];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [(PHCollectionShareChangeRequest *)self participantsUnsharedFromCollectionShare];
    [v13 removeShareParticipantUUIDs:v22 photoLibrary:v9];
  }

  if ((!self->_changedAssets || (assetsHelper = self->_assetsHelper, v42 = v12, v24 = -[PHShareAssetChangeRequestHelper applyMutationsToManagedObject:error:](assetsHelper, "applyMutationsToManagedObject:error:", v13, &v42), v25 = v42, v12, v12 = v25, v24)) && (v26 = v12, -[PHCollectionShareChangeRequest participantsHelper](self, "participantsHelper"), v27 = objc_claimAutoreleasedReturnValue(), v41 = v12, v28 = [v27 applyMutationsToManagedObject:v13 error:&v41], v12 = v41, v26, v27, v28))
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = self->_cloudStreamPublishJobs;
    v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v38;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [*(*(&v37 + 1) + 8 * i) executeDaemonOperation];
        }

        v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v31);
    }

    v34 = 1;
  }

  else
  {
LABEL_27:
    if (a5)
    {
      v35 = v12;
      v34 = 0;
      *a5 = v12;
    }

    else
    {
      v34 = 0;
    }
  }

  return v34;
}

- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5
{
  v24[9] = *MEMORY[0x1E69E9840];
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
  v24[1] = @"trashedDate";
  v24[2] = @"publicPermission";
  v24[3] = @"notificationState";
  v24[4] = @"publicURLState";
  v24[5] = @"creationType";
  v24[6] = @"status";
  v24[7] = @"customSortKey";
  v24[8] = @"customSortAscending";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:9];
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
    v18 = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v17];

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
  v6 = MEMORY[0x1E69BE358];
  v7 = a3;
  v8 = [(PHChangeRequest *)self uuid];
  v9 = [(PHCollectionShareChangeRequest *)self creationDate];
  v10 = [(PHCollectionShareChangeRequest *)self title];
  v11 = [(PHCollectionShareChangeRequest *)self collectionShareKind];
  v12 = [(PHChangeRequest *)self helper];
  v13 = [v12 clientBundleIdentifier];
  v14 = [v6 createOwnedShareWithUUID:v8 creationDate:v9 title:v10 kind:v11 clientBundleIdentifier:v13 unitTestMode:self->_runningAsUnitTest inPhotoLibrary:v7];

  if (a4 && !v14)
  {
    *a4 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
  }

  return v14;
}

- (void)markAsViewed
{
  v3 = [(PHChangeRequest *)self photoLibrary];
  v4 = [v3 photoLibrary];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PHCollectionShareChangeRequest_markAsViewed__block_invoke;
  v6[3] = &unk_1E75AAEB0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 performBlockAndWait:v6];
}

void __46__PHCollectionShareChangeRequest_markAsViewed__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) uuid];
  v3 = MEMORY[0x1E69BE358];
  v4 = [*(a1 + 40) managedObjectContext];
  v5 = [v3 shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v4];

  if (v5)
  {
    [MEMORY[0x1E69BE860] userDidNavigateIntoCollectionShare:v5];
  }

  else
  {
    v6 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Failed to find collection share with uuid %@ to update view state.", &v7, 0xCu);
    }
  }
}

- (void)stopSharingWithParticipants:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        participantsUnsharedFromCollectionShare = self->_participantsUnsharedFromCollectionShare;
        v10 = [*(*(&v13 + 1) + 8 * i) uuid];
        v11 = [(NSArray *)participantsUnsharedFromCollectionShare arrayByAddingObject:v10];
        v12 = self->_participantsUnsharedFromCollectionShare;
        self->_participantsUnsharedFromCollectionShare = v11;
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if ([(NSArray *)self->_participantsUnsharedFromCollectionShare count])
  {
    [(PHChangeRequest *)self didMutate];
  }
}

- (id)addParticipantWithPhoneNumber:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHChangeRequest *)self photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  if (v4)
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"phoneNumber == %@", v4];
    [v6 setPredicate:v7];
  }

  v8 = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
  v9 = [PHShareParticipant fetchParticipantsInShare:v8 options:v6];

  v10 = [v9 firstObject];
  if (!v10)
  {
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_originalCollectionShare);
      v12 = +[PHShareParticipantChangeRequest creationRequestForShareParticipantWithPhoneNumber:permission:](PHShareParticipantChangeRequest, "creationRequestForShareParticipantWithPhoneNumber:permission:", v4, [WeakRetained publicPermission]);
    }

    else
    {
      v12 = 0;
    }

    v13 = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
    v14 = [v13 assetCollectionSubtype];

    if (v14 == 102)
    {
      [v12 setRole:2];
      [v12 setAcceptanceStatus:1];
      [v12 setParticipantKind:1];
      v15 = [MEMORY[0x1E69BF320] UUIDString];
      [v12 setParticipantID:v15];
    }

    v10 = [v12 placeholderForCreatedShareParticipant];
    if (v10)
    {
      v16 = [(PHCollectionShareChangeRequest *)self participantsHelper];
      v19[0] = v10;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v16 addParticipants:v17 toChangeRequest:self];
    }
  }

  return v10;
}

- (id)addParticipantWithEmailAddress:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHChangeRequest *)self photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  if (v4)
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"emailAddress == %@", v4];
    [v6 setPredicate:v7];
  }

  v8 = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
  v9 = [PHShareParticipant fetchParticipantsInShare:v8 options:v6];

  v10 = [v9 firstObject];
  if (!v10)
  {
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_originalCollectionShare);
      v12 = +[PHShareParticipantChangeRequest creationRequestForShareParticipantWithEmailAddress:permission:](PHShareParticipantChangeRequest, "creationRequestForShareParticipantWithEmailAddress:permission:", v4, [WeakRetained publicPermission]);
    }

    else
    {
      v12 = 0;
    }

    v13 = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
    v14 = [v13 assetCollectionSubtype];

    if (v14 == 102)
    {
      [v12 setRole:2];
      [v12 setAcceptanceStatus:1];
      [v12 setParticipantKind:1];
      v15 = [MEMORY[0x1E69BF320] UUIDString];
      [v12 setParticipantID:v15];
    }

    v10 = [v12 placeholderForCreatedShareParticipant];
    if (v10)
    {
      v16 = [(PHCollectionShareChangeRequest *)self participantsHelper];
      v19[0] = v10;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v16 addParticipants:v17 toChangeRequest:self];
    }
  }

  return v10;
}

- (void)setCustomSortAscending:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"customSortAscending"];
}

- (BOOL)customSortAscending
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"customSortAscending"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setCustomSortKey:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"customSortKey"];
}

- (unsigned)customSortKey
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"customSortKey"];

  LODWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setCreationType:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"creationType"];
}

- (signed)creationType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"creationType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setCollectionShareKind:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"collectionShareKind"];
}

- (signed)collectionShareKind
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"collectionShareKind"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setPublicURLState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"publicURLState"];
}

- (signed)publicURLState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"publicURLState"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setNotificationState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"notificationState"];
}

- (signed)notificationState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"notificationState"];

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

- (signed)publicPermission
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"publicPermission"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setStatus:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"status"];
}

- (unsigned)status
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"status"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setTrashedDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"trashedDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"trashedDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"trashedDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"trashedDate"];
  }
}

- (id)trashedDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"trashedDate"];

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

- (void)addNewAssetsToCollectionShareWithAssetSource:(id)a3 withBatchCommentText:(id)a4 outNewAssetIdentifiers:(id *)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v53 = a4;
  v54 = self;
  v10 = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
  v11 = [v10 assetCollectionSubtype];

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  if (v11 != 103)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v52 = v9;
    v28 = v9;
    v29 = [v28 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (!v29)
    {
      goto LABEL_39;
    }

    v30 = v29;
    v31 = *v56;
    while (1)
    {
      v32 = 0;
      do
      {
        if (*v56 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v55 + 1) + 8 * v32);
        v34 = objc_alloc_init(MEMORY[0x1E69BE820]);
        v35 = [v33 fileURL];

        if (v35)
        {
          v36 = [v33 fileURL];
          [v34 setMediaURL:v36];
          goto LABEL_30;
        }

        v37 = [v33 data];

        if (v37)
        {
          v36 = [v33 data];
          [v34 setMediaData:v36];
LABEL_30:

          v38 = [v33 resourceType];
          if (v38 == 1)
          {
            v39 = 2;
          }

          else
          {
            v39 = v38 == 2;
          }

          goto LABEL_33;
        }

        if ([v33 sourceType] == 3)
        {
          v40 = [v33 videoComplementBundle];
          [v34 setVideoComplement:v40];

          v39 = 3;
LABEL_33:
          [v34 setMediaType:v39];
        }

        [v12 addObject:v34];

        ++v32;
      }

      while (v30 != v32);
      v41 = [v28 countByEnumeratingWithState:&v55 objects:v63 count:16];
      v30 = v41;
      if (!v41)
      {
LABEL_39:

        v42 = MEMORY[0x1E69BE348];
        v43 = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
        v44 = [v43 scopeIdentifier];
        v45 = [(PHChangeRequest *)self helper];
        v46 = [v45 clientBundleIdentifier];
        v47 = v53;
        v48 = [v42 cloudStreamShareJobToPublishMediaFromSources:v12 toCollectionShareScopeIdentifier:v44 withCommentText:v53 clientBundleIdentifier:v46 unitTestingMode:v54->_runningAsUnitTest];

        [(NSMutableArray *)v54->_cloudStreamPublishJobs addObject:v48];
        v49 = [(PHChangeRequest *)v54 helper];
        [v49 didMutate];

        v9 = v52;
        goto LABEL_41;
      }
    }
  }

  v51 = a5;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v60;
    do
    {
      v17 = 0;
      do
      {
        if (*v60 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v59 + 1) + 8 * v17);
        v19 = [v18 sourceType];
        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v21 = +[PHAssetCreationRequest creationRequestForAsset];
            v23 = [v18 resourceType];
            v20 = [v18 data];
            [v21 addResourceWithType:v23 data:v20 options:0];
          }

          else
          {
            if (v19 != 3)
            {
              goto LABEL_15;
            }

            v20 = [v18 videoComplementBundle];
            v21 = [PHAssetCreationRequest creationRequestForAssetFromVideoComplementBundle:v20];
          }

          goto LABEL_14;
        }

        if (v19 == 1)
        {
          v21 = +[PHAssetCreationRequest creationRequestForAsset];
          v22 = [v18 resourceType];
          v20 = [v18 fileURL];
          [v21 addResourceWithType:v22 fileURL:v20 options:0];
LABEL_14:

          v24 = [(PHCollectionShareChangeRequest *)v54 originalCollectionShare];
          [v21 setShare:v24];

          v25 = [v21 placeholderForCreatedAsset];
          v26 = [v25 localIdentifier];
          [v12 addObject:v26];

          goto LABEL_15;
        }

        if (!v19)
        {
          v50 = [MEMORY[0x1E696AAA8] currentHandler];
          [v50 handleFailureInMethod:a2 object:v54 file:@"PHCollectionShareChangeRequest.m" lineNumber:242 description:@"Invalid source type: PHCollectionShareAssetSourceTypeUnknown"];

          goto LABEL_40;
        }

LABEL_15:
        ++v17;
      }

      while (v15 != v17);
      v27 = [v13 countByEnumeratingWithState:&v59 objects:v64 count:16];
      v15 = v27;
    }

    while (v27);
  }

  *v51 = [v12 copy];
LABEL_40:
  v47 = v53;
LABEL_41:
}

- (void)addAssetsToCollectionShareByCopyingSourceAssets:(id)a3 creationOptionsMappedToSourceAssets:(id)a4 withBatchCommentText:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
  v11 = [v10 assetCollectionSubtype];

  if (v11 == 103)
  {
    v12 = [(PHCollectionShareChangeRequest *)self assetsHelper];
    [v12 addAssetsToCPLShare:v16 creationOptionsPerAsset:v8 withMomentSharePreview:0 outKeyAssetIdentifier:0 outContainsEPPAssets:0];
  }

  else
  {
    v13 = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
    v14 = [v13 assetCollectionSubtype];

    if (v14 != 102)
    {
      goto LABEL_6;
    }

    v12 = [(PHCollectionShareChangeRequest *)self assetsHelper];
    [v12 addAssetsToSharedStreamShare:v16 creationOptionsPerAsset:v8 withBatchCommentText:v9];
  }

LABEL_6:
  self->_changedAssets = 1;
  v15 = [(PHChangeRequest *)self helper];
  [v15 didMutate];
}

- (PHObjectPlaceholder)placeholderForCreatedCollectionShare
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 encodeToXPCDict:v4];

  v6 = [(PHCollectionShareChangeRequest *)self assetsHelper];
  [v6 encodeToXPCDict:v4];

  v7 = [(PHCollectionShareChangeRequest *)self participantsHelper];
  [v7 encodeToXPCDict:v4];

  xpc_dictionary_set_BOOL(v4, "runningAsUnitTest", self->_runningAsUnitTest);
  xpc_dictionary_set_BOOL(v4, "changedAssetsKey", self->_changedAssets);
  PLXPCDictionarySetArray();
  v8 = xpc_array_create(0, 0);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_cloudStreamPublishJobs;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = xpc_dictionary_create(0, 0, 0);
        [v14 encodeToXPCObject:{v15, v16}];
        xpc_array_append_value(v8, v15);

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  xpc_dictionary_set_value(v4, "cloudStreamPublishJobs", v8);
}

- (PHCollectionShareChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = PHCollectionShareChangeRequest;
  v11 = [(PHChangeRequest *)&v29 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v14 = [[PHShareAssetChangeRequestHelper alloc] initWithXpcDict:v8 request:v9 changeRequest:v11];
    assetsHelper = v11->_assetsHelper;
    v11->_assetsHelper = v14;

    v16 = [(PHRelationshipChangeRequestHelper *)[PHShareParticipantRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"participants" xpcDict:v8 changeRequestHelper:v11->super._helper];
    participantsHelper = v11->_participantsHelper;
    v11->_participantsHelper = v16;

    v11->_changedAssets = xpc_dictionary_get_BOOL(v8, "changedAssetsKey");
    v18 = PLArrayFromXPCDictionary();
    participantsUnsharedFromCollectionShare = v11->_participantsUnsharedFromCollectionShare;
    v11->_participantsUnsharedFromCollectionShare = v18;

    v11->_runningAsUnitTest = xpc_dictionary_get_BOOL(v8, "runningAsUnitTest");
    v20 = [MEMORY[0x1E695E0F0] mutableCopy];
    cloudStreamPublishJobs = v11->_cloudStreamPublishJobs;
    v11->_cloudStreamPublishJobs = v20;

    v22 = xpc_dictionary_get_array(v8, "cloudStreamPublishJobs");
    for (i = 0; xpc_array_get_count(v22) > i; ++i)
    {
      v24 = xpc_array_get_value(v22, i);
      v25 = objc_alloc(MEMORY[0x1E69BE348]);
      v26 = [v9 libraryServicesManager];
      v27 = [v25 initFromXPCObject:v24 libraryServicesManager:v26];

      [(NSMutableArray *)v11->_cloudStreamPublishJobs addObject:v27];
    }

    if (v11->_runningAsUnitTest || [(NSMutableArray *)v11->_cloudStreamPublishJobs count]|| [(NSArray *)v11->_participantsUnsharedFromCollectionShare count])
    {
      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [v9 recordUpdateRequest:v11];
    }
  }

  return v11;
}

- (PHCollectionShareChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = PHCollectionShareChangeRequest;
  v8 = [(PHChangeRequest *)&v20 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v8->_runningAsUnitTest = MEMORY[0x19EAF1E50]();
    v11 = [[PHShareAssetChangeRequestHelper alloc] initWithChangeRequest:v8];
    assetsHelper = v8->_assetsHelper;
    v8->_assetsHelper = v11;

    v13 = [(PHRelationshipChangeRequestHelper *)[PHShareParticipantRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"participants" changeRequestHelper:v8->super._helper];
    participantsHelper = v8->_participantsHelper;
    v8->_participantsHelper = v13;

    participantsUnsharedFromCollectionShare = v8->_participantsUnsharedFromCollectionShare;
    v16 = MEMORY[0x1E695E0F0];
    v8->_participantsUnsharedFromCollectionShare = MEMORY[0x1E695E0F0];

    v17 = [v16 mutableCopy];
    cloudStreamPublishJobs = v8->_cloudStreamPublishJobs;
    v8->_cloudStreamPublishJobs = v17;
  }

  return v8;
}

- (id)initForNewObject
{
  v16.receiver = self;
  v16.super_class = PHCollectionShareChangeRequest;
  v2 = [(PHChangeRequest *)&v16 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v2->_runningAsUnitTest = MEMORY[0x19EAF1E50]();
    v5 = [[PHShareAssetChangeRequestHelper alloc] initWithChangeRequest:v2];
    assetsHelper = v2->_assetsHelper;
    v2->_assetsHelper = v5;

    v7 = v2->_assetsHelper;
    v8 = [(PHCollectionShareChangeRequest *)v2 placeholderForCreatedCollectionShare];
    [(PHShareAssetChangeRequestHelper *)v7 setBackingShare:v8];

    v9 = [(PHRelationshipChangeRequestHelper *)[PHShareParticipantRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"participants" changeRequestHelper:v2->super._helper];
    participantsHelper = v2->_participantsHelper;
    v2->_participantsHelper = v9;

    participantsUnsharedFromCollectionShare = v2->_participantsUnsharedFromCollectionShare;
    v12 = MEMORY[0x1E695E0F0];
    v2->_participantsUnsharedFromCollectionShare = MEMORY[0x1E695E0F0];

    v13 = [v12 mutableCopy];
    cloudStreamPublishJobs = v2->_cloudStreamPublishJobs;
    v2->_cloudStreamPublishJobs = v13;
  }

  return v2;
}

+ (void)unsubscribeCollectionShares:(id)a3
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
          v21 = [v19 stringWithFormat:@"Invalid object %@ passed to %@, objects must be of type PHCollectionShare", v10, v20];
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

        v16 = [(PHObjectDeleteRequest *)PHCollectionShareDeleteRequest deleteRequestForObject:*(*(&v24 + 1) + 8 * j)];
        [v16 setOperation:3];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }
}

+ (void)_expungeCollectionShares:(id)a3 ignorePhotosctlExpungeOverride:(BOOL)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  +[PHPhotoLibrary assertTransaction];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v19 = MEMORY[0x1E695DF30];
          v20 = *MEMORY[0x1E695D940];
          v21 = MEMORY[0x1E696AEC0];
          v22 = NSStringFromSelector(a2);
          v23 = [v21 stringWithFormat:@"Invalid object %@ passed to %@, objects must be of type PHCollectionShare", v12, v22];
          v24 = [v19 exceptionWithName:v20 reason:v23 userInfo:0];
          v25 = v24;

          objc_exception_throw(v24);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(PHObjectDeleteRequest *)PHCollectionShareDeleteRequest deleteRequestForObject:*(*(&v26 + 1) + 8 * j)];
        [v18 setOperation:2];
        if (PLIsInternalTool() && !a4)
        {
          [v18 setPhotosctlExpungeOverride:1];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }
}

+ (void)untrashCollectionShares:(id)a3
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
          v21 = [v19 stringWithFormat:@"Invalid object %@ passed to %@, objects must be of type PHCollectionShare", v10, v20];
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

        v16 = [(PHObjectDeleteRequest *)PHCollectionShareDeleteRequest deleteRequestForObject:*(*(&v24 + 1) + 8 * j)];
        [v16 setOperation:1];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }
}

+ (void)trashCollectionShares:(id)a3
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
          v21 = [v19 stringWithFormat:@"Invalid object %@ passed to %@, objects must be of type PHCollectionShare", v10, v20];
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

        v16 = [(PHObjectDeleteRequest *)PHCollectionShareDeleteRequest deleteRequestForObject:*(*(&v24 + 1) + 8 * j)];
        [v16 setOperation:0];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }
}

+ (id)creationRequestForOwnedCollectionShareWithTitle:(id)a3 subtype:(int64_t)a4
{
  v7 = a3;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 0x66)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PHCollectionShareChangeRequest.m" lineNumber:180 description:@"Creation subtype should be .CollectionShareKindCPL || CollectionShareKindSharedStream"];
  }

  v8 = [[PHCollectionShareChangeRequest alloc] initForNewObject];
  [v8 setTitle:v7];
  v9 = [MEMORY[0x1E695DF00] date];
  [v8 setCreationDate:v9];

  if (a4 == 103)
  {
    v10 = 1;
  }

  else
  {
    if (a4 != 102)
    {
      goto LABEL_8;
    }

    v10 = 2;
  }

  [v8 setCollectionShareKind:v10];
LABEL_8:

  return v8;
}

+ (id)changeRequestForCollectionShare:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHCollectionShareChangeRequest alloc];
    v5 = [v3 uuid];
    v6 = [v3 objectID];
    v7 = [(PHCollectionShareChangeRequest *)v4 initWithUUID:v5 objectID:v6];

    [(PHCollectionShareChangeRequest *)v7 setOriginalCollectionShare:v3];
    v8 = [(PHCollectionShareChangeRequest *)v7 assetsHelper];
    [v8 setBackingShare:v3];

    v9 = [(PHCollectionShareChangeRequest *)v7 participantsHelper];
    [v9 setOriginalShare:v3];
  }

  else
  {
    v10 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "Returning nil change request for collection share object: %@", &v12, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

@end