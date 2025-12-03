@interface MTUPPMetadata
+ (id)createOrUpdateUPPMetadataFromUPPMediaItem:(id)item inCtx:(id)ctx;
+ (id)createOrUpdateUPPMetadataFromUPPRecord:(id)record inCtx:(id)ctx;
+ (id)deleteAllContentInCtx:(id)ctx error:(id *)error;
+ (void)updateUPPMetadata:(id)metadata fromUPPRecord:(id)record;
@end

@implementation MTUPPMetadata

+ (id)createOrUpdateUPPMetadataFromUPPMediaItem:(id)item inCtx:(id)ctx
{
  ctxCopy = ctx;
  v7 = [MZUniversalPlaybackPositionMetadata metadataWithValuesFromDataSourceItem:item];
  v8 = [self createOrUpdateUPPMetadataFromUPPRecord:v7 inCtx:ctxCopy];

  return v8;
}

+ (id)createOrUpdateUPPMetadataFromUPPRecord:(id)record inCtx:(id)ctx
{
  recordCopy = record;
  ctxCopy = ctx;
  itemIdentifier = [recordCopy itemIdentifier];
  v8 = [ctxCopy uppMetadataForMetadataIdentifier:itemIdentifier];

  if (!v8)
  {
    v9 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = recordCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating UPP Metadata Record for: %{public}@", &v11, 0xCu);
    }

    v8 = [NSEntityDescription insertNewObjectForEntityForName:@"MTUPPMetadata" inManagedObjectContext:ctxCopy];
  }

  [objc_opt_class() updateUPPMetadata:v8 fromUPPRecord:recordCopy];

  return v8;
}

+ (void)updateUPPMetadata:(id)metadata fromUPPRecord:(id)record
{
  metadataCopy = metadata;
  recordCopy = record;
  v7 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = metadataCopy;
    v11 = 2114;
    v12 = recordCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating UPP Metadata Record\n from: %{public}@\n to: %{public}@", &v9, 0x16u);
  }

  itemIdentifier = [recordCopy itemIdentifier];
  [metadataCopy setMetadataIdentifier:itemIdentifier];

  [recordCopy timestamp];
  [metadataCopy setTimestamp:?];
  [recordCopy bookmarkTime];
  [metadataCopy setBookmarkTime:?];
  [metadataCopy setPlayCount:{objc_msgSend(recordCopy, "playCount")}];
  [metadataCopy setHasBeenPlayed:{objc_msgSend(recordCopy, "hasBeenPlayed")}];
}

+ (id)deleteAllContentInCtx:(id)ctx error:(id *)error
{
  ctxCopy = ctx;
  v6 = [NSFetchRequest fetchRequestWithEntityName:@"MTUPPMetadata"];
  v7 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v6];
  v8 = [ctxCopy executeRequest:v7 error:error];
  [ctxCopy saveInCurrentBlock];

  return v8;
}

@end