@interface AXMAXElementDetectorNode
- (double)IoUForbb1:(CGRect)forbb1 bb2:(CGRect)bb2;
- (id)_imageByWipingTextFromRects:(id)rects image:(id)image colorSpace:(CGColorSpace *)space ciContext:(id)context;
- (id)_nonMaxSupression:(id)supression iouThreshold:(double)threshold;
- (id)_performCrossClassNMSForDetections:(id)detections iouThreshold:(double)threshold;
- (id)_screenEquivalenceToken:(id)token;
- (id)mobileAssetType;
- (int64_t)remapUIClassForClickability:(int)clickability andClass:(int64_t)class;
- (unint64_t)maxSupportedFormatVersion;
- (unint64_t)minSupportedFormatVersion;
- (void)_evaluateANOD:(id)d metrics:(id)metrics;
- (void)_initializeClickabilityModel;
- (void)_initializeIconDetector;
- (void)_initializeMindNetDetector;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
@end

@implementation AXMAXElementDetectorNode

- (id)mobileAssetType
{
  policy = [MEMORY[0x1E69881C8] policy];
  assetType = [policy assetType];

  return assetType;
}

- (unint64_t)minSupportedFormatVersion
{
  policy = [MEMORY[0x1E69881C8] policy];
  minSupportedFormatVersion = [policy minSupportedFormatVersion];
  unsignedIntegerValue = [minSupportedFormatVersion unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)maxSupportedFormatVersion
{
  policy = [MEMORY[0x1E69881C8] policy];
  maxSupportedFormatVersion = [policy maxSupportedFormatVersion];
  unsignedIntegerValue = [maxSupportedFormatVersion unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  evaluateCopy = evaluate;
  metricsCopy = metrics;
  v12.receiver = self;
  v12.super_class = AXMAXElementDetectorNode;
  [(AXMMobileAssetEvaluationNode *)&v12 evaluate:evaluateCopy metrics:metricsCopy];
  v8 = objc_autoreleasePoolPush();
  v9 = AXMediaLogDiagnostics();
  if (os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AE37B000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AXMLElementDetectorNode", "", v11, 2u);
  }

  [(AXMAXElementDetectorNode *)self _evaluateANOD:evaluateCopy metrics:metricsCopy];
  v10 = AXMediaLogDiagnostics();
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AE37B000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AXMLElementDetectorNode", "", v11, 2u);
  }

  objc_autoreleasePoolPop(v8);
}

- (id)_imageByWipingTextFromRects:(id)rects image:(id)image colorSpace:(CGColorSpace *)space ciContext:(id)context
{
  v78 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  imageCopy = image;
  contextCopy = context;
  emptyImage = [MEMORY[0x1E695F658] emptyImage];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = rectsCopy;
  v10 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
  if (v10)
  {
    v60 = *v74;
    v59 = *MEMORY[0x1E695F910];
    v58 = *MEMORY[0x1E695FA78];
    do
    {
      v11 = 0;
      v68 = emptyImage;
      v63 = v10;
      do
      {
        if (*v74 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v65 = v11;
        v12 = *(*(&v73 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        [v12 rectValue];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [imageCopy imageByCroppingToRect:?];
        [v21 extent];
        v23 = v22;
        [v21 extent];
        v25 = v24;
        [v21 extent];
        v26 = vcvtd_n_u64_f64(v23, 2uLL);
        v28 = v27;
        [MEMORY[0x1E695DF88] dataWithLength:v27 * v26];
        v69 = v67 = v21;
        v29 = v69;
        v30 = v21;
        mutableBytes = [v69 mutableBytes];
        [v30 extent];
        [contextCopy render:v30 toBitmap:mutableBytes rowBytes:v26 bounds:v59 format:space colorSpace:?];
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v33 = v69;
        bytes = [v69 bytes];
        if (v25)
        {
          v35 = 0;
          v72 = 0;
          unsignedIntegerValue = 0;
          v37 = 0;
          v70 = bytes + 1;
          do
          {
            if (v28)
            {
              v71 = v35;
              v38 = 0;
              v39 = v37 + 3;
              v40 = v70 + v37;
              do
              {
                v41 = bswap32(*(v40 - 1));
                v42 = [MEMORY[0x1E696AD98] numberWithLongLong:v41];
                v43 = [dictionary objectForKeyedSubscript:v42];
                v44 = v43;
                v45 = &unk_1F240A8B8;
                if (v43)
                {
                  v45 = v43;
                }

                v46 = v45;

                v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v46, "unsignedIntegerValue") + 1}];

                v48 = [MEMORY[0x1E696AD98] numberWithLongLong:v41];
                [dictionary setObject:v47 forKeyedSubscript:v48];

                if ([v47 unsignedIntegerValue] > unsignedIntegerValue)
                {
                  unsignedIntegerValue = [v47 unsignedIntegerValue];
                  v72 = v41;
                }

                v40 += 4;
                v38 += 8;
                v39 += 4;
              }

              while (v38 < v28);
              v37 = v39 - 3;
              v35 = v71;
            }

            v35 += 8;
          }

          while (v35 < v25);
        }

        else
        {
          v72 = 0;
        }

        v49 = [MEMORY[0x1E695F610] colorWithRed:space green:HIBYTE(v72) / 255.0 blue:BYTE2(v72) / 255.0 alpha:BYTE1(v72) / 255.0 colorSpace:v72 / 255.0];
        v50 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
        [v50 setValue:v49 forKey:v58];
        outputImage = [v50 outputImage];
        v52 = [MEMORY[0x1E695F648] filterWithName:@"CICrop"];
        [v52 setValue:outputImage forKey:@"inputImage"];
        v53 = [MEMORY[0x1E695F688] vectorWithX:v14 Y:v16 Z:v18 W:v20];
        [v52 setValue:v53 forKey:@"inputRectangle"];

        outputImage2 = [v52 outputImage];
        emptyImage = [outputImage2 imageByCompositingOverImage:v68];

        objc_autoreleasePoolPop(context);
        v11 = v65 + 1;
        v68 = emptyImage;
      }

      while (v65 + 1 != v63);
      v10 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
    }

    while (v10);
  }

  v55 = [emptyImage imageByCompositingOverImage:imageCopy];

  return v55;
}

- (id)_screenEquivalenceToken:(id)token
{
  v48[2] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  [tokenCopy extent];
  v5 = v4;
  [tokenCopy extent];
  if (v5 <= v6)
  {
    [tokenCopy extent];
    v8 = v9;
  }

  else
  {
    [tokenCopy extent];
    v8 = v7;
  }

  v10 = MEMORY[0x1E695F648];
  v12 = *MEMORY[0x1E695FB18];
  v47[0] = *MEMORY[0x1E695FAB0];
  v11 = v47[0];
  v47[1] = v12;
  v48[0] = tokenCopy;
  v48[1] = &unk_1F240B140;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v14 = [v10 filterWithName:@"CIColorControls" withInputParameters:v13];

  memset(&v41, 0, sizeof(v41));
  CGAffineTransformMakeScale(&v41, 32.0 / v8, 32.0 / v8);
  v39 = v14;
  v15 = [MEMORY[0x1E696B098] valueWithBytes:&v41 objCType:"{CGAffineTransform=dddddd}"];
  v16 = MEMORY[0x1E695F648];
  v17 = *MEMORY[0x1E695FB38];
  v45[1] = v11;
  v46[0] = v15;
  v45[0] = v17;
  v40 = v15;
  outputImage = [v14 outputImage];
  v46[1] = outputImage;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
  v20 = [v16 filterWithName:@"CIAffineTransform" withInputParameters:v19];

  v38 = v20;
  outputImage2 = [v20 outputImage];
  v22 = MEMORY[0x1E695F620];
  v43 = *MEMORY[0x1E695F7F0];
  v44 = MEMORY[0x1E695E110];
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v24 = [v22 contextWithOptions:v23];

  [outputImage2 extent];
  v25 = [v24 createCGImage:outputImage2 fromRect:?];
  Width = CGImageGetWidth(v25);
  Height = CGImageGetHeight(v25);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v29 = malloc_type_calloc(4 * Width * Height, 1uLL, 0x100004077774924uLL);
  v30 = CGBitmapContextCreate(v29, Width, Height, 8uLL, 4 * Width, DeviceRGB, 0x4001u);
  CGColorSpaceRelease(DeviceRGB);
  v50.size.width = Width;
  v50.size.height = Height;
  v50.origin.x = 0.0;
  v50.origin.y = 0.0;
  CGContextDrawImage(v30, v50, v25);
  CGContextRelease(v30);
  CFRelease(v25);
  memset(v42, 0, sizeof(v42));
  if (Height)
  {
    v31 = 0;
    v32 = 0;
    v33 = v29 + 4;
    do
    {
      v34 = v33;
      v35 = Width - 1;
      if (Width != 1)
      {
        do
        {
          if (*(v34 - 4) < *v34)
          {
            *(v42 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
          }

          v34 += 4;
          ++v31;
          --v35;
        }

        while (v35);
      }

      ++v32;
      v33 += 4 * Width;
    }

    while (v32 != Height);
  }

  free(v29);
  v36 = [MEMORY[0x1E695DEF0] dataWithBytes:v42 length:128];

  return v36;
}

- (id)_nonMaxSupression:(id)supression iouThreshold:(double)threshold
{
  v55 = *MEMORY[0x1E69E9840];
  supressionCopy = supression;
  v39 = objc_opt_new();
  [supressionCopy sortedArrayUsingComparator:&__block_literal_global_13];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v40 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v40)
  {
    v38 = *v50;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v49 + 1) + 8 * i);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v42 = v39;
        v6 = [v42 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (!v6)
        {
          goto LABEL_24;
        }

        v44 = *v46;
        do
        {
          v7 = 0;
          do
          {
            if (*v46 != v44)
            {
              objc_enumerationMutation(v42);
            }

            v8 = *(*(&v45 + 1) + 8 * v7);
            labels = [v8 labels];
            firstObject = [labels firstObject];
            identifier = [firstObject identifier];

            labels2 = [v5 labels];
            firstObject2 = [labels2 firstObject];
            identifier2 = [firstObject2 identifier];

            if (([identifier isEqual:identifier2] & 1) == 0)
            {
              v28 = [AXMVisionFeature nameForUIClass:7];
              if ([identifier isEqualToString:v28])
              {
                v29 = 1;
              }

              else
              {
                v30 = [AXMVisionFeature nameForUIClass:7];
                v29 = [identifier2 isEqualToString:v30];
              }

              v31 = [AXMVisionFeature nameForUIClass:5];
              if ([identifier isEqualToString:v31])
              {

                if ((v29 & 1) == 0)
                {
                  goto LABEL_13;
                }
              }

              else
              {
                v32 = [AXMVisionFeature nameForUIClass:5];
                v33 = [identifier2 isEqualToString:v32];

                if ((v33 & v29 & 1) == 0)
                {
                  goto LABEL_13;
                }
              }
            }

            [v5 boundingBox];
            v16 = v15;
            v18 = v17;
            v20 = v19;
            v22 = v21;
            [v8 boundingBox];
            [(AXMAXElementDetectorNode *)self IoUForbb1:v16 bb2:v18, v20, v22, v23, v24, v25, v26];
            if (v27 > threshold)
            {

              goto LABEL_26;
            }

LABEL_13:

            ++v7;
          }

          while (v6 != v7);
          v34 = [v42 countByEnumeratingWithState:&v45 objects:v53 count:16];
          v6 = v34;
        }

        while (v34);
LABEL_24:

        [v42 addObject:v5];
LABEL_26:
        ;
      }

      v40 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v40);
  }

  return v39;
}

uint64_t __59__AXMAXElementDetectorNode__nonMaxSupression_iouThreshold___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 confidence];
  v7 = v6;
  [v5 confidence];
  if (v7 >= v8)
  {
    [v4 confidence];
    v11 = v10;
    [v5 confidence];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_initializeClickabilityModel
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1AE37B000, v0, OS_LOG_TYPE_ERROR, "Clickability model does not exist: %@", v1, 0xCu);
}

- (void)_initializeMindNetDetector
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_mindNetDetector)
  {
    mobileAssetBaseURL = [(AXMMobileAssetEvaluationNode *)self mobileAssetBaseURL];

    if (mobileAssetBaseURL)
    {
      IsPad = AXDeviceIsPad();
      mobileAssetBaseURL2 = [(AXMMobileAssetEvaluationNode *)self mobileAssetBaseURL];
      v6 = mobileAssetBaseURL2;
      if (IsPad)
      {
        [mobileAssetBaseURL2 URLByAppendingPathComponent:@"AXElementVision_MindNet_iPad.mlmodel"];
      }

      else
      {
        [mobileAssetBaseURL2 URLByAppendingPathComponent:@"AXElementVision_MindNet_iPhone.mlmodel"];
      }
      v7 = ;

      mobileAssetBaseURL3 = [(AXMMobileAssetEvaluationNode *)self mobileAssetBaseURL];
      v9 = [mobileAssetBaseURL3 URLByAppendingPathComponent:@"AXElementVision_MindNet_iPhone_config.plist"];

      v10 = [[AXMindNetConfiguration alloc] initWithURL:v9];
      if (v7)
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        path = [v7 path];
        v13 = [defaultManager fileExistsAtPath:path];

        if (v13)
        {
          path2 = [v7 path];
          v15 = [AXMindNetDetector detectorWithModelPath:path2 configuration:v10 modelType:0];
          mindNetDetector = self->_mindNetDetector;
          self->_mindNetDetector = v15;

          v17 = AXMediaLogElementVision();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = 138412546;
            v19 = v10;
            v20 = 2112;
            v21 = v7;
            _os_log_impl(&dword_1AE37B000, v17, OS_LOG_TYPE_INFO, "Configured mindnet detector with configuration - %@/%@", &v18, 0x16u);
          }
        }
      }
    }

    else
    {
      v7 = AXMediaLogElementVision();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [AXMAXElementDetectorNode _initializeMindNetDetector];
      }
    }
  }
}

- (double)IoUForbb1:(CGRect)forbb1 bb2:(CGRect)bb2
{
  height = bb2.size.height;
  width = bb2.size.width;
  y = bb2.origin.y;
  x = bb2.origin.x;
  v8 = forbb1.size.height;
  v9 = forbb1.size.width;
  v10 = forbb1.origin.y;
  v11 = forbb1.origin.x;
  v15 = CGRectIntersection(forbb1, bb2);
  v13 = v15.size.height;
  v14 = v15.size.width;
  v15.origin.x = v11;
  v15.origin.y = v10;
  v15.size.width = v9;
  v15.size.height = v8;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v16 = CGRectUnion(v15, v17);
  return v14 * v13 / (v16.size.width * v16.size.height);
}

- (id)_performCrossClassNMSForDetections:(id)detections iouThreshold:(double)threshold
{
  v43 = *MEMORY[0x1E69E9840];
  detectionsCopy = detections;
  v32 = objc_opt_new();
  [detectionsCopy sortedArrayUsingComparator:&__block_literal_global_255];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v6 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v6)
  {
    v31 = *v38;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v9 = v32;
        v10 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:{16, detectionsCopy}];
        if (v10)
        {
          v11 = *v34;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v34 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v33 + 1) + 8 * j);
              label = [v13 label];
              if (label == [v8 label])
              {
                [v8 box];
                v16 = v15;
                v18 = v17;
                v20 = v19;
                v22 = v21;
                [v13 box];
                [(AXMAXElementDetectorNode *)self IoUForbb1:v16 bb2:v18, v20, v22, v23, v24, v25, v26];
                if (v27 > threshold)
                {

                  goto LABEL_17;
                }
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        [v9 addObject:v8];
LABEL_17:
        ;
      }

      v6 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v6);
  }

  return v32;
}

uint64_t __76__AXMAXElementDetectorNode__performCrossClassNMSForDetections_iouThreshold___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 confidence];
  v7 = v6;
  [v5 confidence];
  if (v7 >= v8)
  {
    [v4 confidence];
    v11 = v10;
    [v5 confidence];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_initializeIconDetector
{
  v3 = [(AXMMobileAssetEvaluationNode *)[AXMIconClassDetectorNode alloc] initWithIdentifier:@"ScreenRecognitionIconDetector"];
  iconDetector = self->_iconDetector;
  self->_iconDetector = v3;

  v5 = self->_iconDetector;

  [(AXMIconClassDetectorNode *)v5 setWriteDebugImage:0];
}

- (void)_evaluateANOD:(id)d metrics:(id)metrics
{
  v245 = *MEMORY[0x1E69E9840];
  dCopy = d;
  metricsCopy = metrics;
  if (!self->_mindNetDetector)
  {
    [(AXMAXElementDetectorNode *)self _initializeMindNetDetector];
  }

  if (!self->_clickabilityDetector)
  {
    [(AXMAXElementDetectorNode *)self _initializeClickabilityModel];
  }

  if (!self->_iconDetector)
  {
    [(AXMAXElementDetectorNode *)self _initializeIconDetector];
  }

  if (self->_mindNetDetector)
  {
    sourceInput = [dCopy sourceInput];
    ciImage = [sourceInput ciImage];

    v7 = AXMediaLogDiagnostics();
    selfCopy = self;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AE37B000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AXMLElementDetectorNode-ScreenEquivalence", "", buf, 2u);
    }

    v183 = [(AXMAXElementDetectorNode *)self _screenEquivalenceToken:ciImage];
    result = [dCopy result];
    [result setEquivalenceToken:v183];

    v9 = AXMediaLogDiagnostics();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AE37B000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AXMLElementDetectorNode-ScreenEquivalence", "", buf, 2u);
    }

    analysisOptions = [dCopy analysisOptions];
    equivalenceToken = [analysisOptions equivalenceToken];
    v12 = [v183 isEqualToData:equivalenceToken];

    if (v12)
    {
      obj = AXMediaLogElementVision();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
      {
        [AXMAXElementDetectorNode _evaluateANOD:metrics:];
      }
    }

    else
    {
      v14 = AXMediaLogMLElement();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE37B000, v14, OS_LOG_TYPE_DEFAULT, "Beginning element detection:", buf, 2u);
      }

      [ciImage extent];
      v17 = v16;
      v180 = v17;
      if (v17 == 0.0 || (v18 = v15, v179 = v18, v18 == 0.0))
      {
        v172 = AXMediaLogMLElement();
        if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
        {
          [AXMAXElementDetectorNode _evaluateANOD:metrics:];
        }

        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B27000E0](exception, "esp error");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (selfCopy->_mindNetDetector)
      {
        v20 = Current;
        v21 = AXMediaLogDiagnostics();
        if (os_signpost_enabled(v21))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AE37B000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AXMLElementDetectorNode-MindNet", "", buf, 2u);
        }

        v22 = [(AXMindNetDetector *)selfCopy->_mindNetDetector detect:ciImage];
        v23 = AXMediaLogDiagnostics();
        if (os_signpost_enabled(v23))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AE37B000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AXMLElementDetectorNode-MindNet", "", buf, 2u);
        }

        v24 = AXMediaLogMLElement();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v170 = CFAbsoluteTimeGetCurrent();
          *buf = 134217984;
          *&buf[4] = v170 - v20;
          _os_log_debug_impl(&dword_1AE37B000, v24, OS_LOG_TYPE_DEBUG, "Time to mindnet: %f", buf, 0xCu);
        }

        v25 = [v22 objectForKeyedSubscript:@"boxes"];
        *&v26 = v179;
        *&v27 = v180;
        v176 = [(AXMindNetDetector *)selfCopy->_mindNetDetector processBoxes:v25 withHeight:v26 andWidth:v27];
      }

      else
      {
        v176 = [(AXMAXElementDetectorNode *)selfCopy _performCrossClassNMSForDetections:0 iouThreshold:0.2];
      }

      visionImageRequestHandler = [dCopy visionImageRequestHandler];
      analysisOptions2 = [dCopy analysisOptions];
      textDetectionOptions = [analysisOptions2 textDetectionOptions];

      v181 = [AXMTextDetectorNode effectiveLanguagesFromOptions:textDetectionOptions];
      v29 = AXMediaLogElementVision();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [AXMAXElementDetectorNode _evaluateANOD:metrics:];
      }

      v30 = [v181 count];
      if (v30)
      {
        *v241 = 0;
        v242 = v241;
        v243 = 0x2050000000;
        v31 = getVNRecognizeTextRequestClass(void)::softClass;
        v244 = getVNRecognizeTextRequestClass(void)::softClass;
        if (!getVNRecognizeTextRequestClass(void)::softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL30getVNRecognizeTextRequestClassv_block_invoke;
          v234 = &unk_1E7A1D0A0;
          v235[0] = v241;
          ___ZL30getVNRecognizeTextRequestClassv_block_invoke(buf);
          v31 = *(v242 + 3);
        }

        v32 = v31;
        _Block_object_dispose(v241, 8);
        v33 = objc_alloc_init(v31);
        [v33 setRecognitionLevel:{+[AXMTextDetectorNode recognitionLevelFromOptions:](AXMTextDetectorNode, "recognitionLevelFromOptions:", textDetectionOptions)}];
        [v33 setRecognitionLanguages:v181];
        [v33 setUsesLanguageCorrection:{objc_msgSend(textDetectionOptions, "usesLanguageCorrection")}];
        [textDetectionOptions normalizedMinimumTextHeightRatio];
        *&v34 = v34;
        [v33 setMinimumTextHeight:v34];
        v35 = AXMediaLogElementVision();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          -[AXMAXElementDetectorNode _evaluateANOD:metrics:].cold.2([v33 recognitionLevel], v181, v241, v35);
        }

        v36 = CFAbsoluteTimeGetCurrent();
        v240 = v33;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v240 count:1];
        v230 = 0;
        [visionImageRequestHandler performRequests:v37 error:&v230];
        v38 = v230;

        v39 = AXMediaLogMLElement();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v171 = CFAbsoluteTimeGetCurrent();
          *buf = 134217984;
          *&buf[4] = v171 - v36;
          _os_log_debug_impl(&dword_1AE37B000, v39, OS_LOG_TYPE_DEBUG, "Time to OCR: %f", buf, 0xCu);
        }

        if (v38)
        {
          v40 = AXMediaLogMLElement();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v38;
            _os_log_impl(&dword_1AE37B000, v40, OS_LOG_TYPE_DEFAULT, "OCR error: %@", buf, 0xCu);
          }
        }

        v30 = v33;
      }

      v201 = v30;
      results = [v30 results];
      v178 = [results indexesOfObjectsPassingTest:&__block_literal_global_268_0];

      results2 = [v201 results];
      v43 = [results2 objectsAtIndexes:v178];
      v189 = [v43 mutableCopy];

      v44 = AXMediaLogElementVision();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        [AXMAXElementDetectorNode _evaluateANOD:metrics:];
      }

      v174 = [(AXMindNetDetector *)selfCopy->_clickabilityDetector detect:ciImage];
      v175 = [v174 objectForKeyedSubscript:@"boxes"];
      *&v45 = v179;
      *&v46 = v180;
      v191 = [(AXMindNetDetector *)selfCopy->_clickabilityDetector processBoxes:v45 withHeight:v46 andWidth:?];
      v47 = AXMediaLogElementVision();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        [AXMAXElementDetectorNode _evaluateANOD:metrics:];
      }

      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      obj = v176;
      v196 = [obj countByEnumeratingWithState:&v226 objects:v239 count:16];
      if (v196)
      {
        v195 = *v227;
        v194 = v180;
        v197 = v179;
        do
        {
          for (i = 0; i != v196; ++i)
          {
            if (*v227 != v195)
            {
              objc_enumerationMutation(obj);
            }

            v48 = *(*(&v226 + 1) + 8 * i);
            [v48 box];
            v203 = v50 * v194;
            v52 = v51 * v197;
            v198 = v53 * v194;
            v199 = (1.0 - v49 - v51) * v197;
            if ([v48 label] == 11)
            {
              array = [MEMORY[0x1E695DF70] array];
              v224 = 0u;
              v225 = 0u;
              v222 = 0u;
              v223 = 0u;
              v54 = v189;
              v55 = [v54 countByEnumeratingWithState:&v222 objects:v238 count:16];
              if (v55)
              {
                v56 = *v223;
                v209 = &stru_1F23EA908;
                do
                {
                  for (j = 0; j != v55; ++j)
                  {
                    if (*v223 != v56)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v58 = *(*(&v222 + 1) + 8 * j);
                    v59 = [v58 topCandidates:1];
                    firstObject = [v59 firstObject];

                    [v58 boundingBox];
                    v62 = v61;
                    v64 = v63;
                    v66 = v65;
                    v68 = v67;
                    [v48 box];
                    v261.origin.x = v69;
                    v261.origin.y = v70;
                    v261.size.width = v71;
                    v261.size.height = v72;
                    v247.origin.x = v62;
                    v247.origin.y = v64;
                    v247.size.width = v66;
                    v247.size.height = v68;
                    v248 = CGRectIntersection(v247, v261);
                    width = v248.size.width;
                    height = v248.size.height;
                    [v58 boundingBox];
                    v76 = v75;
                    [v58 boundingBox];
                    if (width * height / (v76 * v77) > 0.7225)
                    {
                      string = [firstObject string];
                      v79 = [string length] == 0;

                      if (!v79)
                      {
                        v80 = [(__CFString *)v209 stringByAppendingString:@" "];
                        string2 = [firstObject string];
                        v82 = [v80 stringByAppendingString:string2];

                        v209 = v82;
                        [(__CFString *)array addObject:v58];
                      }
                    }
                  }

                  v55 = [v54 countByEnumeratingWithState:&v222 objects:v238 count:16];
                }

                while (v55);
              }

              else
              {
                v209 = &stru_1F23EA908;
              }

              [v54 removeObjectsInArray:array];
              if ([(__CFString *)v209 length])
              {
                [v48 confidence];
                v92 = v91;
                label = [v48 label];
                [dCopy size];
                v120 = [AXMVisionFeature featureWithVisionRequest:0 axElementRect:label confidence:v209 uiClass:v198 label:v199 canvasSize:v203, v52, v92, v94, v95];
              }

              else
              {
                v120 = 0;
              }
            }

            else
            {
              label2 = [v48 label];
              array = &stru_1F23EA908;
              if (label2 == 5)
              {
                v249.origin.x = v198;
                v249.origin.y = v199;
                v249.size.width = v203;
                v249.size.height = v52;
                MinX = CGRectGetMinX(v249);
                v250.origin.x = v198;
                v250.origin.y = v199;
                v250.size.width = v203;
                v250.size.height = v52;
                v207 = CGRectGetWidth(v250);
                v251.origin.x = v198;
                v251.origin.y = v199;
                v251.size.width = v203;
                v251.size.height = v52;
                MinY = CGRectGetMinY(v251);
                v252.origin.x = v198;
                v252.origin.y = v199;
                v252.size.width = v203;
                v252.size.height = v52;
                v187 = CGRectGetHeight(v252);
                v253.origin.x = v198;
                v253.origin.y = v199;
                v253.size.width = v203;
                v253.size.height = v52;
                v186 = CGRectGetWidth(v253);
                v254.origin.x = v198;
                v254.origin.y = v199;
                v254.size.width = v203;
                v254.size.height = v52;
                v84 = CGRectGetWidth(v254);
                v255.origin.x = v198;
                v255.origin.y = v199;
                v255.size.width = v203;
                v255.size.height = v52;
                v85 = CGRectGetHeight(v255);
                v256.origin.x = v198;
                v256.origin.y = v199;
                v256.size.width = v203;
                v256.size.height = v52;
                v86 = CGRectGetHeight(v256);
                v87 = MinX + v207 * -0.1;
                v88 = MinY + v187 * -0.1;
                v89 = v186 + (v84 + v84) * 0.1;
                v90 = v85 + (v86 + v86) * 0.1;
                if (v89 <= v90)
                {
                  v87 = v87 + (v90 - v89) * -0.5;
                  v89 = v90;
                }

                else
                {
                  v88 = v88 + (v89 - v90) * -0.5;
                }

                v97 = v197 - (v89 + v88);
                v98 = [ciImage imageByCroppingToRect:v87, v97, v89, v89];
                v99 = [MEMORY[0x1E695F648] filterWithName:@"CIAffineTransform"];
                transform = [MEMORY[0x1E696AA98] transform];
                [transform translateXBy:-v87 yBy:-v97];
                [v99 setValue:transform forKey:@"inputTransform"];
                [v99 setValue:v98 forKey:@"inputImage"];
                v193 = [v99 valueForKey:@"outputImage"];

                v101 = [AXMPipelineContextInput inputWithCIImage:v193];
                v236[0] = @"input";
                v236[1] = @"diagnosticsEnabled";
                v188 = v101;
                v237[0] = v101;
                v237[1] = MEMORY[0x1E695E110];
                v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v237 forKeys:v236 count:2];
                v103 = +[AXMVisionAnalysisOptions defaultOptions];
                v211 = [AXMVisionPipelineContext contextWithSourceParameters:v102 options:v103];

                v220[0] = MEMORY[0x1E69E9820];
                v220[1] = 3221225472;
                v220[2] = __50__AXMAXElementDetectorNode__evaluateANOD_metrics___block_invoke_285;
                v220[3] = &unk_1E7A1D968;
                v104 = v188;
                v221 = v104;
                [v211 produceImage:v220];
                v105 = MEMORY[0x1E696AEC0];
                v106 = [MEMORY[0x1E696AD98] numberWithDouble:v97];
                v106 = [v105 stringWithFormat:@"%@-image.png", v106];
                [(AXMIconClassDetectorNode *)selfCopy->_iconDetector setLoggingName:v106];

                [(AXMIconClassDetectorNode *)selfCopy->_iconDetector evaluate:v211 metrics:metricsCopy];
                result2 = [v211 result];
                features = [result2 features];
                firstObject2 = [features firstObject];

                array = [firstObject2 value];
                v111 = AXMediaLogMLElement();
                if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
                {
                  v257.origin.x = v87;
                  v257.origin.y = v88;
                  v257.size.width = v89;
                  v257.size.height = v89;
                  v112 = NSStringFromRect(v257);
                  [v193 extent];
                  v246.width = v113;
                  v246.height = v114;
                  v115 = NSStringFromSize(v246);
                  [v48 box];
                  v116 = NSStringFromRect(v258);
                  *buf = 138413058;
                  *&buf[4] = array;
                  *&buf[12] = 2112;
                  *&buf[14] = v112;
                  *&buf[22] = 2112;
                  v234 = v115;
                  LOWORD(v235[0]) = 2112;
                  *(v235 + 2) = v116;
                  _os_log_impl(&dword_1AE37B000, v111, OS_LOG_TYPE_INFO, "Icon detected: %@ for bounds %@ in image: %@ -> %@", buf, 0x2Au);
                }
              }

              [v48 confidence];
              v118 = v117;
              [dCopy size];
              v120 = [AXMVisionFeature featureWithVisionRequest:0 axElementRect:label2 confidence:array uiClass:v198 label:v199 canvasSize:v203, v52, v118, v119, v120];
              v209 = &stru_1F23EA908;
            }

            if (v120)
            {
              v218 = 0u;
              v219 = 0u;
              v216 = 0u;
              v217 = 0u;
              v208 = v191;
              v121 = [v208 countByEnumeratingWithState:&v216 objects:v232 count:16];
              if (v121)
              {
                v122 = *v217;
                do
                {
                  for (k = 0; k != v121; ++k)
                  {
                    if (*v217 != v122)
                    {
                      objc_enumerationMutation(v208);
                    }

                    v124 = *(*(&v216 + 1) + 8 * k);
                    [v48 box];
                    v126 = v125;
                    v128 = v127;
                    v130 = v129;
                    v132 = v131;
                    [v124 box];
                    v262.origin.x = v133;
                    v262.origin.y = v134;
                    v262.size.width = v135;
                    v262.size.height = v136;
                    v259.origin.x = v126;
                    v259.origin.y = v128;
                    v259.size.width = v130;
                    v259.size.height = v132;
                    v260 = CGRectIntersection(v259, v262);
                    v137 = v260.size.width;
                    v138 = v260.size.height;
                    [v124 box];
                    v140 = v139;
                    [v124 box];
                    if (v137 * v138 / (v140 * v141) > 0.5)
                    {
                      v142 = -[AXMAXElementDetectorNode remapUIClassForClickability:andClass:](selfCopy, "remapUIClassForClickability:andClass:", [v124 label], objc_msgSend(v120, "uiClass"));
                      v143 = AXMediaLogMLElement();
                      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
                      {
                        v204 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v120, "uiClass")}];
                        v144 = [MEMORY[0x1E696AD98] numberWithInteger:v142];
                        v145 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v124, "label")}];
                        v146 = [v120 debugDescription];
                        *buf = 138413058;
                        *&buf[4] = v204;
                        *&buf[12] = 2112;
                        *&buf[14] = v144;
                        *&buf[22] = 2112;
                        v234 = v145;
                        LOWORD(v235[0]) = 2112;
                        *(v235 + 2) = v146;
                        _os_log_debug_impl(&dword_1AE37B000, v143, OS_LOG_TYPE_DEBUG, "Remap class from %@ -> %@ for clickable (%@) %@", buf, 0x2Au);
                      }

                      [v120 setUiClass:v142];
                    }
                  }

                  v121 = [v208 countByEnumeratingWithState:&v216 objects:v232 count:16];
                }

                while (v121);
              }

              [dCopy appendFeature:v120];
            }
          }

          v196 = [obj countByEnumeratingWithState:&v226 objects:v239 count:16];
        }

        while (v196);
      }

      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v147 = v189;
      v148 = [v147 countByEnumeratingWithState:&v212 objects:v231 count:16];
      if (v148)
      {
        v149 = *v213;
        do
        {
          for (m = 0; m != v148; ++m)
          {
            if (*v213 != v149)
            {
              objc_enumerationMutation(v147);
            }

            v151 = *(*(&v212 + 1) + 8 * m);
            [v151 boundingBox];
            v153 = v152;
            v155 = v154;
            v157 = v156;
            v159 = v158;
            v160 = [v151 topCandidates:1];
            firstObject3 = [v160 firstObject];

            string3 = [firstObject3 string];
            [firstObject3 confidence];
            v164 = v163;
            [dCopy size];
            v166 = [AXMVisionFeature featureWithVisionRequest:v201 axElementRect:11 confidence:string3 uiClass:v153 * v180 label:(1.0 - v155 - v159) * v179 canvasSize:v157 * v180, v159 * v179, v164, v165, v166];
            [dCopy appendFeature:v166];
          }

          v148 = [v147 countByEnumeratingWithState:&v212 objects:v231 count:16];
        }

        while (v148);
      }

      v168 = AXMediaLogElementVision();
      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
      {
        result3 = [dCopy result];
        [(AXMAXElementDetectorNode *)result3 _evaluateANOD:buf metrics:v168];
      }
    }

    v13 = ciImage;
  }

  else
  {
    v13 = AXMediaLogMLElement();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AXMAXElementDetectorNode _evaluateANOD:metrics:];
    }
  }
}

BOOL __50__AXMAXElementDetectorNode__evaluateANOD_metrics___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 topCandidates:1];
  v3 = [v2 firstObject];

  [v3 confidence];
  v5 = v4 >= 0.31;

  return v5;
}

- (int64_t)remapUIClassForClickability:(int)clickability andClass:(int64_t)class
{
  classCopy = 17;
  if (class != 11)
  {
    classCopy = class;
  }

  classCopy2 = 15;
  if (class != 7)
  {
    classCopy2 = class;
  }

  classCopy4 = 16;
  if (class != 5)
  {
    classCopy4 = class;
  }

  if (clickability != 6)
  {
    classCopy4 = class;
  }

  if (clickability != 9)
  {
    classCopy2 = classCopy4;
  }

  if (clickability == 14)
  {
    return classCopy;
  }

  else
  {
    return classCopy2;
  }
}

- (void)_evaluateANOD:(uint8_t *)buf metrics:(os_log_t)log .cold.2(int a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a1;
  *(buf + 4) = 2112;
  *(buf + 10) = a2;
  _os_log_debug_impl(&dword_1AE37B000, log, OS_LOG_TYPE_DEBUG, "Performing OCR: %d, %@", buf, 0x12u);
}

- (void)_evaluateANOD:(os_log_t)log metrics:.cold.5(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1AE37B000, log, OS_LOG_TYPE_DEBUG, "OCR: %@", buf, 0xCu);
}

@end