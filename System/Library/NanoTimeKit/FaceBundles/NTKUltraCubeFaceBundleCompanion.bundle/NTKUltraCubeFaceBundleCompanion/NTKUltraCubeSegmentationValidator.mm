@interface NTKUltraCubeSegmentationValidator
+ (BOOL)isAuxiliaryDictionarySegmentationValid:(id)valid;
+ (NTKUltraCubeSegmentationBimodalScore)bimodalScoreForMaskImage:(CGImage *)image;
@end

@implementation NTKUltraCubeSegmentationValidator

+ (BOOL)isAuxiliaryDictionarySegmentationValid:(id)valid
{
  validCopy = valid;
  if (validCopy)
  {
    v5 = [NTKUltraCubeSegmentation maskImageFromAuxiliaryDictionary:validCopy];
    if (v5)
    {
      [self bimodalScoreForMaskImage:v5];
      v7 = v6;
      v8 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315394;
        v11 = "+[NTKUltraCubeSegmentationValidator isAuxiliaryDictionarySegmentationValid:]";
        v12 = 2048;
        v13 = v7;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%s: segmentation has a bimodalScore of %f", &v10, 0x16u);
      }

      CGImageRelease(v5);
      LOBYTE(v5) = v7 > 0.5;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (NTKUltraCubeSegmentationBimodalScore)bimodalScoreForMaskImage:(CGImage *)image
{
  if (image)
  {
    v3 = [CIImage imageWithCGImage:?];
    v4 = +[CIFilter areaHistogramFilter];
    [v4 setInputImage:v3];
    [v4 setCount:100];
    [v3 extent];
    [v4 setExtent:?];
    LODWORD(v5) = 1.0;
    [v4 setScale:v5];
    outputImage = [v4 outputImage];
    if (outputImage)
    {
      v7 = +[CIContext context];
      v8 = [[NSMutableData alloc] initWithLength:400];
      mutableBytes = [v8 mutableBytes];
      v10 = [v8 length];
      [outputImage extent];
      [v7 render:outputImage toBitmap:mutableBytes rowBytes:v10 bounds:kCIFormatRf format:0 colorSpace:?];
      bytes = [v8 bytes];
      v12 = *bytes;
      v13 = bytes[99];
      NTKSmoothstep();
      v15 = v14;
      NTKSmoothstep();
      v17 = v16;
      NTKSmoothstep();
      v19 = (v15 * v17) * v18;
    }

    else
    {
      v20 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315138;
        v25 = "+[NTKUltraCubeSegmentationValidator bimodalScoreForMaskImage:]";
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%s: outputImage on the histogramFilter was nil", &v24, 0xCu);
      }

      v13 = 0.0;
      v12 = 0.0;
      v19 = 0.0;
    }
  }

  else
  {
    v13 = 0.0;
    v12 = 0.0;
    v19 = 0.0;
  }

  v21 = v19;
  v22 = v12;
  v23 = v13;
  result.var2 = v23;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

@end