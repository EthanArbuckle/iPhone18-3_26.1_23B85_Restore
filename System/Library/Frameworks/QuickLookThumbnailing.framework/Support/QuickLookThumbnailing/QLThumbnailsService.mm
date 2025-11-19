@interface QLThumbnailsService
- (id)makeQueueWithBackgroundPriority:(BOOL)a3;
- (void)askThumbnailAdditionIndex:(id)a3;
- (void)canGenerateThumbnailsForContentType:(id)a3 atSize:(CGSize)a4 completionHandler:(id)a5;
- (void)cancelThumbnailRequests:(id)a3;
- (void)fetchAllDataSeparatedVolumesWithCompletionHandler:(id)a3;
- (void)generateSuccessiveThumbnailRepresentationsForRequests:(id)a3 generationHandler:(id)a4 completionHandler:(id)a5;
- (void)getAllThumbnailsForFPItemID:(id)a3 completionHandler:(id)a4;
- (void)getAllThumbnailsForIno:(id)a3 fsid:(id)a4 completionHandler:(id)a5;
- (void)getAllThumbnailsInfoForCacheAtURL:(id)a3 completionHandler:(id)a4;
- (void)getInfoForCacheAtURL:(id)a3 completionHandler:(id)a4;
- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)removeThumbnailAdditionsOnURL:(id)a3 completionBlock:(id)a4;
- (void)reset;
- (void)setLastHitDateOfAllCachedThumbnailsToDate:(id)a3 withCompletionHandler:(id)a4;
- (void)thumbnailsStoreURLForURL:(id)a3 completionBlock:(id)a4;
@end

@implementation QLThumbnailsService

- (void)thumbnailsStoreURLForURL:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [v8 coordinateReadingItemAtURL:v6 options:4 error:0 byAccessor:v17];
  if (v19[5])
  {
    (*(v7 + 2))(v7, 0, 0, 0);
  }

  v9 = [QLThumbnailAddition alloc];
  v10 = (v19 + 5);
  obj = v19[5];
  v11 = [v9 initWithAdditionsPresentOnURL:v6 error:&obj];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    v12 = [v11 additionURL];
    v13 = [v11 metadata];
    v14 = [v11 additionURL];
    v15 = sub_100001170(v14);
    (*(v7 + 2))(v7, v12, v13, v15, 0);
  }

  else
  {
    v12 = [NSError errorWithDomain:QLThumbnailsServiceErrorDomain code:0 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, 0, v12);
  }

  _Block_object_dispose(&v18, 8);
}

- (void)removeThumbnailAdditionsOnURL:(id)a3 completionBlock:(id)a4
{
  v7 = 0;
  v5 = a4;
  [QLThumbnailAddition removeAdditionsOnURL:a3 error:&v7];
  v6 = v7;
  v5[2](v5, v6);
}

- (void)askThumbnailAdditionIndex:(id)a3
{
  v4 = a3;
  v5 = +[QLThumbnailAdditionIndex sharedInstance];
  (*(a3 + 2))(v4, v5);
}

- (id)makeQueueWithBackgroundPriority:(BOOL)a3
{
  if (a3)
  {
    v4 = QOS_CLASS_BACKGROUND;
  }

  else
  {
    v4 = QOS_CLASS_UTILITY;
  }

  if (a3)
  {
    v5 = "com.apple.quicklook.thumbnailGeneration.background";
  }

  else
  {
    v5 = "com.apple.quicklook.thumbnailGeneration.utility";
  }

  if (a3)
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

- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[QLServerThread sharedInstance];
  [v7 removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:v6 completionHandler:v5];
}

- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[QLServerThread sharedInstance];
  [v7 removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:v6 completionHandler:v5];
}

- (void)generateSuccessiveThumbnailRepresentationsForRequests:(id)a3 generationHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v20 = a5;
  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v8;
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

        v16 = [[QLTGeneratorThumbnailRequest alloc] initWithRequest:*(*(&v23 + 1) + 8 * v15) generationHandler:v9];
        v17 = [(QLThumbnailsService *)self clientApplicationIdentifier];
        [v16 setClientApplicationIdentifier:v17];

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
  v22 = v20;
  v19 = v20;
  [v18 generateSuccessiveThumbnailRepresentationsForGeneratorRequests:v10 completionHandler:v21];
}

- (void)cancelThumbnailRequests:(id)a3
{
  v3 = a3;
  v4 = +[QLServerThread sharedInstance];
  [v4 cancelThumbnailRequests:v3];
}

- (void)setLastHitDateOfAllCachedThumbnailsToDate:(id)a3 withCompletionHandler:(id)a4
{
  v8 = a4;
  v5 = a3;
  v6 = +[QLServerThread sharedInstance];
  [v6 setLastHitDateOfAllCachedThumbnailsToDate:v5];

  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
    v7 = v8;
  }
}

- (void)reset
{
  v2 = +[QLServerThread sharedInstance];
  [v2 reset];
}

- (void)canGenerateThumbnailsForContentType:(id)a3 atSize:(CGSize)a4 completionHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a5;
  v12 = v8;
  if (a3)
  {
    v9 = [UTType _typeWithIdentifier:a3 allowUndeclared:1];
    v10 = v12;
    if (v9)
    {
      v11 = [QLPreviewThumbnailGenerator canGenerateThumbnailForContentType:v9 atSize:width, height];
      v10 = v12;
    }

    else
    {
      v11 = 0;
    }

    v10[2](v10, v11);
  }

  else
  {
    v8[2](v8, 0);
  }
}

- (void)getAllThumbnailsInfoForCacheAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = QLServerThreadInstance;
  v7 = a4;
  v9 = [v6 cacheThreadForVolume:a3];
  v8 = [v9 allThumbnailsInfo];
  (*(a4 + 2))(v7, v8);
}

- (void)getInfoForCacheAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = QLServerThreadInstance;
  v7 = a4;
  v9 = [v6 cacheThreadForVolume:a3];
  v8 = [v9 cacheInfo];
  (*(a4 + 2))(v7, v8);
}

- (void)getAllThumbnailsForIno:(id)a3 fsid:(id)a4 completionHandler:(id)a5
{
  v19 = a3;
  v7 = a4;
  v8 = a5;
  if (v7 && [v7 count] == 2)
  {
    v9 = [v7 objectAtIndexedSubscript:0];
    v10 = [v9 intValue];

    v11 = [v7 objectAtIndexedSubscript:1];
    v12 = [v11 intValue];

    v13 = v12 << 32;
    v14 = v10;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = QLServerThreadInstance;
  v16 = [NSURL fileURLWithPath:@"/"];
  v17 = [v15 cacheThreadForVolume:v16];
  v18 = [v17 allThumbnailsForIno:objc_msgSend(v19 fsid:{"unsignedLongLongValue"), v13 | v14}];
  v8[2](v8, v18);
}

- (void)getAllThumbnailsForFPItemID:(id)a3 completionHandler:(id)a4
{
  v5 = QLServerThreadInstance;
  v6 = a4;
  v7 = a3;
  v8 = [v7 providerDomainID];
  v10 = [v5 cacheThreadForProviderDomainID:v8];

  v9 = [v10 allThumbnailsForFPItemID:v7];

  v6[2](v6, v9);
}

- (void)fetchAllDataSeparatedVolumesWithCompletionHandler:(id)a3
{
  v4 = QLServerThreadInstance;
  v5 = a3;
  v6 = [v4 allKnownDataSeparatedVolumes];
  (*(a3 + 2))(v5, v6);
}

@end