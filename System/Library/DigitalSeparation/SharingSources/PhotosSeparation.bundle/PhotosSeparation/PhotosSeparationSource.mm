@interface PhotosSeparationSource
- (PhotosSeparationSource)init;
- (PhotosSeparationSource)initWithPhotoLibrary:(id)library;
- (id)sharedResourceForParticipant:(id)participant;
- (void)cacheSharedResources:(id)resources;
- (void)fetchSharedResourcesWithCompletion:(id)completion;
- (void)stopAllSharingWithCompletion:(id)completion;
- (void)stopSharing:(id)sharing withCompletion:(id)completion;
- (void)stopSharingWithParticipant:(id)participant completion:(id)completion;
- (void)updateVisibilityTo:(int64_t)to onResource:(id)resource withCompletion:(id)completion;
@end

@implementation PhotosSeparationSource

- (id)sharedResourceForParticipant:(id)participant
{
  sharedResourcesByParticipantUuid = self->_sharedResourcesByParticipantUuid;
  uuid = [participant uuid];
  v5 = [(NSMutableDictionary *)sharedResourcesByParticipantUuid objectForKeyedSubscript:uuid];

  return v5;
}

- (void)cacheSharedResources:(id)resources
{
  resourcesCopy = resources;
  v5 = +[NSMutableDictionary dictionary];
  sharedResourcesByParticipantUuid = self->_sharedResourcesByParticipantUuid;
  self->_sharedResourcesByParticipantUuid = v5;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = resourcesCopy;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v19 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        participants = [v10 participants];
        v12 = [participants countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            v15 = 0;
            do
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(participants);
              }

              v16 = self->_sharedResourcesByParticipantUuid;
              uuid = [*(*(&v20 + 1) + 8 * v15) uuid];
              [(NSMutableDictionary *)v16 setObject:v10 forKeyedSubscript:uuid];

              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [participants countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }

        v9 = v9 + 1;
      }

      while (v9 != v8);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }
}

- (void)updateVisibilityTo:(int64_t)to onResource:(id)resource withCompletion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1194;
  v9[3] = &unk_82D0;
  resourceCopy = resource;
  completionCopy = completion;
  v7 = resourceCopy;
  v8 = completionCopy;
  [v7 updateVisibility:to completion:v9];
}

- (void)stopAllSharingWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_124C;
  v5[3] = &unk_82A8;
  completionCopy = completion;
  v4 = completionCopy;
  [(PhotosSeparationSource *)self fetchSharedResourcesWithCompletion:v5];
}

- (void)stopSharingWithParticipant:(id)participant completion:(id)completion
{
  completionCopy = completion;
  participantCopy = participant;
  v8 = [(PhotosSeparationSource *)self sharedResourceForParticipant:participantCopy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_16A4;
  v10[3] = &unk_8300;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 stopSharingToParticipant:participantCopy withCompletion:v10];
}

- (void)stopSharing:(id)sharing withCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1750;
  v6[3] = &unk_8300;
  completionCopy = completion;
  v5 = completionCopy;
  [sharing stopSharingWithCompletion:v6];
}

- (void)fetchSharedResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(NSMutableArray);
  photoLibrary = self->_photoLibrary;
  v15 = 0;
  v7 = [PhotosSeparationCollectionShareResource fetchCollectionShareResourcesInLibrary:photoLibrary error:&v15];
  v8 = v15;
  if ([v7 count])
  {
    [v5 addObjectsFromArray:v7];
  }

  else if (v8)
  {
    [0 addObject:v8];
  }

  v9 = self->_photoLibrary;
  v14 = 0;
  v10 = [PhotosSeparationSharedLibraryResource fetchSharedLibraryResourcesInLibrary:v9 error:&v14];
  v11 = v14;

  if ([v10 count])
  {
    [v5 addObjectsFromArray:v10];
  }

  else if (v11)
  {
    [0 addObject:v11];
  }

  if (completionCopy)
  {
    if ([0 count])
    {
      v16[0] = NSLocalizedDescriptionKey;
      v16[1] = NSMultipleUnderlyingErrorsKey;
      v17[0] = @"Failed to fetch shared resources";
      v17[1] = 0;
      v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
      v13 = [NSError errorWithDomain:@"com.apple.photos.PhotosSeparation" code:64 userInfo:v12];
    }

    else
    {
      v13 = 0;
    }

    [(PhotosSeparationSource *)self cacheSharedResources:v5];
    completionCopy[2](completionCopy, v5, v13);
  }
}

- (PhotosSeparationSource)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = PhotosSeparationSource;
  v6 = [(PhotosSeparationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
  }

  return v7;
}

- (PhotosSeparationSource)init
{
  v11.receiver = self;
  v11.super_class = PhotosSeparationSource;
  v2 = [(PhotosSeparationSource *)&v11 init];
  if (v2)
  {
    v3 = [PHPhotoLibrary alloc];
    v4 = +[PHPhotoLibrary systemPhotoLibraryURL];
    v5 = [v3 initWithPhotoLibraryURL:v4];
    photoLibrary = v2->_photoLibrary;
    v2->_photoLibrary = v5;

    v7 = v2->_photoLibrary;
    v10 = 0;
    [(PHPhotoLibrary *)v7 openAndWaitWithUpgrade:0 error:&v10];
    v8 = v10;
    if (!v2->_photoLibrary)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v8;
        _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't open the system library: %@", buf, 0xCu);
      }

      v2 = 0;
    }
  }

  return v2;
}

@end