@interface HistoryRecentItemOperationUtilities
+ (void)fetchHistoryItemsMatchingMapItem:(id)a3 completion:(id)a4;
+ (void)saveGeoMapItem:(id)a3;
@end

@implementation HistoryRecentItemOperationUtilities

+ (void)saveGeoMapItem:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100ADCE24;
  v5[3] = &unk_101655400;
  v6 = a3;
  v4 = v6;
  [a1 fetchHistoryItemsMatchingMapItem:v4 completion:v5];
}

+ (void)fetchHistoryItemsMatchingMapItem:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [_TtC8MapsSync22MapsSyncQueryPredicate alloc];
  [v5 coordinate];
  v10 = v9;
  [v5 coordinate];
  v11 = [v8 initWithCenterLatitude:v10 centerLongitude:? squareSideLengthMeters:?];
  v12 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v11 sortDescriptors:0 range:0];
  v13 = objc_alloc_init(MSHistoryPlaceItemRequest);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100ADD0BC;
  v17[3] = &unk_10165FB28;
  v18 = v5;
  v19 = v7;
  v20 = v6;
  v14 = v6;
  v15 = v7;
  v16 = v5;
  [v13 fetchWithOptions:v12 completionHandler:v17];
}

@end