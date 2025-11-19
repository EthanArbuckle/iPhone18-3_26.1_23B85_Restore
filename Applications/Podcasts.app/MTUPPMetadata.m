@interface MTUPPMetadata
+ (id)createOrUpdateUPPMetadataFromUPPMediaItem:(id)a3 inCtx:(id)a4;
+ (id)createOrUpdateUPPMetadataFromUPPRecord:(id)a3 inCtx:(id)a4;
+ (id)deleteAllContentInCtx:(id)a3 error:(id *)a4;
+ (void)updateUPPMetadata:(id)a3 fromUPPRecord:(id)a4;
@end

@implementation MTUPPMetadata

+ (id)createOrUpdateUPPMetadataFromUPPMediaItem:(id)a3 inCtx:(id)a4
{
  v6 = a4;
  v7 = [MZUniversalPlaybackPositionMetadata metadataWithValuesFromDataSourceItem:a3];
  v8 = [a1 createOrUpdateUPPMetadataFromUPPRecord:v7 inCtx:v6];

  return v8;
}

+ (id)createOrUpdateUPPMetadataFromUPPRecord:(id)a3 inCtx:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 itemIdentifier];
  v8 = [v6 uppMetadataForMetadataIdentifier:v7];

  if (!v8)
  {
    v9 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating UPP Metadata Record for: %{public}@", &v11, 0xCu);
    }

    v8 = [NSEntityDescription insertNewObjectForEntityForName:@"MTUPPMetadata" inManagedObjectContext:v6];
  }

  [objc_opt_class() updateUPPMetadata:v8 fromUPPRecord:v5];

  return v8;
}

+ (void)updateUPPMetadata:(id)a3 fromUPPRecord:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating UPP Metadata Record\n from: %{public}@\n to: %{public}@", &v9, 0x16u);
  }

  v8 = [v6 itemIdentifier];
  [v5 setMetadataIdentifier:v8];

  [v6 timestamp];
  [v5 setTimestamp:?];
  [v6 bookmarkTime];
  [v5 setBookmarkTime:?];
  [v5 setPlayCount:{objc_msgSend(v6, "playCount")}];
  [v5 setHasBeenPlayed:{objc_msgSend(v6, "hasBeenPlayed")}];
}

+ (id)deleteAllContentInCtx:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [NSFetchRequest fetchRequestWithEntityName:@"MTUPPMetadata"];
  v7 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v6];
  v8 = [v5 executeRequest:v7 error:a4];
  [v5 saveInCurrentBlock];

  return v8;
}

@end