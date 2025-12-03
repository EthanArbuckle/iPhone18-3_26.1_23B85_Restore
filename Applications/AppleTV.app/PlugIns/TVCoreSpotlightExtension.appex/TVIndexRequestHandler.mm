@interface TVIndexRequestHandler
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
@end

@implementation TVIndexRequestHandler

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[MLMediaLibraryService sharedMediaLibraryService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000BBC;
  v7[3] = &unk_100004070;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 updateSpotlightIndexForBundleID:@"com.apple.tv" withCompletion:v7];
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  v8 = +[MLMediaLibraryService sharedMediaLibraryService];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100000CA0;
  v10[3] = &unk_100004070;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 updateSpotlightIndexMetadataForItemsWithIdentifiers:identifiersCopy bundleID:@"com.apple.tv" withCompletion:v10];
}

@end