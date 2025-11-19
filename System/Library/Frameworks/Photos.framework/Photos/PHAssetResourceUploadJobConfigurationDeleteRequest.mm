@interface PHAssetResourceUploadJobConfigurationDeleteRequest
- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4;
@end

@implementation PHAssetResourceUploadJobConfigurationDeleteRequest

- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = [a4 managedObjectContext];
  [v6 deleteObject:v5];
}

@end