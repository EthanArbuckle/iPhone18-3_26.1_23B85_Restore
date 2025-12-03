@interface ApplyOldInpaintModel
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)apply:(id)apply mask:(id)mask tileSize:(int)size model:(id)model;
@end

@implementation ApplyOldInpaintModel

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  inputsCopy = inputs;
  argumentsCopy = arguments;
  outputCopy = output;
  metalTexture = [outputCopy metalTexture];
  if (!metalTexture)
  {
    __assert_rtn("+[ApplyOldInpaintModel processWithInputs:arguments:output:error:]", "CIInpaintFilter.mm", 695, "outputSPI.metalTexture");
  }

  v40 = [argumentsCopy objectForKeyedSubscript:@"model"];
  v10 = [argumentsCopy objectForKeyedSubscript:@"size"];
  intValue = [v10 intValue];

  metalContext = [outputCopy metalContext];
  v37 = [inputsCopy objectAtIndexedSubscript:0];
  v36 = [inputsCopy objectAtIndexedSubscript:1];
  v41 = sub_1678(v37);
  v35 = sub_1678(v36);
  v33 = sub_1820(v41);
  v34 = sub_1820(v35);
  v13 = sub_1A5C(intValue, 3 * intValue);
  v14 = sub_1A5C(intValue, 3 * intValue);
  v15 = sub_1A5C(intValue, 3 * intValue);
  metalTexture2 = [outputCopy metalTexture];
  device = [metalTexture2 device];
  v32 = sub_1B80(device, v13);

  metalTexture3 = [outputCopy metalTexture];
  device2 = [metalTexture3 device];
  v20 = sub_1B80(device2, v14);

  internalCommandQueue = [metalContext internalCommandQueue];
  commandBuffer = [internalCommandQueue commandBuffer];

  sub_1CD4(metalContext, v33, v32, commandBuffer);
  sub_1CD4(metalContext, v34, v20, commandBuffer);
  [commandBuffer commit];
  if ([v40 bind:"image" buffer:v13] || objc_msgSend(v40, "bind:buffer:", "mask", v14) || objc_msgSend(v40, "bind:buffer:", "output", v15) || (v42[0] = _NSConcreteStackBlock, v42[1] = 3221225472, v42[2] = sub_1F40, v42[3] = &unk_144C0, v43 = outputCopy, v23 = objc_msgSend(v40, "executeAsync:", v42), v43, v23) || (v44 = kCIImageColorSpace, +[NSNull null](NSNull, "null"), v31 = objc_claimAutoreleasedReturnValue(), v45 = v31, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v45, &v44, 1), v29 = objc_claimAutoreleasedReturnValue(), +[CIImage imageWithCVImageBuffer:options:](CIImage, "imageWithCVImageBuffer:options:", v15), v30 = objc_claimAutoreleasedReturnValue(), sub_1FC8(v30), v24 = objc_claimAutoreleasedReturnValue(), v30, v29, v31, !v24))
  {
    v24 = v41;
  }

  v25 = [CIRenderDestination alloc];
  v26 = [v25 initWithIOSurface:{objc_msgSend(outputCopy, "surface")}];

  [v26 setFlipped:1];
  [v26 setColorSpace:0];
  if (v24)
  {
    [v24 extent];
    v27 = [metalContext startTaskToRender:v24 fromRect:v26 toDestination:0 atPoint:? error:?];
  }

  CFRelease(v13);
  CFRelease(v14);
  CFRelease(v15);

  return 1;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v5 = [arguments objectForKeyedSubscript:{@"size", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  intValue = [v5 intValue];

  v7 = intValue;
  v8 = 0.0;
  v9 = 0.0;
  v10 = intValue;
  result.size.height = v10;
  result.size.width = v7;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

+ (id)apply:(id)apply mask:(id)mask tileSize:(int)size model:(id)model
{
  v7 = *&size;
  applyCopy = apply;
  maskCopy = mask;
  modelCopy = model;
  v13 = modelCopy;
  if (modelCopy)
  {
    v46[0] = @"model";
    v46[1] = @"size";
    v47[0] = modelCopy;
    v14 = [NSNumber numberWithInt:v7];
    v47[1] = v14;
    v43 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];

    v15 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
    v16 = applyCopy;
    v17 = [v16 imageByColorMatchingWorkingSpaceToColorSpace:v15];

    v18 = [maskCopy imageByApplyingFilter:@"CIColorThreshold" withInputParameters:&off_15410];

    v19 = v18;
    v20 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_invertMask (__sample s) { return vec4(1.0-s.rrr, s.a) }"];;
    [v19 extent];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v48 = v19;
    v29 = [NSArray arrayWithObjects:&v48 count:1];
    maskCopy = [v20 applyWithExtent:v29 arguments:{v22, v24, v26, v28}];

    [v17 extent];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v45[0] = v17;
    v45[1] = maskCopy;
    v38 = [NSArray arrayWithObjects:v45 count:2];
    v44 = 0;
    v39 = [self applyWithExtent:v38 inputs:v43 arguments:&v44 error:{v31, v33, v35, v37}];
    v40 = v44;

    v41 = [v39 imageByColorMatchingColorSpaceToWorkingSpace:v15];

    CGColorSpaceRelease(v15);
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

@end