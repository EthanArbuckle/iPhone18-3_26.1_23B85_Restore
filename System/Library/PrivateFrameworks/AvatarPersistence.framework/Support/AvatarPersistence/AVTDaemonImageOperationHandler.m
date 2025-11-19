@interface AVTDaemonImageOperationHandler
- (AVTDaemonImageOperationHandler)initWithLogger:(id)a3;
- (BOOL)deleteThumbnailsForAvatarRecordsWithIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)removeImagesAtLocation:(id)a3 forIdentifiers:(id)a4 error:(id *)a5;
- (void)clearContentAtLocation:(id)a3;
- (void)clearStickersForAvatarRecordIdentifier:(id)a3 withEnvironment:(id)a4;
- (void)deleteImagesForAvatarRecordIdentifier:(id)a3 error:(id *)a4;
- (void)updateThumbnailsForChangesWithTracker:(id)a3 recordProvider:(id)a4;
@end

@implementation AVTDaemonImageOperationHandler

- (AVTDaemonImageOperationHandler)initWithLogger:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTDaemonImageOperationHandler;
  v6 = [(AVTDaemonImageOperationHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, a3);
  }

  return v7;
}

- (void)clearContentAtLocation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSFileManager);
  v10 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v10];

  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = [(AVTDaemonImageOperationHandler *)self logger];
    v9 = [v7 description];
    [v8 logFileSystemError:v9];
  }
}

- (BOOL)deleteThumbnailsForAvatarRecordsWithIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[AVTCoreEnvironment defaultEnvironment];
  v8 = [v7 imageStoreLocation];

  LOBYTE(a4) = [(AVTDaemonImageOperationHandler *)self removeImagesAtLocation:v8 forIdentifiers:v6 error:a4];
  return a4;
}

- (void)clearStickersForAvatarRecordIdentifier:(id)a3 withEnvironment:(id)a4
{
  v5 = a3;
  v6 = +[AVTCoreEnvironment defaultEnvironment];
  v7 = [v6 stickerImageStoreLocation];

  v9 = v5;
  v8 = [NSArray arrayWithObjects:&v9 count:1];

  [(AVTDaemonImageOperationHandler *)self removeImagesAtLocation:v7 forIdentifiers:v8 error:0];
}

- (void)deleteImagesForAvatarRecordIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[AVTCoreEnvironment defaultEnvironment];
  v8 = [v7 imageStoreLocation];

  v10 = v6;
  v9 = [NSArray arrayWithObjects:&v10 count:1];

  [(AVTDaemonImageOperationHandler *)self removeImagesAtLocation:v8 forIdentifiers:v9 error:a4];
}

- (BOOL)removeImagesAtLocation:(id)a3 forIdentifiers:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(NSFileManager);
  v11 = [v8 path];
  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    v13 = [v10 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:&__NSArray0__struct options:0 error:a5];
    if (v13)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v14 = v9;
      v31 = [v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v31)
      {
        v15 = *v42;
        v35 = v9;
        v36 = v8;
        v29 = *v42;
        v30 = self;
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
                  v25 = [v24 lastPathComponent];
                  v26 = [v25 hasPrefix:v17];

                  if (v26 && ![v10 removeItemAtURL:v24 error:a5])
                  {

                    v27 = 0;
                    v9 = v35;
                    v8 = v36;
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
            v9 = v35;
            v8 = v36;
            v15 = v29;
            self = v30;
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

- (void)updateThumbnailsForChangesWithTracker:(id)a3 recordProvider:(id)a4
{
  v5 = a3;
  v6 = +[AVTCoreEnvironment defaultEnvironment];
  v7 = [v6 imageStoreLocation];

  +[NSMutableArray array];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001358;
  v19[3] = &unk_1000041A0;
  v20 = v19[4] = self;
  v8 = v20;
  v9 = objc_retainBlock(v19);
  v10 = [(AVTDaemonImageOperationHandler *)self logger];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000015B0;
  v14[3] = &unk_1000041C8;
  v15 = v5;
  v16 = v7;
  v17 = self;
  v18 = v9;
  v11 = v9;
  v12 = v7;
  v13 = v5;
  [v10 updatingThumbnailsForRemoteChanges:v14];
}

@end