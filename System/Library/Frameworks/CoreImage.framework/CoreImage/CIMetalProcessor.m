@interface CIMetalProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (id)logDescription:(id)a3;
+ (void)setFilterParams:(id)a3 arguments:(id)a4 filter:(id)a5;
+ (void)setFilterParamsAndImages:(id)a3 arguments:(id)a4 filter:(id)a5;
@end

@implementation CIMetalProcessor

+ (id)logDescription:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 objectForKeyedSubscript:@"filterName"];
  v5 = @"nil";
  if (v4)
  {
    v5 = v4;
  }

  return [v3 stringWithFormat:@"CIMetalProcessor-%@", v5];
}

+ (void)setFilterParams:(id)a3 arguments:(id)a4 filter:(id)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  [a5 setValuesForKeysWithDictionary:{objc_msgSend(a4, "objectForKeyedSubscript:", @"filterParameters"}];
  v8 = [a4 objectForKeyedSubscript:@"inputImages"];
  v9 = [a4 objectForKeyedSubscript:@"inputImageKeys"];
  if ([v8 count])
  {
    v10 = 0;
    do
    {
      v11 = [a3 objectAtIndexedSubscript:v10];
      v12 = [v9 objectAtIndexedSubscript:v10];
      [v11 region];
      if (CGRectIsEmpty(v24))
      {
        v13 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor clearColor]);
        [objc_msgSend(v8 objectAtIndexedSubscript:{v10), "extent"}];
        [a5 setValue:-[CIImage imageByCroppingToRect:](v13 forKey:{"imageByCroppingToRect:"), v12}];
      }

      else
      {
        v22 = @"CIImageColorSpace";
        v23[0] = [MEMORY[0x1E695DFB0] null];
        v14 = +[CIImage imageWithIOSurface:options:](CIImage, "imageWithIOSurface:options:", [v11 surface], objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v23, &v22, 1));
        memset(&v21, 0, sizeof(v21));
        [v11 region];
        v16 = v15;
        [v11 region];
        CGAffineTransformMakeTranslation(&v21, v16, v17);
        v20 = v21;
        v18 = [[(CIImage *)v14 imageByApplyingTransform:&v20] imageByClampingToExtent];
        [objc_msgSend(v8 objectAtIndexedSubscript:{v10), "extent"}];
        v19 = [(CIImage *)v18 imageByCroppingToRect:?];
        if ([v11 usesSRGBTransferFunction])
        {
          v19 = [(CIImage *)v19 imageByApplyingFilter:@"CISRGBToneCurveToLinear"];
        }

        [a5 setValue:v19 forKey:v12];
      }

      ++v10;
    }

    while (v10 < [v8 count]);
  }
}

+ (void)setFilterParamsAndImages:(id)a3 arguments:(id)a4 filter:(id)a5
{
  [a5 setValuesForKeysWithDictionary:{objc_msgSend(a4, "objectForKeyedSubscript:", @"filterParameters"}];
  v8 = [a4 objectForKeyedSubscript:@"inputImageKeys"];
  if ([a3 count])
  {
    v9 = 0;
    do
    {
      [a5 setValue:objc_msgSend(a3 forKey:{"objectAtIndexedSubscript:", v9), objc_msgSend(v8, "objectAtIndexedSubscript:", v9)}];
      ++v9;
    }

    while (v9 < [a3 count]);
  }
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v10 = +[CIFilter filterWithName:](CIFilter, "filterWithName:", [a4 objectForKeyedSubscript:@"filterName"]);
  if (!v10)
  {
    +[CIMetalProcessor processWithInputs:arguments:output:error:];
  }

  v11 = v10;
  [a1 setFilterParams:a3 arguments:a4 filter:v10];
  v12 = [(CIFilter *)v11 outputImage];
  if (!v12)
  {
    +[CIMetalProcessor processWithInputs:arguments:output:error:];
  }

  v13 = v12;
  v14 = [a5 metalContext];
  if (!v14)
  {
    +[CIMetalProcessor processWithInputs:arguments:output:error:];
  }

  v15 = v14;
  memset(&v27, 0, sizeof(v27));
  [a5 region];
  v17 = -v16;
  [a5 region];
  CGAffineTransformMakeTranslation(&v27, v17, -v18);
  v26 = v27;
  v19 = [v13 imageByApplyingTransform:&v26];
  if ([a5 usesSRGBTransferFunction])
  {
    v19 = [v19 imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
  }

  [a5 region];
  v21 = v20;
  [a5 region];
  v23 = v22;
  v24 = -[CIRenderDestination initWithMTLTexture:commandBuffer:]([CIRenderDestination alloc], "initWithMTLTexture:commandBuffer:", [a5 metalTexture], objc_msgSend(a5, "metalCommandBuffer"));
  [(CIRenderDestination *)v24 setFlipped:1];
  [v15 startTaskToRender:v19 fromRect:v24 toDestination:0 atPoint:0.0 error:{0.0, v21, v23, 0.0, 0.0}];

  return 1;
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = [a4 objectForKeyedSubscript:@"inputImages"];
  v13 = +[CIFilter filterWithName:](CIFilter, "filterWithName:", [a4 objectForKeyedSubscript:@"filterName"]);
  if (!v13)
  {
    +[CIMetalProcessor roiForInput:arguments:outputRect:];
  }

  v14 = v13;
  [a1 setFilterParamsAndImages:v12 arguments:a4 filter:v13];
  v15 = [(CIFilter *)v14 outputImage];
  v16 = [v12 objectAtIndexedSubscript:a3];

  [(CIImage *)v15 regionOfInterestForImage:v16 inRect:x, y, width, height];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end