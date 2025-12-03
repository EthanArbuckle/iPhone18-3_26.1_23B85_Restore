@interface CIAveColorProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation CIAveColorProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v7 = [inputs objectAtIndex:{0, arguments, output, error}];
  v8 = v7;
  if (v7)
  {
    baseAddress = [v7 baseAddress];
    [v8 bytesPerRow];
    v10 = 0;
    v11 = 0.0;
    v12 = baseAddress;
    v13 = 0;
    do
    {
      v14 = *v12;
      v12 += 4;
      v15 = v14;
      if (v14 > *v13.i32)
      {
        *v13.i32 = v15;
        v11 = v10;
      }

      ++v10;
    }

    while (v10 != 256);
    v16 = &baseAddress[4 * v11];
    v17 = 0;
    if (*v16 > 0.0)
    {
      v13.i32[0] = *v16;
      v17 = vdiv_f32(*(v16 + 1), vdup_lane_s32(v13, 0));
    }

    v18 = v11 / 255.0;
    baseAddress2 = [output baseAddress];
    [output bytesPerRow];
    v23 = v18;
    v24 = v17;
    v25 = 1065353216;
    v26 = 0;
    src.data = &v23;
    *&src.height = xmmword_54CB0;
    src.rowBytes = 16;
    v21.data = &v26;
    *&v21.height = xmmword_54CB0;
    v21.rowBytes = 8;
    vImageConvert_PlanarFtoPlanar16F(&src, &v21, 0);
    *baseAddress2 = v26;
  }

  return v8 != 0;
}

+ (int)formatForInputAtIndex:(int)index
{
  if (index)
  {
    sub_4A334();
  }

  return kCIFormatRGBAf;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  if (![arguments objectForKeyedSubscript:{@"imageExtent", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}])
  {
    sub_4A360();
  }

  v6 = [arguments objectForKeyedSubscript:@"imageExtent"];

  [v6 CGRectValue];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

@end