@interface CIHueChromaHistProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (int)formatForInputAtIndex:(int)a3;
@end

@implementation CIHueChromaHistProcessor

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v9 = [a3 objectAtIndex:{0, a4, a5, a6}];
  if (v9)
  {
    [objc_msgSend(a4 objectForKeyedSubscript:{@"chromaMin", "floatValue"}];
    v11 = v10;
    [objc_msgSend(a4 objectForKeyedSubscript:{@"hueRange", "floatValue"}];
    v13 = v12;
    v14 = *([objc_msgSend(a3 objectAtIndex:{1), "baseAddress"}] + 2);
    v15 = [v9 baseAddress];
    v16 = [v9 bytesPerRow];
    [v9 region];
    v88 = CGRectIntegral(v87);
    height = v88.size.height;
    width = v88.size.width;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v19 = v11 * 255.0;
    if (v14 < 0.1)
    {
      v19 = 0.0;
    }

    v20 = vcvtad_u64_f64(v19);
    if (height < 1)
    {
      goto LABEL_14;
    }

    v21 = 0;
    v22 = (v15 + 1);
    v23 = 1;
    do
    {
      v24 = v22;
      v25 = width & 0x7FFFFFFF;
      if (width >= 1)
      {
        do
        {
          v26 = *(v24 - 1);
          v27 = vcvtd_n_f64_u32(*v24, 3uLL);
          if (v26 > v20)
          {
            v23 = 0;
            v28 = vcvtmd_s64_f64(v27);
            *(&v79 + v28) = *(&v79 + v28) + 1.0;
          }

          if (v26 >= v20)
          {
            v29 = vcvtmd_s64_f64(v27);
            *(&v71 + v29) = *(&v71 + v29) + 1.0;
          }

          v24 += 4;
          --v25;
        }

        while (v25);
      }

      ++v21;
      v22 = &v16[v22];
    }

    while (v21 != (v88.size.height & 0x7FFFFFFF));
    if (v23)
    {
LABEL_14:
      v30 = 0;
      v83 = v75;
      v84 = v76;
      v85 = v77;
      v86 = v78;
      v79 = v71;
      v80 = v72;
      v81 = v73;
      v82 = v74;
    }

    else
    {
      v30 = 1;
    }

    v31 = 0;
    v32 = 0.0;
    v33 = 0.0;
    do
    {
      if (*(&v79 + v31) > v32)
      {
        v33 = v31;
        v32 = *(&v79 + v31);
      }

      ++v31;
    }

    while (v31 != 32);
    if (v14 >= 0.1)
    {
      v34 = v13 * 3.14159265 / 180.0;
    }

    else
    {
      v34 = 0.523598776;
    }

    bzero(v70, 0xC00uLL);
    if (height < 1)
    {
      v35 = 0;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = v34;
      v41 = ((v33 / 31.0) + (v33 / 31.0)) * 3.14159265 + -3.14159265;
      v42 = v41;
      v43 = (v40 * 0.5);
      v44 = v43 + -3.14159265;
      v45 = 3.14159265 - v43;
      v46 = (v15 + 2);
      v47 = vdup_n_s32(0x3B808081u);
      do
      {
        v48 = v46;
        v49 = width & 0x7FFFFFFF;
        if (width >= 1)
        {
          do
          {
            v37.i8[0] = *(v48 - 1);
            v37.f32[0] = v37.u32[0];
            v50 = ((v37.f32[0] * 0.0039216) + (v37.f32[0] * 0.0039216)) * 3.14159265 + -3.14159265;
            v51 = v50;
            if ((v44 <= v42 || v45 >= v51) && (v45 >= v42 || v44 <= v51))
            {
              v52 = v41 - v50;
            }

            else
            {
              v52 = v41 + v50;
            }

            v53 = *(v48 - 2);
            v54 = fabsf(v52);
            if (v54 < v40)
            {
              v55 = v30;
            }

            else
            {
              v55 = 0;
            }

            v56 = v55 == 1 && v53 > v20;
            if (v56 || (v54 > v40 ? (v57 = 1) : (v57 = v30), (v57 & 1) == 0 && v53 >= v20))
            {
              v58 = &v70[12 * *v48];
              *v58 = *v58 + 1.0;
              v37.f32[1] = v53;
              *(v58 + 4) = vmla_f32(*(v58 + 4), v47, v37);
              ++v39;
            }

            v48 += 4;
            --v49;
          }

          while (v49);
        }

        ++v38;
        v46 = &v16[v46];
      }

      while (v38 != (height & 0x7FFFFFFF));
      *&v35 = v39;
    }

    v59 = [a5 baseAddress];
    [a5 bytesPerRow];
    v60 = 0;
    v61 = vdupq_lane_s32(v69, 0);
    do
    {
      v62 = HIDWORD(*&v70[v60 + 16]);
      v63 = *&v70[v60 + 8];
      v64 = *&v70[v60 + 32];
      v65 = HIDWORD(*&v70[v60 + 32]);
      v66 = *&v70[v60];
      DWORD1(v66) = HIDWORD(v66);
      DWORD2(v66) = *&v70[v60 + 24];
      HIDWORD(v66) = HIDWORD(*&v70[v60 + 32]);
      v67 = vrev64q_s32(*&v70[v60 + 16]);
      v67.i32[0] = HIDWORD(*&v70[v60]);
      v67.i32[3] = *&v70[v60 + 40];
      vst4q_f32(v59, *(&v61 - 3));
      v59 += 16;
      v60 += 48;
    }

    while (v60 != 3072);
  }

  return v9 != 0;
}

+ (int)formatForInputAtIndex:(int)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      sub_4A2B0();
    }

    v3 = &kCIFormatRGBAf;
  }

  else
  {
    v3 = &kCIFormatBGRA8;
  }

  return *v3;
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  if (![a4 objectForKeyedSubscript:{@"imageExtents", a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}])
  {
    sub_4A308();
  }

  if ([objc_msgSend(a4 objectForKeyedSubscript:{@"imageExtents", "count"}] <= a3)
  {
    sub_4A2DC();
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