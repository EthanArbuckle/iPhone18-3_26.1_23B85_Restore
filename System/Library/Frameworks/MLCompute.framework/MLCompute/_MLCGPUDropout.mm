@interface _MLCGPUDropout
+ (id)layerWithDevice:(id)a3 rate:(float)a4 seed:(unint64_t)a5;
- (_MLCGPUDropout)initWithDevice:(id)a3 rate:(float)a4 seed:(unint64_t)a5;
@end

@implementation _MLCGPUDropout

- (_MLCGPUDropout)initWithDevice:(id)a3 rate:(float)a4 seed:(unint64_t)a5
{
  v8 = a3;
  v39.receiver = self;
  v39.super_class = _MLCGPUDropout;
  v9 = [(_MLCGPUDropout *)&v39 init];
  v10 = v9;
  if (v9)
  {
    v33 = v9;
    v11 = [v8 deviceList];
    v12 = [v11 count];

    v34 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v12)
    {
      v13 = 0;
      v14 = 1.0 - a4;
      v15 = 0x277CD7000uLL;
      v35 = vdupq_n_s64(1uLL);
      v16 = 0x277CD7000uLL;
      do
      {
        v17 = [v8 deviceList];
        v18 = [v17 objectAtIndexedSubscript:v13];

        v19 = objc_alloc(*(v15 + 1632));
        v37 = v35;
        v38 = 1;
        v20 = [v19 initWithDevice:v18 keepProbability:a5 seed:&v37 maskStrideInPixels:{COERCE_DOUBLE(__PAIR64__(v35.u32[1], LODWORD(v14)))}];
        v21 = objc_alloc(*(v16 + 1640));
        v37 = v35;
        v38 = 1;
        v22 = [v21 initWithDevice:v18 keepProbability:a5 seed:&v37 maskStrideInPixels:{COERCE_DOUBLE(__PAIR64__(v35.u32[1], LODWORD(v14)))}];
        v23 = v22;
        if (v20)
        {
          v24 = v22 == 0;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          v25 = v12;
          v26 = v8;
          v27 = v16;
          v28 = v15;
          v29 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v20 gradientKernel:v22];
          v30 = v29;
          if (v29)
          {
            [v29 setSourceOfForwardNeededForGradient:1];
            [v30 setResultOfForwardNeededForGradient:0];
            [v34 addObject:v30];
          }

          v15 = v28;
          v16 = v27;
          v8 = v26;
          v12 = v25;
        }

        ++v13;
      }

      while (v12 != v13);
    }

    v31 = [v34 copy];
    v10 = v33;
    v36.receiver = v33;
    v36.super_class = _MLCGPUDropout;
    [(_MLCGPULayer *)&v36 setDeviceOps:v31];
  }

  return v10;
}

+ (id)layerWithDevice:(id)a3 rate:(float)a4 seed:(unint64_t)a5
{
  v8 = a3;
  v9 = [a1 alloc];
  *&v10 = a4;
  v11 = [v9 initWithDevice:v8 rate:a5 seed:v10];

  return v11;
}

@end