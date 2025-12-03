@interface BKSeriesItem
+ (id)fetchRequest;
+ (id)insertSeriesContainerWithSeriesAdamId:(id)id intoManagedObjectContext:(id)context;
+ (id)insertSeriesItemWithAdamId:(id)id seriesAdamId:(id)adamId intoManagedObjectContext:(id)context;
+ (id)insertStoreItemWithAdamId:(id)id intoManagedObjectContext:(id)context;
@end

@implementation BKSeriesItem

+ (id)insertSeriesItemWithAdamId:(id)id seriesAdamId:(id)adamId intoManagedObjectContext:(id)context
{
  adamIdCopy = adamId;
  idCopy = id;
  v9 = [NSEntityDescription insertNewObjectForEntityForName:@"BKSeriesItem" inManagedObjectContext:context];
  [v9 setAdamId:idCopy];

  [v9 setSeriesAdamId:adamIdCopy];

  return v9;
}

+ (id)insertSeriesContainerWithSeriesAdamId:(id)id intoManagedObjectContext:(id)context
{
  v4 = [self insertSeriesItemWithAdamId:id seriesAdamId:id intoManagedObjectContext:context];
  [v4 setIsContainer:&__kCFBooleanTrue];

  return v4;
}

+ (id)insertStoreItemWithAdamId:(id)id intoManagedObjectContext:(id)context
{
  idCopy = id;
  v6 = [NSEntityDescription insertNewObjectForEntityForName:@"BKSeriesItem" inManagedObjectContext:context];
  [v6 setAdamId:idCopy];

  return v6;
}

+ (id)fetchRequest
{
  v2 = NSStringFromClass(self);
  v3 = [NSFetchRequest fetchRequestWithEntityName:v2];

  return v3;
}

@end