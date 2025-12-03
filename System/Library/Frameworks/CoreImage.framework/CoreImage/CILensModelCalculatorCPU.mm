@interface CILensModelCalculatorCPU
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation CILensModelCalculatorCPU

+ (int)formatForInputAtIndex:(int)index
{
  if (index)
  {
    return 2312;
  }

  else
  {
    return 0;
  }
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v6 = [arguments objectForKeyedSubscript:{@"inputFocusRect", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  v7 = 1.0;
  v8 = 1.0;
  v9 = 0.0;
  v10 = 0.0;
  if (!input && v6)
  {
    [v6 CGRectValue];
  }

  result.size.height = v7;
  result.size.width = v8;
  result.origin.y = v9;
  result.origin.x = v10;
  return result;
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  MEMORY[0x1EEE9AC00](self, a2, inputs, arguments, output, error);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v56 = *MEMORY[0x1E69E9840];
  v12 = [v10 objectAtIndexedSubscript:0];
  [objc_msgSend(v9 objectForKeyedSubscript:{@"inputFocusRect", "CGRectValue"}];
  v14 = v13;
  v53 = v15;
  v17 = v16;
  v19 = v18;
  v20 = [v9 objectForKeyedSubscript:@"inputTuningParameters"];
  bzero(v55, 0x400uLL);
  bzero(v54, 0x4000uLL);
  v21 = 0;
  v22 = 0;
  v23 = v19 * 0.015625;
  v52 = v19 * 0.015625 * 0.5;
  v24 = 0.0;
  do
  {
    v25 = 64;
    v26 = 0.0;
    do
    {
      v54[v21] = sampleLinearWithOffset(v12, 0, v17 * 0.015625 * 0.5 + v14 + v17 * 0.015625 * v26, v52 + v53 + v23 * v24);
      v26 = v26 + 1.0;
      ++v21;
      --v25;
    }

    while (v25);
    v24 = v24 + 1.0;
    ++v22;
  }

  while (v22 != 64);
  v27 = [v11 objectAtIndexedSubscript:1];
  v28 = sampleLinearWithOffset(v27, 0, 0.0, 0.0);
  v29 = sampleLinearWithOffset(v27, 1u, 0.0, 0.0);
  v30 = vabds_f32(v29, v28) >= 0.001;
  v32 = v29 != 1.0 && v28 != 1.0;
  v33 = v32 && v30;
  if (v32 && v30)
  {
    for (i = 0; i != 4096; ++i)
    {
      v35 = (1.0 / (v29 - v28)) * 255.0 * (v54[i] - v28);
      v36 = v35 & ~(v35 >> 31);
      if (v36 >= 255)
      {
        v36 = 255;
      }

      ++*&v55[4 * v36];
    }

    string = [MEMORY[0x1E696AD60] string];
    for (j = 0; j != 1024; j += 4)
    {
      [string appendFormat:@"%d, ", *&v55[j]];
    }

    NSLog(&cfstr_Focus.isa, string);
    SDOFSimpleLensModelValue(@"zeroShiftPercentile", v20);
    v40 = vcvtmd_s64_f64(v39 * 64.0 * 64.0);
    if (v40 < 1)
    {
      v44 = 0.0;
    }

    else
    {
      v41 = 0;
      for (k = 0; k < v40; k += *&v55[4 * v41++])
      {
        v43 = v41 + 1;
        if (v41 > 0xFE)
        {
          break;
        }
      }

      v44 = v43;
    }

    v45 = ((v29 - v28) * v44) / 255.0 + v28;
    baseAddress = [v7 baseAddress];
    *baseAddress = v28;
    baseAddress[1] = v45;
    baseAddress[2] = 0.83689;
    baseAddress[3] = v29;
    [v7 region];
    if (v47 != 1.0)
    {
      [v7 region];
      if (v48 > 0.0)
      {
        v49 = 0;
        do
        {
          memset_pattern16(([v7 baseAddress] + objc_msgSend(v7, "bytesPerRow") * v49++), baseAddress, objc_msgSend(v7, "bytesPerRow"));
          [v7 region];
        }

        while (v50 > v49);
      }
    }
  }

  return v33;
}

@end