@interface PHAssetVisualSearchProperties
+ (id)propertiesToFetch;
- (PHAssetVisualSearchProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetVisualSearchProperties

- (PHAssetVisualSearchProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v31.receiver = self;
  v31.super_class = PHAssetVisualSearchProperties;
  v10 = [(PHAssetVisualSearchProperties *)&v31 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, v9);
    if (v5)
    {
      v12 = [v8 objectForKeyedSubscript:@"mediaAnalysisAttributes.visualSearchAttributes.visualSearchData"];
      visualSearchData = v11->_visualSearchData;
      v11->_visualSearchData = v12;

      v14 = [v8 objectForKeyedSubscript:@"mediaAnalysisAttributes.visualSearchVersion"];
      v11->_algorithmVersion = [v14 integerValue];

      v15 = [v8 objectForKeyedSubscript:@"mediaAnalysisAttributes.visualSearchAttributes.adjustmentVersion"];
      adjustmentVersion = v11->_adjustmentVersion;
      v11->_adjustmentVersion = v15;

      v17 = [v8 objectForKeyedSubscript:@"mediaAnalysisAttributes.asset.stickerConfidenceScore"];

      if (v17)
      {
        v18 = [v8 objectForKeyedSubscript:@"mediaAnalysisAttributes.asset.stickerConfidenceScore"];
        [v18 floatValue];
        v11->_stickerConfidenceScore = v19;

        v20 = @"mediaAnalysisAttributes.visualSearchStickerConfidenceVersion";
LABEL_7:
        v29 = [v8 objectForKeyedSubscript:v20];
        v11->_stickerAlgorithmVersion = [v29 integerValue];

        goto LABEL_9;
      }
    }

    else
    {
      v21 = [v8 objectForKeyedSubscript:@"visualSearchAttributes.visualSearchData"];
      v22 = v11->_visualSearchData;
      v11->_visualSearchData = v21;

      v23 = [v8 objectForKeyedSubscript:@"visualSearchVersion"];
      v11->_algorithmVersion = [v23 integerValue];

      v24 = [v8 objectForKeyedSubscript:@"visualSearchAttributes.adjustmentVersion"];
      v25 = v11->_adjustmentVersion;
      v11->_adjustmentVersion = v24;

      v26 = [v8 objectForKeyedSubscript:@"asset.stickerConfidenceScore"];

      if (v26)
      {
        v27 = [v8 objectForKeyedSubscript:@"asset.stickerConfidenceScore"];
        [v27 floatValue];
        v11->_stickerConfidenceScore = v28;

        v20 = @"visualSearchStickerConfidenceVersion";
        goto LABEL_7;
      }
    }

    v11->_stickerConfidenceScore = *MEMORY[0x1E69BE9E0];
    v11->_stickerAlgorithmVersion = 0;
  }

LABEL_9:

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_64;

  return v2;
}

void __50__PHAssetVisualSearchProperties_propertiesToFetch__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"visualSearchAttributes.visualSearchData";
  v3[1] = @"visualSearchStickerConfidenceVersion";
  v3[2] = @"asset.stickerConfidenceScore";
  v3[3] = @"visualSearchVersion";
  v3[4] = @"visualSearchAttributes.adjustmentVersion";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_64;
  propertiesToFetch_pl_once_object_64 = v1;
}

@end