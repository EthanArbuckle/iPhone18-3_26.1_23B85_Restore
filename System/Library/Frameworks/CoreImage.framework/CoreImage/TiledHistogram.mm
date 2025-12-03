@interface TiledHistogram
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (id)roiTileArrayForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
@end

@implementation TiledHistogram

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v41[4095] = *MEMORY[0x1E69E9840];
  v9 = [objc_msgSend(arguments objectForKeyedSubscript:{@"binCount", "unsignedLongValue"}];
  v10 = [objc_msgSend(arguments objectForKeyedSubscript:{@"areaW", "longValue"}];
  v11 = [objc_msgSend(arguments objectForKeyedSubscript:{@"areaH", "longValue"}];
  [objc_msgSend(arguments objectForKeyedSubscript:{@"scale", "floatValue"}];
  v13 = v12;
  v14 = [inputs objectAtIndexedSubscript:0];
  [v14 region];
  v16 = v15;
  v18 = v17;
  bzero(v40, 0x8000uLL);
  baseAddress = [v14 baseAddress];
  if (v18)
  {
    v20 = baseAddress;
    for (i = 0; i != v18; ++i)
    {
      if (v16)
      {
        v22 = v20 + 4;
        v23 = v16;
        do
        {
          _H0 = *(v22 + 2);
          v25 = 16 * *(v22 - 4);
          __asm { FCVT            S0, H0 }

          *&v40[v25] = *&v40[v25] + _S0;
          v31 = &v40[16 * *(v22 - 2)];
          v31[1] = v31[1] + _S0;
          v32 = &v40[16 * *v22];
          v32[2] = v32[2] + _S0;
          v22 += 8;
          --v23;
        }

        while (v23);
      }

      v20 += [v14 bytesPerRow] & 0xFFFFFFFFFFFFFFF8;
    }
  }

  baseAddress2 = [output baseAddress];
  if (![v14 roiTileIndex])
  {
    bzero(baseAddress2, 16 * v9);
  }

  if (v9)
  {
    *v34.i32 = v13 / (v11 * v10);
    v35 = vdup_lane_s32(v34, 0);
    v36 = baseAddress2 + 2;
    v37 = v41;
    do
    {
      *(v36 - 1) = vmla_f32(*(v36 - 2), v35, *(v37 - 2));
      v38 = *v37;
      v37 += 4;
      *v36 = *v36 + (v38 * *v34.i32);
      v36 += 4;
      --v9;
    }

    while (v9);
  }

  return 1;
}

+ (id)roiTileArrayForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v6 = [objc_msgSend(arguments objectForKeyedSubscript:{@"tileSize", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height), "longValue"}];
  v7 = [objc_msgSend(arguments objectForKeyedSubscript:{@"areaX", "longValue"}];
  v8 = [objc_msgSend(arguments objectForKeyedSubscript:{@"areaY", "longValue"}];
  v9 = [objc_msgSend(arguments objectForKeyedSubscript:{@"areaW", "longValue"}];
  v10 = [objc_msgSend(arguments objectForKeyedSubscript:{@"areaH", "longValue"}];
  v11 = (v6 - 1 + v10) / v6;
  array = [MEMORY[0x1E695DF70] array];
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v6 - 1 + v9) / v6 >= 1)
      {
        v14 = (v6 - 1 + v9) / v6;
        v15 = v7;
        do
        {
          v17.origin.x = v15;
          v17.origin.y = (v8 + i * v6);
          v17.size.width = v6;
          v17.size.height = v6;
          v19.origin.x = v7;
          v19.origin.y = v8;
          v19.size.width = v9;
          v19.size.height = v10;
          v18 = CGRectIntersection(v17, v19);
          [array addObject:{+[CIVector vectorWithCGRect:](CIVector, "vectorWithCGRect:", v18.origin.x, v18.origin.y, v18.size.width, v18.size.height)}];
          v15 += v6;
          --v14;
        }

        while (v14);
      }
    }
  }

  return array;
}

@end