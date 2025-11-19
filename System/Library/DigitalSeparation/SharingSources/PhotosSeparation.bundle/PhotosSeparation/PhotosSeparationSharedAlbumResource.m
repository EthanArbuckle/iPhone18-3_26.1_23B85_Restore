@interface PhotosSeparationSharedAlbumResource
+ (id)fetchSharedAlbumResourcesInLibrary:(id)a3 error:(id *)a4;
- (PhotosSeparationSharedAlbumResource)initWithSharedAlbum:(id)a3;
- (int64_t)visibility;
- (void)_callCompletion:(id)a3 withErrorCode:(unint64_t)a4 description:(id)a5 underlyingError:(id)a6;
- (void)stopSharingToParticipant:(id)a3 withCompletion:(id)a4;
- (void)stopSharingWithCompletion:(id)a3;
- (void)updateVisibility:(int64_t)a3 completion:(id)a4;
@end

@implementation PhotosSeparationSharedAlbumResource

- (void)_callCompletion:(id)a3 withErrorCode:(unint64_t)a4 description:(id)a5 underlyingError:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      v15[0] = NSLocalizedDescriptionKey;
      v15[1] = NSUnderlyingErrorKey;
      v16[0] = v10;
      v16[1] = v11;
      v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
      v14 = [NSError errorWithDomain:@"com.apple.photos.PhotosSeparation" code:a4 userInfo:v13];
    }

    else
    {
      v14 = 0;
    }

    v9[2](v9, v14);
  }
}

- (void)updateVisibility:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  self->_visibilityIsStale = 1;
  if ([(PhotosSeparationSharedAlbumResource *)self isOwnedByCurrentUser])
  {
    v7 = [(PHCloudSharedAlbum *)self->_sharedAlbum photoLibrary];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_2E80;
    v10[3] = &unk_8428;
    v10[4] = self;
    v10[5] = a3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_2EF0;
    v8[3] = &unk_83D0;
    v8[4] = self;
    v9 = v6;
    [v7 performChanges:v10 completionHandler:v8];
  }

  else
  {
    [(PhotosSeparationSharedAlbumResource *)self _callCompletion:v6 withErrorCode:128 description:@"Failed to stop sharing public album link" underlyingError:0];
  }
}

- (void)stopSharingToParticipant:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PhotosSeparationSharedAlbumResource *)self isOwnedByCurrentUser];
  v9 = [(PHCloudSharedAlbum *)self->_sharedAlbum photoLibrary];
  if (v8)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_30F0;
    v18[3] = &unk_83F8;
    v18[4] = self;
    v19 = v6;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_31D0;
    v16[3] = &unk_83D0;
    v16[4] = self;
    v17 = v7;
    v10 = v7;
    [v9 performChanges:v18 completionHandler:v16];

    v11 = v19;
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_31EC;
    v15[3] = &unk_83A0;
    v15[4] = self;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_3228;
    v13[3] = &unk_83D0;
    v13[4] = self;
    v14 = v7;
    v12 = v7;
    [v9 performChanges:v15 completionHandler:v13];

    v11 = v14;
  }
}

- (void)stopSharingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PhotosSeparationSharedAlbumResource *)self isOwnedByCurrentUser];
  v6 = [(PHCloudSharedAlbum *)self->_sharedAlbum photoLibrary];
  if (v5)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_33F0;
    v21[3] = &unk_83A0;
    v21[4] = self;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_3458;
    v19[3] = &unk_83D0;
    v7 = &v20;
    v19[4] = self;
    v20 = v4;
    v8 = v4;
    v9 = v21;
    v10 = v19;
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_3474;
    v18[3] = &unk_83A0;
    v18[4] = self;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_34B0;
    v15 = &unk_83D0;
    v7 = &v17;
    v16 = self;
    v17 = v4;
    v11 = v4;
    v9 = v18;
    v10 = &v12;
  }

  [v6 performChanges:v9 completionHandler:{v10, v12, v13, v14, v15, v16}];
}

- (int64_t)visibility
{
  if (self->_visibilityIsStale)
  {
    v3 = [(PHCloudSharedAlbum *)self->_sharedAlbum localIdentifier];
    v11 = v3;
    v4 = [NSArray arrayWithObjects:&v11 count:1];
    v5 = [(PHCloudSharedAlbum *)self->_sharedAlbum photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];
    v7 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v4 options:v6];

    v8 = [v7 firstObject];
    sharedAlbum = self->_sharedAlbum;
    self->_sharedAlbum = v8;

    self->_visibilityIsStale = 0;
  }

  if ([(PHCloudSharedAlbum *)self->_sharedAlbum publicURLEnabled])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (PhotosSeparationSharedAlbumResource)initWithSharedAlbum:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    obj = a3;
    v7 = [v5 invitationRecords];
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
    v9 = [PhotosSeparationParticipant alloc];
    v10 = [v6 cloudOwnerEmail];
    v11 = [v6 cloudOwnerPhone];
    v12 = [(PhotosSeparationParticipant *)v9 initWithRole:1 permission:2 emailAddress:v10 phoneNumber:v11];

    v24 = v12;
    [v8 addObject:v12];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = -[PhotosSeparationSharedAlbumParticipant initWithInvitationRecord:isOwner:readwrite:]([PhotosSeparationSharedAlbumParticipant alloc], "initWithInvitationRecord:isOwner:readwrite:", *(*(&v26 + 1) + 8 * i), 0, [v6 isCloudMultipleContributorsEnabled]);
          if (v18)
          {
            [v8 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v25.receiver = self;
    v25.super_class = PhotosSeparationSharedAlbumResource;
    v19 = [(PhotosSeparationSharedResource *)&v25 initWithParticipants:v8];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_sharedAlbum, obj);
    }

    self = v20;

    v21 = self;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)fetchSharedAlbumResourcesInLibrary:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if (([v4 isSharedAlbumsEnabled] & 1) != 0 || (objc_msgSend(v4, "photoLibrary"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isUnitTesting"), v6, v7))
  {
    v8 = [v4 librarySpecificFetchOptions];
    v9 = [PHAssetCollection fetchAssetCollectionsWithType:1 subtype:101 options:v8];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [PhotosSeparationSharedAlbumResource alloc];
          v17 = [(PhotosSeparationSharedAlbumResource *)v16 initWithSharedAlbum:v15, v19];
          [v5 addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }

  return v5;
}

@end