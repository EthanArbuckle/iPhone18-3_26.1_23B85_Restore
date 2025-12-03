@interface PLPhotoSharingPlugin
+ (id)MSASPersonIDForPollingTriggeredByPushNotification;
+ (id)delegatePluginForPersonID:(id)d;
+ (void)didFindDeletedAlbumWithGUID:(id)d inviterAddress:(id)address;
+ (void)didFindNewAlbum:(id)album;
- (PLPhotoSharingPlugin)init;
- (id)albumTitleAndGUID:(id)d;
- (void)MSASModel:(id)model didDeleteAllCommentsForAssetCollection:(id)collection inAlbum:(id)album;
- (void)MSASModel:(id)model didDeleteAllContentsOfAlbum:(id)album;
- (void)MSASModel:(id)model didFindAccessControlChange:(id)change inAlbum:(id)album info:(id)info;
- (void)MSASModel:(id)model didFindAlbumMetadataChange:(id)change info:(id)info;
- (void)MSASModel:(id)model didFindAssetCollectionChange:(id)change inAlbum:(id)album;
- (void)MSASModel:(id)model didFindCommentChange:(id)change inAssetCollection:(id)collection inAlbum:(id)album;
- (void)MSASModel:(id)model didFindDeletedAccessControl:(id)control inAlbum:(id)album info:(id)info;
- (void)MSASModel:(id)model didFindDeletedAlbum:(id)album;
- (void)MSASModel:(id)model didFindDeletedAssetCollection:(id)collection inAlbum:(id)album info:(id)info;
- (void)MSASModel:(id)model didFindDeletedComments:(id)comments forAssetCollection:(id)collection inAlbum:(id)album info:(id)info;
- (void)MSASModel:(id)model didFindDeletedInvitation:(id)invitation info:(id)info;
- (void)MSASModel:(id)model didFindGlobalResetSyncInfo:(id)info;
- (void)MSASModel:(id)model didFindInvitationChange:(id)change info:(id)info;
- (void)MSASModel:(id)model didFindLastViewedCommentDate:(id)date forAssetCollection:(id)collection inAlbum:(id)album;
- (void)MSASModel:(id)model didFindNewAccessControls:(id)controls inAlbum:(id)album info:(id)info;
- (void)MSASModel:(id)model didFindNewAlbum:(id)album;
- (void)MSASModel:(id)model didFindNewAssetCollections:(id)collections inAlbum:(id)album info:(id)info;
- (void)MSASModel:(id)model didFindNewComments:(id)comments forAssetCollection:(id)collection inAlbum:(id)album info:(id)info;
- (void)MSASModel:(id)model didFindNewInvitation:(id)invitation info:(id)info;
- (void)MSASModel:(id)model didFinishAddingAlbum:(id)album error:(id)error;
- (void)MSASModel:(id)model didFinishAddingAssetCollection:(id)collection toAlbum:(id)album error:(id)error;
- (void)MSASModel:(id)model didFinishCheckingForChangesInfo:(id)info error:(id)error;
- (void)MSASModel:(id)model didFinishDeletingAlbum:(id)album error:(id)error;
- (void)MSASModel:(id)model didFinishModifyingAlbumMetadata:(id)metadata error:(id)error;
- (void)MSASModel:(id)model didFinishRetrievingAsset:(id)asset inAlbum:(id)album error:(id)error;
- (void)MSASModel:(id)model didFinishSendingInvitationByPhone:(id)phone toAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASModel:(id)model didMarkAlbum:(id)album asHavingUnreadContent:(BOOL)content;
- (void)MSASModel:(id)model didMarkAssetCollection:(id)collection asHavingUnreadComments:(BOOL)comments inAlbum:(id)album;
- (void)MSASModel:(id)model didRequestDerivativesForAssetCollections:(id)collections specifications:(id)specifications info:(id)info completionBlock:(id)block;
- (void)MSASModel:(id)model didSubscribeToAlbum:(id)album;
- (void)MSASModel:(id)model didUnsubscribeFromAlbum:(id)album;
- (void)MSASModel:(id)model didUpdateUnviewedAssetCollectionCount:(int)count forAlbum:(id)album;
- (void)MSASModelDidDeleteAllAlbumsInAlbumList:(id)list;
- (void)MSASModelDidReceiveNewServerSideConfiguration:(id)configuration;
- (void)MSASModelWillBeForgotten:(id)forgotten;
- (void)dealloc;
@end

@implementation PLPhotoSharingPlugin

- (id)albumTitleAndGUID:(id)d
{
  dCopy = d;
  metadata = [dCopy metadata];
  v5 = [metadata objectForKey:kMSASAlbumMetadataNameKey];

  gUID = [dCopy GUID];

  v7 = [NSString stringWithFormat:@"(%@ %@)", v5, gUID];

  return v7;
}

- (void)MSASModelDidReceiveNewServerSideConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    serverSideConfiguration = [configurationCopy serverSideConfiguration];
    v6 = 138412290;
    v7 = serverSideConfiguration;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "(server-configuration) MSASModelDidReceiveNewServerSideConfiguration %@", &v6, 0xCu);
  }

  +[PLPhotoSharingHelper updateSharedAlbumsCachedServerConfigurationLimits];
}

- (void)MSASModel:(id)model didFinishCheckingForChangesInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = infoCopy;
    v15 = 2112;
    v16 = errorCopy;
    v9 = v12;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%@: didFinishCheckingForChangesInfo %@ Error %@", &v11, 0x20u);
  }

  v10 = +[PLPhotoSharingHelper sharingPersonID];
  [PLCloudSharedAssetSaveJob downloadPendingAssetsForPersonID:v10 info:infoCopy];
}

- (void)MSASModel:(id)model didFindGlobalResetSyncInfo:(id)info
{
  infoCopy = info;
  v5 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2112;
    v10 = infoCopy;
    v6 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@: didFindGlobalResetSyncInfo %@", &v7, 0x16u);
  }
}

- (void)MSASModel:(id)model didFindLastViewedCommentDate:(id)date forAssetCollection:(id)collection inAlbum:(id)album
{
  dateCopy = date;
  collectionCopy = collection;
  albumCopy = album;
  [(PLPhotoSharingPlugin *)self photoLibrary];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1254;
  v16[3] = &unk_C2C8;
  v18 = v17 = collectionCopy;
  v19 = dateCopy;
  selfCopy = self;
  v21 = albumCopy;
  v12 = albumCopy;
  v13 = dateCopy;
  v14 = v18;
  v15 = collectionCopy;
  [v14 performBlockAndWait:v16];
}

- (void)MSASModel:(id)model didMarkAssetCollection:(id)collection asHavingUnreadComments:(BOOL)comments inAlbum:(id)album
{
  collectionCopy = collection;
  albumCopy = album;
  [(PLPhotoSharingPlugin *)self photoLibrary];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1534;
  v14[3] = &unk_C2A0;
  v16 = v15 = collectionCopy;
  commentsCopy = comments;
  selfCopy = self;
  v18 = albumCopy;
  v11 = albumCopy;
  v12 = v16;
  v13 = collectionCopy;
  [v12 performBlockAndWait:v14];
}

- (void)MSASModel:(id)model didUpdateUnviewedAssetCollectionCount:(int)count forAlbum:(id)album
{
  albumCopy = album;
  [(PLPhotoSharingPlugin *)self photoLibrary];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_17C8;
  v10[3] = &unk_C278;
  v12 = v11 = albumCopy;
  countCopy = count;
  selfCopy = self;
  v8 = v12;
  v9 = albumCopy;
  [v8 performBlockAndWait:v10];
}

- (void)MSASModel:(id)model didMarkAlbum:(id)album asHavingUnreadContent:(BOOL)content
{
  albumCopy = album;
  [(PLPhotoSharingPlugin *)self photoLibrary];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1A28;
  v10[3] = &unk_C250;
  v12 = v11 = albumCopy;
  contentCopy = content;
  selfCopy = self;
  v8 = v12;
  v9 = albumCopy;
  [v8 performBlockAndWait:v10];
}

- (void)MSASModel:(id)model didFindCommentChange:(id)change inAssetCollection:(id)collection inAlbum:(id)album
{
  changeCopy = change;
  collectionCopy = collection;
  albumCopy = album;
  v11 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = changeCopy;
    v15 = 2112;
    v16 = collectionCopy;
    v17 = 2112;
    v18 = albumCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "didFindCommentChange %@ inAssetCollection:%@ inAlbum: %@", &v13, 0x20u);
  }

  v12 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "===== IMPLEMENT ME =====", &v13, 2u);
  }
}

- (void)MSASModel:(id)model didFindNewComments:(id)comments forAssetCollection:(id)collection inAlbum:(id)album info:(id)info
{
  commentsCopy = comments;
  collectionCopy = collection;
  albumCopy = album;
  infoCopy = info;
  v14 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    gUID = [collectionCopy GUID];
    v18 = 138413058;
    v19 = commentsCopy;
    v20 = 2112;
    v21 = gUID;
    v22 = 2112;
    v23 = albumCopy;
    v24 = 2112;
    v25 = infoCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "didFindNewComments %@ forAssetCollection:%@ inAlbum: %@ info:%@", &v18, 0x2Au);
  }

  gUID2 = [collectionCopy GUID];
  gUID3 = [albumCopy GUID];
  [PLCloudSharedCommentsJob locallyProcessAddedComments:commentsCopy assetGUID:gUID2 albumGUID:gUID3 info:infoCopy];
}

- (void)MSASModel:(id)model didFindDeletedComments:(id)comments forAssetCollection:(id)collection inAlbum:(id)album info:(id)info
{
  commentsCopy = comments;
  collectionCopy = collection;
  albumCopy = album;
  infoCopy = info;
  v14 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    gUID = [collectionCopy GUID];
    v18 = 138413058;
    v19 = commentsCopy;
    v20 = 2112;
    v21 = gUID;
    v22 = 2112;
    v23 = albumCopy;
    v24 = 2112;
    v25 = infoCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "didFindDeletedComments %@ forAssetCollection:%@ inAlbum: %@ info:%@", &v18, 0x2Au);
  }

  v16 = [infoCopy objectForKey:kMSASInfoEventIsDueToAssetCollectionDeletionKey];

  if (!v16)
  {
    v17 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = commentsCopy;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "about to PLCloudSharedCommentsJob locallyProcessDeletedComments %@", &v18, 0xCu);
    }

    [PLCloudSharedCommentsJob locallyProcessDeletedComments:commentsCopy info:infoCopy];
  }
}

- (void)MSASModel:(id)model didDeleteAllCommentsForAssetCollection:(id)collection inAlbum:(id)album
{
  collectionCopy = collection;
  albumCopy = album;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = collectionCopy;
    v12 = 2112;
    v13 = albumCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "didDeleteAllCommentsForAssetCollection %@ inAlbum: %@", &v10, 0x16u);
  }

  v9 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "===== IMPLEMENT ME =====", &v10, 2u);
  }
}

- (void)MSASModel:(id)model didFinishSendingInvitationByPhone:(id)phone toAlbum:(id)album info:(id)info error:(id)error
{
  phoneCopy = phone;
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  v14 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138413058;
    v16 = phoneCopy;
    v17 = 2112;
    v18 = albumCopy;
    v19 = 2112;
    v20 = infoCopy;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "MSASModel:didFinishSendingInvitationByPhone:%@ inAlbum:%@ info:%@ error:%@", &v15, 0x2Au);
  }

  if (errorCopy)
  {
    [PLPhotoSharingHelper savePhoneInvitationFailuresForPhoneNumber:phoneCopy inAlbum:albumCopy];
    notify_post(PLFindPhoneInvitationFailureNotification);
  }
}

- (void)MSASModel:(id)model didFindDeletedAccessControl:(id)control inAlbum:(id)album info:(id)info
{
  controlCopy = control;
  albumCopy = album;
  infoCopy = info;
  v11 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = controlCopy;
    v15 = 2112;
    v16 = albumCopy;
    v17 = 2112;
    v18 = infoCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "MSASModel:didFindDeletedAccessControl:%@ inAlbum:%@ with infoDict:%@", &v13, 0x20u);
  }

  v12 = [NSArray arrayWithObject:controlCopy];
  [PLCloudSharingInvitationChangeJob saveServerStateLocallyForSharingACLRelationships:v12 changeType:2 info:infoCopy];
}

- (void)MSASModel:(id)model didFindAccessControlChange:(id)change inAlbum:(id)album info:(id)info
{
  changeCopy = change;
  albumCopy = album;
  infoCopy = info;
  v11 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = changeCopy;
    v15 = 2112;
    v16 = albumCopy;
    v17 = 2112;
    v18 = infoCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "MSASModel:didFindAccessControlChange:%@ inAlbum:%@ with infoDict:%@", &v13, 0x20u);
  }

  v12 = [NSArray arrayWithObject:changeCopy];
  [PLCloudSharingInvitationChangeJob saveServerStateLocallyForSharingACLRelationships:v12 changeType:3 info:infoCopy];
}

- (void)MSASModel:(id)model didFindNewAccessControls:(id)controls inAlbum:(id)album info:(id)info
{
  controlsCopy = controls;
  albumCopy = album;
  infoCopy = info;
  v11 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = controlsCopy;
    v14 = 2112;
    v15 = albumCopy;
    v16 = 2112;
    v17 = infoCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "MSASModel:didFindNewAccessControls:%@ inAlbum:%@ with infoDict:%@", &v12, 0x20u);
  }

  [PLCloudSharingInvitationChangeJob saveServerStateLocallyForSharingACLRelationships:controlsCopy changeType:1 info:infoCopy];
}

- (void)MSASModel:(id)model didFindInvitationChange:(id)change info:(id)info
{
  changeCopy = change;
  infoCopy = info;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = changeCopy;
    v12 = 2112;
    v13 = infoCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "MSASModel:didFindInvitationChange:%@ with infoDict:%@", &v10, 0x16u);
  }

  v9 = [NSArray arrayWithObject:changeCopy];
  [PLCloudSharingInvitationChangeJob saveServerStateLocallyForSharingInvitationRelationships:v9 changeType:3 info:infoCopy];
}

- (void)MSASModel:(id)model didFindDeletedInvitation:(id)invitation info:(id)info
{
  invitationCopy = invitation;
  infoCopy = info;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = invitationCopy;
    v12 = 2112;
    v13 = infoCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "MSASModel:didFindDeletedInvitation:%@ with infoDict:%@", &v10, 0x16u);
  }

  v9 = [NSArray arrayWithObject:invitationCopy];
  [PLCloudSharingInvitationChangeJob saveServerStateLocallyForSharingInvitationRelationships:v9 changeType:2 info:infoCopy];
}

- (void)MSASModel:(id)model didFindNewInvitation:(id)invitation info:(id)info
{
  invitationCopy = invitation;
  infoCopy = info;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = invitationCopy;
    v11 = 2112;
    v12 = infoCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "MSASModel:didFindNewInvitation:%@ with infoDict:%@", &v9, 0x16u);
  }
}

- (void)MSASModel:(id)model didRequestDerivativesForAssetCollections:(id)collections specifications:(id)specifications info:(id)info completionBlock:(id)block
{
  modelCopy = model;
  collectionsCopy = collections;
  specificationsCopy = specifications;
  infoCopy = info;
  blockCopy = block;
  v14 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v69 = collectionsCopy;
    v70 = 2112;
    v71 = specificationsCopy;
    v72 = 2112;
    v73 = infoCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "MSASModel:didRequestDerivativesForAssetCollections:%@ \n specifications:%@ \n info %@", buf, 0x20u);
  }

  v46 = infoCopy;

  [PLPhotoSharingHelper writeUploadDebugBreadcrumbForAssetCollections:collectionsCopy state:110 error:0];
  Current = CFAbsoluteTimeGetCurrent();
  v16 = objc_alloc_init(NSFileManager);
  v53 = [[NSMutableArray alloc] initWithArray:collectionsCopy];
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
  [specificationsCopy enumerateObjectsUsingBlock:v65];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = collectionsCopy;
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
        isPhotoIris = [v22 isPhotoIris];
        assets = [v22 assets];
        v25 = [assets count];

        if (v25 < 2)
        {
          goto LABEL_24;
        }

        if (!isPhotoIris)
        {
          assets3 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(assets3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, assets3, OS_LOG_TYPE_DEFAULT, "Warning: got an MSASCollection with more than one asset, will select last one", buf, 2u);
          }

LABEL_23:

LABEL_24:
          assets2 = [v22 assets];
          lastObject = [assets2 lastObject];

          goto LABEL_25;
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        assets3 = [v22 assets];
        v27 = [assets3 countByEnumeratingWithState:&v57 objects:v76 count:16];
        if (!v27)
        {
          goto LABEL_23;
        }

        v28 = v27;
        v29 = specificationsCopy;
        lastObject = 0;
        v31 = *v58;
        do
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v58 != v31)
            {
              objc_enumerationMutation(assets3);
            }

            v33 = *(*(&v57 + 1) + 8 * j);
            if (([v33 isVideo] & 1) == 0)
            {
              v34 = v33;

              lastObject = v34;
            }
          }

          v28 = [assets3 countByEnumeratingWithState:&v57 objects:v76 count:16];
        }

        while (v28);

        specificationsCopy = v29;
        v20 = v48;
        if (!lastObject)
        {
          goto LABEL_24;
        }

LABEL_25:
        path = [lastObject path];
        if ([v20 fileExistsAtPath:path])
        {
          [v22 setMetadataValue:0 forKey:v51];
          isVideo = [v22 isVideo];
          v38 = [v22 isVideo] | isPhotoIris;
          v39 = +[NSMutableArray array];
          if (v38)
          {
            v40 = [PLPhotoSharingHelper videoDerivativesForAssetCollection:v22 withSpecifications:v49];
            if ([v40 count])
            {
              [v39 addObjectsFromArray:v40];
            }
          }

          if ((isVideo & 1) == 0)
          {
            v41 = [PLPhotoSharingHelper derivativesForMasterAsset:lastObject withSpecifications:v50];
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
            v69 = path;
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

  blockCopy[2](blockCopy, v53, v52, v46);
  [PLPhotoSharingHelper writeUploadDebugBreadcrumbForAssetCollections:v53 state:120 error:0];
}

- (void)MSASModel:(id)model didFinishAddingAssetCollection:(id)collection toAlbum:(id)album error:(id)error
{
  collectionCopy = collection;
  albumCopy = album;
  errorCopy = error;
  v12 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    selfCopy = collectionCopy;
    v17 = 2112;
    v18 = albumCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "MSASModel:didFinishAddingAssetCollection:%@ toAlbum:%@ error:%@", &v15, 0x20u);
  }

  v13 = [NSArray arrayWithObject:collectionCopy];
  [PLPhotoSharingHelper writeUploadDebugBreadcrumbForAssetCollections:v13 state:199 error:errorCopy];

  if (errorCopy)
  {
    v14 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138413058;
      selfCopy = self;
      v17 = 2112;
      v18 = collectionCopy;
      v19 = 2112;
      v20 = albumCopy;
      v21 = 2112;
      v22 = errorCopy;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%@ Failed to add asset collection %@ toAlbum:%@ error:%@", &v15, 0x2Au);
    }
  }

  else
  {
    v14 = +[PLPhotoSharingHelper sharingPersonID];
    [PLCloudSharedAssetSaveJob replaceRecentlyUploadedOriginalWithDerivativeForCollection:collectionCopy inAlbum:albumCopy personID:v14];
  }
}

- (void)MSASModel:(id)model didFinishRetrievingAsset:(id)asset inAlbum:(id)album error:(id)error
{
  modelCopy = model;
  assetCopy = asset;
  albumCopy = album;
  errorCopy = error;
  path = [assetCopy path];
  assetCollectionGUID = [assetCopy assetCollectionGUID];
  focusAssetCollectionGUID = [modelCopy focusAssetCollectionGUID];
  v16 = focusAssetCollectionGUID;
  if (focusAssetCollectionGUID)
  {
    v17 = [focusAssetCollectionGUID isEqualToString:assetCollectionGUID];
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
    v52 = assetCollectionGUID;
    v53 = 2112;
    v54 = assetCopy;
    v55 = 2112;
    v56 = albumCopy;
    v57 = 2112;
    v58 = errorCopy;
    v19 = v50;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%@ MSASModel:didFinishRetrievingAsset:(collectionGUID:%@)%@ inAlbum:%@ error:%@", buf, 0x34u);
  }

  if (assetCollectionGUID)
  {
    v45 = v17;
    mediaAssetType = [assetCopy mediaAssetType];
    if (mediaAssetType == &dword_0 + 2)
    {
      v21 = 220;
    }

    else
    {
      v21 = 221;
    }

    v47 = errorCopy;
    [albumCopy GUID];
    v22 = v46 = path;
    [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:assetCollectionGUID albumGUID:v22 content:assetCopy state:v21 error:errorCopy];

    path = v46;
    if (v46)
    {
      v23 = [modelCopy assetCollectionWithGUID:assetCollectionGUID];
      if (!v23)
      {
        v24 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v50 = assetCollectionGUID;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "ERROR: unable to find asset collection for GUID %@, skipping saving", buf, 0xCu);
        }

        goto LABEL_33;
      }

      v24 = [PLCloudSharedAssetSaveJob pathForInFlightAssetCollectionWithGUID:assetCollectionGUID mediaAssetType:mediaAssetType];
      if (!v24)
      {
        v29 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v50 = assetCopy;
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
          gUID = v38;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            path = v46;
            v50 = v46;
            v51 = 2112;
            v52 = v24;
            v53 = 2112;
            v29 = v41;
            v54 = v41;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "ERROR : couldn't copy MMCS transient file %@ to inflight file %@: %@", buf, 0x20u);
            errorCopy = v47;
            goto LABEL_31;
          }

LABEL_30:
          path = v46;
          errorCopy = v47;
          v29 = v41;
LABEL_31:

LABEL_32:
LABEL_33:

          goto LABEL_34;
        }
      }

      gUID = [assetCopy GUID];
      v32 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        gUID2 = [albumCopy GUID];
        *buf = 138413058;
        v50 = v24;
        v51 = 2112;
        v52 = assetCollectionGUID;
        v53 = 2112;
        v54 = gUID;
        v55 = 2112;
        v56 = gUID2;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "about to PLCloudSharedAssetSaveJob saveCloudSharedAssetAtPath %@ collectionGUID %@  guidOfCurrentAssetInCollection %@ albumGUID %@", buf, 0x2Au);
      }

      mediaAssetType2 = [assetCopy mediaAssetType];
      [albumCopy GUID];
      v40 = albumCopy;
      v36 = v35 = v24;
      v37 = +[PLPhotoSharingHelper sharingPersonID];
      LOBYTE(v39) = v45;
      [PLCloudSharedAssetSaveJob saveCloudSharedAssetAtPath:v35 forAssetCollection:v23 mediaAssetType:mediaAssetType2 albumGUID:v36 personID:v37 info:0 shouldPrioritize:v39];

      v24 = v35;
      albumCopy = v40;
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

- (void)MSASModel:(id)model didFindDeletedAssetCollection:(id)collection inAlbum:(id)album info:(id)info
{
  collectionCopy = collection;
  albumCopy = album;
  infoCopy = info;
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
    v30 = collectionCopy;
    v31 = 2112;
    v32 = albumCopy;
    v33 = 2112;
    v34 = infoCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%@ %@ %@ album %@ info %@", &v25, 0x34u);
  }

  v16 = [infoCopy objectForKey:kMSASInfoEventIsDueToAlbumDeletionKey];

  gUID = [collectionCopy GUID];

  if (gUID && !v16)
  {
    v18 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      gUID2 = [collectionCopy GUID];
      v25 = 138412546;
      v26 = gUID2;
      v27 = 2112;
      v28 = albumCopy;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "about to PLCloudSharedAssetSaveJob deleteCloudSharedAssetsWithCloudGUIDs %@ inAlbum:%@", &v25, 0x16u);
    }

    gUID3 = [collectionCopy GUID];
    v21 = [NSArray arrayWithObject:gUID3];
    [PLCloudSharedAssetSaveJob deleteCloudSharedAssetsWithCloudGUIDs:v21 inAlbum:albumCopy info:infoCopy];

    gUID4 = [collectionCopy GUID];
    gUID5 = [albumCopy GUID];
    gUID6 = [collectionCopy GUID];
    [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:gUID4 albumGUID:gUID5 content:gUID6 state:300 error:0];
  }
}

- (void)MSASModel:(id)model didDeleteAllContentsOfAlbum:(id)album
{
  albumCopy = album;
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
    v16 = albumCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v11, 0x20u);
  }

  v10 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "===== IMPLEMENT ME =====", &v11, 2u);
  }
}

- (void)MSASModel:(id)model didFindAssetCollectionChange:(id)change inAlbum:(id)album
{
  changeCopy = change;
  albumCopy = album;
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
    v19 = changeCopy;
    v20 = 2112;
    v21 = albumCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ %@ album %@", &v14, 0x2Au);
  }

  v13 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "===== IMPLEMENT ME =====", &v14, 2u);
  }
}

- (void)MSASModel:(id)model didFindNewAssetCollections:(id)collections inAlbum:(id)album info:(id)info
{
  collectionsCopy = collections;
  albumCopy = album;
  infoCopy = info;
  v10 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [collectionsCopy valueForKey:@"GUID"];
    *buf = 138413058;
    v40 = v11;
    v41 = 2112;
    v42 = v13;
    v43 = 2112;
    v44 = albumCopy;
    v45 = 2112;
    v46 = infoCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%@ MSASModel:didFindNewAssetCollections:%@ inAlbum:%@ info:%@", buf, 0x2Au);
  }

  v32 = infoCopy;

  v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [collectionsCopy count]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = collectionsCopy;
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
        metadata = [v21 metadata];
        v23 = [metadata objectForKey:v19];

        if (v23)
        {
          gUID2 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(gUID2, OS_LOG_TYPE_DEFAULT))
          {
            gUID = [v21 GUID];
            *buf = 138412290;
            v40 = gUID;
            _os_log_impl(&dword_0, gUID2, OS_LOG_TYPE_DEFAULT, "we just enqueued collection GUID %@, skipping", buf, 0xCu);
          }
        }

        else
        {
          [v14 addObject:v21];
          gUID2 = [v21 GUID];
          gUID3 = [albumCopy GUID];
          [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:gUID2 albumGUID:gUID3 content:v21 state:200 error:0];
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
    gUID4 = [albumCopy GUID];
    *buf = 138412802;
    v40 = v29;
    v41 = 2112;
    v42 = gUID4;
    v43 = 2112;
    v44 = v27;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, " calling PLCloudSharedAssetSaveJob processMetadataFromClientProcessForAssetCollections:%@ inAlbum:%@ personID:%@", buf, 0x20u);
  }

  v31 = +[PLPhotoSharingHelper sharingPersonID];
  [PLCloudSharedAssetSaveJob processMetadataForAssetCollections:v14 inAlbum:albumCopy personID:v31 info:v32];
}

- (void)MSASModel:(id)model didFinishDeletingAlbum:(id)album error:(id)error
{
  albumCopy = album;
  errorCopy = error;
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
    v18 = albumCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ %@ error:%@", &v13, 0x2Au);
  }
}

- (void)MSASModel:(id)model didFinishModifyingAlbumMetadata:(id)metadata error:(id)error
{
  metadataCopy = metadata;
  errorCopy = error;
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
    v18 = metadataCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ %@ error:%@", &v13, 0x2Au);
  }
}

- (void)MSASModel:(id)model didFinishAddingAlbum:(id)album error:(id)error
{
  albumCopy = album;
  errorCopy = error;
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
    v18 = albumCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ %@ error:%@", &v13, 0x2Au);
  }

  [PLPhotoSharingHelper sendPendingInvitationsForNewlyCreatedAlbum:albumCopy];
}

- (void)MSASModel:(id)model didUnsubscribeFromAlbum:(id)album
{
  albumCopy = album;
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
    v16 = albumCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v11, 0x20u);
  }

  v10 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "===== IMPLEMENT ME =====", &v11, 2u);
  }
}

- (void)MSASModel:(id)model didSubscribeToAlbum:(id)album
{
  albumCopy = album;
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
    v16 = albumCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v11, 0x20u);
  }

  v10 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "===== IMPLEMENT ME =====", &v11, 2u);
  }
}

- (void)MSASModel:(id)model didFindAlbumMetadataChange:(id)change info:(id)info
{
  changeCopy = change;
  infoCopy = info;
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
    v18 = changeCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v13, 0x20u);
  }

  [PLPhotoSharingHelper updateLocalAlbumMetadataForMSASAlbum:changeCopy info:infoCopy];
}

- (void)MSASModel:(id)model didFindDeletedAlbum:(id)album
{
  albumCopy = album;
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
    v17 = albumCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v12, 0x20u);
  }

  gUID = [albumCopy GUID];
  v11 = [NSArray arrayWithObject:gUID];
  [PLPhotoSharingHelper deleteLocalAlbumsForMSASAlbumsWithGUIDs:v11];
}

- (void)MSASModel:(id)model didFindNewAlbum:(id)album
{
  albumCopy = album;
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
    v15 = albumCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v10, 0x20u);
  }

  [PLPhotoSharingHelper updateLocalAlbumMetadataForMSASAlbum:albumCopy info:0];
}

- (void)MSASModelDidDeleteAllAlbumsInAlbumList:(id)list
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

- (void)MSASModelWillBeForgotten:(id)forgotten
{
  personID = [forgotten personID];
  if (personID)
  {
    v4 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = personID;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "MSASModelWillBeForgotten personID %@", &v5, 0xCu);
    }

    [qword_10E70 removeObjectForKey:personID];
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

  model = [(PLPhotoSharingPlugin *)self model];
  [model removeObserver:self];

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
    photoLibrary = [(PLPhotoSharingPlugin *)v2 photoLibrary];
    assetsdClient = [photoLibrary assetsdClient];
    libraryClient = [assetsdClient libraryClient];
    v10 = 0;
    v6 = [libraryClient openPhotoLibraryDatabaseWithoutProgressIfNeededWithOptions:0 error:&v10];
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

+ (void)didFindDeletedAlbumWithGUID:(id)d inviterAddress:(id)address
{
  dCopy = d;
  addressCopy = address;
  v7 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = dCopy;
    v13 = 2112;
    v14 = addressCopy;
    v8 = v10;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%@ deleting album with GUID %@ inviterAddress %@", &v9, 0x20u);
  }

  [PLPhotoSharingHelper deleteLocalAlbumsForMSASAlbumsWithGUID:dCopy inviterAddress:addressCopy];
}

+ (void)didFindNewAlbum:(id)album
{
  albumCopy = album;
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
    v17 = albumCopy;
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
    [PLPhotoSharingHelper updateLocalAlbumMetadataForMSASAlbum:albumCopy info:0];
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

+ (id)delegatePluginForPersonID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = [qword_10E70 objectForKey:dCopy];
    if (!v4)
    {
      v4 = objc_alloc_init(PLPhotoSharingPlugin);
      [(PLPhotoSharingPlugin *)v4 setPersonID:dCopy];
      v5 = qword_10E70;
      if (!qword_10E70)
      {
        v6 = objc_alloc_init(NSMutableDictionary);
        v7 = qword_10E70;
        qword_10E70 = v6;

        v5 = qword_10E70;
      }

      [v5 setObject:v4 forKey:dCopy];
      v8 = [[MSASServerSideModel alloc] initWithPersonID:dCopy];
      [(PLPhotoSharingPlugin *)v4 setModel:v8];
      [v8 addObserver:v4];
    }

    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = dCopy;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "delegatePluginForPersonID returning plugin %@ for personID %@", &v12, 0x16u);
    }

    model = [(PLPhotoSharingPlugin *)v4 model];
  }

  else
  {
    v4 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_0, &v4->super, OS_LOG_TYPE_ERROR, "delegatePluginForPersonID invoked with nil personID", &v12, 2u);
    }

    model = 0;
  }

  return model;
}

@end