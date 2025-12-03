@interface CIMetalProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)logDescription:(id)description;
+ (void)setFilterParams:(id)params arguments:(id)arguments filter:(id)filter;
+ (void)setFilterParamsAndImages:(id)images arguments:(id)arguments filter:(id)filter;
@end

@implementation CIMetalProcessor

+ (id)logDescription:(id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [description objectForKeyedSubscript:@"filterName"];
  v5 = @"nil";
  if (v4)
  {
    v5 = v4;
  }

  return [v3 stringWithFormat:@"CIMetalProcessor-%@", v5];
}

+ (void)setFilterParams:(id)params arguments:(id)arguments filter:(id)filter
{
  v23[1] = *MEMORY[0x1E69E9840];
  [filter setValuesForKeysWithDictionary:{objc_msgSend(arguments, "objectForKeyedSubscript:", @"filterParameters"}];
  v8 = [arguments objectForKeyedSubscript:@"inputImages"];
  v9 = [arguments objectForKeyedSubscript:@"inputImageKeys"];
  if ([v8 count])
  {
    v10 = 0;
    do
    {
      v11 = [params objectAtIndexedSubscript:v10];
      v12 = [v9 objectAtIndexedSubscript:v10];
      [v11 region];
      if (CGRectIsEmpty(v24))
      {
        v13 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor clearColor]);
        [objc_msgSend(v8 objectAtIndexedSubscript:{v10), "extent"}];
        [filter setValue:-[CIImage imageByCroppingToRect:](v13 forKey:{"imageByCroppingToRect:"), v12}];
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
        imageByClampingToExtent = [[(CIImage *)v14 imageByApplyingTransform:&v20] imageByClampingToExtent];
        [objc_msgSend(v8 objectAtIndexedSubscript:{v10), "extent"}];
        v19 = [(CIImage *)imageByClampingToExtent imageByCroppingToRect:?];
        if ([v11 usesSRGBTransferFunction])
        {
          v19 = [(CIImage *)v19 imageByApplyingFilter:@"CISRGBToneCurveToLinear"];
        }

        [filter setValue:v19 forKey:v12];
      }

      ++v10;
    }

    while (v10 < [v8 count]);
  }
}

+ (void)setFilterParamsAndImages:(id)images arguments:(id)arguments filter:(id)filter
{
  [filter setValuesForKeysWithDictionary:{objc_msgSend(arguments, "objectForKeyedSubscript:", @"filterParameters"}];
  v8 = [arguments objectForKeyedSubscript:@"inputImageKeys"];
  if ([images count])
  {
    v9 = 0;
    do
    {
      [filter setValue:objc_msgSend(images forKey:{"objectAtIndexedSubscript:", v9), objc_msgSend(v8, "objectAtIndexedSubscript:", v9)}];
      ++v9;
    }

    while (v9 < [images count]);
  }
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v10 = +[CIFilter filterWithName:](CIFilter, "filterWithName:", [arguments objectForKeyedSubscript:@"filterName"]);
  if (!v10)
  {
    +[CIMetalProcessor processWithInputs:arguments:output:error:];
  }

  v11 = v10;
  [self setFilterParams:inputs arguments:arguments filter:v10];
  outputImage = [(CIFilter *)v11 outputImage];
  if (!outputImage)
  {
    +[CIMetalProcessor processWithInputs:arguments:output:error:];
  }

  v13 = outputImage;
  metalContext = [output metalContext];
  if (!metalContext)
  {
    +[CIMetalProcessor processWithInputs:arguments:output:error:];
  }

  v15 = metalContext;
  memset(&v27, 0, sizeof(v27));
  [output region];
  v17 = -v16;
  [output region];
  CGAffineTransformMakeTranslation(&v27, v17, -v18);
  v26 = v27;
  v19 = [v13 imageByApplyingTransform:&v26];
  if ([output usesSRGBTransferFunction])
  {
    v19 = [v19 imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
  }

  [output region];
  v21 = v20;
  [output region];
  v23 = v22;
  v24 = -[CIRenderDestination initWithMTLTexture:commandBuffer:]([CIRenderDestination alloc], "initWithMTLTexture:commandBuffer:", [output metalTexture], objc_msgSend(output, "metalCommandBuffer"));
  [(CIRenderDestination *)v24 setFlipped:1];
  [v15 startTaskToRender:v19 fromRect:v24 toDestination:0 atPoint:0.0 error:{0.0, v21, v23, 0.0, 0.0}];

  return 1;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = [arguments objectForKeyedSubscript:@"inputImages"];
  v13 = +[CIFilter filterWithName:](CIFilter, "filterWithName:", [arguments objectForKeyedSubscript:@"filterName"]);
  if (!v13)
  {
    +[CIMetalProcessor roiForInput:arguments:outputRect:];
  }

  v14 = v13;
  [self setFilterParamsAndImages:v12 arguments:arguments filter:v13];
  outputImage = [(CIFilter *)v14 outputImage];
  v16 = [v12 objectAtIndexedSubscript:input];

  [(CIImage *)outputImage regionOfInterestForImage:v16 inRect:x, y, width, height];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end