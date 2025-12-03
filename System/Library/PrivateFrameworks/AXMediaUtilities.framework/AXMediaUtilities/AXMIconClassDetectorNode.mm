@interface AXMIconClassDetectorNode
- (id)_localizedClassForClass:(id)class;
- (id)classLabelForIdx:(unint64_t)idx;
- (id)mlModelClasses;
- (id)mobileAssetType;
- (unint64_t)maxSupportedFormatVersion;
- (unint64_t)minSupportedFormatVersion;
- (void)_initializeClassLabels;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
@end

@implementation AXMIconClassDetectorNode

- (id)mlModelClasses
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(AXMMobileAssetEvaluationNode *)self formatVersion]== 2)
  {
    v14[0] = objc_opt_class();
    v3 = v14;
  }

  else
  {
    v4 = AXMediaLogMLElement();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXMIconClassDetectorNode *)self mlModelClasses:v4];
    }

    v13 = objc_opt_class();
    v3 = &v13;
  }

  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v11;
}

- (id)mobileAssetType
{
  policy = [MEMORY[0x1E69881D0] policy];
  assetType = [policy assetType];

  return assetType;
}

- (unint64_t)minSupportedFormatVersion
{
  policy = [MEMORY[0x1E69881D0] policy];
  minSupportedFormatVersion = [policy minSupportedFormatVersion];
  unsignedIntegerValue = [minSupportedFormatVersion unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)maxSupportedFormatVersion
{
  policy = [MEMORY[0x1E69881D0] policy];
  maxSupportedFormatVersion = [policy maxSupportedFormatVersion];
  unsignedIntegerValue = [maxSupportedFormatVersion unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)classLabelForIdx:(unint64_t)idx
{
  iconClassLabels = self->_iconClassLabels;
  if (iconClassLabels)
  {
    v5 = iconClassLabels;
  }

  else
  {
    v5 = &unk_1F240B478;
  }

  v6 = [AXMIconClassDetectorNode classLabelForIdx:]::classLabels;
  [AXMIconClassDetectorNode classLabelForIdx:]::classLabels = v5;

  if ([-[AXMIconClassDetectorNode classLabelForIdx:]::classLabels count] <= idx)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = [-[AXMIconClassDetectorNode classLabelForIdx:]::classLabels objectAtIndexedSubscript:idx];
  }

  return v7;
}

- (void)_initializeClassLabels
{
  if (!self->_iconClassLabels)
  {
    mobileAssetBaseURL = [(AXMMobileAssetEvaluationNode *)self mobileAssetBaseURL];

    if (mobileAssetBaseURL)
    {
      mobileAssetBaseURL2 = [(AXMMobileAssetEvaluationNode *)self mobileAssetBaseURL];
      v9 = [mobileAssetBaseURL2 URLByAppendingPathComponent:@"iconTypes.plist"];

      if (v9)
      {
        v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:?];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [v5 objectForKey:@"iconTypes"];
          iconClassLabels = self->_iconClassLabels;
          self->_iconClassLabels = v6;
        }
      }

      MEMORY[0x1EEE66BE0]();
    }

    else
    {
      v8 = AXMediaLogMLElement();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(AXMIconClassDetectorNode *)v8 _initializeClassLabels];
      }
    }
  }
}

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  v70 = *MEMORY[0x1E69E9840];
  evaluateCopy = evaluate;
  metricsCopy = metrics;
  v65.receiver = self;
  v65.super_class = AXMIconClassDetectorNode;
  [(AXMMobileAssetEvaluationNode *)&v65 evaluate:evaluateCopy metrics:metricsCopy];
  if (!self->_iconClassLabels)
  {
    [(AXMIconClassDetectorNode *)self _initializeClassLabels];
  }

  mlModels = [(AXMMobileAssetEvaluationNode *)self mlModels];
  v9 = [mlModels count];
  mlModelClasses = [(AXMIconClassDetectorNode *)self mlModelClasses];
  LOBYTE(v9) = v9 < [mlModelClasses count];

  if ((v9 & 1) == 0)
  {
    generateImageRepresentation = [evaluateCopy generateImageRepresentation];
    [generateImageRepresentation extent];
    v13 = v12;
    [generateImageRepresentation extent];
    v15 = v14;
    [generateImageRepresentation extent];
    v17 = v16;
    [generateImageRepresentation extent];
    if (v17 <= v18)
    {
      [generateImageRepresentation extent];
      v20 = v21;
    }

    else
    {
      [generateImageRepresentation extent];
      v20 = v19;
    }

    v22 = [MEMORY[0x1E695F648] filterWithName:@"CILanczosScaleTransform"];
    [v22 setValue:generateImageRepresentation forKey:@"inputImage"];
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:256.0 / v20];
    [v22 setValue:v23 forKey:@"inputScale"];

    v24 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 / (v13 / v15)];
    [v22 setValue:v24 forKey:@"inputAspectRatio"];

    outputImage = [v22 outputImage];

    v26 = outputImage;
    pixelBufferOut = 0;
    v27 = CVPixelBufferCreate(0, 0x100uLL, 0x100uLL, 0x42475241u, 0, &pixelBufferOut);
    if (v27 || !pixelBufferOut)
    {
      if (pixelBufferOut)
      {
        CFRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      v48 = AXMediaLogMLElement();
      v62 = v48;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [(AXMIconClassDetectorNode *)v27 evaluate:v48 metrics:v49, v50, v51, v52, v53, v54];
      }
    }

    else
    {
      v62 = [MEMORY[0x1E695F620] contextWithOptions:0];
      [v62 render:outputImage toCVPixelBuffer:pixelBufferOut];
      v28 = [iconclassificationInput alloc];
      v60 = [(iconclassificationInput *)v28 initWithImage_Placeholder:pixelBufferOut];
      mlModels2 = [(AXMMobileAssetEvaluationNode *)self mlModels];
      firstObject = [mlModels2 firstObject];
      v63 = 0;
      v31 = [firstObject predictionFromFeatures:v60 error:&v63];
      v61 = v63;

      if (v61)
      {
        v32 = AXMediaLogMLElement();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [(AXMIconClassDetectorNode *)v61 evaluate:v32 metrics:v33, v34, v35, v36, v37, v38];
        }
      }

      v39 = 0;
      v40 = 0;
      v41 = 0.0;
      while (1)
      {
        leaf_leaf_predictions_probabilities = [v31 leaf_leaf_predictions_probabilities];
        v43 = v40 < [leaf_leaf_predictions_probabilities count];

        if (!v43)
        {
          break;
        }

        leaf_leaf_predictions_probabilities2 = [v31 leaf_leaf_predictions_probabilities];
        v45 = [leaf_leaf_predictions_probabilities2 objectAtIndexedSubscript:v40];
        [v45 doubleValue];
        v47 = v46;

        if (v47 > v41)
        {
          v39 = v40;
          v41 = v47;
        }

        ++v40;
      }

      v55 = [(AXMIconClassDetectorNode *)self classLabelForIdx:v39];
      v56 = AXMediaLogMLElement();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v39];
        *buf = 138412546;
        v67 = v55;
        v68 = 2112;
        v69 = v57;
        _os_log_impl(&dword_1AE37B000, v56, OS_LOG_TYPE_INFO, "Determined label class for icon: %@ (%@)", buf, 0x16u);
      }

      if (v41 > 0.9 && ([v55 isEqualToString:@"unknown"] & 1) == 0)
      {
        v58 = [(AXMIconClassDetectorNode *)self _localizedClassForClass:v55];

        v59 = [AXMVisionFeature featureWithIconClass:v58 confidence:v41];
        [evaluateCopy appendFeature:v59];

        v55 = v58;
      }

      if (pixelBufferOut)
      {
        CFRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }
    }
  }
}

- (id)_localizedClassForClass:(id)class
{
  classCopy = class;
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v5 = [@"icon.type." stringByAppendingString:classCopy];
  v6 = [v4 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];

  return v6;
}

@end