@interface PHAssetTextUnderstandingProperties
+ (id)propertiesToFetch;
- (PHAssetTextUnderstandingProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetTextUnderstandingProperties

- (PHAssetTextUnderstandingProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = PHAssetTextUnderstandingProperties;
  v10 = [(PHAssetTextUnderstandingProperties *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, v9);
    if (v5)
    {
      v12 = @"mediaAnalysisAttributes.characterRecognitionAttributes.textUnderstandingData";
    }

    else
    {
      v12 = @"characterRecognitionAttributes.textUnderstandingData";
    }

    if (v5)
    {
      v13 = @"mediaAnalysisAttributes.textUnderstandingVersion";
    }

    else
    {
      v13 = @"textUnderstandingVersion";
    }

    v14 = [v8 objectForKeyedSubscript:v12];
    textUnderstandingData = v11->_textUnderstandingData;
    v11->_textUnderstandingData = v14;

    v16 = [v8 objectForKeyedSubscript:v13];
    v11->_textUnderstandingVersion = [v16 integerValue];
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_63;

  return v2;
}

void __55__PHAssetTextUnderstandingProperties_propertiesToFetch__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"characterRecognitionAttributes.textUnderstandingData";
  v3[1] = @"textUnderstandingVersion";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_63;
  propertiesToFetch_pl_once_object_63 = v1;
}

@end