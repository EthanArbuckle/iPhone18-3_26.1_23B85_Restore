@interface PHCollectionShareChangeRequest
+ (id)changeRequestForCollectionShare:(id)share;
+ (id)creationRequestForOwnedCollectionShareWithTitle:(id)title subtype:(int64_t)subtype;
+ (void)_expungeCollectionShares:(id)shares ignorePhotosctlExpungeOverride:(BOOL)override;
+ (void)trashCollectionShares:(id)shares;
+ (void)unsubscribeCollectionShares:(id)shares;
+ (void)untrashCollectionShares:(id)shares;
- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)customSortAscending;
- (NSDate)creationDate;
- (NSString)title;
- (PHCollectionShare)originalCollectionShare;
- (PHCollectionShareChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHCollectionShareChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (PHObjectPlaceholder)placeholderForCreatedCollectionShare;
- (id)addParticipantWithEmailAddress:(id)address;
- (id)addParticipantWithPhoneNumber:(id)number;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (id)trashedDate;
- (signed)collectionShareKind;
- (signed)creationType;
- (signed)notificationState;
- (signed)publicPermission;
- (signed)publicURLState;
- (unsigned)customSortKey;
- (unsigned)status;
- (void)addAssetsToCollectionShareByCopyingSourceAssets:(id)assets creationOptionsMappedToSourceAssets:(id)sourceAssets withBatchCommentText:(id)text;
- (void)addNewAssetsToCollectionShareWithAssetSource:(id)source withBatchCommentText:(id)text outNewAssetIdentifiers:(id *)identifiers;
- (void)encodeToXPCDict:(id)dict;
- (void)markAsViewed;
- (void)setCollectionShareKind:(signed __int16)kind;
- (void)setCreationDate:(id)date;
- (void)setCreationType:(signed __int16)type;
- (void)setCustomSortAscending:(BOOL)ascending;
- (void)setCustomSortKey:(unsigned int)key;
- (void)setNotificationState:(signed __int16)state;
- (void)setPublicPermission:(signed __int16)permission;
- (void)setPublicURLState:(signed __int16)state;
- (void)setStatus:(unsigned __int16)status;
- (void)setTitle:(id)title;
- (void)setTrashedDate:(id)date;
- (void)stopSharingWithParticipants:(id)participants;
@end

@implementation PHCollectionShareChangeRequest

- (PHCollectionShare)originalCollectionShare
{
  WeakRetained = objc_loadWeakRetained(&self->_originalCollectionShare);

  return WeakRetained;
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  libraryCopy = library;
  helper = [(PHChangeRequest *)self helper];
  v43 = 0;
  v11 = [helper applyMutationsToManagedObject:objectCopy error:&v43];
  v12 = v43;

  v13 = objectCopy;
  if (!v11)
  {
    goto LABEL_27;
  }

  title = [(PHCollectionShareChangeRequest *)self title];

  if (title)
  {
    title2 = [(PHCollectionShareChangeRequest *)self title];
    [v13 updateTitle:title2];
  }

  if ([(PHCollectionShareChangeRequest *)self publicPermission])
  {
    publicPermission = [(PHCollectionShareChangeRequest *)self publicPermission];
    if ((publicPermission - 1) < 3)
    {
      v17 = (publicPermission - 1) + 1;
    }

    else
    {
      v17 = 0;
    }

    [v13 updatePublicPermission:v17];
  }

  if ([(PHCollectionShareChangeRequest *)self publicURLState])
  {
    publicURLState = [(PHCollectionShareChangeRequest *)self publicURLState];
    if (publicURLState == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2 * (publicURLState == 2);
    }

    [v13 updatePublicURLState:v19];
  }

  participantsUnsharedFromCollectionShare = [(PHCollectionShareChangeRequest *)self participantsUnsharedFromCollectionShare];
  v21 = [participantsUnsharedFromCollectionShare count];

  if (v21)
  {
    participantsUnsharedFromCollectionShare2 = [(PHCollectionShareChangeRequest *)self participantsUnsharedFromCollectionShare];
    [v13 removeShareParticipantUUIDs:participantsUnsharedFromCollectionShare2 photoLibrary:libraryCopy];
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
    if (error)
    {
      v35 = v12;
      v34 = 0;
      *error = v12;
    }

    else
    {
      v34 = 0;
    }
  }

  return v34;
}

- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error
{
  v24[9] = *MEMORY[0x1E69E9840];
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
  v24[1] = @"trashedDate";
  v24[2] = @"publicPermission";
  v24[3] = @"notificationState";
  v24[4] = @"publicURLState";
  v24[5] = @"creationType";
  v24[6] = @"status";
  v24[7] = @"customSortKey";
  v24[8] = @"customSortAscending";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:9];
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
    v18 = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v17];

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
  v6 = MEMORY[0x1E69BE358];
  libraryCopy = library;
  uuid = [(PHChangeRequest *)self uuid];
  creationDate = [(PHCollectionShareChangeRequest *)self creationDate];
  title = [(PHCollectionShareChangeRequest *)self title];
  collectionShareKind = [(PHCollectionShareChangeRequest *)self collectionShareKind];
  helper = [(PHChangeRequest *)self helper];
  clientBundleIdentifier = [helper clientBundleIdentifier];
  v14 = [v6 createOwnedShareWithUUID:uuid creationDate:creationDate title:title kind:collectionShareKind clientBundleIdentifier:clientBundleIdentifier unitTestMode:self->_runningAsUnitTest inPhotoLibrary:libraryCopy];

  if (error && !v14)
  {
    *error = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
  }

  return v14;
}

- (void)markAsViewed
{
  photoLibrary = [(PHChangeRequest *)self photoLibrary];
  v3PhotoLibrary = [photoLibrary photoLibrary];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PHCollectionShareChangeRequest_markAsViewed__block_invoke;
  v6[3] = &unk_1E75AAEB0;
  v6[4] = self;
  v7 = v3PhotoLibrary;
  v5 = v3PhotoLibrary;
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

- (void)stopSharingWithParticipants:(id)participants
{
  v18 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [participantsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(participantsCopy);
        }

        participantsUnsharedFromCollectionShare = self->_participantsUnsharedFromCollectionShare;
        uuid = [*(*(&v13 + 1) + 8 * i) uuid];
        v11 = [(NSArray *)participantsUnsharedFromCollectionShare arrayByAddingObject:uuid];
        v12 = self->_participantsUnsharedFromCollectionShare;
        self->_participantsUnsharedFromCollectionShare = v11;
      }

      v6 = [participantsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if ([(NSArray *)self->_participantsUnsharedFromCollectionShare count])
  {
    [(PHChangeRequest *)self didMutate];
  }
}

- (id)addParticipantWithPhoneNumber:(id)number
{
  v19[1] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  photoLibrary = [(PHChangeRequest *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  if (numberCopy)
  {
    numberCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"phoneNumber == %@", numberCopy];
    [librarySpecificFetchOptions setPredicate:numberCopy];
  }

  originalCollectionShare = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
  v9 = [PHShareParticipant fetchParticipantsInShare:originalCollectionShare options:librarySpecificFetchOptions];

  firstObject = [v9 firstObject];
  if (!firstObject)
  {
    if (numberCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_originalCollectionShare);
      v12 = +[PHShareParticipantChangeRequest creationRequestForShareParticipantWithPhoneNumber:permission:](PHShareParticipantChangeRequest, "creationRequestForShareParticipantWithPhoneNumber:permission:", numberCopy, [WeakRetained publicPermission]);
    }

    else
    {
      v12 = 0;
    }

    originalCollectionShare2 = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
    assetCollectionSubtype = [originalCollectionShare2 assetCollectionSubtype];

    if (assetCollectionSubtype == 102)
    {
      [v12 setRole:2];
      [v12 setAcceptanceStatus:1];
      [v12 setParticipantKind:1];
      uUIDString = [MEMORY[0x1E69BF320] UUIDString];
      [v12 setParticipantID:uUIDString];
    }

    firstObject = [v12 placeholderForCreatedShareParticipant];
    if (firstObject)
    {
      participantsHelper = [(PHCollectionShareChangeRequest *)self participantsHelper];
      v19[0] = firstObject;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [participantsHelper addParticipants:v17 toChangeRequest:self];
    }
  }

  return firstObject;
}

- (id)addParticipantWithEmailAddress:(id)address
{
  v19[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  photoLibrary = [(PHChangeRequest *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  if (addressCopy)
  {
    addressCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"emailAddress == %@", addressCopy];
    [librarySpecificFetchOptions setPredicate:addressCopy];
  }

  originalCollectionShare = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
  v9 = [PHShareParticipant fetchParticipantsInShare:originalCollectionShare options:librarySpecificFetchOptions];

  firstObject = [v9 firstObject];
  if (!firstObject)
  {
    if (addressCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_originalCollectionShare);
      v12 = +[PHShareParticipantChangeRequest creationRequestForShareParticipantWithEmailAddress:permission:](PHShareParticipantChangeRequest, "creationRequestForShareParticipantWithEmailAddress:permission:", addressCopy, [WeakRetained publicPermission]);
    }

    else
    {
      v12 = 0;
    }

    originalCollectionShare2 = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
    assetCollectionSubtype = [originalCollectionShare2 assetCollectionSubtype];

    if (assetCollectionSubtype == 102)
    {
      [v12 setRole:2];
      [v12 setAcceptanceStatus:1];
      [v12 setParticipantKind:1];
      uUIDString = [MEMORY[0x1E69BF320] UUIDString];
      [v12 setParticipantID:uUIDString];
    }

    firstObject = [v12 placeholderForCreatedShareParticipant];
    if (firstObject)
    {
      participantsHelper = [(PHCollectionShareChangeRequest *)self participantsHelper];
      v19[0] = firstObject;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [participantsHelper addParticipants:v17 toChangeRequest:self];
    }
  }

  return firstObject;
}

- (void)setCustomSortAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:ascendingCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"customSortAscending"];
}

- (BOOL)customSortAscending
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"customSortAscending"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setCustomSortKey:(unsigned int)key
{
  v3 = *&key;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"customSortKey"];
}

- (unsigned)customSortKey
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"customSortKey"];

  LODWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setCreationType:(signed __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"creationType"];
}

- (signed)creationType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"creationType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setCollectionShareKind:(signed __int16)kind
{
  kindCopy = kind;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:kindCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"collectionShareKind"];
}

- (signed)collectionShareKind
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"collectionShareKind"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setPublicURLState:(signed __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"publicURLState"];
}

- (signed)publicURLState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"publicURLState"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setNotificationState:(signed __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"notificationState"];
}

- (signed)notificationState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"notificationState"];

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

- (signed)publicPermission
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"publicPermission"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setStatus:(unsigned __int16)status
{
  statusCopy = status;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:statusCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"status"];
}

- (unsigned)status
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"status"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setTrashedDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"trashedDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"trashedDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"trashedDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"trashedDate"];
  }
}

- (id)trashedDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"trashedDate"];

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

- (void)addNewAssetsToCollectionShareWithAssetSource:(id)source withBatchCommentText:(id)text outNewAssetIdentifiers:(id *)identifiers
{
  v65 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  textCopy = text;
  selfCopy = self;
  originalCollectionShare = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
  assetCollectionSubtype = [originalCollectionShare assetCollectionSubtype];

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(sourceCopy, "count")}];
  if (assetCollectionSubtype != 103)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v52 = sourceCopy;
    v28 = sourceCopy;
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
        fileURL = [v33 fileURL];

        if (fileURL)
        {
          fileURL2 = [v33 fileURL];
          [v34 setMediaURL:fileURL2];
          goto LABEL_30;
        }

        data = [v33 data];

        if (data)
        {
          fileURL2 = [v33 data];
          [v34 setMediaData:fileURL2];
LABEL_30:

          resourceType = [v33 resourceType];
          if (resourceType == 1)
          {
            v39 = 2;
          }

          else
          {
            v39 = resourceType == 2;
          }

          goto LABEL_33;
        }

        if ([v33 sourceType] == 3)
        {
          videoComplementBundle = [v33 videoComplementBundle];
          [v34 setVideoComplement:videoComplementBundle];

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
        originalCollectionShare2 = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
        scopeIdentifier = [originalCollectionShare2 scopeIdentifier];
        helper = [(PHChangeRequest *)self helper];
        clientBundleIdentifier = [helper clientBundleIdentifier];
        v47 = textCopy;
        v48 = [v42 cloudStreamShareJobToPublishMediaFromSources:v12 toCollectionShareScopeIdentifier:scopeIdentifier withCommentText:textCopy clientBundleIdentifier:clientBundleIdentifier unitTestingMode:selfCopy->_runningAsUnitTest];

        [(NSMutableArray *)selfCopy->_cloudStreamPublishJobs addObject:v48];
        helper2 = [(PHChangeRequest *)selfCopy helper];
        [helper2 didMutate];

        sourceCopy = v52;
        goto LABEL_41;
      }
    }
  }

  identifiersCopy = identifiers;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v13 = sourceCopy;
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
        sourceType = [v18 sourceType];
        if (sourceType > 1)
        {
          if (sourceType == 2)
          {
            v21 = +[PHAssetCreationRequest creationRequestForAsset];
            resourceType2 = [v18 resourceType];
            data2 = [v18 data];
            [v21 addResourceWithType:resourceType2 data:data2 options:0];
          }

          else
          {
            if (sourceType != 3)
            {
              goto LABEL_15;
            }

            data2 = [v18 videoComplementBundle];
            v21 = [PHAssetCreationRequest creationRequestForAssetFromVideoComplementBundle:data2];
          }

          goto LABEL_14;
        }

        if (sourceType == 1)
        {
          v21 = +[PHAssetCreationRequest creationRequestForAsset];
          resourceType3 = [v18 resourceType];
          data2 = [v18 fileURL];
          [v21 addResourceWithType:resourceType3 fileURL:data2 options:0];
LABEL_14:

          originalCollectionShare3 = [(PHCollectionShareChangeRequest *)selfCopy originalCollectionShare];
          [v21 setShare:originalCollectionShare3];

          placeholderForCreatedAsset = [v21 placeholderForCreatedAsset];
          localIdentifier = [placeholderForCreatedAsset localIdentifier];
          [v12 addObject:localIdentifier];

          goto LABEL_15;
        }

        if (!sourceType)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PHCollectionShareChangeRequest.m" lineNumber:242 description:@"Invalid source type: PHCollectionShareAssetSourceTypeUnknown"];

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

  *identifiersCopy = [v12 copy];
LABEL_40:
  v47 = textCopy;
LABEL_41:
}

- (void)addAssetsToCollectionShareByCopyingSourceAssets:(id)assets creationOptionsMappedToSourceAssets:(id)sourceAssets withBatchCommentText:(id)text
{
  assetsCopy = assets;
  sourceAssetsCopy = sourceAssets;
  textCopy = text;
  originalCollectionShare = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
  assetCollectionSubtype = [originalCollectionShare assetCollectionSubtype];

  if (assetCollectionSubtype == 103)
  {
    assetsHelper = [(PHCollectionShareChangeRequest *)self assetsHelper];
    [assetsHelper addAssetsToCPLShare:assetsCopy creationOptionsPerAsset:sourceAssetsCopy withMomentSharePreview:0 outKeyAssetIdentifier:0 outContainsEPPAssets:0];
  }

  else
  {
    originalCollectionShare2 = [(PHCollectionShareChangeRequest *)self originalCollectionShare];
    assetCollectionSubtype2 = [originalCollectionShare2 assetCollectionSubtype];

    if (assetCollectionSubtype2 != 102)
    {
      goto LABEL_6;
    }

    assetsHelper = [(PHCollectionShareChangeRequest *)self assetsHelper];
    [assetsHelper addAssetsToSharedStreamShare:assetsCopy creationOptionsPerAsset:sourceAssetsCopy withBatchCommentText:textCopy];
  }

LABEL_6:
  self->_changedAssets = 1;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];
}

- (PHObjectPlaceholder)placeholderForCreatedCollectionShare
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)dict
{
  v21 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];

  assetsHelper = [(PHCollectionShareChangeRequest *)self assetsHelper];
  [assetsHelper encodeToXPCDict:dictCopy];

  participantsHelper = [(PHCollectionShareChangeRequest *)self participantsHelper];
  [participantsHelper encodeToXPCDict:dictCopy];

  xpc_dictionary_set_BOOL(dictCopy, "runningAsUnitTest", self->_runningAsUnitTest);
  xpc_dictionary_set_BOOL(dictCopy, "changedAssetsKey", self->_changedAssets);
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

  xpc_dictionary_set_value(dictCopy, "cloudStreamPublishJobs", v8);
}

- (PHCollectionShareChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v29.receiver = self;
  v29.super_class = PHCollectionShareChangeRequest;
  v11 = [(PHChangeRequest *)&v29 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v14 = [[PHShareAssetChangeRequestHelper alloc] initWithXpcDict:dictCopy request:requestCopy changeRequest:v11];
    assetsHelper = v11->_assetsHelper;
    v11->_assetsHelper = v14;

    v16 = [(PHRelationshipChangeRequestHelper *)[PHShareParticipantRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"participants" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
    participantsHelper = v11->_participantsHelper;
    v11->_participantsHelper = v16;

    v11->_changedAssets = xpc_dictionary_get_BOOL(dictCopy, "changedAssetsKey");
    v18 = PLArrayFromXPCDictionary();
    participantsUnsharedFromCollectionShare = v11->_participantsUnsharedFromCollectionShare;
    v11->_participantsUnsharedFromCollectionShare = v18;

    v11->_runningAsUnitTest = xpc_dictionary_get_BOOL(dictCopy, "runningAsUnitTest");
    v20 = [MEMORY[0x1E695E0F0] mutableCopy];
    cloudStreamPublishJobs = v11->_cloudStreamPublishJobs;
    v11->_cloudStreamPublishJobs = v20;

    v22 = xpc_dictionary_get_array(dictCopy, "cloudStreamPublishJobs");
    for (i = 0; xpc_array_get_count(v22) > i; ++i)
    {
      v24 = xpc_array_get_value(v22, i);
      v25 = objc_alloc(MEMORY[0x1E69BE348]);
      libraryServicesManager = [requestCopy libraryServicesManager];
      v27 = [v25 initFromXPCObject:v24 libraryServicesManager:libraryServicesManager];

      [(NSMutableArray *)v11->_cloudStreamPublishJobs addObject:v27];
    }

    if (v11->_runningAsUnitTest || [(NSMutableArray *)v11->_cloudStreamPublishJobs count]|| [(NSArray *)v11->_participantsUnsharedFromCollectionShare count])
    {
      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [requestCopy recordUpdateRequest:v11];
    }
  }

  return v11;
}

- (PHCollectionShareChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v20.receiver = self;
  v20.super_class = PHCollectionShareChangeRequest;
  v8 = [(PHChangeRequest *)&v20 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
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
    placeholderForCreatedCollectionShare = [(PHCollectionShareChangeRequest *)v2 placeholderForCreatedCollectionShare];
    [(PHShareAssetChangeRequestHelper *)v7 setBackingShare:placeholderForCreatedCollectionShare];

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

+ (void)unsubscribeCollectionShares:(id)shares
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

+ (void)_expungeCollectionShares:(id)shares ignorePhotosctlExpungeOverride:(BOOL)override
{
  v36 = *MEMORY[0x1E69E9840];
  sharesCopy = shares;
  +[PHPhotoLibrary assertTransaction];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = sharesCopy;
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
        if (PLIsInternalTool() && !override)
        {
          [v18 setPhotosctlExpungeOverride:1];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }
}

+ (void)untrashCollectionShares:(id)shares
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

+ (void)trashCollectionShares:(id)shares
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

+ (id)creationRequestForOwnedCollectionShareWithTitle:(id)title subtype:(int64_t)subtype
{
  titleCopy = title;
  if ((subtype & 0xFFFFFFFFFFFFFFFELL) != 0x66)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHCollectionShareChangeRequest.m" lineNumber:180 description:@"Creation subtype should be .CollectionShareKindCPL || CollectionShareKindSharedStream"];
  }

  initForNewObject = [[PHCollectionShareChangeRequest alloc] initForNewObject];
  [initForNewObject setTitle:titleCopy];
  date = [MEMORY[0x1E695DF00] date];
  [initForNewObject setCreationDate:date];

  if (subtype == 103)
  {
    v10 = 1;
  }

  else
  {
    if (subtype != 102)
    {
      goto LABEL_8;
    }

    v10 = 2;
  }

  [initForNewObject setCollectionShareKind:v10];
LABEL_8:

  return initForNewObject;
}

+ (id)changeRequestForCollectionShare:(id)share
{
  v14 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHCollectionShareChangeRequest alloc];
    uuid = [shareCopy uuid];
    objectID = [shareCopy objectID];
    v7 = [(PHCollectionShareChangeRequest *)v4 initWithUUID:uuid objectID:objectID];

    [(PHCollectionShareChangeRequest *)v7 setOriginalCollectionShare:shareCopy];
    assetsHelper = [(PHCollectionShareChangeRequest *)v7 assetsHelper];
    [assetsHelper setBackingShare:shareCopy];

    participantsHelper = [(PHCollectionShareChangeRequest *)v7 participantsHelper];
    [participantsHelper setOriginalShare:shareCopy];
  }

  else
  {
    v10 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = shareCopy;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "Returning nil change request for collection share object: %@", &v12, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

@end