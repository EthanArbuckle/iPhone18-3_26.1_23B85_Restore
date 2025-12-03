@interface AXMBrailleEdgesDetectorNode
- (id)_generateResultFromImage:(id)image canvasDescription:(id)description invert:(BOOL)invert;
- (id)_processImage:(id)image analaysisOptions:(id)options;
- (unsigned)_mapLuminance:(double)luminance toDiscreteNumber:(unint64_t)number invert:(BOOL)invert;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
@end

@implementation AXMBrailleEdgesDetectorNode

- (id)_generateResultFromImage:(id)image canvasDescription:(id)description invert:(BOOL)invert
{
  invertCopy = invert;
  v58[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  descriptionCopy = description;
  height = [descriptionCopy height];
  width = [descriptionCopy width];
  v12 = MEMORY[0x1E695F620];
  v57 = *MEMORY[0x1E695F7F0];
  v58[0] = MEMORY[0x1E695E110];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
  v14 = [v12 contextWithOptions:v13];

  [imageCopy extent];
  v15 = [v14 createCGImage:imageCopy fromRect:{0.0, 0.0}];
  if (v15)
  {
    v16 = v15;
    v47 = v14;
    v48 = imageCopy;
    Width = CGImageGetWidth(v15);
    Height = CGImageGetHeight(v16);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v45 = malloc_type_calloc(4 * height * width, 1uLL, 0x100004077774924uLL);
    c = CGBitmapContextCreate(v45, width, height, 8uLL, 4 * width, DeviceRGB, 0x4001u);
    CGColorSpaceRelease(DeviceRGB);
    v20 = AXLogCommon();
    v21 = height;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:height];
      v41 = v44 = Height;
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:width];
      v22 = v43 = Width;
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:Height];
      v23 = log = v20;
      v21 = height;
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v43];
      *buf = 138413058;
      v50 = v41;
      v51 = 2112;
      v52 = v22;
      v53 = 2112;
      v54 = v23;
      v56 = v55 = 2112;
      v24 = v56;
      _os_log_impl(&dword_1AE37B000, log, OS_LOG_TYPE_DEFAULT, "%@ %@ -- %@ %@", buf, 0x2Au);

      v20 = log;
      Width = v43;

      Height = v44;
    }

    v25 = ((width - Width) >> 1);
    v26 = 0.0;
    if (width > Width)
    {
      v27 = Width;
    }

    else
    {
      v25 = 0.0;
      v27 = width;
    }

    if (v21 <= Height)
    {
      v28 = v21;
    }

    else
    {
      v26 = ((v21 - Height) >> 1);
      v28 = Height;
    }

    v29 = v27;
    v30 = v28;
    CGContextDrawImage(c, *&v25, v16);
    CGContextRelease(c);
    CFRelease(v16);
    data = [MEMORY[0x1E695DF88] data];
    if (v21)
    {
      v34 = 0;
      v35 = v45 + 2;
      do
      {
        v36 = v35;
        for (i = width; i; --i)
        {
          LOBYTE(v32) = *(v36 - 2);
          LOBYTE(v33) = *(v36 - 1);
          *&v38 = v33 * 0.7152 / 255.0;
          v39 = v32 * 0.2126 / 255.0 + *&v38;
          LOBYTE(v38) = *v36;
          buf[0] = -[AXMBrailleEdgesDetectorNode _mapLuminance:toDiscreteNumber:invert:](self, "_mapLuminance:toDiscreteNumber:invert:", [descriptionCopy numberOfDiscretePinHeights], invertCopy, v39 + v38 * 0.0722 / 255.0);
          [data appendBytes:buf length:1];
          v36 += 4;
        }

        ++v34;
        v35 += 4 * width;
      }

      while (v34 != height);
    }

    v14 = v47;
    imageCopy = v48;
  }

  else
  {
    data = 0;
  }

  return data;
}

- (unsigned)_mapLuminance:(double)luminance toDiscreteNumber:(unint64_t)number invert:(BOOL)invert
{
  if (invert)
  {
    if (number >= 0x100)
    {
      v5 = luminance * -255.0 + 1.0;
      return vcvtps_s32_f32(v5);
    }

    else
    {
      v7 = (number - 1) - (number - 1) * luminance;
      return vcvtms_u32_f32(v7);
    }
  }

  else if (number >= 0x100)
  {
    v6 = luminance * 255.0;
    return vcvtms_s32_f32(v6);
  }

  else
  {
    v9 = (number - 1) * luminance;
    return vcvtps_u32_f32(v9);
  }
}

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  v18.receiver = self;
  v18.super_class = AXMBrailleEdgesDetectorNode;
  evaluateCopy = evaluate;
  [(AXMEvaluationNode *)&v18 evaluate:evaluateCopy metrics:metrics];
  sourceInput = [evaluateCopy sourceInput];
  ciImage = [sourceInput ciImage];
  analysisOptions = [evaluateCopy analysisOptions];
  v10 = [(AXMBrailleEdgesDetectorNode *)self _processImage:ciImage analaysisOptions:analysisOptions];

  result = [evaluateCopy result];
  analysisOptions2 = [evaluateCopy analysisOptions];
  brailleEdgeOptions = [analysisOptions2 brailleEdgeOptions];
  canvasDescription = [brailleEdgeOptions canvasDescription];
  analysisOptions3 = [evaluateCopy analysisOptions];

  brailleEdgeOptions2 = [analysisOptions3 brailleEdgeOptions];
  v17 = -[AXMBrailleEdgesDetectorNode _generateResultFromImage:canvasDescription:invert:](self, "_generateResultFromImage:canvasDescription:invert:", v10, canvasDescription, [brailleEdgeOptions2 invert]);
  [result setBrailleEdges:v17];
}

- (id)_processImage:(id)image analaysisOptions:(id)options
{
  v60[2] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  optionsCopy = options;
  [imageCopy extent];
  if (v7 > 600.0)
  {
    [imageCopy extent];
    CGAffineTransformMakeScale(&v56, 600.0 / v8, 600.0 / v8);
    v9 = [imageCopy imageByApplyingTransform:&v56 highQualityDownsample:1];

    imageCopy = v9;
  }

  brailleEdgeOptions = [optionsCopy brailleEdgeOptions];
  [brailleEdgeOptions edgeStrength];
  if (v11 > 0.0)
  {
    v12 = MEMORY[0x1E695F648];
    v14 = *MEMORY[0x1E695FAB8];
    v59[0] = *MEMORY[0x1E695FAB0];
    v13 = v59[0];
    v59[1] = v14;
    v60[0] = imageCopy;
    v15 = MEMORY[0x1E696AD98];
    [brailleEdgeOptions edgeStrength];
    v16 = [v15 numberWithDouble:?];
    v60[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v18 = [v12 filterWithName:@"CIEdges" withInputParameters:v17];

    v19 = MEMORY[0x1E695F648];
    v57[0] = v13;
    outputImage = [v18 outputImage];
    v57[1] = v14;
    v58[0] = outputImage;
    v58[1] = &unk_1F240B210;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
    v22 = [v19 filterWithName:@"CIBloom" withInputParameters:v21];

    outputImage2 = [v22 outputImage];
    outputImage3 = [v22 outputImage];
    [outputImage2 extent];
    v26 = -v25;
    [outputImage2 extent];
    CGAffineTransformMakeTranslation(&v55, v26, -v27);
    [outputImage2 extent];
    v29 = v28;
    [imageCopy extent];
    v31 = v29 / v30;
    [outputImage2 extent];
    v33 = v32;
    [imageCopy extent];
    CGAffineTransformScale(&v56, &v55, v31, v33 / v34);
    v35 = [outputImage3 imageByApplyingTransform:&v56];

    imageCopy = v35;
  }

  canvasDescription = [brailleEdgeOptions canvasDescription];
  width = [canvasDescription width];
  [imageCopy extent];
  v39 = width / v38 * 1.1;

  canvasDescription2 = [brailleEdgeOptions canvasDescription];
  height = [canvasDescription2 height];
  [imageCopy extent];
  v43 = height / v42 * 1.1;

  if (v39 < v43)
  {
    v43 = v39;
  }

  [brailleEdgeOptions zoomLevel];
  CGAffineTransformMakeScale(&v56, v44 * v43, v44 * v43);
  v45 = [imageCopy imageByApplyingTransform:&v56 highQualityDownsample:1];
  [v45 extent];
  v47 = v46;
  [brailleEdgeOptions origin];
  v49 = -(v48 * v47);
  [v45 extent];
  v51 = v50;
  [brailleEdgeOptions origin];
  CGAffineTransformMakeTranslation(&v56, v49, v51 * v52);
  v53 = [v45 imageByApplyingTransform:&v56 highQualityDownsample:1];

  return v53;
}

@end