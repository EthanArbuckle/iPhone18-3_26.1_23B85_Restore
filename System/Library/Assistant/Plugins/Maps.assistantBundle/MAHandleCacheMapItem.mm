@interface MAHandleCacheMapItem
- (id)_performWithServiceHelper:(id)helper;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleCacheMapItem

- (id)_performWithServiceHelper:(id)helper
{
  v4 = +[GEOMapService sharedService];
  mapItem = [(MAHandleCacheMapItem *)self mapItem];
  placeData2 = [mapItem placeData2];
  [v4 trackSerializedPlaceData:placeData2];

  v7 = objc_alloc_init(SACommandSucceeded);

  return v7;
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v6 = [(MAHandleCacheMapItem *)self _performWithServiceHelper:helper];
  if (completionCopy)
  {
    dictionary = [v6 dictionary];
    completionCopy[2](completionCopy, dictionary);
  }
}

@end