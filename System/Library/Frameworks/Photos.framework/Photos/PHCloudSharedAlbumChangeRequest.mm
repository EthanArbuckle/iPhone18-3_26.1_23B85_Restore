@interface PHCloudSharedAlbumChangeRequest
+ (id)changeRequestForCloudSharedAlbum:(id)a3;
+ (id)creationRequestForCloudSharedAlbumWithTitle:(id)a3;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)cloudNotificationsEnabled;
- (BOOL)isOwned;
- (NSString)cloudOwnerFirstName;
- (NSString)cloudOwnerFullName;
- (NSString)cloudOwnerLastName;
- (NSString)title;
- (PHCloudSharedAlbumChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHCloudSharedAlbumChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (id)placeholderForCreatedCloudSharedAlbum;
- (void)addInvitationRecordWithFirstName:(id)a3 lastName:(id)a4 fullName:(id)a5 emails:(id)a6 phones:(id)a7;
- (void)encodeToXPCDict:(id)a3;
- (void)publishBatchOfOriginalAssets:(id)a3 withBatchCommentText:(id)a4 creationOptionsPerAsset:(id)a5;
- (void)removeCloudSharedAlbumInvitationRecords:(id)a3;
- (void)resendPendingInvitationRecords:(id)a3;
- (void)setCloudMultipleContributorsEnabled:(BOOL)a3;
- (void)setCloudNotificationsEnabled:(BOOL)a3;
- (void)setCloudOwnerEmail:(id)a3;
- (void)setCloudOwnerFirstName:(id)a3;
- (void)setCloudOwnerFullName:(id)a3;
- (void)setCloudOwnerLastName:(id)a3;
- (void)setInvitationState:(int64_t)a3;
- (void)setInvitationStateLocalForInvitationRecords:(id)a3 invitationStateLocal:(id)a4;
- (void)setIsOwned:(BOOL)a3;
- (void)setIsPublic:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)stopSharing;
@end

@implementation PHCloudSharedAlbumChangeRequest

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v87 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v64 = a4;
  v9 = [(PHChangeRequest *)self helper];
  v79 = 0;
  v10 = [v9 applyMutationsToManagedObject:v8 error:&v79];
  v11 = v79;

  if (!v10)
  {
    goto LABEL_55;
  }

  v12 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [(PHChangeRequest *)self isMutated];
    v14 = [(PHChangeRequest *)self helper];
    v15 = [v14 mutations];
    *buf = 67109378;
    v84 = v13;
    v85 = 2112;
    v86 = v15;
    _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "##### isMutated %d mutations %@ will update", buf, 0x12u);
  }

  v16 = v8;
  v17 = v16;
  if (self->_cloudOwnerEmail)
  {
    [v16 setCloudOwnerEmail:?];
  }

  v18 = 0x1E69BE000uLL;
  if ([(NSMutableArray *)self->_invitationRecordGUIDsToRemove count])
  {
    [MEMORY[0x1E69BE338] cloudSharedAlbumInvitationRecordsWithGUIDs:self->_invitationRecordGUIDsToRemove inLibrary:v64];
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
  v61 = a5;
  if ([(NSMutableArray *)self->_invitationsToAdd count])
  {
    v57 = v19;
    v58 = self;
    v59 = v8;
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
          v37 = [v36 insertNewInvitationRecordIntoAlbum:v27 withFirstName:v31 lastName:v32 fullName:v33 emails:v34 phones:v35 inLibrary:v64];

          v18 = v30;
        }

        v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v71 objects:v81 count:16];
      }

      while (v25);
    }

    self = v58;
    v8 = v59;
    a5 = v61;
    v19 = v57;
  }

  if ([(NSMutableArray *)self->_invitationRecordGUIDsToUpdate count])
  {
    v38 = [*(v18 + 824) cloudSharedAlbumInvitationRecordsWithGUIDs:self->_invitationRecordGUIDsToUpdate inLibrary:v64];

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

    a5 = v61;
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
  if (a5 && (v10 & 1) == 0)
  {
    v54 = v11;
    *a5 = v11;
  }

  return v10;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE330];
  v7 = a3;
  v8 = [(PHCloudSharedAlbumChangeRequest *)self title];
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [v6 insertNewCloudSharedAlbumWithTitle:v8 lastInterestingDate:v9 intoLibrary:v7];

  v11 = [(PHChangeRequest *)self uuid];
  [v10 setUuid:v11];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHCloudSharedAlbumChangeRequest isOwned](self, "isOwned")}];
  [v10 setIsOwned:v12];

  if (a4 && !v10)
  {
    v13 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create cloud shared album"];
    v18[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *a4 = [v13 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v15];
  }

  return v10;
}

- (void)publishBatchOfOriginalAssets:(id)a3 withBatchCommentText:(id)a4 creationOptionsPerAsset:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v26 = a4;
  v29 = a4;
  v9 = a5;
  if (!self->_assetsSharingInfos)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    assetsSharingInfos = self->_assetsSharingInfos;
    self->_assetsSharingInfos = v10;
  }

  v28 = self;
  v30 = v8;
  v12 = PFMap();
  v33 = [MEMORY[0x1E695DF90] dictionary];
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
        v17 = [MEMORY[0x1E695DF90] dictionary];
        v18 = MEMORY[0x1E696AD98];
        v19 = [v9 objectForKeyedSubscript:v16];
        v20 = [v19 metadataCopyOptions];
        v21 = [v18 numberWithInt:{objc_msgSend(v20, "shouldCopyLocationData") ^ 1}];
        [v17 setObject:v21 forKeyedSubscript:@"excludeLocation"];

        v22 = MEMORY[0x1E696AD98];
        v23 = [v9 objectForKeyedSubscript:v16];
        v24 = [v23 adjustmentBakeInOptions];
        v25 = [v22 numberWithBool:{objc_msgSend(v24, "flattenLivePhotoToStillIfNeeded")}];
        [v17 setObject:v25 forKeyedSubscript:@"useStillImageOnly"];

        [v33 setObject:v17 forKeyedSubscript:v16];
      }

      v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  objc_storeStrong(&v28->_assetsToPublish, v27);
  objc_storeStrong(&v28->_assetsSharingInfos, v33);
  if (v29 && [v29 length])
  {
    objc_storeStrong(&v28->_commentText, v26);
  }

  [(PHChangeRequest *)v28 didMutate];
}

- (void)stopSharing
{
  v3 = [(PHCloudSharedAlbum *)self->_cloudSharedAlbum invitationRecords];
  [(PHCloudSharedAlbumChangeRequest *)self removeCloudSharedAlbumInvitationRecords:v3];
}

- (void)setInvitationStateLocalForInvitationRecords:(id)a3 invitationStateLocal:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          invitationRecordGUIDsToUpdate = self->_invitationRecordGUIDsToUpdate;
          if (!invitationRecordGUIDsToUpdate)
          {
            v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
            v14 = self->_invitationRecordGUIDsToUpdate;
            self->_invitationRecordGUIDsToUpdate = v13;

            invitationRecordGUIDsToUpdate = self->_invitationRecordGUIDsToUpdate;
          }

          v15 = [v11 cloudGUID];
          [(NSMutableArray *)invitationRecordGUIDsToUpdate addObject:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([(NSMutableArray *)self->_invitationRecordGUIDsToUpdate count])
  {
    self->_invitationStateToUpdate = [v16 intValue];
    [(PHChangeRequest *)self didMutate];
  }
}

- (void)removeCloudSharedAlbumInvitationRecords:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          invitationRecordGUIDsToRemove = self->_invitationRecordGUIDsToRemove;
          if (!invitationRecordGUIDsToRemove)
          {
            v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
            v12 = self->_invitationRecordGUIDsToRemove;
            self->_invitationRecordGUIDsToRemove = v11;

            invitationRecordGUIDsToRemove = self->_invitationRecordGUIDsToRemove;
          }

          v13 = [v9 cloudGUID];
          [(NSMutableArray *)invitationRecordGUIDsToRemove addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([(NSMutableArray *)self->_invitationRecordGUIDsToRemove count])
  {
    [(PHChangeRequest *)self didMutate];
  }
}

- (void)resendPendingInvitationRecords:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          pendingInvitationRecordGUIDs = self->_pendingInvitationRecordGUIDs;
          if (!pendingInvitationRecordGUIDs)
          {
            v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
            v12 = self->_pendingInvitationRecordGUIDs;
            self->_pendingInvitationRecordGUIDs = v11;

            pendingInvitationRecordGUIDs = self->_pendingInvitationRecordGUIDs;
          }

          v13 = [v9 cloudGUID];
          [(NSMutableArray *)pendingInvitationRecordGUIDs addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([(NSMutableArray *)self->_pendingInvitationRecordGUIDs count])
  {
    [(PHCloudSharedAlbumChangeRequest *)self setDidSendPendingInvitations:1];
  }
}

- (void)addInvitationRecordWithFirstName:(id)a3 lastName:(id)a4 fullName:(id)a5 emails:(id)a6 phones:(id)a7
{
  v19 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([v14 count] || objc_msgSend(v15, "count"))
  {
    if (!self->_invitationsToAdd)
    {
      v16 = [MEMORY[0x1E695DF70] array];
      invitationsToAdd = self->_invitationsToAdd;
      self->_invitationsToAdd = v16;
    }

    v18 = [MEMORY[0x1E695DF90] dictionary];
    [v18 setObject:v19 forKeyedSubscript:@"firstName"];
    [v18 setObject:v12 forKeyedSubscript:@"lastName"];
    [v18 setObject:v13 forKeyedSubscript:@"fullName"];
    [v18 setObject:v14 forKeyedSubscript:@"emails"];
    [v18 setObject:v15 forKeyedSubscript:@"phones"];
    [(NSMutableArray *)self->_invitationsToAdd addObject:v18];
    [(PHChangeRequest *)self didMutate];
  }
}

- (void)setInvitationState:(int64_t)a3
{
  self->_invitationState = a3;
  self->_didSetInvitationState = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setCloudOwnerEmail:(id)a3
{
  objc_storeStrong(&self->_cloudOwnerEmail, a3);
  self->_didSetCloudOwnerEmail = 1;

  [(PHChangeRequest *)self didMutate];
}

- (void)setCloudMultipleContributorsEnabled:(BOOL)a3
{
  self->_cloudMultipleContributorsEnabled = a3;
  self->_didSetCloudMultipleContributorsEnabled = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setIsPublic:(BOOL)a3
{
  self->_isPublic = a3;
  self->_didSetIsPublic = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setCloudNotificationsEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"cloudNotificationsEnabled"];
}

- (BOOL)cloudNotificationsEnabled
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"cloudNotificationsEnabled"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setIsOwned:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"isOwned"];
}

- (BOOL)isOwned
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"isOwned"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setCloudOwnerFullName:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"cloudOwnerFullName"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"cloudOwnerFullName"];
  }

  else
  {
    [v6 removeObjectForKey:@"cloudOwnerFullName"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"cloudOwnerFullName"];
  }
}

- (NSString)cloudOwnerFullName
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"cloudOwnerFullName"];

  return v5;
}

- (void)setCloudOwnerLastName:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"cloudOwnerLastName"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"cloudOwnerLastName"];
  }

  else
  {
    [v6 removeObjectForKey:@"cloudOwnerLastName"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"cloudOwnerLastName"];
  }
}

- (NSString)cloudOwnerLastName
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"cloudOwnerLastName"];

  return v5;
}

- (void)setCloudOwnerFirstName:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"cloudOwnerFirstName"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"cloudOwnerFirstName"];
  }

  else
  {
    [v6 removeObjectForKey:@"cloudOwnerFirstName"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"cloudOwnerFirstName"];
  }
}

- (NSString)cloudOwnerFirstName
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"cloudOwnerFirstName"];

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

- (void)encodeToXPCDict:(id)a3
{
  xdict = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 encodeToXPCDict:xdict];

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

- (PHCloudSharedAlbumChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v47.receiver = self;
  v47.super_class = PHCloudSharedAlbumChangeRequest;
  v11 = [(PHChangeRequest *)&v47 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
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
        [v9 recordUpdateRequest:v11];
      }

      v17 = PLArrayFromXPCDictionary();
      v18 = [v17 mutableCopy];
      pendingInvitationRecordGUIDs = v11->_pendingInvitationRecordGUIDs;
      v11->_pendingInvitationRecordGUIDs = v18;

      if ([(NSMutableArray *)v11->_pendingInvitationRecordGUIDs count])
      {
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [v9 recordUpdateRequest:v11];
      }

      v20 = PLArrayFromXPCDictionary();
      v21 = [v20 mutableCopy];
      invitationsToAdd = v11->_invitationsToAdd;
      v11->_invitationsToAdd = v21;

      if ([(NSMutableArray *)v11->_invitationsToAdd count])
      {
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [v9 recordUpdateRequest:v11];
      }

      v23 = PLArrayFromXPCDictionary();
      v24 = [v23 mutableCopy];
      invitationRecordGUIDsToUpdate = v11->_invitationRecordGUIDsToUpdate;
      v11->_invitationRecordGUIDsToUpdate = v24;

      if ([(NSMutableArray *)v11->_invitationRecordGUIDsToUpdate count])
      {
        v11->_invitationStateToUpdate = xpc_dictionary_get_int64(v8, "invitationStateToUpdate");
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [v9 recordUpdateRequest:v11];
      }

      v26 = xpc_dictionary_get_value(v8, "isPublic");
      v27 = v26;
      if (v26)
      {
        [(PHCloudSharedAlbumChangeRequest *)v11 setIsPublic:xpc_BOOL_get_value(v26)];
        [v9 recordUpdateRequest:v11];
      }

      v28 = xpc_dictionary_get_value(v8, "cloudMultipleContributorsEnabled");
      v29 = v28;
      if (v28)
      {
        [(PHCloudSharedAlbumChangeRequest *)v11 setCloudMultipleContributorsEnabled:xpc_BOOL_get_value(v28)];
        [v9 recordUpdateRequest:v11];
      }

      v30 = PLStringFromXPCDictionary();
      if (v30)
      {
        [(PHCloudSharedAlbumChangeRequest *)v11 setCloudOwnerEmail:v30];
        [v9 recordUpdateRequest:v11];
      }

      int64 = xpc_dictionary_get_int64(v8, "invitationState");
      if (int64)
      {
        [(PHCloudSharedAlbumChangeRequest *)v11 setInvitationState:int64];
        [v9 recordUpdateRequest:v11];
      }

      v32 = xpc_dictionary_get_value(v8, "didSendPendingInvitations");
      v33 = v32;
      if (v32)
      {
        v11->_didSendPendingInvitations = xpc_BOOL_get_value(v32);
        [v9 recordUpdateRequest:v11];
      }

      v34 = xpc_dictionary_get_value(v8, "didReportInvitationAsSpam");
      v35 = v34;
      if (v34)
      {
        v11->_didReportInvitationAsSpam = xpc_BOOL_get_value(v34);
        [v9 recordUpdateRequest:v11];
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
        [v9 recordUpdateRequest:v11];
      }

      v44 = xpc_dictionary_get_value(v8, "didPublish");
      v45 = v44;
      if (v44)
      {
        v11->_didPublish = xpc_BOOL_get_value(v44);
        [v9 recordUpdateRequest:v11];
      }
    }
  }

  return v11;
}

- (id)placeholderForCreatedCloudSharedAlbum
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (PHCloudSharedAlbumChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PHCloudSharedAlbumChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
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

+ (id)changeRequestForCloudSharedAlbum:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHCloudSharedAlbumChangeRequest alloc];
    v5 = [v3 uuid];
    v6 = [v3 objectID];
    v7 = [(PHCloudSharedAlbumChangeRequest *)v4 initWithUUID:v5 objectID:v6];

    [(PHCloudSharedAlbumChangeRequest *)v7 setCloudSharedAlbum:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)creationRequestForCloudSharedAlbumWithTitle:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[PHCloudSharedAlbumChangeRequest alloc] initForNewObject];
    [v4 setTitle:v3];

    [v4 setIsOwned:1];
    [v4 setCloudPublicURLEnabled:0];
    [v4 setCloudPublicURLEnabledLocal:0];
    [v4 setCloudMultipleContributorsEnabled:1];
    [v4 setCloudMultipleContributorsEnabledLocal:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end