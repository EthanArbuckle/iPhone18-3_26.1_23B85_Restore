@interface PhotosSeparationSharedAlbumResource
+ (id)fetchSharedAlbumResourcesInLibrary:(id)library error:(id *)error;
- (PhotosSeparationSharedAlbumResource)initWithSharedAlbum:(id)album;
- (int64_t)visibility;
- (void)_callCompletion:(id)completion withErrorCode:(unint64_t)code description:(id)description underlyingError:(id)error;
- (void)stopSharingToParticipant:(id)participant withCompletion:(id)completion;
- (void)stopSharingWithCompletion:(id)completion;
- (void)updateVisibility:(int64_t)visibility completion:(id)completion;
@end

@implementation PhotosSeparationSharedAlbumResource

- (void)_callCompletion:(id)completion withErrorCode:(unint64_t)code description:(id)description underlyingError:(id)error
{
  completionCopy = completion;
  descriptionCopy = description;
  errorCopy = error;
  v12 = errorCopy;
  if (completionCopy)
  {
    if (errorCopy)
    {
      v15[0] = NSLocalizedDescriptionKey;
      v15[1] = NSUnderlyingErrorKey;
      v16[0] = descriptionCopy;
      v16[1] = errorCopy;
      v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
      v14 = [NSError errorWithDomain:@"com.apple.photos.PhotosSeparation" code:code userInfo:v13];
    }

    else
    {
      v14 = 0;
    }

    completionCopy[2](completionCopy, v14);
  }
}

- (void)updateVisibility:(int64_t)visibility completion:(id)completion
{
  completionCopy = completion;
  self->_visibilityIsStale = 1;
  if ([(PhotosSeparationSharedAlbumResource *)self isOwnedByCurrentUser])
  {
    photoLibrary = [(PHCloudSharedAlbum *)self->_sharedAlbum photoLibrary];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_2E80;
    v10[3] = &unk_8428;
    v10[4] = self;
    v10[5] = visibility;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_2EF0;
    v8[3] = &unk_83D0;
    v8[4] = self;
    v9 = completionCopy;
    [photoLibrary performChanges:v10 completionHandler:v8];
  }

  else
  {
    [(PhotosSeparationSharedAlbumResource *)self _callCompletion:completionCopy withErrorCode:128 description:@"Failed to stop sharing public album link" underlyingError:0];
  }
}

- (void)stopSharingToParticipant:(id)participant withCompletion:(id)completion
{
  participantCopy = participant;
  completionCopy = completion;
  isOwnedByCurrentUser = [(PhotosSeparationSharedAlbumResource *)self isOwnedByCurrentUser];
  photoLibrary = [(PHCloudSharedAlbum *)self->_sharedAlbum photoLibrary];
  if (isOwnedByCurrentUser)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_30F0;
    v18[3] = &unk_83F8;
    v18[4] = self;
    v19 = participantCopy;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_31D0;
    v16[3] = &unk_83D0;
    v16[4] = self;
    v17 = completionCopy;
    v10 = completionCopy;
    [photoLibrary performChanges:v18 completionHandler:v16];

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
    v14 = completionCopy;
    v12 = completionCopy;
    [photoLibrary performChanges:v15 completionHandler:v13];

    v11 = v14;
  }
}

- (void)stopSharingWithCompletion:(id)completion
{
  completionCopy = completion;
  isOwnedByCurrentUser = [(PhotosSeparationSharedAlbumResource *)self isOwnedByCurrentUser];
  photoLibrary = [(PHCloudSharedAlbum *)self->_sharedAlbum photoLibrary];
  if (isOwnedByCurrentUser)
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
    v20 = completionCopy;
    v8 = completionCopy;
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
    selfCopy = self;
    v17 = completionCopy;
    v11 = completionCopy;
    v9 = v18;
    v10 = &v12;
  }

  [photoLibrary performChanges:v9 completionHandler:{v10, v12, v13, v14, v15, selfCopy}];
}

- (int64_t)visibility
{
  if (self->_visibilityIsStale)
  {
    localIdentifier = [(PHCloudSharedAlbum *)self->_sharedAlbum localIdentifier];
    v11 = localIdentifier;
    v4 = [NSArray arrayWithObjects:&v11 count:1];
    photoLibrary = [(PHCloudSharedAlbum *)self->_sharedAlbum photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v7 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v4 options:librarySpecificFetchOptions];

    firstObject = [v7 firstObject];
    sharedAlbum = self->_sharedAlbum;
    self->_sharedAlbum = firstObject;

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

- (PhotosSeparationSharedAlbumResource)initWithSharedAlbum:(id)album
{
  albumCopy = album;
  v6 = albumCopy;
  if (albumCopy)
  {
    obj = album;
    invitationRecords = [albumCopy invitationRecords];
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [invitationRecords count]);
    v9 = [PhotosSeparationParticipant alloc];
    cloudOwnerEmail = [v6 cloudOwnerEmail];
    cloudOwnerPhone = [v6 cloudOwnerPhone];
    v12 = [(PhotosSeparationParticipant *)v9 initWithRole:1 permission:2 emailAddress:cloudOwnerEmail phoneNumber:cloudOwnerPhone];

    v24 = v12;
    [v8 addObject:v12];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = invitationRecords;
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

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)fetchSharedAlbumResourcesInLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  v5 = +[NSMutableArray array];
  if (([libraryCopy isSharedAlbumsEnabled] & 1) != 0 || (objc_msgSend(libraryCopy, "photoLibrary"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isUnitTesting"), v6, v7))
  {
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    v9 = [PHAssetCollection fetchAssetCollectionsWithType:1 subtype:101 options:librarySpecificFetchOptions];

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