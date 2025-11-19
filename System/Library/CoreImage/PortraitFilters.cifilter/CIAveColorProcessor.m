@interface CIAveColorProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (int)formatForInputAtIndex:(int)a3;
@end

@implementation CIAveColorProcessor

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v7 = [a3 objectAtIndex:{0, a4, a5, a6}];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 baseAddress];
    [v8 bytesPerRow];
    v10 = 0;
    v11 = 0.0;
    v12 = v9;
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
    v16 = &v9[4 * v11];
    v17 = 0;
    if (*v16 > 0.0)
    {
      v13.i32[0] = *v16;
      v17 = vdiv_f32(*(v16 + 1), vdup_lane_s32(v13, 0));
    }

    v18 = v11 / 255.0;
    v19 = [a5 baseAddress];
    [a5 bytesPerRow];
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
    *v19 = v26;
  }

  return v8 != 0;
}

+ (int)formatForInputAtIndex:(int)a3
{
  if (a3)
  {
    sub_4A334();
  }

  return kCIFormatRGBAf;
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  if (![a4 objectForKeyedSubscript:{@"imageExtent", a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}])
  {
    sub_4A360();
  }

  v6 = [a4 objectForKeyedSubscript:@"imageExtent"];

  [v6 CGRectValue];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

@end