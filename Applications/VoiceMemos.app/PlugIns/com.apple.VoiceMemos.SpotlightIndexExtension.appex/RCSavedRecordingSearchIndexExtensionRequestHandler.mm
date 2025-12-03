@interface RCSavedRecordingSearchIndexExtensionRequestHandler
- (id)container;
- (void)index:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
- (void)reindexAllSearchableItemsForIndex:(id)index acknowledgementHandler:(id)handler;
@end

@implementation RCSavedRecordingSearchIndexExtensionRequestHandler

- (id)container
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_container)
  {
    v3 = [RCPersistentContainer alloc];
    v4 = RCCloudRecordingsStoreURL();
    v5 = [v3 initWithURL:v4];
    container = selfCopy->_container;
    selfCopy->_container = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_container;

  return v7;
}

- (void)reindexAllSearchableItemsForIndex:(id)index acknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[RCSSavedRecordingService sharedService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000F38;
  v7[3] = &unk_100004170;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 reloadExistingSearchMetadataWithCompletionBlock:v7];
}

- (void)index:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v9 = dispatch_queue_create(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000010AC;
  block[3] = &unk_1000041C0;
  block[4] = self;
  v13 = identifiersCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = identifiersCopy;
  dispatch_sync(v9, block);
}

@end