@interface MPServerObjectDatabaseMetadataImportRequest
- (id)performWithDatabaseOperations:(id)operations augmentingPayload:(id *)payload;
@end

@implementation MPServerObjectDatabaseMetadataImportRequest

- (id)performWithDatabaseOperations:(id)operations augmentingPayload:(id *)payload
{
  v7 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v7 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabaseImportRequest.m" lineNumber:153 description:{@"Subclass %@ must implement -%@ defined in %@.", v13, v14, @"[MPServerObjectDatabaseMetadataImportRequest class]"}];
  }

  v8 = [MPServerObjectDatabaseImportResult alloc];
  v9 = [(MPServerObjectDatabaseImportResult *)v8 initWithAnnotatedPayload:payload playableAssetIdentifiers:0 importedIdentifiers:MEMORY[0x1E695E0F0] assetsCount:0 hlsAssetsCount:0 error:0];

  return v9;
}

@end