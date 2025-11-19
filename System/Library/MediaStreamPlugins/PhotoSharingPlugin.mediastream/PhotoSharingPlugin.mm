void sub_1254(uint64_t a1)
{
  v2 = [*(a1 + 32) GUID];
  v27 = v2;
  v3 = [NSArray arrayWithObjects:&v27 count:1];
  v4 = [PLManagedAsset cloudSharedAssetsWithGUIDs:v3 inLibrary:*(a1 + 40)];
  v5 = [v4 lastObject];

  v6 = [v5 cloudLastViewedCommentDate];
  v7 = v6;
  if (v5)
  {
    [v6 timeIntervalSinceDate:*(a1 + 48)];
    if (fabs(v8) > 1.0)
    {
      v9 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 56);
        v11 = objc_opt_class();
        v12 = *(a1 + 48);
        v13 = *(a1 + 32);
        v14 = v11;
        v15 = [v13 GUID];
        v16 = [*(a1 + 56) albumTitleAndGUID:*(a1 + 64)];
        v17 = 138413314;
        v18 = v11;
        v19 = 2112;
        v20 = v7;
        v21 = 2112;
        v22 = v12;
        v23 = 2112;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@(Last-viewed management): currentLastViewedCommentDate %@ didFindLastViewedCommentDate %@ forAssetCollection:%@ inAlbum:%@", &v17, 0x34u);
      }

      [PLCloudSharingViewedStateChangeJob setLastViewedCommentDate:*(a1 + 48) forAssetCollection:*(a1 + 32) inAlbum:*(a1 + 64)];
    }
  }
}

void sub_1534(uint64_t a1)
{
  v2 = [*(a1 + 32) GUID];
  v22 = v2;
  v3 = [NSArray arrayWithObjects:&v22 count:1];
  v4 = [PLManagedAsset cloudSharedAssetsWithGUIDs:v3 inLibrary:*(a1 + 40)];
  v5 = [v4 lastObject];

  if (v5 && *(a1 + 64) != [v5 cloudHasUnseenComments])
  {
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 GUID];
      v12 = *(a1 + 64);
      v13 = [*(a1 + 48) albumTitleAndGUID:*(a1 + 56)];
      v14 = 138413058;
      v15 = v8;
      v16 = 2112;
      v17 = v11;
      v18 = 1024;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@(Last-viewed management): didMarkAssetCollection %@ asHavingUnreadComments:%i inAlbum:%@", &v14, 0x26u);
    }

    [PLCloudSharingViewedStateChangeJob markAssetCollection:*(a1 + 32) asHavingUnreadComments:*(a1 + 64) inAlbum:*(a1 + 56)];
  }
}

void sub_17C8(uint64_t a1)
{
  v2 = [*(a1 + 32) GUID];
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [PLCollectionShare shareWithScopeIdentifier:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v4 && *(a1 + 56) != [v4 unseenAssetsCount])
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = objc_opt_class();
      v8 = *(a1 + 56);
      v9 = *(a1 + 48);
      v10 = *(a1 + 32);
      v11 = v7;
      v12 = [v9 albumTitleAndGUID:v10];
      v13 = 138412802;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@(Last-viewed management): didUpdateUnviewedAssetCollectionCount %i forAlbum:%@", &v13, 0x1Cu);
    }

    [PLCloudSharingViewedStateChangeJob updateUnviewedAssetCollectionCount:*(a1 + 56) forAlbum:*(a1 + 32)];
  }
}

void sub_1A28(uint64_t a1)
{
  v2 = [*(a1 + 32) GUID];
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [PLCollectionShare shareWithScopeIdentifier:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v4 && *(a1 + 56) != ([v4 unseenContentState] == 2))
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = objc_opt_class();
      v8 = *(a1 + 48);
      v9 = *(a1 + 32);
      v10 = v7;
      v11 = [v8 albumTitleAndGUID:v9];
      v12 = *(a1 + 56);
      v13 = 138412802;
      v14 = v7;
      v15 = 2112;
      v16 = v11;
      v17 = 1024;
      v18 = v12;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@(Last-viewed management): didMarkAlbum %@ asHavingUnreadContent:%i", &v13, 0x1Cu);
    }

    [PLCloudSharingViewedStateChangeJob markAlbum:*(a1 + 32) asHavingUnseenContent:*(a1 + 56)];
  }
}

void sub_2EE4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
LABEL_5:
    [v4 addObject:v3];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 40);
    goto LABEL_5;
  }

  v5 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Unknown derivative specification: %@", &v6, 0xCu);
  }

LABEL_9:
}