double expandFromCenter(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a5 - a3;
  v7 = a6 - a4;
  v10 = CGRectInset(*&a1, (v6 * -0.5), (v7 * -0.5));
  v8 = floor(COERCE_DOUBLE(CGRectIntegral(v10)) * 0.5);
  return v8 + v8;
}

CIVector *orientedPupilFromLandmarks(void *a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a2 requestRevision] == 3 && objc_msgSend(a2, "leftPupil") && objc_msgSend(a2, "rightPupil"))
  {
    if (a3)
    {
      v6 = [a2 rightPupil];
    }

    else
    {
      v6 = [a2 leftPupil];
    }
  }

  else if (a3)
  {
    v6 = [a2 rightEye];
  }

  else
  {
    v6 = [a2 leftEye];
  }

  v7 = CIVNLandmarkInOrientedImage(v6, a1);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        [v14 X];
        v12 = v12 + v15;
        [v14 Y];
        v11 = v11 + v16;
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  return +[CIVector vectorWithX:Y:](CIVector, "vectorWithX:Y:", v12 / [v7 count], v11 / objc_msgSend(v7, "count"));
}

uint64_t semanticPupils(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v31[3] = *MEMORY[0x1E69E9840];
  v13 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_resp_previs];
  [a4 extent];
  v31[0] = a4;
  v31[1] = a6;
  v31[2] = &unk_1F10853B8;
  v18 = -[CIColorKernel applyWithExtent:arguments:](v13, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3], v14, v15, v16, v17);
  [a5 extent];
  v30[0] = a5;
  v30[1] = a7;
  v30[2] = &unk_1F10853B8;
  v23 = -[CIColorKernel applyWithExtent:arguments:](v13, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3], v19, v20, v21, v22);
  v24 = [a2 faceSegments];
  v25 = segmentationCentroidInImage(v24, v18, a1);
  v27 = v26;
  v29[0] = [CIVector vectorWithCGPoint:segmentationCentroidInImage(v24, v23, a1)];
  v29[1] = [CIVector vectorWithCGPoint:v25, v27];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
}

uint64_t semanticPupilsForFaceObservation(void *a1, void *a2, uint64_t a3)
{
  v5 = probabilitiesForSegment([a2 faceSegments], 480, a3);
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v5 objectAtIndexedSubscript:1];
  v8 = [v5 objectAtIndexedSubscript:2];
  v10 = [v5 objectAtIndexedSubscript:3];

  return semanticPupils(a1, a2, v9, v6, v7, v8, v10);
}

void *axesForEyePointsV2(void *result)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if ([result count] >= 8)
    {
      [objc_msgSend(v1 objectAtIndexedSubscript:{4), "X"}];
      v3 = v2;
      [objc_msgSend(v1 objectAtIndexedSubscript:{0), "X"}];
      v5 = (v3 - v4) * 0.5;
      [objc_msgSend(v1 objectAtIndexedSubscript:{4), "Y"}];
      v7 = v6;
      [objc_msgSend(v1 objectAtIndexedSubscript:{0), "Y"}];
      v9 = [CIVector vectorWithX:v5 Y:(v7 - v8) * 0.5];
      [objc_msgSend(v1 objectAtIndexedSubscript:{2), "X"}];
      v11 = v10;
      [objc_msgSend(v1 objectAtIndexedSubscript:{6), "X"}];
      v13 = (v11 - v12) * 0.5;
      [objc_msgSend(v1 objectAtIndexedSubscript:{2), "Y"}];
      v15 = v14;
      [objc_msgSend(v1 objectAtIndexedSubscript:{6), "Y"}];
      v17[0] = v9;
      v17[1] = [[CIVector vectorWithX:(v15 - v16) * 0.5 Y:?], "_orthonormalizeTo:", v9];
      return [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *axesForEyePointsV3(void *result)
{
  v25[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if ([result count] >= 6)
    {
      [objc_msgSend(v1 objectAtIndexedSubscript:{3), "X"}];
      v3 = v2;
      [objc_msgSend(v1 objectAtIndexedSubscript:{0), "X"}];
      v5 = (v3 - v4) * 0.5;
      [objc_msgSend(v1 objectAtIndexedSubscript:{3), "Y"}];
      v7 = v6;
      [objc_msgSend(v1 objectAtIndexedSubscript:{0), "Y"}];
      v9 = [CIVector vectorWithX:v5 Y:(v7 - v8) * 0.5];
      [objc_msgSend(v1 objectAtIndexedSubscript:{1), "X"}];
      v11 = v10;
      [objc_msgSend(v1 objectAtIndexedSubscript:{2), "X"}];
      v13 = v11 + v12;
      [objc_msgSend(v1 objectAtIndexedSubscript:{4), "X"}];
      v15 = v14;
      [objc_msgSend(v1 objectAtIndexedSubscript:{5), "X"}];
      v17 = ((v15 + v16) * -0.5 + v13 * 0.5) * 0.5;
      [objc_msgSend(v1 objectAtIndexedSubscript:{1), "Y"}];
      v19 = v18;
      [objc_msgSend(v1 objectAtIndexedSubscript:{2), "Y"}];
      v21 = v19 + v20;
      [objc_msgSend(v1 objectAtIndexedSubscript:{4), "Y"}];
      v23 = v22;
      [objc_msgSend(v1 objectAtIndexedSubscript:{5), "Y"}];
      v25[0] = v9;
      v25[1] = [[CIVector vectorWithX:((v23 + v24) * -0.5 + v21 * 0.5) * 0.5 Y:?], "_orthonormalizeTo:", v9];
      return [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float areaForAxes(void *a1, void *a2)
{
  [a1 _norm];
  v4 = v3;
  [a2 _norm];
  return v4 * 3.14159265 * v5;
}

void repairROIforEyePoints(void *a1, void *a2, float *a3)
{
  v22.origin.x = CIVNBoundingRect(a1);
  v23 = CGRectIntegral(v22);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v9 = *a3;
  [objc_msgSend(a2 objectAtIndexedSubscript:{0), "X"}];
  v11 = fabs(v10 * v9);
  v12 = a3[1];
  [objc_msgSend(a2 objectAtIndexedSubscript:{1), "X"}];
  v14 = v11 + fabs(v13 * v12);
  v15 = *a3;
  [objc_msgSend(a2 objectAtIndexedSubscript:{0), "Y"}];
  v17 = fabs(v16 * v15);
  v18 = a3[1];
  [objc_msgSend(a2 objectAtIndexedSubscript:{1), "Y"}];
  v20 = v17 + fabs(v19 * v18);
  if (CI_LOG_DUALRED())
  {
    v21 = ci_logger_api();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      repairROIforEyePoints_cold_1(v21, v14, v20);
    }
  }

  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v25 = CGRectInset(v24, -v14, -v20);
  v25.origin.x = floor(v25.origin.x * 0.5);
  v25.origin.x = v25.origin.x + v25.origin.x;
  v25.origin.y = floor(v25.origin.y * 0.5);
  v25.origin.y = v25.origin.y + v25.origin.y;
  v25.size.width = floor(v25.size.width * 0.5);
  v25.size.width = v25.size.width + v25.size.width;
  v25.size.height = floor(v25.size.height * 0.5);
  v25.size.height = v25.size.height + v25.size.height;
  CGRectIntegral(v25);
}

uint64_t focusStatsForRegion(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, void *a7)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x4012000000;
  v35 = __Block_byref_object_copy__5;
  v36 = __Block_byref_object_dispose__5;
  v37 = &unk_19D0E11CF;
  v40 = *MEMORY[0x1E69660D8];
  v41[0] = MEMORY[0x1E695E0F8];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  pixelBufferOut = 0;
  v14 = ceil(a1 / 6.0) * 6.0;
  v15 = floor((a1 + a3) / 6.0) * 6.0;
  v16 = ceil(a2 * 0.5);
  v17 = v16 + v16;
  v18 = floor((a2 + a4) * 0.5);
  *&v18 = v18 + v18;
  v19 = v15 - v14;
  v20 = *&v18 - v17;
  if (CVPixelBufferCreate(0, (v15 - v14), (*&v18 - v17), 0x4C303038u, v13, &pixelBufferOut))
  {
    if (CI_LOG_DUALRED())
    {
      v21 = ci_logger_api();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        focusStatsForRegion_cold_1(v21);
      }
    }
  }

  else
  {
    v38 = *MEMORY[0x1E6965F98];
    v39 = *MEMORY[0x1E6965FC8];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    CVBufferSetAttachments(pixelBufferOut, v22, kCVAttachmentMode_ShouldPropagate);
    v23 = [a7 imageByCroppingToRect:{v14, v17, v19, v20}];
    CGAffineTransformMakeTranslation(&v30, -v14, -v17);
    v24 = [objc_msgSend(v23 imageByApplyingTransform:{&v30), "imageByApplyingFilter:", @"CILinearToSRGBToneCurve"}];
    Width = CVPixelBufferGetWidth(pixelBufferOut);
    Height = CVPixelBufferGetHeight(pixelBufferOut);
    [a6 render:v24 toCVPixelBuffer:pixelBufferOut bounds:0 colorSpace:{0.0, 0.0, Width, Height}];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __focusStatsForRegion_block_invoke;
    v29[3] = &unk_1E75C2628;
    v29[4] = &v32;
    PixelBufferApplyPlaneReadOnlyBlock(pixelBufferOut, v29);
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  v27 = v33[6];
  _Block_object_dispose(&v32, 8);
  return v27;
}

__n128 __Block_byref_object_copy__5(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void __focusStatsForRegion_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6)
{
  v76 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = 0;
    if (a4 < 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      if (a5 >= 3)
      {
        bzero(v75, 0x800uLL);
        bzero(v74, 0x400uLL);
        if (a5 > 4)
        {
          v13 = a2 + 2 * a6 + 1;
          v14 = 2;
          do
          {
            a2 += a6;
            if (a4 >= 5)
            {
              v15 = (a2 + 1);
              v16 = a4 - 4;
              v17 = v13;
              do
              {
                v18 = v15;
                v19 = *v15;
                v20 = *(v15 - 1);
                v22 = *++v15;
                v21 = v22;
                v23 = v18[-a6];
                v25 = *v17++;
                v24 = v25;
                ++v74[v19];
                if (v19 <= 0xF0 && v20 <= 0xF0 && v21 <= 0xF0 && v23 <= 0xF0 && v24 <= 0xF0)
                {
                  v26 = ((v20 + v21 + v23 + v24 + 2) >> 2) - v19 + 256;
                  ++v75[v26];
                }

                --v16;
              }

              while (v16);
            }

            v13 += a6;
          }

          while (v14++ != a5 - 3);
        }

        v28 = 0;
        v29 = xmmword_19CF22EA0;
        v30 = 0uLL;
        v31.i64[0] = 0x400000004;
        v31.i64[1] = 0x400000004;
        v32 = 0uLL;
        v33 = 0uLL;
        do
        {
          v34 = *&v75[v28];
          v30 = vaddq_s32(v34, v30);
          v35 = vmulq_s32(v34, v29);
          v33 = vaddw_high_u32(v33, v35);
          v32 = vaddw_u32(v32, *v35.i8);
          v29 = vaddq_s32(v29, v31);
          v28 += 4;
        }

        while (v28 != 512);
        v36 = 0;
        v37 = vaddvq_s32(v30);
        v38 = vdupq_lane_s64(COERCE__INT64(vaddvq_s64(vaddq_s64(v32, v33)) / v37), 0);
        v39 = xmmword_19CF22EA0;
        v40 = 0.0;
        v41.i64[0] = 0x400000004;
        v41.i64[1] = 0x400000004;
        do
        {
          v42.i64[0] = v39.u32[0];
          v42.i64[1] = v39.u32[1];
          v43 = vcvtq_f64_u64(v42);
          v42.i64[0] = v39.u32[2];
          v42.i64[1] = v39.u32[3];
          v44 = vsubq_f64(vcvtq_f64_u64(v42), v38);
          v45 = vsubq_f64(v43, v38);
          v46 = *&v75[v36];
          v42.i64[0] = v46;
          v42.i64[1] = DWORD1(v46);
          v47 = vcvtq_f64_u64(v42);
          v42.i64[0] = DWORD2(v46);
          v42.i64[1] = HIDWORD(v46);
          v48 = vmulq_f64(vmulq_f64(v44, v44), vcvtq_f64_u64(v42));
          v49 = vmulq_f64(vmulq_f64(v45, v45), v47);
          v40 = v40 + v49.f64[0] + v49.f64[1] + v48.f64[0] + v48.f64[1];
          v39 = vaddq_s32(v39, v41);
          v36 += 4;
        }

        while (v36 != 512);
        v50 = 0;
        v51 = 0uLL;
        v52 = vdupq_n_s64(1uLL);
        v53 = 0uLL;
        do
        {
          v54 = vtstq_s32(*&v75[v50], *&v75[v50]);
          v55.i64[0] = v54.u32[0];
          v55.i64[1] = v54.u32[1];
          v56 = vandq_s8(v55, v52);
          v55.i64[0] = v54.u32[2];
          v55.i64[1] = v54.u32[3];
          v53 = vaddq_s64(v53, vandq_s8(v55, v52));
          v51 = vaddq_s64(v51, v56);
          v50 += 4;
        }

        while (v50 != 512);
        v57 = vaddq_s64(v51, v53);
        v58 = v40 / v37;
        if (v37 <= 0)
        {
          v58 = 0.0;
        }

        v59 = ((((a4 << 32) - 0x300000000) * (a5 + 4294967293u)) >> 32);
        v60 = (v59 * 0.05);
        if (v60 < 1)
        {
          v64 = 2;
        }

        else
        {
          v61 = 0;
          for (i = 0; i < v60; i += v74[v61++])
          {
            v63 = v61 + 1;
            if (v61 > 0xFE)
            {
              break;
            }
          }

          v64 = 2 - v63;
        }

        v65 = vaddvq_s64(v57);
        v66 = (v59 * 0.05);
        if (v66 < 1)
        {
          v69 = 255;
        }

        else
        {
          v67 = 0;
          v68 = 255;
          do
          {
            v69 = v68 - 1;
            if (!v68)
            {
              break;
            }

            v67 += v74[v68--];
          }

          while (v67 < v66);
        }

        v70 = (v69 + v64) / 255.0;
        v71 = v70;
        if (v71 <= 0.00001)
        {
          v8 = 0;
        }

        else
        {
          *&v72 = v58 / v71;
          v8 = v72;
        }

        v10 = v65;
      }
    }

    v73 = *(*(a1 + 32) + 8);
    *(v73 + 48) = v8;
    *(v73 + 56) = v10;
  }
}

uint64_t dumpfilepathWithTag(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v6 setDateFormat:@"YYYY_MM_dd__HH_mm_ss_SSS"];
  v7 = [v6 stringFromDate:a3];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@__IMG__%@__redeye%@", @"/var/mobile/Media/DCIM/", v7, a1];

  return [v8 stringByAppendingString:a2];
}

uint64_t dump(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:{dumpfilepathWithTag(a2, @".tiff", a4)}];
  v7 = [a1 colorSpace];
  v8 = MEMORY[0x1E695E0F8];

  return [a3 writeTIFFRepresentationOfImage:a1 toURL:v6 format:264 colorSpace:v7 options:v8 error:0];
}

uint64_t dump420f(__CVBuffer *a1, uint64_t a2, uint64_t a3)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
  if (CVPixelBufferGetPlaneCount(a1))
  {
    v7 = 0;
    do
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v7);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v7);
      [v6 appendBytes:BaseAddressOfPlane length:{CVPixelBufferGetBytesPerRowOfPlane(a1, v7++) * HeightOfPlane}];
    }

    while (CVPixelBufferGetPlaneCount(a1) > v7);
  }

  [v6 writeToFile:dumpfilepathWithTag(a2 atomically:{@".420f", a3), 1}];

  return CVPixelBufferUnlockBaseAddress(a1, 1uLL);
}

uint64_t dumpLinearPNG(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"working_color_space";
  v8[0] = [MEMORY[0x1E695DFB0] null];
  v4 = +[CIContext _cachedContext:options:](CIContext, "_cachedContext:options:", @"DualReEye_dumpLinearPNG", [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1]);
  {
    dumpLinearPNG::cs = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  }

  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:a2];
  return [v4 writePNGRepresentationOfImage:a1 toURL:v5 format:264 colorSpace:dumpLinearPNG::cs options:MEMORY[0x1E695E0F8] error:0];
}

unint64_t CI::sw_resp_previs(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v5 + 16) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 32);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v5 + 40) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  LODWORD(a5) = 1.0;
  if (*v13 > *(a2 + (*(v5 + 56) << 6)))
  {
    *&a5 = 0.0;
  }

  *&a5 = *&a5 * COERCE_FLOAT(*v9);
  return vdupq_lane_s32(*&a5, 0).u64[0];
}

uint64_t CIGLIsUsable()
{
  if (getGLWrapperSymbols_once == -1)
  {
  }

  else
  {
    CIGLIsUsable_cold_1();
  }

  return wrapGLIsUsable();
}

uint64_t SetCurrentContext(uint64_t a1)
{
  if (getGLWrapperSymbols_once != -1)
  {
    CIGLIsUsable_cold_1();
  }

  return wrapSetCurrentContext(a1);
}

uint64_t GetMacroContext@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (getGLWrapperSymbols_once != -1)
  {
    CIGLIsUsable_cold_1();
  }

  return wrapGetMacroContext(a1, a2);
}

uint64_t ContextIsUsable(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  memcpy(__dst, "Crashed when first using an GLContext.  This is likely due to an IOKit Entitlements permission failure.\n", sizeof(__dst));
  qword_1ED7C3F80 = __dst;
  if (getGLWrapperSymbols_once != -1)
  {
    ContextIsUsable_cold_1();
  }

  CurrentContext = wrapGetCurrentContext();
  CIEAGLContextRetain(CurrentContext);
  v3 = SetCurrentContext(a1);
  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    memset(v6, 0, sizeof(v6));
    GetMacroContext(a1, v6);
    if ((v6[0] & 1) == 0)
    {
      v4 = ci_logger_render();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        ContextIsUsable_cold_2(a1, v4);
      }
    }

    (v7)(*(&v6[0] + 1));
    SetCurrentContext(CurrentContext);
  }

  CIEAGLContextRelease(CurrentContext);
  qword_1ED7C3F80 = 0;
  return v3;
}

void *CIEAGLContextRetain(void *result)
{
  if (result)
  {
    v1 = result;
    if (getGLWrapperSymbols_once != -1)
    {
      CIGLIsUsable_cold_1();
    }

    return wrapEAGLContextRetain(v1);
  }

  return result;
}

void CIEAGLContextRelease(void *a1)
{
  if (a1)
  {
    if (getGLWrapperSymbols_once != -1)
    {
      CIGLIsUsable_cold_1();
    }

    wrapEAGLContextRelease(a1);
  }
}

uint64_t CIEAGLContextGetAPI(void *a1)
{
  if (getGLWrapperSymbols_once != -1)
  {
    CIGLIsUsable_cold_1();
  }

  return wrapGetContextAPI(a1);
}

uint64_t CIGLGetFormatInfo(int a1, int a2)
{
  if (getGLWrapperSymbols_once != -1)
  {
    CIGLIsUsable_cold_1();
  }

  return wrapGetFormatInfo(a1, a2);
}

void *CIEAGLContextCreate(int a1, void *a2)
{
  if (getGLWrapperSymbols_once != -1)
  {
    CIGLIsUsable_cold_1();
  }

  return wrapEAGLContextCreate(a1, a2);
}

void *CIEAGLContextSetParameter(void *a1, uint64_t a2, int a3)
{
  if (getGLWrapperSymbols_once != -1)
  {
    CIGLIsUsable_cold_1();
  }

  return wrapEAGLContextSetParameter(a1, a2, a3);
}

void *CIEAGLContextSetBackgroundEnabled(void *a1, int a2)
{
  if (getGLWrapperSymbols_once != -1)
  {
    CIGLIsUsable_cold_1();
  }

  return wrapEAGLContextSetBackgroundEnabled(a1, a2);
}

uint64_t CIEAGLContextTexImageIOSurface(void *a1, GLenum a2, uint64_t a3, uint64_t a4, GLint a5, signed int a6, signed int a7, __IOSurface *a8, unsigned int a9)
{
  if (getGLWrapperSymbols_once != -1)
  {
    CIGLIsUsable_cold_1();
  }

  return wrapEAGLContextTexImageIOSurface(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t is_gpu_A9_or_higher()
{
  if (getGLWrapperSymbols_once == -1)
  {
  }

  else
  {
    CIGLIsUsable_cold_1();
  }

  return wrapIsA9_or_higher();
}

double CI::sw_jointBilateral(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 64);
  v8 = *(v4 + 56);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (v7 == 5)
  {
    v10 = v9;
  }

  v11 = a4 + 80 * v6;
  v12 = a4 + 80 * v5;
  v73 = *v10;
  DC = CI::getDC(a1);
  v14 = *DC;
  v15 = CI::getDC(DC);
  *v16.f64 = *(v12 + 24) + (vmuls_lane_f32(*(v12 + 20), *v15, 1) + (COERCE_FLOAT(*v15) * *(v12 + 16)));
  *(v16.f64 + 1) = *(v12 + 36) + (vmuls_lane_f32(*(v12 + 32), *v15, 1) + (COERCE_FLOAT(*v15) * *(v12 + 28)));
  v72 = v16;
  v17 = CI::getDC(v15);
  v18 = *(v11 + 16);
  v19 = *(v11 + 20);
  v20.i32[0] = *(v11 + 24);
  v21.i32[0] = *(v11 + 28);
  *v22.f64 = *v20.i32 + (vmuls_lane_f32(v19, *v17, 1) + (COERCE_FLOAT(*v17) * v18));
  LODWORD(v23) = *(v11 + 32);
  v24.i32[0] = *(v11 + 36);
  *(v22.f64 + 1) = *v24.i32 + (vmuls_lane_f32(*&v23, *v17, 1) + (COERCE_FLOAT(*v17) * *v21.i32));
  v71 = v22;
  __asm { FMOV            V0.2S, #1.0 }

  v30 = vadd_f32(v14, _D0);
  *v31.i32 = *(v12 + 24) + (vmuls_lane_f32(*(v12 + 20), v30, 1) + (v30.f32[0] * *(v12 + 16)));
  *&v31.i32[1] = *(v12 + 36) + (vmuls_lane_f32(*(v12 + 32), v30, 1) + (v30.f32[0] * *(v12 + 28)));
  v32 = vsub_f32(*v31.i8, *&v72.f64[0]);
  *v33.f64 = *v20.i32 + (vmuls_lane_f32(v19, v30, 1) + (v30.f32[0] * v18));
  *&v34 = vmuls_lane_f32(*&v23, v30, 1);
  *(v33.f64 + 1) = *v24.i32 + (*&v34 + (v30.f32[0] * *v21.i32));
  v35 = vsub_f32(*&v33.f64[0], *&v22.f64[0]);
  v68 = CI::BitmapSampler::read(*(v12 + 8), v72.f64[0], v33, v34, v23, v20, v21, v24, v31);
  v43 = CI::BitmapSampler::read(*(v11 + 8), v71.f64[0], v36, v37, v38, v39, v40, v41, v42);
  v70 = *&v43;
  v44 = vextq_s8(v73, v73, 8uLL).u64[0];
  v45 = 0uLL;
  v46 = -2;
  *&v47 = 0;
  v69 = v44;
  do
  {
    for (i = -2; i != 3; ++i)
    {
      v75 = v47;
      v76 = v45;
      v49.f32[0] = v46;
      v49.f32[1] = i;
      v50 = vmul_f32(v44, v49);
      v51 = expf(-(((v49.f32[1] * v49.f32[1]) + (v46 * v46)) * *&v73.i32[1]));
      *v58.i64 = CI::BitmapSampler::read(*(v12 + 8), COERCE_DOUBLE(vadd_f32(*&v72.f64[0], vmul_f32(v32, v50))), v72, v52, v53, v54, v55, v56, v57);
      v74 = v58;
      v65 = CI::BitmapSampler::read(*(v11 + 8), COERCE_DOUBLE(vadd_f32(*&v71.f64[0], vmul_f32(v35, v50))), v71, v59, v60, v61, v62, v63, v64);
      v66 = expf(*v73.i32 * -((*(&v65 + 1) - v70) * (*(&v65 + 1) - v70)));
      v44 = v69;
      v47 = v75;
      *&v47 = *&v75 + (v66 * v51);
      v45 = vaddq_f32(v76, vmulq_n_f32(v74, v51 * v66));
    }

    ++v46;
  }

  while (v46 != 3);
  result = v68;
  if (*&v47 >= 0.001)
  {
    *&result = vdivq_f32(v45, vdupq_lane_s32(*&v47, 0)).u64[0];
  }

  return result;
}

float32x2_t CI::sw_jointBilateralRG(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v51 = *v9;
  DC = CI::getDC(a1);
  v12 = *DC;
  v13 = CI::getDC(DC);
  v14 = *(v10 + 16);
  v15 = *(v10 + 20);
  v16.i32[0] = *(v10 + 24);
  v17.i32[0] = *(v10 + 28);
  v18.i32[0] = *(v10 + 32);
  v19.i32[0] = *(v10 + 36);
  *v20.f64 = *v16.i32 + (vmuls_lane_f32(v15, *v13, 1) + (COERCE_FLOAT(*v13) * v14));
  *(v20.f64 + 1) = *v19.i32 + (vmuls_lane_f32(*v18.i32, *v13, 1) + (COERCE_FLOAT(*v13) * *v17.i32));
  __asm { FMOV            V3.2S, #1.0 }

  v26 = vadd_f32(v12, _D3);
  *v27.f64 = *v16.i32 + (vmuls_lane_f32(v15, v26, 1) + (v26.f32[0] * v14));
  *&v28 = *v19.i32 + (vmuls_lane_f32(*v18.i32, v26, 1) + (v26.f32[0] * *v17.i32));
  HIDWORD(v27.f64[0]) = LODWORD(v28);
  v29 = vsub_f32(*&v27.f64[0], *&v20.f64[0]);
  v49 = v20;
  *v30.i64 = CI::BitmapSampler::read(*(v10 + 8), v20.f64[0], v27, v28, *&v26, v16, v17, v18, v19);
  v50 = v30;
  v31 = vextq_s8(v51, v51, 8uLL).u64[0];
  v32 = 0;
  v33 = -2;
  *&v34 = 0;
  v48 = v31;
  do
  {
    for (i = -2; i != 3; ++i)
    {
      v53 = v34;
      v36.f32[0] = v33;
      v36.f32[1] = i;
      v37 = vmul_f32(v31, v36);
      v38 = expf(-(((v36.f32[1] * v36.f32[1]) + (v33 * v33)) * *&v51.i32[1]));
      *v45.i64 = CI::BitmapSampler::read(*(v10 + 8), COERCE_DOUBLE(vadd_f32(*&v49.f64[0], vmul_f32(v29, v37))), v49, v39, v40, v41, v42, v43, v44);
      v52 = vextq_s8(v45, v45, 8uLL).u64[0];
      v46 = expf(*v51.i32 * -((*&v45.i32[1] - *v50.i32) * (*&v45.i32[1] - *v50.i32)));
      v31 = v48;
      v34 = v53;
      *&v34 = *&v53 + (v46 * v38);
      v32 = vadd_f32(v32, vmul_n_f32(v52, v38 * v46));
    }

    ++v33;
  }

  while (v33 != 3);
  if (*&v34 >= 0.001)
  {
    return vdiv_f32(v32, vdup_lane_s32(*&v34, 0));
  }

  else
  {
    return vextq_s8(v50, v50, 8uLL).u64[0];
  }
}

__n64 CI::sw_guideCombine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  result.n64_u32[0] = *v7;
  result.n64_u32[1] = *v11;
  return result;
}

double CI::sw_guideCombine4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  *&result = vzip1q_s32(*v7, *v11).u64[0];
  return result;
}

float CI::sw_guideMono(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vmulq_f32(*v7, vdupq_n_s32(0x3EAAA64Cu));
  v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  if (v9 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = v9 < 0.0;
  result = 0.0;
  if (!v11)
  {
    return v10;
  }

  return result;
}

double CI::sw_edgeWork(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = (*v7 - *v11) * 1000.0;
  v13 = 1.0;
  if (v12 <= 1.0)
  {
    v13 = (*v7 - *v11) * 1000.0;
  }

  v14 = v12 < 0.0;
  v15 = 0;
  if (!v14)
  {
    *v15.i32 = v13;
  }

  *&result = vdupq_lane_s32(v15, 0).u64[0];
  return result;
}

double CI::sw_edgeWorkContrast(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8.i64[0] = 0xBF000000BF000000;
  v8.i64[1] = 0xBF000000BF000000;
  v9.i64[0] = 0x3F0000003F000000;
  v9.i64[1] = 0x3F0000003F000000;
  v10 = vmaxnmq_f32(vaddq_f32(vmulq_n_f32(vaddq_f32(*v7, v8), *(a2 + (*(v3 + 32) << 6))), v9), 0);
  __asm { FMOV            V1.4S, #1.0 }

  *&result = vminnmq_f32(v10, _Q1).u64[0];
  return result;
}

unint64_t CI::sw_edges(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v53 = *(a2 + (*(v4 + 32) << 6));
  v6 = *CI::getDC(a1);
  v7 = vadd_f32(v6, 0xBF80000000000000);
  LODWORD(v8) = *(v5 + 24);
  v9.i32[0] = *(v5 + 36);
  *v10.i32 = vmuls_lane_f32(*(v5 + 32), v7, 1);
  *&v11 = *v10.i32 + (v7.f32[0] * *(v5 + 28));
  v7.f32[0] = *&v8 + (vmuls_lane_f32(*(v5 + 20), v7, 1) + (v7.f32[0] * *(v5 + 16)));
  *v12.f64 = *v9.i32 + *&v11;
  v7.f32[1] = *v9.i32 + *&v11;
  *_Q0.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v7, v12, v8, v11, v10, v9, v13, v14);
  v52 = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  *_Q0.f32 = vadd_f32(v6, COERCE_FLOAT32X2_T(-*_Q0.i64));
  LODWORD(v20) = *(v5 + 24);
  v21.i32[0] = *(v5 + 36);
  *v22.i32 = vmuls_lane_f32(*(v5 + 32), *_Q0.f32, 1);
  *&v23 = *v22.i32 + (_Q0.f32[0] * *(v5 + 28));
  _Q0.f32[0] = *&v20 + (vmuls_lane_f32(*(v5 + 20), *_Q0.f32, 1) + (_Q0.f32[0] * *(v5 + 16)));
  *v24.f64 = *v21.i32 + *&v23;
  _Q0.f32[1] = *v21.i32 + *&v23;
  *v27.i64 = CI::BitmapSampler::read(*(v5 + 8), *_Q0.i64, v24, v20, v23, v22, v21, v25, v26);
  v51 = v27;
  *v27.f32 = vadd_f32(v6, 1065353216);
  LODWORD(v28) = *(v5 + 24);
  v29.i32[0] = *(v5 + 36);
  *v30.i32 = vmuls_lane_f32(*(v5 + 32), *v27.f32, 1);
  *&v31 = *v30.i32 + (v27.f32[0] * *(v5 + 28));
  v27.f32[0] = *&v28 + (vmuls_lane_f32(*(v5 + 20), *v27.f32, 1) + (v27.f32[0] * *(v5 + 16)));
  *v32.f64 = *v29.i32 + *&v31;
  v27.f32[1] = *v29.i32 + *&v31;
  *v35.i64 = CI::BitmapSampler::read(*(v5 + 8), *v27.i64, v32, v28, v31, v30, v29, v33, v34);
  v50 = v35;
  DC = CI::getDC(v36);
  LODWORD(v38) = *(v5 + 24);
  v39.i32[0] = *(v5 + 36);
  *v40.i32 = vmuls_lane_f32(*(v5 + 32), *DC, 1);
  *&v41 = *v40.i32 + (COERCE_FLOAT(*DC) * *(v5 + 28));
  *&v42 = *&v38 + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  *v43.f64 = *v39.i32 + *&v41;
  *(&v42 + 1) = *v39.i32 + *&v41;
  *v46.i64 = CI::BitmapSampler::read(*(v5 + 8), v42, v43, v38, v41, v40, v39, v44, v45);
  v47 = vsubq_f32(v46, v51);
  v48 = vsubq_f32(v52, v50);
  return vmulq_n_f32(vaddq_f32(vmulq_f32(v48, v48), vmulq_f32(v47, v47)), v53).u64[0];
}

double CI::sw_gabor(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  v5 = *CI::getDC(a1);
  v6 = vadd_f32(v5, 0x40000000BF800000);
  LODWORD(v7) = *(v4 + 24);
  v8.i32[0] = *(v4 + 36);
  *v9.i32 = vmuls_lane_f32(*(v4 + 32), v6, 1);
  *&v10 = *v9.i32 + (v6.f32[0] * *(v4 + 28));
  v6.f32[0] = *&v7 + (vmuls_lane_f32(*(v4 + 20), v6, 1) + (v6.f32[0] * *(v4 + 16)));
  *v11.f64 = *v8.i32 + *&v10;
  v6.f32[1] = *v8.i32 + *&v10;
  *v14.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v6, v11, v7, v10, v9, v8, v12, v13);
  v213 = v14;
  *v14.f32 = vadd_f32(v5, 0x40400000BF800000);
  LODWORD(v15) = *(v4 + 24);
  v16.i32[0] = *(v4 + 36);
  *v17.i32 = vmuls_lane_f32(*(v4 + 32), *v14.f32, 1);
  *&v18 = *v17.i32 + (v14.f32[0] * *(v4 + 28));
  v14.f32[0] = *&v15 + (vmuls_lane_f32(*(v4 + 20), *v14.f32, 1) + (v14.f32[0] * *(v4 + 16)));
  *v19.f64 = *v16.i32 + *&v18;
  v14.f32[1] = *v16.i32 + *&v18;
  *v22.i64 = CI::BitmapSampler::read(*(v4 + 8), *v14.i64, v19, v15, v18, v17, v16, v20, v21);
  v212 = v22;
  *v22.f32 = vadd_f32(v5, 0x400000003F800000);
  LODWORD(v23) = *(v4 + 24);
  v24.i32[0] = *(v4 + 36);
  *v25.i32 = vmuls_lane_f32(*(v4 + 32), *v22.f32, 1);
  *&v26 = *v25.i32 + (v22.f32[0] * *(v4 + 28));
  v22.f32[0] = *&v23 + (vmuls_lane_f32(*(v4 + 20), *v22.f32, 1) + (v22.f32[0] * *(v4 + 16)));
  *v27.f64 = *v24.i32 + *&v26;
  v22.f32[1] = *v24.i32 + *&v26;
  *v30.i64 = CI::BitmapSampler::read(*(v4 + 8), *v22.i64, v27, v23, v26, v25, v24, v28, v29);
  v211 = v30;
  *v30.f32 = vadd_f32(v5, 0x3F800000C0000000);
  LODWORD(v31) = *(v4 + 24);
  v32.i32[0] = *(v4 + 36);
  *v33.i32 = vmuls_lane_f32(*(v4 + 32), *v30.f32, 1);
  *&v34 = *v33.i32 + (v30.f32[0] * *(v4 + 28));
  v30.f32[0] = *&v31 + (vmuls_lane_f32(*(v4 + 20), *v30.f32, 1) + (v30.f32[0] * *(v4 + 16)));
  *v35.f64 = *v32.i32 + *&v34;
  v30.f32[1] = *v32.i32 + *&v34;
  *v38.i64 = CI::BitmapSampler::read(*(v4 + 8), *v30.i64, v35, v31, v34, v33, v32, v36, v37);
  v210 = v38;
  __asm { FMOV            V9.2S, #-1.0 }

  *v38.f32 = vadd_f32(v5, COERCE_FLOAT32X2_T(-_D9));
  LODWORD(v44) = *(v4 + 24);
  v45.i32[0] = *(v4 + 36);
  *v46.i32 = vmuls_lane_f32(*(v4 + 32), *v38.f32, 1);
  *&v47 = *v46.i32 + (v38.f32[0] * *(v4 + 28));
  v38.f32[0] = *&v44 + (vmuls_lane_f32(*(v4 + 20), *v38.f32, 1) + (v38.f32[0] * *(v4 + 16)));
  *v48.f64 = *v45.i32 + *&v47;
  v38.f32[1] = *v45.i32 + *&v47;
  *v51.i64 = CI::BitmapSampler::read(*(v4 + 8), *v38.i64, v48, v44, v47, v46, v45, v49, v50);
  v209 = v51;
  *v51.f32 = vadd_f32(v5, 0x3F80000000000000);
  LODWORD(v52) = *(v4 + 24);
  v53.i32[0] = *(v4 + 36);
  *v54.i32 = vmuls_lane_f32(*(v4 + 32), *v51.f32, 1);
  *&v55 = *v54.i32 + (v51.f32[0] * *(v4 + 28));
  v51.f32[0] = *&v52 + (vmuls_lane_f32(*(v4 + 20), *v51.f32, 1) + (v51.f32[0] * *(v4 + 16)));
  *v56.f64 = *v53.i32 + *&v55;
  v51.f32[1] = *v53.i32 + *&v55;
  *v59.i64 = CI::BitmapSampler::read(*(v4 + 8), *v51.i64, v56, v52, v55, v54, v53, v57, v58);
  v208 = v59;
  __asm { FMOV            V10.2S, #1.0 }

  *v59.f32 = vadd_f32(v5, *&_D10);
  LODWORD(v61) = *(v4 + 24);
  v62.i32[0] = *(v4 + 36);
  *v63.i32 = vmuls_lane_f32(*(v4 + 32), *v59.f32, 1);
  *&v64 = *v63.i32 + (v59.f32[0] * *(v4 + 28));
  v59.f32[0] = *&v61 + (vmuls_lane_f32(*(v4 + 20), *v59.f32, 1) + (v59.f32[0] * *(v4 + 16)));
  *v65.f64 = *v62.i32 + *&v64;
  v59.f32[1] = *v62.i32 + *&v64;
  *v68.i64 = CI::BitmapSampler::read(*(v4 + 8), *v59.i64, v65, v61, v64, v63, v62, v66, v67);
  v207 = v68;
  *v68.f32 = vadd_f32(v5, 0x3F80000040000000);
  LODWORD(v69) = *(v4 + 24);
  v70.i32[0] = *(v4 + 36);
  *v71.i32 = vmuls_lane_f32(*(v4 + 32), *v68.f32, 1);
  *&v72 = *v71.i32 + (v68.f32[0] * *(v4 + 28));
  v68.f32[0] = *&v69 + (vmuls_lane_f32(*(v4 + 20), *v68.f32, 1) + (v68.f32[0] * *(v4 + 16)));
  *v73.f64 = *v70.i32 + *&v72;
  v68.f32[1] = *v70.i32 + *&v72;
  *v76.i64 = CI::BitmapSampler::read(*(v4 + 8), *v68.i64, v73, v69, v72, v71, v70, v74, v75);
  v206 = v76;
  *v76.f32 = vadd_f32(v5, 3221225472);
  LODWORD(v77) = *(v4 + 24);
  v78.i32[0] = *(v4 + 36);
  *v79.i32 = vmuls_lane_f32(*(v4 + 32), *v76.f32, 1);
  *&v80 = *v79.i32 + (v76.f32[0] * *(v4 + 28));
  v76.f32[0] = *&v77 + (vmuls_lane_f32(*(v4 + 20), *v76.f32, 1) + (v76.f32[0] * *(v4 + 16)));
  *v81.f64 = *v78.i32 + *&v80;
  v76.f32[1] = *v78.i32 + *&v80;
  *v84.i64 = CI::BitmapSampler::read(*(v4 + 8), *v76.i64, v81, v77, v80, v79, v78, v82, v83);
  v205 = v84;
  *v84.f32 = vadd_f32(v5, 3212836864);
  LODWORD(v85) = *(v4 + 24);
  v86.i32[0] = *(v4 + 36);
  *v87.i32 = vmuls_lane_f32(*(v4 + 32), *v84.f32, 1);
  *&v88 = *v87.i32 + (v84.f32[0] * *(v4 + 28));
  v84.f32[0] = *&v85 + (vmuls_lane_f32(*(v4 + 20), *v84.f32, 1) + (v84.f32[0] * *(v4 + 16)));
  *v89.f64 = *v86.i32 + *&v88;
  v84.f32[1] = *v86.i32 + *&v88;
  *v92.i64 = CI::BitmapSampler::read(*(v4 + 8), *v84.i64, v89, v85, v88, v87, v86, v90, v91);
  v204 = v92;
  *v92.f32 = vadd_f32(v5, 1065353216);
  LODWORD(v93) = *(v4 + 24);
  v94.i32[0] = *(v4 + 36);
  *v95.i32 = vmuls_lane_f32(*(v4 + 32), *v92.f32, 1);
  *&v96 = *v95.i32 + (v92.f32[0] * *(v4 + 28));
  v92.f32[0] = *&v93 + (vmuls_lane_f32(*(v4 + 20), *v92.f32, 1) + (v92.f32[0] * *(v4 + 16)));
  *v97.f64 = *v94.i32 + *&v96;
  v92.f32[1] = *v94.i32 + *&v96;
  *v100.i64 = CI::BitmapSampler::read(*(v4 + 8), *v92.i64, v97, v93, v96, v95, v94, v98, v99);
  v203 = v100;
  *v100.f32 = vadd_f32(v5, 0x40000000);
  LODWORD(v101) = *(v4 + 24);
  v102.i32[0] = *(v4 + 36);
  *v103.i32 = vmuls_lane_f32(*(v4 + 32), *v100.f32, 1);
  *&v104 = *v103.i32 + (v100.f32[0] * *(v4 + 28));
  v100.f32[0] = *&v101 + (vmuls_lane_f32(*(v4 + 20), *v100.f32, 1) + (v100.f32[0] * *(v4 + 16)));
  *v105.f64 = *v102.i32 + *&v104;
  v100.f32[1] = *v102.i32 + *&v104;
  *v108.i64 = CI::BitmapSampler::read(*(v4 + 8), *v100.i64, v105, v101, v104, v103, v102, v106, v107);
  v202 = v108;
  *v108.f32 = vadd_f32(v5, 0xBF800000C0000000);
  LODWORD(v109) = *(v4 + 24);
  v110.i32[0] = *(v4 + 36);
  *v111.i32 = vmuls_lane_f32(*(v4 + 32), *v108.f32, 1);
  *&v112 = *v111.i32 + (v108.f32[0] * *(v4 + 28));
  v108.f32[0] = *&v109 + (vmuls_lane_f32(*(v4 + 20), *v108.f32, 1) + (v108.f32[0] * *(v4 + 16)));
  *v113.f64 = *v110.i32 + *&v112;
  v108.f32[1] = *v110.i32 + *&v112;
  *v116.i64 = CI::BitmapSampler::read(*(v4 + 8), *v108.i64, v113, v109, v112, v111, v110, v114, v115);
  v201 = v116;
  *v116.f32 = vadd_f32(v5, *&_D9);
  LODWORD(v117) = *(v4 + 24);
  v118.i32[0] = *(v4 + 36);
  *v119.i32 = vmuls_lane_f32(*(v4 + 32), *v116.f32, 1);
  *&v120 = *v119.i32 + (v116.f32[0] * *(v4 + 28));
  v116.f32[0] = *&v117 + (vmuls_lane_f32(*(v4 + 20), *v116.f32, 1) + (v116.f32[0] * *(v4 + 16)));
  *v121.f64 = *v118.i32 + *&v120;
  v116.f32[1] = *v118.i32 + *&v120;
  *v124.i64 = CI::BitmapSampler::read(*(v4 + 8), *v116.i64, v121, v117, v120, v119, v118, v122, v123);
  v200 = v124;
  *v124.f32 = vadd_f32(v5, 0xBF80000000000000);
  LODWORD(v125) = *(v4 + 24);
  v126.i32[0] = *(v4 + 36);
  *v127.i32 = vmuls_lane_f32(*(v4 + 32), *v124.f32, 1);
  *&v128 = *v127.i32 + (v124.f32[0] * *(v4 + 28));
  v124.f32[0] = *&v125 + (vmuls_lane_f32(*(v4 + 20), *v124.f32, 1) + (v124.f32[0] * *(v4 + 16)));
  *v129.f64 = *v126.i32 + *&v128;
  v124.f32[1] = *v126.i32 + *&v128;
  *v132.i64 = CI::BitmapSampler::read(*(v4 + 8), *v124.i64, v129, v125, v128, v127, v126, v130, v131);
  v199 = v132;
  *v132.f32 = vadd_f32(v5, COERCE_FLOAT32X2_T(-_D10));
  LODWORD(v133) = *(v4 + 24);
  v134.i32[0] = *(v4 + 36);
  *v135.i32 = vmuls_lane_f32(*(v4 + 32), *v132.f32, 1);
  *&v136 = *v135.i32 + (v132.f32[0] * *(v4 + 28));
  v132.f32[0] = *&v133 + (vmuls_lane_f32(*(v4 + 20), *v132.f32, 1) + (v132.f32[0] * *(v4 + 16)));
  *v137.f64 = *v134.i32 + *&v136;
  v132.f32[1] = *v134.i32 + *&v136;
  *v140.i64 = CI::BitmapSampler::read(*(v4 + 8), *v132.i64, v137, v133, v136, v135, v134, v138, v139);
  v198 = v140;
  *v140.f32 = vadd_f32(v5, 0xBF80000040000000);
  LODWORD(v141) = *(v4 + 24);
  v142.i32[0] = *(v4 + 36);
  *v143.i32 = vmuls_lane_f32(*(v4 + 32), *v140.f32, 1);
  *&v144 = *v143.i32 + (v140.f32[0] * *(v4 + 28));
  v140.f32[0] = *&v141 + (vmuls_lane_f32(*(v4 + 20), *v140.f32, 1) + (v140.f32[0] * *(v4 + 16)));
  *v145.f64 = *v142.i32 + *&v144;
  v140.f32[1] = *v142.i32 + *&v144;
  *v148.i64 = CI::BitmapSampler::read(*(v4 + 8), *v140.i64, v145, v141, v144, v143, v142, v146, v147);
  v197 = v148;
  *v148.f32 = vadd_f32(v5, 0xC0000000BF800000);
  LODWORD(v149) = *(v4 + 24);
  v150.i32[0] = *(v4 + 36);
  *v151.i32 = vmuls_lane_f32(*(v4 + 32), *v148.f32, 1);
  *&v152 = *v151.i32 + (v148.f32[0] * *(v4 + 28));
  v148.f32[0] = *&v149 + (vmuls_lane_f32(*(v4 + 20), *v148.f32, 1) + (v148.f32[0] * *(v4 + 16)));
  *v153.f64 = *v150.i32 + *&v152;
  v148.f32[1] = *v150.i32 + *&v152;
  *v156.i64 = CI::BitmapSampler::read(*(v4 + 8), *v148.i64, v153, v149, v152, v151, v150, v154, v155);
  v196 = v156;
  *v156.f32 = vadd_f32(v5, 0xC0400000BF800000);
  LODWORD(v157) = *(v4 + 24);
  v158.i32[0] = *(v4 + 36);
  *v159.i32 = vmuls_lane_f32(*(v4 + 32), *v156.f32, 1);
  *&v160 = *v159.i32 + (v156.f32[0] * *(v4 + 28));
  v156.f32[0] = *&v157 + (vmuls_lane_f32(*(v4 + 20), *v156.f32, 1) + (v156.f32[0] * *(v4 + 16)));
  *v161.f64 = *v158.i32 + *&v160;
  v156.f32[1] = *v158.i32 + *&v160;
  *v164.i64 = CI::BitmapSampler::read(*(v4 + 8), *v156.i64, v161, v157, v160, v159, v158, v162, v163);
  v195 = v164;
  *v164.f32 = vadd_f32(v5, 0xC00000003F800000);
  LODWORD(v165) = *(v4 + 24);
  v166.i32[0] = *(v4 + 36);
  *v167.i32 = vmuls_lane_f32(*(v4 + 32), *v164.f32, 1);
  *&v168 = *v167.i32 + (v164.f32[0] * *(v4 + 28));
  v164.f32[0] = *&v165 + (vmuls_lane_f32(*(v4 + 20), *v164.f32, 1) + (v164.f32[0] * *(v4 + 16)));
  *v169.f64 = *v166.i32 + *&v168;
  v164.f32[1] = *v166.i32 + *&v168;
  *v172.i64 = CI::BitmapSampler::read(*(v4 + 8), *v164.i64, v169, v165, v168, v167, v166, v170, v171);
  v173 = vsubq_f32(v213, v172);
  v174 = vsubq_f32(v211, v196);
  v175 = vsubq_f32(v210, v197);
  v176 = vsubq_f32(v209, v198);
  v177 = vsubq_f32(v207, v200);
  v178 = vsubq_f32(v206, v201);
  v179 = vdupq_n_s32(0x3F0B7176u);
  v180 = vdupq_n_s32(0x3E34A234u);
  v181 = vdupq_n_s32(0x3C1374BCu);
  v182 = vdupq_n_s32(0x3D3645A2u);
  v183 = vdupq_n_s32(0x3C9374BCu);
  v184 = vaddq_f32(vmulq_f32(vsubq_f32(v178, v175), v183), vsubq_f32(vaddq_f32(vsubq_f32(vmulq_f32(vsubq_f32(v177, v176), v180), vmulq_f32(vsubq_f32(v204, v203), v179)), vmulq_f32(vsubq_f32(v174, v173), v181)), vmulq_f32(vsubq_f32(v205, v202), v182)));
  v185 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(vsubq_f32(v208, v199), v179), vmulq_f32(vaddq_f32(v177, v176), v180)), vmulq_f32(vaddq_f32(v178, v175), v181)), vmulq_f32(vsubq_f32(v212, v195), v182)), vmulq_f32(vaddq_f32(v174, v173), v183));
  v186 = vaddq_f32(vmulq_f32(v185, v185), vmulq_f32(v184, v184));
  v174.i64[1] = 0x3F80000000000000;
  v187.i64[1] = 0x3F80000000000000;
  v187.i64[0] = __PAIR64__(v185.u32[0], v184.u32[0]);
  v174.i64[0] = __PAIR64__(v185.u32[1], v184.u32[1]);
  v188 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v186.f32, 1), v186), 0), v174, v187);
  if (v186.f32[1] <= v186.f32[0])
  {
    v187.f32[0] = v186.f32[0];
  }

  else
  {
    v187.f32[0] = v186.f32[1];
  }

  v189 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v186, 2), v187), 0);
  v190.i64[1] = v188.i64[1];
  v190.i64[0] = __PAIR64__(v185.u32[2], v184.u32[2]);
  if (v186.f32[2] > v187.f32[0])
  {
    v187.f32[0] = v186.f32[2];
  }

  v191 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v186, 3), v187), 0);
  v192 = vbslq_s8(v189, v190, v188);
  v193.i64[1] = v192.i64[1];
  v193.i64[0] = __PAIR64__(v185.u32[3], v184.u32[3]);
  *&result = vbslq_s8(v191, v193, v192).u64[0];
  return result;
}

double CI::sw_sobel(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  v5 = *CI::getDC(a1);
  __asm { FMOV            V9.2S, #-1.0 }

  v11 = vadd_f32(v5, COERCE_FLOAT32X2_T(-_D9));
  LODWORD(v12) = *(v4 + 24);
  v13.i32[0] = *(v4 + 36);
  *v14.i32 = vmuls_lane_f32(*(v4 + 32), v11, 1);
  *&v15 = *v14.i32 + (v11.f32[0] * *(v4 + 28));
  v11.f32[0] = *&v12 + (vmuls_lane_f32(*(v4 + 20), v11, 1) + (v11.f32[0] * *(v4 + 16)));
  *v16.f64 = *v13.i32 + *&v15;
  v11.f32[1] = *v13.i32 + *&v15;
  *v19.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v11, v16, v12, v15, v14, v13, v17, v18);
  v95 = v19;
  *v19.f32 = vadd_f32(v5, 0x3F80000000000000);
  LODWORD(v20) = *(v4 + 24);
  v21.i32[0] = *(v4 + 36);
  *v22.i32 = vmuls_lane_f32(*(v4 + 32), *v19.f32, 1);
  *&v23 = *v22.i32 + (v19.f32[0] * *(v4 + 28));
  v19.f32[0] = *&v20 + (vmuls_lane_f32(*(v4 + 20), *v19.f32, 1) + (v19.f32[0] * *(v4 + 16)));
  *v24.f64 = *v21.i32 + *&v23;
  v19.f32[1] = *v21.i32 + *&v23;
  *v27.i64 = CI::BitmapSampler::read(*(v4 + 8), *v19.i64, v24, v20, v23, v22, v21, v25, v26);
  v94 = v27;
  __asm { FMOV            V10.2S, #1.0 }

  *v27.f32 = vadd_f32(v5, *&_D10);
  LODWORD(v29) = *(v4 + 24);
  v30.i32[0] = *(v4 + 36);
  *v31.i32 = vmuls_lane_f32(*(v4 + 32), *v27.f32, 1);
  *&v32 = *v31.i32 + (v27.f32[0] * *(v4 + 28));
  v27.f32[0] = *&v29 + (vmuls_lane_f32(*(v4 + 20), *v27.f32, 1) + (v27.f32[0] * *(v4 + 16)));
  *v33.f64 = *v30.i32 + *&v32;
  v27.f32[1] = *v30.i32 + *&v32;
  *v36.i64 = CI::BitmapSampler::read(*(v4 + 8), *v27.i64, v33, v29, v32, v31, v30, v34, v35);
  v93 = v36;
  *v36.f32 = vadd_f32(v5, 3212836864);
  LODWORD(v37) = *(v4 + 24);
  v38.i32[0] = *(v4 + 36);
  *v39.i32 = vmuls_lane_f32(*(v4 + 32), *v36.f32, 1);
  *&v40 = *v39.i32 + (v36.f32[0] * *(v4 + 28));
  v36.f32[0] = *&v37 + (vmuls_lane_f32(*(v4 + 20), *v36.f32, 1) + (v36.f32[0] * *(v4 + 16)));
  *v41.f64 = *v38.i32 + *&v40;
  v36.f32[1] = *v38.i32 + *&v40;
  *v44.i64 = CI::BitmapSampler::read(*(v4 + 8), *v36.i64, v41, v37, v40, v39, v38, v42, v43);
  v92 = v44;
  *v44.f32 = vadd_f32(v5, 1065353216);
  LODWORD(v45) = *(v4 + 24);
  v46.i32[0] = *(v4 + 36);
  *v47.i32 = vmuls_lane_f32(*(v4 + 32), *v44.f32, 1);
  *&v48 = *v47.i32 + (v44.f32[0] * *(v4 + 28));
  v44.f32[0] = *&v45 + (vmuls_lane_f32(*(v4 + 20), *v44.f32, 1) + (v44.f32[0] * *(v4 + 16)));
  *v49.f64 = *v46.i32 + *&v48;
  v44.f32[1] = *v46.i32 + *&v48;
  *v52.i64 = CI::BitmapSampler::read(*(v4 + 8), *v44.i64, v49, v45, v48, v47, v46, v50, v51);
  v91 = v52;
  *v52.f32 = vadd_f32(v5, *&_D9);
  LODWORD(v53) = *(v4 + 24);
  v54.i32[0] = *(v4 + 36);
  *v55.i32 = vmuls_lane_f32(*(v4 + 32), *v52.f32, 1);
  *&v56 = *v55.i32 + (v52.f32[0] * *(v4 + 28));
  v52.f32[0] = *&v53 + (vmuls_lane_f32(*(v4 + 20), *v52.f32, 1) + (v52.f32[0] * *(v4 + 16)));
  *v57.f64 = *v54.i32 + *&v56;
  v52.f32[1] = *v54.i32 + *&v56;
  *v60.i64 = CI::BitmapSampler::read(*(v4 + 8), *v52.i64, v57, v53, v56, v55, v54, v58, v59);
  v90 = v60;
  *v60.f32 = vadd_f32(v5, 0xBF80000000000000);
  LODWORD(v61) = *(v4 + 24);
  v62.i32[0] = *(v4 + 36);
  *v63.i32 = vmuls_lane_f32(*(v4 + 32), *v60.f32, 1);
  *&v64 = *v63.i32 + (v60.f32[0] * *(v4 + 28));
  v60.f32[0] = *&v61 + (vmuls_lane_f32(*(v4 + 20), *v60.f32, 1) + (v60.f32[0] * *(v4 + 16)));
  *v65.f64 = *v62.i32 + *&v64;
  v60.f32[1] = *v62.i32 + *&v64;
  *v68.i64 = CI::BitmapSampler::read(*(v4 + 8), *v60.i64, v65, v61, v64, v63, v62, v66, v67);
  v89 = v68;
  *v68.f32 = vadd_f32(v5, COERCE_FLOAT32X2_T(-_D10));
  LODWORD(v69) = *(v4 + 24);
  v70.i32[0] = *(v4 + 36);
  *v71.i32 = vmuls_lane_f32(*(v4 + 32), *v68.f32, 1);
  *&v72 = *v71.i32 + (v68.f32[0] * *(v4 + 28));
  v68.f32[0] = *&v69 + (vmuls_lane_f32(*(v4 + 20), *v68.f32, 1) + (v68.f32[0] * *(v4 + 16)));
  *v73.f64 = *v70.i32 + *&v72;
  v68.f32[1] = *v70.i32 + *&v72;
  *v76.i64 = CI::BitmapSampler::read(*(v4 + 8), *v68.i64, v73, v69, v72, v71, v70, v74, v75);
  v77 = vsubq_f32(vaddq_f32(vaddq_f32(v93, vaddq_f32(v91, v91)), v76), vaddq_f32(vaddq_f32(v95, vaddq_f32(v92, v92)), v90));
  v78 = vsubq_f32(vaddq_f32(vaddq_f32(v95, vaddq_f32(v94, v94)), v93), vaddq_f32(vaddq_f32(v90, vaddq_f32(v89, v89)), v76));
  v79 = vaddq_f32(vmulq_f32(v78, v78), vmulq_f32(v77, v77));
  v80.i64[1] = 0x3F80000000000000;
  v81.i64[1] = 0x3F80000000000000;
  v81.i64[0] = __PAIR64__(v78.u32[0], v77.u32[0]);
  v80.i64[0] = __PAIR64__(v78.u32[1], v77.u32[1]);
  v82 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v79.f32, 1), v79), 0), v80, v81);
  if (v79.f32[1] <= v79.f32[0])
  {
    v81.f32[0] = v79.f32[0];
  }

  else
  {
    v81.f32[0] = v79.f32[1];
  }

  v83 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v79, 2), v81), 0);
  v84.i64[1] = v82.i64[1];
  v84.i64[0] = __PAIR64__(v78.u32[2], v77.u32[2]);
  if (v79.f32[2] > v81.f32[0])
  {
    v81.f32[0] = v79.f32[2];
  }

  v85 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v79, 3), v81), 0);
  v86 = vbslq_s8(v83, v84, v82);
  v87.i64[1] = v86.i64[1];
  v87.i64[0] = __PAIR64__(v78.u32[3], v77.u32[3]);
  *&result = vbslq_s8(v85, v87, v86).u64[0];
  return result;
}

unint64_t CI::sw_sobel_m(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  v5 = *CI::getDC(a1);
  __asm { FMOV            V9.2S, #-1.0 }

  v11 = vadd_f32(v5, COERCE_FLOAT32X2_T(-_D9));
  LODWORD(v12) = *(v4 + 24);
  v13.i32[0] = *(v4 + 36);
  *v14.i32 = vmuls_lane_f32(*(v4 + 32), v11, 1);
  *&v15 = *v14.i32 + (v11.f32[0] * *(v4 + 28));
  v11.f32[0] = *&v12 + (vmuls_lane_f32(*(v4 + 20), v11, 1) + (v11.f32[0] * *(v4 + 16)));
  *v16.f64 = *v13.i32 + *&v15;
  v11.f32[1] = *v13.i32 + *&v15;
  *v19.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v11, v16, v12, v15, v14, v13, v17, v18);
  v94 = v19;
  *v19.f32 = vadd_f32(v5, 0x3F80000000000000);
  LODWORD(v20) = *(v4 + 24);
  v21.i32[0] = *(v4 + 36);
  *v22.i32 = vmuls_lane_f32(*(v4 + 32), *v19.f32, 1);
  *&v23 = *v22.i32 + (v19.f32[0] * *(v4 + 28));
  v19.f32[0] = *&v20 + (vmuls_lane_f32(*(v4 + 20), *v19.f32, 1) + (v19.f32[0] * *(v4 + 16)));
  *v24.f64 = *v21.i32 + *&v23;
  v19.f32[1] = *v21.i32 + *&v23;
  *v27.i64 = CI::BitmapSampler::read(*(v4 + 8), *v19.i64, v24, v20, v23, v22, v21, v25, v26);
  v93 = v27;
  __asm { FMOV            V10.2S, #1.0 }

  *v27.f32 = vadd_f32(v5, *&_D10);
  LODWORD(v29) = *(v4 + 24);
  v30.i32[0] = *(v4 + 36);
  *v31.i32 = vmuls_lane_f32(*(v4 + 32), *v27.f32, 1);
  *&v32 = *v31.i32 + (v27.f32[0] * *(v4 + 28));
  v27.f32[0] = *&v29 + (vmuls_lane_f32(*(v4 + 20), *v27.f32, 1) + (v27.f32[0] * *(v4 + 16)));
  *v33.f64 = *v30.i32 + *&v32;
  v27.f32[1] = *v30.i32 + *&v32;
  *v36.i64 = CI::BitmapSampler::read(*(v4 + 8), *v27.i64, v33, v29, v32, v31, v30, v34, v35);
  v92 = v36;
  *v36.f32 = vadd_f32(v5, 3212836864);
  LODWORD(v37) = *(v4 + 24);
  v38.i32[0] = *(v4 + 36);
  *v39.i32 = vmuls_lane_f32(*(v4 + 32), *v36.f32, 1);
  *&v40 = *v39.i32 + (v36.f32[0] * *(v4 + 28));
  v36.f32[0] = *&v37 + (vmuls_lane_f32(*(v4 + 20), *v36.f32, 1) + (v36.f32[0] * *(v4 + 16)));
  *v41.f64 = *v38.i32 + *&v40;
  v36.f32[1] = *v38.i32 + *&v40;
  *v44.i64 = CI::BitmapSampler::read(*(v4 + 8), *v36.i64, v41, v37, v40, v39, v38, v42, v43);
  v91 = v44;
  *v44.f32 = vadd_f32(v5, 1065353216);
  LODWORD(v45) = *(v4 + 24);
  v46.i32[0] = *(v4 + 36);
  *v47.i32 = vmuls_lane_f32(*(v4 + 32), *v44.f32, 1);
  *&v48 = *v47.i32 + (v44.f32[0] * *(v4 + 28));
  v44.f32[0] = *&v45 + (vmuls_lane_f32(*(v4 + 20), *v44.f32, 1) + (v44.f32[0] * *(v4 + 16)));
  *v49.f64 = *v46.i32 + *&v48;
  v44.f32[1] = *v46.i32 + *&v48;
  *v52.i64 = CI::BitmapSampler::read(*(v4 + 8), *v44.i64, v49, v45, v48, v47, v46, v50, v51);
  v90 = v52;
  *v52.f32 = vadd_f32(v5, *&_D9);
  LODWORD(v53) = *(v4 + 24);
  v54.i32[0] = *(v4 + 36);
  *v55.i32 = vmuls_lane_f32(*(v4 + 32), *v52.f32, 1);
  *&v56 = *v55.i32 + (v52.f32[0] * *(v4 + 28));
  v52.f32[0] = *&v53 + (vmuls_lane_f32(*(v4 + 20), *v52.f32, 1) + (v52.f32[0] * *(v4 + 16)));
  *v57.f64 = *v54.i32 + *&v56;
  v52.f32[1] = *v54.i32 + *&v56;
  *v60.i64 = CI::BitmapSampler::read(*(v4 + 8), *v52.i64, v57, v53, v56, v55, v54, v58, v59);
  v89 = v60;
  *v60.f32 = vadd_f32(v5, 0xBF80000000000000);
  LODWORD(v61) = *(v4 + 24);
  v62.i32[0] = *(v4 + 36);
  *v63.i32 = vmuls_lane_f32(*(v4 + 32), *v60.f32, 1);
  *&v64 = *v63.i32 + (v60.f32[0] * *(v4 + 28));
  v60.f32[0] = *&v61 + (vmuls_lane_f32(*(v4 + 20), *v60.f32, 1) + (v60.f32[0] * *(v4 + 16)));
  *v65.f64 = *v62.i32 + *&v64;
  v60.f32[1] = *v62.i32 + *&v64;
  *v68.i64 = CI::BitmapSampler::read(*(v4 + 8), *v60.i64, v65, v61, v64, v63, v62, v66, v67);
  v88 = v68;
  *v68.f32 = vadd_f32(v5, COERCE_FLOAT32X2_T(-_D10));
  LODWORD(v69) = *(v4 + 24);
  v70.i32[0] = *(v4 + 36);
  *v71.i32 = vmuls_lane_f32(*(v4 + 32), *v68.f32, 1);
  *&v72 = *v71.i32 + (v68.f32[0] * *(v4 + 28));
  v68.f32[0] = *&v69 + (vmuls_lane_f32(*(v4 + 20), *v68.f32, 1) + (v68.f32[0] * *(v4 + 16)));
  *v73.f64 = *v70.i32 + *&v72;
  v68.f32[1] = *v70.i32 + *&v72;
  *v76.i64 = CI::BitmapSampler::read(*(v4 + 8), *v68.i64, v73, v69, v72, v71, v70, v74, v75);
  v77 = vsubq_f32(vaddq_f32(vaddq_f32(v92, vaddq_f32(v90, v90)), v76), vaddq_f32(vaddq_f32(v94, vaddq_f32(v91, v91)), v89));
  v78 = vsubq_f32(vaddq_f32(vaddq_f32(v94, vaddq_f32(v93, v93)), v92), vaddq_f32(vaddq_f32(v89, vaddq_f32(v88, v88)), v76));
  v79 = vaddq_f32(vmulq_f32(v78, v78), vmulq_f32(v77, v77));
  v80.i64[1] = 0x3F80000000000000;
  v81.i64[1] = 0x3F80000000000000;
  v81.i64[0] = __PAIR64__(v78.u32[0], v77.u32[0]);
  v80.i64[0] = __PAIR64__(v78.u32[1], v77.u32[1]);
  v82 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v79.f32, 1), v79), 0), v80, v81);
  if (v79.f32[1] <= v79.f32[0])
  {
    v81.f32[0] = v79.f32[0];
  }

  else
  {
    v81.f32[0] = v79.f32[1];
  }

  v83 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v79, 2), v81), 0);
  v84.i64[1] = v82.i64[1];
  v84.i64[0] = __PAIR64__(v78.u32[2], v77.u32[2]);
  if (v79.f32[2] > v81.f32[0])
  {
    v81.f32[0] = v79.f32[2];
  }

  v85 = vbslq_s8(v83, v84, v82);
  v86.i64[1] = v85.i64[1];
  v86.i64[0] = __PAIR64__(v78.u32[3], v77.u32[3]);
  return vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v79, 3), v81), 0), v86, v85).u64[0];
}

unint64_t CI::sw_maxGradOnly(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  v6 = *DC;
  v7 = CI::getDC(DC);
  LODWORD(v8) = *(v4 + 24);
  v9.i32[0] = *(v4 + 36);
  *v10.i32 = vmuls_lane_f32(*(v4 + 32), *v7, 1);
  *&v11 = *v10.i32 + (COERCE_FLOAT(*v7) * *(v4 + 28));
  *&v12 = *&v8 + (vmuls_lane_f32(*(v4 + 20), *v7, 1) + (COERCE_FLOAT(*v7) * *(v4 + 16)));
  *v13.f64 = *v9.i32 + *&v11;
  *(&v12 + 1) = *v9.i32 + *&v11;
  *v16.i64 = CI::BitmapSampler::read(*(v4 + 8), v12, v13, v8, v11, v10, v9, v14, v15);
  if (v16.f32[2] < 0.0001)
  {
    return 0;
  }

  v21 = vmulq_f32(v16, v16);
  *&v21.f64[0] = COERCE_UNSIGNED_INT(vaddv_f32(*&v21.f64[0]));
  v22 = vrsqrte_f32(*&v21.f64[0]);
  v23 = v16;
  v38 = v16;
  v24 = vmul_f32(v22, v22);
  *&v21.f64[0] = vrsqrts_f32(LODWORD(v21.f64[0]), v24);
  v25 = vmul_n_f32(*v16.f32, vmul_f32(v22, *&v21.f64[0]).f32[0]);
  v26 = vadd_f32(v6, v25);
  v24.i32[0] = *(v4 + 24);
  v17.i32[0] = *(v4 + 36);
  *v23.i32 = vmuls_lane_f32(*(v4 + 32), v26, 1);
  v22.f32[0] = *v23.i32 + (v26.f32[0] * *(v4 + 28));
  v26.f32[0] = v24.f32[0] + (vmuls_lane_f32(*(v4 + 20), v26, 1) + (v26.f32[0] * *(v4 + 16)));
  *v21.f64 = *v17.i32 + v22.f32[0];
  v26.f32[1] = *v17.i32 + v22.f32[0];
  *v27.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v26, v21, *&v24, *&v22, v23, v17, v18, v19);
  v37 = v27;
  *v27.f32 = vsub_f32(v6, v25);
  LODWORD(v28) = *(v4 + 24);
  v29.i32[0] = *(v4 + 36);
  *v30.i32 = vmuls_lane_f32(*(v4 + 32), *v27.f32, 1);
  *&v31 = *v30.i32 + (v27.f32[0] * *(v4 + 28));
  v27.f32[0] = *&v28 + (vmuls_lane_f32(*(v4 + 20), *v27.f32, 1) + (v27.f32[0] * *(v4 + 16)));
  *v32.f64 = *v29.i32 + *&v31;
  v27.f32[1] = *v29.i32 + *&v31;
  *v35.i64 = CI::BitmapSampler::read(*(v4 + 8), *v27.i64, v32, v28, v31, v30, v29, v33, v34);
  if (vmovn_s32(vcgtq_f32(v38, v37)).u16[2] & vmovn_s32(vcgtq_f32(v38, v35)).u16[2])
  {
    v36 = -1;
  }

  else
  {
    v36 = 0;
  }

  return vbslq_s8(vdupq_n_s32(v36), v38, xmmword_19CF22690).u64[0];
}

double CI::sw_cannyThreshold(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 8);
  v8 = a3 + 16 * v7;
  v9 = a2 + (v7 << 6);
  if (*(v6 + 16) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  a5.i32[0] = *(a2 + (*(v6 + 56) << 6));
  a6.i32[0] = *(v10 + 8);
  a4.f32[0] = *(a2 + (*(v6 + 32) << 6)) * *(a2 + (*(v6 + 32) << 6));
  a5.f32[0] = a5.f32[0] * a5.f32[0];
  a4.i64[0] = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(a6, a4)), 0), vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(a6, a5)), 0), xmmword_19CF22690, xmmword_19CF26510), xmmword_19CF26520).u64[0];
  return *a4.i64;
}

unint64_t CI::sw_cannyHysteresis(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  LODWORD(v6) = *(v4 + 24);
  v7.i32[0] = *(v4 + 36);
  *v8.i32 = vmuls_lane_f32(*(v4 + 32), *DC, 1);
  *&v9 = *v8.i32 + (COERCE_FLOAT(*DC) * *(v4 + 28));
  *&v10 = *&v6 + (vmuls_lane_f32(*(v4 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v4 + 16)));
  *v11.f64 = *v7.i32 + *&v9;
  *(&v10 + 1) = *v7.i32 + *&v9;
  v15 = CI::BitmapSampler::read(*(v4 + 8), v10, v11, v6, v9, v8, v7, v12, v13);
  v16 = *&v15;
  v17.f64[0] = 0.9;
  if (v16 >= 0.9)
  {
    return 1065353216;
  }

  if (v16 > 0.4)
  {
    v97 = v17;
    v18 = *CI::getDC(v14);
    v19 = vadd_f32(v18, 1065353216);
    LODWORD(v20) = *(v4 + 24);
    v21.i32[0] = *(v4 + 36);
    *v22.i32 = vmuls_lane_f32(*(v4 + 32), v19, 1);
    *&v23 = *v22.i32 + (v19.f32[0] * *(v4 + 28));
    v19.f32[0] = *&v20 + (vmuls_lane_f32(*(v4 + 20), v19, 1) + (v19.f32[0] * *(v4 + 16)));
    *v24.f64 = *v21.i32 + *&v23;
    v19.f32[1] = *v21.i32 + *&v23;
    v27 = CI::BitmapSampler::read(*(v4 + 8), *&v19, v24, v20, v23, v22, v21, v25, v26);
    v34 = v97;
    if (*&v27 < v97.f64[0])
    {
      v35 = vadd_f32(v18, 3212836864);
      LODWORD(v28) = *(v4 + 24);
      v31.i32[0] = *(v4 + 36);
      *v30.i32 = vmuls_lane_f32(*(v4 + 32), v35, 1);
      *&v29 = *v30.i32 + (v35.f32[0] * *(v4 + 28));
      v35.f32[0] = *&v28 + (vmuls_lane_f32(*(v4 + 20), v35, 1) + (v35.f32[0] * *(v4 + 16)));
      *v34.f64 = *v31.i32 + *&v29;
      v35.f32[1] = *v31.i32 + *&v29;
      v36 = CI::BitmapSampler::read(*(v4 + 8), *&v35, v34, v28, v29, v30, v31, v32, v33);
      v43 = v97;
      if (*&v36 < v97.f64[0])
      {
        v44 = vadd_f32(v18, 0x3F80000000000000);
        LODWORD(v37) = *(v4 + 24);
        v40.i32[0] = *(v4 + 36);
        *v39.i32 = vmuls_lane_f32(*(v4 + 32), v44, 1);
        *&v38 = *v39.i32 + (v44.f32[0] * *(v4 + 28));
        v44.f32[0] = *&v37 + (vmuls_lane_f32(*(v4 + 20), v44, 1) + (v44.f32[0] * *(v4 + 16)));
        *v43.f64 = *v40.i32 + *&v38;
        v44.f32[1] = *v40.i32 + *&v38;
        v45 = CI::BitmapSampler::read(*(v4 + 8), *&v44, v43, v37, v38, v39, v40, v41, v42);
        v52 = v97;
        if (*&v45 < v97.f64[0])
        {
          v53 = vadd_f32(v18, 0xBF80000000000000);
          LODWORD(v46) = *(v4 + 24);
          v49.i32[0] = *(v4 + 36);
          *v48.i32 = vmuls_lane_f32(*(v4 + 32), v53, 1);
          *&v47 = *v48.i32 + (v53.f32[0] * *(v4 + 28));
          v53.f32[0] = *&v46 + (vmuls_lane_f32(*(v4 + 20), v53, 1) + (v53.f32[0] * *(v4 + 16)));
          *v52.f64 = *v49.i32 + *&v47;
          v53.f32[1] = *v49.i32 + *&v47;
          v54 = CI::BitmapSampler::read(*(v4 + 8), *&v53, v52, v46, v47, v48, v49, v50, v51);
          v61 = v97;
          if (*&v54 < v97.f64[0])
          {
            __asm { FMOV            V0.2S, #-1.0 }

            *v57.i8 = vadd_f32(v18, *&_D0);
            LODWORD(v55) = *(v4 + 28);
            *&_D0 = *(v4 + 24) + (vmuls_lane_f32(*(v4 + 20), *v57.i8, 1) + (*v57.i32 * *(v4 + 16)));
            LODWORD(v56) = *(v4 + 36);
            v96 = v57;
            *v61.f64 = *&v56 + (vmuls_lane_f32(*(v4 + 32), *v57.i8, 1) + (*v57.i32 * *&v55));
            HIDWORD(_D0) = LODWORD(v61.f64[0]);
            v67 = CI::BitmapSampler::read(*(v4 + 8), _D0, v61, v55, v56, v57, v58, v59, v60);
            v74 = v97;
            if (*&v67 < v97.f64[0])
            {
              __asm { FMOV            V0.2S, #1.0 }

              *v70.i8 = vadd_f32(v18, COERCE_FLOAT32X2_T(-_D0));
              LODWORD(v68) = *(v4 + 28);
              *&_D0 = *(v4 + 24) + (vmuls_lane_f32(*(v4 + 20), *v70.i8, 1) + (*v70.i32 * *(v4 + 16)));
              LODWORD(v69) = *(v4 + 36);
              v95 = v70;
              *v74.f64 = *&v69 + (vmuls_lane_f32(*(v4 + 32), *v70.i8, 1) + (*v70.i32 * *&v68));
              HIDWORD(_D0) = LODWORD(v74.f64[0]);
              v76 = CI::BitmapSampler::read(*(v4 + 8), _D0, v74, v68, v69, v70, v71, v72, v73);
              v82 = v97;
              if (*&v76 < v97.f64[0])
              {
                LODWORD(v78) = *(v4 + 28);
                *&v83 = *(v4 + 24) + ((*&v96.i32[1] * *(v4 + 20)) + (*v96.i32 * *(v4 + 16)));
                LODWORD(v77) = *(v4 + 32);
                v79.i32[0] = *(v4 + 36);
                *v82.f64 = *v79.i32 + ((*&v96.i32[1] * *&v77) + (*v96.i32 * *&v78));
                *(&v83 + 1) = *v82.f64;
                v84 = CI::BitmapSampler::read(*(v4 + 8), v83, v82, v77, v78, v79, v96, v80, v81);
                HIDWORD(v90) = HIDWORD(v97.f64[0]);
                if (*&v84 < v97.f64[0])
                {
                  LODWORD(v86) = *(v4 + 28);
                  *&v91 = *(v4 + 24) + ((*&v95.i32[1] * *(v4 + 20)) + (*v95.i32 * *(v4 + 16)));
                  LODWORD(v90) = *(v4 + 32);
                  v87.i32[0] = *(v4 + 36);
                  *v85.f64 = *v87.i32 + ((*&v95.i32[1] * *&v90) + (*v95.i32 * *&v86));
                  *(&v91 + 1) = *v85.f64;
                  v92 = CI::BitmapSampler::read(*(v4 + 8), v91, v85, v90, v86, v87, v95, v88, v89);
                  v93.f64[0] = *&v92;
                  return vbslq_s8(vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v93, v97)).i64[0], 0), xmmword_19CF26510, xmmword_19CF26520).u64[0];
                }
              }
            }
          }
        }
      }
    }

    return 1065353216;
  }

  return 0;
}

float64_t CI::sw_cannyFinal(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t a4, float64x2_t a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(v5 + 8);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  a4.f64[0] = *v9;
  a5.f64[0] = 0.9;
  __asm { FMOV            V2.4S, #1.0 }

  *&a4.f64[0] = vbslq_s8(vdupq_lane_s64(vmvnq_s8(vcgeq_f64(a4, a5)).i64[0], 0), xmmword_19CF22690, _Q2).u64[0];
  return a4.f64[0];
}

uint64_t CI_ENABLE_METAL_FUNCTION_ATTRIBUTES()
{
  {
    CI_ENABLE_METAL_FUNCTION_ATTRIBUTES::v = get_BOOL("CI_ENABLE_METAL_FUNCTION_ATTRIBUTES", 1);
  }

  return CI_ENABLE_METAL_FUNCTION_ATTRIBUTES::v;
}

uint64_t get_BOOL(const char *a1, uint64_t a2)
{
  v4 = getenv(a1);
  if (v4)
  {
    v5 = atoi(v4);
    if (v5 <= 1)
    {
      return v5 != 0;
    }

    return a2;
  }

  if (userDefaults(void)::didCheck != -1)
  {
    get_BOOL();
  }

  v6 = [userDefaults(void)::defaults objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return a2;
    }
  }

  return [v6 BOOLValue];
}

uint64_t CI_ENABLE_SUBDIVIDE_ROI()
{
  {
    CI_ENABLE_SUBDIVIDE_ROI::v = get_BOOL("CI_ENABLE_SUBDIVIDE_ROI", 1);
  }

  return CI_ENABLE_SUBDIVIDE_ROI::v;
}

uint64_t CI_MAX_TEXTURE_SIZE()
{
  {
    CI_MAX_TEXTURE_SIZE::v = get_int("CI_MAX_TEXTURE_SIZE", 0x7FFFFFFFLL);
  }

  return CI_MAX_TEXTURE_SIZE::v;
}

uint64_t get_int(const char *a1, uint64_t a2)
{
  v4 = getenv(a1);
  if (v4)
  {

    return atoi(v4);
  }

  else
  {
    if (userDefaults(void)::didCheck != -1)
    {
      get_BOOL();
    }

    v6 = [userDefaults(void)::defaults objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {

      return [v6 intValue];
    }

    else
    {
      return a2;
    }
  }
}

uint64_t CI_IOSURFACE_WRAPPING(unsigned int a1)
{
  {
    CI_IOSURFACE_WRAPPING::v = get_int("CI_IOSURFACE_WRAPPING", 3);
  }

  return CI_IOSURFACE_WRAPPING::v & a1;
}

uint64_t CI_IOSURFACE_INTERMEDIATES()
{
  {
    CI_IOSURFACE_INTERMEDIATES::v = get_BOOL("CI_IOSURFACE_INTERMEDIATES", 1);
  }

  return CI_IOSURFACE_INTERMEDIATES::v;
}

uint64_t CI_LOSSLESS_COMPRESSED_INTERMEDIATES()
{
  {
    CI_LOSSLESS_COMPRESSED_INTERMEDIATES::v = get_BOOL("CI_LOSSLESS_COMPRESSED_INTERMEDIATES", 1);
  }

  return CI_LOSSLESS_COMPRESSED_INTERMEDIATES::v;
}

uint64_t CI_LOSSY_COMPRESSED_INTERMEDIATES()
{
  {
    CI_LOSSY_COMPRESSED_INTERMEDIATES::v = get_BOOL("CI_LOSSY_COMPRESSED_INTERMEDIATES", 1);
  }

  return CI_LOSSY_COMPRESSED_INTERMEDIATES::v;
}

uint64_t CI_LOG_FILE()
{
  if (CI_LOG_FILE::didCheck != -1)
  {
    CI_LOG_FILE_cold_1();
  }

  return CI_LOG_FILE::fp;
}

char *get_string(const char *a1)
{
  result = getenv(a1);
  if (!result)
  {
    if (userDefaults(void)::didCheck != -1)
    {
      get_BOOL();
    }

    result = [userDefaults(void)::defaults objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
    if (result)
    {
      v3 = result;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        return [v3 UTF8String];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t memstream_write(char *a1, const char *__src, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (__src[v5] && __src[v5] != 10)
    {
      if (a3 == ++v5)
      {
        v5 = a3;
        break;
      }
    }
  }

  v7 = __src[v5];
  if (v7 == 10 || v7 == 0)
  {
    if (v5)
    {
      v9 = ci_logger_general();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *a1;
        v16 = 68158466;
        v17 = v10;
        v18 = 2080;
        v19 = a1 + 4;
        v20 = 1040;
        v21 = v5;
        v22 = 2080;
        v23 = __src;
        _os_log_impl(&dword_19CC36000, v9, OS_LOG_TYPE_DEFAULT, "%.*s%.*s", &v16, 0x22u);
      }
    }

    *a1 = 0;
    return (v5 + 1);
  }

  else
  {
    v12 = *a1;
    if (v12 + v5 < 1025)
    {
      memcpy(&a1[v12 + 4], __src, v5);
      *a1 += v5;
    }

    else
    {
      if (v12)
      {
        v13 = ci_logger_general();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *a1;
          v16 = 68157954;
          v17 = v14;
          v18 = 2080;
          v19 = a1 + 4;
          _os_log_impl(&dword_19CC36000, v13, OS_LOG_TYPE_DEFAULT, "%.*s...", &v16, 0x12u);
        }
      }

      if (v5)
      {
        v15 = ci_logger_general();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 68157954;
          v17 = v5;
          v18 = 2080;
          v19 = __src;
          _os_log_impl(&dword_19CC36000, v15, OS_LOG_TYPE_DEFAULT, "...%.*s...", &v16, 0x12u);
        }
      }

      *a1 = 0;
    }
  }

  return v5;
}

char *CI_TEMP_DIR()
{
  if (CI_DOCS_DIR::onceToken != -1)
  {
    CI_TEMP_DIR_cold_1();
  }

  result = &CI_DOCS_DIR::directory;
  if (!CI_DOCS_DIR::directory)
  {
    if (CI_TEMP_DIR::onceToken != -1)
    {
      CI_TEMP_DIR_cold_2();
    }

    return &CI_TEMP_DIR::temporaryDirectory;
  }

  return result;
}

uint64_t CI_PRINT_TIME()
{
  if (CI_PRINT_TIME::didCheck != -1)
  {
    CI_PRINT_TIME_cold_1();
  }

  return CI_PRINT_TIME::v;
}

char *CI_PRINT_TIME_has_string(const char *a1)
{
  string = get_string("CI_PRINT_TIME");
  if (!a1 || !string)
  {
    return 0;
  }

  return strstr(string, a1);
}

BOOL CI_PRINT_TIME_context(int a1, char *__s2)
{
  if (CI_PRINT_TIME_context::didCheck != -1)
  {
    CI_PRINT_TIME_context_cold_1();
  }

  if (CI_PRINT_TIME_context::equal == 1)
  {
    if (CI_PRINT_TIME_context::name)
    {
      return strcmp(&CI_PRINT_TIME_context::name, __s2) == 0;
    }

    else
    {
      return CI_PRINT_TIME_context::v == a1;
    }
  }

  else if (CI_PRINT_TIME_context::nequal == 1)
  {
    if (CI_PRINT_TIME_context::name)
    {
      v5 = strcmp(&CI_PRINT_TIME_context::name, __s2) == 0;
    }

    else
    {
      v5 = CI_PRINT_TIME_context::v == a1;
    }

    return !v5;
  }

  else
  {
    return 1;
  }
}

uint64_t CI_PRINT_TREE()
{
  if (CI_PRINT_TREE::didCheck != -1)
  {
    CI_PRINT_TREE_cold_1();
  }

  return CI_PRINT_TREE::v;
}

char *CI_PRINT_TREE_has_string(char *a1)
{
  string = get_string("CI_PRINT_TREE");
  result = 0;
  if (a1)
  {
    if (string)
    {
      result = strstr(string, a1);
      if (result)
      {
        if (result != a1 && *(result - 1) != 32)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t CI_PRINT_TREE_frame()
{
  if (CI_PRINT_TREE_frame::didCheck != -1)
  {
    CI_PRINT_TREE_frame_cold_1();
  }

  return CI_PRINT_TREE_frame::v;
}

uint64_t CI_PRINT_TREE_graphviz()
{
  if (CI_PRINT_TREE_graphviz::didCheck != -1)
  {
    CI_PRINT_TREE_graphviz_cold_1();
  }

  return CI_PRINT_TREE_graphviz::v;
}

uint64_t CI_PRINT_TREE_dump_rois()
{
  {
    CI_PRINT_TREE_dump_rois::v = CI_PRINT_TREE_has_string("dump-rois") != 0;
  }

  return CI_PRINT_TREE_dump_rois::v;
}

uint64_t CI_PRINT_TREE_dump_inputs()
{
  {
    CI_PRINT_TREE_dump_inputs::v = CI_PRINT_TREE_has_string("dump-inputs") != 0;
  }

  return CI_PRINT_TREE_dump_inputs::v;
}

uint64_t CI_PRINT_TREE_dump_outputs()
{
  {
    CI_PRINT_TREE_dump_outputs::v = CI_PRINT_TREE_has_string("dump-outputs") != 0;
  }

  return CI_PRINT_TREE_dump_outputs::v;
}

uint64_t CI_PRINT_TREE_dump_intermediates()
{
  {
    CI_PRINT_TREE_dump_intermediates::v = CI_PRINT_TREE_has_string("dump-intermediates") != 0;
  }

  return CI_PRINT_TREE_dump_intermediates::v;
}

uint64_t CI_PRINT_TREE_dump_raw_intermediates()
{
  {
    CI_PRINT_TREE_dump_raw_intermediates::v = CI_PRINT_TREE_has_string("dump-raw-intermediates") != 0;
  }

  return CI_PRINT_TREE_dump_raw_intermediates::v;
}

uint64_t CI_PRINT_TREE_dump_bmtl_intermediates()
{
  {
    CI_PRINT_TREE_dump_bmtl_intermediates::v = CI_PRINT_TREE_has_string("dump-bmtl-intermediates") != 0;
  }

  return CI_PRINT_TREE_dump_bmtl_intermediates::v;
}

uint64_t CI_PRINT_TREE_dump_timing()
{
  {
    CI_PRINT_TREE_dump_timing::v = CI_PRINT_TREE_has_string("dump-timing") != 0;
  }

  return CI_PRINT_TREE_dump_timing::v;
}

BOOL CI_PRINT_TREE_context(int a1, char *__s2)
{
  if (CI_PRINT_TREE_context::didCheck != -1)
  {
    CI_PRINT_TREE_context_cold_1();
  }

  if (CI_PRINT_TREE_context::equal == 1)
  {
    if (CI_PRINT_TREE_context::name)
    {
      return strcmp(&CI_PRINT_TREE_context::name, __s2) == 0;
    }

    else
    {
      return CI_PRINT_TREE_context::v == a1;
    }
  }

  else if (CI_PRINT_TREE_context::nequal == 1)
  {
    if (CI_PRINT_TREE_context::name)
    {
      v5 = strcmp(&CI_PRINT_TREE_context::name, __s2) == 0;
    }

    else
    {
      v5 = CI_PRINT_TREE_context::v == a1;
    }

    return !v5;
  }

  else
  {
    return 1;
  }
}

uint64_t CI_PRINT_PROGRAM()
{
  if (CI_PRINT_PROGRAM::didCheck != -1)
  {
    CI_PRINT_PROGRAM_cold_1();
  }

  return CI_PRINT_PROGRAM::v;
}

BOOL CI_PRINT_PROGRAM_context(int a1, char *__s2)
{
  if (CI_PRINT_PROGRAM_context::didCheck != -1)
  {
    CI_PRINT_PROGRAM_context_cold_1();
  }

  if (CI_PRINT_PROGRAM_context::equal == 1)
  {
    if (CI_PRINT_PROGRAM_context::name)
    {
      return strcmp(&CI_PRINT_PROGRAM_context::name, __s2) == 0;
    }

    else
    {
      return CI_PRINT_PROGRAM_context::v == a1;
    }
  }

  else if (CI_PRINT_PROGRAM_context::nequal == 1)
  {
    if (CI_PRINT_PROGRAM_context::name)
    {
      v5 = strcmp(&CI_PRINT_PROGRAM_context::name, __s2) == 0;
    }

    else
    {
      v5 = CI_PRINT_PROGRAM_context::v == a1;
    }

    return !v5;
  }

  else
  {
    return 1;
  }
}

uint64_t CI_CACHE_TILE_SIZE()
{
  {
    CI_CACHE_TILE_SIZE::v = get_int("CI_CACHE_TILE_SIZE", 1024);
  }

  return CI_CACHE_TILE_SIZE::v;
}

uint64_t CI_MAX_CPU_RENDER_SIZE()
{
  {
    CI_MAX_CPU_RENDER_SIZE::v = get_int("CI_MAX_CPU_RENDER_SIZE", 512);
  }

  return CI_MAX_CPU_RENDER_SIZE::v;
}

uint64_t get_Y_or_N(const char *a1)
{
  v2 = getenv(a1);
  if (!v2)
  {
    if (userDefaults(void)::didCheck != -1)
    {
      get_BOOL();
    }

    v6 = [userDefaults(void)::defaults objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 intValue] == 1)
      {
        return 89;
      }

      if (![v6 intValue])
      {
        return 78;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 isEqual:@"Y"] & 1) != 0 || (objc_msgSend(v6, "isEqual:", @"y"))
      {
        return 89;
      }

      if ([v6 isEqual:@"N"] & 1) != 0 || (objc_msgSend(v6, "isEqual:", @"n"))
      {
        return 78;
      }
    }

    return 0;
  }

  v3 = *v2;
  result = 89;
  v5 = v3 - 48;
  if ((v3 - 48) > 0x3E)
  {
    goto LABEL_15;
  }

  if (((1 << v5) & 0x4000000040000001) != 0)
  {
    return 78;
  }

  if (((1 << v5) & 0x20000000002) == 0)
  {
LABEL_15:
    if (v3 != 121)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CI_NO_CM()
{
  {
    CI_NO_CM::v = get_BOOL("CI_NO_CM", 0);
  }

  return CI_NO_CM::v;
}

uint64_t CI_FORCE_IS_BACKGROUND()
{
  {
    CI_FORCE_IS_BACKGROUND::v = get_Y_or_N("CI_FORCE_IS_BACKGROUND");
  }

  return CI_FORCE_IS_BACKGROUND::v;
}

uint64_t CI_FORCE_GPU_PRIORITY()
{
  if (CI_FORCE_GPU_PRIORITY::didCheck != -1)
  {
    CI_FORCE_GPU_PRIORITY_cold_1();
  }

  return CI_FORCE_GPU_PRIORITY::v;
}

uint64_t CI_INPUT_CACHE_SIZE()
{
  {
    CI_INPUT_CACHE_SIZE::v = get_int("CI_INPUT_CACHE_SIZE", 4);
  }

  return CI_INPUT_CACHE_SIZE::v;
}

uint64_t CI_ENABLE_KERNEL_CACHE()
{
  {
    CI_ENABLE_KERNEL_CACHE::v = get_BOOL("CI_ENABLE_KERNEL_CACHE", 1);
  }

  return CI_ENABLE_KERNEL_CACHE::v;
}

uint64_t CI_ENABLE_HALF_KERNELS()
{
  {
    CI_ENABLE_HALF_KERNELS::v = get_BOOL("CI_ENABLE_HALF_KERNELS", 1);
  }

  return CI_ENABLE_HALF_KERNELS::v;
}

uint64_t CI_ASYNC_KERNEL_COMPILE()
{
  {
    CI_ASYNC_KERNEL_COMPILE::v = get_int("CI_ASYNC_KERNEL_COMPILE", 2);
  }

  return CI_ASYNC_KERNEL_COMPILE::v;
}

uint64_t CI_INTERMEDIATE_CACHE_SIZE()
{
  {
    CI_INTERMEDIATE_CACHE_SIZE::v = get_ulong("CI_INTERMEDIATE_CACHE_SIZE", 256);
  }

  return CI_INTERMEDIATE_CACHE_SIZE::v;
}

unint64_t get_ulong(const char *a1, uint64_t a2)
{
  v4 = getenv(a1);
  if (v4)
  {
LABEL_2:

    return strtoul(v4, 0, 10);
  }

  if (userDefaults(void)::didCheck != -1)
  {
    get_BOOL();
  }

  v6 = [userDefaults(void)::defaults objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return a2;
    }

    v4 = [v6 UTF8String];
    goto LABEL_2;
  }

  return [v6 unsignedLongValue];
}

uint64_t CI_INTERMEDIATE_SRGB_TEXTURES()
{
  {
    CI_INTERMEDIATE_SRGB_TEXTURES::v = get_BOOL("CI_INTERMEDIATE_SRGB_TEXTURES", 1);
  }

  return CI_INTERMEDIATE_SRGB_TEXTURES::v;
}

uint64_t CI_INPUT_SRGB_TEXTURES()
{
  {
    CI_INPUT_SRGB_TEXTURES::v = get_int("CI_INPUT_SRGB_TEXTURES", 2);
  }

  return CI_INPUT_SRGB_TEXTURES::v;
}

uint64_t CI_OUTPUT_SRGB_TEXTURES()
{
  {
    CI_OUTPUT_SRGB_TEXTURES::v = get_BOOL("CI_OUTPUT_SRGB_TEXTURES", 1);
  }

  return CI_OUTPUT_SRGB_TEXTURES::v;
}

uint64_t CI_RECYCLE_OPENGL_TEXTURES()
{
  {
    CI_RECYCLE_OPENGL_TEXTURES::v = get_BOOL("CI_RECYCLE_OPENGL_TEXTURES", 1);
  }

  return CI_RECYCLE_OPENGL_TEXTURES::v;
}

uint64_t CI_RECYCLE_METAL_TEXTURES()
{
  {
    CI_RECYCLE_METAL_TEXTURES::v = get_BOOL("CI_RECYCLE_METAL_TEXTURES", 0);
  }

  return CI_RECYCLE_METAL_TEXTURES::v;
}

uint64_t CI_USE_INFLIGHT_INTERMEDIATES()
{
  {
    CI_USE_INFLIGHT_INTERMEDIATES::v = get_BOOL("CI_USE_INFLIGHT_INTERMEDIATES", 1);
  }

  return CI_USE_INFLIGHT_INTERMEDIATES::v;
}

uint64_t CI_WORKING_FORMAT()
{
  if (CI_WORKING_FORMAT::didCheck != -1)
  {
    CI_WORKING_FORMAT_cold_1();
  }

  return CI_WORKING_FORMAT::v;
}

uint64_t CI_ENABLE_METAL_GPU()
{
  if (CI_ENABLE_METAL_GPU::didCheck != -1)
  {
    CI_ENABLE_METAL_GPU_cold_1();
  }

  return CI_ENABLE_METAL_GPU::v;
}

uint64_t CI_ENABLE_METAL_DAG()
{
  {
    CI_ENABLE_METAL_DAG::v = get_int("CI_ENABLE_METAL_DAG", 1);
  }

  return CI_ENABLE_METAL_DAG::v;
}

uint64_t CI_ENABLE_FUNCTION_STITCHING()
{
  {
    CI_ENABLE_FUNCTION_STITCHING::v = get_BOOL("CI_ENABLE_FUNCTION_STITCHING", 1);
  }

  return CI_ENABLE_FUNCTION_STITCHING::v;
}

double CI_WAIT_BEFORE_SWITCHING_TO_UBER()
{
  {
    CI_WAIT_BEFORE_SWITCHING_TO_UBER::v = get_double("CI_WAIT_BEFORE_SWITCHING_TO_UBER", 0.001);
  }

  return *&CI_WAIT_BEFORE_SWITCHING_TO_UBER::v;
}

double get_double(const char *a1, double a2)
{
  v4 = getenv(a1);
  if (v4)
  {

    return strtod(v4, 0);
  }

  else
  {
    if (userDefaults(void)::didCheck != -1)
    {
      get_BOOL();
    }

    v6 = [userDefaults(void)::defaults objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {

      [v6 doubleValue];
    }

    else
    {
      return a2;
    }
  }

  return result;
}

uint64_t CI_ENABLE_UBER_SHADER()
{
  {
    CI_ENABLE_UBER_SHADER::v = get_int("CI_ENABLE_UBER_SHADER", 0);
  }

  return CI_ENABLE_UBER_SHADER::v;
}

uint64_t CI_USE_AIR_UBER_SHADER()
{
  {
    CI_USE_AIR_UBER_SHADER::v = get_BOOL("CI_USE_AIR_UBER_SHADER", 1);
  }

  return CI_USE_AIR_UBER_SHADER::v;
}

uint64_t CI_ALLOW_UBER_SHADER_COMPILATION()
{
  {
    CI_ALLOW_UBER_SHADER_COMPILATION::v = get_BOOL("CI_ALLOW_UBER_SHADER_COMPILATION", 0);
  }

  return CI_ALLOW_UBER_SHADER_COMPILATION::v;
}

void *CI_DISABLE_LOADING_ARCHIVES_BY_NAME()
{
  if (CI_DISABLE_LOADING_ARCHIVES_BY_NAME::didCheck != -1)
  {
    CI_DISABLE_LOADING_ARCHIVES_BY_NAME_cold_1();
  }

  if (CI_DISABLE_LOADING_ARCHIVES_BY_NAME::is_set)
  {
    return &CI_DISABLE_LOADING_ARCHIVES_BY_NAME::archives_name;
  }

  else
  {
    return 0;
  }
}

uint64_t CI_LOG_BIN_ARCHIVE_MISS()
{
  {
    CI_LOG_BIN_ARCHIVE_MISS::v = get_int("CI_LOG_BIN_ARCHIVE_MISS", 0);
  }

  return CI_LOG_BIN_ARCHIVE_MISS::v;
}

uint64_t CI_ARCHIVE_USAGE_MODE()
{
  {
    CI_ARCHIVE_USAGE_MODE::v = get_int("CI_ARCHIVE_USAGE_MODE", 1);
  }

  return CI_ARCHIVE_USAGE_MODE::v;
}

uint64_t CI_LOG_METAL_FUNCTION_HASH()
{
  {
    CI_LOG_METAL_FUNCTION_HASH::v = get_BOOL("CI_LOG_METAL_FUNCTION_HASH", 0);
  }

  return CI_LOG_METAL_FUNCTION_HASH::v;
}

uint64_t CI_HARVEST_BIN_ARCHIVE_PROGRAM_TYPE()
{
  {
    CI_HARVEST_BIN_ARCHIVE_PROGRAM_TYPE::v = get_int("CI_HARVEST_BIN_ARCHIVE_PROGRAM_TYPE", 0);
  }

  return CI_HARVEST_BIN_ARCHIVE_PROGRAM_TYPE::v;
}

uint64_t CI_SKIP_PREWARMING_SDOF_RENDERING()
{
  {
    CI_SKIP_PREWARMING_SDOF_RENDERING::v = get_BOOL("CI_SKIP_PREWARMING_SDOF_RENDERING", 0);
  }

  return CI_SKIP_PREWARMING_SDOF_RENDERING::v;
}

void *CI_HARVESTING_SPECIFIC_LIBRARY_LIST()
{
  if (CI_HARVESTING_SPECIFIC_LIBRARY_LIST::didCheck != -1)
  {
    CI_HARVESTING_SPECIFIC_LIBRARY_LIST_cold_1();
  }

  if (CI_HARVESTING_SPECIFIC_LIBRARY_LIST::is_set)
  {
    return &CI_HARVESTING_SPECIFIC_LIBRARY_LIST::archives_name;
  }

  else
  {
    return 0;
  }
}

void *CI_HARVEST_PROCESS_NAME_LIST()
{
  if (CI_HARVEST_PROCESS_NAME_LIST::didCheck != -1)
  {
    CI_HARVEST_PROCESS_NAME_LIST_cold_1();
  }

  if (CI_HARVEST_PROCESS_NAME_LIST::is_set)
  {
    return &CI_HARVEST_PROCESS_NAME_LIST::archives_name;
  }

  else
  {
    return 0;
  }
}

uint64_t CI_HARVEST_SPECIALIZED_MTL_FUNCTIONS()
{
  {
    CI_HARVEST_SPECIALIZED_MTL_FUNCTIONS::v = get_BOOL("CI_HARVEST_SPECIALIZED_MTL_FUNCTIONS", 1);
  }

  return CI_HARVEST_SPECIALIZED_MTL_FUNCTIONS::v;
}

double CI_BIN_ARCHIVE_SERIALIZATION_DELAY()
{
  {
    CI_BIN_ARCHIVE_SERIALIZATION_DELAY::v = get_double("CI_BIN_ARCHIVE_SERIALIZATION_DELAY", 10.0);
  }

  return *&CI_BIN_ARCHIVE_SERIALIZATION_DELAY::v;
}

uint64_t CI_HARVEST_BIN_ARCHIVE()
{
  {
    CI_HARVEST_BIN_ARCHIVE::v = get_int("CI_HARVEST_BIN_ARCHIVE", 0);
  }

  return CI_HARVEST_BIN_ARCHIVE::v;
}

uint64_t CI_BIN_ARCHIVE_SERIALIZATION_METHOD()
{
  {
    CI_BIN_ARCHIVE_SERIALIZATION_METHOD::v = get_int("CI_BIN_ARCHIVE_SERIALIZATION_METHOD", 2);
  }

  return CI_BIN_ARCHIVE_SERIALIZATION_METHOD::v;
}

void *CI_HARVEST_BIN_ARCHIVE_ABSOLUTE_PATH()
{
  if (CI_HARVEST_BIN_ARCHIVE_ABSOLUTE_PATH::didCheck != -1)
  {
    CI_HARVEST_BIN_ARCHIVE_ABSOLUTE_PATH_cold_1();
  }

  if (CI_HARVEST_BIN_ARCHIVE_ABSOLUTE_PATH::is_set)
  {
    return &CI_HARVEST_BIN_ARCHIVE_ABSOLUTE_PATH::harvesting_path;
  }

  else
  {
    return 0;
  }
}

const char *CI_HARVEST_BIN_ARCHIVE_FOLDER_NAME()
{
  if (CI_HARVEST_BIN_ARCHIVE_FOLDER_NAME::didCheck != -1)
  {
    CI_HARVEST_BIN_ARCHIVE_FOLDER_NAME_cold_1();
  }

  if (CI_HARVEST_BIN_ARCHIVE_FOLDER_NAME::is_set)
  {
    return &CI_HARVEST_BIN_ARCHIVE_FOLDER_NAME::harvesting_dir;
  }

  else
  {
    return "coreimage_archive";
  }
}

uint64_t CI_ADD_PROCESS_NAME_TO_BIN_ARCHIVE()
{
  {
    CI_ADD_PROCESS_NAME_TO_BIN_ARCHIVE::v = get_BOOL("CI_ADD_PROCESS_NAME_TO_BIN_ARCHIVE", 1);
  }

  return CI_ADD_PROCESS_NAME_TO_BIN_ARCHIVE::v;
}

uint64_t CI_PREVENT_HARVEST_DUPLICATE_ENTRIES()
{
  {
    CI_PREVENT_HARVEST_DUPLICATE_ENTRIES::v = get_BOOL("CI_PREVENT_HARVEST_DUPLICATE_ENTRIES", 0);
  }

  return CI_PREVENT_HARVEST_DUPLICATE_ENTRIES::v;
}

uint64_t CI_USE_MTL_DAG_FOR_CIKL_SRC()
{
  {
    CI_USE_MTL_DAG_FOR_CIKL_SRC::v = get_BOOL("CI_USE_MTL_DAG_FOR_CIKL_SRC", 1);
  }

  return CI_USE_MTL_DAG_FOR_CIKL_SRC::v;
}

uint64_t CI_ENABLE_METAL_CONVERT()
{
  {
    CI_ENABLE_METAL_CONVERT::v = get_BOOL("CI_ENABLE_METAL_CONVERT", 0);
  }

  return CI_ENABLE_METAL_CONVERT::v;
}

uint64_t CI_ENABLE_METAL_BLIT()
{
  {
    CI_ENABLE_METAL_BLIT::v = get_BOOL("CI_ENABLE_METAL_BLIT", 1);
  }

  return CI_ENABLE_METAL_BLIT::v;
}

uint64_t CI_ENABLE_METAL_LABEL()
{
  {
    CI_ENABLE_METAL_LABEL::v = get_BOOL("CI_ENABLE_METAL_LABEL", 1);
  }

  return CI_ENABLE_METAL_LABEL::v;
}

uint64_t CI_ENABLE_METAL_DEBUG()
{
  {
    CI_ENABLE_METAL_DEBUG::v = get_BOOL("CI_ENABLE_METAL_DEBUG", 0);
  }

  return CI_ENABLE_METAL_DEBUG::v;
}

uint64_t CI_ENABLE_METAL_CAPTURE()
{
  {
    CI_ENABLE_METAL_CAPTURE::v = get_BOOL("CI_ENABLE_METAL_CAPTURE", 0);
  }

  return CI_ENABLE_METAL_CAPTURE::v;
}

uint64_t CI_ENABLE_METAL_IMAGEBLOCKS()
{
  {
    CI_ENABLE_METAL_IMAGEBLOCKS::v = get_int("CI_ENABLE_METAL_IMAGEBLOCKS", 0);
  }

  return CI_ENABLE_METAL_IMAGEBLOCKS::v;
}

uint64_t CI_ENABLE_WRITE_420()
{
  {
    CI_ENABLE_WRITE_420::v = get_BOOL("CI_ENABLE_WRITE_420", 1);
  }

  return CI_ENABLE_WRITE_420::v;
}

uint64_t CI_ENABLE_MPS()
{
  {
    CI_ENABLE_MPS::v = get_BOOL("CI_ENABLE_MPS", 1);
  }

  return CI_ENABLE_MPS::v;
}

uint64_t CI_AUTOTEST_ROI()
{
  {
    CI_AUTOTEST_ROI::v = get_BOOL("CI_AUTOTEST_ROI", 0);
  }

  return CI_AUTOTEST_ROI::v;
}

uint64_t CI_EDIT_RED_EYE_VERSION()
{
  {
    CI_EDIT_RED_EYE_VERSION::v = get_int("CI_EDIT_RED_EYE_VERSION", 3);
  }

  if (CI_EDIT_RED_EYE_VERSION::v <= 1)
  {
    return 1;
  }

  else
  {
    return CI_EDIT_RED_EYE_VERSION::v;
  }
}

uint64_t CI_DISABLE_MERGING()
{
  {
    CI_DISABLE_MERGING::v = get_BOOL("CI_DISABLE_MERGING", 0);
  }

  return CI_DISABLE_MERGING::v;
}

uint64_t CI_DISABLE_MERGING_PRE_GENERAL()
{
  {
    CI_DISABLE_MERGING_PRE_GENERAL::v = get_BOOL("CI_DISABLE_MERGING_PRE_GENERAL", 0);
  }

  return CI_DISABLE_MERGING_PRE_GENERAL::v;
}

uint64_t CI_DISABLE_MERGING_POST_GENERAL()
{
  {
    CI_DISABLE_MERGING_POST_GENERAL::v = get_BOOL("CI_DISABLE_MERGING_POST_GENERAL", 0);
  }

  return CI_DISABLE_MERGING_POST_GENERAL::v;
}

uint64_t CI_LOG_TEXTURE_CACHE()
{
  {
    CI_LOG_TEXTURE_CACHE::v = get_BOOL("CI_LOG_TEXTURE_CACHE", 0);
  }

  return CI_LOG_TEXTURE_CACHE::v;
}

uint64_t CI_LIMIT_SAMPLERS()
{
  {
    CI_LIMIT_SAMPLERS::v = get_BOOL("CI_LIMIT_SAMPLERS", 0);
  }

  return CI_LIMIT_SAMPLERS::v;
}

uint64_t CI_LIMIT_RENDER()
{
  {
    CI_LIMIT_RENDER::v = get_int("CI_LIMIT_RENDER", 0);
  }

  return CI_LIMIT_RENDER::v;
}

uint64_t CI_NO_RENDER()
{
  {
    CI_NO_RENDER::v = get_BOOL("CI_NO_RENDER", 0);
  }

  return CI_NO_RENDER::v;
}

uint64_t CI_LOG_SURFACE_CACHE()
{
  {
    CI_LOG_SURFACE_CACHE::v = get_int("CI_LOG_SURFACE_CACHE", 0);
  }

  return CI_LOG_SURFACE_CACHE::v;
}

uint64_t CI_TRACE_PEAK_SURFACE_CACHE()
{
  {
    CI_TRACE_PEAK_SURFACE_CACHE::v = get_BOOL("CI_TRACE_PEAK_SURFACE_CACHE", 0);
  }

  return CI_TRACE_PEAK_SURFACE_CACHE::v;
}

uint64_t CI_LOG_IMAGE_PROVIDER()
{
  {
    CI_LOG_IMAGE_PROVIDER::v = get_BOOL("CI_LOG_IMAGE_PROVIDER", 0);
  }

  return CI_LOG_IMAGE_PROVIDER::v;
}

uint64_t CI_NAME_SURFACES()
{
  {
    CI_NAME_SURFACES::v = get_BOOL("CI_NAME_SURFACES", 1);
  }

  return CI_NAME_SURFACES::v;
}

uint64_t CI_RENDER_MB_LIMIT()
{
  {
    CI_RENDER_MB_LIMIT::v = get_ulong("CI_RENDER_MB_LIMIT", 0);
  }

  return CI_RENDER_MB_LIMIT::v;
}

uint64_t CI_SURFACE_CACHE_CAPACITY()
{
  {
    CI_SURFACE_CACHE_CAPACITY::v = get_ulong("CI_SURFACE_CACHE_CAPACITY", 0x20000000);
  }

  return CI_SURFACE_CACHE_CAPACITY::v;
}

uint64_t CI_KDEBUG()
{
  {
    CI_KDEBUG::v = get_int("CI_KDEBUG", 1);
  }

  return CI_KDEBUG::v;
}

uint64_t CI_DISABLE_CRUFT_COMPATABILITY()
{
  {
    CI_DISABLE_CRUFT_COMPATABILITY::v = get_BOOL("CI_DISABLE_CRUFT_COMPATABILITY", 0);
  }

  return CI_DISABLE_CRUFT_COMPATABILITY::v;
}

uint64_t CI_FORCE_INSERT_NOOPS()
{
  {
    CI_FORCE_INSERT_NOOPS::v = get_Y_or_N("CI_FORCE_INSERT_NOOPS");
  }

  return CI_FORCE_INSERT_NOOPS::v;
}

uint64_t CI_MAX_CL_COMPLEXITY()
{
  {
    CI_MAX_CL_COMPLEXITY::v = get_int("CI_MAX_CL_COMPLEXITY", 45);
  }

  return CI_MAX_CL_COMPLEXITY::v;
}

uint64_t CI_MAX_PROGRAM_DEPTH()
{
  {
    CI_MAX_PROGRAM_DEPTH::v = get_int("CI_MAX_PROGRAM_DEPTH", 128);
  }

  return CI_MAX_PROGRAM_DEPTH::v;
}

uint64_t CI_MAX_PROGRAM_INPUT_TEXTURES()
{
  {
    CI_MAX_PROGRAM_INPUT_TEXTURES::v = get_int("CI_MAX_PROGRAM_INPUT_TEXTURES", 32);
  }

  return CI_MAX_PROGRAM_INPUT_TEXTURES::v;
}

uint64_t CI_DISABLE_WORKAROUND()
{
  {
    CI_DISABLE_WORKAROUND::v = get_int("CI_DISABLE_WORKAROUND", 0);
  }

  return CI_DISABLE_WORKAROUND::v;
}

uint64_t CI_GRAPH_ALLOW_REORDER()
{
  {
    CI_GRAPH_ALLOW_REORDER::v = get_BOOL("CI_GRAPH_ALLOW_REORDER", 1);
  }

  return CI_GRAPH_ALLOW_REORDER::v;
}

uint64_t CI_GRAPH_FORCE_CROP()
{
  {
    CI_GRAPH_FORCE_CROP::v = get_BOOL("CI_GRAPH_FORCE_CROP", 0);
  }

  return CI_GRAPH_FORCE_CROP::v;
}

uint64_t CI_FLIP_IMAGE_PROCESSOR()
{
  {
    CI_FLIP_IMAGE_PROCESSOR::v = get_BOOL("CI_FLIP_IMAGE_PROCESSOR", 1);
  }

  return CI_FLIP_IMAGE_PROCESSOR::v;
}

uint64_t CI_CACHE_PROGRAM_GRAPH()
{
  if (CI_CACHE_PROGRAM_GRAPH::didCheck != -1)
  {
    CI_CACHE_PROGRAM_GRAPH_cold_1();
  }

  return CI_CACHE_PROGRAM_GRAPH::v;
}

uint64_t CI_VERBOSE_SIGNPOSTS()
{
  {
    CI_VERBOSE_SIGNPOSTS::v = get_BOOL("CI_VERBOSE_SIGNPOSTS", 0);
  }

  return CI_VERBOSE_SIGNPOSTS::v;
}

uint64_t CI_GRAPHVIZ_INTERNAL()
{
  {
    CI_GRAPHVIZ_INTERNAL::v = get_BOOL("CI_GRAPHVIZ_INTERNAL", 0);
  }

  return CI_GRAPHVIZ_INTERNAL::v;
}

BOOL FOSL_DAG_CODEGEN()
{
  {
    FOSL_DAG_CODEGEN::v = get_BOOL("FOSL_DAG_CODEGEN", 1);
  }

  return FOSL_DAG_CODEGEN::v != 0;
}

uint64_t FOSL_DUMP_GRAPH()
{
  {
    FOSL_DUMP_GRAPH::v = get_BOOL("FOSL_DUMP_GRAPH", 0);
  }

  return FOSL_DUMP_GRAPH::v;
}

uint64_t FOSL_PRINT_GRAPH()
{
  {
    FOSL_PRINT_GRAPH::v = get_BOOL("FOSL_PRINT_GRAPH", 0);
  }

  return FOSL_PRINT_GRAPH::v;
}

uint64_t FOSL_PRINT_KERNEL_AST()
{
  {
    FOSL_PRINT_KERNEL_AST::v = get_BOOL("FOSL_PRINT_KERNEL_AST", 0);
  }

  return FOSL_PRINT_KERNEL_AST::v;
}

uint64_t CI_DISABLE_REDEYE_SEARCH()
{
  {
    CI_DISABLE_REDEYE_SEARCH::v = get_int("CI_DISABLE_REDEYE_SEARCH", 0);
  }

  return CI_DISABLE_REDEYE_SEARCH::v;
}

uint64_t CI_LOG_DUALRED()
{
  {
    CI_LOG_DUALRED::v = get_int("CI_LOG_DUALRED", 0);
  }

  valuePtr = 0;
  v0 = CFPreferencesCopyAppValue(@"CI_LOG_DUALRED", @"com.apple.coremedia");
  if (!v0)
  {
    return CI_LOG_DUALRED::v;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 == CFNumberGetTypeID())
  {
    CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
  }

  else
  {
    v4 = CFGetTypeID(v1);
    if (v4 == CFStringGetTypeID())
    {
      valuePtr = CFStringGetIntValue(v1);
    }
  }

  CFRelease(v1);
  result = CI_LOG_DUALRED::v;
  if (valuePtr)
  {
    if (!CI_LOG_DUALRED::v)
    {
      CI_LOG_DUALRED::v = valuePtr;
      return valuePtr;
    }
  }

  return result;
}

uint64_t ___ZL12userDefaultsv_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.coreimage"];
  userDefaults(void)::defaults = result;
  return result;
}

double CI::sw_facebalance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  v23 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF23AB0, *v7, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF23AA0, *v7->f32, 1), vmulq_n_f32(xmmword_19CF23A90, COERCE_FLOAT(*v7))));
  _S0 = v23.i32[1];
  __asm { FMLA            S1, S0, V2.S[1] }

  v19 = fminf(_S1 * 4.0, 1.0);
  v20 = pow(v19, 0.2);
  v21 = vadd_f32(*&vextq_s8(v23, v23, 4uLL), vmul_n_f32(vmul_n_f32(v12, v20), 1.0 - (v19 * v19)));
  *&result = vaddq_f32(vmulq_lane_f32(xmmword_19CF23B10, v21, 1), vaddq_f32(vdupq_lane_s32(*v23.i8, 0), vmulq_n_f32(xmmword_19CF23B00, v21.f32[0]))).u64[0];
  return result;
}

void sub_19CCD2960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19CCD34B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, void (*a62)(char *), uint64_t a63)
{
  a62(&a60);
  _Block_object_dispose(&a66, 8);
  _Unwind_Resume(a1);
}

Class ___ZL25getVNFaceObservationClassv_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNFaceObservation");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL25getVNFaceObservationClassv_block_invoke_cold_1();
  }

  getVNFaceObservationClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t VisionLibrary(void)
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!VisionLibraryCore(char **)::frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = ___ZL17VisionLibraryCorePPc_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E75C2648;
    v4 = 0;
    VisionLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = VisionLibraryCore(char **)::frameworkLibrary;
  if (!VisionLibraryCore(char **)::frameworkLibrary)
  {
    VisionLibrary(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!VisionLibraryCore(char **)::frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = ___ZL17VisionLibraryCorePPc_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E75C3A10;
    v4 = 0;
    VisionLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = VisionLibraryCore(char **)::frameworkLibrary;
  if (!VisionLibraryCore(char **)::frameworkLibrary)
  {
    VisionLibrary(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t ___ZL17VisionLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  VisionLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL42getVNTrackLegacyFaceCoreObjectRequestClassv_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNTrackLegacyFaceCoreObjectRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL42getVNTrackLegacyFaceCoreObjectRequestClassv_block_invoke_cold_1();
  }

  getVNTrackLegacyFaceCoreObjectRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class ___ZL37getVNDetectFaceRectanglesRequestClassv_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNDetectFaceRectanglesRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL37getVNDetectFaceRectanglesRequestClassv_block_invoke_cold_1();
  }

  getVNDetectFaceRectanglesRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *___ZL34getVNImageOptionCIContextSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNImageOptionCIContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNImageOptionCIContextSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class ___ZL29getVNImageRequestHandlerClassv_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNImageRequestHandler");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL29getVNImageRequestHandlerClassv_block_invoke_cold_1();
  }

  getVNImageRequestHandlerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *___ZL50getVNFaceLegacyFaceCoreFeature_SmileScoreSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceLegacyFaceCoreFeature_SmileScore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceLegacyFaceCoreFeature_SmileScoreSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL58getVNFaceLegacyFaceCoreFeature_LeftEyeClosedScoreSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceLegacyFaceCoreFeature_LeftEyeClosedScore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceLegacyFaceCoreFeature_LeftEyeClosedScoreSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL59getVNFaceLegacyFaceCoreFeature_RightEyeClosedScoreSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceLegacyFaceCoreFeature_RightEyeClosedScore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceLegacyFaceCoreFeature_RightEyeClosedScoreSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19CCD59EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__7(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

double addPoints(CIVector *a1, CIVector *a2, CGRect a3, float a4, float a5)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = 0;
  v12 = a4;
  v24 = a5;
  v13 = 1.0;
  do
  {
    [(CIVector *)a1 valueAtIndex:v11];
    v15 = v14;
    [(CIVector *)a2 valueAtIndex:v11];
    v17 = v15 * v12;
    if (fabs(v17 + v13) > 0.001)
    {
      v18 = x;
      v19 = y;
      v20 = width;
      v21 = height;
      v22 = v16 * v24;
      if (fabs(v16 * v24 + 1.0) <= 0.001)
      {
        height = v21;
        width = v20;
        y = v19;
        x = v18;
      }

      else
      {
        v25.origin.x = v18;
        v25.origin.y = v19;
        v25.size.width = v20;
        v25.size.height = v21;
        if (CGRectIsNull(v25))
        {
          x = v17 + -0.5;
          y = v22 + -0.5;
          width = 1.0;
          height = 1.0;
        }

        else
        {
          v28.size.width = 1.0;
          v28.size.height = 1.0;
          v26.origin.x = v18;
          v26.origin.y = v19;
          v26.size.width = v20;
          v26.size.height = v21;
          v28.origin.x = v17 + -0.5;
          v28.origin.y = v22 + -0.5;
          v27 = CGRectUnion(v26, v28);
          x = v27.origin.x;
          y = v27.origin.y;
          width = v27.size.width;
          height = v27.size.height;
        }
      }

      v13 = 1.0;
    }

    ++v11;
  }

  while (v11 != 4);
  return x;
}

void sub_19CCD61F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float CI::sw_CIFaceMaskApply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12)
{
  v12 = *(a1 + 40);
  v13 = *(v12 + 8);
  v14 = *(v12 + 32);
  v15 = (a3 + 16 * v14);
  v16 = (a2 + (v14 << 6));
  if (*(v12 + 40) == 5)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v12 + 56);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (*(v12 + 64) == 5)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v12 + 80);
  v23 = (a3 + 16 * v22);
  v24 = (a2 + (v22 << 6));
  if (*(v12 + 88) == 5)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v12 + 104);
  v27 = (a3 + 16 * v26);
  v28 = (a2 + (v26 << 6));
  if (*(v12 + 112) == 5)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  v30 = *(v12 + 128);
  v31 = *(v12 + 152);
  v32 = *(v12 + 176);
  v33 = (a3 + 16 * v32);
  v34 = (a2 + (v32 << 6));
  if (*(v12 + 184) == 5)
  {
    v35 = v33;
  }

  else
  {
    v35 = v34;
  }

  v36 = *(v12 + 208);
  v37 = *(v12 + 200);
  v38 = (a3 + 16 * v37);
  v39 = (a2 + (v37 << 6));
  if (v36 == 5)
  {
    v39 = v38;
  }

  v40 = a4 + 80 * v31;
  v41 = a4 + 80 * v13;
  v137 = *v17;
  v139 = *v21;
  v42 = *v25;
  v142 = *v25;
  v143 = *v29;
  v135 = *(a2 + (v30 << 6));
  v43 = *v35;
  *&v44 = *(v40 + 24) + ((*(v40 + 20) * 0.5) + (*(v40 + 16) * 0.5));
  LODWORD(a8) = *(v40 + 36);
  v147 = *v39;
  *v42.f64 = *&a8 + ((*(v40 + 32) * 0.5) + (*(v40 + 28) * 0.5));
  *(&v44 + 1) = *v42.f64;
  *v45.i64 = CI::BitmapSampler::read(*(v40 + 8), v44, v42, *v39, a8, a9, a10, a11, a12);
  v146 = v45;
  LODWORD(v46) = *(v40 + 28);
  v47.i32[0] = *(v40 + 36);
  *v48.i32 = *(v40 + 32) * 0.5;
  *&v49 = *v48.i32 + (*&v46 * 1.5);
  v45.f32[0] = *(v40 + 24) + ((*(v40 + 20) * 0.5) + (*(v40 + 16) * 1.5));
  *v50.f64 = *v47.i32 + *&v49;
  v45.f32[1] = *v47.i32 + *&v49;
  *v53.i64 = CI::BitmapSampler::read(*(v40 + 8), *v45.i64, v50, v49, v46, v48, v47, v51, v52);
  v144 = v53;
  LODWORD(v54) = *(v40 + 28);
  v55.i32[0] = *(v40 + 36);
  *v56.i32 = *(v40 + 32) * 0.5;
  *&v57 = *v56.i32 + (*&v54 * 2.5);
  v53.f32[0] = *(v40 + 24) + ((*(v40 + 20) * 0.5) + (*(v40 + 16) * 2.5));
  *v58.f64 = *v55.i32 + *&v57;
  v53.f32[1] = *v55.i32 + *&v57;
  *&v61 = CI::BitmapSampler::read(*(v40 + 8), *v53.i64, v58, v57, v54, v56, v55, v59, v60);
  v141 = v61;
  LODWORD(v62) = *(v40 + 28);
  v63.i32[0] = *(v40 + 36);
  *v64.i32 = *(v40 + 32) * 0.5;
  *&v65 = *v64.i32 + (*&v62 * 3.5);
  *&v61 = *(v40 + 24) + ((*(v40 + 20) * 0.5) + (*(v40 + 16) * 3.5));
  *v66.f64 = *v63.i32 + *&v65;
  *(&v61 + 1) = *v63.i32 + *&v65;
  *v69.i64 = CI::BitmapSampler::read(*(v40 + 8), *&v61, v66, v65, v62, v64, v63, v67, v68);
  v134 = v69;
  LODWORD(v70) = 4.5;
  LODWORD(v71) = *(v40 + 28);
  v69.f32[0] = *(v40 + 24) + ((*(v40 + 20) * 0.5) + (*(v40 + 16) * 4.5));
  v72.i32[0] = *(v40 + 36);
  *v73.f64 = *v72.i32 + ((*(v40 + 32) * 0.5) + (*&v71 * 4.5));
  v69.f32[1] = *v73.f64;
  v77 = CI::BitmapSampler::read(*(v40 + 8), *v69.i64, v73, v70, v71, v72, v74, v75, v76);
  v145 = *&v77;
  DC = CI::getDC(v78);
  v80 = vmul_f32(v43, *DC);
  v136 = vmulq_n_f32(vsubq_f32(vdupq_lane_s32(v80, 1), v139), v135);
  v138 = vsubq_f32(vdupq_lane_s32(v80, 0), v137);
  v140 = vsqrtq_f32(vaddq_f32(vmulq_f32(v138, v138), vmulq_f32(v136, v136)));
  v81 = CI::getDC(DC);
  LODWORD(v82) = *(v41 + 24);
  v83.i32[0] = *(v41 + 36);
  *v84.i32 = vmuls_lane_f32(*(v41 + 32), *v81, 1);
  *&v85 = *v84.i32 + (COERCE_FLOAT(*v81) * *(v41 + 28));
  *&v86 = *&v82 + (vmuls_lane_f32(*(v41 + 20), *v81, 1) + (COERCE_FLOAT(*v81) * *(v41 + 16)));
  *v87.f64 = *v83.i32 + *&v85;
  *(&v86 + 1) = *v83.i32 + *&v85;
  *v90.i64 = CI::BitmapSampler::read(*(v41 + 8), v86, v87, v82, v85, v84, v83, v88, v89);
  v91 = vaddq_f32(vmulq_f32(v142, v138), vmulq_f32(v143, v136));
  v92 = vdivq_f32(vabdq_f32(vmulq_f32(v142, v136), vmulq_f32(v143, v138)), vaddq_f32(vabsq_f32(v91), vdupq_n_s32(0x2EDBE6FFu)));
  v93 = v142.f32[0] != 0.0 || v143.f32[0] != 0.0;
  if (v91.f32[0] < 0.0)
  {
    v93 = 0;
  }

  if (v92.f32[0] >= 1.5574)
  {
    v93 = 0;
  }

  v94 = v142.f32[1] != 0.0 || v143.f32[1] != 0.0;
  if (v91.f32[1] < 0.0)
  {
    v94 = 0;
  }

  if (v92.f32[1] >= 1.5574)
  {
    v94 = 0;
  }

  v95 = v142.f32[2] != 0.0 || v143.f32[2] != 0.0;
  if (v91.f32[2] < 0.0)
  {
    v95 = 0;
  }

  if (v92.f32[2] >= 1.5574)
  {
    v95 = 0;
  }

  v96 = v142.f32[3] != 0.0 || v143.f32[3] != 0.0;
  if (v91.f32[3] < 0.0)
  {
    v96 = 0;
  }

  if (v92.f32[3] >= 1.5574)
  {
    v96 = 0;
  }

  _V16.D[1] = *(&v141 + 1);
  _S2 = v140.i32[1];
  v99 = 0.0;
  _S5 = DWORD1(v141);
  __asm { FMLA            S3, S2, V16.S[1] }

  v106 = _S3;
  if (_NF != _VF)
  {
    v106 = 0.0;
  }

  _S3 = v140.i32[2];
  __asm { FMLA            S5, S3, V16.S[2] }

  v109 = _S5;
  if (_NF != _VF)
  {
    v109 = 0.0;
  }

  _S5 = v140.i32[3];
  __asm { FMLA            S6, S5, V16.S[3] }

  v112 = _S6;
  if (_NF != _VF)
  {
    v112 = 0.0;
  }

  v113 = vaddq_f32(v144, vmulq_f32(v146, v140));
  if ((vmovn_s32(vmvnq_s8(vcgeq_f32(v140, v134))).u8[0] & 1) == 0)
  {
    v99 = ((-*&v141 * v134.f32[0]) + (v140.f32[0] * *&v141));
  }

  v114 = v99 + v113.f32[0];
  v115 = v106 + v113.f32[1];
  v116 = v109 + v113.f32[2];
  v117 = vmaxnmq_f32(vdupq_lane_s32(v147, 0), vaddq_f32(vmulq_f32(v92, vdupq_n_s32(0x3F8872B0u)), vmulq_f32(v92, vmulq_f32(v92, vdupq_n_s32(0xBE8D4FDF)))));
  v118 = vmuls_lane_f32(v147.f32[1], v117, 3);
  v119 = vmuls_lane_f32(v147.f32[1], v117, 2);
  v120 = vmuls_lane_f32(v147.f32[1], *v117.f32, 1);
  v121 = vmuls_lane_f32(v117.f32[0], v147, 1);
  v122 = v112 + v113.f32[3];
  if (v114 <= 0.0 || !v93)
  {
    v121 = 1.0;
  }

  v123 = v121 * v114;
  if (v115 > 0.0 && v94)
  {
    v124 = v120;
  }

  else
  {
    v124 = 1.0;
  }

  v125 = v124 * v115;
  if (v116 > 0.0 && v95)
  {
    v126 = v119;
  }

  else
  {
    v126 = 1.0;
  }

  v127 = v126 * v116;
  if (v122 > 0.0 && v96)
  {
    v128 = v118;
  }

  else
  {
    v128 = 1.0;
  }

  v129 = vmulq_f32(v90, v90).f32[0];
  v130 = v128 * v122;
  v131 = v129 + fminf(fminf(v123, v125), fminf(v127, v130));
  v132 = fmaxf(v145, v129);
  if (v131 <= v132)
  {
    v132 = v131;
  }

  if (v131 < 0.0)
  {
    v132 = 0.0;
  }

  return sqrtf(v132);
}

double CI::sw_faceMaskCalculator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12)
{
  v12 = *(a1 + 40);
  v13 = *(v12 + 8);
  v14 = *(v12 + 32);
  v15 = (a3 + 16 * v14);
  v16 = (a2 + (v14 << 6));
  if (*(v12 + 40) == 5)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v12 + 56);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (*(v12 + 64) == 5)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v12 + 128);
  v23 = (a3 + 16 * v22);
  v24 = (a2 + (v22 << 6));
  if (*(v12 + 136) == 5)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v12 + 152);
  v27 = (a3 + 16 * v26);
  v28 = (a2 + (v26 << 6));
  if (*(v12 + 160) == 5)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  v30 = *(v12 + 176);
  v31 = (a3 + 16 * v30);
  v32 = (a2 + (v30 << 6));
  if (*(v12 + 184) == 5)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  v34 = *(v12 + 224);
  v35 = (a3 + 16 * v34);
  v36 = (a2 + (v34 << 6));
  if (*(v12 + 232) == 5)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  v38 = *(v12 + 328);
  v39 = *(v12 + 320);
  v40 = (a3 + 16 * v39);
  v41 = (a2 + (v39 << 6));
  if (v38 == 5)
  {
    v41 = v40;
  }

  v42 = a4 + 80 * v13;
  v59 = *v17;
  v62 = *v21;
  v60 = *v29;
  v61 = *v25;
  v43 = *v33;
  v63 = *v41;
  if (COERCE_FLOAT(*v41) > 0.0)
  {
    LODWORD(a7) = *(v42 + 28);
    *&v44 = *(v42 + 24) + ((*(v42 + 20) * v62.f32[0]) + (v59.f32[0] * *(v42 + 16)));
    LODWORD(a8) = *(v42 + 36);
    *v43.f64 = *&a8 + ((*(v42 + 32) * v62.f32[0]) + (v59.f32[0] * *&a7));
    *(&v44 + 1) = *v43.f64;
    CI::BitmapSampler::read(*(v42 + 8), v44, v43, a7, a8, v62, v59, a11, a12);
  }

  if (*(&v63 + 1) > 0.0)
  {
    v45.i32[0] = *(v42 + 16);
    LODWORD(v43.f64[0]) = *(v42 + 20);
    LODWORD(v46) = *(v42 + 24);
    HIDWORD(v43.f64[0]) = *(v42 + 32);
    v45.i32[1] = *(v42 + 28);
    *&v43.f64[0] = vmla_lane_f32(vmul_lane_f32(*&v43.f64[0], *v62.f32, 1), v45, *v59.f32, 1);
    HIDWORD(v46) = *(v42 + 36);
    CI::BitmapSampler::read(*(v42 + 8), COERCE_DOUBLE(vadd_f32(*&v46, *&v43.f64[0])), v43, v46, *v59.i64, a9, a10, a11, a12);
  }

  if (*(&v63 + 2) > 0.0)
  {
    v47.i32[0] = *(v42 + 16);
    LODWORD(v43.f64[0]) = *(v42 + 20);
    LODWORD(v48) = *(v42 + 24);
    HIDWORD(v43.f64[0]) = *(v42 + 32);
    v47.i32[1] = *(v42 + 28);
    *&v43.f64[0] = vmla_laneq_f32(vmul_laneq_f32(*&v43.f64[0], v62, 2), v47, v59, 2);
    HIDWORD(v48) = *(v42 + 36);
    CI::BitmapSampler::read(*(v42 + 8), COERCE_DOUBLE(vadd_f32(*&v48, *&v43.f64[0])), v43, v48, *v59.i64, a9, a10, a11, a12);
  }

  if (*(&v63 + 3) > 0.0)
  {
    v49.i32[0] = *(v42 + 16);
    LODWORD(v43.f64[0]) = *(v42 + 20);
    LODWORD(v50) = *(v42 + 24);
    HIDWORD(v43.f64[0]) = *(v42 + 32);
    v49.i32[1] = *(v42 + 28);
    *&v43.f64[0] = vmla_laneq_f32(vmul_laneq_f32(*&v43.f64[0], v62, 3), v49, v59, 3);
    HIDWORD(v50) = *(v42 + 36);
    CI::BitmapSampler::read(*(v42 + 8), COERCE_DOUBLE(vadd_f32(*&v50, *&v43.f64[0])), v43, v50, *v59.i64, a9, a10, a11, a12);
  }

  if (*&v63 > 0.0)
  {
    LODWORD(a7) = *(v42 + 28);
    *&v51 = *(v42 + 24) + ((*(v42 + 20) * v60.f32[0]) + (v61.f32[0] * *(v42 + 16)));
    LODWORD(a8) = *(v42 + 36);
    *v43.f64 = *&a8 + ((*(v42 + 32) * v60.f32[0]) + (v61.f32[0] * *&a7));
    *(&v51 + 1) = *v43.f64;
    CI::BitmapSampler::read(*(v42 + 8), v51, v43, a7, a8, v61, v60, a11, a12);
  }

  if (*(&v63 + 1) > 0.0)
  {
    v52.i32[0] = *(v42 + 16);
    LODWORD(v43.f64[0]) = *(v42 + 20);
    LODWORD(v53) = *(v42 + 24);
    HIDWORD(v43.f64[0]) = *(v42 + 32);
    v52.i32[1] = *(v42 + 28);
    *&v43.f64[0] = vmla_lane_f32(vmul_lane_f32(*&v43.f64[0], *v60.f32, 1), v52, *v61.f32, 1);
    HIDWORD(v53) = *(v42 + 36);
    CI::BitmapSampler::read(*(v42 + 8), COERCE_DOUBLE(vadd_f32(*&v53, *&v43.f64[0])), v43, v53, *v61.i64, v60, a10, a11, a12);
  }

  if (*(&v63 + 2) > 0.0)
  {
    v54.i32[0] = *(v42 + 16);
    LODWORD(v43.f64[0]) = *(v42 + 20);
    LODWORD(v55) = *(v42 + 24);
    HIDWORD(v43.f64[0]) = *(v42 + 32);
    v54.i32[1] = *(v42 + 28);
    *&v43.f64[0] = vmla_laneq_f32(vmul_laneq_f32(*&v43.f64[0], v60, 2), v54, v61, 2);
    HIDWORD(v55) = *(v42 + 36);
    CI::BitmapSampler::read(*(v42 + 8), COERCE_DOUBLE(vadd_f32(*&v55, *&v43.f64[0])), v43, v55, *v61.i64, v60, a10, a11, a12);
  }

  if (*(&v63 + 3) > 0.0)
  {
    v56.i32[0] = *(v42 + 16);
    LODWORD(v43.f64[0]) = *(v42 + 20);
    LODWORD(v57) = *(v42 + 24);
    HIDWORD(v43.f64[0]) = *(v42 + 32);
    v56.i32[1] = *(v42 + 28);
    *&v43.f64[0] = vmla_laneq_f32(vmul_laneq_f32(*&v43.f64[0], v60, 3), v56, v61, 3);
    HIDWORD(v57) = *(v42 + 36);
    CI::BitmapSampler::read(*(v42 + 8), COERCE_DOUBLE(vadd_f32(*&v57, *&v43.f64[0])), v43, v57, *v61.i64, v60, a10, a11, a12);
  }

  CI::getDC(v37);
  cikernel::_computeFaceMaskParams();
  return result;
}

double segmentationCentroidInImage(void *a1, void *a2, void *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v23 = @"inputExtent";
  v24[0] = [CIVector vectorWithCGRect:?];
  v6 = [a2 imageByApplyingFilter:@"CIAreaRedCentroid" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v24, &v23, 1)}];
  v21 = @"working_color_space";
  v22 = [MEMORY[0x1E695DFB0] null];
  v7 = +[CIContext _cachedContext:options:](CIContext, "_cachedContext:options:", @"CIFaceUtils-segmentationCentroid", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1]);
  {
    v18 = v7;
    v7 = v18;
    if (v19)
    {
      segmentationCentroidInImage::cs = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
      v7 = v18;
    }
  }

  [v7 render:v6 toBitmap:&v20 rowBytes:32 bounds:2312 format:segmentationCentroidInImage::cs colorSpace:{0.0, 0.0, 1.0, 1.0}];
  v8 = v20;
  if (a3)
  {
    [a1 boundingBox];
    CIVNRectInOrientedImage(a3, v9, v10, v11, v12);
    v26 = CGRectIntegral(v25);
    x = v26.origin.x;
    width = v26.size.width;
    [a2 extent];
    v16 = v15;
    [a2 extent];
    return x + v8 / v16 * width;
  }

  return v8;
}

double constellationRectInSegmentationRect(void *a1, void *a2, void *a3, unint64_t a4)
{
  [a3 boundingBox];
  CIVNRectInOrientedImage(a1, v7, v8, v9, v10);
  v26 = CGRectIntegral(v25);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  v15 = CIVNLandmarkInOrientedImage(a2, a1);
  v27.origin.x = CIVNBoundingRect(v15);
  v28 = CGRectIntegral(v27);
  v16 = a4;
  v17 = v16 / width;
  v18 = v16 / height;
  v19 = v17 * (v28.origin.x - x);
  v20 = v18 * (v28.origin.y - y);
  v21 = v17 * v28.size.width;
  v22 = v18 * v28.size.height;

  *&result = CGRectIntegral(*&v19);
  return result;
}

void *probabilitiesForSegment(void *a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = 0;
  v14 = 0;
  v8 = (a3 - 5);
  do
  {
    if (((1 << v7) & a2) != 0)
    {
      [a1 boundingBox];
      v9 = [a1 createProbabilityImageOfFaceSegment:1 << v7 region:1 normalize:&v14 error:?];
      v10 = [CIImage imageWithCVPixelBuffer:v9];
      CVPixelBufferRelease(v9);
      if (a3)
      {
        v11 = a3;
        if (v8 <= 3)
        {
          v11 = dword_19CF26780[v8];
        }

        if (v10)
        {
          [(CIImage *)v10 imageTransformForOrientation:v11];
        }

        else
        {
          memset(v15, 0, sizeof(v15));
        }

        v12 = [(CIImage *)v10 imageByApplyingTransform:v15];
        v16 = @"Orientation";
        v17[0] = [MEMORY[0x1E696AD98] numberWithInt:a3];
        v10 = -[CIImage imageBySettingProperties:](v12, "imageBySettingProperties:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1]);
      }

      result = 0;
      if (v14 || !v10)
      {
        return result;
      }

      [v6 addObject:v10];
    }

    ++v7;
  }

  while (v7 != 15);
  return v6;
}

CVPixelBufferRef convertToFullFloatPixelBuffer(void *a1, double a2, double a3, double a4, double a5)
{
  v8 = [a1 format];
  v9 = [a1 format];
  if (v8 == 2309)
  {
    if (v9 != 2309)
    {
      convertToFullFloatPixelBuffer_cold_2();
    }

    [a1 region];
    v11 = -v10;
    [a1 region];
    v13 = -v12;
    v14 = [a1 bytesPerRow];
    v15 = ([a1 baseAddress] + v14 * v13 + 4 * v11);

    return createPixelBuffer(a4, a5, v14, v15);
  }

  else
  {
    if (v9 != 2053)
    {
      return 0;
    }

    if ([a1 format] != 2053)
    {
      convertToFullFloatPixelBuffer_cold_1();
    }

    v17 = [a1 baseAddress];
    [a1 region];
    v19 = v18;
    [a1 region];
    v21 = v20;
    v22 = [a1 bytesPerRow];
    [a1 region];
    v24 = -v23;
    [a1 region];
    v26 = (v17 + v22 * -v25 + 2 * v24);
    v27 = malloc_type_malloc(4 * a4 * a5, 0x100004052888210uLL);
    src.data = v26;
    src.height = v21;
    src.width = v19;
    src.rowBytes = v22;
    v29.data = v27;
    v29.height = a5;
    v29.width = a4;
    v29.rowBytes = 4 * a4;
    vImageConvert_Planar16FtoPlanarF(&src, &v29, 0);
    PixelBuffer = createPixelBuffer(a4, a5, 4 * a4, v27);
    free(v27);
    return PixelBuffer;
  }
}

CVPixelBufferRef createPixelBuffer(size_t a1, size_t a2, size_t a3, char *a4)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v19[0] = MEMORY[0x1E695E0F8];
  v8 = *MEMORY[0x1E6966130];
  v18[0] = *MEMORY[0x1E69660D8];
  v18[1] = v8;
  v19[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1278226534];
  pixelBuffer = 0;
  v9 = CVPixelBufferCreate(0, a1, a2, 0x4C303066u, [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2], &pixelBuffer);
  result = 0;
  if (!v9)
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    if (CVPixelBufferLockBaseAddress(pixelBuffer, 0))
    {
      goto LABEL_17;
    }

    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    if (BytesPerRow == a3)
    {
      memcpy(BaseAddress, a4, a3 * a2);
    }

    else if (BytesPerRow >= a3)
    {
      NSLog(&cfstr_CanTWorkWithAn.isa);
      CVPixelBufferRelease(pixelBuffer);
      pixelBuffer = 0;
    }

    else
    {
      v13 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      if (a2)
      {
        v14 = v13;
        v15 = 0;
        v16 = 1;
        do
        {
          memcpy(&BaseAddress[v15 * v14], &a4[v15 * a3], v14);
          v15 = v16++;
        }

        while (v15 < a2);
      }
    }

    if (CVPixelBufferUnlockBaseAddress(pixelBuffer, 0))
    {
LABEL_17:
      CVPixelBufferRelease(pixelBuffer);
      pixelBuffer = 0;
    }

    else
    {
LABEL_14:
      if (pixelBuffer && CVPixelBufferGetPixelFormatType(pixelBuffer) == 1278226534)
      {
        return pixelBuffer;
      }
    }

    createPixelBuffer_cold_1();
  }

  return result;
}

void appendAttrStr(NSMutableAttributedString *a1, NSString *a2)
{
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v5 = [v4 initWithString:a2 attributes:MEMORY[0x1E695E0F8]];
  [(NSMutableAttributedString *)a1 appendAttributedString:v5];
}

void appendAttrStrCode(NSMutableAttributedString *a1, NSString *a2)
{
  v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithMarkdownString:v3 options:0 baseURL:0 error:0];
  [(NSMutableAttributedString *)a1 appendAttributedString:v4];
}

void *iiGetter(void *a1)
{
  outValue = 0;
  object_getInstanceVariable(a1, "inputImage", &outValue);
  return outValue;
}

Ivar iiSetter(void *a1, uint64_t a2, void *a3)
{
  outValue = 0;
  object_getInstanceVariable(a1, "inputImage", &outValue);
  v5 = outValue;
  v6 = a3;
  return object_setInstanceVariable(a1, "inputImage", a3);
}

uint64_t objGetter(void *a1, SEL aSelector)
{
  v3 = NSStringFromSelector(aSelector);
  if ([(NSString *)v3 isEqualToString:@"parameterB"])
  {
    v4 = @"inputB";
  }

  else if ([(NSString *)v3 isEqualToString:@"parameterC"])
  {
    v4 = @"inputC";
  }

  else if ([(NSString *)v3 isEqualToString:@"underColorRemoval"])
  {
    v4 = @"inputUCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"grayComponentReplacement"])
  {
    v4 = @"inputGCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"textureImage"])
  {
    v4 = @"inputTexture";
  }

  else
  {
    v4 = [@"input" stringByAppendingString:{-[NSString stringByReplacingCharactersInRange:withString:](v3, "stringByReplacingCharactersInRange:withString:", 0, 1, -[NSString uppercaseString](-[NSString substringWithRange:](v3, "substringWithRange:", 0, 1), "uppercaseString"))}];
  }

  return [a1 valueForKey:v4];
}

uint64_t objSetter(void *a1, const char *a2, uint64_t a3)
{
  v5 = keyForSetter(a2);

  return [a1 setValue:a3 forKey:v5];
}

__CFString *keyForSetter(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  if ([(NSString *)v1 isEqualToString:@"setBackgroundImage:"])
  {
    return @"inputBackgroundImage";
  }

  if ([(NSString *)v1 isEqualToString:@"setMaskImage:"])
  {
    return @"inputMaskImage";
  }

  if ([(NSString *)v1 isEqualToString:@"setSmallImage:"])
  {
    return @"inputSmallImage";
  }

  if ([(NSString *)v1 isEqualToString:@"setTargetImage:"])
  {
    return @"inputTargetImage";
  }

  if ([(NSString *)v1 isEqualToString:@"setBacksideImage:"])
  {
    return @"inputBacksideImage";
  }

  if ([(NSString *)v1 isEqualToString:@"setShadingImage:"])
  {
    return @"inputShadingImage";
  }

  if ([(NSString *)v1 isEqualToString:@"setGradientImage:"])
  {
    return @"inputGradientImage";
  }

  if ([(NSString *)v1 isEqualToString:@"setPaletteImage:"])
  {
    return @"inputPaletteImage";
  }

  if ([(NSString *)v1 isEqualToString:@"setTextureImage:"])
  {
    return @"inputTexture";
  }

  if ([(NSString *)v1 isEqualToString:@"setParameterB:"])
  {
    return @"inputB";
  }

  if ([(NSString *)v1 isEqualToString:@"setParameterC:"])
  {
    return @"inputC";
  }

  if ([(NSString *)v1 isEqualToString:@"setUnderColorRemoval:"])
  {
    return @"inputUCR";
  }

  if ([(NSString *)v1 isEqualToString:@"setGrayComponentReplacement:"])
  {
    return @"inputGCR";
  }

  v3 = [(NSString *)v1 stringByReplacingCharactersInRange:0 withString:3, @"input"];
  v4 = [(NSString *)v3 length]- 1;

  return [(NSString *)v3 substringWithRange:0, v4];
}

float floatGetter(void *a1, SEL aSelector)
{
  v3 = NSStringFromSelector(aSelector);
  if ([(NSString *)v3 isEqualToString:@"parameterB"])
  {
    v4 = @"inputB";
  }

  else if ([(NSString *)v3 isEqualToString:@"parameterC"])
  {
    v4 = @"inputC";
  }

  else if ([(NSString *)v3 isEqualToString:@"underColorRemoval"])
  {
    v4 = @"inputUCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"grayComponentReplacement"])
  {
    v4 = @"inputGCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"textureImage"])
  {
    v4 = @"inputTexture";
  }

  else
  {
    v4 = [@"input" stringByAppendingString:{-[NSString stringByReplacingCharactersInRange:withString:](v3, "stringByReplacingCharactersInRange:withString:", 0, 1, -[NSString uppercaseString](-[NSString substringWithRange:](v3, "substringWithRange:", 0, 1), "uppercaseString"))}];
  }

  v5 = [a1 valueForKey:v4];
  if (!v5)
  {
    return NAN;
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return NAN;
  }

  [v6 floatValue];
  return result;
}

uint64_t floatSetter(void *a1, const char *a2)
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v5 = keyForSetter(a2);

  return [a1 setValue:v4 forKey:v5];
}

double pointGetter(void *a1, SEL aSelector)
{
  v3 = NSStringFromSelector(aSelector);
  if ([(NSString *)v3 isEqualToString:@"parameterB"])
  {
    v4 = @"inputB";
  }

  else if ([(NSString *)v3 isEqualToString:@"parameterC"])
  {
    v4 = @"inputC";
  }

  else if ([(NSString *)v3 isEqualToString:@"underColorRemoval"])
  {
    v4 = @"inputUCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"grayComponentReplacement"])
  {
    v4 = @"inputGCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"textureImage"])
  {
    v4 = @"inputTexture";
  }

  else
  {
    v4 = [@"input" stringByAppendingString:{-[NSString stringByReplacingCharactersInRange:withString:](v3, "stringByReplacingCharactersInRange:withString:", 0, 1, -[NSString uppercaseString](-[NSString substringWithRange:](v3, "substringWithRange:", 0, 1), "uppercaseString"))}];
  }

  v5 = [a1 valueForKey:v4];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 CGPointValue];
      return v8;
    }
  }

  return v6;
}

uint64_t pointSetter(void *a1, const char *a2)
{
  v4 = [CIVector vectorWithCGPoint:?];
  v5 = keyForSetter(a2);

  return [a1 setValue:v4 forKey:v5];
}

uint64_t BOOLGetter(void *a1, SEL aSelector)
{
  v3 = NSStringFromSelector(aSelector);
  if ([(NSString *)v3 isEqualToString:@"parameterB"])
  {
    v4 = @"inputB";
  }

  else if ([(NSString *)v3 isEqualToString:@"parameterC"])
  {
    v4 = @"inputC";
  }

  else if ([(NSString *)v3 isEqualToString:@"underColorRemoval"])
  {
    v4 = @"inputUCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"grayComponentReplacement"])
  {
    v4 = @"inputGCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"textureImage"])
  {
    v4 = @"inputTexture";
  }

  else
  {
    v4 = [@"input" stringByAppendingString:{-[NSString stringByReplacingCharactersInRange:withString:](v3, "stringByReplacingCharactersInRange:withString:", 0, 1, -[NSString uppercaseString](-[NSString substringWithRange:](v3, "substringWithRange:", 0, 1), "uppercaseString"))}];
  }

  v5 = [a1 valueForKey:v4];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v6 BOOLValue];
}

uint64_t BOOLSetter(void *a1, const char *a2)
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v5 = keyForSetter(a2);

  return [a1 setValue:v4 forKey:v5];
}

double rectGetter(void *a1, SEL aSelector)
{
  v3 = NSStringFromSelector(aSelector);
  if ([(NSString *)v3 isEqualToString:@"parameterB"])
  {
    v4 = @"inputB";
  }

  else if ([(NSString *)v3 isEqualToString:@"parameterC"])
  {
    v4 = @"inputC";
  }

  else if ([(NSString *)v3 isEqualToString:@"underColorRemoval"])
  {
    v4 = @"inputUCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"grayComponentReplacement"])
  {
    v4 = @"inputGCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"textureImage"])
  {
    v4 = @"inputTexture";
  }

  else
  {
    v4 = [@"input" stringByAppendingString:{-[NSString stringByReplacingCharactersInRange:withString:](v3, "stringByReplacingCharactersInRange:withString:", 0, 1, -[NSString uppercaseString](-[NSString substringWithRange:](v3, "substringWithRange:", 0, 1), "uppercaseString"))}];
  }

  v5 = [a1 valueForKey:v4];
  if (!v5)
  {
    return *MEMORY[0x1E695F050];
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return *MEMORY[0x1E695F050];
  }

  [v6 CGRectValue];
  return result;
}

uint64_t rectSetter(void *a1, const char *a2)
{
  v4 = [CIVector vectorWithCGRect:?];
  v5 = keyForSetter(a2);

  return [a1 setValue:v4 forKey:v5];
}

uint64_t transformGetter@<X0>(SEL aSelector@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  v5 = NSStringFromSelector(aSelector);
  if ([(NSString *)v5 isEqualToString:@"parameterB"])
  {
    v6 = @"inputB";
  }

  else if ([(NSString *)v5 isEqualToString:@"parameterC"])
  {
    v6 = @"inputC";
  }

  else if ([(NSString *)v5 isEqualToString:@"underColorRemoval"])
  {
    v6 = @"inputUCR";
  }

  else if ([(NSString *)v5 isEqualToString:@"grayComponentReplacement"])
  {
    v6 = @"inputGCR";
  }

  else if ([(NSString *)v5 isEqualToString:@"textureImage"])
  {
    v6 = @"inputTexture";
  }

  else
  {
    v6 = [@"input" stringByAppendingString:{-[NSString stringByReplacingCharactersInRange:withString:](v5, "stringByReplacingCharactersInRange:withString:", 0, 1, -[NSString uppercaseString](-[NSString substringWithRange:](v5, "substringWithRange:", 0, 1), "uppercaseString"))}];
  }

  result = [a2 valueForKey:v6];
  v8 = MEMORY[0x1E695EFD0];
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *a3 = *MEMORY[0x1E695EFD0];
  *(a3 + 16) = v9;
  *(a3 + 32) = *(v8 + 32);
  if (result)
  {
    v10 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 objCType];
      if (!strcmp(v11, "{CGAffineTransform=dddddd}") || (result = strcmp(v11, "{?=dddddd}"), !result))
      {

        return [v10 getValue:a3 size:48];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        result = [v10 transformStruct];
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
      }

      else
      {
        objc_opt_class();
        result = objc_opt_isKindOfClass();
        if (result)
        {
          result = [v10 count];
          if (result == 6)
          {
            [objc_msgSend(v10 objectAtIndex:{0), "doubleValue"}];
            *a3 = v12;
            [objc_msgSend(v10 objectAtIndex:{1), "doubleValue"}];
            *(a3 + 8) = v13;
            [objc_msgSend(v10 objectAtIndex:{2), "doubleValue"}];
            *(a3 + 16) = v14;
            [objc_msgSend(v10 objectAtIndex:{3), "doubleValue"}];
            *(a3 + 24) = v15;
            [objc_msgSend(v10 objectAtIndex:{4), "doubleValue"}];
            *(a3 + 32) = v16;
            result = [objc_msgSend(v10 objectAtIndex:{5), "doubleValue"}];
            *(a3 + 40) = v17;
          }
        }
      }
    }
  }

  return result;
}

uint64_t transformSetter(void *a1, const char *a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696B098] valueWithBytes:a3 objCType:"{CGAffineTransform=dddddd}"];
  v6 = keyForSetter(a2);

  return [a1 setValue:v5 forKey:v6];
}

uint64_t intGetter(void *a1, SEL aSelector)
{
  v3 = NSStringFromSelector(aSelector);
  if ([(NSString *)v3 isEqualToString:@"parameterB"])
  {
    v4 = @"inputB";
  }

  else if ([(NSString *)v3 isEqualToString:@"parameterC"])
  {
    v4 = @"inputC";
  }

  else if ([(NSString *)v3 isEqualToString:@"underColorRemoval"])
  {
    v4 = @"inputUCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"grayComponentReplacement"])
  {
    v4 = @"inputGCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"textureImage"])
  {
    v4 = @"inputTexture";
  }

  else
  {
    v4 = [@"input" stringByAppendingString:{-[NSString stringByReplacingCharactersInRange:withString:](v3, "stringByReplacingCharactersInRange:withString:", 0, 1, -[NSString uppercaseString](-[NSString substringWithRange:](v3, "substringWithRange:", 0, 1), "uppercaseString"))}];
  }

  v5 = [a1 valueForKey:v4];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v6 integerValue];
}

uint64_t intSetter(void *a1, const char *a2)
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v5 = keyForSetter(a2);

  return [a1 setValue:v4 forKey:v5];
}

uint64_t uintGetter(void *a1, SEL aSelector)
{
  v3 = NSStringFromSelector(aSelector);
  if ([(NSString *)v3 isEqualToString:@"parameterB"])
  {
    v4 = @"inputB";
  }

  else if ([(NSString *)v3 isEqualToString:@"parameterC"])
  {
    v4 = @"inputC";
  }

  else if ([(NSString *)v3 isEqualToString:@"underColorRemoval"])
  {
    v4 = @"inputUCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"grayComponentReplacement"])
  {
    v4 = @"inputGCR";
  }

  else if ([(NSString *)v3 isEqualToString:@"textureImage"])
  {
    v4 = @"inputTexture";
  }

  else
  {
    v4 = [@"input" stringByAppendingString:{-[NSString stringByReplacingCharactersInRange:withString:](v3, "stringByReplacingCharactersInRange:withString:", 0, 1, -[NSString uppercaseString](-[NSString substringWithRange:](v3, "substringWithRange:", 0, 1), "uppercaseString"))}];
  }

  v5 = [a1 valueForKey:v4];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v6 unsignedIntegerValue];
}

uint64_t uintSetter(void *a1, const char *a2)
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v5 = keyForSetter(a2);

  return [a1 setValue:v4 forKey:v5];
}

const char *__enableFilterInterposing_block_invoke()
{
  result = getenv("CI_ENABLE_FILTER_INTERPOSING");
  if (result)
  {
    result = atoi(result);
    enableFilterInterposing_enableFilterposing = result != 0;
  }

  return result;
}

uint64_t register_more_builtins(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (register_more_builtins(void({block_pointer})(NSString *))::onceToken != -1)
  {
    register_more_builtins();
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = register_more_builtins(void({block_pointer})(NSString *))::moreList;
  result = [register_more_builtins(void({block_pointer})(NSString *))::moreList countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(a1 + 16))(a1, *(*(&v7 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t bundleForCIFilter(void)
{
  {
    bundleForCIFilter(void)::b = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  }

  return bundleForCIFilter(void)::b;
}

uint64_t classNameIsSystemFilter(NSString *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZL23classNameIsSystemFilterP8NSString_block_invoke;
  v3[3] = &unk_1E75C2B40;
  v3[4] = a1;
  v3[5] = &v4;
  register_more_builtins(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_19CD10190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t classIsBuiltinFilter(objc_class *a1)
{
  result = [(objc_class *)a1 isSubclassOfClass:objc_opt_class()];
  if (result)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
    return v3 == bundleForCIFilter();
  }

  return result;
}

void sub_19CD103F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t classIsSystemFilter(objc_class *a1)
{
  result = [(objc_class *)a1 isSubclassOfClass:objc_opt_class()];
  if (result)
  {
    v3 = NSStringFromClass(a1);

    return classNameIsSystemFilter(v3);
  }

  return result;
}

void ___ZL22register_more_builtinsU13block_pointerFvP8NSStringE_block_invoke()
{
  v77[3] = *MEMORY[0x1E69E9840];
  v0 = ci_signpost_log_filter();
  if (os_signpost_enabled(v0))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LoadMoreFilters", &unk_19CFBCBAE, buf, 2u);
  }

  v1 = [MEMORY[0x1E696AC08] defaultManager];
  has_internal_content = os_variant_has_internal_content();
  v3 = getenv("CI_FILTERS_DIR");
  v4 = v3;
  if (!v3 || *v3 != 48 || v3[1])
  {
    obj = [MEMORY[0x1E695DF70] array];
    v5 = *MEMORY[0x1E695DBA0];
    v77[0] = *MEMORY[0x1E695DC30];
    v77[1] = v5;
    v77[2] = *MEMORY[0x1E695DBC8];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];
    if (((v4 != 0) & has_internal_content) == 1)
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v7 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{v4), "componentsSeparatedByString:", @", "}];
      v8 = [v7 countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v8)
      {
        v9 = *v68;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v68 != v9)
            {
              objc_enumerationMutation(v7);
            }

            [obj addObjectsFromArray:{objc_msgSend(v1, "contentsOfDirectoryAtURL:includingPropertiesForKeys:options:error:", objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:isDirectory:", *(*(&v67 + 1) + 8 * i), 1), v6, 7, 0)}];
          }

          v8 = [v7 countByEnumeratingWithState:&v67 objects:v76 count:16];
        }

        while (v8);
      }
    }

    [obj addObjectsFromArray:{objc_msgSend(v1, "contentsOfDirectoryAtURL:includingPropertiesForKeys:options:error:", objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:isDirectory:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "/System/Library/CoreImage"), 1), v6, 7, 0)}];
    if (has_internal_content)
    {
      v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(MEMORY[0x1E696AEC0] isDirectory:{"stringWithUTF8String:", "/AppleInternal/Library/CoreImage"), 1}];
      if (v11)
      {
        [obj addObjectsFromArray:{objc_msgSend(v1, "contentsOfDirectoryAtURL:includingPropertiesForKeys:options:error:", v11, v6, 7, 0)}];
      }
    }

    register_more_builtins(void({block_pointer})(NSString *))::moreList = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = [MEMORY[0x1E695DF70] array];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v13 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v13)
    {
      v14 = *v64;
      v40 = *v64;
      v41 = v12;
      do
      {
        v15 = 0;
        v42 = v13;
        do
        {
          if (*v64 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v63 + 1) + 8 * v15);
          if ([objc_msgSend(v16 "pathExtension")])
          {
            v17 = [v16 lastPathComponent];
            if ([v12 containsObject:v17])
            {
              NSLog(&cfstr_AFilterBundleW.isa, [v16 path]);
            }

            else
            {
              [v12 addObject:v17];
              v18 = ci_signpost_log_filter();
              if (v16 + 1 >= 2)
              {
                v35 = v18;
                if (os_signpost_enabled(v18))
                {
                  v36 = [objc_msgSend(v16 "lastPathComponent")];
                  *buf = 136446210;
                  v74 = v36;
                  _os_signpost_emit_with_name_impl(&dword_19CC36000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v16, "LoadFilter", "%{public}s", buf, 0xCu);
                }
              }

              v43 = v15;
              v58[0] = MEMORY[0x1E69E9820];
              v58[1] = 3221225472;
              v59 = ___ZL22register_more_builtinsU13block_pointerFvP8NSStringE_block_invoke_1138;
              v60 = &unk_1E75C2B18;
              v61 = v16;
              v62 = v16;
              v19 = [MEMORY[0x1E696AAE8] bundleWithURL:v16];
              v20 = [v19 objectForInfoDictionaryKey:@"CIFilterList"];
              if ([v20 count])
              {
                v56 = 0u;
                v57 = 0u;
                v54 = 0u;
                v55 = 0u;
                v21 = [v20 countByEnumeratingWithState:&v54 objects:v72 count:16];
                if (v21)
                {
                  v22 = *v55;
                  do
                  {
                    for (j = 0; j != v21; ++j)
                    {
                      if (*v55 != v22)
                      {
                        objc_enumerationMutation(v20);
                      }

                      v24 = *(*(&v54 + 1) + 8 * j);
                      if (([register_more_builtins(void({block_pointer})(NSString *))::moreList containsObject:v24] & 1) != 0 || NSClassFromString(v24))
                      {
                        NSLog(&cfstr_TheFilterInHas.isa, v24, [v16 path]);
                      }
                    }

                    v21 = [v20 countByEnumeratingWithState:&v54 objects:v72 count:16];
                  }

                  while (v21);
                }

                v25 = ci_signpost_log_filter();
                if (v16 + 1 >= 2)
                {
                  v37 = v25;
                  if (os_signpost_enabled(v25))
                  {
                    v38 = [objc_msgSend(v16 "lastPathComponent")];
                    *buf = 136446210;
                    v74 = v38;
                    _os_signpost_emit_with_name_impl(&dword_19CC36000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v16, "BundleLoad", "%{public}s", buf, 0xCu);
                  }
                }

                v49[0] = MEMORY[0x1E69E9820];
                v49[1] = 3221225472;
                v50 = ___ZL22register_more_builtinsU13block_pointerFvP8NSStringE_block_invoke_1145;
                v51 = &unk_1E75C2B18;
                v52 = v16;
                v53 = v16;
                v26 = [objc_msgSend(v19 "executablePath")];
                v27 = v26;
                if (v26 && !dlopen(v26, 1))
                {
                  v28 = dlerror();
                  v29 = "";
                  if (v28)
                  {
                    v29 = v28;
                  }

                  NSLog(&cfstr_TheExecutableF.isa, v27, v29);
                }

                v50(v49);
                v47 = 0u;
                v48 = 0u;
                v45 = 0u;
                v46 = 0u;
                v30 = [v20 countByEnumeratingWithState:&v45 objects:v71 count:16];
                if (v30)
                {
                  v31 = *v46;
                  do
                  {
                    for (k = 0; k != v30; ++k)
                    {
                      if (*v46 != v31)
                      {
                        objc_enumerationMutation(v20);
                      }

                      v33 = *(*(&v45 + 1) + 8 * k);
                      v34 = NSClassFromString(v33);
                      if ([register_more_builtins(void({block_pointer})(NSString *))::moreList containsObject:v33])
                      {
                        NSLog(&cfstr_TheFilterInThe.isa, v33, [v16 path]);
                      }

                      else if (v34)
                      {
                        if (([(objc_class *)v34 isSubclassOfClass:objc_opt_class()]& 1) != 0)
                        {
                          [register_more_builtins(void({block_pointer})(NSString *))::moreList addObject:v33];
                        }

                        else
                        {
                          NSLog(&cfstr_TheFilterInThe_0.isa, v33, [v16 path]);
                        }
                      }

                      else
                      {
                        NSLog(&cfstr_TheFilterIsNot.isa, v33, [v16 path]);
                      }
                    }

                    v30 = [v20 countByEnumeratingWithState:&v45 objects:v71 count:16];
                  }

                  while (v30);
                }
              }

              v59(v58);
              v12 = v41;
              v13 = v42;
              v14 = v40;
              v15 = v43;
            }
          }

          ++v15;
        }

        while (v15 != v13);
        v39 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
        v13 = v39;
      }

      while (v39);
    }
  }

  ___ZL22register_more_builtinsU13block_pointerFvP8NSStringE_block_invoke_1121();
}

void ___ZL22register_more_builtinsU13block_pointerFvP8NSStringE_block_invoke_1121()
{
  v0 = ci_signpost_log_filter();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "LoadMoreFilters", &unk_19CFBCBAE, v1, 2u);
  }
}

void ___ZL22register_more_builtinsU13block_pointerFvP8NSStringE_block_invoke_1138(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_filter();
  v3 = *(a1 + 40);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      v5 = [objc_msgSend(*(a1 + 32) "lastPathComponent")];
      v6 = 136446210;
      v7 = v5;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "LoadFilter", "%{public}s", &v6, 0xCu);
    }
  }
}

void ___ZL22register_more_builtinsU13block_pointerFvP8NSStringE_block_invoke_1145(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_filter();
  v3 = *(a1 + 40);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      v5 = [objc_msgSend(*(a1 + 32) "lastPathComponent")];
      v6 = 136446210;
      v7 = v5;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "BundleLoad", "%{public}s", &v6, 0xCu);
    }
  }
}

uint64_t ___ZL23classNameIsSystemFilterP8NSString_block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) isEqualToString:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

double CI::sw_flashColor(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v3 + 80);
  v17 = *(v3 + 104);
  v18 = (a3 + 16 * v17);
  v19 = (a2 + (v17 << 6));
  if (*(v3 + 112) == 5)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v3 + 128);
  v22 = (a3 + 16 * v21);
  v23 = (a2 + (v21 << 6));
  if (*(v3 + 136) == 5)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v3 + 160);
  v26 = *(v3 + 152);
  v27 = (a3 + 16 * v26);
  v28 = (a2 + (v26 << 6));
  if (v25 == 5)
  {
    v28 = v27;
  }

  v47 = *v7;
  v48 = *v11;
  v43 = *v24;
  v44 = *v20;
  v45 = *v28;
  v46 = *(a2 + (v16 << 6));
  v29 = vsub_f32(*CI::getDC(a1), *v15);
  v30 = vmul_f32(v29, v29);
  v31 = vadd_f32(v30, vdup_lane_s32(v30, 1));
  v32 = 1.0 - vmuls_lane_f32(sqrtf(vaddv_f32(v30)), v43, 2);
  if (v32 <= 1.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = 1.0;
  }

  _NF = v32 < 0.0;
  v35 = 0;
  if (_NF)
  {
    v33 = 0.0;
  }

  v36 = *(&v44 + 3);
  if (*&v44 <= *(&v44 + 3))
  {
    v36 = *&v44;
  }

  if (*&v44 >= 0.0)
  {
    *v35.i32 = v36;
  }

  *v35.i32 = *(&v45 + 1) + (*v35.i32 * *&v45);
  v37 = vmaxnmq_f32(vmulq_n_f32(vaddq_f32(vdupq_lane_s32(v35, 0), vdivq_f32(vmulq_lane_f32(v46, *v43.f32, 1), vdupq_lane_s32(v31, 0))), v33), 0);
  __asm { FMOV            V3.4S, #1.0 }

  *&result = vmlaq_laneq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v47, vminnmq_f32(v37, _Q3)), 0), _Q3), 1.0 - v43.f32[3]), v48, v43, 3).u64[0];
  return result;
}

float32x2_t CI::sw_flashGeom(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vsub_f32(*CI::getDC(a1), *v7);
  v9 = vmul_f32(v8, v8);
  v9.f32[0] = sqrtf(vaddv_f32(v9));
  return vadd_f32(vdiv_f32(vmul_f32(v8, vdup_n_s32(0x42C80000u)), vdup_lane_s32(v9, 0)), 0x4300000043000000);
}

float CI::sw_disparityRefinementPreprocessing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v3 + 112);
  v21 = *(v3 + 104);
  v22 = (a3 + 16 * v21);
  v23 = (a2 + (v21 << 6));
  if (v20 == 5)
  {
    v23 = v22;
  }

  v32 = *v23;
  v33 = *v19;
  v24 = *v11;
  v25 = *v7;
  v26 = *v7 - *v15;
  v27 = powf(fmaxf(vabds_f32(*v7, *v15), 0.0001), COERCE_FLOAT(HIDWORD(*v19)));
  v28 = expf(-v27 / *(&v33 + 2)) * *&v33;
  if (v28 <= *&v32)
  {
    v29 = v28;
  }

  else
  {
    v29 = *&v32;
  }

  if (v28 >= *(&v33 + 3))
  {
    v30 = v29;
  }

  else
  {
    v30 = *(&v33 + 3);
  }

  result = v25 - (v26 * v30);
  if (v24 <= *(&v32 + 1))
  {
    return v25;
  }

  return result;
}

float CI::sw_disparityRefinementPreprocessingPow2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v3 + 112);
  v21 = *(v3 + 104);
  v22 = (a3 + 16 * v21);
  v23 = (a2 + (v21 << 6));
  if (v20 == 5)
  {
    v23 = v22;
  }

  v32 = *v19;
  v33 = *v23;
  v24 = *v11;
  v25 = *v7;
  v26 = *v7 - *v15;
  v27 = fmaxf(vabds_f32(*v7, *v15), 0.0001);
  v28 = expf(-(v27 * v27) / COERCE_FLOAT(*(v19 + 1))) * *&v32;
  if (v28 <= *&v33)
  {
    v29 = v28;
  }

  else
  {
    v29 = *&v33;
  }

  if (v28 >= *(&v32 + 3))
  {
    v30 = v29;
  }

  else
  {
    v30 = *(&v32 + 3);
  }

  result = v25 - (v26 * v30);
  if (v24 <= *(&v33 + 1))
  {
    return v25;
  }

  return result;
}

double CI::sw_fusionDelta(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t _Q4)
{
  v8 = *(a1 + 40);
  v9 = *(v8 + 8);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (*(v8 + 16) == 5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(a2 + (*(v8 + 32) << 6));
  v14 = *(a2 + (*(v8 + 56) << 6));
  v15 = vmla_n_f32(vzip2_s32(*v13.i8, *v14.i8), vzip1_s32(*v13.i8, *v14.i8), COERCE_FLOAT(*v12));
  __asm { FMOV            V4.2S, #1.0 }

  *a7.f32 = vbic_s8(vbsl_s8(vcgt_f32(v15, *_Q4.f32), *_Q4.f32, v15), vcltz_f32(v15));
  *a7.f32 = vsub_f32(*a7.f32, vdup_lane_s32(*a7.f32, 1));
  _Q4.i64[0] = 0;
  v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a7, _Q4), 0), v13, v14);
  *v20.i32 = (*(a2 + (*(v8 + 80) << 6)) * fabsf(*&v20.i32[2])) * a7.f32[0];
  *&result = vdupq_lane_s32(*v20.i8, 0).u64[0];
  return result;
}

double CI::sw_fusionTwoImages(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, float32x4_t a10)
{
  v10 = *(a1 + 40);
  v11 = *(v10 + 8);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (*(v10 + 16) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v10 + 32);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (*(v10 + 40) == 5)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(a2 + (*(v10 + 56) << 6));
  v20 = *(a2 + (*(v10 + 80) << 6));
  v21 = *v18;
  *a10.f32 = vmla_n_f32(vzip2_s32(*v19.i8, *v20.i8), vzip1_s32(*v19.i8, *v20.i8), COERCE_FLOAT(*v18));
  __asm { FMOV            V7.2S, #1.0 }

  v27 = vbic_s8(vbsl_s8(vcgt_f32(*a10.f32, _D7), _D7, *a10.f32), vcltz_f32(*a10.f32));
  a10.i64[0] = 0;
  v21.f32[0] = (1.0 - (fmaxf(*v14 - COERCE_FLOAT(*v18), 0.0) * *(a2 + (*(v10 + 104) << 6)))) * vsub_f32(v27, vdup_lane_s32(v27, 1)).f32[0];
  v28 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v21, a10), 0), v19, v20);
  *v28.i32 = v21.f32[0] * (*(a2 + (*(v10 + 128) << 6)) * fabsf(*&v28.i32[2]));
  *&result = vdupq_lane_s32(*v28.i8, 0).u64[0];
  return result;
}

double sizeForStringWithAttributes(CFStringRef str, CFDictionaryRef attributes)
{
  v2 = CFAttributedStringCreate(0, str, attributes);
  v3 = CTFramesetterCreateWithAttributedString(v2);
  v6.length = CFAttributedStringGetLength(v2);
  v7.width = 1.79769313e308;
  v6.location = 0;
  v7.height = 1.79769313e308;
  *&v4 = *&CTFramesetterSuggestFrameSizeWithConstraints(v3, v6, 0, v7, 0);
  CFRelease(v3);
  CFRelease(v2);
  return v4;
}

CGColorRef CGColorCreateWithHex(unint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  {
    CGColorCreateWithHex(unsigned long)::cs = CGColorSpaceCreateDeviceRGB();
  }

  v2.i64[0] = 255;
  v2.i64[1] = 255;
  v3 = vcvtq_f64_u64(vandq_s8(vshlq_u64(vdupq_n_s64(a1), xmmword_19CF26940), v2));
  v4.i64[0] = a1 >> 8;
  v4.i64[1] = a1;
  v5 = vandq_s8(v4, v2);
  v6 = vdupq_n_s64(0x406FE00000000000uLL);
  v8[0] = vdivq_f64(v3, v6);
  v8[1] = vdivq_f64(vcvtq_f64_u64(v5), v6);
  return CGColorCreate(CGColorCreateWithHex(unsigned long)::cs, v8);
}

void CGContextDrawAttributedString(CGContext *a1, CFAttributedStringRef attrString, CGRect a3)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = CTFramesetterCreateWithAttributedString(attrString);
  Length = CFAttributedStringGetLength(attrString);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v11 = CGPathCreateWithRect(v15, 0);
  v14.location = 0;
  v14.length = Length;
  Frame = CTFramesetterCreateFrame(v9, v14, v11, 0);
  CTFrameDraw(Frame, a1);
  CFRelease(v9);
  CFRelease(Frame);

  CFRelease(v11);
}

void patternCallback(void *a1, CGContextRef c)
{
  CGContextSetGrayFillColor(c, 1.0, 1.0);
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 8.0;
  v8.size.height = 8.0;
  CGContextFillRect(c, v8);
  v9.origin.x = 8.0;
  v9.origin.y = 8.0;
  v9.size.width = 8.0;
  v9.size.height = 8.0;
  CGContextFillRect(c, v9);
  CGContextSetGrayFillColor(c, 0.8, 1.0);
  v10.origin.x = 8.0;
  v10.origin.y = 0.0;
  v10.size.width = 8.0;
  v10.size.height = 8.0;
  CGContextFillRect(c, v10);
  v3 = 0;
  v4 = 8.0;
  v5 = 8.0;
  v6 = 8.0;

  CGContextFillRect(c, *&v3);
}

CGFloat CGCubicSplineGetControlPoints(CGPoint a1, CGPoint a2, CGPoint a3, CGPoint a4, CGPoint *a5, CGPoint *a6)
{
  y = a4.y;
  v38 = a2.y;
  x = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  v11 = a2.y;
  v12 = a2.x - a1.x;
  v13 = a2.x;
  v40 = a2.x;
  v14 = a2.y - a1.y;
  v15 = hypot(a2.x - a1.x, a2.y - a1.y);
  v39 = v10;
  v35 = v14 / v15;
  v36 = v12 / v15;
  v16 = hypot(v10 - v13, v9 - v11);
  v17 = (v10 - v13) / v16;
  v18 = x - v10;
  v19 = (v9 - v11) / v16;
  v20 = hypot(v18, y - v9);
  v21 = v18 / v20;
  v22 = (y - v9) / v20;
  v23 = fabs(v17);
  v24 = fabs(v21);
  if (v23 >= v24)
  {
    v25 = v21;
  }

  else
  {
    v25 = (v10 - v13) / v16;
  }

  if (v23 >= v24)
  {
    v26 = v22;
  }

  else
  {
    v26 = v19;
  }

  v27 = fabs(v36);
  if (v27 >= v23)
  {
    v28 = v17;
  }

  else
  {
    v28 = v36;
  }

  if (v27 >= v23)
  {
    v29 = v19;
  }

  else
  {
    v29 = v35;
  }

  v30 = fmin(v16 / 3.0, vabdd_f64(v38, v9));
  v31 = hypot(v25, v26);
  a6->x = v39 - v30 * (v25 / v31);
  a6->y = v9 - v30 * (v26 / v31);
  v32 = hypot(v28, v29);
  v33 = v40 + v30 * (v28 / v32);
  result = v38 + v30 * (v29 / v32);
  a5->x = v33;
  a5->y = result;
  return result;
}

CIImage *blurImage(CIImage *a1, double a2, double a3)
{
  v165 = *MEMORY[0x1E69E9840];
  v6 = dyld_program_sdk_at_least();
  if (!a1)
  {
    return a1;
  }

  v7 = v6;
  v8 = fmin(a2, 10000.0);
  v9 = fmin(a3, 10000.0);
  v140 = 0;
  v141 = 0;
  v10 = v9 * v9;
  v11 = v8 * v8;
  v109 = v9;
  v111 = v8;
  v116 = 1.0;
  v113 = a1;
  if (fmax(v8, v9) < 3.0)
  {
    v114 = v9 * v9;
    v132 = 1.0;
    goto LABEL_89;
  }

  v116 = 1.0;
  v12 = 0.0625;
  v117 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v119 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  v132 = 1.0;
LABEL_5:
  v115 = v10;
  v13 = v12;
  v10 = (v10 + -9.9225) * v12;
  while (1)
  {
    v14 = (v11 + -9.9225) * v13;
    if (v14 >= 0.358099622)
    {
      if (v7)
      {
        [(CIImage *)a1 extent];
        x = v166.origin.x;
        y = v166.origin.y;
        width = v166.size.width;
        height = v166.size.height;
        if (CGRectIsInfinite(v166))
        {
          *&v137.var0 = v119;
          *&v137.var2 = v117;
        }

        else
        {
          v170.origin.x = x;
          v170.origin.y = y;
          v170.size.width = width;
          v170.size.height = height;
          if (CGRectIsNull(v170))
          {
            *&v137.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
            v137.var2 = 0.0;
            v137.var3 = 0.0;
          }

          else
          {
            v137.var0 = x;
            v137.var1 = y;
            v137.var2 = width;
            v137.var3 = height;
          }
        }

        Rectangle::inset(&v137, -7.0, -0.0, &v138);
        if (fabs(v138.var0) == INFINITY || fabs(v138.var1) == INFINITY)
        {
          *&v139.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
          v139.var2 = 0.0;
          v139.var3 = 0.0;
        }

        else if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v138.var0, v119), vceqq_f64(*&v138.var2, v117))))))
        {
          v139.var0 = v138.var0 * 0.25;
          v139.var1 = v138.var1;
          v139.var2 = 0.25 * v138.var2;
          v139.var3 = v138.var3;
        }

        else
        {
          *&v139.var0 = v119;
          *&v139.var2 = v117;
        }

        Rectangle::integralize(&v139, 0.0001, &v164);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v164.a, v119), vceqq_f64(*&v164.c, v117))))))
        {
          c = v164.c;
          a = v164.a;
          b = v164.b;
          d = v164.d;
        }

        else
        {
          b = *(MEMORY[0x1E695F040] + 8);
          d = *(MEMORY[0x1E695F040] + 24);
          c = *(MEMORY[0x1E695F040] + 16);
          a = *MEMORY[0x1E695F040];
        }
      }

      else
      {
        [(CIImage *)a1 extent];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        CGAffineTransformMakeScale(&v164, 0.25, 1.0);
        v167.origin.x = v20;
        v167.origin.y = v22;
        v167.size.width = v24;
        v167.size.height = v26;
        v168 = CGRectApplyAffineTransform(v167, &v164);
        v169 = CGRectInset(v168, -4.0, 0.0);
        c = v169.size.width;
        a = v169.origin.x;
        b = v169.origin.y;
        d = v169.size.height;
      }

      v29 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianReduce4, *&v109, *&v111];
      v163[0] = a1;
      v163[1] = [CIVector vectorWithX:4.0 Y:1.0 Z:1.0 W:0.0];
      a1 = -[CIKernel applyWithExtent:roiCallback:arguments:](v29, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_35, [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:2], a, b, c, d);
      v132 = v132 * 4.0;
      v11 = v14;
      goto LABEL_23;
    }

    if (v10 < 0.358099622)
    {
      break;
    }

LABEL_23:
    if (v10 >= 0.358099622)
    {
      if (v7)
      {
        [(CIImage *)a1 extent];
        v30 = v171.origin.x;
        v31 = v171.origin.y;
        v32 = v171.size.width;
        v33 = v171.size.height;
        if (CGRectIsInfinite(v171))
        {
          *&v137.var0 = v119;
          *&v137.var2 = v117;
        }

        else
        {
          v175.origin.x = v30;
          v175.origin.y = v31;
          v175.size.width = v32;
          v175.size.height = v33;
          if (CGRectIsNull(v175))
          {
            *&v137.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
            v137.var2 = 0.0;
            v137.var3 = 0.0;
          }

          else
          {
            v137.var0 = v30;
            v137.var1 = v31;
            v137.var2 = v32;
            v137.var3 = v33;
          }
        }

        Rectangle::inset(&v137, -0.0, -7.0, &v138);
        if (fabs(v138.var0) == INFINITY || fabs(v138.var1) == INFINITY)
        {
          *&v139.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
          v139.var2 = 0.0;
          v139.var3 = 0.0;
        }

        else if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v138.var0, v119), vceqq_f64(*&v138.var2, v117))))))
        {
          v139.var0 = v138.var0;
          v139.var1 = v138.var1 * 0.25;
          v139.var2 = v138.var2;
          v139.var3 = vmuld_lane_f64(0.25, *&v138.var2, 1);
        }

        else
        {
          *&v139.var0 = v119;
          *&v139.var2 = v117;
        }

        Rectangle::integralize(&v139, 0.0001, &v164);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v164.a, v119), vceqq_f64(*&v164.c, v117))))))
        {
          v122 = v164.c;
          v125 = v164.a;
          v42 = v164.b;
          v43 = v164.d;
        }

        else
        {
          v42 = *(MEMORY[0x1E695F040] + 8);
          v43 = *(MEMORY[0x1E695F040] + 24);
          v122 = *(MEMORY[0x1E695F040] + 16);
          v125 = *MEMORY[0x1E695F040];
        }
      }

      else
      {
        [(CIImage *)a1 extent];
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        CGAffineTransformMakeScale(&v164, 1.0, 0.25);
        v172.origin.x = v35;
        v172.origin.y = v37;
        v172.size.width = v39;
        v172.size.height = v41;
        v173 = CGRectApplyAffineTransform(v172, &v164);
        v174 = CGRectInset(v173, 0.0, -4.0);
        v122 = v174.size.width;
        v125 = v174.origin.x;
        v42 = v174.origin.y;
        v43 = v174.size.height;
      }

      v44 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianReduce4, *&v109, *&v111];
      v162[0] = a1;
      v162[1] = [CIVector vectorWithX:1.0 Y:4.0 Z:0.0 W:1.0];
      a1 = -[CIKernel applyWithExtent:roiCallback:arguments:](v44, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_80, [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:2], v125, v42, v122, v43);
      v116 = v116 * 4.0;
      v12 = v13;
      goto LABEL_5;
    }
  }

  v45 = 0.25;
  v120 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v123 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  v118 = vdupq_n_s64(0x7FF0000000000000uLL);
  v46 = v115;
  while (2)
  {
    v114 = v46;
    v46 = (v46 + -3.0625) * v45;
LABEL_46:
    v47 = (v11 + -3.0625) * 0.25;
    if (v47 >= 0.358099622)
    {
      if (v7)
      {
        [(CIImage *)a1 extent];
        v48 = v176.origin.x;
        v49 = v176.origin.y;
        v50 = v176.size.width;
        v51 = v176.size.height;
        if (CGRectIsInfinite(v176))
        {
          *&v137.var0 = v123;
          *&v137.var2 = v120;
        }

        else
        {
          v180.origin.x = v48;
          v180.origin.y = v49;
          v180.size.width = v50;
          v180.size.height = v51;
          if (CGRectIsNull(v180))
          {
            *&v137.var0 = v118;
            v137.var2 = 0.0;
            v137.var3 = 0.0;
          }

          else
          {
            v137.var0 = v48;
            v137.var1 = v49;
            v137.var2 = v50;
            v137.var3 = v51;
          }
        }

        Rectangle::inset(&v137, -4.0, -0.0, &v138);
        if (fabs(v138.var0) == INFINITY || fabs(v138.var1) == INFINITY)
        {
          *&v139.var0 = v118;
          v139.var2 = 0.0;
          v139.var3 = 0.0;
        }

        else if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v138.var0, v123), vceqq_f64(*&v138.var2, v120))))))
        {
          v139.var0 = v138.var0 * 0.5;
          v139.var1 = v138.var1;
          v139.var2 = 0.5 * v138.var2;
          v139.var3 = v138.var3;
        }

        else
        {
          *&v139.var0 = v123;
          *&v139.var2 = v120;
        }

        Rectangle::integralize(&v139, 0.0001, &v164);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v164.a, v123), vceqq_f64(*&v164.c, v120))))))
        {
          v126 = v164.c;
          v128 = v164.a;
          v60 = v164.b;
          v61 = v164.d;
        }

        else
        {
          v60 = *(MEMORY[0x1E695F040] + 8);
          v61 = *(MEMORY[0x1E695F040] + 24);
          v126 = *(MEMORY[0x1E695F040] + 16);
          v128 = *MEMORY[0x1E695F040];
        }
      }

      else
      {
        [(CIImage *)a1 extent];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;
        CGAffineTransformMakeScale(&v164, 0.5, 1.0);
        v177.origin.x = v53;
        v177.origin.y = v55;
        v177.size.width = v57;
        v177.size.height = v59;
        v178 = CGRectApplyAffineTransform(v177, &v164);
        v179 = CGRectInset(v178, -3.0, 0.0);
        v126 = v179.size.width;
        v128 = v179.origin.x;
        v60 = v179.origin.y;
        v61 = v179.size.height;
      }

      v62 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianReduce2, *&v109, *&v111];
      v161[0] = a1;
      v161[1] = [CIVector vectorWithX:2.0 Y:1.0 Z:1.0 W:0.0];
      a1 = -[CIKernel applyWithExtent:roiCallback:arguments:](v62, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_82, [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:2], v128, v60, v126, v61);
      v132 = v132 + v132;
      v11 = v47;
LABEL_63:
      if (v46 >= 0.358099622)
      {
        if (v7)
        {
          [(CIImage *)a1 extent];
          v63 = v181.origin.x;
          v64 = v181.origin.y;
          v65 = v181.size.width;
          v66 = v181.size.height;
          if (CGRectIsInfinite(v181))
          {
            *&v137.var0 = v123;
            *&v137.var2 = v120;
          }

          else
          {
            v185.origin.x = v63;
            v185.origin.y = v64;
            v185.size.width = v65;
            v185.size.height = v66;
            if (CGRectIsNull(v185))
            {
              *&v137.var0 = v118;
              v137.var2 = 0.0;
              v137.var3 = 0.0;
            }

            else
            {
              v137.var0 = v63;
              v137.var1 = v64;
              v137.var2 = v65;
              v137.var3 = v66;
            }
          }

          Rectangle::inset(&v137, -0.0, -4.0, &v138);
          if (fabs(v138.var0) == INFINITY || fabs(v138.var1) == INFINITY)
          {
            *&v139.var0 = v118;
            v139.var2 = 0.0;
            v139.var3 = 0.0;
          }

          else if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v138.var0, v123), vceqq_f64(*&v138.var2, v120))))))
          {
            v139.var0 = v138.var0;
            v139.var1 = v138.var1 * 0.5;
            v139.var2 = v138.var2;
            v139.var3 = vmuld_lane_f64(0.5, *&v138.var2, 1);
          }

          else
          {
            *&v139.var0 = v123;
            *&v139.var2 = v120;
          }

          Rectangle::integralize(&v139, 0.0001, &v164);
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v164.a, v123), vceqq_f64(*&v164.c, v120))))))
          {
            v127 = v164.c;
            v129 = v164.a;
            v75 = v164.b;
            v76 = v164.d;
          }

          else
          {
            v75 = *(MEMORY[0x1E695F040] + 8);
            v76 = *(MEMORY[0x1E695F040] + 24);
            v127 = *(MEMORY[0x1E695F040] + 16);
            v129 = *MEMORY[0x1E695F040];
          }
        }

        else
        {
          [(CIImage *)a1 extent];
          v68 = v67;
          v70 = v69;
          v72 = v71;
          v74 = v73;
          CGAffineTransformMakeScale(&v164, 1.0, 0.5);
          v182.origin.x = v68;
          v182.origin.y = v70;
          v182.size.width = v72;
          v182.size.height = v74;
          v183 = CGRectApplyAffineTransform(v182, &v164);
          v184 = CGRectInset(v183, 0.0, -3.0);
          v127 = v184.size.width;
          v129 = v184.origin.x;
          v75 = v184.origin.y;
          v76 = v184.size.height;
        }

        v77 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianReduce2, *&v109, *&v111];
        v160[0] = a1;
        v160[1] = [CIVector vectorWithX:1.0 Y:2.0 Z:0.0 W:1.0];
        a1 = -[CIKernel applyWithExtent:roiCallback:arguments:](v77, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_84, [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:2], v129, v75, v127, v76);
        v116 = v116 + v116;
        v45 = 0.25;
        continue;
      }

      goto LABEL_46;
    }

    break;
  }

  if (v46 >= 0.358099622)
  {
    goto LABEL_63;
  }

  if (v132 > 1.0)
  {
    v11 = v11 + -0.358098622;
  }

  if (v116 > 1.0)
  {
    v114 = v114 + -0.358098622;
  }

LABEL_89:
  if (v11 <= 0.000001 || ((v78 = vcvtpd_s64_f64(v11 / 11.1111111), memset(&v164, 0, 40), (v130 = narrowBlurParameters(v11 / v78, &v164.a, &v141, &v140, v132 > 1.0)) != 0) ? (v79 = a1 == 0) : (v79 = 1), v79))
  {
    v80 = 0;
    goto LABEL_96;
  }

  v89 = [CIVector vectorWithX:v164.a Y:0.0 Z:v164.b W:0.0];
  v90 = [CIVector vectorWithX:v164.c Y:0.0 Z:v164.d W:0.0];
  v91 = [CIVector vectorWithX:v164.tx Y:0.0 Z:0.0 W:0.0];
  v80 = 0;
  v92 = v130;
  if (v130 > 4)
  {
    if (v130 > 6)
    {
      if (v130 == 7)
      {
        v93 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur15];
        v158[0] = a1;
        v158[1] = v89;
        v158[2] = v90;
        v158[3] = v141;
        v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:4];
      }

      else
      {
        v93 = 0;
        if (v130 != 9)
        {
          goto LABEL_132;
        }

        v95 = v91;
        v93 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur19];
        v159[0] = a1;
        v159[1] = v89;
        v159[2] = v90;
        v159[3] = v95;
        v159[4] = v141;
        v159[5] = v140;
        v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:6];
      }
    }

    else if (v130 == 5)
    {
      v93 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur11];
      v156[0] = a1;
      v156[1] = v89;
      v156[2] = v90;
      v156[3] = v141;
      v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:4];
    }

    else
    {
      v93 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur13];
      v157[0] = a1;
      v157[1] = [CIVector vectorWithX:1.0 Y:0.0];
      v157[2] = v141;
      v157[3] = v140;
      v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v157 count:4];
    }

LABEL_131:
    v80 = v94;
    v92 = v130;
    goto LABEL_132;
  }

  if (v130 > 2)
  {
    if (v130 == 3)
    {
      v93 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur7];
      v154[0] = a1;
      v154[1] = v89;
      v154[2] = v141;
      v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:3];
    }

    else
    {
      v93 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur9];
      v155[0] = a1;
      v155[1] = [CIVector vectorWithX:1.0 Y:0.0];
      v155[2] = v141;
      v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:3];
    }

    goto LABEL_131;
  }

  if (v130 == 1)
  {
    v93 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur3];
    v152[0] = a1;
    v152[1] = v89;
    v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:2];
    goto LABEL_131;
  }

  v93 = 0;
  if (v130 == 2)
  {
    v93 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur5];
    v153[0] = a1;
    v153[1] = [CIVector vectorWithX:1.0 Y:0.0];
    v153[2] = v141;
    v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:3];
    goto LABEL_131;
  }

LABEL_132:
  if (v78 >= 1)
  {
    v97 = -v92;
    v98 = MEMORY[0x1E69E9820];
    do
    {
      [(CIImage *)a1 extent:*&v109];
      v187 = CGRectInset(v186, v97, 0.0);
      v135[0] = v98;
      v135[1] = 3221225472;
      v135[2] = ___ZL9blurImageP7CIImagedd_block_invoke_5;
      v135[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v136 = v130;
      a1 = [(CIKernel *)v93 applyWithExtent:v135 roiCallback:v80 arguments:v187.origin.x, v187.origin.y, v187.size.width, v187.size.height];
      --v78;
    }

    while (v78);
  }

LABEL_96:
  if (v114 <= 0.000001)
  {
    goto LABEL_144;
  }

  v81 = vcvtpd_s64_f64(v114 / 11.1111111);
  memset(&v164, 0, 40);
  v131 = narrowBlurParameters(v114 / v81, &v164.a, &v141, &v140, v116 > 1.0);
  if (!v131 || a1 == 0)
  {
    goto LABEL_144;
  }

  v83 = [CIVector vectorWithX:0.0 Y:v164.a Z:0.0 W:v164.b];
  v84 = [CIVector vectorWithX:0.0 Y:v164.c Z:0.0 W:v164.d];
  v85 = [CIVector vectorWithX:0.0 Y:v164.tx Z:0.0 W:0.0];
  v86 = 0;
  v87 = v131;
  if (v131 > 4)
  {
    if (v131 > 6)
    {
      if (v131 == 7)
      {
        v86 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur15];
        v150[0] = a1;
        v150[1] = v83;
        v150[2] = v84;
        v150[3] = v141;
        v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:4];
      }

      else
      {
        if (v131 != 9)
        {
          goto LABEL_141;
        }

        v96 = v85;
        v86 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur19];
        v151[0] = a1;
        v151[1] = v83;
        v151[2] = v84;
        v151[3] = v96;
        v151[4] = v141;
        v151[5] = v140;
        v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:6];
      }
    }

    else if (v131 == 5)
    {
      v86 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur11];
      v148[0] = a1;
      v148[1] = v83;
      v148[2] = v84;
      v148[3] = v141;
      v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:4];
    }

    else
    {
      v86 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur13];
      v149[0] = a1;
      v149[1] = [CIVector vectorWithX:0.0 Y:1.0];
      v149[2] = v141;
      v149[3] = v140;
      v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:4];
    }

LABEL_140:
    v80 = v88;
    v87 = v131;
    goto LABEL_141;
  }

  if (v131 > 2)
  {
    if (v131 == 3)
    {
      v86 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur7];
      v146[0] = a1;
      v146[1] = v83;
      v146[2] = v141;
      v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v146 count:3];
    }

    else
    {
      v86 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur9];
      v147[0] = a1;
      v147[1] = [CIVector vectorWithX:0.0 Y:1.0];
      v147[2] = v141;
      v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:3];
    }

    goto LABEL_140;
  }

  if (v131 == 1)
  {
    v86 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur3];
    v144[0] = a1;
    v144[1] = v83;
    v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v144 count:2];
    goto LABEL_140;
  }

  if (v131 == 2)
  {
    v86 = [CIKernel kernelWithInternalRepresentation:&CI::_gaussianBlur5];
    v145[0] = a1;
    v145[1] = [CIVector vectorWithX:0.0 Y:1.0];
    v145[2] = v141;
    v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v145 count:3];
    goto LABEL_140;
  }

LABEL_141:
  if (v81 >= 1)
  {
    v99 = -v87;
    v100 = MEMORY[0x1E69E9820];
    do
    {
      [(CIImage *)a1 extent:*&v109];
      v189 = CGRectInset(v188, 0.0, v99);
      v133[0] = v100;
      v133[1] = 3221225472;
      v133[2] = ___ZL9blurImageP7CIImagedd_block_invoke_6;
      v133[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v134 = v131;
      a1 = [(CIKernel *)v86 applyWithExtent:v133 roiCallback:v80 arguments:v189.origin.x, v189.origin.y, v189.size.width, v189.size.height];
      --v81;
    }

    while (v81);
  }

LABEL_144:
  if (v132 > 1.0 || v116 > 1.0)
  {
    v142 = @"inputScale";
    v143 = [CIVector vectorWithX:v132 Y:v116, *&v109, *&v111];
    a1 = -[CIImage imageByApplyingFilter:withInputParameters:](a1, "imageByApplyingFilter:withInputParameters:", @"CISoftCubicUpsample", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1]);
  }

  [(CIImage *)v113 extent:*&v109];
  v101 = v190.origin.x;
  v102 = v190.origin.y;
  v103 = v190.size.width;
  v104 = v190.size.height;
  if (CGRectIsInfinite(v190))
  {
    *&v138.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v138.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v191.origin.x = v101;
    v191.origin.y = v102;
    v191.size.width = v103;
    v191.size.height = v104;
    if (CGRectIsNull(v191))
    {
      *&v138.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v138.var2 = 0.0;
      v138.var3 = 0.0;
    }

    else
    {
      v138.var0 = v101;
      v138.var1 = v102;
      v138.var2 = v103;
      v138.var3 = v104;
    }
  }

  Rectangle::inset(&v138, v112 * -3.0, v110 * -3.0, &v139);
  Rectangle::integralize(&v139, 0.0001, &v164);
  if (v7)
  {
    if (v164.a != -8.98846567e307)
    {
      v106 = v164.c;
      v107 = v164.d;
      v105 = v164.b;
      return [(CIImage *)a1 imageByCroppingToRect:v164.a, v105, v106, v107];
    }

    v105 = v164.b;
    v106 = v164.c;
    v107 = v164.d;
    if (v164.b != -8.98846567e307 || v164.c != 1.79769313e308 || v164.d != 1.79769313e308)
    {
      return [(CIImage *)a1 imageByCroppingToRect:v164.a, v105, v106, v107];
    }
  }

  return a1;
}

double ___ZL9blurImageP7CIImagedd_block_invoke(double a1, CGFloat a2, double a3, CGFloat a4)
{
  v7 = a1;
  if (!CGRectIsEmpty(*&a1))
  {
    v9.origin.x = v7 * 4.0 + -7.0;
    v9.size.width = a3 * 4.0 + 14.0;
    v9.origin.y = a2;
    v9.size.height = a4;
    *&v7 = CGRectIntegral(v9);
  }

  return v7;
}

double ___ZL9blurImageP7CIImagedd_block_invoke_2(double a1, double a2, CGFloat a3, double a4)
{
  v7 = a1;
  if (!CGRectIsEmpty(*&a1))
  {
    v9.origin.y = a2 * 4.0 + -7.0;
    v9.size.height = a4 * 4.0 + 14.0;
    v9.origin.x = v7;
    v9.size.width = a3;
    *&v7 = CGRectIntegral(v9);
  }

  return v7;
}

double ___ZL9blurImageP7CIImagedd_block_invoke_3(double a1, CGFloat a2, double a3, CGFloat a4)
{
  v7 = a1;
  if (!CGRectIsEmpty(*&a1))
  {
    v9.origin.x = v7 * 2.0 + -4.0;
    v9.size.width = a3 * 2.0 + 8.0;
    v9.origin.y = a2;
    v9.size.height = a4;
    *&v7 = CGRectIntegral(v9);
  }

  return v7;
}

double ___ZL9blurImageP7CIImagedd_block_invoke_4(double a1, double a2, CGFloat a3, double a4)
{
  v7 = a1;
  if (!CGRectIsEmpty(*&a1))
  {
    v9.origin.y = a2 * 2.0 + -4.0;
    v9.size.height = a4 * 2.0 + 8.0;
    v9.origin.x = v7;
    v9.size.width = a3;
    *&v7 = CGRectIntegral(v9);
  }

  return v7;
}

uint64_t narrowBlurParameters(double a1, double *a2, CIVector **a3, CIVector **a4, char a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v43 = 0u;
  *v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  *a4 = 0;
  *a3 = 0;
  v8 = sqrt(a1);
  if (a5)
  {
    if (v8 >= 0.570644)
    {
      v14 = 0;
      v36 = vdupq_lane_s64(COERCE__INT64(v8 * 2.50662827), 0);
      v37 = vdupq_lane_s64(COERCE__INT64(v8 * (v8 + v8)), 0);
      v15 = 0x100000000;
      v9 = 0.00300000003;
      do
      {
        v16 = vadd_s32(v15, 0x800000008);
        v17.i64[0] = v16.i32[0];
        v17.i64[1] = v16.i32[1];
        v18 = vcvtq_f64_s64(v17);
        __x = vdivq_f64(vmulq_f64(vnegq_f64(v18), v18), v37);
        v39 = exp(__x.f64[1]);
        v19.f64[0] = exp(__x.f64[0]);
        v19.f64[1] = v39;
        *(&v40 + v14) = vdivq_f64(v19, v36);
        v15 = vadd_s32(v15, 0x200000002);
        v14 += 16;
      }

      while (v14 != 80);
    }

    else
    {
      v44[0] = fmax(v8 * 0.14 + a1 * 0.33 + -0.036442, 0.0);
      v44[1] = v44[0] * -2.0 + 1.0;
      v9 = 0.00300000003;
    }
  }

  else
  {
    v10 = 0;
    v11 = -9;
    v9 = 0.00150000001;
    do
    {
      v12 = fabs(v11);
      v13 = erf((0.5 - v12) * 0.707106781 / v8);
      *(&v40 + v10) = (v13 - erf((-0.5 - v12) * 0.707106781 / v8)) * 0.5;
      ++v11;
      v10 += 8;
    }

    while (v10 != 80);
  }

  v20 = 0;
  v21 = 0.0;
  while (1)
  {
    v22 = v21 + *(&v40 + v20);
    if (v22 >= v9)
    {
      break;
    }

    *(&v40 + v20++) = 0;
    v21 = v22;
    if (v20 == 10)
    {
      LODWORD(v20) = -1;
      goto LABEL_15;
    }
  }

  *(&v40 + v20) = v21 + *(&v40 + v20);
  if (v20 == 9)
  {
    return 0;
  }

LABEL_15:
  if (dyld_program_sdk_at_least())
  {
    switch(v20)
    {
      case 3:
        *a3 = [CIVector vectorWithX:v44[1] Y:v44[0] Z:*(&v43 + 1) W:*&v43];
        *a4 = [CIVector vectorWithX:*(&v42 + 1) Y:*&v42 Z:*(&v41 + 1) W:0.0];
        return 6;
      case 5:
        *a3 = [CIVector vectorWithX:v44[1] Y:v44[0] Z:*(&v43 + 1) W:*&v43];
        return 4;
      case 7:
        *a3 = [CIVector vectorWithX:v44[1] Y:v44[0] Z:*(&v43 + 1)];
        return 2;
    }
  }

  v24 = v44[1] * 0.5 + v44[0];
  v25 = *(&v42 + 1) + *&v42;
  v26 = *(&v41 + 1) + *&v41;
  v27 = *(&v40 + 1) + *&v40;
  v28 = *&v43 / (*(&v43 + 1) + *&v43) + 2.0;
  if (*(&v43 + 1) + *&v43 >= 0.00001)
  {
    v29 = *(&v43 + 1) + *&v43;
  }

  else
  {
    v28 = 0.0;
    v29 = 0.0;
  }

  if (v25 >= 0.00001)
  {
    v30 = *&v42 / (*(&v42 + 1) + *&v42) + 4.0;
  }

  else
  {
    v30 = 0.0;
  }

  if (v25 >= 0.00001)
  {
    v31 = *(&v42 + 1) + *&v42;
  }

  else
  {
    v31 = 0.0;
  }

  if (v26 >= 0.00001)
  {
    v32 = *&v41 / (*(&v41 + 1) + *&v41) + 6.0;
  }

  else
  {
    v32 = 0.0;
  }

  if (v26 >= 0.00001)
  {
    v33 = *(&v41 + 1) + *&v41;
  }

  else
  {
    v33 = 0.0;
  }

  if (v27 >= 0.00001)
  {
    v34 = *(&v40 + 1) + *&v40;
  }

  else
  {
    v34 = 0.0;
  }

  if (v27 >= 0.00001)
  {
    v35 = *&v40 / (*(&v40 + 1) + *&v40) + 8.0;
  }

  else
  {
    v35 = 0.0;
  }

  *a2 = v44[0] / v24;
  a2[1] = v28;
  a2[2] = v30;
  a2[3] = v32;
  a2[4] = v35;
  *a3 = [CIVector vectorWithX:v24 Y:v29 Z:v31 W:v33, *&v36];
  *a4 = [CIVector vectorWithX:v34 Y:0.0 Z:0.0 W:0.0];
  if (v34 > 0.0)
  {
    return 9;
  }

  if (v33 > 0.0)
  {
    return 7;
  }

  if (v31 > 0.0)
  {
    return 5;
  }

  if (v29 <= 0.0)
  {
    return 1;
  }

  return 3;
}

double ___ZL9blurImageP7CIImagedd_block_invoke_5(uint64_t a1, double a2, CGFloat a3, double a4, CGFloat a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (!CGRectIsEmpty(*&a2))
  {
    v11.origin.x = v8 - v9;
    v11.size.width = a4 + v9 * 2.0;
    v11.origin.y = a3;
    v11.size.height = a5;
    *&v8 = CGRectIntegral(v11);
  }

  return v8;
}

double ___ZL9blurImageP7CIImagedd_block_invoke_6(uint64_t a1, double a2, double a3, CGFloat a4, double a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (!CGRectIsEmpty(*&a2))
  {
    v11.origin.y = a3 - v9;
    v11.size.height = a5 + v9 * 2.0;
    v11.origin.x = v8;
    v11.size.width = a4;
    *&v8 = CGRectIntegral(v11);
  }

  return v8;
}

double CI::sw_gaussianReduce4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v96 = *v9;
  DC = CI::getDC(a1);
  v12 = v96;
  *v13.i8 = vmul_f32(*v96.i8, *DC);
  v98 = v13;
  LODWORD(v14) = *(v10 + 28);
  *&v15 = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v13.i8, 1) + (*v13.i32 * *(v10 + 16)));
  LODWORD(v16) = *(v10 + 36);
  *v12.f64 = *&v16 + (vmuls_lane_f32(*(v10 + 32), *v13.i8, 1) + (*v13.i32 * *&v14));
  HIDWORD(v15) = LODWORD(v12.f64[0]);
  *v20.i64 = CI::BitmapSampler::read(*(v10 + 8), v15, v12, v14, v16, v13, v17, v18, v19);
  v21 = vextq_s8(v96, v96, 8uLL).u64[0];
  *v96.i8 = v21;
  v22 = vmul_f32(v21, vdup_n_s32(0x3FF9A00Bu));
  *&v23.f64[1] = v98.i64[1];
  *&v23.f64[0] = vsub_f32(*v98.i8, v22);
  v21.f32[0] = vmuls_lane_f32(*(v10 + 20), *&v23.f64[0], 1) + (*v23.f64 * *(v10 + 16));
  LODWORD(v24) = *(v10 + 24);
  v25.i32[0] = *(v10 + 36);
  *v26.i32 = vmuls_lane_f32(*(v10 + 32), *&v23.f64[0], 1);
  v27 = vdupq_n_s32(0x3E7F158Eu);
  v92 = vmulq_f32(v20, v27);
  v20.f32[0] = *&v24 + v21.f32[0];
  *v23.f64 = *v25.i32 + (*v26.i32 + (*v23.f64 * *(v10 + 28)));
  v20.i32[1] = LODWORD(v23.f64[0]);
  *v29.i64 = CI::BitmapSampler::read(*(v10 + 8), *v20.i64, v23, *&v21, v24, v27, v26, v25, v28);
  v89 = v29;
  *v29.f32 = vadd_f32(v22, *v98.i8);
  LODWORD(v30) = *(v10 + 24);
  v31.i32[0] = *(v10 + 36);
  *v32.i32 = vmuls_lane_f32(*(v10 + 32), *v29.f32, 1);
  *&v33 = *v32.i32 + (v29.f32[0] * *(v10 + 28));
  v29.f32[0] = *&v30 + (vmuls_lane_f32(*(v10 + 20), *v29.f32, 1) + (v29.f32[0] * *(v10 + 16)));
  *v34.f64 = *v31.i32 + *&v33;
  v29.f32[1] = *v31.i32 + *&v33;
  *v37.i64 = CI::BitmapSampler::read(*(v10 + 8), *v29.i64, v34, v30, v33, v32, v31, v35, v36);
  HIDWORD(v38) = v96.i32[1];
  v39 = vmul_f32(*v96.i8, vdup_n_s32(0x4079B00Du));
  *&v40.f64[1] = v98.i64[1];
  *&v40.f64[0] = vsub_f32(*v98.i8, v39);
  *&v38 = vmuls_lane_f32(*(v10 + 20), *&v40.f64[0], 1) + (*v40.f64 * *(v10 + 16));
  LODWORD(v41) = *(v10 + 24);
  v42.i32[0] = *(v10 + 36);
  *v43.i32 = vmuls_lane_f32(*(v10 + 32), *&v40.f64[0], 1);
  v44 = v92;
  v93 = vaddq_f32(v92, vmulq_f32(vaddq_f32(v89, v37), vdupq_n_s32(0x3E51EA47u)));
  v37.f32[0] = *&v41 + *&v38;
  *v40.f64 = *v42.i32 + (*v43.i32 + (*v40.f64 * *(v10 + 28)));
  v37.i32[1] = LODWORD(v40.f64[0]);
  *v46.i64 = CI::BitmapSampler::read(*(v10 + 8), *v37.i64, v40, v38, v41, v44, v43, v42, v45);
  v90 = v46;
  *v46.f32 = vadd_f32(v39, *v98.i8);
  LODWORD(v47) = *(v10 + 24);
  v48.i32[0] = *(v10 + 36);
  *v49.i32 = vmuls_lane_f32(*(v10 + 32), *v46.f32, 1);
  *&v50 = *v49.i32 + (v46.f32[0] * *(v10 + 28));
  v46.f32[0] = *&v47 + (vmuls_lane_f32(*(v10 + 20), *v46.f32, 1) + (v46.f32[0] * *(v10 + 16)));
  *v51.f64 = *v48.i32 + *&v50;
  v46.f32[1] = *v48.i32 + *&v50;
  *v54.i64 = CI::BitmapSampler::read(*(v10 + 8), *v46.i64, v51, v47, v50, v49, v48, v52, v53);
  HIDWORD(v55) = v96.i32[1];
  v56 = vmul_f32(*v96.i8, vdup_n_s32(0x40BB7805u));
  *&v57.f64[1] = v98.i64[1];
  *&v57.f64[0] = vsub_f32(*v98.i8, v56);
  *&v55 = vmuls_lane_f32(*(v10 + 20), *&v57.f64[0], 1) + (*v57.f64 * *(v10 + 16));
  LODWORD(v58) = *(v10 + 24);
  v59.i32[0] = *(v10 + 36);
  *v60.i32 = vmuls_lane_f32(*(v10 + 32), *&v57.f64[0], 1);
  v61 = v93;
  v94 = vaddq_f32(v93, vmulq_f32(vaddq_f32(v90, v54), vdupq_n_s32(0x3DE9F147u)));
  v54.f32[0] = *&v58 + *&v55;
  *v57.f64 = *v59.i32 + (*v60.i32 + (*v57.f64 * *(v10 + 28)));
  v54.i32[1] = LODWORD(v57.f64[0]);
  *v63.i64 = CI::BitmapSampler::read(*(v10 + 8), *v54.i64, v57, v55, v58, v61, v60, v59, v62);
  v91 = v63;
  *v63.f32 = vadd_f32(v56, *v98.i8);
  LODWORD(v64) = *(v10 + 24);
  v65.i32[0] = *(v10 + 36);
  *v66.i32 = vmuls_lane_f32(*(v10 + 32), *v63.f32, 1);
  *&v67 = *v66.i32 + (v63.f32[0] * *(v10 + 28));
  v63.f32[0] = *&v64 + (vmuls_lane_f32(*(v10 + 20), *v63.f32, 1) + (v63.f32[0] * *(v10 + 16)));
  *v68.f64 = *v65.i32 + *&v67;
  v63.f32[1] = *v65.i32 + *&v67;
  *v71.i64 = CI::BitmapSampler::read(*(v10 + 8), *v63.i64, v68, v64, v67, v66, v65, v69, v70);
  HIDWORD(v72) = v96.i32[1];
  v73 = vmul_f32(*v96.i8, vdup_n_s32(0x40FBCDB9u));
  *&v74.f64[1] = v98.i64[1];
  *&v74.f64[0] = vsub_f32(*v98.i8, v73);
  *&v72 = vmuls_lane_f32(*(v10 + 20), *&v74.f64[0], 1) + (*v74.f64 * *(v10 + 16));
  LODWORD(v75) = *(v10 + 24);
  v76.i32[0] = *(v10 + 36);
  *v77.i32 = vmuls_lane_f32(*(v10 + 32), *&v74.f64[0], 1);
  v97 = vaddq_f32(v94, vmulq_f32(vaddq_f32(v91, v71), vdupq_n_s32(0x3D31953Au)));
  v71.f32[0] = *&v75 + *&v72;
  *v74.f64 = *v76.i32 + (*v77.i32 + (*v74.f64 * *(v10 + 28)));
  v71.i32[1] = LODWORD(v74.f64[0]);
  *v79.i64 = CI::BitmapSampler::read(*(v10 + 8), *v71.i64, v74, v72, v75, v94, v77, v76, v78);
  v95 = v79;
  *v79.f32 = vadd_f32(v73, *v98.i8);
  LODWORD(v80) = *(v10 + 24);
  v81.i32[0] = *(v10 + 36);
  *v82.i32 = vmuls_lane_f32(*(v10 + 32), *v79.f32, 1);
  *&v83 = *v82.i32 + (v79.f32[0] * *(v10 + 28));
  v79.f32[0] = *&v80 + (vmuls_lane_f32(*(v10 + 20), *v79.f32, 1) + (v79.f32[0] * *(v10 + 16)));
  *v84.f64 = *v81.i32 + *&v83;
  v79.f32[1] = *v81.i32 + *&v83;
  *v87.i64 = CI::BitmapSampler::read(*(v10 + 8), *v79.i64, v84, v80, v83, v82, v81, v85, v86);
  *&result = vaddq_f32(v97, vmulq_f32(vaddq_f32(v95, v87), vdupq_n_s32(0x3C52D001u))).u64[0];
  return result;
}

double CI::sw_gaussianReduce2(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v56 = *v9;
  DC = CI::getDC(a1);
  v12 = v56;
  *v13.i8 = vmul_f32(*&v56.f64[0], *DC);
  v58 = v13;
  v14 = vextq_s8(v12, v12, 8uLL).u64[0];
  v15 = vmul_f32(v14, vdup_n_s32(0x406FB10Au));
  *&v12.f64[0] = vsub_f32(*v13.i8, v15);
  *v13.i32 = vmuls_lane_f32(*(v10 + 20), *&v12.f64[0], 1) + (*v12.f64 * *(v10 + 16));
  LODWORD(v16) = *(v10 + 24);
  v17.i32[0] = *(v10 + 36);
  *v18.i32 = vmuls_lane_f32(*(v10 + 32), *&v12.f64[0], 1);
  *v19.i8 = vdup_n_s32(0x3FEC5190u);
  v20 = vmul_f32(v14, *v19.i8);
  v14.f32[0] = *&v16 + *v13.i32;
  *v12.f64 = *v17.i32 + (*v18.i32 + (*v12.f64 * *(v10 + 28)));
  v14.i32[1] = LODWORD(v12.f64[0]);
  *v22.i64 = CI::BitmapSampler::read(*(v10 + 8), *&v14, v12, *v13.i64, v16, v19, v18, v17, v21);
  v57 = v22;
  *v22.f32 = vsub_f32(*v58.i8, v20);
  LODWORD(v23) = *(v10 + 24);
  v24.i32[0] = *(v10 + 36);
  *v25.i32 = vmuls_lane_f32(*(v10 + 32), *v22.f32, 1);
  *&v26 = *v25.i32 + (v22.f32[0] * *(v10 + 28));
  v22.f32[0] = *&v23 + (vmuls_lane_f32(*(v10 + 20), *v22.f32, 1) + (v22.f32[0] * *(v10 + 16)));
  *v27.f64 = *v24.i32 + *&v26;
  v22.f32[1] = *v24.i32 + *&v26;
  *v30.i64 = CI::BitmapSampler::read(*(v10 + 8), *v22.i64, v27, v23, v26, v25, v24, v28, v29);
  v55 = v30;
  LODWORD(v31) = *(v10 + 28);
  v30.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v58.i8, 1) + (*v58.i32 * *(v10 + 16)));
  LODWORD(v32) = *(v10 + 36);
  *v33.f64 = *&v32 + (vmuls_lane_f32(*(v10 + 32), *v58.i8, 1) + (*v58.i32 * *&v31));
  v30.i32[1] = LODWORD(v33.f64[0]);
  *v37.i64 = CI::BitmapSampler::read(*(v10 + 8), *v30.i64, v33, v31, v32, v58, v34, v35, v36);
  v54 = v37;
  *v37.f32 = vadd_f32(v20, *v58.i8);
  LODWORD(v38) = *(v10 + 24);
  v39.i32[0] = *(v10 + 36);
  *v40.i32 = vmuls_lane_f32(*(v10 + 32), *v37.f32, 1);
  *&v41 = *v40.i32 + (v37.f32[0] * *(v10 + 28));
  v37.f32[0] = *&v38 + (vmuls_lane_f32(*(v10 + 20), *v37.f32, 1) + (v37.f32[0] * *(v10 + 16)));
  *v42.f64 = *v39.i32 + *&v41;
  v37.f32[1] = *v39.i32 + *&v41;
  *v45.i64 = CI::BitmapSampler::read(*(v10 + 8), *v37.i64, v42, v38, v41, v40, v39, v43, v44);
  *&v46.f64[1] = v58.i64[1];
  *&v46.f64[0] = vadd_f32(v15, *v58.i8);
  *&v47 = vmuls_lane_f32(*(v10 + 20), *&v46.f64[0], 1) + (*v46.f64 * *(v10 + 16));
  LODWORD(v48) = *(v10 + 24);
  v49.i32[0] = *(v10 + 36);
  *v50.i32 = vmuls_lane_f32(*(v10 + 32), *&v46.f64[0], 1);
  v59 = vaddq_f32(v55, v45);
  v45.f32[0] = *&v48 + *&v47;
  *v46.f64 = *v49.i32 + (*v50.i32 + (*v46.f64 * *(v10 + 28)));
  v45.i32[1] = LODWORD(v46.f64[0]);
  *v52.i64 = CI::BitmapSampler::read(*(v10 + 8), *v45.i64, v46, v47, v48, v55, v50, v49, v51);
  *&result = vaddq_f32(vaddq_f32(vmulq_f32(v54, vdupq_n_s32(0x3EDD5539u)), vmulq_f32(v59, vdupq_n_s32(0x3E766429u))), vmulq_f32(vaddq_f32(v57, v52), vdupq_n_s32(0x3D311A78u))).u64[0];
  return result;
}

double CI::sw_gaussianBlur19(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v4 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 80);
  v15 = (a3 + 16 * v14);
  v16 = (a2 + (v14 << 6));
  if (*(v4 + 88) == 5)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v4 + 104);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (*(v4 + 112) == 5)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v4 + 136);
  v23 = *(v4 + 128);
  v24 = (a3 + 16 * v23);
  v25 = (a2 + (v23 << 6));
  if (v22 == 5)
  {
    v25 = v24;
  }

  v26 = a4 + 80 * v5;
  v122 = *v9;
  v124 = *v13;
  v27 = *v17;
  v120 = *v21;
  LODWORD(v121) = *v25;
  v28 = *CI::getDC(a1);
  v29 = vsub_f32(v28, v27);
  LODWORD(v30) = *(v26 + 24);
  v31.i32[0] = *(v26 + 36);
  *v32.i32 = vmuls_lane_f32(*(v26 + 32), v29, 1);
  *&v33 = *v32.i32 + (v29.f32[0] * *(v26 + 28));
  v29.f32[0] = *&v30 + (vmuls_lane_f32(*(v26 + 20), v29, 1) + (v29.f32[0] * *(v26 + 16)));
  *v34.f64 = *v31.i32 + *&v33;
  v29.f32[1] = *v31.i32 + *&v33;
  *v37.i64 = CI::BitmapSampler::read(*(v26 + 8), *&v29, v34, v30, v33, v32, v31, v35, v36);
  v119 = v37;
  v115 = vextq_s8(v124, v124, 8uLL).u64[0];
  *v37.f32 = vsub_f32(v28, v115);
  LODWORD(v38) = *(v26 + 24);
  v39.i32[0] = *(v26 + 36);
  *v40.i32 = vmuls_lane_f32(*(v26 + 32), *v37.f32, 1);
  *&v41 = *v40.i32 + (v37.f32[0] * *(v26 + 28));
  v37.f32[0] = *&v38 + (vmuls_lane_f32(*(v26 + 20), *v37.f32, 1) + (v37.f32[0] * *(v26 + 16)));
  *v42.f64 = *v39.i32 + *&v41;
  v37.f32[1] = *v39.i32 + *&v41;
  *v45.i64 = CI::BitmapSampler::read(*(v26 + 8), *v37.i64, v42, v38, v41, v40, v39, v43, v44);
  v118 = v45;
  *v45.f32 = vsub_f32(v28, *v124.i8);
  LODWORD(v46) = *(v26 + 24);
  v47.i32[0] = *(v26 + 36);
  *v48.i32 = vmuls_lane_f32(*(v26 + 32), *v45.f32, 1);
  *&v49 = *v48.i32 + (v45.f32[0] * *(v26 + 28));
  v45.f32[0] = *&v46 + (vmuls_lane_f32(*(v26 + 20), *v45.f32, 1) + (v45.f32[0] * *(v26 + 16)));
  *v50.f64 = *v47.i32 + *&v49;
  v45.f32[1] = *v47.i32 + *&v49;
  *v53.i64 = CI::BitmapSampler::read(*(v26 + 8), *v45.i64, v50, v46, v49, v48, v47, v51, v52);
  v117 = v53;
  v111 = vextq_s8(v122, v122, 8uLL).u64[0];
  *v53.f32 = vsub_f32(v28, v111);
  LODWORD(v54) = *(v26 + 24);
  v55.i32[0] = *(v26 + 36);
  *v56.i32 = vmuls_lane_f32(*(v26 + 32), *v53.f32, 1);
  *&v57 = *v56.i32 + (v53.f32[0] * *(v26 + 28));
  v53.f32[0] = *&v54 + (vmuls_lane_f32(*(v26 + 20), *v53.f32, 1) + (v53.f32[0] * *(v26 + 16)));
  *v58.f64 = *v55.i32 + *&v57;
  v53.f32[1] = *v55.i32 + *&v57;
  *v61.i64 = CI::BitmapSampler::read(*(v26 + 8), *v53.i64, v58, v54, v57, v56, v55, v59, v60);
  v114 = v61;
  *v61.f32 = vsub_f32(v28, *v122.i8);
  LODWORD(v62) = *(v26 + 24);
  v63.i32[0] = *(v26 + 36);
  *v64.i32 = vmuls_lane_f32(*(v26 + 32), *v61.f32, 1);
  *&v65 = *v64.i32 + (v61.f32[0] * *(v26 + 28));
  v61.f32[0] = *&v62 + (vmuls_lane_f32(*(v26 + 20), *v61.f32, 1) + (v61.f32[0] * *(v26 + 16)));
  *v66.f64 = *v63.i32 + *&v65;
  v61.f32[1] = *v63.i32 + *&v65;
  *v69.i64 = CI::BitmapSampler::read(*(v26 + 8), *v61.i64, v66, v62, v65, v64, v63, v67, v68);
  v113 = v69;
  *v69.f32 = vadd_f32(*v122.i8, v28);
  LODWORD(v70) = *(v26 + 24);
  v71.i32[0] = *(v26 + 36);
  *v72.i32 = vmuls_lane_f32(*(v26 + 32), *v69.f32, 1);
  *&v73 = *v72.i32 + (v69.f32[0] * *(v26 + 28));
  v69.f32[0] = *&v70 + (vmuls_lane_f32(*(v26 + 20), *v69.f32, 1) + (v69.f32[0] * *(v26 + 16)));
  *v74.f64 = *v71.i32 + *&v73;
  v69.f32[1] = *v71.i32 + *&v73;
  *v77.i64 = CI::BitmapSampler::read(*(v26 + 8), *v69.i64, v74, v70, v73, v72, v71, v75, v76);
  v123 = v77;
  *v77.f32 = vadd_f32(v111, v28);
  LODWORD(v78) = *(v26 + 24);
  v79.i32[0] = *(v26 + 36);
  *v80.i32 = vmuls_lane_f32(*(v26 + 32), *v77.f32, 1);
  *&v81 = *v80.i32 + (v77.f32[0] * *(v26 + 28));
  v77.f32[0] = *&v78 + (vmuls_lane_f32(*(v26 + 20), *v77.f32, 1) + (v77.f32[0] * *(v26 + 16)));
  *v82.f64 = *v79.i32 + *&v81;
  v77.f32[1] = *v79.i32 + *&v81;
  *v85.i64 = CI::BitmapSampler::read(*(v26 + 8), *v77.i64, v82, v78, v81, v80, v79, v83, v84);
  v112 = v85;
  *v85.f32 = vadd_f32(*v124.i8, v28);
  LODWORD(v86) = *(v26 + 24);
  v87.i32[0] = *(v26 + 36);
  *v88.i32 = vmuls_lane_f32(*(v26 + 32), *v85.f32, 1);
  *&v89 = *v88.i32 + (v85.f32[0] * *(v26 + 28));
  v85.f32[0] = *&v86 + (vmuls_lane_f32(*(v26 + 20), *v85.f32, 1) + (v85.f32[0] * *(v26 + 16)));
  *v90.f64 = *v87.i32 + *&v89;
  v85.f32[1] = *v87.i32 + *&v89;
  *v93.i64 = CI::BitmapSampler::read(*(v26 + 8), *v85.i64, v90, v86, v89, v88, v87, v91, v92);
  v125 = v93;
  *v93.f32 = vadd_f32(v115, v28);
  LODWORD(v94) = *(v26 + 24);
  v95.i32[0] = *(v26 + 36);
  *v96.i32 = vmuls_lane_f32(*(v26 + 32), *v93.f32, 1);
  *&v97 = *v96.i32 + (v93.f32[0] * *(v26 + 28));
  v93.f32[0] = *&v94 + (vmuls_lane_f32(*(v26 + 20), *v93.f32, 1) + (v93.f32[0] * *(v26 + 16)));
  *v98.f64 = *v95.i32 + *&v97;
  v93.f32[1] = *v95.i32 + *&v97;
  *v101.i64 = CI::BitmapSampler::read(*(v26 + 8), *v93.i64, v98, v94, v97, v96, v95, v99, v100);
  v116 = v101;
  *v101.f32 = vadd_f32(v27, v28);
  LODWORD(v102) = *(v26 + 24);
  v103.i32[0] = *(v26 + 36);
  *v104.i32 = vmuls_lane_f32(*(v26 + 32), *v101.f32, 1);
  *&v105 = *v104.i32 + (v101.f32[0] * *(v26 + 28));
  v101.f32[0] = *&v102 + (vmuls_lane_f32(*(v26 + 20), *v101.f32, 1) + (v101.f32[0] * *(v26 + 16)));
  *v106.f64 = *v103.i32 + *&v105;
  v101.f32[1] = *v103.i32 + *&v105;
  *v109.i64 = CI::BitmapSampler::read(*(v26 + 8), *v101.i64, v106, v102, v105, v104, v103, v107, v108);
  *&result = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(vaddq_f32(v113, v123), v120.f32[0]), vmulq_lane_f32(vaddq_f32(v114, v112), *v120.f32, 1)), vmulq_laneq_f32(vaddq_f32(v117, v125), v120, 2)), vmulq_laneq_f32(vaddq_f32(v118, v116), v120, 3)), vmulq_n_f32(vaddq_f32(v119, v109), v121)).u64[0];
  return result;
}

double CI::sw_gaussianBlur15(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v4 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 88);
  v15 = *(v4 + 80);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (v14 == 5)
  {
    v17 = v16;
  }

  v18 = a4 + 80 * v5;
  v94 = *v9;
  v96 = *v13;
  v93 = *v17;
  v19 = *CI::getDC(a1);
  v91 = vextq_s8(v96, v96, 8uLL).u64[0];
  v20 = vsub_f32(v19, v91);
  LODWORD(v21) = *(v18 + 24);
  v22.i32[0] = *(v18 + 36);
  *v23.i32 = vmuls_lane_f32(*(v18 + 32), v20, 1);
  *&v24 = *v23.i32 + (v20.f32[0] * *(v18 + 28));
  v20.f32[0] = *&v21 + (vmuls_lane_f32(*(v18 + 20), v20, 1) + (v20.f32[0] * *(v18 + 16)));
  *v25.f64 = *v22.i32 + *&v24;
  v20.f32[1] = *v22.i32 + *&v24;
  *v28.i64 = CI::BitmapSampler::read(*(v18 + 8), *&v20, v25, v21, v24, v23, v22, v26, v27);
  v92 = v28;
  *v28.f32 = vsub_f32(v19, *v96.i8);
  LODWORD(v29) = *(v18 + 24);
  v30.i32[0] = *(v18 + 36);
  *v31.i32 = vmuls_lane_f32(*(v18 + 32), *v28.f32, 1);
  *&v32 = *v31.i32 + (v28.f32[0] * *(v18 + 28));
  v28.f32[0] = *&v29 + (vmuls_lane_f32(*(v18 + 20), *v28.f32, 1) + (v28.f32[0] * *(v18 + 16)));
  *v33.f64 = *v30.i32 + *&v32;
  v28.f32[1] = *v30.i32 + *&v32;
  *v36.i64 = CI::BitmapSampler::read(*(v18 + 8), *v28.i64, v33, v29, v32, v31, v30, v34, v35);
  v90 = v36;
  v86 = vextq_s8(v94, v94, 8uLL).u64[0];
  *v36.f32 = vsub_f32(v19, v86);
  LODWORD(v37) = *(v18 + 24);
  v38.i32[0] = *(v18 + 36);
  *v39.i32 = vmuls_lane_f32(*(v18 + 32), *v36.f32, 1);
  *&v40 = *v39.i32 + (v36.f32[0] * *(v18 + 28));
  v36.f32[0] = *&v37 + (vmuls_lane_f32(*(v18 + 20), *v36.f32, 1) + (v36.f32[0] * *(v18 + 16)));
  *v41.f64 = *v38.i32 + *&v40;
  v36.f32[1] = *v38.i32 + *&v40;
  *v44.i64 = CI::BitmapSampler::read(*(v18 + 8), *v36.i64, v41, v37, v40, v39, v38, v42, v43);
  v89 = v44;
  *v44.f32 = vsub_f32(v19, *v94.i8);
  LODWORD(v45) = *(v18 + 24);
  v46.i32[0] = *(v18 + 36);
  *v47.i32 = vmuls_lane_f32(*(v18 + 32), *v44.f32, 1);
  *&v48 = *v47.i32 + (v44.f32[0] * *(v18 + 28));
  v44.f32[0] = *&v45 + (vmuls_lane_f32(*(v18 + 20), *v44.f32, 1) + (v44.f32[0] * *(v18 + 16)));
  *v49.f64 = *v46.i32 + *&v48;
  v44.f32[1] = *v46.i32 + *&v48;
  *v52.i64 = CI::BitmapSampler::read(*(v18 + 8), *v44.i64, v49, v45, v48, v47, v46, v50, v51);
  v88 = v52;
  *v52.f32 = vadd_f32(*v94.i8, v19);
  LODWORD(v53) = *(v18 + 24);
  v54.i32[0] = *(v18 + 36);
  *v55.i32 = vmuls_lane_f32(*(v18 + 32), *v52.f32, 1);
  *&v56 = *v55.i32 + (v52.f32[0] * *(v18 + 28));
  v52.f32[0] = *&v53 + (vmuls_lane_f32(*(v18 + 20), *v52.f32, 1) + (v52.f32[0] * *(v18 + 16)));
  *v57.f64 = *v54.i32 + *&v56;
  v52.f32[1] = *v54.i32 + *&v56;
  *v60.i64 = CI::BitmapSampler::read(*(v18 + 8), *v52.i64, v57, v53, v56, v55, v54, v58, v59);
  v95 = v60;
  *v60.f32 = vadd_f32(v86, v19);
  LODWORD(v61) = *(v18 + 24);
  v62.i32[0] = *(v18 + 36);
  *v63.i32 = vmuls_lane_f32(*(v18 + 32), *v60.f32, 1);
  *&v64 = *v63.i32 + (v60.f32[0] * *(v18 + 28));
  v60.f32[0] = *&v61 + (vmuls_lane_f32(*(v18 + 20), *v60.f32, 1) + (v60.f32[0] * *(v18 + 16)));
  *v65.f64 = *v62.i32 + *&v64;
  v60.f32[1] = *v62.i32 + *&v64;
  *v68.i64 = CI::BitmapSampler::read(*(v18 + 8), *v60.i64, v65, v61, v64, v63, v62, v66, v67);
  v87 = v68;
  *v68.f32 = vadd_f32(*v96.i8, v19);
  LODWORD(v69) = *(v18 + 24);
  v70.i32[0] = *(v18 + 36);
  *v71.i32 = vmuls_lane_f32(*(v18 + 32), *v68.f32, 1);
  *&v72 = *v71.i32 + (v68.f32[0] * *(v18 + 28));
  v68.f32[0] = *&v69 + (vmuls_lane_f32(*(v18 + 20), *v68.f32, 1) + (v68.f32[0] * *(v18 + 16)));
  *v73.f64 = *v70.i32 + *&v72;
  v68.f32[1] = *v70.i32 + *&v72;
  *v76.i64 = CI::BitmapSampler::read(*(v18 + 8), *v68.i64, v73, v69, v72, v71, v70, v74, v75);
  v97 = v76;
  *v76.f32 = vadd_f32(v91, v19);
  LODWORD(v77) = *(v18 + 24);
  v78.i32[0] = *(v18 + 36);
  *v79.i32 = vmuls_lane_f32(*(v18 + 32), *v76.f32, 1);
  *&v80 = *v79.i32 + (v76.f32[0] * *(v18 + 28));
  v76.f32[0] = *&v77 + (vmuls_lane_f32(*(v18 + 20), *v76.f32, 1) + (v76.f32[0] * *(v18 + 16)));
  *v81.f64 = *v78.i32 + *&v80;
  v76.f32[1] = *v78.i32 + *&v80;
  *v84.i64 = CI::BitmapSampler::read(*(v18 + 8), *v76.i64, v81, v77, v80, v79, v78, v82, v83);
  *&result = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(vaddq_f32(v88, v95), v93.f32[0]), vmulq_lane_f32(vaddq_f32(v89, v87), *v93.f32, 1)), vmulq_laneq_f32(vaddq_f32(v90, v97), v93, 2)), vmulq_laneq_f32(vaddq_f32(v92, v84), v93, 3)).u64[0];
  return result;
}

double CI::sw_gaussianBlur13(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v4 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 88);
  v15 = *(v4 + 80);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (v14 == 5)
  {
    v17 = v16;
  }

  v18 = a4 + 80 * v5;
  v19 = *v9;
  v131 = *v17;
  v139 = *v13;
  DC = CI::getDC(a1);
  *&v21 = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v18 + 16)));
  *(&v21 + 1) = *(v18 + 36) + (vmuls_lane_f32(*(v18 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *(v18 + 28)));
  v140 = v21;
  v22 = vadd_f32(v19, *CI::getDC(DC));
  LODWORD(v23) = *(v18 + 28);
  v24.i32[0] = *(v18 + 36);
  *v25.i32 = vmuls_lane_f32(*(v18 + 32), v22, 1);
  *v26.f64 = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), v22, 1) + (v22.f32[0] * *(v18 + 16)));
  *(v26.f64 + 1) = *v24.i32 + (*v25.i32 + (v22.f32[0] * *&v23));
  v27 = vsub_f32(*&v26.f64[0], *&v140);
  __asm { FMOV            V0.2S, #6.0 }

  v33 = vmul_f32(v27, _D0);
  *v36.i64 = CI::BitmapSampler::read(*(v18 + 8), COERCE_DOUBLE(vsub_f32(*&v140, v33)), v26, v140, v23, v25, v24, v34, v35);
  v126 = vaddq_f32(vmulq_laneq_f32(v36, v131, 2), 0);
  *_Q0.i64 = CI::BitmapSampler::read(*(v18 + 8), COERCE_DOUBLE(vadd_f32(*&v140, v33)), 0, v37, v38, v39, v40, v41, v42);
  v44 = v126;
  v127 = vaddq_f32(v126, vmulq_laneq_f32(_Q0, v131, 2));
  __asm { FMOV            V0.2S, #5.0 }

  v45 = vmul_f32(v27, *_Q0.f32);
  *v51.i64 = CI::BitmapSampler::read(*(v18 + 8), COERCE_DOUBLE(vsub_f32(*&v140, v45)), v44, v46, *v131.i64, v47, v48, v49, v50);
  v52 = v127;
  v128 = vaddq_f32(v127, vmulq_lane_f32(v51, *v131.f32, 1));
  *_Q0.i64 = CI::BitmapSampler::read(*(v18 + 8), COERCE_DOUBLE(vadd_f32(*&v140, v45)), v52, v53, *v131.i64, v54, v55, v56, v57);
  v59 = v128;
  v129 = vaddq_f32(v128, vmulq_lane_f32(_Q0, *v131.f32, 1));
  __asm { FMOV            V0.2S, #4.0 }

  v60 = vmul_f32(v27, *_Q0.f32);
  *v66.i64 = CI::BitmapSampler::read(*(v18 + 8), COERCE_DOUBLE(vsub_f32(*&v140, v60)), v59, v61, *v131.i64, v62, v63, v64, v65);
  v67 = v129;
  v130 = vaddq_f32(v129, vmulq_n_f32(v66, v131.f32[0]));
  *_Q0.i64 = CI::BitmapSampler::read(*(v18 + 8), COERCE_DOUBLE(vadd_f32(*&v140, v60)), v67, v68, *v131.i64, v69, v70, v71, v72);
  v74 = *v131.i64;
  v132 = vaddq_f32(v130, vmulq_n_f32(_Q0, v131.f32[0]));
  __asm { FMOV            V0.2S, #3.0 }

  v75 = vmul_f32(v27, *_Q0.f32);
  *v81.i64 = CI::BitmapSampler::read(*(v18 + 8), COERCE_DOUBLE(vsub_f32(*&v140, v75)), v130, v76, v74, v77, v78, v79, v80);
  v82 = v132;
  v133 = vaddq_f32(v132, vmulq_laneq_f32(v81, v139, 3));
  *v88.i64 = CI::BitmapSampler::read(*(v18 + 8), COERCE_DOUBLE(vadd_f32(*&v140, v75)), v82, v83, *v139.i64, v84, v85, v86, v87);
  v89 = v133;
  v134 = vaddq_f32(v133, vmulq_laneq_f32(v88, v139, 3));
  v90 = vadd_f32(v27, v27);
  *v96.i64 = CI::BitmapSampler::read(*(v18 + 8), COERCE_DOUBLE(vsub_f32(*&v140, v90)), v89, v91, *v139.i64, v92, v93, v94, v95);
  v97 = v134;
  v135 = vaddq_f32(v134, vmulq_laneq_f32(v96, v139, 2));
  *v103.i64 = CI::BitmapSampler::read(*(v18 + 8), COERCE_DOUBLE(vadd_f32(*&v140, v90)), v97, v98, *v139.i64, v99, v100, v101, v102);
  v104 = v135;
  v136 = vaddq_f32(v135, vmulq_laneq_f32(v103, v139, 2));
  *v110.i64 = CI::BitmapSampler::read(*(v18 + 8), COERCE_DOUBLE(vsub_f32(*&v140, v27)), v104, v105, *v139.i64, v106, v107, v108, v109);
  v111 = v136;
  v137 = vaddq_f32(v136, vmulq_lane_f32(v110, *v139.f32, 1));
  *v117.i64 = CI::BitmapSampler::read(*(v18 + 8), COERCE_DOUBLE(vadd_f32(*&v140, v27)), v111, v112, *v139.i64, v113, v114, v115, v116);
  v118 = v137;
  v138 = vaddq_f32(v137, vmulq_lane_f32(v117, *v139.f32, 1));
  *v124.i64 = CI::BitmapSampler::read(*(v18 + 8), v140, v118, v119, *v139.i64, v120, v121, v122, v123);
  *&result = vaddq_f32(v138, vmulq_n_f32(v124, v139.f32[0])).u64[0];
  return result;
}

double CI::sw_gaussianBlur11(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v4 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 88);
  v15 = *(v4 + 80);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (v14 == 5)
  {
    v17 = v16;
  }

  v18 = a4 + 80 * v5;
  v76 = *v13;
  v77 = *v9;
  v75 = *v17;
  v19 = *CI::getDC(a1);
  v20 = vsub_f32(v19, *&v76);
  LODWORD(v21) = *(v18 + 24);
  v22.i32[0] = *(v18 + 36);
  *v23.i32 = vmuls_lane_f32(*(v18 + 32), v20, 1);
  *&v24 = *v23.i32 + (v20.f32[0] * *(v18 + 28));
  v20.f32[0] = *&v21 + (vmuls_lane_f32(*(v18 + 20), v20, 1) + (v20.f32[0] * *(v18 + 16)));
  *v25.f64 = *v22.i32 + *&v24;
  v20.f32[1] = *v22.i32 + *&v24;
  *v28.i64 = CI::BitmapSampler::read(*(v18 + 8), *&v20, v25, v21, v24, v23, v22, v26, v27);
  v74 = v28;
  v70 = vextq_s8(v77, v77, 8uLL).u64[0];
  *v28.f32 = vsub_f32(v19, v70);
  LODWORD(v29) = *(v18 + 24);
  v30.i32[0] = *(v18 + 36);
  *v31.i32 = vmuls_lane_f32(*(v18 + 32), *v28.f32, 1);
  *&v32 = *v31.i32 + (v28.f32[0] * *(v18 + 28));
  v28.f32[0] = *&v29 + (vmuls_lane_f32(*(v18 + 20), *v28.f32, 1) + (v28.f32[0] * *(v18 + 16)));
  *v33.f64 = *v30.i32 + *&v32;
  v28.f32[1] = *v30.i32 + *&v32;
  *v36.i64 = CI::BitmapSampler::read(*(v18 + 8), *v28.i64, v33, v29, v32, v31, v30, v34, v35);
  v73 = v36;
  *v36.f32 = vsub_f32(v19, *v77.i8);
  LODWORD(v37) = *(v18 + 24);
  v38.i32[0] = *(v18 + 36);
  *v39.i32 = vmuls_lane_f32(*(v18 + 32), *v36.f32, 1);
  *&v40 = *v39.i32 + (v36.f32[0] * *(v18 + 28));
  v36.f32[0] = *&v37 + (vmuls_lane_f32(*(v18 + 20), *v36.f32, 1) + (v36.f32[0] * *(v18 + 16)));
  *v41.f64 = *v38.i32 + *&v40;
  v36.f32[1] = *v38.i32 + *&v40;
  *v44.i64 = CI::BitmapSampler::read(*(v18 + 8), *v36.i64, v41, v37, v40, v39, v38, v42, v43);
  v72 = v44;
  *v44.f32 = vadd_f32(*v77.i8, v19);
  LODWORD(v45) = *(v18 + 24);
  v46.i32[0] = *(v18 + 36);
  *v47.i32 = vmuls_lane_f32(*(v18 + 32), *v44.f32, 1);
  *&v48 = *v47.i32 + (v44.f32[0] * *(v18 + 28));
  v44.f32[0] = *&v45 + (vmuls_lane_f32(*(v18 + 20), *v44.f32, 1) + (v44.f32[0] * *(v18 + 16)));
  *v49.f64 = *v46.i32 + *&v48;
  v44.f32[1] = *v46.i32 + *&v48;
  *v52.i64 = CI::BitmapSampler::read(*(v18 + 8), *v44.i64, v49, v45, v48, v47, v46, v50, v51);
  v78 = v52;
  *v52.f32 = vadd_f32(v70, v19);
  LODWORD(v53) = *(v18 + 24);
  v54.i32[0] = *(v18 + 36);
  *v55.i32 = vmuls_lane_f32(*(v18 + 32), *v52.f32, 1);
  *&v56 = *v55.i32 + (v52.f32[0] * *(v18 + 28));
  v52.f32[0] = *&v53 + (vmuls_lane_f32(*(v18 + 20), *v52.f32, 1) + (v52.f32[0] * *(v18 + 16)));
  *v57.f64 = *v54.i32 + *&v56;
  v52.f32[1] = *v54.i32 + *&v56;
  *v60.i64 = CI::BitmapSampler::read(*(v18 + 8), *v52.i64, v57, v53, v56, v55, v54, v58, v59);
  v71 = v60;
  *v60.f32 = vadd_f32(*&v76, v19);
  LODWORD(v61) = *(v18 + 24);
  v62.i32[0] = *(v18 + 36);
  *v63.i32 = vmuls_lane_f32(*(v18 + 32), *v60.f32, 1);
  *&v64 = *v63.i32 + (v60.f32[0] * *(v18 + 28));
  v60.f32[0] = *&v61 + (vmuls_lane_f32(*(v18 + 20), *v60.f32, 1) + (v60.f32[0] * *(v18 + 16)));
  *v65.f64 = *v62.i32 + *&v64;
  v60.f32[1] = *v62.i32 + *&v64;
  *v68.i64 = CI::BitmapSampler::read(*(v18 + 8), *v60.i64, v65, v61, v64, v63, v62, v66, v67);
  *&result = vaddq_f32(vaddq_f32(vmulq_n_f32(vaddq_f32(v72, v78), v75.f32[0]), vmulq_lane_f32(vaddq_f32(v73, v71), *v75.f32, 1)), vmulq_laneq_f32(vaddq_f32(v74, v68), v75, 2)).u64[0];
  return result;
}

double CI::sw_gaussianBlur9(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 64);
  v11 = *(v4 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (v10 == 5)
  {
    v13 = v12;
  }

  v14 = a4 + 80 * v5;
  v15 = *v9;
  v101 = *v13;
  DC = CI::getDC(a1);
  *v17.i32 = *(v14 + 24) + (vmuls_lane_f32(*(v14 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v14 + 16)));
  *&v17.i32[1] = *(v14 + 36) + (vmuls_lane_f32(*(v14 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *(v14 + 28)));
  v102 = v17;
  v18 = vadd_f32(v15, *CI::getDC(DC));
  v19.i32[0] = *(v14 + 36);
  v20.f32[0] = *(v14 + 24) + (vmuls_lane_f32(*(v14 + 20), v18, 1) + (v18.f32[0] * *(v14 + 16)));
  v20.f32[1] = *v19.i32 + (vmuls_lane_f32(*(v14 + 32), v18, 1) + (v18.f32[0] * *(v14 + 28)));
  v21 = vsub_f32(v20, *v102.i8);
  v22.f64[0] = v101.f32[3];
  v23 = 0.5 - (v101.f32[1] + v101.f32[0] * 0.5 + v101.f32[2] + v101.f32[3]);
  *&v23 = v23;
  v93 = v23;
  __asm { FMOV            V0.2S, #4.0 }

  v29 = vmul_f32(v21, _D0);
  *v32.i64 = CI::BitmapSampler::read(*(v14 + 8), COERCE_DOUBLE(vsub_f32(*v102.i8, v29)), v22, 0.5, *v101.i64, v102, v19, v30, v31);
  v92 = vaddq_f32(vmulq_n_f32(v32, *&v93), 0);
  *_Q0.i64 = CI::BitmapSampler::read(*(v14 + 8), COERCE_DOUBLE(vadd_f32(*v102.i8, v29)), 0, v33, v34, v35, v36, v37, v38);
  v40 = v93;
  v94 = vaddq_f32(v92, vmulq_n_f32(_Q0, *&v93));
  __asm { FMOV            V0.2S, #3.0 }

  v41 = vmul_f32(v21, *_Q0.f32);
  *v47.i64 = CI::BitmapSampler::read(*(v14 + 8), COERCE_DOUBLE(vsub_f32(*v102.i8, v41)), v92, v40, v42, v43, v44, v45, v46);
  v48 = v94;
  v95 = vaddq_f32(v94, vmulq_laneq_f32(v47, v101, 3));
  *v54.i64 = CI::BitmapSampler::read(*(v14 + 8), COERCE_DOUBLE(vadd_f32(*v102.i8, v41)), v48, *v101.i64, v49, v50, v51, v52, v53);
  v55 = v95;
  v96 = vaddq_f32(v95, vmulq_laneq_f32(v54, v101, 3));
  v56 = vadd_f32(v21, v21);
  *v62.i64 = CI::BitmapSampler::read(*(v14 + 8), COERCE_DOUBLE(vsub_f32(*v102.i8, v56)), v55, *v101.i64, v57, v58, v59, v60, v61);
  v63 = v96;
  v97 = vaddq_f32(v96, vmulq_laneq_f32(v62, v101, 2));
  *v69.i64 = CI::BitmapSampler::read(*(v14 + 8), COERCE_DOUBLE(vadd_f32(*v102.i8, v56)), v63, *v101.i64, v64, v65, v66, v67, v68);
  v70 = v97;
  v98 = vaddq_f32(v97, vmulq_laneq_f32(v69, v101, 2));
  *v76.i64 = CI::BitmapSampler::read(*(v14 + 8), COERCE_DOUBLE(vsub_f32(*v102.i8, v21)), v70, *v101.i64, v71, v72, v73, v74, v75);
  v77 = v98;
  v99 = vaddq_f32(v98, vmulq_lane_f32(v76, *v101.f32, 1));
  *v83.i64 = CI::BitmapSampler::read(*(v14 + 8), COERCE_DOUBLE(vadd_f32(*v102.i8, v21)), v77, *v101.i64, v78, v79, v80, v81, v82);
  v84 = v99;
  v100 = vaddq_f32(v99, vmulq_lane_f32(v83, *v101.f32, 1));
  *v90.i64 = CI::BitmapSampler::read(*(v14 + 8), *v102.i64, v84, *v101.i64, v85, v86, v87, v88, v89);
  *&result = vaddq_f32(v100, vmulq_n_f32(v90, v101.f32[0])).u64[0];
  return result;
}

double CI::sw_gaussianBlur7(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 64);
  v11 = *(v4 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (v10 == 5)
  {
    v13 = v12;
  }

  v14 = a4 + 80 * v5;
  v54 = *v9;
  v53 = *v13;
  v15 = *CI::getDC(a1);
  v51 = vextq_s8(v54, v54, 8uLL).u64[0];
  v16 = vsub_f32(v15, v51);
  LODWORD(v17) = *(v14 + 24);
  v18.i32[0] = *(v14 + 36);
  *v19.i32 = vmuls_lane_f32(*(v14 + 32), v16, 1);
  *&v20 = *v19.i32 + (v16.f32[0] * *(v14 + 28));
  v16.f32[0] = *&v17 + (vmuls_lane_f32(*(v14 + 20), v16, 1) + (v16.f32[0] * *(v14 + 16)));
  *v21.f64 = *v18.i32 + *&v20;
  v16.f32[1] = *v18.i32 + *&v20;
  *v24.i64 = CI::BitmapSampler::read(*(v14 + 8), *&v16, v21, v17, v20, v19, v18, v22, v23);
  v52 = v24;
  *v24.f32 = vsub_f32(v15, *v54.i8);
  LODWORD(v25) = *(v14 + 24);
  v26.i32[0] = *(v14 + 36);
  *v27.i32 = vmuls_lane_f32(*(v14 + 32), *v24.f32, 1);
  *&v28 = *v27.i32 + (v24.f32[0] * *(v14 + 28));
  v24.f32[0] = *&v25 + (vmuls_lane_f32(*(v14 + 20), *v24.f32, 1) + (v24.f32[0] * *(v14 + 16)));
  *v29.f64 = *v26.i32 + *&v28;
  v24.f32[1] = *v26.i32 + *&v28;
  *v32.i64 = CI::BitmapSampler::read(*(v14 + 8), *v24.i64, v29, v25, v28, v27, v26, v30, v31);
  v50 = v32;
  *v32.f32 = vadd_f32(*v54.i8, v15);
  LODWORD(v33) = *(v14 + 24);
  v34.i32[0] = *(v14 + 36);
  *v35.i32 = vmuls_lane_f32(*(v14 + 32), *v32.f32, 1);
  *&v36 = *v35.i32 + (v32.f32[0] * *(v14 + 28));
  v32.f32[0] = *&v33 + (vmuls_lane_f32(*(v14 + 20), *v32.f32, 1) + (v32.f32[0] * *(v14 + 16)));
  *v37.f64 = *v34.i32 + *&v36;
  v32.f32[1] = *v34.i32 + *&v36;
  *v40.i64 = CI::BitmapSampler::read(*(v14 + 8), *v32.i64, v37, v33, v36, v35, v34, v38, v39);
  v55 = v40;
  *v40.f32 = vadd_f32(v51, v15);
  LODWORD(v41) = *(v14 + 24);
  v42.i32[0] = *(v14 + 36);
  *v43.i32 = vmuls_lane_f32(*(v14 + 32), *v40.f32, 1);
  *&v44 = *v43.i32 + (v40.f32[0] * *(v14 + 28));
  v40.f32[0] = *&v41 + (vmuls_lane_f32(*(v14 + 20), *v40.f32, 1) + (v40.f32[0] * *(v14 + 16)));
  *v45.f64 = *v42.i32 + *&v44;
  v40.f32[1] = *v42.i32 + *&v44;
  *v48.i64 = CI::BitmapSampler::read(*(v14 + 8), *v40.i64, v45, v41, v44, v43, v42, v46, v47);
  *&result = vaddq_f32(vmulq_n_f32(vaddq_f32(v50, v55), v53.f32[0]), vmulq_lane_f32(vaddq_f32(v52, v48), v53, 1)).u64[0];
  return result;
}

double CI::sw_gaussianBlur5(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 64);
  v11 = *(v4 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (v10 == 5)
  {
    v13 = v12;
  }

  v14 = a4 + 80 * v5;
  v15 = *v9;
  v66 = *v13;
  DC = CI::getDC(a1);
  *&v17 = *(v14 + 24) + (vmuls_lane_f32(*(v14 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v14 + 16)));
  *(&v17 + 1) = *(v14 + 36) + (vmuls_lane_f32(*(v14 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *(v14 + 28)));
  v65 = v17;
  v18 = vadd_f32(v15, *CI::getDC(DC));
  LODWORD(v19) = *(v14 + 24);
  LODWORD(v20) = *(v14 + 28);
  v21.i32[0] = *(v14 + 36);
  *v22.i32 = vmuls_lane_f32(*(v14 + 32), v18, 1);
  *v23.f64 = *&v19 + (vmuls_lane_f32(*(v14 + 20), v18, 1) + (v18.f32[0] * *(v14 + 16)));
  *(v23.f64 + 1) = *v21.i32 + (*v22.i32 + (v18.f32[0] * *&v20));
  v24 = vsub_f32(*&v23.f64[0], *&v65);
  v25 = vadd_f32(v24, v24);
  *v28.i64 = CI::BitmapSampler::read(*(v14 + 8), COERCE_DOUBLE(vsub_f32(*&v65, v25)), v23, v19, v20, v22, v21, v26, v27);
  v61 = vaddq_f32(vmulq_laneq_f32(v28, v66, 2), 0);
  *v35.i64 = CI::BitmapSampler::read(*(v14 + 8), COERCE_DOUBLE(vadd_f32(*&v65, v25)), 0, v29, v30, v31, v32, v33, v34);
  v36 = v61;
  v62 = vaddq_f32(v61, vmulq_laneq_f32(v35, v66, 2));
  *v43.i64 = CI::BitmapSampler::read(*(v14 + 8), COERCE_DOUBLE(vsub_f32(*&v65, v24)), v36, v37, v38, v39, v40, v41, v42);
  v44 = v62;
  v63 = vaddq_f32(v62, vmulq_lane_f32(v43, *v66.f32, 1));
  *v51.i64 = CI::BitmapSampler::read(*(v14 + 8), COERCE_DOUBLE(vadd_f32(*&v65, v24)), v44, v45, v46, v47, v48, v49, v50);
  v52 = v63;
  v64 = vaddq_f32(v63, vmulq_lane_f32(v51, *v66.f32, 1));
  *v59.i64 = CI::BitmapSampler::read(*(v14 + 8), v65, v52, v53, v54, v55, v56, v57, v58);
  *&result = vaddq_f32(v64, vmulq_n_f32(v59, v66.f32[0])).u64[0];
  return result;
}

double CI::sw_gaussianBlur3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v32 = *v9;
  v11 = *CI::getDC(a1);
  v12 = vsub_f32(v11, *&v32);
  LODWORD(v13) = *(v10 + 24);
  v14.i32[0] = *(v10 + 36);
  *v15.i32 = vmuls_lane_f32(*(v10 + 32), v12, 1);
  *&v16 = *v15.i32 + (v12.f32[0] * *(v10 + 28));
  v12.f32[0] = *&v13 + (vmuls_lane_f32(*(v10 + 20), v12, 1) + (v12.f32[0] * *(v10 + 16)));
  *v17.f64 = *v14.i32 + *&v16;
  v12.f32[1] = *v14.i32 + *&v16;
  *v20.i64 = CI::BitmapSampler::read(*(v10 + 8), *&v12, v17, v13, v16, v15, v14, v18, v19);
  v31 = v20;
  *v20.f32 = vadd_f32(*&v32, v11);
  LODWORD(v21) = *(v10 + 24);
  v22.i32[0] = *(v10 + 36);
  *v23.i32 = vmuls_lane_f32(*(v10 + 32), *v20.f32, 1);
  *&v24 = *v23.i32 + (v20.f32[0] * *(v10 + 28));
  v20.f32[0] = *&v21 + (vmuls_lane_f32(*(v10 + 20), *v20.f32, 1) + (v20.f32[0] * *(v10 + 16)));
  *v25.f64 = *v22.i32 + *&v24;
  v20.f32[1] = *v22.i32 + *&v24;
  *v28.i64 = CI::BitmapSampler::read(*(v10 + 8), *v20.i64, v25, v21, v24, v23, v22, v26, v27);
  v29.i64[0] = 0x3F0000003F000000;
  v29.i64[1] = 0x3F0000003F000000;
  *&result = vmulq_f32(vaddq_f32(v31, v28), v29).u64[0];
  return result;
}

double CI::sw_glassDistort(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = *(a1 + 5);
  v6 = *(v5 + 56);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v5 + 64) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v5 + 88) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 104);
  v15 = (a3 + 16 * v14);
  v16 = (a2 + (v14 << 6));
  if (*(v5 + 112) == 5)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v5 + 128);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (*(v5 + 136) == 5)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v5 + 152);
  v23 = (a3 + 16 * v22);
  v24 = (a2 + (v22 << 6));
  if (*(v5 + 160) == 5)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = a4 + 80 * *(v5 + 32);
  v27 = a4 + 80 * *(v5 + 8);
  v28 = *v9;
  v29 = *v13;
  v30 = *v17;
  v31 = *v21;
  v32 = *v25;
  a5.n128_u32[0] = *(a2 + (*(v5 + 176) << 6));
  v72 = a5;
  v33 = *CI::getDC(a1);
  v34 = vmul_f32(v28, v33);
  v35 = vadd_f32(v29, v34);
  v36 = vdup_n_s32(0x3F7FFFFFu);
  HIDWORD(v37) = 1056964608;
  *&v38.f64[0] = vadd_f32(vmul_f32(v32, vminnm_f32(vsub_f32(v35, vrndm_f32(v35)), v36)), 0x3F0000003F000000);
  v39 = vadd_f32(v30, v34);
  *v40.i8 = vrndm_f32(v39);
  *v41.i8 = vadd_f32(vmul_f32(v32, vminnm_f32(vsub_f32(v39, *v40.i8), v36)), 0x3F0000003F000000);
  v69 = v41;
  v42 = vadd_f32(v31, v34);
  *v41.i8 = vrndm_f32(v42);
  *v43.i8 = vadd_f32(vmul_f32(v32, vminnm_f32(vsub_f32(v42, *v41.i8), v36)), 0x3F0000003F000000);
  v70 = v43;
  LODWORD(v37) = *(v26 + 28);
  *v43.i32 = *(v26 + 24) + (vmuls_lane_f32(*(v26 + 20), *&v38.f64[0], 1) + (*v38.f64 * *(v26 + 16)));
  v41.i32[0] = *(v26 + 36);
  v36.f32[0] = vmuls_lane_f32(*(v26 + 32), *&v38.f64[0], 1);
  *v38.f64 = *v41.i32 + (v36.f32[0] + (*v38.f64 * *&v37));
  v43.i32[1] = LODWORD(v38.f64[0]);
  v71 = CI::BitmapSampler::read(*(v26 + 8), *v43.i64, v38, *&v36, v37, v41, v40, v44, v45);
  HIDWORD(v46) = v69.i32[1];
  v47.i32[0] = *(v26 + 36);
  *&v48 = vmuls_lane_f32(*(v26 + 32), *v69.i8, 1);
  *&v46 = *&v48 + (*v69.i32 * *(v26 + 28));
  *&v49 = *(v26 + 24) + (vmuls_lane_f32(*(v26 + 20), *v69.i8, 1) + (*v69.i32 * *(v26 + 16)));
  *v50.f64 = *v47.i32 + *&v46;
  *(&v49 + 1) = *v47.i32 + *&v46;
  v69.i64[0] = CI::BitmapSampler::read(*(v26 + 8), v49, v50, v46, v48, v47, v69, v51, v52);
  HIDWORD(v53) = v70.i32[1];
  v54.i32[0] = *(v26 + 36);
  *&v55 = vmuls_lane_f32(*(v26 + 32), *v70.i8, 1);
  *&v53 = *&v55 + (*v70.i32 * *(v26 + 28));
  *&v56 = *(v26 + 24) + (vmuls_lane_f32(*(v26 + 20), *v70.i8, 1) + (*v70.i32 * *(v26 + 16)));
  *v57.f64 = *v54.i32 + *&v53;
  *(&v56 + 1) = *v54.i32 + *&v53;
  v60 = CI::BitmapSampler::read(*(v26 + 8), v56, v57, v53, v55, v54, v70, v58, v59);
  *&v61.f64[1] = v72.n128_u64[1];
  *&v61.f64[0] = vadd_f32(v33, vmul_n_f32(vsub_f32(vzip1_s32(*v69.i8, *&v60), vdup_lane_s32(*&v71, 0)), v72.n128_f32[0]));
  LODWORD(v62) = *(v27 + 28);
  *&v60 = *(v27 + 24) + (vmuls_lane_f32(*(v27 + 20), *&v61.f64[0], 1) + (*v61.f64 * *(v27 + 16)));
  v63.i32[0] = *(v27 + 36);
  *&v64 = vmuls_lane_f32(*(v27 + 32), *&v61.f64[0], 1);
  *v61.f64 = *v63.i32 + (*&v64 + (*v61.f64 * *&v62));
  HIDWORD(v60) = LODWORD(v61.f64[0]);
  return CI::BitmapSampler::read(*(v27 + 8), v60, v61, v64, v62, v63, v65, v66, v67);
}

double CI::sw_radialGradient(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v19 = *v7;
  v20 = *(a2 + (*(v3 + 32) << 6));
  v21 = *(a2 + (*(v3 + 56) << 6));
  DC = CI::getDC(a1);
  _V2.S[2] = DWORD2(v19);
  _D0 = vsub_f32(*&v19, *DC);
  _D0.f32[0] = sqrtf(vaddv_f32(vmul_f32(_D0, _D0)));
  __asm { FMLA            S1, S0, V2.S[2] }

  if (_S1 <= 1.0)
  {
    v16 = _S1;
  }

  else
  {
    v16 = 1.0;
  }

  _NF = _S1 < 0.0;
  v17 = 0.0;
  if (!_NF)
  {
    v17 = v16;
  }

  *&result = vmlaq_n_f32(vmulq_n_f32(v20, 1.0 - v17), v21, v17).u64[0];
  return result;
}

unint64_t CI::sw_linearGradient(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v17 = *(a2 + (*(v3 + 56) << 6));
  v18 = *(a2 + (*(v3 + 80) << 6));
  v12 = *(a2 + (*(v3 + 104) << 6)) * vaddv_f32(vmul_f32(vsub_f32(*v11, *v7), vsub_f32(*CI::getDC(a1), *v7)));
  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = v12 < 0.0;
  v15 = 0.0;
  if (!v14)
  {
    v15 = v13;
  }

  return vmlaq_n_f32(vmulq_n_f32(v17, 1.0 - v15), v18, v15).u64[0];
}

unint64_t CI::sw_smoothLinearGradient(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v17 = *(a2 + (*(v3 + 56) << 6));
  v18 = *(a2 + (*(v3 + 80) << 6));
  v12 = *(a2 + (*(v3 + 104) << 6)) * vaddv_f32(vmul_f32(vsub_f32(*v11, *v7), vsub_f32(*CI::getDC(a1), *v7)));
  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = v12 < 0.0;
  v15 = 0.0;
  if (!v14)
  {
    v15 = v13;
  }

  return vmlaq_n_f32(vmulq_n_f32(v17, 1.0 - ((v15 * v15) * ((v15 * -2.0) + 3.0))), v18, (v15 * v15) * ((v15 * -2.0) + 3.0)).u64[0];
}

unint64_t CI::sw_gaussianGradient(CI *a1, uint64_t a2)
{
  v2 = *(a1 + 5);
  v5 = *(a2 + (v2[1] << 6));
  v6 = *(a2 + (v2[4] << 6));
  v7 = *(a2 + (v2[7] << 6));
  v3 = vsub_f32(*v5.f32, *CI::getDC(a1));
  v3.f32[0] = fminf(vmuls_lane_f32(sqrtf(vaddv_f32(vmul_f32(v3, v3))), v5, 2), 1.0);
  v3.f32[0] = (v3.f32[0] * -2.0 + 3.0) * v3.f32[0] * v3.f32[0];
  return vmlaq_n_f32(vmulq_n_f32(v6, 1.0 - v3.f32[0]), v7, v3.f32[0]).u64[0];
}

double CI::sw_hsvwheel(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v35 = *v7;
  DC = CI::getDC(a1);
  v9 = v35;
  v10 = vsub_f32(*DC, vdup_lane_s32(*v35.f32, 1));
  if (v10.f32[0] == 0.0)
  {
    v11 = -1.5;
    v12 = COERCE_INT32X2_T(1.5);
    if (v10.f32[1] > 0.0)
    {
      v11 = 1.5;
    }
  }

  else
  {
    v34 = v10;
    v13 = atan2f(v10.f32[1], v10.f32[0]);
    v10 = v34;
    v9 = v35;
    v12.i32[1] = 1074340347;
    v11 = v13 * 3.0 / 3.1415926;
  }

  v14 = sqrtf(vaddv_f32(vmul_f32(v10, v10)));
  v15 = v11;
  v16 = vmuls_lane_f32(v14, v9, 2);
  if (v16 <= 1.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  if (v16 < 0.0)
  {
    v17 = 0.0;
  }

  v18.i32[3] = 0;
  v18.f32[0] = v15;
  v18.f32[1] = v15 + -2.0;
  v18.f32[2] = v15 + 2.0;
  __asm
  {
    FMOV            V6.4S, #3.0
    FMOV            V7.4S, #-1.0
  }

  v25 = vmaxnmq_f32(vaddq_f32(vabdq_f32(_Q6, vabsq_f32(v18)), _Q7), 0);
  __asm { FMOV            V7.4S, #1.0 }

  v27 = vminnmq_f32(v25, _Q7);
  v28 = vminnmq_f32(vmaxnmq_f32(v27, 0), _Q7);
  v18.i64[0] = 0xC0000000C0000000;
  v18.i64[1] = 0xC0000000C0000000;
  *v12.i32 = 1.0 - v17;
  v29 = vmulq_n_f32(vmlaq_n_f32(vdupq_lane_s32(v12, 0), vmlaq_laneq_f32(vmulq_n_f32(v27, 1.0 - v9.f32[3]), vmulq_f32(vmulq_f32(v28, v28), vmlaq_f32(_Q6, v18, v28)), v9, 3), v17), v9.f32[0]);
  v29.i32[3] = 1.0;
  v30 = v9.f32[1] - v14;
  if (v30 <= 1.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = 1.0;
  }

  if (v30 >= 0.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0.0;
  }

  *&result = vmulq_n_f32(v29, v32).u64[0];
  return result;
}

double CI::sw_hsvwheeldithered(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v42 = *v7;
  v8 = *(a2 + (*(v3 + 32) << 6));
  DC = CI::getDC(a1);
  v10 = vsub_f32(*DC, vdup_lane_s32(*v42.f32, 1));
  if (v10.f32[0] == 0.0)
  {
    v11 = -1.5;
    if (v10.f32[1] > 0.0)
    {
      v11 = 1.5;
    }
  }

  else
  {
    v40 = v10;
    v12 = atan2f(v10.f32[1], v10.f32[0]);
    v10 = v40;
    v11 = v12 * 3.0 / 3.1415926;
  }

  v13 = sqrtf(vaddv_f32(vmul_f32(v10, v10)));
  v14 = v11;
  v15 = vmuls_lane_f32(v13, v42, 2);
  v16 = 1.0;
  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  if (v15 >= 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  v18.f32[0] = v14;
  v18.f32[1] = v14 + -2.0;
  v18.i64[1] = COERCE_UNSIGNED_INT(v14 + 2.0);
  __asm { FMOV            V4.4S, #3.0 }

  v24 = vabdq_f32(_Q4, vabsq_f32(v18));
  __asm { FMOV            V5.4S, #-1.0 }

  v26 = vmaxnmq_f32(vaddq_f32(v24, _Q5), 0);
  __asm { FMOV            V5.4S, #1.0 }

  v28 = vminnmq_f32(v26, _Q5);
  v29 = vminnmq_f32(vmaxnmq_f32(v28, 0), _Q5);
  v30.i64[0] = 0xC0000000C0000000;
  v30.i64[1] = 0xC0000000C0000000;
  v31 = vmulq_f32(vmulq_f32(v29, v29), vmlaq_f32(_Q4, v30, v29));
  v32 = vmlaq_laneq_f32(vmulq_n_f32(v28, 1.0 - v42.f32[3]), v31, v42, 3);
  v31.f32[0] = 1.0 - v17;
  v41 = vmlaq_n_f32(vdupq_lane_s32(*v31.f32, 0), v32, v17);
  v33 = vrndm_f32(*CI::getDC(DC));
  v34 = (v33.f32[0] * 13.0 + 1111.0) / 17.0;
  v33.f32[0] = (v33.f32[1] * 11.0 + 7777.0) / 19.0;
  v33.f32[0] = v34 + (v33.f32[0] * ((v33.f32[0] + (v33.f32[0] * v34)) + (floorf((v33.f32[0] + (v33.f32[0] * v34)) / 37.0) * -37.0)));
  v33.f32[0] = (v33.f32[0] + (floorf(v33.f32[0] / 37.0) * -37.0)) * v34;
  v33.f32[0] = (v33.f32[0] + (floorf(v33.f32[0] / 37.0) * -37.0)) * v34;
  v35 = (((v33.f32[0] + (floorf(v33.f32[0] / 37.0) * -37.0)) / 37.0) + -0.5) * v8;
  *&v35 = v35;
  v37 = vaddq_f32(vmulq_n_f32(v41, v42.f32[0]), vdupq_lane_s32(*&v35, 0));
  v36 = 1.0;
  v37.i32[3] = 1.0;
  if ((v42.f32[1] - v13) <= 1.0)
  {
    v36 = v42.f32[1] - v13;
  }

  if ((v42.f32[1] - v13) >= 0.0)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0.0;
  }

  *&result = vmulq_n_f32(v37, v38).u64[0];
  return result;
}

id CIGVGraphCreate()
{
  if (CIGVGraphCreate_onceToken != -1)
  {
    CIGVGraphCreate_cold_1();
  }

  if (!CIGVGraphCreate_gvClass)
  {
    return 0;
  }

  v1 = MEMORY[0x1E69A28D0];

  return objc_alloc_init(v1);
}

void __CIGVGraphCreate_block_invoke()
{
  CIGVGraphCreate_gvClass = NSClassFromString(&cfstr_Gvgraph.isa);
  if (!CIGVGraphCreate_gvClass)
  {
    NSLog(&cfstr_Graphvisualize.isa);
  }
}

uint64_t CIGVNodeCreateForNode(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = [CIGVNode alloc];

  return [(CIGVNode *)v10 initWithCINode:a1 extent:a2, a3, a4, a5];
}

uint64_t CIGVRendererSetOutputFileURL(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a2)}];
  }

  else
  {
    v3 = 0;
  }

  return [a1 setFileURL:v3];
}

uint64_t CIGVRendererSetOutputFileTitle(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];

  return [a1 setFileTitle:v3];
}

void CIGVDumpToFile(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 3)
  {
    CIGVDumpToFile_cold_1();
  }

  v7 = objc_alloc_init(*off_1E75C2C98[a2]);
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s/%s", a3, a4];
    [v8 setFileTitle:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "CI Render Graph")}];
    v10 = [v9 UTF8String];
    if (v10)
    {
      v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v10)}];
    }

    [v8 setFileURL:v10];
    [a1 render:v8];
    [v8 flushRender];

    CFRelease(v8);
  }
}

double CI::sw_boxFilter3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  v5 = *CI::getDC(a1);
  v6 = vadd_f32(v5, COERCE_FLOAT32X2_T(--0.0000305175998));
  LODWORD(v7) = *(v4 + 24);
  v8.i32[0] = *(v4 + 36);
  *v9.i32 = vmuls_lane_f32(*(v4 + 32), v6, 1);
  *&v10 = *v9.i32 + (v6.f32[0] * *(v4 + 28));
  v6.f32[0] = *&v7 + (vmuls_lane_f32(*(v4 + 20), v6, 1) + (v6.f32[0] * *(v4 + 16)));
  *v11.f64 = *v8.i32 + *&v10;
  v6.f32[1] = *v8.i32 + *&v10;
  *v14.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v6, v11, v7, v10, v9, v8, v12, v13);
  *&v15.f64[0] = vadd_f32(v5, 0x3F0000003F800000);
  *&v16 = vmuls_lane_f32(*(v4 + 20), *&v15.f64[0], 1) + (*v15.f64 * *(v4 + 16));
  LODWORD(v17) = *(v4 + 24);
  v18.i32[0] = *(v4 + 36);
  *v19.i32 = vmuls_lane_f32(*(v4 + 32), *&v15.f64[0], 1);
  v20 = vdupq_n_s32(0x3EE38E39u);
  v47 = vmulq_f32(v14, v20);
  v14.f32[0] = *&v17 + *&v16;
  *v15.f64 = *v18.i32 + (*v19.i32 + (*v15.f64 * *(v4 + 28)));
  v14.i32[1] = LODWORD(v15.f64[0]);
  *v22.i64 = CI::BitmapSampler::read(*(v4 + 8), *v14.i64, v15, v16, v17, v20, v19, v18, v21);
  *&v23.f64[0] = vadd_f32(v5, 0xBF800000BF000000);
  *&v24 = vmuls_lane_f32(*(v4 + 20), *&v23.f64[0], 1) + (*v23.f64 * *(v4 + 16));
  LODWORD(v25) = *(v4 + 24);
  v26.i32[0] = *(v4 + 36);
  *v27.i32 = vmuls_lane_f32(*(v4 + 32), *&v23.f64[0], 1);
  v44 = vdupq_n_s32(0x3E638E39u);
  v46 = vmulq_f32(v22, v44);
  v22.f32[0] = *&v25 + *&v24;
  *v23.f64 = *v26.i32 + (*v27.i32 + (*v23.f64 * *(v4 + 28)));
  v22.i32[1] = LODWORD(v23.f64[0]);
  *v29.i64 = CI::BitmapSampler::read(*(v4 + 8), *v22.i64, v23, v24, v25, v44, v27, v26, v28);
  __asm { FMOV            V1.2S, #1.0 }

  *&v35.f64[0] = vadd_f32(v5, COERCE_FLOAT32X2_T(-_D1));
  *&v36 = vmuls_lane_f32(*(v4 + 20), *&v35.f64[0], 1) + (*v35.f64 * *(v4 + 16));
  LODWORD(v37) = *(v4 + 24);
  v38.i32[0] = *(v4 + 36);
  *v39.i32 = vmuls_lane_f32(*(v4 + 32), *&v35.f64[0], 1);
  v40 = v44;
  v45 = vmulq_f32(v29, v44);
  v29.f32[0] = *&v37 + *&v36;
  *v35.f64 = *v38.i32 + (*v39.i32 + (*v35.f64 * *(v4 + 28)));
  v29.i32[1] = LODWORD(v35.f64[0]);
  *v42.i64 = CI::BitmapSampler::read(*(v4 + 8), *v29.i64, v35, v36, v37, v40, v39, v38, v41);
  *&result = vaddq_f32(vaddq_f32(vaddq_f32(v47, v46), v45), vmulq_f32(v42, vdupq_n_s32(0x3DE38E39u))).u64[0];
  return result;
}

double CI::sw_multiplyImages(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vmulq_f32(*v7, *v11).u64[0];
  return result;
}

double CI::sw_subtractImages(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vsubq_f32(*v7, *v11).u64[0];
  return result;
}

uint64_t CI::sw_computeAB(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v7 = *(a1 + 40);
  v8 = *(v7 + 8);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v7 + 16) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v7 + 32);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v7 + 40) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v7 + 56);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v7 + 64) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v7 + 80);
  v21 = (a3 + 16 * v20);
  v22 = (a2 + (v20 << 6));
  if (*(v7 + 88) == 5)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v39 = *v19;
  v24 = *v23;
  v24.i32[0] = *(a2 + (*(v7 + 104) << 6));
  *&a7 = COERCE_FLOAT(*v11->i8) + *v24.i32;
  v40 = *&a7;
  *v24.i8 = vadd_f32(vzip1_s32(*v15, *&vextq_s8(*v15->i8, *v15->i8, 8uLL)), vdup_lane_s32(*v24.i8, 0));
  v37 = *v11->i8;
  v38 = vextq_s8(vzip1q_s32(*v15->i8, v24), *v15->i8, 4uLL);
  v25 = vextq_s8(v37, v37, 8uLL);
  *v25.i8 = vdiv_f32(vext_s8(*v11, *v25.i8, 4uLL), vdup_lane_s32(*&a7, 0));
  v41 = *v25.i8;
  *v26.i64 = vec2::get_xxy(&v41, v25);
  _Q5 = v37;
  _Q0 = vsubq_f32(v38, vmulq_f32(vzip2q_s32(vextq_s8(v37, v37, 0xCuLL), v37), v26));
  _D1 = vsub_f32(vext_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL), 4uLL), vmul_n_f32(v41, *v39.i32));
  _S2 = (_D1.f32[1] - (_D1.f32[0] * (_Q0.f32[1] / _Q0.f32[0]))) / (_Q0.f32[2] - (_Q0.f32[1] * (_Q0.f32[1] / _Q0.f32[0])));
  __asm { FMLS            S1, S2, V0.S[1] }

  _Q0.f32[0] = _D1.f32[0] / _Q0.f32[0];
  __asm
  {
    FMLS            S1, S0, V5.S[1]
    FMLS            S1, S2, V5.S[2]
  }

  *&v35 = _D1.f32[0] / v40;
  HIDWORD(v35) = _Q0.i32[0];
  return v35;
}

double CI::sw_finalResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v7;
  v13 = vmulq_f32(*v7, *v11);
  v12.f32[0] = COERCE_FLOAT(HIDWORD(*v7)) + (v13.f32[2] + vaddv_f32(*v13.f32));
  *&result = vdupq_lane_s32(*v12.f32, 0).u64[0];
  return result;
}

uint64_t CI::sw_combineRGB_and_A(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = a3 + 16 * v4;
  v6 = a2 + (v4 << 6);
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return *v7;
}

double CI::sw_swizzleXXX1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vdupq_lane_s32(*v7, 0).u64[0];
  return result;
}

double CI::sw_swizzleYYZ1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = *v7;
  LODWORD(v8) = HIDWORD(*v7);
  return *&v8;
}

double CI::sw_swizzleYZZ1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vzip2q_s32(vextq_s8(*v7, *v7, 0xCuLL), *v7).u64[0];
  return result;
}

double CI::sw_dotscreen(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 64);
  v10 = *(v3 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (v9 == 5)
  {
    v12 = v11;
  }

  v27 = *v7;
  v28 = *(a2 + (v8 << 6));
  v26 = *v12;
  v13 = vsub_f32(*CI::getDC(a1), *v28.f32);
  v14 = vmul_f32(*v26.i8, v13);
  v15 = vmul_f32(*&vextq_s8(v26, v26, 8uLL), v13);
  v16 = vadd_f32(*v28.f32, vadd_f32(vzip1_s32(v14, v15), vzip2_s32(v14, v15)));
  v17 = vmul_f32(vminnm_f32(vsub_f32(v16, vrndm_f32(v16)), vdup_n_s32(0x3F7FFFFFu)), vdup_n_s32(0x40C90FDBu));
  v26.i32[1] = v17.i32[1];
  v18 = sinf(v17.f32[0]);
  v19 = (v18 + sinf(*&v26.i32[1])) * 0.25 * (-1.0 / v28.f32[2] + 0.995) + 0.5;
  v20 = vmulq_f32(v27, xmmword_19CF23D50);
  v21 = vmuls_lane_f32((v20.f32[2] + vaddv_f32(*v20.f32)) - v19, v28, 2) + 0.5;
  v22 = 1.0;
  if (v21 <= 1.0)
  {
    v22 = v21;
  }

  v23 = v21 < 0.0;
  v24 = 0;
  if (!v23)
  {
    *v24.i32 = v22;
  }

  *v24.i32 = vmuls_lane_f32(*v24.i32, v27, 3);
  *&result = vdupq_lane_s32(v24, 0).u64[0];
  return result;
}

double CI::sw_hatchedscreen(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 64);
  v10 = *(v3 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (v9 == 5)
  {
    v12 = v11;
  }

  v32 = *v7;
  v30 = *(a2 + (v8 << 6));
  v31 = *v12;
  v13 = vsub_f32(*CI::getDC(a1), *v30.f32);
  v14 = vmul_f32(*v31.i8, v13);
  v15 = vmul_f32(*&vextq_s8(v31, v31, 8uLL), v13);
  v16 = vadd_f32(*v30.f32, vadd_f32(vzip1_s32(v14, v15), vzip2_s32(v14, v15)));
  v17 = vminnm_f32(vsub_f32(v16, vrndm_f32(v16)), vdup_n_s32(0x3F7FFFFFu));
  __asm { FMOV            V1.2S, #1.0 }

  v23 = vminnm_f32(vsub_f32(_D1, v17), v17);
  v24 = vadd_f32(v23, v23);
  _D1.f32[0] = v24.f32[1] * 0.5 + 0.5;
  v24.f32[0] = fminf(v24.f32[0], _D1.f32[0]);
  v25 = vmulq_f32(v32, xmmword_19CF23D50);
  v26 = vmuls_lane_f32((v25.f32[2] + vaddv_f32(*v25.f32)) - v24.f32[0], v30, 2) + 0.5;
  v27 = 1.0;
  if (v26 <= 1.0)
  {
    v27 = v26;
  }

  _NF = v26 < 0.0;
  v28 = 0;
  if (!_NF)
  {
    *v28.i32 = v27;
  }

  *v28.i32 = vmuls_lane_f32(*v28.i32, v32, 3);
  *&result = vdupq_lane_s32(v28, 0).u64[0];
  return result;
}

double CI::sw_linescreen(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 64);
  v10 = *(v3 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (v9 == 5)
  {
    v12 = v11;
  }

  v25 = *v7;
  v23 = *(a2 + (v8 << 6));
  v24 = *v12;
  v13 = vsub_f32(*CI::getDC(a1), *v23.f32);
  v14 = vmul_f32(*v24.i8, v13);
  v15 = vmul_f32(*&vextq_s8(v24, v24, 8uLL), v13);
  v16 = vadd_f32(*v23.f32, vadd_f32(vzip1_s32(v14, v15), vzip2_s32(v14, v15)));
  v16.f32[0] = vminnm_f32(vsub_f32(v16, vrndm_f32(v16)), vdup_n_s32(0x3F7FFFFFu)).f32[0];
  v17 = 1.0;
  v16.f32[0] = fminf(1.0 - v16.f32[0], v16.f32[0]);
  v18 = vmulq_f32(v25, xmmword_19CF23D50);
  v19 = vmuls_lane_f32((v18.f32[2] + vaddv_f32(*v18.f32)) - (v16.f32[0] + v16.f32[0]), v23, 2) + 0.5;
  if (v19 <= 1.0)
  {
    v17 = v19;
  }

  v20 = v19 < 0.0;
  v21 = 0;
  if (!v20)
  {
    *v21.i32 = v17;
  }

  *v21.i32 = vmuls_lane_f32(*v21.i32, v25, 3);
  *&result = vdupq_lane_s32(v21, 0).u64[0];
  return result;
}

double CI::sw_circularscreen(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v19 = *v11->f32;
  v20 = *v7;
  v12 = vsub_f32(*CI::getDC(a1), *v11);
  v12.f32[0] = vmuls_lane_f32(sqrtf(vaddv_f32(vmul_f32(v12, v12))), v19, 2);
  v12.f32[0] = v12.f32[0] - floorf(v12.f32[0]);
  v13 = 1.0;
  v14 = vmulq_f32(v20, xmmword_19CF23D50);
  v12.f32[0] = (v14.f32[2] + vaddv_f32(*v14.f32)) + fminf(1.0 - v12.f32[0], v12.f32[0]) * -2.0;
  v15 = vmuls_lane_f32(v12.f32[0], v19, 3) + 0.5;
  if (v15 <= 1.0)
  {
    v13 = v15;
  }

  v16 = v15 < 0.0;
  v17 = 0;
  if (!v16)
  {
    *v17.i32 = v13;
  }

  *&result = vmulq_laneq_f32(vdupq_lane_s32(v17, 0), v20, 3).u64[0];
  return result;
}

uint64_t CI::sw_resetalpha(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = a3 + 16 * v4;
  v6 = a2 + (v4 << 6);
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return *v7;
}

double CI::sw_highlightsAndShadows2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v81 = *v7->f32;
  v78 = *v11;
  v80 = *v15;
  v16 = *v7->f32;
  v16.i32[3] = 0;
  v76 = v16;
  v72 = vmaxnmq_f32(v16, 0);
  v17 = vmulq_f32(v72, xmmword_19CF26DA0);
  v18 = COERCE_FLOAT(*v15);
  v19 = pow(fminf((v17.f32[2] + vaddv_f32(*v17.f32)) / fmaxf(COERCE_FLOAT(*&v7[1]) + vaddv_f32(*v7), 0.001), 1.0), 1.0 - v18) * v18;
  v20 = v19;
  *&v19 = -v20;
  v21 = vsubq_f32(vdupq_lane_s32(*&v19, 0), v78);
  v21.i32[3] = 0;
  v22 = vaddq_f32(vdupq_laneq_s32(v80, 2), vmulq_n_f32(_simd_pow_f4(xmmword_19CF26DB0, v21), 1.0 - v80.f32[2]));
  v70 = v22.f32[0];
  v75 = fmaxf(fmaxf(fmaxf(v78.f32[0], v78.f32[1]), v78.f32[2]), 0.0);
  v79 = sqrtf(v75);
  v23 = (v80.f32[0] + -0.5) + (v80.f32[0] + -0.5);
  if (v23 <= 1.0)
  {
    v24 = (v80.f32[0] + -0.5) + (v80.f32[0] + -0.5);
  }

  else
  {
    v24 = 1.0;
  }

  if (v23 >= 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = ((v25 * v25) * ((v25 * -2.0) + 3.0)) * 0.5 + 0.5;
  v77 = vminnmq_f32(v76, 0);
  v69 = v26;
  v27 = vmulq_n_f32(v72, v26);
  v27.i32[3] = 0;
  v28 = v22;
  v28.i32[3] = 0;
  v29 = vmulq_n_f32(_simd_pow_f4(v27, v28), v20 + 1.0);
  v73 = vaddq_f32(v29, v29);
  v68 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF26DE0, v81, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF26DD0, *v81.f32, 1), vmulq_n_f32(xmmword_19CF26DC0, v81.f32[0])));
  v30 = powf(fmaxf(v68.f32[0], 0.0) * v69, v70);
  v31 = vmlaq_f32(vmulq_f32(v73, vdupq_n_s32(0x3F266666u)), vdupq_n_s32(0x3EB33333u), vaddq_f32(vmulq_laneq_f32(xmmword_19CF26E10, v68, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF26E00, *v68.f32, 1), vmulq_n_f32(xmmword_19CF26DF0, v30 + v30))));
  v32 = v20 + 0.1;
  v33 = sqrtf(v79) / v32;
  if (v33 <= 1.0)
  {
    v34 = v33;
  }

  else
  {
    v34 = 1.0;
  }

  if (v33 >= 0.0)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0.0;
  }

  v74 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v81, 1.0 - ((v35 * v35) * ((v35 * -2.0) + 3.0))), v31, (v35 * v35) * ((v35 * -2.0) + 3.0)), 1.0 - v79), v81, v79);
  v36.i64[0] = 0x8000000080000000;
  v36.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v71 = vandq_s8(vorrq_s8(vandq_s8(v81, v36), _Q2), vorrq_s8(vcltzq_f32(v81), vcgtzq_f32(v81)));
  v36.i32[1] = v80.i32[1];
  v42 = vmulq_laneq_f32(vabsq_f32(v81), v80, 3);
  *v36.i32 = 2.0 - v80.f32[1];
  v42.i32[3] = 0;
  v43 = vdupq_lane_s32(*v36.i8, 0);
  v43.i32[3] = 0;
  v44 = vmulq_f32(v71, _simd_pow_f4(v42, v43));
  v45 = vmulq_f32(v44, xmmword_19CF23D60);
  v46 = (v45.f32[2] + vaddv_f32(*v45.f32));
  v47 = v46 * -2.6 + v46 * -2.6 * v46 + 0.98;
  v48 = v46 * -6.25 + v46 * -6.25 * v46 + 0.5965;
  v49 = fmaxf(fmaxf(v47, v48), 1.0);
  v50 = v80.f32[1] + 0.3;
  v51.i32[1] = 1071225241;
  v52 = (1.0 - fminf(v50, 1.0)) * 0.4 + 1.0;
  *v51.i32 = (1.0 - v52) * 0.25;
  v53 = (1.0 - v80.f32[1]) * fminf(v49, v75 * 30.0);
  v54 = vmlaq_n_f32(vmulq_n_f32(v44, 1.0 - v53), vmlaq_n_f32(vdupq_lane_s32(v51, 0), v44, v52), v53);
  v55 = (v79 + -0.2) / 0.6;
  if (v55 <= 1.0)
  {
    v56 = (v79 + -0.2) / 0.6;
  }

  else
  {
    v56 = 1.0;
  }

  if (v55 >= 0.0)
  {
    v57 = v56;
  }

  else
  {
    v57 = 0.0;
  }

  v58 = vmlaq_n_f32(vmulq_n_f32(v81, 1.0 - ((v57 * v57) * ((v57 * -2.0) + 3.0))), v54, (v57 * v57) * ((v57 * -2.0) + 3.0));
  v59 = fminf(v79, 1.0);
  v60 = vmlaq_n_f32(vmulq_n_f32(v74, 1.0 - v59), vmlaq_n_f32(vmulq_n_f32(v81, 1.0 - v75), v58, v75), v59);
  v61 = vmulq_f32(v60, xmmword_19CF23D60);
  *v61.i64 = (v61.f32[2] + vaddv_f32(*v61.f32));
  v62 = *v61.i64 * -2.6 + *v61.i64 * -2.6 * *v61.i64 + 0.98;
  v61.f32[0] = *v61.i64 * -6.25 + *v61.i64 * -6.25 * *v61.i64 + 0.5965;
  v61.f32[0] = fmaxf(v62, v61.f32[0]);
  v63 = 1.0 - v80.f32[2];
  v64 = v63 * (fabsf(v20) * 0.1);
  v65 = v64 + 1.0;
  *&v63 = (1.0 - v65) * 0.5;
  v61.f32[0] = fminf(fmaxf(v61.f32[0], 1.0), v75 * 30.0);
  v66 = vmlaq_n_f32(vmulq_n_f32(v60, 1.0 - v61.f32[0]), vmlaq_n_f32(vdupq_lane_s32(*&v63, 0), v60, v65), v61.f32[0]);
  v66.i32[3] = 0;
  *&result = vaddq_f32(v77, vmaxnmq_f32(v66, 0)).u64[0];
  return result;
}

double CI::sw_highlightsAndShadows_noblur2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v81 = *v11;
  v82 = *v7->f32;
  v12 = *v7->f32;
  v12.i32[3] = 0;
  v78 = v12;
  v74 = vmaxnmq_f32(v12, 0);
  v13 = vmulq_f32(v74, xmmword_19CF26DA0);
  LODWORD(v14) = HIDWORD(*v7);
  LODWORD(v15) = v7[1];
  v16 = COERCE_FLOAT(*v11);
  v17 = pow(fminf((v13.f32[2] + vaddv_f32(*v13.f32)) / fmaxf(v15 + vaddv_f32(*v7), 0.001), 1.0), 1.0 - v16) * v16;
  v18 = v17;
  *&v17 = -v18;
  v19 = vsubq_f32(vdupq_lane_s32(*&v17, 0), v82);
  v19.i32[3] = 0;
  v20 = vaddq_f32(vdupq_laneq_s32(v81, 2), vmulq_n_f32(_simd_pow_f4(xmmword_19CF26DB0, v19), 1.0 - v81.f32[2]));
  v72 = v20.f32[0];
  v77 = fmaxf(fmaxf(fmaxf(v82.f32[0], v14), v15), 0.0);
  v80 = sqrtf(v77);
  v21 = (v81.f32[0] + -0.5) + (v81.f32[0] + -0.5);
  v22 = 1.0;
  if (v21 <= 1.0)
  {
    v22 = (v81.f32[0] + -0.5) + (v81.f32[0] + -0.5);
  }

  if (v21 >= 0.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = ((v23 * v23) * ((v23 * -2.0) + 3.0)) * 0.5 + 0.5;
  v79 = vminnmq_f32(v78, 0);
  v71 = v24;
  v25 = vmulq_n_f32(v74, v24);
  v25.i32[3] = 0;
  v26 = v20;
  v26.i32[3] = 0;
  v27 = vmulq_n_f32(_simd_pow_f4(v25, v26), v18 + 1.0);
  v75 = vaddq_f32(v27, v27);
  v28 = vmulq_laneq_f32(xmmword_19CF26DE0, v82, 2);
  v29 = vaddq_f32(v28, vaddq_f32(vmulq_lane_f32(xmmword_19CF26DD0, *v82.f32, 1), vmulq_n_f32(xmmword_19CF26DC0, v82.f32[0])));
  v70 = v29;
  v27.i64[0] = 0x8000000080000000;
  v27.i64[1] = 0x8000000080000000;
  v28.i32[0] = 1.0;
  LODWORD(v30) = vbslq_s8(v27, v28, v29).u32[0];
  if (*v29.i32 == 0.0)
  {
    v30 = 0.0;
  }

  v31 = v30;
  v32 = powf(fabsf(*v29.i32) * v71, v72);
  v33 = vmlaq_f32(vmulq_f32(v75, vdupq_n_s32(0x3F266666u)), vdupq_n_s32(0x3EB33333u), vaddq_f32(vmulq_laneq_f32(xmmword_19CF26E10, v70, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF26E00, *v70.f32, 1), vmulq_n_f32(xmmword_19CF26DF0, (v31 * v32) + (v31 * v32)))));
  v34 = v18 + 0.1;
  v35 = sqrtf(v80) / v34;
  if (v35 <= 1.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 1.0;
  }

  if (v35 >= 0.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0.0;
  }

  v76 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v82, 1.0 - ((v37 * v37) * ((v37 * -2.0) + 3.0))), v33, (v37 * v37) * ((v37 * -2.0) + 3.0)), 1.0 - v80), v82, v80);
  v38.i64[0] = 0x8000000080000000;
  v38.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v73 = vandq_s8(vorrq_s8(vandq_s8(v82, v38), _Q2), vorrq_s8(vcltzq_f32(v82), vcgtzq_f32(v82)));
  v38.i32[1] = v81.i32[1];
  v44 = vmulq_laneq_f32(vabsq_f32(v82), v81, 3);
  *v38.i32 = 2.0 - v81.f32[1];
  v44.i32[3] = 0;
  v45 = vdupq_lane_s32(*v38.i8, 0);
  v45.i32[3] = 0;
  v46 = vmulq_f32(_simd_pow_f4(v44, v45), v73);
  v47 = vmulq_f32(v46, xmmword_19CF23D60);
  v48 = (v47.f32[2] + vaddv_f32(*v47.f32));
  v49 = v48 * -2.6 + v48 * -2.6 * v48 + 0.98;
  v50 = v48 * -6.25 + v48 * -6.25 * v48 + 0.5965;
  v51 = fmaxf(fmaxf(v49, v50), 1.0);
  v52 = v81.f32[1] + 0.3;
  v53.i32[1] = 1071225241;
  v54 = (1.0 - fminf(v52, 1.0)) * 0.4 + 1.0;
  *v53.i32 = (1.0 - v54) * 0.25;
  v55 = (1.0 - v81.f32[1]) * fminf(v51, v77 * 30.0);
  v56 = vmlaq_n_f32(vmulq_n_f32(v46, 1.0 - v55), vmlaq_n_f32(vdupq_lane_s32(v53, 0), v46, v54), v55);
  v57 = (v80 + -0.2) / 0.6;
  if (v57 <= 1.0)
  {
    v58 = (v80 + -0.2) / 0.6;
  }

  else
  {
    v58 = 1.0;
  }

  if (v57 >= 0.0)
  {
    v59 = v58;
  }

  else
  {
    v59 = 0.0;
  }

  v60 = vmlaq_n_f32(vmulq_n_f32(v82, 1.0 - ((v59 * v59) * ((v59 * -2.0) + 3.0))), v56, (v59 * v59) * ((v59 * -2.0) + 3.0));
  v61 = fminf(v80, 1.0);
  v62 = vmlaq_n_f32(vmulq_n_f32(v76, 1.0 - v61), vmlaq_n_f32(vmulq_n_f32(v82, 1.0 - v77), v60, v77), v61);
  v63 = vmulq_f32(v62, xmmword_19CF23D60);
  *v63.i64 = (v63.f32[2] + vaddv_f32(*v63.f32));
  v64 = *v63.i64 * -2.6 + *v63.i64 * -2.6 * *v63.i64 + 0.98;
  v63.f32[0] = *v63.i64 * -6.25 + *v63.i64 * -6.25 * *v63.i64 + 0.5965;
  v63.f32[0] = fmaxf(v64, v63.f32[0]);
  v65 = 1.0 - v81.f32[2];
  v66 = v65 * (fabsf(v18) * 0.1);
  v67 = v66 + 1.0;
  *&v65 = (1.0 - v67) * 0.5;
  v63.f32[0] = fminf(fmaxf(v63.f32[0], 1.0), v77 * 30.0);
  v68 = vmlaq_n_f32(vmulq_n_f32(v62, 1.0 - v63.f32[0]), vmlaq_n_f32(vdupq_lane_s32(*&v65, 0), v62, v67), v63.f32[0]);
  v68.i32[3] = 0;
  *&result = vaddq_f32(v79, vmaxnmq_f32(v68, 0)).u64[0];
  return result;
}

unint64_t CI::sw_highlightsAndShadows1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v84 = *v7->f32;
  v81 = *v11;
  v83 = *v15;
  v16 = *v7->f32;
  v16.i32[3] = 0;
  v17 = vmulq_f32(vmaxnmq_f32(v16, 0), xmmword_19CF26DA0);
  v18 = COERCE_FLOAT(*v15);
  v19 = pow(fminf((v17.f32[2] + vaddv_f32(*v17.f32)) / fmaxf(COERCE_FLOAT(*&v7[1]) + vaddv_f32(*v7), 0.001), 1.0), 1.0 - v18) * v18;
  v20 = v19;
  *&v19 = -v20;
  v21 = vsubq_f32(vdupq_lane_s32(*&v19, 0), v81);
  v21.i32[3] = 0;
  v22 = vaddq_f32(vdupq_laneq_s32(v83, 2), vmulq_n_f32(_simd_pow_f4(xmmword_19CF26DB0, v21), 1.0 - v83.f32[2]));
  v74 = v22.f32[0];
  v79 = fmaxf(fmaxf(fmaxf(v81.f32[0], v81.f32[1]), v81.f32[2]), 0.0);
  v80 = sqrtf(v79);
  v23 = (v83.f32[0] + -0.5) + (v83.f32[0] + -0.5);
  v24 = 1.0;
  if (v23 <= 1.0)
  {
    v24 = (v83.f32[0] + -0.5) + (v83.f32[0] + -0.5);
  }

  if (v23 >= 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = ((v25 * v25) * ((v25 * -2.0) + 3.0)) * 0.5 + 0.5;
  v75 = v26;
  v27.i64[0] = 0x8000000080000000;
  v27.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v82 = vbslq_s8(vorrq_s8(vcltzq_f32(v84), vcgtzq_f32(v84)), vorrq_s8(vandq_s8(v84, v27), _Q2), 0);
  v76 = vabsq_f32(v84);
  v33 = vmulq_n_f32(v76, v26);
  v33.i32[3] = 0;
  v34 = v22;
  v34.i32[3] = 0;
  v35 = vmulq_f32(_simd_pow_f4(v33, v34), v82);
  v77 = vaddq_f32(v35, v35);
  v36 = vmulq_laneq_f32(xmmword_19CF26DE0, v84, 2);
  v37 = vaddq_f32(v36, vaddq_f32(vmulq_lane_f32(xmmword_19CF26DD0, *v84.f32, 1), vmulq_n_f32(xmmword_19CF26DC0, v84.f32[0])));
  v73 = v37;
  v35.i64[0] = 0x8000000080000000;
  v35.i64[1] = 0x8000000080000000;
  v36.i32[0] = 1.0;
  LODWORD(v38) = vbslq_s8(v35, v36, v37).u32[0];
  if (*v37.i32 == 0.0)
  {
    v38 = 0.0;
  }

  v39 = v38;
  v40 = powf(fabsf(*v37.i32) * v75, v74);
  v41 = vmlaq_f32(vmulq_f32(v77, vdupq_n_s32(0x3F266666u)), vdupq_n_s32(0x3EB33333u), vaddq_f32(vmulq_laneq_f32(xmmword_19CF26E10, v73, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF26E00, *v73.f32, 1), vmulq_n_f32(xmmword_19CF26DF0, (v39 * v40) + (v39 * v40)))));
  v42 = v20 + 0.1;
  v43 = sqrtf(v80) / v42;
  if (v43 <= 1.0)
  {
    v44 = v43;
  }

  else
  {
    v44 = 1.0;
  }

  if (v43 >= 0.0)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0.0;
  }

  v46 = sqrtf((v45 * v45) * ((v45 * -2.0) + 3.0));
  v78 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v84, 1.0 - v46), v41, v46), 1.0 - v80), v84, v80);
  v47.i32[1] = v83.i32[1];
  v48 = vmulq_laneq_f32(v76, v83, 3);
  *v47.i32 = 2.0 - v83.f32[1];
  v48.i32[3] = 0;
  v49 = vdupq_lane_s32(v47, 0);
  v49.i32[3] = 0;
  v50 = vmulq_f32(_simd_pow_f4(v48, v49), v82);
  v51 = vmulq_f32(v50, xmmword_19CF23D60);
  v52 = (v51.f32[2] + vaddv_f32(*v51.f32));
  v53 = v52 * -2.6 + v52 * -2.6 * v52 + 0.98;
  v54 = v52 * -6.25 + v52 * -6.25 * v52 + 0.5965;
  v55 = fmaxf(fmaxf(v53, v54), 1.0);
  v56 = v83.f32[1] + 0.3;
  v57.i32[1] = 1071225241;
  v58 = (1.0 - fminf(v56, 1.0)) * 0.4 + 1.0;
  *v57.i32 = (1.0 - v58) * 0.25;
  v59 = (1.0 - v83.f32[1]) * fminf(v55, v79 * 30.0);
  v60 = vmlaq_n_f32(vmulq_n_f32(v50, 1.0 - v59), vmlaq_n_f32(vdupq_lane_s32(v57, 0), v50, v58), v59);
  v61 = (v80 + -0.2) / 0.6;
  if (v61 <= 1.0)
  {
    v62 = (v80 + -0.2) / 0.6;
  }

  else
  {
    v62 = 1.0;
  }

  if (v61 >= 0.0)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0.0;
  }

  v64 = vmlaq_n_f32(vmulq_n_f32(v84, 1.0 - v79), vmlaq_n_f32(vmulq_n_f32(v84, 1.0 - ((v63 * v63) * ((v63 * -2.0) + 3.0))), v60, (v63 * v63) * ((v63 * -2.0) + 3.0)), v79);
  v65 = fminf(v80, 1.0);
  v66 = vmlaq_n_f32(vmulq_n_f32(v78, 1.0 - v65), v64, v65);
  v67 = vmulq_f32(v66, xmmword_19CF23D60);
  *v67.i64 = (v67.f32[2] + vaddv_f32(*v67.f32));
  v68 = *v67.i64 * -2.6 + *v67.i64 * -2.6 * *v67.i64 + 0.98;
  v67.f32[0] = *v67.i64 * -6.25 + *v67.i64 * -6.25 * *v67.i64 + 0.5965;
  v67.f32[0] = fmaxf(fmaxf(v68, v67.f32[0]), 1.0);
  v69 = 1.0 - v83.f32[2];
  v70 = v69 * (fabsf(v20) * 0.1);
  v71 = v70 + 1.0;
  *&v69 = (1.0 - v71) * 0.5;
  v67.f32[0] = fminf(v67.f32[0], v79 * 30.0);
  return vmlaq_n_f32(vmulq_n_f32(v66, 1.0 - v67.f32[0]), vmlaq_n_f32(vdupq_lane_s32(*&v69, 0), v66, v71), v67.f32[0]).u64[0];
}

unint64_t CI::sw_highlightsAndShadows_noblur1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v80 = *v11;
  v81 = *v7->f32;
  v12 = *v7->f32;
  v12.i32[3] = 0;
  v13 = vmulq_f32(vmaxnmq_f32(v12, 0), xmmword_19CF26DA0);
  LODWORD(v14) = HIDWORD(*v7);
  LODWORD(v15) = v7[1];
  v16 = COERCE_FLOAT(*v11);
  v17 = pow(fminf((v13.f32[2] + vaddv_f32(*v13.f32)) / fmaxf(v15 + vaddv_f32(*v7), 0.001), 1.0), 1.0 - v16) * v16;
  v18 = v17;
  *&v17 = -v18;
  v19 = vsubq_f32(vdupq_lane_s32(*&v17, 0), v81);
  v19.i32[3] = 0;
  v20 = vaddq_f32(vdupq_laneq_s32(v80, 2), vmulq_n_f32(_simd_pow_f4(xmmword_19CF26DB0, v19), 1.0 - v80.f32[2]));
  v72 = v20.f32[0];
  v77 = fmaxf(fmaxf(fmaxf(v81.f32[0], v14), v15), 0.0);
  v78 = sqrtf(v77);
  v21 = (v80.f32[0] + -0.5) + (v80.f32[0] + -0.5);
  v22 = 1.0;
  if (v21 <= 1.0)
  {
    v22 = (v80.f32[0] + -0.5) + (v80.f32[0] + -0.5);
  }

  if (v21 >= 0.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = ((v23 * v23) * ((v23 * -2.0) + 3.0)) * 0.5 + 0.5;
  v25.i64[0] = 0x8000000080000000;
  v25.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v79 = vbslq_s8(vorrq_s8(vcltzq_f32(v81), vcgtzq_f32(v81)), vorrq_s8(vandq_s8(v81, v25), _Q2), 0);
  v73 = v24;
  v74 = vabsq_f32(v81);
  v31 = vmulq_n_f32(v74, v24);
  v31.i32[3] = 0;
  v32 = v20;
  v32.i32[3] = 0;
  v33 = vmulq_f32(_simd_pow_f4(v31, v32), v79);
  v75 = vaddq_f32(v33, v33);
  v34 = vmulq_laneq_f32(xmmword_19CF26DE0, v81, 2);
  v35 = vaddq_f32(v34, vaddq_f32(vmulq_lane_f32(xmmword_19CF26DD0, *v81.f32, 1), vmulq_n_f32(xmmword_19CF26DC0, v81.f32[0])));
  v71 = v35;
  v33.i64[0] = 0x8000000080000000;
  v33.i64[1] = 0x8000000080000000;
  v34.i32[0] = 1.0;
  LODWORD(v36) = vbslq_s8(v33, v34, v35).u32[0];
  if (*v35.i32 == 0.0)
  {
    v36 = 0.0;
  }

  v37 = v36;
  v38 = powf(fabsf(*v35.i32) * v73, v72);
  v39 = vmlaq_f32(vmulq_f32(v75, vdupq_n_s32(0x3F266666u)), vdupq_n_s32(0x3EB33333u), vaddq_f32(vmulq_laneq_f32(xmmword_19CF26E10, v71, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF26E00, *v71.f32, 1), vmulq_n_f32(xmmword_19CF26DF0, (v37 * v38) + (v37 * v38)))));
  v40 = v18 + 0.1;
  v41 = sqrtf(v78) / v40;
  if (v41 <= 1.0)
  {
    v42 = v41;
  }

  else
  {
    v42 = 1.0;
  }

  if (v41 >= 0.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0.0;
  }

  v44 = sqrtf((v43 * v43) * ((v43 * -2.0) + 3.0));
  v76 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v81, 1.0 - v44), v39, v44), 1.0 - v78), v81, v78);
  v45.i32[1] = v80.i32[1];
  v46 = vmulq_laneq_f32(v74, v80, 3);
  *v45.i32 = 2.0 - v80.f32[1];
  v46.i32[3] = 0;
  v47 = vdupq_lane_s32(v45, 0);
  v47.i32[3] = 0;
  v48 = vmulq_f32(_simd_pow_f4(v46, v47), v79);
  v49 = vmulq_f32(v48, xmmword_19CF23D60);
  v50 = (v49.f32[2] + vaddv_f32(*v49.f32));
  v51 = v50 * -2.6 + v50 * -2.6 * v50 + 0.98;
  v52 = v50 * -6.25 + v50 * -6.25 * v50 + 0.5965;
  v53 = fmaxf(fmaxf(v51, v52), 1.0);
  v54 = v80.f32[1] + 0.3;
  v55.i32[1] = 1071225241;
  v56 = (1.0 - fminf(v54, 1.0)) * 0.4 + 1.0;
  *v55.i32 = (1.0 - v56) * 0.25;
  v57 = (1.0 - v80.f32[1]) * fminf(v53, v77 * 30.0);
  v58 = vmlaq_n_f32(vmulq_n_f32(v48, 1.0 - v57), vmlaq_n_f32(vdupq_lane_s32(v55, 0), v48, v56), v57);
  v59 = (v78 + -0.2) / 0.6;
  if (v59 <= 1.0)
  {
    v60 = (v78 + -0.2) / 0.6;
  }

  else
  {
    v60 = 1.0;
  }

  if (v59 >= 0.0)
  {
    v61 = v60;
  }

  else
  {
    v61 = 0.0;
  }

  v62 = vmlaq_n_f32(vmulq_n_f32(v81, 1.0 - v77), vmlaq_n_f32(vmulq_n_f32(v81, 1.0 - ((v61 * v61) * ((v61 * -2.0) + 3.0))), v58, (v61 * v61) * ((v61 * -2.0) + 3.0)), v77);
  v63 = fminf(v78, 1.0);
  v64 = vmlaq_n_f32(vmulq_n_f32(v76, 1.0 - v63), v62, v63);
  v65 = vmulq_f32(v64, xmmword_19CF23D60);
  *v65.i64 = (v65.f32[2] + vaddv_f32(*v65.f32));
  v66 = *v65.i64 * -2.6 + *v65.i64 * -2.6 * *v65.i64 + 0.98;
  v65.f32[0] = *v65.i64 * -6.25 + *v65.i64 * -6.25 * *v65.i64 + 0.5965;
  v65.f32[0] = fmaxf(fmaxf(v66, v65.f32[0]), 1.0);
  v67 = 1.0 - v80.f32[2];
  v68 = v67 * (fabsf(v18) * 0.1);
  v69 = v68 + 1.0;
  *&v67 = (1.0 - v69) * 0.5;
  v65.f32[0] = fminf(v65.f32[0], v77 * 30.0);
  return vmlaq_n_f32(vmulq_n_f32(v64, 1.0 - v65.f32[0]), vmlaq_n_f32(vdupq_lane_s32(*&v67, 0), v64, v69), v65.f32[0]).u64[0];
}