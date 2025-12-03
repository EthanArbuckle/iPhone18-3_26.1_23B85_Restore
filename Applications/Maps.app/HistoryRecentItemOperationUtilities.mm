@interface HistoryRecentItemOperationUtilities
+ (void)fetchHistoryItemsMatchingMapItem:(id)item completion:(id)completion;
+ (void)saveGeoMapItem:(id)item;
@end

@implementation HistoryRecentItemOperationUtilities

+ (void)saveGeoMapItem:(id)item
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100ADCE24;
  v5[3] = &unk_101655400;
  itemCopy = item;
  v4 = itemCopy;
  [self fetchHistoryItemsMatchingMapItem:v4 completion:v5];
}

+ (void)fetchHistoryItemsMatchingMapItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [_TtC8MapsSync22MapsSyncQueryPredicate alloc];
  [itemCopy coordinate];
  v10 = v9;
  [itemCopy coordinate];
  v11 = [v8 initWithCenterLatitude:v10 centerLongitude:? squareSideLengthMeters:?];
  v12 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v11 sortDescriptors:0 range:0];
  v13 = objc_alloc_init(MSHistoryPlaceItemRequest);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100ADD0BC;
  v17[3] = &unk_10165FB28;
  v18 = itemCopy;
  v19 = v7;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = v7;
  v16 = itemCopy;
  [v13 fetchWithOptions:v12 completionHandler:v17];
}

@end