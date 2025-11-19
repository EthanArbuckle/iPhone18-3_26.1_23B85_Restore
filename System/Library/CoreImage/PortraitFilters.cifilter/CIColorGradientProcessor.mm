@interface CIColorGradientProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (int)formatForInputAtIndex:(int)a3;
@end

@implementation CIColorGradientProcessor

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v7 = [a3 objectAtIndex:{0, a4, a5, a6}];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 baseAddress];
    [v8 bytesPerRow];
    v10 = [a5 baseAddress];
    v11 = [a5 bytesPerRow];
    [a5 region];
    v34 = CGRectIntegral(v33);
    v12 = 0;
    v13 = 0;
    height = v34.size.height;
    v15 = v9[3];
    v16 = v34.size.height / v15;
    if (!v15)
    {
      v16 = 0.0;
    }

    v17 = vcvtas_u32_f32(v16 * v15);
    v18 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      v19 = &v9[4 * v12];
      v20 = *v19;
      v21 = vcvtas_u32_f32(v16 * *v19);
      if (v21)
      {
        v22 = v13 >= height;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v23 = vdupq_lane_s64(COERCE__INT64(v20), 0);
        v24 = v10 + v11 * v13 + 3;
        v25 = 1;
        do
        {
          *(v24 - 1) = v12;
          if (v20 <= 0.0)
          {
            v27 = 0;
          }

          else
          {
            v26 = vdivq_f64(vmulq_f64(vcvtq_f64_f32(*(v19 + 1)), v18), v23);
            v27 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vminnmq_f64(vbicq_s8(v26, vcltzq_f64(v26)), v18))));
          }

          *(v24 - 2) = v27.i8[0];
          *(v24 - 3) = v27.i8[4];
          *v24 = -1;
          ++v13;
          if (v25 >= v21)
          {
            break;
          }

          ++v25;
          v24 = v11 + v24;
        }

        while (v13 < height);
      }

      if (v12 > 0xFE)
      {
        break;
      }

      ++v12;
    }

    while (v13 <= v17);
    if (!v13)
    {
      *v10 = -16777216;
      v13 = 1;
    }

    v28 = height > v13;
    v29 = height - v13;
    if (v28)
    {
      v30 = v11 * v13;
      v31 = v11 * (v13 - 1);
      do
      {
        *(v10 + v30) = *(v10 + v31);
        v10 = v11 + v10;
        --v29;
      }

      while (v29);
    }
  }

  return v8 != 0;
}

+ (int)formatForInputAtIndex:(int)a3
{
  if (a3)
  {
    sub_4A38C();
  }

  return kCIFormatRGBAf;
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  if (![a4 objectForKeyedSubscript:{@"imageExtent", a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}])
  {
    sub_4A3B8();
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