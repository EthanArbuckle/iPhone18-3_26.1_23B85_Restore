@interface PhotosSeparationSharedLibraryResource
+ (id)fetchSharedLibraryResourcesInLibrary:(id)a3 error:(id *)a4;
- (BOOL)isOwnedByCurrentUser;
- (PhotosSeparationSharedLibraryResource)initWithLibraryScope:(id)a3;
- (void)stopSharingToParticipant:(id)a3 withCompletion:(id)a4;
- (void)stopSharingWithCompletion:(id)a3;
@end

@implementation PhotosSeparationSharedLibraryResource

- (void)stopSharingToParticipant:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1D48;
  v20[3] = &unk_8300;
  v7 = a4;
  v21 = v7;
  v8 = objc_retainBlock(v20);
  v9 = [(PhotosSeparationSharedLibraryResource *)self isOwnedByCurrentUser];
  libraryScope = self->_libraryScope;
  if (v9)
  {
    v11 = [v6 representedObject];
    v22 = v11;
    v12 = [NSArray arrayWithObjects:&v22 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1E50;
    v18[3] = &unk_8328;
    v13 = &v19;
    v19 = v8;
    v14 = v8;
    [(PHLibraryScope *)libraryScope removeParticipants:v12 exitSource:2 completion:v18];
  }

  else
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1E64;
    v16[3] = &unk_8328;
    v13 = &v17;
    v17 = v8;
    v15 = v8;
    [(PHLibraryScope *)libraryScope startExitFromLibraryScopeWithRetentionPolicy:2 exitSource:2 completion:v16];
  }
}

- (void)stopSharingWithCompletion:(id)a3
{
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_2144;
  v27[3] = &unk_8300;
  v4 = a3;
  v28 = v4;
  v5 = objc_retainBlock(v27);
  if ([(PhotosSeparationSharedLibraryResource *)self isOwnedByCurrentUser])
  {
    v6 = [NSMutableArray alloc];
    v7 = [(PhotosSeparationSharedResource *)self participants];
    v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [(PhotosSeparationSharedResource *)self participants];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          if (([v14 isCurrentUser] & 1) == 0)
          {
            v15 = [v14 representedObject];
            [v8 addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v11);
    }

    libraryScope = self->_libraryScope;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_224C;
    v21[3] = &unk_8328;
    v22 = v5;
    v17 = v5;
    [(PHLibraryScope *)libraryScope removeParticipants:v8 exitSource:2 completion:v21];
  }

  else
  {
    v18 = self->_libraryScope;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_2260;
    v19[3] = &unk_8328;
    v20 = v5;
    v8 = v5;
    [(PHLibraryScope *)v18 startExitFromLibraryScopeWithRetentionPolicy:2 exitSource:2 completion:v19];
    v17 = v20;
  }
}

- (BOOL)isOwnedByCurrentUser
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(PhotosSeparationSharedResource *)self participants];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isCurrentUser] && (objc_msgSend(v6, "isOwner") & 1) != 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (PhotosSeparationSharedLibraryResource)initWithLibraryScope:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 photoLibrary];
    v8 = [v7 librarySpecificFetchOptions];
    v9 = [PHShareParticipant fetchParticipantsInShare:v6 options:v8];

    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [[PhotosSeparationSharedLibraryParticipant alloc] initWithShareParticipant:*(*(&v22 + 1) + 8 * i)];
          if (v16)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v21.receiver = self;
    v21.super_class = PhotosSeparationSharedLibraryResource;
    v17 = [(PhotosSeparationSharedResource *)&v21 initWithParticipants:v10];
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(&v17->_libraryScope, a3);
    }

    self = v18;

    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)fetchSharedLibraryResourcesInLibrary:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [v4 librarySpecificFetchOptions];

  v7 = [PHLibraryScope fetchActiveLibraryScopeWithOptions:v6];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = [[PhotosSeparationSharedLibraryResource alloc] initWithLibraryScope:v8];
    if (v9)
    {
      [v5 addObject:v9];
    }
  }

  return v5;
}

@end