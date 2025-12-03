@interface PHSearchEntityDeleteRequest
+ (void)deleteAllSearchEntities;
- (void)deleteManagedObject:(id)object photoLibrary:(id)library;
@end

@implementation PHSearchEntityDeleteRequest

- (void)deleteManagedObject:(id)object photoLibrary:(id)library
{
  objectCopy = object;
  managedObjectContext = [library managedObjectContext];
  [managedObjectContext deleteObject:objectCopy];
}

+ (void)deleteAllSearchEntities
{
  v6 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
  librarySpecificFetchOptions = [v6 librarySpecificFetchOptions];
  v4 = [PHSearchEntity fetchSearchEntitiesWithOptions:librarySpecificFetchOptions];

  v5 = [(PHObjectDeleteRequest *)PHSearchEntityDeleteRequest deleteRequestsForObjects:v4 ofType:objc_opt_class() forSelector:a2];
}

@end