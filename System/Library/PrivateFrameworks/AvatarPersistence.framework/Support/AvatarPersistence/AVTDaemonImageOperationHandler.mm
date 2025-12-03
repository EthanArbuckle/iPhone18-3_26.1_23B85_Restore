@interface AVTDaemonImageOperationHandler
- (AVTDaemonImageOperationHandler)initWithLogger:(id)logger;
- (BOOL)deleteThumbnailsForAvatarRecordsWithIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)removeImagesAtLocation:(id)location forIdentifiers:(id)identifiers error:(id *)error;
- (void)clearContentAtLocation:(id)location;
- (void)clearStickersForAvatarRecordIdentifier:(id)identifier withEnvironment:(id)environment;
- (void)deleteImagesForAvatarRecordIdentifier:(id)identifier error:(id *)error;
- (void)updateThumbnailsForChangesWithTracker:(id)tracker recordProvider:(id)provider;
@end

@implementation AVTDaemonImageOperationHandler

- (AVTDaemonImageOperationHandler)initWithLogger:(id)logger
{
  loggerCopy = logger;
  v9.receiver = self;
  v9.super_class = AVTDaemonImageOperationHandler;
  v6 = [(AVTDaemonImageOperationHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, logger);
  }

  return v7;
}

- (void)clearContentAtLocation:(id)location
{
  locationCopy = location;
  v5 = objc_alloc_init(NSFileManager);
  v10 = 0;
  v6 = [v5 removeItemAtURL:locationCopy error:&v10];

  v7 = v10;
  if ((v6 & 1) == 0)
  {
    logger = [(AVTDaemonImageOperationHandler *)self logger];
    v9 = [v7 description];
    [logger logFileSystemError:v9];
  }
}

- (BOOL)deleteThumbnailsForAvatarRecordsWithIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v7 = +[AVTCoreEnvironment defaultEnvironment];
  imageStoreLocation = [v7 imageStoreLocation];

  LOBYTE(error) = [(AVTDaemonImageOperationHandler *)self removeImagesAtLocation:imageStoreLocation forIdentifiers:identifiersCopy error:error];
  return error;
}

- (void)clearStickersForAvatarRecordIdentifier:(id)identifier withEnvironment:(id)environment
{
  identifierCopy = identifier;
  v6 = +[AVTCoreEnvironment defaultEnvironment];
  stickerImageStoreLocation = [v6 stickerImageStoreLocation];

  v9 = identifierCopy;
  v8 = [NSArray arrayWithObjects:&v9 count:1];

  [(AVTDaemonImageOperationHandler *)self removeImagesAtLocation:stickerImageStoreLocation forIdentifiers:v8 error:0];
}

- (void)deleteImagesForAvatarRecordIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[AVTCoreEnvironment defaultEnvironment];
  imageStoreLocation = [v7 imageStoreLocation];

  v10 = identifierCopy;
  v9 = [NSArray arrayWithObjects:&v10 count:1];

  [(AVTDaemonImageOperationHandler *)self removeImagesAtLocation:imageStoreLocation forIdentifiers:v9 error:error];
}

- (BOOL)removeImagesAtLocation:(id)location forIdentifiers:(id)identifiers error:(id *)error
{
  locationCopy = location;
  identifiersCopy = identifiers;
  v10 = objc_alloc_init(NSFileManager);
  path = [locationCopy path];
  v12 = [v10 fileExistsAtPath:path];

  if (v12)
  {
    v13 = [v10 contentsOfDirectoryAtURL:locationCopy includingPropertiesForKeys:&__NSArray0__struct options:0 error:error];
    if (v13)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v14 = identifiersCopy;
      v31 = [v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v31)
      {
        v15 = *v42;
        v35 = identifiersCopy;
        v36 = locationCopy;
        v29 = *v42;
        selfCopy = self;
        v33 = v14;
        v34 = v13;
        do
        {
          v16 = 0;
          do
          {
            if (*v42 != v15)
            {
              objc_enumerationMutation(v14);
            }

            v32 = v16;
            v17 = *(*(&v41 + 1) + 8 * v16);
            v18 = [(AVTDaemonImageOperationHandler *)self logger:v29];
            [v18 logDeletingImagesWithIdentifierPrefix:v17];

            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v19 = v13;
            v20 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v38;
              while (2)
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v38 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v37 + 1) + 8 * i);
                  lastPathComponent = [v24 lastPathComponent];
                  v26 = [lastPathComponent hasPrefix:v17];

                  if (v26 && ![v10 removeItemAtURL:v24 error:error])
                  {

                    v27 = 0;
                    identifiersCopy = v35;
                    locationCopy = v36;
                    v14 = v33;
                    v13 = v34;
                    goto LABEL_24;
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }

            v16 = v32 + 1;
            identifiersCopy = v35;
            locationCopy = v36;
            v15 = v29;
            self = selfCopy;
            v14 = v33;
            v13 = v34;
          }

          while ((v32 + 1) != v31);
          v27 = 1;
          v31 = [v33 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v31);
      }

      else
      {
        v27 = 1;
      }

LABEL_24:
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 1;
  }

  return v27;
}

- (void)updateThumbnailsForChangesWithTracker:(id)tracker recordProvider:(id)provider
{
  trackerCopy = tracker;
  v6 = +[AVTCoreEnvironment defaultEnvironment];
  imageStoreLocation = [v6 imageStoreLocation];

  +[NSMutableArray array];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001358;
  v19[3] = &unk_1000041A0;
  v20 = v19[4] = self;
  v8 = v20;
  v9 = objc_retainBlock(v19);
  logger = [(AVTDaemonImageOperationHandler *)self logger];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000015B0;
  v14[3] = &unk_1000041C8;
  v15 = trackerCopy;
  v16 = imageStoreLocation;
  selfCopy = self;
  v18 = v9;
  v11 = v9;
  v12 = imageStoreLocation;
  v13 = trackerCopy;
  [logger updatingThumbnailsForRemoteChanges:v14];
}

@end