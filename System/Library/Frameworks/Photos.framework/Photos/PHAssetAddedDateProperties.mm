@interface PHAssetAddedDateProperties
+ (id)propertiesToFetch;
- (NSDate)addedDate;
@end

@implementation PHAssetAddedDateProperties

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_71;

  return v2;
}

void __47__PHAssetAddedDateProperties_propertiesToFetch__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"addedDate";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_71;
  propertiesToFetch_pl_once_object_71 = v1;
}

- (NSDate)addedDate
{
  knownKeysDictionary = [(PHBatchFetchedAssetPropertySet *)self knownKeysDictionary];
  v3 = [knownKeysDictionary valueAtIndex:1];

  return v3;
}

@end