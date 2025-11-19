@interface MusicIndexRequestHandler
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
@end

@implementation MusicIndexRequestHandler

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v4 = a4;
  v5 = +[MLMediaLibraryService sharedMediaLibraryService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000BBC;
  v7[3] = &unk_100004070;
  v8 = v4;
  v6 = v4;
  [v5 updateSpotlightIndexForBundleID:@"com.apple.Music" withCompletion:v7];
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = +[MLMediaLibraryService sharedMediaLibraryService];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100000CA0;
  v10[3] = &unk_100004070;
  v11 = v6;
  v9 = v6;
  [v8 updateSpotlightIndexMetadataForItemsWithIdentifiers:v7 bundleID:@"com.apple.Music" withCompletion:v10];
}

@end