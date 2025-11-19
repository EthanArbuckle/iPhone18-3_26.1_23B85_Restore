@interface CloudBookmarkDatabaseHandler
- (CloudBookmarkDatabaseHandler)initWithBookmarkStore:(id)a3 database:(void *)a4 databaseAccessor:(id)a5 accountPropertiesStore:(id)a6;
- (NSString)deviceIdentifier;
- (void)dealloc;
- (void)saveAssetAtURL:(id)a3 toURL:(id)a4 completionHandler:(id)a5;
@end

@implementation CloudBookmarkDatabaseHandler

- (CloudBookmarkDatabaseHandler)initWithBookmarkStore:(id)a3 database:(void *)a4 databaseAccessor:(id)a5 accountPropertiesStore:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = CloudBookmarkDatabaseHandler;
  v14 = [(CloudBookmarkDatabaseHandler *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_bookmarkStore, a3);
    v15->_databaseRef = CFRetain(a4);
    objc_storeStrong(&v15->_databaseAccessor, a5);
    objc_storeStrong(&v15->_accountPropertiesStore, a6);
    v16 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudBookmarkDatabaseHandler.%@.%p.imageSavingQueue", objc_opt_class(), v15];
    v17 = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v19 = dispatch_queue_create(v17, v18);
    internalQueue = v15->_internalQueue;
    v15->_internalQueue = v19;

    v21 = v15;
  }

  return v15;
}

- (void)dealloc
{
  databaseRef = self->_databaseRef;
  if (databaseRef)
  {
    CFRelease(databaseRef);
  }

  v4.receiver = self;
  v4.super_class = CloudBookmarkDatabaseHandler;
  [(CloudBookmarkDatabaseHandler *)&v4 dealloc];
}

- (NSString)deviceIdentifier
{
  v2 = sub_1000328C4(self->_databaseAccessor);

  return v2;
}

- (void)saveAssetAtURL:(id)a3 toURL:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9)
  {
    v11 = +[NSFileManager defaultManager];
    internalQueue = self->_internalQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100032774;
    v15[3] = &unk_100131650;
    v16 = v8;
    v17 = v11;
    v18 = v9;
    v19 = v10;
    v13 = v11;
    dispatch_async(internalQueue, v15);
  }

  else
  {
    v14 = [NSError safari_errorWithDomain:CKErrorDomain code:35 privacyPreservingDescription:@"Asset temporary or destination URL was not available."];
    (*(v10 + 2))(v10, v14);
  }
}

@end