@interface AVPixelBufferAttributesVideoOutputSettings
+ (id)_videoOutputSettingsWithVideoSettingsDictionary:(id)a3 exceptionReason:(id *)a4;
+ (id)eligibleOutputSettingsDictionaryKeys;
- (AVPixelBufferAttributesVideoOutputSettings)initWithPixelBufferAttributes:(id)a3 exceptionReason:(id *)a4;
- (AVPixelBufferAttributesVideoOutputSettings)initWithTrustedPixelBufferAttributes:(id)a3;
- (NSDictionary)pixelBufferAttributes;
- (NSString)fieldMode;
- (int)height;
- (int)width;
- (void)dealloc;
@end

@implementation AVPixelBufferAttributesVideoOutputSettings

+ (id)eligibleOutputSettingsDictionaryKeys
{
  valid = AVVideoOutputSettingsValidPixelBufferAttributesKeys();
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"AVVideoScalingModeKey", @"AVVideoColorPropertiesKey", @"AVVideoAllowWideColorKey", @"AVVideoPixelAspectRatioKey", @"AVVideoCleanApertureKey", @"AVVideoFrameRateConversionAlgorithm", @"AVVideoDecompressionPropertiesKey", @"AVVideoMinimumFrameDuration", @"AVVideoEmitSequencesAtSyncFramesOnly", @"AVVideoMinimumIntervalForSyncFrames", @"AVVideoAverageIntervalForSyncFramesKey", 0}];

  return [valid setByAddingObjectsFromSet:v3];
}

+ (id)_videoOutputSettingsWithVideoSettingsDictionary:(id)a3 exceptionReason:(id *)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithPixelBufferAttributes:a3 exceptionReason:a4];

  return v4;
}

- (AVPixelBufferAttributesVideoOutputSettings)initWithPixelBufferAttributes:(id)a3 exceptionReason:(id *)a4
{
  v31.receiver = self;
  v31.super_class = AVPixelBufferAttributesVideoOutputSettings;
  v32 = 0;
  v6 = [(AVVideoOutputSettings *)&v31 initWithVideoSettingsDictionary:a3 exceptionReason:&v32];
  v7 = v6;
  if (a3 && v6)
  {
    v8 = [a3 objectForKey:*MEMORY[0x1E6966208]];
    v9 = [a3 objectForKey:*MEMORY[0x1E69660B8]];
    if (v8 && [v8 integerValue] < 0 || v9 && objc_msgSend(v9, "integerValue") < 0)
    {
      v10 = 0;
      v32 = @"Pixel buffer attributes width and height must be nonnegative";
    }

    else
    {
      v10 = 1;
    }

    v11 = [a3 objectForKey:@"AVVideoScalingModeKey"];
    v12 = [objc_opt_class() _validValuesForScalingMode];
    if (v10 && v11)
    {
      v13 = v12;
      if ([v12 containsObject:v11])
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value for AVVideoScalingModeKey must be one of: %@", objc_msgSend(objc_msgSend(v13, "allObjects"), "componentsJoinedByString:", @", ")];
      }
    }

    v14 = [a3 objectForKey:@"AVVideoPixelAspectRatioKey"];
    if (v10 && v14)
    {
      v30 = 0;
      v10 = AVVideoOutputSettingsValidateAVPixelAspectRatioDictionaryAndReturnVTPixelAspectRatioDictionary(v14, &v30, &v32);
      v7->_VTPixelAspectRatioDictionary = [v30 copy];
    }

    v15 = [a3 objectForKey:@"AVVideoCleanApertureKey"];
    if (v10 && v15)
    {
      v30 = 0;
      v10 = AVVideoOutputSettingsValidateAVCleanApertureDictionaryAndReturnVTCleanApertureDictionary(v15, v8, v9, &v30, &v32);
      v7->_VTCleanApertureDictionary = [v30 copy];
    }

    v16 = [a3 objectForKey:@"AVVideoColorPropertiesKey"];
    if (v10 && v16)
    {
      v10 = AVVideoOutputSettingsValidateVideoColorProperties(v16, &v32);
    }

    v17 = [a3 objectForKey:@"AVVideoAllowWideColorKey"];
    if (v10 && v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        v32 = @"Dictionary for AVVideoAllowWideColorKey must be an NSNumber";
      }
    }

    v18 = [a3 objectForKey:@"AVVideoMinimumFrameDuration"];
    if (v10 && v18)
    {
      v10 = AVVideoOutputSettingsValidateMinimumFrameDuration(v18, &v32);
    }

    v19 = [a3 objectForKey:@"AVVideoFrameRateConversionAlgorithm"];
    if (v10 && v19)
    {
      v10 = AVVideoOutputSettingsValidateFrameRateConversionAlgorithm(v19, &v32);
    }

    v20 = [a3 objectForKey:@"AVVideoDecompressionPropertiesKey"];
    v21 = [v20 objectForKey:*MEMORY[0x1E6983938]];
    if (v10)
    {
      v22 = v21;
      if (v21)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v22 isEqualToString:*MEMORY[0x1E6983A10]] & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", *MEMORY[0x1E6983A30]) & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", *MEMORY[0x1E6983A18]) & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", *MEMORY[0x1E6983A28]) & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", *MEMORY[0x1E6983A20]))
          {
            v10 = 1;
            goto LABEL_45;
          }

          v23 = @"kVTDecompressionPropertyKey_FieldMode must be one of: kVTDecompressionProperty_FieldMode_BothFields, kVTDecompressionProperty_FieldMode_TopFieldOnly, kVTDecompressionProperty_FieldMode_BottomFieldOnly, kVTDecompressionProperty_FieldMode_SingleField, or kVTDecompressionProperty_FieldMode_DeinterlaceFields";
        }

        else
        {
          v23 = @"String for kVTDecompressionPropertyKey_FieldMode must be an NSString";
        }

        v10 = 0;
        v32 = v23;
      }
    }

LABEL_45:
    v24 = [a3 objectForKey:@"AVVideoDecompressionPropertiesKey"];
    v25 = [v24 objectForKey:*MEMORY[0x1E6983998]];
    if (v10 && v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        v32 = @"Value for kVTDecompressionPropertyKey_PropagatePerFrameHDRDisplayMetadata must be an NSNumber";
      }
    }

    v26 = [a3 objectForKey:@"AVVideoEmitSequencesAtSyncFramesOnly"];
    if (v10 && v26)
    {
      v10 = AVVideoOutputSettingsValidateEmitSequencesAtSyncFramesOnly(v26, &v32);
    }

    v27 = [a3 objectForKey:@"AVVideoMinimumIntervalForSyncFrames"];
    if (v10 && v27)
    {
      v10 = AVVideoOutputSettingsValidateMinimumFrameDuration(v27, &v32);
    }

    v28 = [a3 objectForKey:*MEMORY[0x1E6966100]];
    if (v10 && v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v32 = @"Value for kCVPixelBufferMetalCompatibilityKey must be an NSNumber wrapping a BOOL";
    }

    else if (v10)
    {
      goto LABEL_63;
    }

    v7 = 0;
  }

LABEL_63:
  if (a4)
  {
    *a4 = v32;
  }

  return v7;
}

- (AVPixelBufferAttributesVideoOutputSettings)initWithTrustedPixelBufferAttributes:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVPixelBufferAttributesVideoOutputSettings;
  v4 = [(AVVideoOutputSettings *)&v8 initWithVideoSettingsDictionary:a3 exceptionReason:0];
  v5 = [a3 objectForKey:@"AVVideoPixelAspectRatioKey"];
  if (v5)
  {
    v4->_VTPixelAspectRatioDictionary = [AVVideoOutputSettingsVTPASPDictionaryForAVPASPDictionary(v5) copy];
  }

  v6 = [a3 objectForKey:@"AVVideoCleanApertureKey"];
  if (v6)
  {
    v4->_VTCleanApertureDictionary = [AVVideoOutputSettingsVTCLAPDictionaryForAVCLAPDictionary(v6) copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPixelBufferAttributesVideoOutputSettings;
  [(AVOutputSettings *)&v3 dealloc];
}

- (int)width
{
  v2 = [(AVOutputSettings *)self outputSettingsDictionary];
  v3 = [(NSDictionary *)v2 objectForKey:*MEMORY[0x1E6966208]];
  if (v3)
  {
    LODWORD(v3) = [v3 integerValue];
  }

  return v3;
}

- (int)height
{
  v2 = [(AVOutputSettings *)self outputSettingsDictionary];
  v3 = [(NSDictionary *)v2 objectForKey:*MEMORY[0x1E69660B8]];
  if (v3)
  {
    LODWORD(v3) = [v3 integerValue];
  }

  return v3;
}

- (NSDictionary)pixelBufferAttributes
{
  v2 = [(AVVideoOutputSettings *)self videoSettingsDictionary];
  v3 = [MEMORY[0x1E695DFA8] setWithArray:{-[NSDictionary allKeys](v2, "allKeys")}];
  [v3 intersectSet:AVVideoOutputSettingsValidPixelBufferAttributesKeys()];
  v4 = [v3 allObjects];

  return [(NSDictionary *)v2 dictionaryWithValuesForKeys:v4];
}

- (NSString)fieldMode
{
  v2 = [(NSDictionary *)[(AVVideoOutputSettings *)self videoSettingsDictionary] objectForKey:@"AVVideoDecompressionPropertiesKey"];
  v3 = *MEMORY[0x1E6983938];

  return [v2 objectForKey:v3];
}

@end