@interface CIDynamicGuidedFilter
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (int)formatForInputAtIndex:(int)a3;
@end

@implementation CIDynamicGuidedFilter

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v9 = [a5 metalCommandBuffer];
  v10 = [v9 device];
  v11 = [a3 objectAtIndexedSubscript:0];
  v12 = [a3 objectAtIndexedSubscript:1];
  [v11 region];
  v14 = v13;
  [v11 region];
  v16 = v15;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"guidedFilterEpsilon", "floatValue"}];
  LOBYTE(v21) = 1;
  v17 = [[MPSImageSpatioTemporalGuidedFilter alloc] initWithDevice:v10 filterDescriptor:{+[MPSImageSpatioTemporalGuidedFilterDescriptor filterDescriptorWithWidth:height:arrayLength:kernelSpatialDiameter:kernelTemporalDiameter:epsilon:sourceChannels:guideChannels:preallocateIntermediates:](MPSImageSpatioTemporalGuidedFilterDescriptor, "filterDescriptorWithWidth:height:arrayLength:kernelSpatialDiameter:kernelTemporalDiameter:epsilon:sourceChannels:guideChannels:preallocateIntermediates:", v14, v16, 1, 3, 1, 1, 3, v21)}];
  v18 = objc_alloc_init(NSMutableArray);
  v19 = objc_alloc_init(NSMutableArray);
  [v18 addObject:{objc_msgSend(v11, "metalTexture")}];
  [v19 addObject:{objc_msgSend(a5, "metalTexture")}];
  [v17 encodeToCommandBuffer:v9 sourceTextureArray:v18 guidanceTexture:objc_msgSend(v12 constraintsTextureArray:"metalTexture") numberOfIterations:0 destinationTextureArray:{1, v19}];

  return 1;
}

+ (int)formatForInputAtIndex:(int)a3
{
  if (a3)
  {
    if (a3 != 1)
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

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  if (![a4 objectForKeyedSubscript:{@"imageExtents", a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}])
  {
    sub_4A48C();
  }

  if ([objc_msgSend(a4 objectForKeyedSubscript:{@"imageExtents", "count"}] <= a3)
  {
    sub_4A460();
  }

  v7 = [objc_msgSend(a4 objectForKeyedSubscript:{@"imageExtents", "objectAtIndexedSubscript:", a3}];

  [v7 CGRectValue];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

@end