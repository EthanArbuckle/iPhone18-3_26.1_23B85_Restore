@interface PHAssetDestinationAssetCopyProperties
+ (id)propertiesToFetch;
- (PHAssetDestinationAssetCopyProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetDestinationAssetCopyProperties

- (PHAssetDestinationAssetCopyProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PHAssetDestinationAssetCopyProperties;
  v10 = [(PHAssetDestinationAssetCopyProperties *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, v9);
    if (v5)
    {
      v12 = @"additionalAttributes.destinationAssetCopyState";
    }

    else
    {
      v12 = @"destinationAssetCopyState";
    }

    v13 = [v8 objectForKeyedSubscript:v12];
    v14 = [v13 integerValue];

    if ((v14 + 1) <= 3)
    {
      v11->_destinationAssetCopyState = v14;
    }
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_67;

  return v2;
}

void __58__PHAssetDestinationAssetCopyProperties_propertiesToFetch__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"destinationAssetCopyState";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_67;
  propertiesToFetch_pl_once_object_67 = v1;
}

@end