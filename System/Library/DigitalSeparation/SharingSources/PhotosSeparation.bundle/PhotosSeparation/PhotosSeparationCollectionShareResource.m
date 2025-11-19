@interface PhotosSeparationCollectionShareResource
+ (id)fetchCollectionShareResourcesInLibrary:(id)a3 error:(id *)a4;
- (PhotosSeparationCollectionShareResource)initWithCollectionShare:(id)a3;
- (int64_t)visibility;
- (void)_callCompletion:(id)a3 withErrorCode:(unint64_t)a4 description:(id)a5 underlyingError:(id)a6;
- (void)stopSharingToParticipant:(id)a3 withCompletion:(id)a4;
- (void)stopSharingWithCompletion:(id)a3;
- (void)updateVisibility:(int64_t)a3 completion:(id)a4;
@end

@implementation PhotosSeparationCollectionShareResource

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
  if ([(PhotosSeparationCollectionShareResource *)self isOwnedByCurrentUser])
  {
    v7 = [(PHCollectionShare *)self->_collectionShare photoLibrary];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_3FAC;
    v10[3] = &unk_8428;
    v10[4] = self;
    v10[5] = a3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_4020;
    v8[3] = &unk_83D0;
    v8[4] = self;
    v9 = v6;
    [v7 performChanges:v10 completionHandler:v8];
  }

  else
  {
    [(PhotosSeparationCollectionShareResource *)self _callCompletion:v6 withErrorCode:512 description:@"Failed to stop public sharing collection share link" underlyingError:0];
  }
}

- (void)stopSharingToParticipant:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PhotosSeparationCollectionShareResource *)self isOwnedByCurrentUser];
  v9 = [(PHCollectionShare *)self->_collectionShare photoLibrary];
  if (v8)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_4220;
    v18[3] = &unk_83F8;
    v18[4] = self;
    v19 = v6;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_42FC;
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
    v15[2] = sub_4318;
    v15[3] = &unk_83A0;
    v15[4] = self;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_43B0;
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
  v5 = [(PhotosSeparationCollectionShareResource *)self isOwnedByCurrentUser];
  v6 = [(PHCollectionShare *)self->_collectionShare photoLibrary];
  if (v5)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_4578;
    v21[3] = &unk_83A0;
    v21[4] = self;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_4618;
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
    v18[2] = sub_4634;
    v18[3] = &unk_83A0;
    v18[4] = self;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_46CC;
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
    v3 = [(PHCollectionShare *)self->_collectionShare localIdentifier];
    v11 = v3;
    v4 = [NSArray arrayWithObjects:&v11 count:1];
    v5 = [(PHCollectionShare *)self->_collectionShare photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];
    v7 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v4 options:v6];

    v8 = [v7 firstObject];
    collectionShare = self->_collectionShare;
    self->_collectionShare = v8;

    self->_visibilityIsStale = 0;
  }

  if ([(PHCollectionShare *)self->_collectionShare publicURLState]== 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (PhotosSeparationCollectionShareResource)initWithCollectionShare:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v24 = self;
    v7 = [v5 photoLibrary];
    v8 = [v7 librarySpecificFetchOptions];
    v9 = [PHShareParticipant fetchParticipantsInShare:v6 options:v8];

    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = [v16 role];
          v18 = [v16 permission];
          if ([v16 acceptanceStatus] == 1 || objc_msgSend(v16, "acceptanceStatus") == 2)
          {
            v19 = [[PhotosSeparationCollectionShareParticipant alloc] initWithParticipant:v16 isOwner:v17 == 1 readwrite:v18 == 3];
            if (v19)
            {
              [v10 addObject:v19];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    v25.receiver = v24;
    v25.super_class = PhotosSeparationCollectionShareResource;
    v20 = [(PhotosSeparationSharedResource *)&v25 initWithParticipants:v10];
    v21 = v20;
    if (v20)
    {
      objc_storeStrong(&v20->_collectionShare, a3);
    }

    self = v21;

    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)fetchCollectionShareResourcesInLibrary:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if (([v4 isSharedAlbumsEnabled] & 1) != 0 || (objc_msgSend(v4, "photoLibrary"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isUnitTesting"), v6, v7))
  {
    v8 = [v4 librarySpecificFetchOptions];
    v9 = [PHAssetCollection fetchAssetCollectionsWithType:12 subtype:102 options:v8];

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
          v16 = [PhotosSeparationCollectionShareResource alloc];
          v17 = [(PhotosSeparationCollectionShareResource *)v16 initWithCollectionShare:v15, v19];
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