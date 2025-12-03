@interface CLPhotosUtilities
+ (CLPhotosUtilities)sharedInstance;
- (id)_loadSharedAlbumsCloudIdentifiersFromLocalIdentifiers:(id)identifiers;
- (id)_loadSharedAlbumsLocalIdentifiers;
- (id)previewImageForSharedAlbum:(id)album;
- (id)sharedAlbums;
@end

@implementation CLPhotosUtilities

+ (CLPhotosUtilities)sharedInstance
{
  if (qword_10AD8 != -1)
  {
    sub_558C();
  }

  v3 = qword_10AD0;

  return v3;
}

- (id)_loadSharedAlbumsLocalIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_26E4;
  v10 = sub_26F4;
  v11 = objc_opt_new();
  v2 = [PHAssetCollection fetchAssetCollectionsWithType:1 subtype:101 options:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_26FC;
  v5[3] = &unk_C688;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_loadSharedAlbumsCloudIdentifiersFromLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = +[PHPhotoLibrary sharedPhotoLibrary];
  v22 = identifiersCopy;
  v5 = [v4 cloudIdentifierMappingsForLocalIdentifiers:identifiersCopy];

  v6 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v7 objectForKey:v12];
        error = [v13 error];

        if (error)
        {
          cloudIdentifier3 = CLFLogCommon();
          if (!os_log_type_enabled(cloudIdentifier3, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_15;
          }

          error2 = [v13 error];
          *buf = 138412546;
          v28 = v12;
          v29 = 2112;
          v30 = error2;
          _os_log_error_impl(&dword_0, cloudIdentifier3, OS_LOG_TYPE_ERROR, "Cloud ID Mapping for Local ID: %@, has an error: %@", buf, 0x16u);
          goto LABEL_12;
        }

        cloudIdentifier = [v13 cloudIdentifier];
        if (cloudIdentifier)
        {
          v18 = cloudIdentifier;
          cloudIdentifier2 = [v13 cloudIdentifier];
          stringValue = [cloudIdentifier2 stringValue];

          if (stringValue)
          {
            cloudIdentifier3 = [v13 cloudIdentifier];
            error2 = [cloudIdentifier3 stringValue];
            [v6 setValue:error2 forKey:v12];
LABEL_12:

            goto LABEL_15;
          }
        }

        cloudIdentifier3 = CLFLogCommon();
        if (os_log_type_enabled(cloudIdentifier3, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = v12;
          _os_log_error_impl(&dword_0, cloudIdentifier3, OS_LOG_TYPE_ERROR, "Cloud ID Mapping for Local ID: %@, has a nil cloud ID", buf, 0xCu);
        }

LABEL_15:
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)sharedAlbums
{
  _loadSharedAlbumsLocalIdentifiers = [(CLPhotosUtilities *)self _loadSharedAlbumsLocalIdentifiers];
  sharedAlbumsLocalIDMappings = self->_sharedAlbumsLocalIDMappings;
  self->_sharedAlbumsLocalIDMappings = _loadSharedAlbumsLocalIdentifiers;

  allKeys = [(NSDictionary *)self->_sharedAlbumsLocalIDMappings allKeys];
  v6 = [(CLPhotosUtilities *)self _loadSharedAlbumsCloudIdentifiersFromLocalIdentifiers:allKeys];
  sharedAlbumsCloudIDMappings = self->_sharedAlbumsCloudIDMappings;
  self->_sharedAlbumsCloudIDMappings = v6;

  v8 = objc_opt_new();
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v9 = qword_10AE0;
  v29 = qword_10AE0;
  if (!qword_10AE0)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_33E8;
    v24 = &unk_C790;
    v25 = &v26;
    sub_33E8(&v21);
    v9 = v27[3];
  }

  v10 = v9;
  _Block_object_dispose(&v26, 8);
  v11 = [v9 applicationWithBundleIdentifier:AX_PhotosBundleName];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v12 = qword_10AF0;
  v29 = qword_10AF0;
  if (!qword_10AF0)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_35B0;
    v24 = &unk_C790;
    v25 = &v26;
    sub_35B0(&v21);
    v12 = v27[3];
  }

  v13 = v12;
  _Block_object_dispose(&v26, 8);
  sharedGuard = [v12 sharedGuard];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_2CC0;
  v19[3] = &unk_C6F0;
  v19[4] = self;
  v15 = v8;
  v20 = v15;
  [sharedGuard authenticateForSubject:v11 completion:v19];

  v16 = v20;
  v17 = v15;

  return v15;
}

- (id)previewImageForSharedAlbum:(id)album
{
  albumCopy = album;
  v4 = objc_opt_new();
  localIdentifier = [albumCopy localIdentifier];
  v28 = localIdentifier;
  v6 = [NSArray arrayWithObjects:&v28 count:1];
  v7 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v6 options:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_323C;
  v20[3] = &unk_C740;
  v8 = v4;
  v21 = v8;
  [v7 enumerateObjectsUsingBlock:v20];

  v9 = objc_opt_new();
  v10 = [[NSSortDescriptor alloc] initWithKey:@"creationDate" ascending:0];
  v27 = v10;
  v11 = [NSArray arrayWithObjects:&v27 count:1];
  [v9 setSortDescriptors:v11];

  v12 = [PHAsset fetchAssetsWithLocalIdentifiers:v8 options:v9];
  if ([v12 count])
  {
    v13 = objc_alloc_init(PHImageRequestOptions);
    [v13 setDeliveryMode:1];
    [v13 setSynchronous:1];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x3032000000;
    v24 = sub_26E4;
    v25 = sub_26F4;
    v26 = 0;
    v14 = +[PHImageManager defaultManager];
    firstObject = [v12 firstObject];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_336C;
    v19[3] = &unk_C768;
    v19[4] = &buf;
    [v14 requestImageForAsset:firstObject targetSize:0 contentMode:v13 options:v19 resultHandler:{256.0, 256.0}];

    v16 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = CLFLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      localIdentifier2 = [albumCopy localIdentifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = localIdentifier2;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "No images found for shared album with Local ID: %@", &buf, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

@end