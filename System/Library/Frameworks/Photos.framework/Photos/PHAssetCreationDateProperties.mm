@interface PHAssetCreationDateProperties
+ (id)propertiesToFetch;
- (NSDate)creationDate;
@end

@implementation PHAssetCreationDateProperties

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_70;

  return v2;
}

void __50__PHAssetCreationDateProperties_propertiesToFetch__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"dateCreated";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_70;
  propertiesToFetch_pl_once_object_70 = v1;
}

- (NSDate)creationDate
{
  v2 = [(PHBatchFetchedAssetPropertySet *)self knownKeysDictionary];
  v3 = [v2 valueAtIndex:1];

  return v3;
}

@end