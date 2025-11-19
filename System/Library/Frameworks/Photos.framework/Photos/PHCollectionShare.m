@interface PHCollectionShare
+ (id)entityKeyMap;
+ (id)fetchCollectionSharesWithScopeIdentifiers:(id)a3 options:(id)a4;
+ (id)localIdentifierWithUUID:(id)a3;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
+ (void)fetchCollectionShareFromShareURL:(id)a3 ignoreExistingShare:(BOOL)a4 photoLibrary:(id)a5 completionHandler:(id)a6;
- (BOOL)canPerformEditOperation:(int64_t)a3;
- (PHCollectionShare)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (void)declineWithCompletion:(id)a3;
- (void)reportWithCompletion:(id)a3;
- (void)sendInvitationsForParticipants:(id)a3 completion:(id)a4;
@end

@implementation PHCollectionShare

- (void)sendInvitationsForParticipants:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PHObject *)self uuid];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v15 uuid];

        if (v16)
        {
          v17 = [v15 uuid];
          [v9 addObject:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v18 = [(PHObject *)self photoLibrary];
  v19 = [v18 assetsdClient];

  v20 = [v19 cloudInternalClient];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __63__PHCollectionShare_sendInvitationsForParticipants_completion___block_invoke;
  v22[3] = &unk_1E75AAA50;
  v23 = v7;
  v21 = v7;
  [v20 sendInvitationsForCollectionShareWithUUID:v8 participantUUIDs:v9 completionHandler:v22];
}

void __63__PHCollectionShare_sendInvitationsForParticipants_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [PHShare PHShareErrorFromError:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)reportWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PHObject *)self uuid];
  v6 = [(PHObject *)self photoLibrary];
  v7 = [v6 assetsdClient];

  v8 = [v7 cloudInternalClient];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__PHCollectionShare_reportWithCompletion___block_invoke;
  v10[3] = &unk_1E75AAA50;
  v11 = v4;
  v9 = v4;
  [v8 reportInvitationAsSpamForCollectionShareWithUUID:v5 completionHandler:v10];
}

void __42__PHCollectionShare_reportWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [PHShare PHShareErrorFromError:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)declineWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PHObject *)self uuid];
  v6 = [(PHObject *)self photoLibrary];
  v7 = [v6 assetsdClient];

  v8 = [v7 cloudInternalClient];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__PHCollectionShare_declineWithCompletion___block_invoke;
  v10[3] = &unk_1E75AAA50;
  v11 = v4;
  v9 = v4;
  [v8 declineCollectionShareWithUUID:v5 completionHandler:v10];
}

void __43__PHCollectionShare_declineWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [PHShare PHShareErrorFromError:a2];
  (*(v2 + 16))(v2, v3);
}

- (PHCollectionShare)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v51.receiver = self;
  v51.super_class = PHCollectionShare;
  v9 = [(PHAssetCollection *)&v51 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"title"];
    title = v9->_title;
    v9->_title = v10;

    v12 = [v8 objectForKeyedSubscript:@"creationDate"];
    creationDate = v9->_creationDate;
    v9->_creationDate = v12;

    v14 = [v8 objectForKeyedSubscript:@"ckShareData"];
    ckShareData = v9->_ckShareData;
    v9->_ckShareData = v14;

    v16 = [v8 objectForKeyedSubscript:@"status"];
    v9->_status = [v16 integerValue];

    v17 = [v8 objectForKeyedSubscript:@"shareURL"];
    shareURL = v9->_shareURL;
    v9->_shareURL = v17;

    v19 = [v8 objectForKeyedSubscript:@"assetCount"];
    v9->_assetCount = [v19 unsignedIntegerValue];

    v20 = [v8 objectForKeyedSubscript:@"photosCount"];
    v9->_photosCount = [v20 unsignedIntegerValue];

    v21 = [v8 objectForKeyedSubscript:@"videosCount"];
    v9->_videosCount = [v21 unsignedIntegerValue];

    v22 = [v8 objectForKeyedSubscript:@"cloudPhotoCount"];
    v9->_cloudPhotoCount = [v22 unsignedIntegerValue];

    v23 = [v8 objectForKeyedSubscript:@"cloudVideoCount"];
    v9->_cloudVideoCount = [v23 unsignedIntegerValue];

    v24 = [v8 objectForKeyedSubscript:@"scopeIdentifier"];
    scopeIdentifier = v9->_scopeIdentifier;
    v9->_scopeIdentifier = v24;

    v26 = [v8 objectForKeyedSubscript:@"expiryDate"];
    expiryDate = v9->_expiryDate;
    v9->_expiryDate = v26;

    v28 = [v8 objectForKeyedSubscript:@"trashedState"];
    v9->_trashedState = [v28 unsignedIntegerValue];

    v29 = [v8 objectForKeyedSubscript:@"localPublishState"];
    v9->_publishState = [v29 unsignedIntegerValue];

    v30 = [v8 objectForKeyedSubscript:@"publicPermission"];
    v9->_publicPermission = [v30 unsignedIntegerValue];

    v31 = [v8 objectForKeyedSubscript:@"cloudSubscriptionDate"];
    cloudSubscriptionDate = v9->_cloudSubscriptionDate;
    v9->_cloudSubscriptionDate = v31;

    v33 = [v8 objectForKeyedSubscript:@"unseenContentState"];
    v9->_unseenContentState = [v33 unsignedIntegerValue];

    v34 = [v8 objectForKeyedSubscript:@"unseenAssetsCount"];
    v9->_unseenAssetsCount = [v34 unsignedIntegerValue];

    v35 = [v8 objectForKeyedSubscript:@"notificationState"];
    v9->_notificationState = [v35 unsignedIntegerValue];

    v36 = [v8 objectForKeyedSubscript:@"publicURLState"];
    v9->_publicURLState = [v36 unsignedIntegerValue];

    v37 = [v8 objectForKeyedSubscript:@"lastModifiedDate"];
    lastModifiedDate = v9->_lastModifiedDate;
    v9->_lastModifiedDate = v37;

    v39 = [v8 objectForKeyedSubscript:@"cloudPersonID"];
    cloudPersonID = v9->_cloudPersonID;
    v9->_cloudPersonID = v39;

    v41 = [v8 objectForKeyedSubscript:@"creationType"];
    v9->_creationType = [v41 unsignedIntegerValue];

    v42 = [v8 objectForKeyedSubscript:@"startDate"];
    startDate = v9->super._startDate;
    v9->super._startDate = v42;

    v44 = [v8 objectForKeyedSubscript:@"endDate"];
    endDate = v9->super._endDate;
    v9->super._endDate = v44;

    v46 = [v8 objectForKeyedSubscript:@"collectionShareCurrentUserContributionState"];
    v9->_currentUserContributionEnabled = [v46 unsignedIntegerValue] == 1;

    v47 = [v8 objectForKeyedSubscript:@"collectionShareKind"];
    v48 = [v47 unsignedIntegerValue];

    if (![MEMORY[0x1E69BF2F0] clientIsAllowedToFetchCollectionShares])
    {
      v9->super._assetCollectionType = 1;
      v49 = 101;
      goto LABEL_8;
    }

    v9->super._assetCollectionType = 12;
    if (v48 == 1)
    {
      v49 = 103;
      goto LABEL_8;
    }

    if (v48 == 2)
    {
      v49 = 102;
LABEL_8:
      v9->super._assetCollectionSubtype = v49;
    }
  }

  return v9;
}

- (BOOL)canPerformEditOperation:(int64_t)a3
{
  if ([MEMORY[0x1E69BF2F0] isEntitledForPhotoKit] && !-[PHCollection isDeleted](self, "isDeleted"))
  {
    creationType = self->_creationType;
    v8 = [(PHCollectionShare *)self status];
    if (creationType == 1)
    {
      return a3 == 6 && v8 == 1 || (a3 & 0xFFFFFFFFFFFFFFFDLL) == 1;
    }

    else if (v8 == 1)
    {
      return a3 != 5 && a3 != 2;
    }

    else
    {
      v12 = [(PHCollectionShare *)self currentUserContributionEnabled];
      v5 = a3 == 6 || a3 == 1;
      v14 = 0x4Au >> a3;
      if (a3 >= 7)
      {
        LOBYTE(v14) = 0;
      }

      if (v12)
      {
        return v14;
      }
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

+ (void)fetchCollectionShareFromShareURL:(id)a3 ignoreExistingShare:(BOOL)a4 photoLibrary:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PHCollectionShare.m" lineNumber:315 description:@"Valid PHPhotoLibrary must be specified"];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __105__PHCollectionShare_fetchCollectionShareFromShareURL_ignoreExistingShare_photoLibrary_completionHandler___block_invoke;
  v17[3] = &unk_1E75A8558;
  v18 = v12;
  v19 = v13;
  v14 = v12;
  v15 = v13;
  [PHShare fetchShareFromShareURL:v11 ignoreExistingShare:v8 photoLibrary:v14 completionHandler:v17];
}

void __105__PHCollectionShare_fetchCollectionShareFromShareURL_ignoreExistingShare_photoLibrary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    v9 = [PHShare PHShareErrorFromError:v6];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    v9 = [*(a1 + 32) librarySpecificFetchOptions];
    [v9 setIncludeExitingShares:1];
    [v9 setIncludeExpiredShares:1];
    [v9 setIncludeTrashedShares:1];
    [v9 setIncludePendingShares:1];
    v18[0] = v5;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v11 = [(PHAssetCollection *)PHCollectionShare fetchAssetCollectionsWithType:12 localIdentifiers:v10 options:v9];
    v12 = [v11 firstObject];

    if (v12)
    {
      v7 = 0;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to fetch libraryScope with UUID %@", v5];
      v17 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v7 = [v13 errorWithDomain:@"PHPhotosErrorDomain" code:6003 userInfo:v15];
    }

    (*(*(a1 + 40) + 16))();
  }
}

+ (id)fetchCollectionSharesWithScopeIdentifiers:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = [v5 predicateWithFormat:@"%K IN %@", @"scopeIdentifier", a3];
  [v6 setPredicate:v7];

  v8 = [PHAssetCollection fetchAssetCollectionsWithType:12 subtype:0x7FFFFFFFFFFFFFFFLL options:v6];

  return v8;
}

+ (id)localIdentifierWithUUID:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 identifierCode];
  v7 = [v4 stringWithFormat:@"%@/L0/%@", v5, v6];

  return v7;
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PHCollectionShare_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transformValueExpression_forKeyPath__onceToken_27815 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_27815, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_27816 containsObject:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __57__PHCollectionShare_transformValueExpression_forKeyPath___block_invoke()
{
  v4[31] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"title";
  v4[1] = @"localizedTitle";
  v4[2] = @"creationDate";
  v4[3] = @"ckShareData";
  v4[4] = @"uuid";
  v4[5] = @"status";
  v4[6] = @"shareURL";
  v4[7] = @"assetCount";
  v4[8] = @"estimatedAssetCount";
  v4[9] = @"photosCount";
  v4[10] = @"videosCount";
  v4[11] = @"cloudPhotoCount";
  v4[12] = @"cloudVideoCount";
  v4[13] = @"scopeIdentifier";
  v4[14] = @"expiryDate";
  v4[15] = @"trashedState";
  v4[16] = @"publishState";
  v4[17] = @"cloudSubscriptionDate";
  v4[18] = @"unseenContentState";
  v4[19] = @"unseenAssetsCount";
  v4[20] = @"notificationState";
  v4[21] = @"publicPermission";
  v4[22] = @"publicURLState";
  v4[23] = @"lastModifiedDate";
  v4[24] = @"cloudPersonID";
  v4[25] = @"creationType";
  v4[26] = @"customSortKey";
  v4[27] = @"customSortAscending";
  v4[28] = @"startDate";
  v4[29] = @"endDate";
  v4[30] = @"currentUserContributionEnabled";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:31];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_27816;
  transformValueExpression_forKeyPath___passThroughSet_27816 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_27840;

  return v2;
}

void __33__PHCollectionShare_entityKeyMap__block_invoke()
{
  v57[26] = *MEMORY[0x1E69E9840];
  v23 = [PHEntityKeyMap alloc];
  v55[1] = @"title";
  v56[0] = @"title";
  v55[0] = @"localizedTitle";
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v57[0] = v29;
  v56[1] = @"creationDate";
  v54 = @"creationDate";
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  v57[1] = v28;
  v56[2] = @"ckShareData";
  v53 = @"ckShareData";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v57[2] = v27;
  v56[3] = @"uuid";
  v52 = @"uuid";
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  v57[3] = v26;
  v56[4] = @"status";
  v51 = @"status";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  v57[4] = v25;
  v56[5] = @"assetCount";
  v50[0] = @"assetCount";
  v50[1] = @"estimatedAssetCount";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v57[5] = v24;
  v56[6] = @"photosCount";
  v49 = @"photosCount";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v57[6] = v22;
  v56[7] = @"videosCount";
  v48 = @"videosCount";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v57[7] = v21;
  v56[8] = @"cloudPhotoCount";
  v47 = @"cloudPhotoCount";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v57[8] = v20;
  v56[9] = @"cloudVideoCount";
  v46 = @"cloudVideoCount";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v57[9] = v19;
  v56[10] = @"shareURL";
  v45 = @"shareURL";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v57[10] = v18;
  v56[11] = @"cloudSubscriptionDate";
  v44 = @"cloudSubscriptionDate";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v57[11] = v17;
  v56[12] = @"unseenContentState";
  v43 = @"unseenContentState";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v57[12] = v16;
  v56[13] = @"unseenAssetsCount";
  v42 = @"unseenAssetsCount";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v57[13] = v15;
  v56[14] = @"notificationState";
  v41 = @"notificationState";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v57[14] = v14;
  v56[15] = @"publicPermission";
  v40 = @"publicPermission";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v57[15] = v13;
  v56[16] = @"publicURLState";
  v39 = @"publicURLState";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v57[16] = v12;
  v56[17] = @"lastModifiedDate";
  v38 = @"lastModifiedDate";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v57[17] = v0;
  v56[18] = @"cloudPersonID";
  v37 = @"cloudPersonID";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v57[18] = v1;
  v56[19] = @"scopeIdentifier";
  v36 = @"scopeIdentifier";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v57[19] = v2;
  v56[20] = @"creationType";
  v35 = @"creationType";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v57[20] = v3;
  v56[21] = @"customSortKey";
  v34 = @"customSortKey";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v57[21] = v4;
  v56[22] = @"customSortAscending";
  v33 = @"customSortAscending";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v57[22] = v5;
  v56[23] = @"startDate";
  v32 = @"startDate";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v57[23] = v6;
  v56[24] = @"endDate";
  v31 = @"endDate";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v57[24] = v7;
  v56[25] = @"collectionShareCurrentUserContributionState";
  v30 = @"currentUserContributionEnabled";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v57[25] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:26];
  v10 = [(PHEntityKeyMap *)v23 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_15_27840;
  entityKeyMap_pl_once_object_15_27840 = v10;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
{
  if (propertiesToFetchWithHint__onceToken_27848 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_27848, &__block_literal_global_27849);
  }

  v4 = propertiesToFetchWithHint__array_27850;

  return v4;
}

void __47__PHCollectionShare_propertiesToFetchWithHint___block_invoke()
{
  v3[32] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v3[0] = v0;
  v3[1] = @"title";
  v3[2] = @"creationDate";
  v3[3] = @"ckShareData";
  v3[4] = @"uuid";
  v3[5] = @"status";
  v3[6] = @"shareURL";
  v3[7] = @"assetCount";
  v3[8] = @"photosCount";
  v3[9] = @"videosCount";
  v3[10] = @"cloudPhotoCount";
  v3[11] = @"cloudVideoCount";
  v3[12] = @"scopeIdentifier";
  v3[13] = @"expiryDate";
  v3[14] = @"trashedState";
  v3[15] = @"localPublishState";
  v3[16] = @"publicPermission";
  v3[17] = @"cloudSubscriptionDate";
  v3[18] = @"unseenContentState";
  v3[19] = @"unseenAssetsCount";
  v3[20] = @"notificationState";
  v3[21] = @"publicURLState";
  v3[22] = @"lastModifiedDate";
  v3[23] = @"cloudPersonID";
  v3[24] = @"collectionShareKind";
  v3[25] = @"scopeIdentifier";
  v3[26] = @"creationType";
  v3[27] = @"customSortAscending";
  v3[28] = @"customSortKey";
  v3[29] = @"startDate";
  v3[30] = @"endDate";
  v3[31] = @"collectionShareCurrentUserContributionState";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:32];
  v2 = propertiesToFetchWithHint__array_27850;
  propertiesToFetchWithHint__array_27850 = v1;
}

@end