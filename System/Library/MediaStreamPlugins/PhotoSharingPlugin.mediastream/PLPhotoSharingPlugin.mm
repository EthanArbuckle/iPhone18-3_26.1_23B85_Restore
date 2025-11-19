@interface PLPhotoSharingPlugin
+ (id)MSASPersonIDForPollingTriggeredByPushNotification;
+ (id)delegatePluginForPersonID:(id)a3;
+ (void)didFindDeletedAlbumWithGUID:(id)a3 inviterAddress:(id)a4;
+ (void)didFindNewAlbum:(id)a3;
- (PLPhotoSharingPlugin)init;
- (id)albumTitleAndGUID:(id)a3;
- (void)MSASModel:(id)a3 didDeleteAllCommentsForAssetCollection:(id)a4 inAlbum:(id)a5;
- (void)MSASModel:(id)a3 didDeleteAllContentsOfAlbum:(id)a4;
- (void)MSASModel:(id)a3 didFindAccessControlChange:(id)a4 inAlbum:(id)a5 info:(id)a6;
- (void)MSASModel:(id)a3 didFindAlbumMetadataChange:(id)a4 info:(id)a5;
- (void)MSASModel:(id)a3 didFindAssetCollectionChange:(id)a4 inAlbum:(id)a5;
- (void)MSASModel:(id)a3 didFindCommentChange:(id)a4 inAssetCollection:(id)a5 inAlbum:(id)a6;
- (void)MSASModel:(id)a3 didFindDeletedAccessControl:(id)a4 inAlbum:(id)a5 info:(id)a6;
- (void)MSASModel:(id)a3 didFindDeletedAlbum:(id)a4;
- (void)MSASModel:(id)a3 didFindDeletedAssetCollection:(id)a4 inAlbum:(id)a5 info:(id)a6;
- (void)MSASModel:(id)a3 didFindDeletedComments:(id)a4 forAssetCollection:(id)a5 inAlbum:(id)a6 info:(id)a7;
- (void)MSASModel:(id)a3 didFindDeletedInvitation:(id)a4 info:(id)a5;
- (void)MSASModel:(id)a3 didFindGlobalResetSyncInfo:(id)a4;
- (void)MSASModel:(id)a3 didFindInvitationChange:(id)a4 info:(id)a5;
- (void)MSASModel:(id)a3 didFindLastViewedCommentDate:(id)a4 forAssetCollection:(id)a5 inAlbum:(id)a6;
- (void)MSASModel:(id)a3 didFindNewAccessControls:(id)a4 inAlbum:(id)a5 info:(id)a6;
- (void)MSASModel:(id)a3 didFindNewAlbum:(id)a4;
- (void)MSASModel:(id)a3 didFindNewAssetCollections:(id)a4 inAlbum:(id)a5 info:(id)a6;
- (void)MSASModel:(id)a3 didFindNewComments:(id)a4 forAssetCollection:(id)a5 inAlbum:(id)a6 info:(id)a7;
- (void)MSASModel:(id)a3 didFindNewInvitation:(id)a4 info:(id)a5;
- (void)MSASModel:(id)a3 didFinishAddingAlbum:(id)a4 error:(id)a5;
- (void)MSASModel:(id)a3 didFinishAddingAssetCollection:(id)a4 toAlbum:(id)a5 error:(id)a6;
- (void)MSASModel:(id)a3 didFinishCheckingForChangesInfo:(id)a4 error:(id)a5;
- (void)MSASModel:(id)a3 didFinishDeletingAlbum:(id)a4 error:(id)a5;
- (void)MSASModel:(id)a3 didFinishModifyingAlbumMetadata:(id)a4 error:(id)a5;
- (void)MSASModel:(id)a3 didFinishRetrievingAsset:(id)a4 inAlbum:(id)a5 error:(id)a6;
- (void)MSASModel:(id)a3 didFinishSendingInvitationByPhone:(id)a4 toAlbum:(id)a5 info:(id)a6 error:(id)a7;
- (void)MSASModel:(id)a3 didMarkAlbum:(id)a4 asHavingUnreadContent:(BOOL)a5;
- (void)MSASModel:(id)a3 didMarkAssetCollection:(id)a4 asHavingUnreadComments:(BOOL)a5 inAlbum:(id)a6;
- (void)MSASModel:(id)a3 didRequestDerivativesForAssetCollections:(id)a4 specifications:(id)a5 info:(id)a6 completionBlock:(id)a7;
- (void)MSASModel:(id)a3 didSubscribeToAlbum:(id)a4;
- (void)MSASModel:(id)a3 didUnsubscribeFromAlbum:(id)a4;
- (void)MSASModel:(id)a3 didUpdateUnviewedAssetCollectionCount:(int)a4 forAlbum:(id)a5;
- (void)MSASModelDidDeleteAllAlbumsInAlbumList:(id)a3;
- (void)MSASModelDidReceiveNewServerSideConfiguration:(id)a3;
- (void)MSASModelWillBeForgotten:(id)a3;
- (void)dealloc;
@end

@implementation PLPhotoSharingPlugin

- (id)albumTitleAndGUID:(id)a3
{
  v3 = a3;
  v4 = [v3 metadata];
  v5 = [v4 objectForKey:kMSASAlbumMetadataNameKey];

  v6 = [v3 GUID];

  v7 = [NSString stringWithFormat:@"(%@ %@)", v5, v6];

  return v7;
}

- (void)MSASModelDidReceiveNewServerSideConfiguration:(id)a3
{
  v3 = a3;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 serverSideConfiguration];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "(server-configuration) MSASModelDidReceiveNewServerSideConfiguration %@", &v6, 0xCu);
  }

  +[PLPhotoSharingHelper updateSharedAlbumsCachedServerConfigurationLimits];
}

- (void)MSASModel:(id)a3 didFinishCheckingForChangesInfo:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v9 = v12;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%@: didFinishCheckingForChangesInfo %@ Error %@", &v11, 0x20u);
  }

  v10 = +[PLPhotoSharingHelper sharingPersonID];
  [PLCloudSharedAssetSaveJob downloadPendingAssetsForPersonID:v10 info:v6];
}

- (void)MSASModel:(id)a3 didFindGlobalResetSyncInfo:(id)a4
{
  v4 = a4;
  v5 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2112;
    v10 = v4;
    v6 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@: didFindGlobalResetSyncInfo %@", &v7, 0x16u);
  }
}

- (void)MSASModel:(id)a3 didFindLastViewedCommentDate:(id)a4 forAssetCollection:(id)a5 inAlbum:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [(PLPhotoSharingPlugin *)self photoLibrary];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1254;
  v16[3] = &unk_C2C8;
  v18 = v17 = v10;
  v19 = v9;
  v20 = self;
  v21 = v11;
  v12 = v11;
  v13 = v9;
  v14 = v18;
  v15 = v10;
  [v14 performBlockAndWait:v16];
}

- (void)MSASModel:(id)a3 didMarkAssetCollection:(id)a4 asHavingUnreadComments:(BOOL)a5 inAlbum:(id)a6
{
  v9 = a4;
  v10 = a6;
  [(PLPhotoSharingPlugin *)self photoLibrary];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1534;
  v14[3] = &unk_C2A0;
  v16 = v15 = v9;
  v19 = a5;
  v17 = self;
  v18 = v10;
  v11 = v10;
  v12 = v16;
  v13 = v9;
  [v12 performBlockAndWait:v14];
}

- (void)MSASModel:(id)a3 didUpdateUnviewedAssetCollectionCount:(int)a4 forAlbum:(id)a5
{
  v7 = a5;
  [(PLPhotoSharingPlugin *)self photoLibrary];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_17C8;
  v10[3] = &unk_C278;
  v12 = v11 = v7;
  v14 = a4;
  v13 = self;
  v8 = v12;
  v9 = v7;
  [v8 performBlockAndWait:v10];
}

- (void)MSASModel:(id)a3 didMarkAlbum:(id)a4 asHavingUnreadContent:(BOOL)a5
{
  v7 = a4;
  [(PLPhotoSharingPlugin *)self photoLibrary];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1A28;
  v10[3] = &unk_C250;
  v12 = v11 = v7;
  v14 = a5;
  v13 = self;
  v8 = v12;
  v9 = v7;
  [v8 performBlockAndWait:v10];
}

- (void)MSASModel:(id)a3 didFindCommentChange:(id)a4 inAssetCollection:(id)a5 inAlbum:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "didFindCommentChange %@ inAssetCollection:%@ inAlbum: %@", &v13, 0x20u);
  }

  v12 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "===== IMPLEMENT ME =====", &v13, 2u);
  }
}

- (void)MSASModel:(id)a3 didFindNewComments:(id)a4 forAssetCollection:(id)a5 inAlbum:(id)a6 info:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 GUID];
    v18 = 138413058;
    v19 = v10;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "didFindNewComments %@ forAssetCollection:%@ inAlbum: %@ info:%@", &v18, 0x2Au);
  }

  v16 = [v11 GUID];
  v17 = [v12 GUID];
  [PLCloudSharedCommentsJob locallyProcessAddedComments:v10 assetGUID:v16 albumGUID:v17 info:v13];
}

- (void)MSASModel:(id)a3 didFindDeletedComments:(id)a4 forAssetCollection:(id)a5 inAlbum:(id)a6 info:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 GUID];
    v18 = 138413058;
    v19 = v10;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "didFindDeletedComments %@ forAssetCollection:%@ inAlbum: %@ info:%@", &v18, 0x2Au);
  }

  v16 = [v13 objectForKey:kMSASInfoEventIsDueToAssetCollectionDeletionKey];

  if (!v16)
  {
    v17 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "about to PLCloudSharedCommentsJob locallyProcessDeletedComments %@", &v18, 0xCu);
    }

    [PLCloudSharedCommentsJob locallyProcessDeletedComments:v10 info:v13];
  }
}

- (void)MSASModel:(id)a3 didDeleteAllCommentsForAssetCollection:(id)a4 inAlbum:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "didDeleteAllCommentsForAssetCollection %@ inAlbum: %@", &v10, 0x16u);
  }

  v9 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "===== IMPLEMENT ME =====", &v10, 2u);
  }
}

- (void)MSASModel:(id)a3 didFinishSendingInvitationByPhone:(id)a4 toAlbum:(id)a5 info:(id)a6 error:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138413058;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "MSASModel:didFinishSendingInvitationByPhone:%@ inAlbum:%@ info:%@ error:%@", &v15, 0x2Au);
  }

  if (v13)
  {
    [PLPhotoSharingHelper savePhoneInvitationFailuresForPhoneNumber:v10 inAlbum:v11];
    notify_post(PLFindPhoneInvitationFailureNotification);
  }
}

- (void)MSASModel:(id)a3 didFindDeletedAccessControl:(id)a4 inAlbum:(id)a5 info:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "MSASModel:didFindDeletedAccessControl:%@ inAlbum:%@ with infoDict:%@", &v13, 0x20u);
  }

  v12 = [NSArray arrayWithObject:v8];
  [PLCloudSharingInvitationChangeJob saveServerStateLocallyForSharingACLRelationships:v12 changeType:2 info:v10];
}

- (void)MSASModel:(id)a3 didFindAccessControlChange:(id)a4 inAlbum:(id)a5 info:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "MSASModel:didFindAccessControlChange:%@ inAlbum:%@ with infoDict:%@", &v13, 0x20u);
  }

  v12 = [NSArray arrayWithObject:v8];
  [PLCloudSharingInvitationChangeJob saveServerStateLocallyForSharingACLRelationships:v12 changeType:3 info:v10];
}

- (void)MSASModel:(id)a3 didFindNewAccessControls:(id)a4 inAlbum:(id)a5 info:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "MSASModel:didFindNewAccessControls:%@ inAlbum:%@ with infoDict:%@", &v12, 0x20u);
  }

  [PLCloudSharingInvitationChangeJob saveServerStateLocallyForSharingACLRelationships:v8 changeType:1 info:v10];
}

- (void)MSASModel:(id)a3 didFindInvitationChange:(id)a4 info:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "MSASModel:didFindInvitationChange:%@ with infoDict:%@", &v10, 0x16u);
  }

  v9 = [NSArray arrayWithObject:v6];
  [PLCloudSharingInvitationChangeJob saveServerStateLocallyForSharingInvitationRelationships:v9 changeType:3 info:v7];
}

- (void)MSASModel:(id)a3 didFindDeletedInvitation:(id)a4 info:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "MSASModel:didFindDeletedInvitation:%@ with infoDict:%@", &v10, 0x16u);
  }

  v9 = [NSArray arrayWithObject:v6];
  [PLCloudSharingInvitationChangeJob saveServerStateLocallyForSharingInvitationRelationships:v9 changeType:2 info:v7];
}

- (void)MSASModel:(id)a3 didFindNewInvitation:(id)a4 info:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "MSASModel:didFindNewInvitation:%@ with infoDict:%@", &v9, 0x16u);
  }
}

- (void)MSASModel:(id)a3 didRequestDerivativesForAssetCollections:(id)a4 specifications:(id)a5 info:(id)a6 completionBlock:(id)a7
{
  v47 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v45 = a7;
  v14 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v69 = v11;
    v70 = 2112;
    v71 = v12;
    v72 = 2112;
    v73 = v13;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "MSASModel:didRequestDerivativesForAssetCollections:%@ \n specifications:%@ \n info %@", buf, 0x20u);
  }

  v46 = v13;

  [PLPhotoSharingHelper writeUploadDebugBreadcrumbForAssetCollections:v11 state:110 error:0];
  Current = CFAbsoluteTimeGetCurrent();
  v16 = objc_alloc_init(NSFileManager);
  v53 = [[NSMutableArray alloc] initWithArray:v11];
  v52 = objc_alloc_init(NSMutableArray);
  v17 = [NSMutableArray arrayWithCapacity:2];
  v18 = [NSMutableArray arrayWithCapacity:3];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_2EE4;
  v65[3] = &unk_C228;
  v19 = v17;
  v20 = v16;
  v50 = v19;
  v66 = v19;
  v49 = v18;
  v67 = v49;
  [v12 enumerateObjectsUsingBlock:v65];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v11;
  v48 = v16;
  v56 = [obj countByEnumeratingWithState:&v61 objects:v77 count:16];
  if (v56)
  {
    v55 = *v62;
    v51 = kPLJustEnqueuedAssetCollectionKey;
    do
    {
      for (i = 0; i != v56; i = i + 1)
      {
        if (*v62 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v61 + 1) + 8 * i);
        v23 = [v22 isPhotoIris];
        v24 = [v22 assets];
        v25 = [v24 count];

        if (v25 < 2)
        {
          goto LABEL_24;
        }

        if (!v23)
        {
          v26 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Warning: got an MSASCollection with more than one asset, will select last one", buf, 2u);
          }

LABEL_23:

LABEL_24:
          v35 = [v22 assets];
          v30 = [v35 lastObject];

          goto LABEL_25;
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v26 = [v22 assets];
        v27 = [v26 countByEnumeratingWithState:&v57 objects:v76 count:16];
        if (!v27)
        {
          goto LABEL_23;
        }

        v28 = v27;
        v29 = v12;
        v30 = 0;
        v31 = *v58;
        do
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v58 != v31)
            {
              objc_enumerationMutation(v26);
            }

            v33 = *(*(&v57 + 1) + 8 * j);
            if (([v33 isVideo] & 1) == 0)
            {
              v34 = v33;

              v30 = v34;
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v57 objects:v76 count:16];
        }

        while (v28);

        v12 = v29;
        v20 = v48;
        if (!v30)
        {
          goto LABEL_24;
        }

LABEL_25:
        v36 = [v30 path];
        if ([v20 fileExistsAtPath:v36])
        {
          [v22 setMetadataValue:0 forKey:v51];
          v37 = [v22 isVideo];
          v38 = [v22 isVideo] | v23;
          v39 = +[NSMutableArray array];
          if (v38)
          {
            v40 = [PLPhotoSharingHelper videoDerivativesForAssetCollection:v22 withSpecifications:v49];
            if ([v40 count])
            {
              [v39 addObjectsFromArray:v40];
            }
          }

          if ((v37 & 1) == 0)
          {
            v41 = [PLPhotoSharingHelper derivativesForMasterAsset:v30 withSpecifications:v50];
            if ([v41 count])
            {
              [v39 addObjectsFromArray:v41];
            }
          }

          if ([v39 count])
          {
            [v22 setAssets:v39];
          }
        }

        else
        {
          v42 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = v36;
            _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "Master asset at path %@ no longer exists, skipping", buf, 0xCu);
          }

          [v52 addObject:v22];
          [v53 removeObject:v22];
        }
      }

      v56 = [obj countByEnumeratingWithState:&v61 objects:v77 count:16];
    }

    while (v56);
  }

  v43 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = CFAbsoluteTimeGetCurrent();
    *buf = 138413058;
    v69 = v53;
    v70 = 2112;
    v71 = v52;
    v72 = 2112;
    v73 = v46;
    v74 = 2048;
    v75 = v44 - Current;
    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "about to call completionBlock with computedAssetCollections %@ rejectedAssetCollections %@ info %@ elapsed time %f", buf, 0x2Au);
  }

  v45[2](v45, v53, v52, v46);
  [PLPhotoSharingHelper writeUploadDebugBreadcrumbForAssetCollections:v53 state:120 error:0];
}

- (void)MSASModel:(id)a3 didFinishAddingAssetCollection:(id)a4 toAlbum:(id)a5 error:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "MSASModel:didFinishAddingAssetCollection:%@ toAlbum:%@ error:%@", &v15, 0x20u);
  }

  v13 = [NSArray arrayWithObject:v9];
  [PLPhotoSharingHelper writeUploadDebugBreadcrumbForAssetCollections:v13 state:199 error:v11];

  if (v11)
  {
    v14 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138413058;
      v16 = self;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%@ Failed to add asset collection %@ toAlbum:%@ error:%@", &v15, 0x2Au);
    }
  }

  else
  {
    v14 = +[PLPhotoSharingHelper sharingPersonID];
    [PLCloudSharedAssetSaveJob replaceRecentlyUploadedOriginalWithDerivativeForCollection:v9 inAlbum:v10 personID:v14];
  }
}

- (void)MSASModel:(id)a3 didFinishRetrievingAsset:(id)a4 inAlbum:(id)a5 error:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 path];
  v14 = [v10 assetCollectionGUID];
  v15 = [v9 focusAssetCollectionGUID];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 isEqualToString:v14];
  }

  else
  {
    v17 = 0;
  }

  v18 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v50 = objc_opt_class();
    v51 = 2112;
    v52 = v14;
    v53 = 2112;
    v54 = v10;
    v55 = 2112;
    v56 = v11;
    v57 = 2112;
    v58 = v12;
    v19 = v50;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%@ MSASModel:didFinishRetrievingAsset:(collectionGUID:%@)%@ inAlbum:%@ error:%@", buf, 0x34u);
  }

  if (v14)
  {
    v45 = v17;
    v20 = [v10 mediaAssetType];
    if (v20 == &dword_0 + 2)
    {
      v21 = 220;
    }

    else
    {
      v21 = 221;
    }

    v47 = v12;
    [v11 GUID];
    v22 = v46 = v13;
    [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:v14 albumGUID:v22 content:v10 state:v21 error:v12];

    v13 = v46;
    if (v46)
    {
      v23 = [v9 assetCollectionWithGUID:v14];
      if (!v23)
      {
        v24 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v50 = v14;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "ERROR: unable to find asset collection for GUID %@, skipping saving", buf, 0xCu);
        }

        goto LABEL_33;
      }

      v24 = [PLCloudSharedAssetSaveJob pathForInFlightAssetCollectionWithGUID:v14 mediaAssetType:v20];
      if (!v24)
      {
        v29 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v50 = v10;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "ERROR : couldn't create a path to store inflight file for %@", buf, 0xCu);
        }

        goto LABEL_32;
      }

      v42 = +[NSFileManager defaultManager];
      if ([v42 fileExistsAtPath:v24])
      {
        v25 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = v24;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Inflight file already exists at %@. We have re-downloaded the same asset.", buf, 0xCu);
        }

        v41 = 0;
      }

      else
      {
        v30 = [NSURL fileURLWithPath:v46 isDirectory:0];
        v31 = [NSURL fileURLWithPath:v24 isDirectory:0];
        v48 = 0;
        v43 = [PLFileUtilities copyItemAtURL:v30 toURL:v31 error:&v48];
        v41 = v48;

        if ((v43 & 1) == 0)
        {
          v38 = PLPhotoSharingGetLog();
          v44 = v38;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v13 = v46;
            v50 = v46;
            v51 = 2112;
            v52 = v24;
            v53 = 2112;
            v29 = v41;
            v54 = v41;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "ERROR : couldn't copy MMCS transient file %@ to inflight file %@: %@", buf, 0x20u);
            v12 = v47;
            goto LABEL_31;
          }

LABEL_30:
          v13 = v46;
          v12 = v47;
          v29 = v41;
LABEL_31:

LABEL_32:
LABEL_33:

          goto LABEL_34;
        }
      }

      v44 = [v10 GUID];
      v32 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v11 GUID];
        *buf = 138413058;
        v50 = v24;
        v51 = 2112;
        v52 = v14;
        v53 = 2112;
        v54 = v44;
        v55 = 2112;
        v56 = v33;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "about to PLCloudSharedAssetSaveJob saveCloudSharedAssetAtPath %@ collectionGUID %@  guidOfCurrentAssetInCollection %@ albumGUID %@", buf, 0x2Au);
      }

      v34 = [v10 mediaAssetType];
      [v11 GUID];
      v40 = v11;
      v36 = v35 = v24;
      v37 = +[PLPhotoSharingHelper sharingPersonID];
      LOBYTE(v39) = v45;
      [PLCloudSharedAssetSaveJob saveCloudSharedAssetAtPath:v35 forAssetCollection:v23 mediaAssetType:v34 albumGUID:v36 personID:v37 info:0 shouldPrioritize:v39];

      v24 = v35;
      v11 = v40;
      goto LABEL_30;
    }

    v23 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "ERROR: asset path is nil";
      v27 = v23;
      v28 = 2;
      goto LABEL_21;
    }
  }

  else
  {
    v23 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = 0;
      v26 = "ERROR: can't proceed because we don't have an assetCollection for collectionGUID %@";
      v27 = v23;
      v28 = 12;
LABEL_21:
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    }
  }

LABEL_34:
}

- (void)MSASModel:(id)a3 didFindDeletedAssetCollection:(id)a4 inAlbum:(id)a5 info:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = NSStringFromSelector(a2);
    v25 = 138413314;
    v26 = v13;
    v27 = 2112;
    v28 = v15;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%@ %@ %@ album %@ info %@", &v25, 0x34u);
  }

  v16 = [v11 objectForKey:kMSASInfoEventIsDueToAlbumDeletionKey];

  v17 = [v9 GUID];

  if (v17 && !v16)
  {
    v18 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v9 GUID];
      v25 = 138412546;
      v26 = v19;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "about to PLCloudSharedAssetSaveJob deleteCloudSharedAssetsWithCloudGUIDs %@ inAlbum:%@", &v25, 0x16u);
    }

    v20 = [v9 GUID];
    v21 = [NSArray arrayWithObject:v20];
    [PLCloudSharedAssetSaveJob deleteCloudSharedAssetsWithCloudGUIDs:v21 inAlbum:v10 info:v11];

    v22 = [v9 GUID];
    v23 = [v10 GUID];
    v24 = [v9 GUID];
    [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:v22 albumGUID:v23 content:v24 state:300 error:0];
  }
}

- (void)MSASModel:(id)a3 didDeleteAllContentsOfAlbum:(id)a4
{
  v5 = a4;
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v11, 0x20u);
  }

  v10 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "===== IMPLEMENT ME =====", &v11, 2u);
  }
}

- (void)MSASModel:(id)a3 didFindAssetCollectionChange:(id)a4 inAlbum:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    v14 = 138413058;
    v15 = v10;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ %@ album %@", &v14, 0x2Au);
  }

  v13 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "===== IMPLEMENT ME =====", &v14, 2u);
  }
}

- (void)MSASModel:(id)a3 didFindNewAssetCollections:(id)a4 inAlbum:(id)a5 info:(id)a6
{
  v8 = a4;
  v33 = a5;
  v9 = a6;
  v10 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [v8 valueForKey:@"GUID"];
    *buf = 138413058;
    v40 = v11;
    v41 = 2112;
    v42 = v13;
    v43 = 2112;
    v44 = v33;
    v45 = 2112;
    v46 = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%@ MSASModel:didFindNewAssetCollections:%@ inAlbum:%@ info:%@", buf, 0x2Au);
  }

  v32 = v9;

  v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    v19 = kPLJustEnqueuedAssetCollectionKey;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v34 + 1) + 8 * i);
        v22 = [v21 metadata];
        v23 = [v22 objectForKey:v19];

        if (v23)
        {
          v24 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v21 GUID];
            *buf = 138412290;
            v40 = v25;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "we just enqueued collection GUID %@, skipping", buf, 0xCu);
          }
        }

        else
        {
          [v14 addObject:v21];
          v24 = [v21 GUID];
          v26 = [v33 GUID];
          [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:v24 albumGUID:v26 content:v21 state:200 error:0];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v17);
  }

  v27 = +[PLPhotoSharingHelper sharingPersonID];
  v28 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v14 valueForKey:@"GUID"];
    v30 = [v33 GUID];
    *buf = 138412802;
    v40 = v29;
    v41 = 2112;
    v42 = v30;
    v43 = 2112;
    v44 = v27;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, " calling PLCloudSharedAssetSaveJob processMetadataFromClientProcessForAssetCollections:%@ inAlbum:%@ personID:%@", buf, 0x20u);
  }

  v31 = +[PLPhotoSharingHelper sharingPersonID];
  [PLCloudSharedAssetSaveJob processMetadataForAssetCollections:v14 inAlbum:v33 personID:v31 info:v32];
}

- (void)MSASModel:(id)a3 didFinishDeletingAlbum:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    v13 = 138413058;
    v14 = v10;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ %@ error:%@", &v13, 0x2Au);
  }
}

- (void)MSASModel:(id)a3 didFinishModifyingAlbumMetadata:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    v13 = 138413058;
    v14 = v10;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ %@ error:%@", &v13, 0x2Au);
  }
}

- (void)MSASModel:(id)a3 didFinishAddingAlbum:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    v13 = 138413058;
    v14 = v10;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ %@ error:%@", &v13, 0x2Au);
  }

  [PLPhotoSharingHelper sendPendingInvitationsForNewlyCreatedAlbum:v7];
}

- (void)MSASModel:(id)a3 didUnsubscribeFromAlbum:(id)a4
{
  v5 = a4;
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v11, 0x20u);
  }

  v10 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "===== IMPLEMENT ME =====", &v11, 2u);
  }
}

- (void)MSASModel:(id)a3 didSubscribeToAlbum:(id)a4
{
  v5 = a4;
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v11, 0x20u);
  }

  v10 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "===== IMPLEMENT ME =====", &v11, 2u);
  }
}

- (void)MSASModel:(id)a3 didFindAlbumMetadataChange:(id)a4 info:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v13, 0x20u);
  }

  [PLPhotoSharingHelper updateLocalAlbumMetadataForMSASAlbum:v7 info:v8];
}

- (void)MSASModel:(id)a3 didFindDeletedAlbum:(id)a4
{
  v5 = a4;
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v12 = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v12, 0x20u);
  }

  v10 = [v5 GUID];
  v11 = [NSArray arrayWithObject:v10];
  [PLPhotoSharingHelper deleteLocalAlbumsForMSASAlbumsWithGUIDs:v11];
}

- (void)MSASModel:(id)a3 didFindNewAlbum:(id)a4
{
  v5 = a4;
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v10, 0x20u);
  }

  [PLPhotoSharingHelper updateLocalAlbumMetadataForMSASAlbum:v5 info:0];
}

- (void)MSASModelDidDeleteAllAlbumsInAlbumList:(id)a3
{
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%@ %@", &v8, 0x16u);
  }

  +[PLPhotoSharingHelper resetAllLocalState];
}

- (void)MSASModelWillBeForgotten:(id)a3
{
  v3 = [a3 personID];
  if (v3)
  {
    v4 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "MSASModelWillBeForgotten personID %@", &v5, 0xCu);
    }

    [qword_10E70 removeObjectForKey:v3];
  }
}

- (void)dealloc
{
  v3 = notify_cancel(self->_pushTimerStartToken);
  if (v3)
  {
    v4 = v3;
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "notify_cancel() failed for kMSASFileTransferPushTimerDidStartNotification. (%d)", buf, 8u);
    }
  }

  v6 = notify_cancel(self->_pushTimerEndToken);
  if (v6)
  {
    v7 = v6;
    v8 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "notify_cancel() failed for kMSASFileTransferPushTimerDidEndNotification. (%d)", buf, 8u);
    }
  }

  v9 = [(PLPhotoSharingPlugin *)self model];
  [v9 removeObserver:self];

  v10.receiver = self;
  v10.super_class = PLPhotoSharingPlugin;
  [(PLPhotoSharingPlugin *)&v10 dealloc];
}

- (PLPhotoSharingPlugin)init
{
  v11.receiver = self;
  v11.super_class = PLPhotoSharingPlugin;
  v2 = [(PLPhotoSharingPlugin *)&v11 init];
  if (v2)
  {
    +[PLPhotoLibraryPathManager enableMultiLibraryMode];
    v3 = [(PLPhotoSharingPlugin *)v2 photoLibrary];
    v4 = [v3 assetsdClient];
    v5 = [v4 libraryClient];
    v10 = 0;
    v6 = [v5 openPhotoLibraryDatabaseWithoutProgressIfNeededWithOptions:0 error:&v10];
    v7 = v10;

    if ((v6 & 1) == 0)
    {
      v8 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "failed to open library: %@", buf, 0xCu);
      }
    }
  }

  return v2;
}

+ (void)didFindDeletedAlbumWithGUID:(id)a3 inviterAddress:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v8 = v10;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%@ deleting album with GUID %@ inviterAddress %@", &v9, 0x20u);
  }

  [PLPhotoSharingHelper deleteLocalAlbumsForMSASAlbumsWithGUID:v5 inviterAddress:v6];
}

+ (void)didFindNewAlbum:(id)a3
{
  v4 = a3;
  v5 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = NSStringFromSelector(a2);
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v12, 0x20u);
  }

  v9 = +[PLPhotoLibraryPathManager systemLibraryURL];
  v10 = [PLPhotoSharingHelper sharedStreamsExplictlyDisabledForPhotoLibraryURL:v9];

  if (v10)
  {
    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Ignoring new album because shared streams has been explicitly disabled by user", &v12, 2u);
    }
  }

  else
  {
    [PLPhotoSharingHelper updateLocalAlbumMetadataForMSASAlbum:v4 info:0];
  }
}

+ (id)MSASPersonIDForPollingTriggeredByPushNotification
{
  v2 = +[PLPhotoSharingHelper sharingPersonID];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2112;
    v9 = v2;
    v4 = v7;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%@ : MSASPersonIDForPollingTriggeredByPushNotification returning %@", &v6, 0x16u);
  }

  return v2;
}

+ (id)delegatePluginForPersonID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [qword_10E70 objectForKey:v3];
    if (!v4)
    {
      v4 = objc_alloc_init(PLPhotoSharingPlugin);
      [(PLPhotoSharingPlugin *)v4 setPersonID:v3];
      v5 = qword_10E70;
      if (!qword_10E70)
      {
        v6 = objc_alloc_init(NSMutableDictionary);
        v7 = qword_10E70;
        qword_10E70 = v6;

        v5 = qword_10E70;
      }

      [v5 setObject:v4 forKey:v3];
      v8 = [[MSASServerSideModel alloc] initWithPersonID:v3];
      [(PLPhotoSharingPlugin *)v4 setModel:v8];
      [v8 addObserver:v4];
    }

    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "delegatePluginForPersonID returning plugin %@ for personID %@", &v12, 0x16u);
    }

    v10 = [(PLPhotoSharingPlugin *)v4 model];
  }

  else
  {
    v4 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_0, &v4->super, OS_LOG_TYPE_ERROR, "delegatePluginForPersonID invoked with nil personID", &v12, 2u);
    }

    v10 = 0;
  }

  return v10;
}

@end