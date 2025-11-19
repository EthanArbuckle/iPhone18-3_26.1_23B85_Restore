@interface MAHandleCacheMapItem
- (id)_performWithServiceHelper:(id)a3;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation MAHandleCacheMapItem

- (id)_performWithServiceHelper:(id)a3
{
  v4 = +[GEOMapService sharedService];
  v5 = [(MAHandleCacheMapItem *)self mapItem];
  v6 = [v5 placeData2];
  [v4 trackSerializedPlaceData:v6];

  v7 = objc_alloc_init(SACommandSucceeded);

  return v7;
}

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v8 = a3;
  v6 = [(MAHandleCacheMapItem *)self _performWithServiceHelper:a4];
  if (v8)
  {
    v7 = [v6 dictionary];
    v8[2](v8, v7);
  }
}

@end