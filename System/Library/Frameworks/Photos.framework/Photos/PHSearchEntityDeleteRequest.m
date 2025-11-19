@interface PHSearchEntityDeleteRequest
+ (void)deleteAllSearchEntities;
- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4;
@end

@implementation PHSearchEntityDeleteRequest

- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = [a4 managedObjectContext];
  [v6 deleteObject:v5];
}

+ (void)deleteAllSearchEntities
{
  v6 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
  v3 = [v6 librarySpecificFetchOptions];
  v4 = [PHSearchEntity fetchSearchEntitiesWithOptions:v3];

  v5 = [(PHObjectDeleteRequest *)PHSearchEntityDeleteRequest deleteRequestsForObjects:v4 ofType:objc_opt_class() forSelector:a2];
}

@end