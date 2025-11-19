@interface PHAssetCharacterRecognitionProperties
+ (id)propertiesToFetch;
- (PHAssetCharacterRecognitionProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetCharacterRecognitionProperties

- (PHAssetCharacterRecognitionProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v25.receiver = self;
  v25.super_class = PHAssetCharacterRecognitionProperties;
  v10 = [(PHAssetCharacterRecognitionProperties *)&v25 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, v9);
    v12 = !v5;
    if (v5)
    {
      v13 = @"mediaAnalysisAttributes.characterRecognitionAttributes.characterRecognitionData";
    }

    else
    {
      v13 = @"characterRecognitionAttributes.characterRecognitionData";
    }

    if (v5)
    {
      v14 = @"mediaAnalysisAttributes.characterRecognitionAttributes.machineReadableCodeData";
    }

    else
    {
      v14 = @"characterRecognitionAttributes.machineReadableCodeData";
    }

    if (v12)
    {
      v15 = @"characterRecognitionVersion";
    }

    else
    {
      v15 = @"mediaAnalysisAttributes.characterRecognitionVersion";
    }

    if (v12)
    {
      v16 = @"characterRecognitionAttributes.adjustmentVersion";
    }

    else
    {
      v16 = @"mediaAnalysisAttributes.characterRecognitionAttributes.adjustmentVersion";
    }

    v17 = [v8 objectForKeyedSubscript:v13];
    characterRecognitionData = v11->_characterRecognitionData;
    v11->_characterRecognitionData = v17;

    v19 = [v8 objectForKeyedSubscript:v14];
    machineReadableCodeData = v11->_machineReadableCodeData;
    v11->_machineReadableCodeData = v19;

    v21 = [v8 objectForKeyedSubscript:v15];
    v11->_algorithmVersion = [v21 integerValue];

    v22 = [v8 objectForKeyedSubscript:v16];
    adjustmentVersion = v11->_adjustmentVersion;
    v11->_adjustmentVersion = v22;
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_62;

  return v2;
}

void __58__PHAssetCharacterRecognitionProperties_propertiesToFetch__block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = @"characterRecognitionAttributes.characterRecognitionData";
  v3[1] = @"characterRecognitionAttributes.machineReadableCodeData";
  v3[2] = @"characterRecognitionVersion";
  v3[3] = @"characterRecognitionAttributes.adjustmentVersion";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_62;
  propertiesToFetch_pl_once_object_62 = v1;
}

@end