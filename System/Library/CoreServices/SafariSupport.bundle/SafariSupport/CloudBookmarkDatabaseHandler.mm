@interface CloudBookmarkDatabaseHandler
- (CloudBookmarkDatabaseHandler)initWithBookmarkStore:(id)store database:(void *)database databaseAccessor:(id)accessor accountPropertiesStore:(id)propertiesStore;
- (NSString)deviceIdentifier;
- (void)dealloc;
- (void)saveAssetAtURL:(id)l toURL:(id)rL completionHandler:(id)handler;
@end

@implementation CloudBookmarkDatabaseHandler

- (CloudBookmarkDatabaseHandler)initWithBookmarkStore:(id)store database:(void *)database databaseAccessor:(id)accessor accountPropertiesStore:(id)propertiesStore
{
  storeCopy = store;
  accessorCopy = accessor;
  propertiesStoreCopy = propertiesStore;
  v23.receiver = self;
  v23.super_class = CloudBookmarkDatabaseHandler;
  v14 = [(CloudBookmarkDatabaseHandler *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_bookmarkStore, store);
    v15->_databaseRef = CFRetain(database);
    objc_storeStrong(&v15->_databaseAccessor, accessor);
    objc_storeStrong(&v15->_accountPropertiesStore, propertiesStore);
    v16 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudBookmarkDatabaseHandler.%@.%p.imageSavingQueue", objc_opt_class(), v15];
    uTF8String = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v19 = dispatch_queue_create(uTF8String, v18);
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

- (void)saveAssetAtURL:(id)l toURL:(id)rL completionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  if (lCopy && rLCopy)
  {
    v11 = +[NSFileManager defaultManager];
    internalQueue = self->_internalQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100032774;
    v15[3] = &unk_100131650;
    v16 = lCopy;
    v17 = v11;
    v18 = rLCopy;
    v19 = handlerCopy;
    v13 = v11;
    dispatch_async(internalQueue, v15);
  }

  else
  {
    v14 = [NSError safari_errorWithDomain:CKErrorDomain code:35 privacyPreservingDescription:@"Asset temporary or destination URL was not available."];
    (*(handlerCopy + 2))(handlerCopy, v14);
  }
}

@end