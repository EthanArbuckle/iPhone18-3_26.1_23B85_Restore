@interface AXMIconClassDetectorNode
- (id)_localizedClassForClass:(id)a3;
- (id)classLabelForIdx:(unint64_t)a3;
- (id)mlModelClasses;
- (id)mobileAssetType;
- (unint64_t)maxSupportedFormatVersion;
- (unint64_t)minSupportedFormatVersion;
- (void)_initializeClassLabels;
- (void)evaluate:(id)a3 metrics:(id)a4;
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
  v2 = [MEMORY[0x1E69881D0] policy];
  v3 = [v2 assetType];

  return v3;
}

- (unint64_t)minSupportedFormatVersion
{
  v2 = [MEMORY[0x1E69881D0] policy];
  v3 = [v2 minSupportedFormatVersion];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)maxSupportedFormatVersion
{
  v2 = [MEMORY[0x1E69881D0] policy];
  v3 = [v2 maxSupportedFormatVersion];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)classLabelForIdx:(unint64_t)a3
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

  if ([-[AXMIconClassDetectorNode classLabelForIdx:]::classLabels count] <= a3)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = [-[AXMIconClassDetectorNode classLabelForIdx:]::classLabels objectAtIndexedSubscript:a3];
  }

  return v7;
}

- (void)_initializeClassLabels
{
  if (!self->_iconClassLabels)
  {
    v3 = [(AXMMobileAssetEvaluationNode *)self mobileAssetBaseURL];

    if (v3)
    {
      v4 = [(AXMMobileAssetEvaluationNode *)self mobileAssetBaseURL];
      v9 = [v4 URLByAppendingPathComponent:@"iconTypes.plist"];

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

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v65.receiver = self;
  v65.super_class = AXMIconClassDetectorNode;
  [(AXMMobileAssetEvaluationNode *)&v65 evaluate:v6 metrics:v7];
  if (!self->_iconClassLabels)
  {
    [(AXMIconClassDetectorNode *)self _initializeClassLabels];
  }

  v8 = [(AXMMobileAssetEvaluationNode *)self mlModels];
  v9 = [v8 count];
  v10 = [(AXMIconClassDetectorNode *)self mlModelClasses];
  LOBYTE(v9) = v9 < [v10 count];

  if ((v9 & 1) == 0)
  {
    v11 = [v6 generateImageRepresentation];
    [v11 extent];
    v13 = v12;
    [v11 extent];
    v15 = v14;
    [v11 extent];
    v17 = v16;
    [v11 extent];
    if (v17 <= v18)
    {
      [v11 extent];
      v20 = v21;
    }

    else
    {
      [v11 extent];
      v20 = v19;
    }

    v22 = [MEMORY[0x1E695F648] filterWithName:@"CILanczosScaleTransform"];
    [v22 setValue:v11 forKey:@"inputImage"];
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:256.0 / v20];
    [v22 setValue:v23 forKey:@"inputScale"];

    v24 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 / (v13 / v15)];
    [v22 setValue:v24 forKey:@"inputAspectRatio"];

    v25 = [v22 outputImage];

    v26 = v25;
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
      [v62 render:v25 toCVPixelBuffer:pixelBufferOut];
      v28 = [iconclassificationInput alloc];
      v60 = [(iconclassificationInput *)v28 initWithImage_Placeholder:pixelBufferOut];
      v29 = [(AXMMobileAssetEvaluationNode *)self mlModels];
      v30 = [v29 firstObject];
      v63 = 0;
      v31 = [v30 predictionFromFeatures:v60 error:&v63];
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
        v42 = [v31 leaf_leaf_predictions_probabilities];
        v43 = v40 < [v42 count];

        if (!v43)
        {
          break;
        }

        v44 = [v31 leaf_leaf_predictions_probabilities];
        v45 = [v44 objectAtIndexedSubscript:v40];
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
        [v6 appendFeature:v59];

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

- (id)_localizedClassForClass:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v5 = [@"icon.type." stringByAppendingString:v3];
  v6 = [v4 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];

  return v6;
}

@end