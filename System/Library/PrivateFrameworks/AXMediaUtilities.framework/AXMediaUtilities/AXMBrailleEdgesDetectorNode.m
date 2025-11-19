@interface AXMBrailleEdgesDetectorNode
- (id)_generateResultFromImage:(id)a3 canvasDescription:(id)a4 invert:(BOOL)a5;
- (id)_processImage:(id)a3 analaysisOptions:(id)a4;
- (unsigned)_mapLuminance:(double)a3 toDiscreteNumber:(unint64_t)a4 invert:(BOOL)a5;
- (void)evaluate:(id)a3 metrics:(id)a4;
@end

@implementation AXMBrailleEdgesDetectorNode

- (id)_generateResultFromImage:(id)a3 canvasDescription:(id)a4 invert:(BOOL)a5
{
  v5 = a5;
  v58[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 height];
  v11 = [v9 width];
  v12 = MEMORY[0x1E695F620];
  v57 = *MEMORY[0x1E695F7F0];
  v58[0] = MEMORY[0x1E695E110];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
  v14 = [v12 contextWithOptions:v13];

  [v8 extent];
  v15 = [v14 createCGImage:v8 fromRect:{0.0, 0.0}];
  if (v15)
  {
    v16 = v15;
    v47 = v14;
    v48 = v8;
    Width = CGImageGetWidth(v15);
    Height = CGImageGetHeight(v16);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v45 = malloc_type_calloc(4 * v10 * v11, 1uLL, 0x100004077774924uLL);
    c = CGBitmapContextCreate(v45, v11, v10, 8uLL, 4 * v11, DeviceRGB, 0x4001u);
    CGColorSpaceRelease(DeviceRGB);
    v20 = AXLogCommon();
    v21 = v10;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      v41 = v44 = Height;
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      v22 = v43 = Width;
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:Height];
      v23 = log = v20;
      v21 = v10;
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

    v25 = ((v11 - Width) >> 1);
    v26 = 0.0;
    if (v11 > Width)
    {
      v27 = Width;
    }

    else
    {
      v25 = 0.0;
      v27 = v11;
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
    v31 = [MEMORY[0x1E695DF88] data];
    if (v21)
    {
      v34 = 0;
      v35 = v45 + 2;
      do
      {
        v36 = v35;
        for (i = v11; i; --i)
        {
          LOBYTE(v32) = *(v36 - 2);
          LOBYTE(v33) = *(v36 - 1);
          *&v38 = v33 * 0.7152 / 255.0;
          v39 = v32 * 0.2126 / 255.0 + *&v38;
          LOBYTE(v38) = *v36;
          buf[0] = -[AXMBrailleEdgesDetectorNode _mapLuminance:toDiscreteNumber:invert:](self, "_mapLuminance:toDiscreteNumber:invert:", [v9 numberOfDiscretePinHeights], v5, v39 + v38 * 0.0722 / 255.0);
          [v31 appendBytes:buf length:1];
          v36 += 4;
        }

        ++v34;
        v35 += 4 * v11;
      }

      while (v34 != v10);
    }

    v14 = v47;
    v8 = v48;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (unsigned)_mapLuminance:(double)a3 toDiscreteNumber:(unint64_t)a4 invert:(BOOL)a5
{
  if (a5)
  {
    if (a4 >= 0x100)
    {
      v5 = a3 * -255.0 + 1.0;
      return vcvtps_s32_f32(v5);
    }

    else
    {
      v7 = (a4 - 1) - (a4 - 1) * a3;
      return vcvtms_u32_f32(v7);
    }
  }

  else if (a4 >= 0x100)
  {
    v6 = a3 * 255.0;
    return vcvtms_s32_f32(v6);
  }

  else
  {
    v9 = (a4 - 1) * a3;
    return vcvtps_u32_f32(v9);
  }
}

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v18.receiver = self;
  v18.super_class = AXMBrailleEdgesDetectorNode;
  v6 = a3;
  [(AXMEvaluationNode *)&v18 evaluate:v6 metrics:a4];
  v7 = [v6 sourceInput];
  v8 = [v7 ciImage];
  v9 = [v6 analysisOptions];
  v10 = [(AXMBrailleEdgesDetectorNode *)self _processImage:v8 analaysisOptions:v9];

  v11 = [v6 result];
  v12 = [v6 analysisOptions];
  v13 = [v12 brailleEdgeOptions];
  v14 = [v13 canvasDescription];
  v15 = [v6 analysisOptions];

  v16 = [v15 brailleEdgeOptions];
  v17 = -[AXMBrailleEdgesDetectorNode _generateResultFromImage:canvasDescription:invert:](self, "_generateResultFromImage:canvasDescription:invert:", v10, v14, [v16 invert]);
  [v11 setBrailleEdges:v17];
}

- (id)_processImage:(id)a3 analaysisOptions:(id)a4
{
  v60[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [v5 extent];
  if (v7 > 600.0)
  {
    [v5 extent];
    CGAffineTransformMakeScale(&v56, 600.0 / v8, 600.0 / v8);
    v9 = [v5 imageByApplyingTransform:&v56 highQualityDownsample:1];

    v5 = v9;
  }

  v10 = [v6 brailleEdgeOptions];
  [v10 edgeStrength];
  if (v11 > 0.0)
  {
    v12 = MEMORY[0x1E695F648];
    v14 = *MEMORY[0x1E695FAB8];
    v59[0] = *MEMORY[0x1E695FAB0];
    v13 = v59[0];
    v59[1] = v14;
    v60[0] = v5;
    v15 = MEMORY[0x1E696AD98];
    [v10 edgeStrength];
    v16 = [v15 numberWithDouble:?];
    v60[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v18 = [v12 filterWithName:@"CIEdges" withInputParameters:v17];

    v19 = MEMORY[0x1E695F648];
    v57[0] = v13;
    v20 = [v18 outputImage];
    v57[1] = v14;
    v58[0] = v20;
    v58[1] = &unk_1F240B210;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
    v22 = [v19 filterWithName:@"CIBloom" withInputParameters:v21];

    v23 = [v22 outputImage];
    v24 = [v22 outputImage];
    [v23 extent];
    v26 = -v25;
    [v23 extent];
    CGAffineTransformMakeTranslation(&v55, v26, -v27);
    [v23 extent];
    v29 = v28;
    [v5 extent];
    v31 = v29 / v30;
    [v23 extent];
    v33 = v32;
    [v5 extent];
    CGAffineTransformScale(&v56, &v55, v31, v33 / v34);
    v35 = [v24 imageByApplyingTransform:&v56];

    v5 = v35;
  }

  v36 = [v10 canvasDescription];
  v37 = [v36 width];
  [v5 extent];
  v39 = v37 / v38 * 1.1;

  v40 = [v10 canvasDescription];
  v41 = [v40 height];
  [v5 extent];
  v43 = v41 / v42 * 1.1;

  if (v39 < v43)
  {
    v43 = v39;
  }

  [v10 zoomLevel];
  CGAffineTransformMakeScale(&v56, v44 * v43, v44 * v43);
  v45 = [v5 imageByApplyingTransform:&v56 highQualityDownsample:1];
  [v45 extent];
  v47 = v46;
  [v10 origin];
  v49 = -(v48 * v47);
  [v45 extent];
  v51 = v50;
  [v10 origin];
  CGAffineTransformMakeTranslation(&v56, v49, v51 * v52);
  v53 = [v45 imageByApplyingTransform:&v56 highQualityDownsample:1];

  return v53;
}

@end