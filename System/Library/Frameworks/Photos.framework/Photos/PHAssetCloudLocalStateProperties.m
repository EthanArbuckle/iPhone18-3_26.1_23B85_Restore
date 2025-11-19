@interface PHAssetCloudLocalStateProperties
+ (id)additionalPropertiesToFetchOnPrimaryObject;
+ (id)propertiesToFetch;
+ (unsigned)_assetCloudLocalStateFromAssetLocalState:(signed __int16)a3 masterLocalState:(signed __int16)a4;
- (PHAssetCloudLocalStateProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetCloudLocalStateProperties

- (PHAssetCloudLocalStateProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = PHAssetCloudLocalStateProperties;
  v10 = [(PHAssetCloudLocalStateProperties *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, v9);
    v12 = [v8 objectForKeyedSubscript:@"master"];
    cloudMasterObjectID = v11->_cloudMasterObjectID;
    v11->_cloudMasterObjectID = v12;

    v14 = [v8 objectForKeyedSubscript:@"cloudLocalState"];
    v15 = [v14 integerValue];

    if (v5)
    {
      v16 = @"master.cloudLocalState";
    }

    else
    {
      v16 = @"cloudLocalState";
    }

    v17 = [v8 objectForKeyedSubscript:v16];
    v18 = [v17 integerValue];

    v11->_assetCloudLocalState = [objc_opt_class() _assetCloudLocalStateFromAssetLocalState:v15 masterLocalState:v18];
  }

  return v11;
}

+ (unsigned)_assetCloudLocalStateFromAssetLocalState:(signed __int16)a3 masterLocalState:(signed __int16)a4
{
  if (a3 > 2)
  {
    if (a3 == 4)
    {
      LOWORD(v4) = 4;
      return v4;
    }

    if (a3 != 3)
    {
      LOWORD(v4) = 0;
      return v4;
    }
  }

  else if (a3 != 1)
  {
    if (a3 == 2)
    {
      LOWORD(v4) = 3;
    }

    else
    {
      LOWORD(v4) = 0;
    }

    return v4;
  }

  v4 = 0x4000200030001uLL >> (16 * (a4 - 1));
  if ((a4 - 1) >= 4u)
  {
    LOWORD(v4) = 0;
  }

  return v4;
}

+ (id)additionalPropertiesToFetchOnPrimaryObject
{
  pl_dispatch_once();
  v2 = additionalPropertiesToFetchOnPrimaryObject_pl_once_object_73;

  return v2;
}

void __78__PHAssetCloudLocalStateProperties_additionalPropertiesToFetchOnPrimaryObject__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"cloudLocalState";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = additionalPropertiesToFetchOnPrimaryObject_pl_once_object_73;
  additionalPropertiesToFetchOnPrimaryObject_pl_once_object_73 = v1;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_72;

  return v2;
}

void __53__PHAssetCloudLocalStateProperties_propertiesToFetch__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"objectID";
  v3[1] = @"cloudLocalState";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_72;
  propertiesToFetch_pl_once_object_72 = v1;
}

@end