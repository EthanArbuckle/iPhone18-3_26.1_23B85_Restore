@interface BKSeriesItem
+ (id)fetchRequest;
+ (id)insertSeriesContainerWithSeriesAdamId:(id)a3 intoManagedObjectContext:(id)a4;
+ (id)insertSeriesItemWithAdamId:(id)a3 seriesAdamId:(id)a4 intoManagedObjectContext:(id)a5;
+ (id)insertStoreItemWithAdamId:(id)a3 intoManagedObjectContext:(id)a4;
@end

@implementation BKSeriesItem

+ (id)insertSeriesItemWithAdamId:(id)a3 seriesAdamId:(id)a4 intoManagedObjectContext:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [NSEntityDescription insertNewObjectForEntityForName:@"BKSeriesItem" inManagedObjectContext:a5];
  [v9 setAdamId:v8];

  [v9 setSeriesAdamId:v7];

  return v9;
}

+ (id)insertSeriesContainerWithSeriesAdamId:(id)a3 intoManagedObjectContext:(id)a4
{
  v4 = [a1 insertSeriesItemWithAdamId:a3 seriesAdamId:a3 intoManagedObjectContext:a4];
  [v4 setIsContainer:&__kCFBooleanTrue];

  return v4;
}

+ (id)insertStoreItemWithAdamId:(id)a3 intoManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = [NSEntityDescription insertNewObjectForEntityForName:@"BKSeriesItem" inManagedObjectContext:a4];
  [v6 setAdamId:v5];

  return v6;
}

+ (id)fetchRequest
{
  v2 = NSStringFromClass(a1);
  v3 = [NSFetchRequest fetchRequestWithEntityName:v2];

  return v3;
}

@end