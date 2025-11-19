@interface PHAssetCameraCaptureDeviceProperties
+ (id)propertiesToFetch;
- (PHAssetCameraCaptureDeviceProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetCameraCaptureDeviceProperties

- (PHAssetCameraCaptureDeviceProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v14.receiver = self;
  v14.super_class = PHAssetCameraCaptureDeviceProperties;
  v8 = [(PHAssetCameraCaptureDeviceProperties *)&v14 init];
  if (v8)
  {
    if (v5)
    {
      v9 = @"additionalAttributes.cameraCaptureDevice";
    }

    else
    {
      v9 = @"cameraCaptureDevice";
    }

    v10 = [v7 objectForKeyedSubscript:v9];
    v11 = [v10 integerValue];

    v12 = v11 << 16;
    if (v11 <= 2)
    {
      v8->_isSelfie = 0x100u >> (8 * BYTE2(v12));
    }

    v8->_isFrontRear = v12 == 0x20000;
  }

  return v8;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_48;

  return v2;
}

void __57__PHAssetCameraCaptureDeviceProperties_propertiesToFetch__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"cameraCaptureDevice";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_48;
  propertiesToFetch_pl_once_object_48 = v1;
}

@end