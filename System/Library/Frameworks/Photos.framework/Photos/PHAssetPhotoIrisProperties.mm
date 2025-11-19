@interface PHAssetPhotoIrisProperties
+ (id)propertiesToFetch;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)photoIrisStillDisplayTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)photoIrisVideoDuration;
- (PHAssetPhotoIrisProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetPhotoIrisProperties

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)photoIrisVideoDuration
{
  *&retstr->var0 = *(&self[1].var3 + 4);
  retstr->var3 = *&self[2].var2;
  return self;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)photoIrisStillDisplayTime
{
  *&retstr->var0 = *(&self->var3 + 4);
  retstr->var3 = *&self[1].var2;
  return self;
}

- (PHAssetPhotoIrisProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v27.receiver = self;
  v27.super_class = PHAssetPhotoIrisProperties;
  v10 = [(PHAssetPhotoIrisProperties *)&v27 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, v9);
    v12 = [v9 videoCpDurationValue];
    v13 = !v5;
    if (v5)
    {
      v14 = @"additionalAttributes.videoCpDurationTimescale";
    }

    else
    {
      v14 = @"videoCpDurationTimescale";
    }

    if (v5)
    {
      v15 = @"additionalAttributes.videoCpDisplayValue";
    }

    else
    {
      v15 = @"videoCpDisplayValue";
    }

    if (v13)
    {
      v16 = @"videoCpDisplayTimescale";
    }

    else
    {
      v16 = @"additionalAttributes.videoCpDisplayTimescale";
    }

    v17 = [v8 objectForKeyedSubscript:v14];
    v18 = [v17 integerValue];

    v19 = [v8 objectForKeyedSubscript:v15];
    v20 = [v19 integerValue];

    v21 = [v8 objectForKeyedSubscript:v16];
    v22 = [v21 integerValue];

    CMTimeMake(&v26, v20, v22);
    v23 = *&v26.value;
    *&v11->_photoIrisStillDisplayTime.flags = v26.epoch;
    *(&v11->_photoIrisVisibilityState + 2) = v23;
    CMTimeMake(&v26, v12, v18);
    v24 = *&v26.value;
    *&v11->_photoIrisVideoDuration.flags = v26.epoch;
    *(&v11->_photoIrisStillDisplayTime.epoch + 4) = v24;
    v11->_photoIrisVisibilityState = [v9 videoCpVisibilityState];
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_54;

  return v2;
}

void __47__PHAssetPhotoIrisProperties_propertiesToFetch__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"videoCpDurationTimescale";
  v3[1] = @"videoCpDisplayValue";
  v3[2] = @"videoCpDisplayTimescale";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_54;
  propertiesToFetch_pl_once_object_54 = v1;
}

@end