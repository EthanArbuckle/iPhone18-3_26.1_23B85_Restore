@interface QLThumbnailsService
- (id)makeQueueWithBackgroundPriority:(BOOL)priority;
- (void)askThumbnailAdditionIndex:(id)index;
- (void)canGenerateThumbnailsForContentType:(id)type atSize:(CGSize)size completionHandler:(id)handler;
- (void)cancelThumbnailRequests:(id)requests;
- (void)fetchAllDataSeparatedVolumesWithCompletionHandler:(id)handler;
- (void)generateSuccessiveThumbnailRepresentationsForRequests:(id)requests generationHandler:(id)handler completionHandler:(id)completionHandler;
- (void)getAllThumbnailsForFPItemID:(id)d completionHandler:(id)handler;
- (void)getAllThumbnailsForIno:(id)ino fsid:(id)fsid completionHandler:(id)handler;
- (void)getAllThumbnailsInfoForCacheAtURL:(id)l completionHandler:(id)handler;
- (void)getInfoForCacheAtURL:(id)l completionHandler:(id)handler;
- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)removeThumbnailAdditionsOnURL:(id)l completionBlock:(id)block;
- (void)reset;
- (void)setLastHitDateOfAllCachedThumbnailsToDate:(id)date withCompletionHandler:(id)handler;
- (void)thumbnailsStoreURLForURL:(id)l completionBlock:(id)block;
@end

@implementation QLThumbnailsService

- (void)thumbnailsStoreURLForURL:(id)l completionBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100001690;
  v22 = sub_1000016A0;
  v23 = 0;
  v8 = objc_alloc_init(NSFileCoordinator);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000016A8;
  v17[3] = &unk_100008290;
  v17[4] = self;
  v17[5] = &v18;
  [v8 coordinateReadingItemAtURL:lCopy options:4 error:0 byAccessor:v17];
  if (v19[5])
  {
    (*(blockCopy + 2))(blockCopy, 0, 0, 0);
  }

  v9 = [QLThumbnailAddition alloc];
  v10 = (v19 + 5);
  obj = v19[5];
  v11 = [v9 initWithAdditionsPresentOnURL:lCopy error:&obj];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    additionURL = [v11 additionURL];
    metadata = [v11 metadata];
    additionURL2 = [v11 additionURL];
    v15 = sub_100001170(additionURL2);
    (*(blockCopy + 2))(blockCopy, additionURL, metadata, v15, 0);
  }

  else
  {
    additionURL = [NSError errorWithDomain:QLThumbnailsServiceErrorDomain code:0 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, 0, 0, additionURL);
  }

  _Block_object_dispose(&v18, 8);
}

- (void)removeThumbnailAdditionsOnURL:(id)l completionBlock:(id)block
{
  v7 = 0;
  blockCopy = block;
  [QLThumbnailAddition removeAdditionsOnURL:l error:&v7];
  v6 = v7;
  blockCopy[2](blockCopy, v6);
}

- (void)askThumbnailAdditionIndex:(id)index
{
  indexCopy = index;
  v5 = +[QLThumbnailAdditionIndex sharedInstance];
  (*(index + 2))(indexCopy, v5);
}

- (id)makeQueueWithBackgroundPriority:(BOOL)priority
{
  if (priority)
  {
    v4 = QOS_CLASS_BACKGROUND;
  }

  else
  {
    v4 = QOS_CLASS_UTILITY;
  }

  if (priority)
  {
    v5 = "com.apple.quicklook.thumbnailGeneration.background";
  }

  else
  {
    v5 = "com.apple.quicklook.thumbnailGeneration.utility";
  }

  if (priority)
  {
    v6 = 16;
  }

  else
  {
    v6 = 24;
  }

  v7 = dispatch_queue_attr_make_with_qos_class(0, v4, 0);
  v8 = dispatch_queue_create(v5, v7);
  v9 = *(&self->super.isa + v6);
  *(&self->super.isa + v6) = v8;

  v10 = *(&self->super.isa + v6);
  v11 = v10;

  return v10;
}

- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  v7 = +[QLServerThread sharedInstance];
  [v7 removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:identifiersCopy completionHandler:handlerCopy];
}

- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  v7 = +[QLServerThread sharedInstance];
  [v7 removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:identifiersCopy completionHandler:handlerCopy];
}

- (void)generateSuccessiveThumbnailRepresentationsForRequests:(id)requests generationHandler:(id)handler completionHandler:(id)completionHandler
{
  requestsCopy = requests;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = requestsCopy;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [[QLTGeneratorThumbnailRequest alloc] initWithRequest:*(*(&v23 + 1) + 8 * v15) generationHandler:handlerCopy];
        clientApplicationIdentifier = [(QLThumbnailsService *)self clientApplicationIdentifier];
        [v16 setClientApplicationIdentifier:clientApplicationIdentifier];

        [v10 addObject:v16];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v18 = +[QLServerThread sharedInstance];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100001D40;
  v21[3] = &unk_1000082B8;
  v22 = completionHandlerCopy;
  v19 = completionHandlerCopy;
  [v18 generateSuccessiveThumbnailRepresentationsForGeneratorRequests:v10 completionHandler:v21];
}

- (void)cancelThumbnailRequests:(id)requests
{
  requestsCopy = requests;
  v4 = +[QLServerThread sharedInstance];
  [v4 cancelThumbnailRequests:requestsCopy];
}

- (void)setLastHitDateOfAllCachedThumbnailsToDate:(id)date withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  v6 = +[QLServerThread sharedInstance];
  [v6 setLastHitDateOfAllCachedThumbnailsToDate:dateCopy];

  v7 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v7 = handlerCopy;
  }
}

- (void)reset
{
  v2 = +[QLServerThread sharedInstance];
  [v2 reset];
}

- (void)canGenerateThumbnailsForContentType:(id)type atSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (type)
  {
    v9 = [UTType _typeWithIdentifier:type allowUndeclared:1];
    v10 = v12;
    if (v9)
    {
      height = [QLPreviewThumbnailGenerator canGenerateThumbnailForContentType:v9 atSize:width, height];
      v10 = v12;
    }

    else
    {
      height = 0;
    }

    v10[2](v10, height);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)getAllThumbnailsInfoForCacheAtURL:(id)l completionHandler:(id)handler
{
  v6 = QLServerThreadInstance;
  handlerCopy = handler;
  v9 = [v6 cacheThreadForVolume:l];
  allThumbnailsInfo = [v9 allThumbnailsInfo];
  (*(handler + 2))(handlerCopy, allThumbnailsInfo);
}

- (void)getInfoForCacheAtURL:(id)l completionHandler:(id)handler
{
  v6 = QLServerThreadInstance;
  handlerCopy = handler;
  v9 = [v6 cacheThreadForVolume:l];
  cacheInfo = [v9 cacheInfo];
  (*(handler + 2))(handlerCopy, cacheInfo);
}

- (void)getAllThumbnailsForIno:(id)ino fsid:(id)fsid completionHandler:(id)handler
{
  inoCopy = ino;
  fsidCopy = fsid;
  handlerCopy = handler;
  if (fsidCopy && [fsidCopy count] == 2)
  {
    v9 = [fsidCopy objectAtIndexedSubscript:0];
    intValue = [v9 intValue];

    v11 = [fsidCopy objectAtIndexedSubscript:1];
    intValue2 = [v11 intValue];

    v13 = intValue2 << 32;
    v14 = intValue;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = QLServerThreadInstance;
  v16 = [NSURL fileURLWithPath:@"/"];
  v17 = [v15 cacheThreadForVolume:v16];
  v18 = [v17 allThumbnailsForIno:objc_msgSend(inoCopy fsid:{"unsignedLongLongValue"), v13 | v14}];
  handlerCopy[2](handlerCopy, v18);
}

- (void)getAllThumbnailsForFPItemID:(id)d completionHandler:(id)handler
{
  v5 = QLServerThreadInstance;
  handlerCopy = handler;
  dCopy = d;
  providerDomainID = [dCopy providerDomainID];
  v10 = [v5 cacheThreadForProviderDomainID:providerDomainID];

  v9 = [v10 allThumbnailsForFPItemID:dCopy];

  handlerCopy[2](handlerCopy, v9);
}

- (void)fetchAllDataSeparatedVolumesWithCompletionHandler:(id)handler
{
  v4 = QLServerThreadInstance;
  handlerCopy = handler;
  allKnownDataSeparatedVolumes = [v4 allKnownDataSeparatedVolumes];
  (*(handler + 2))(handlerCopy, allKnownDataSeparatedVolumes);
}

@end