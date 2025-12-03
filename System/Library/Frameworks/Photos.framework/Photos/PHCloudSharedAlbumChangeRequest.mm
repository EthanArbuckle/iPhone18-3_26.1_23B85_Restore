@interface PHCloudSharedAlbumChangeRequest
+ (id)changeRequestForCloudSharedAlbum:(id)album;
+ (id)creationRequestForCloudSharedAlbumWithTitle:(id)title;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)cloudNotificationsEnabled;
- (BOOL)isOwned;
- (NSString)cloudOwnerFirstName;
- (NSString)cloudOwnerFullName;
- (NSString)cloudOwnerLastName;
- (NSString)title;
- (PHCloudSharedAlbumChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHCloudSharedAlbumChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (id)placeholderForCreatedCloudSharedAlbum;
- (void)addInvitationRecordWithFirstName:(id)name lastName:(id)lastName fullName:(id)fullName emails:(id)emails phones:(id)phones;
- (void)encodeToXPCDict:(id)dict;
- (void)publishBatchOfOriginalAssets:(id)assets withBatchCommentText:(id)text creationOptionsPerAsset:(id)asset;
- (void)removeCloudSharedAlbumInvitationRecords:(id)records;
- (void)resendPendingInvitationRecords:(id)records;
- (void)setCloudMultipleContributorsEnabled:(BOOL)enabled;
- (void)setCloudNotificationsEnabled:(BOOL)enabled;
- (void)setCloudOwnerEmail:(id)email;
- (void)setCloudOwnerFirstName:(id)name;
- (void)setCloudOwnerFullName:(id)name;
- (void)setCloudOwnerLastName:(id)name;
- (void)setInvitationState:(int64_t)state;
- (void)setInvitationStateLocalForInvitationRecords:(id)records invitationStateLocal:(id)local;
- (void)setIsOwned:(BOOL)owned;
- (void)setIsPublic:(BOOL)public;
- (void)setTitle:(id)title;
- (void)stopSharing;
@end

@implementation PHCloudSharedAlbumChangeRequest

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v87 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  libraryCopy = library;
  helper = [(PHChangeRequest *)self helper];
  v79 = 0;
  v10 = [helper applyMutationsToManagedObject:objectCopy error:&v79];
  v11 = v79;

  if (!v10)
  {
    goto LABEL_55;
  }

  v12 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    isMutated = [(PHChangeRequest *)self isMutated];
    helper2 = [(PHChangeRequest *)self helper];
    mutations = [helper2 mutations];
    *buf = 67109378;
    v84 = isMutated;
    v85 = 2112;
    v86 = mutations;
    _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "##### isMutated %d mutations %@ will update", buf, 0x12u);
  }

  v16 = objectCopy;
  v17 = v16;
  if (self->_cloudOwnerEmail)
  {
    [v16 setCloudOwnerEmail:?];
  }

  v18 = 0x1E69BE000uLL;
  if ([(NSMutableArray *)self->_invitationRecordGUIDsToRemove count])
  {
    [MEMORY[0x1E69BE338] cloudSharedAlbumInvitationRecordsWithGUIDs:self->_invitationRecordGUIDsToRemove inLibrary:libraryCopy];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v19 = v78 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v75 objects:v82 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v76;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v76 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v17 userDeleteSubscriberRecord:*(*(&v75 + 1) + 8 * i)];
        }

        v21 = [v19 countByEnumeratingWithState:&v75 objects:v82 count:16];
      }

      while (v21);
    }
  }

  else
  {
    v19 = 0;
  }

  v60 = v11;
  errorCopy = error;
  if ([(NSMutableArray *)self->_invitationsToAdd count])
  {
    v57 = v19;
    selfCopy = self;
    v59 = objectCopy;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = self->_invitationsToAdd;
    v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (v24)
    {
      v25 = v24;
      v63 = *v72;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          v27 = v17;
          if (*v72 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v71 + 1) + 8 * j);
          v29 = *(v18 + 824);
          [v28 objectForKeyedSubscript:@"firstName"];
          v31 = v30 = v18;
          v32 = [v28 objectForKeyedSubscript:@"lastName"];
          v33 = [v28 objectForKeyedSubscript:@"fullName"];
          v34 = [v28 objectForKeyedSubscript:@"emails"];
          v35 = [v28 objectForKeyedSubscript:@"phones"];
          v36 = v29;
          v17 = v27;
          v37 = [v36 insertNewInvitationRecordIntoAlbum:v27 withFirstName:v31 lastName:v32 fullName:v33 emails:v34 phones:v35 inLibrary:libraryCopy];

          v18 = v30;
        }

        v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v71 objects:v81 count:16];
      }

      while (v25);
    }

    self = selfCopy;
    objectCopy = v59;
    error = errorCopy;
    v19 = v57;
  }

  if ([(NSMutableArray *)self->_invitationRecordGUIDsToUpdate count])
  {
    v38 = [*(v18 + 824) cloudSharedAlbumInvitationRecordsWithGUIDs:self->_invitationRecordGUIDsToUpdate inLibrary:libraryCopy];

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v19 = v38;
    v39 = [v19 countByEnumeratingWithState:&v67 objects:v80 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v68;
      do
      {
        v42 = v19;
        for (k = 0; k != v40; ++k)
        {
          if (*v68 != v41)
          {
            objc_enumerationMutation(v42);
          }

          v44 = *(*(&v67 + 1) + 8 * k);
          v45 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_invitationStateToUpdate];
          [v44 setInvitationStateLocal:v45];
        }

        v19 = v42;
        v40 = [v42 countByEnumeratingWithState:&v67 objects:v80 count:16];
      }

      while (v40);
    }

    error = errorCopy;
  }

  if (self->_didSetIsPublic)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPublic];
    [v17 setCloudPublicURLEnabledLocal:v46];

    [MEMORY[0x1E69BE6A8] updateCloudSharedAlbumPublicURLStateOnServer:v17];
  }

  if (self->_didSetCloudMultipleContributorsEnabled)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithBool:self->_cloudMultipleContributorsEnabled];
    [v17 setCloudMultipleContributorsEnabledLocal:v47];

    [MEMORY[0x1E69BE6A8] updateCloudSharedAlbumMultipleContributorsStateOnServer:v17];
  }

  if (self->_didSetInvitationState)
  {
    invitationState = self->_invitationState;
    if (invitationState == 4)
    {
      [MEMORY[0x1E69BE6A8] declinePendingInvitationForAlbum:v17];
    }

    else if (invitationState == 2)
    {
      v66 = v60;
      v49 = [MEMORY[0x1E69BE6A8] canAcceptPendingInvitationForAlbum:v17 error:&v66];
      v50 = v66;

      if (v49)
      {
        [MEMORY[0x1E69BE6A8] acceptPendingInvitationForAlbum:v17 completionHandler:0];
      }

      goto LABEL_45;
    }
  }

  v50 = v60;
LABEL_45:
  if (self->_didSendPendingInvitations)
  {
    [MEMORY[0x1E69BE6A8] sendPendingInvitationsForAlbum:v17 resendInvitationGUIDs:self->_pendingInvitationRecordGUIDs];
  }

  if (self->_didReportInvitationAsSpam)
  {
    [MEMORY[0x1E69BE6A8] markPendingInvitationAsSpamForAlbum:v17 completionHandler:0];
  }

  assetsToPublish = self->_assetsToPublish;
  if (assetsToPublish)
  {
    commentText = self->_commentText;
    assetsSharingInfos = self->_assetsSharingInfos;
    v65 = v50;
    LOBYTE(v56) = 0;
    LOBYTE(v10) = [MEMORY[0x1E69BE6A8] prepareToEnqueueBatchOfOriginalAssetUUIDs:assetsToPublish withBatchCommentText:commentText assetsSharingInfos:assetsSharingInfos customExportsInfo:0 andTrimmedVideoPathInfo:0 sharedAlbum:v17 isNewAlbum:v56 error:&v65];
    v11 = v65;
  }

  else
  {
    LOBYTE(v10) = 1;
    v11 = v50;
  }

  if (self->_didPublish)
  {
    [MEMORY[0x1E69BE6A8] publishCloudSharedAlbumToServer:v17];
  }

LABEL_55:
  if (error && (v10 & 1) == 0)
  {
    v54 = v11;
    *error = v11;
  }

  return v10;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE330];
  libraryCopy = library;
  title = [(PHCloudSharedAlbumChangeRequest *)self title];
  date = [MEMORY[0x1E695DF00] date];
  v10 = [v6 insertNewCloudSharedAlbumWithTitle:title lastInterestingDate:date intoLibrary:libraryCopy];

  uuid = [(PHChangeRequest *)self uuid];
  [v10 setUuid:uuid];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHCloudSharedAlbumChangeRequest isOwned](self, "isOwned")}];
  [v10 setIsOwned:v12];

  if (error && !v10)
  {
    v13 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create cloud shared album"];
    v18[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = [v13 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v15];
  }

  return v10;
}

- (void)publishBatchOfOriginalAssets:(id)assets withBatchCommentText:(id)text creationOptionsPerAsset:(id)asset
{
  v39 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  textCopy = text;
  textCopy2 = text;
  assetCopy = asset;
  if (!self->_assetsSharingInfos)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    assetsSharingInfos = self->_assetsSharingInfos;
    self->_assetsSharingInfos = dictionary;
  }

  selfCopy = self;
  v30 = assetsCopy;
  v12 = PFMap();
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = v12;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        dictionary3 = [MEMORY[0x1E695DF90] dictionary];
        v18 = MEMORY[0x1E696AD98];
        v19 = [assetCopy objectForKeyedSubscript:v16];
        metadataCopyOptions = [v19 metadataCopyOptions];
        v21 = [v18 numberWithInt:{objc_msgSend(metadataCopyOptions, "shouldCopyLocationData") ^ 1}];
        [dictionary3 setObject:v21 forKeyedSubscript:@"excludeLocation"];

        v22 = MEMORY[0x1E696AD98];
        v23 = [assetCopy objectForKeyedSubscript:v16];
        adjustmentBakeInOptions = [v23 adjustmentBakeInOptions];
        v25 = [v22 numberWithBool:{objc_msgSend(adjustmentBakeInOptions, "flattenLivePhotoToStillIfNeeded")}];
        [dictionary3 setObject:v25 forKeyedSubscript:@"useStillImageOnly"];

        [dictionary2 setObject:dictionary3 forKeyedSubscript:v16];
      }

      v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  objc_storeStrong(&selfCopy->_assetsToPublish, v27);
  objc_storeStrong(&selfCopy->_assetsSharingInfos, dictionary2);
  if (textCopy2 && [textCopy2 length])
  {
    objc_storeStrong(&selfCopy->_commentText, textCopy);
  }

  [(PHChangeRequest *)selfCopy didMutate];
}

- (void)stopSharing
{
  invitationRecords = [(PHCloudSharedAlbum *)self->_cloudSharedAlbum invitationRecords];
  [(PHCloudSharedAlbumChangeRequest *)self removeCloudSharedAlbumInvitationRecords:invitationRecords];
}

- (void)setInvitationStateLocalForInvitationRecords:(id)records invitationStateLocal:(id)local
{
  v22 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  localCopy = local;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [recordsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(recordsCopy);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          invitationRecordGUIDsToUpdate = self->_invitationRecordGUIDsToUpdate;
          if (!invitationRecordGUIDsToUpdate)
          {
            v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(recordsCopy, "count")}];
            v14 = self->_invitationRecordGUIDsToUpdate;
            self->_invitationRecordGUIDsToUpdate = v13;

            invitationRecordGUIDsToUpdate = self->_invitationRecordGUIDsToUpdate;
          }

          cloudGUID = [v11 cloudGUID];
          [(NSMutableArray *)invitationRecordGUIDsToUpdate addObject:cloudGUID];
        }
      }

      v8 = [recordsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([(NSMutableArray *)self->_invitationRecordGUIDsToUpdate count])
  {
    self->_invitationStateToUpdate = [localCopy intValue];
    [(PHChangeRequest *)self didMutate];
  }
}

- (void)removeCloudSharedAlbumInvitationRecords:(id)records
{
  v19 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [recordsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(recordsCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          invitationRecordGUIDsToRemove = self->_invitationRecordGUIDsToRemove;
          if (!invitationRecordGUIDsToRemove)
          {
            v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(recordsCopy, "count")}];
            v12 = self->_invitationRecordGUIDsToRemove;
            self->_invitationRecordGUIDsToRemove = v11;

            invitationRecordGUIDsToRemove = self->_invitationRecordGUIDsToRemove;
          }

          cloudGUID = [v9 cloudGUID];
          [(NSMutableArray *)invitationRecordGUIDsToRemove addObject:cloudGUID];
        }
      }

      v6 = [recordsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([(NSMutableArray *)self->_invitationRecordGUIDsToRemove count])
  {
    [(PHChangeRequest *)self didMutate];
  }
}

- (void)resendPendingInvitationRecords:(id)records
{
  v19 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [recordsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(recordsCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          pendingInvitationRecordGUIDs = self->_pendingInvitationRecordGUIDs;
          if (!pendingInvitationRecordGUIDs)
          {
            v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(recordsCopy, "count")}];
            v12 = self->_pendingInvitationRecordGUIDs;
            self->_pendingInvitationRecordGUIDs = v11;

            pendingInvitationRecordGUIDs = self->_pendingInvitationRecordGUIDs;
          }

          cloudGUID = [v9 cloudGUID];
          [(NSMutableArray *)pendingInvitationRecordGUIDs addObject:cloudGUID];
        }
      }

      v6 = [recordsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([(NSMutableArray *)self->_pendingInvitationRecordGUIDs count])
  {
    [(PHCloudSharedAlbumChangeRequest *)self setDidSendPendingInvitations:1];
  }
}

- (void)addInvitationRecordWithFirstName:(id)name lastName:(id)lastName fullName:(id)fullName emails:(id)emails phones:(id)phones
{
  nameCopy = name;
  lastNameCopy = lastName;
  fullNameCopy = fullName;
  emailsCopy = emails;
  phonesCopy = phones;
  if ([emailsCopy count] || objc_msgSend(phonesCopy, "count"))
  {
    if (!self->_invitationsToAdd)
    {
      array = [MEMORY[0x1E695DF70] array];
      invitationsToAdd = self->_invitationsToAdd;
      self->_invitationsToAdd = array;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:nameCopy forKeyedSubscript:@"firstName"];
    [dictionary setObject:lastNameCopy forKeyedSubscript:@"lastName"];
    [dictionary setObject:fullNameCopy forKeyedSubscript:@"fullName"];
    [dictionary setObject:emailsCopy forKeyedSubscript:@"emails"];
    [dictionary setObject:phonesCopy forKeyedSubscript:@"phones"];
    [(NSMutableArray *)self->_invitationsToAdd addObject:dictionary];
    [(PHChangeRequest *)self didMutate];
  }
}

- (void)setInvitationState:(int64_t)state
{
  self->_invitationState = state;
  self->_didSetInvitationState = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setCloudOwnerEmail:(id)email
{
  objc_storeStrong(&self->_cloudOwnerEmail, email);
  self->_didSetCloudOwnerEmail = 1;

  [(PHChangeRequest *)self didMutate];
}

- (void)setCloudMultipleContributorsEnabled:(BOOL)enabled
{
  self->_cloudMultipleContributorsEnabled = enabled;
  self->_didSetCloudMultipleContributorsEnabled = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setIsPublic:(BOOL)public
{
  self->_isPublic = public;
  self->_didSetIsPublic = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setCloudNotificationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"cloudNotificationsEnabled"];
}

- (BOOL)cloudNotificationsEnabled
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"cloudNotificationsEnabled"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setIsOwned:(BOOL)owned
{
  ownedCopy = owned;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:ownedCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"isOwned"];
}

- (BOOL)isOwned
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"isOwned"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setCloudOwnerFullName:(id)name
{
  nameCopy = name;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (nameCopy)
  {
    [mutations setObject:nameCopy forKeyedSubscript:@"cloudOwnerFullName"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"cloudOwnerFullName"];
  }

  else
  {
    [mutations removeObjectForKey:@"cloudOwnerFullName"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"cloudOwnerFullName"];
  }
}

- (NSString)cloudOwnerFullName
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"cloudOwnerFullName"];

  return v5;
}

- (void)setCloudOwnerLastName:(id)name
{
  nameCopy = name;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (nameCopy)
  {
    [mutations setObject:nameCopy forKeyedSubscript:@"cloudOwnerLastName"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"cloudOwnerLastName"];
  }

  else
  {
    [mutations removeObjectForKey:@"cloudOwnerLastName"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"cloudOwnerLastName"];
  }
}

- (NSString)cloudOwnerLastName
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"cloudOwnerLastName"];

  return v5;
}

- (void)setCloudOwnerFirstName:(id)name
{
  nameCopy = name;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (nameCopy)
  {
    [mutations setObject:nameCopy forKeyedSubscript:@"cloudOwnerFirstName"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"cloudOwnerFirstName"];
  }

  else
  {
    [mutations removeObjectForKey:@"cloudOwnerFirstName"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"cloudOwnerFirstName"];
  }
}

- (NSString)cloudOwnerFirstName
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"cloudOwnerFirstName"];

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

- (void)encodeToXPCDict:(id)dict
{
  xdict = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:xdict];

  if ([(NSMutableArray *)self->_invitationRecordGUIDsToRemove count])
  {
    PLXPCDictionarySetArray();
  }

  if ([(NSMutableArray *)self->_pendingInvitationRecordGUIDs count])
  {
    PLXPCDictionarySetArray();
  }

  if ([(NSMutableArray *)self->_invitationsToAdd count])
  {
    PLXPCDictionarySetArray();
  }

  if ([(NSMutableArray *)self->_invitationRecordGUIDsToUpdate count])
  {
    PLXPCDictionarySetArray();
    xpc_dictionary_set_int64(xdict, "invitationStateToUpdate", self->_invitationStateToUpdate);
  }

  if (self->_didSetIsPublic)
  {
    xpc_dictionary_set_BOOL(xdict, "isPublic", self->_isPublic);
  }

  if (self->_didSetCloudMultipleContributorsEnabled)
  {
    xpc_dictionary_set_BOOL(xdict, "cloudMultipleContributorsEnabled", self->_cloudMultipleContributorsEnabled);
  }

  if (self->_didSetCloudOwnerEmail)
  {
    PLXPCDictionarySetString();
  }

  if (self->_didSetInvitationState)
  {
    xpc_dictionary_set_int64(xdict, "invitationState", self->_invitationState);
  }

  if (self->_didSendPendingInvitations)
  {
    xpc_dictionary_set_BOOL(xdict, "didSendPendingInvitations", 1);
  }

  if (self->_didReportInvitationAsSpam)
  {
    xpc_dictionary_set_BOOL(xdict, "didReportInvitationAsSpam", 1);
  }

  if ([(NSArray *)self->_assetsToPublish count])
  {
    PLXPCDictionarySetArray();
  }

  if ([(NSDictionary *)self->_assetsSharingInfos count])
  {
    PLXPCDictionarySetDictionary();
  }

  if (self->_commentText)
  {
    PLXPCDictionarySetString();
  }

  v5 = xdict;
  if (self->_didPublish)
  {
    xpc_dictionary_set_BOOL(xdict, "didPublish", 1);
    v5 = xdict;
  }
}

- (PHCloudSharedAlbumChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v47.receiver = self;
  v47.super_class = PHCloudSharedAlbumChangeRequest;
  v11 = [(PHChangeRequest *)&v47 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = PLArrayFromXPCDictionary();
      v15 = [v14 mutableCopy];
      invitationRecordGUIDsToRemove = v11->_invitationRecordGUIDsToRemove;
      v11->_invitationRecordGUIDsToRemove = v15;

      if ([(NSMutableArray *)v11->_invitationRecordGUIDsToRemove count])
      {
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [requestCopy recordUpdateRequest:v11];
      }

      v17 = PLArrayFromXPCDictionary();
      v18 = [v17 mutableCopy];
      pendingInvitationRecordGUIDs = v11->_pendingInvitationRecordGUIDs;
      v11->_pendingInvitationRecordGUIDs = v18;

      if ([(NSMutableArray *)v11->_pendingInvitationRecordGUIDs count])
      {
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [requestCopy recordUpdateRequest:v11];
      }

      v20 = PLArrayFromXPCDictionary();
      v21 = [v20 mutableCopy];
      invitationsToAdd = v11->_invitationsToAdd;
      v11->_invitationsToAdd = v21;

      if ([(NSMutableArray *)v11->_invitationsToAdd count])
      {
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [requestCopy recordUpdateRequest:v11];
      }

      v23 = PLArrayFromXPCDictionary();
      v24 = [v23 mutableCopy];
      invitationRecordGUIDsToUpdate = v11->_invitationRecordGUIDsToUpdate;
      v11->_invitationRecordGUIDsToUpdate = v24;

      if ([(NSMutableArray *)v11->_invitationRecordGUIDsToUpdate count])
      {
        v11->_invitationStateToUpdate = xpc_dictionary_get_int64(dictCopy, "invitationStateToUpdate");
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [requestCopy recordUpdateRequest:v11];
      }

      v26 = xpc_dictionary_get_value(dictCopy, "isPublic");
      v27 = v26;
      if (v26)
      {
        [(PHCloudSharedAlbumChangeRequest *)v11 setIsPublic:xpc_BOOL_get_value(v26)];
        [requestCopy recordUpdateRequest:v11];
      }

      v28 = xpc_dictionary_get_value(dictCopy, "cloudMultipleContributorsEnabled");
      v29 = v28;
      if (v28)
      {
        [(PHCloudSharedAlbumChangeRequest *)v11 setCloudMultipleContributorsEnabled:xpc_BOOL_get_value(v28)];
        [requestCopy recordUpdateRequest:v11];
      }

      v30 = PLStringFromXPCDictionary();
      if (v30)
      {
        [(PHCloudSharedAlbumChangeRequest *)v11 setCloudOwnerEmail:v30];
        [requestCopy recordUpdateRequest:v11];
      }

      int64 = xpc_dictionary_get_int64(dictCopy, "invitationState");
      if (int64)
      {
        [(PHCloudSharedAlbumChangeRequest *)v11 setInvitationState:int64];
        [requestCopy recordUpdateRequest:v11];
      }

      v32 = xpc_dictionary_get_value(dictCopy, "didSendPendingInvitations");
      v33 = v32;
      if (v32)
      {
        v11->_didSendPendingInvitations = xpc_BOOL_get_value(v32);
        [requestCopy recordUpdateRequest:v11];
      }

      v34 = xpc_dictionary_get_value(dictCopy, "didReportInvitationAsSpam");
      v35 = v34;
      if (v34)
      {
        v11->_didReportInvitationAsSpam = xpc_BOOL_get_value(v34);
        [requestCopy recordUpdateRequest:v11];
      }

      v36 = PLArrayFromXPCDictionary();
      v37 = [v36 mutableCopy];
      assetsToPublish = v11->_assetsToPublish;
      v11->_assetsToPublish = v37;

      if ([(NSArray *)v11->_assetsToPublish count])
      {
        v39 = PLStringFromXPCDictionary();
        commentText = v11->_commentText;
        v11->_commentText = v39;

        v41 = PLDictionaryFromXPCDictionary();
        v42 = [v41 mutableCopy];
        assetsSharingInfos = v11->_assetsSharingInfos;
        v11->_assetsSharingInfos = v42;

        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [requestCopy recordUpdateRequest:v11];
      }

      v44 = xpc_dictionary_get_value(dictCopy, "didPublish");
      v45 = v44;
      if (v44)
      {
        v11->_didPublish = xpc_BOOL_get_value(v44);
        [requestCopy recordUpdateRequest:v11];
      }
    }
  }

  return v11;
}

- (id)placeholderForCreatedCloudSharedAlbum
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (PHCloudSharedAlbumChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = PHCloudSharedAlbumChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (id)initForNewObject
{
  v6.receiver = self;
  v6.super_class = PHCloudSharedAlbumChangeRequest;
  v2 = [(PHChangeRequest *)&v6 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;
  }

  return v2;
}

+ (id)changeRequestForCloudSharedAlbum:(id)album
{
  albumCopy = album;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHCloudSharedAlbumChangeRequest alloc];
    uuid = [albumCopy uuid];
    objectID = [albumCopy objectID];
    v7 = [(PHCloudSharedAlbumChangeRequest *)v4 initWithUUID:uuid objectID:objectID];

    [(PHCloudSharedAlbumChangeRequest *)v7 setCloudSharedAlbum:albumCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)creationRequestForCloudSharedAlbumWithTitle:(id)title
{
  if (title)
  {
    titleCopy = title;
    initForNewObject = [[PHCloudSharedAlbumChangeRequest alloc] initForNewObject];
    [initForNewObject setTitle:titleCopy];

    [initForNewObject setIsOwned:1];
    [initForNewObject setCloudPublicURLEnabled:0];
    [initForNewObject setCloudPublicURLEnabledLocal:0];
    [initForNewObject setCloudMultipleContributorsEnabled:1];
    [initForNewObject setCloudMultipleContributorsEnabledLocal:1];
  }

  else
  {
    initForNewObject = 0;
  }

  return initForNewObject;
}

@end