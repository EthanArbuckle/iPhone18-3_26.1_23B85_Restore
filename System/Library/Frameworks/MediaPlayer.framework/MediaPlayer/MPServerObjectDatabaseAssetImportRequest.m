@interface MPServerObjectDatabaseAssetImportRequest
- (BOOL)performWithDatabaseOperations:(id)a3 error:(id *)a4;
@end

@implementation MPServerObjectDatabaseAssetImportRequest

- (BOOL)performWithDatabaseOperations:(id)a3 error:(id *)a4
{
  v6 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v6 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    [v8 handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabaseImportRequest.m" lineNumber:826 description:{@"Subclass %@ must implement -%@ defined in %@.", v10, v11, @"[MPServerObjectDatabaseAssetImportRequest class]"}];
  }

  return 0;
}

@end