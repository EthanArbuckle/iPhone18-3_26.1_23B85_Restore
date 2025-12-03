@interface CIDynamicGuidedFilter
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation CIDynamicGuidedFilter

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  metalCommandBuffer = [output metalCommandBuffer];
  device = [metalCommandBuffer device];
  v11 = [inputs objectAtIndexedSubscript:0];
  v12 = [inputs objectAtIndexedSubscript:1];
  [v11 region];
  v14 = v13;
  [v11 region];
  v16 = v15;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"guidedFilterEpsilon", "floatValue"}];
  LOBYTE(v21) = 1;
  v17 = [[MPSImageSpatioTemporalGuidedFilter alloc] initWithDevice:device filterDescriptor:{+[MPSImageSpatioTemporalGuidedFilterDescriptor filterDescriptorWithWidth:height:arrayLength:kernelSpatialDiameter:kernelTemporalDiameter:epsilon:sourceChannels:guideChannels:preallocateIntermediates:](MPSImageSpatioTemporalGuidedFilterDescriptor, "filterDescriptorWithWidth:height:arrayLength:kernelSpatialDiameter:kernelTemporalDiameter:epsilon:sourceChannels:guideChannels:preallocateIntermediates:", v14, v16, 1, 3, 1, 1, 3, v21)}];
  v18 = objc_alloc_init(NSMutableArray);
  v19 = objc_alloc_init(NSMutableArray);
  [v18 addObject:{objc_msgSend(v11, "metalTexture")}];
  [v19 addObject:{objc_msgSend(output, "metalTexture")}];
  [v17 encodeToCommandBuffer:metalCommandBuffer sourceTextureArray:v18 guidanceTexture:objc_msgSend(v12 constraintsTextureArray:"metalTexture") numberOfIterations:0 destinationTextureArray:{1, v19}];

  return 1;
}

+ (int)formatForInputAtIndex:(int)index
{
  if (index)
  {
    if (index != 1)
    {
      sub_4A434();
    }

    v3 = &kCIFormatBGRA8;
  }

  else
  {
    v3 = &kCIFormatRh;
  }

  return *v3;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  if (![arguments objectForKeyedSubscript:{@"imageExtents", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}])
  {
    sub_4A48C();
  }

  if ([objc_msgSend(arguments objectForKeyedSubscript:{@"imageExtents", "count"}] <= input)
  {
    sub_4A460();
  }

  v7 = [objc_msgSend(arguments objectForKeyedSubscript:{@"imageExtents", "objectAtIndexedSubscript:", input}];

  [v7 CGRectValue];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

@end