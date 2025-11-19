double noise4x2()
{
  snoise4();
  v3 = v0;
  snoise4();
  return COERCE_DOUBLE(__PAIR64__(v1, v3));
}

uint64_t sub_1F58(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_2CC34);
  if (qword_2CC38)
  {
    _ZF = qword_2CC38 == v2;
  }

  else
  {
    _ZF = 0;
  }

  if (_ZF && (v4 = [v2 version], v4 == qword_2CC40))
  {
    v5 = byte_2CC30;
  }

  else
  {
    qword_2CC38 = v2;
    qword_2CC40 = [v2 version];
    qword_2CB30 = 0x3FC0000041000000;
    xmmword_2CB40 = vdupq_n_s64(0x3FFCCCCCCCCCCCCDuLL);
    unk_2CB50 = xmmword_1AE80;
    qword_2CB60 = 0x3E19999A3E99999ALL;
    unk_2CB68 = vdup_n_s32(0x3E4CCCCDu);
    qword_2CB70 = 0x3F9000003FE00000;
    xmmword_2CB80 = xmmword_2CB40;
    unk_2CB90 = xmmword_1AE80;
    __asm { FMOV            V4.2S, #0.25 }

    qword_2CBA0 = 0x3E19999A3E99999ALL;
    unk_2CBA8 = _D4;
    __asm { FMOV            V2.2S, #1.5 }

    qword_2CBB0 = _D2;
    xmmword_2CBC0 = xmmword_2CB40;
    unk_2CBD0 = xmmword_1AE80;
    qword_2CBE0 = vdup_n_s32(0x3E99999Au);
    unk_2CBE8 = unk_2CB68;
    qword_2CBF0 = 0x3F9000003FA00000;
    xmmword_2CC00 = xmmword_2CB40;
    unk_2CC10 = xmmword_1AE80;
    qword_2CC20 = 0x3D4CCCCD3E99999ALL;
    unk_2CC28 = _D4;
    v5 = 1;
    byte_2CC30 = 1;
  }

  os_unfair_lock_unlock(&stru_2CC34);

  return v5;
}

id sub_2604(uint64_t a1)
{
  v18 = [*(a1 + 32) _generateInterpolationPositions];
  v19 = [*(a1 + 40) newBufferWithBytes:objc_msgSend(v18 length:"bytes") options:{objc_msgSend(v18, "length"), 0}];
  v2 = +[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:width:height:mipmapped:](MTLTextureDescriptor, "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", 113, *(*(a1 + 32) + 104) >> 3, [*(a1 + 32) numSplines], 0);
  [v2 setUsage:1];
  v17 = v2;
  v16 = [*(a1 + 40) newTextureWithDescriptor:v2];
  v3 = [*(a1 + 32) generateVignetteTextureData];
  v15 = [*(a1 + 40) newBufferWithBytes:objc_msgSend(v3 length:"bytes") options:{objc_msgSend(v3, "length"), 0}];
  v4 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:10 width:64 height:64 mipmapped:0];
  [v4 setUsage:1];
  v5 = [*(a1 + 40) newTextureWithDescriptor:v4];
  v6 = +[CLKUIMetalResourceManager sharedCommandQueue];
  v7 = [v6 commandBuffer];
  [CLKUIMetalResourceManager addCompletedErrorCheckToCommandBuffer:v7 forCase:@"PrideLoadTexture"];
  v8 = [v7 blitCommandEncoder];
  v9 = *(a1 + 32);
  v10 = v9[26];
  v11 = v10 * [v9 numSplines];
  v12 = *(a1 + 32);
  v23.i64[0] = v12[26] >> 3;
  v23.i64[1] = [v12 numSplines];
  v24 = 1;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  [v8 copyFromBuffer:v19 sourceOffset:0 sourceBytesPerRow:v10 sourceBytesPerImage:v11 sourceSize:&v23 toTexture:v16 destinationSlice:0 destinationLevel:0 destinationOrigin:&v20];
  v23 = vdupq_n_s64(0x40uLL);
  v24 = 1;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  [v8 copyFromBuffer:v15 sourceOffset:0 sourceBytesPerRow:64 sourceBytesPerImage:4096 sourceSize:&v23 toTexture:v5 destinationSlice:0 destinationLevel:0 destinationOrigin:&v20];
  [v8 endEncoding];
  [v7 commit];
  if ([v7 status] != &dword_0 + 1)
  {
    [v7 waitUntilScheduled];
  }

  v25[0] = v16;
  v25[1] = v5;
  v13 = [NSArray arrayWithObjects:v25 count:2];

  return v13;
}

void sub_2D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float sub_2D40(float32x2_t *a1, float a2, float32x2_t a3)
{
  v4 = vsub_f32(a1[5], a3);
  result = (a1[6].f32[0] - (sqrtf(vaddv_f32(vmul_f32(v4, v4))) / a1[6].f32[1])) - a2;
  if (result < 0.0 && result > -0.2)
  {
    v6 = result * 15.7079633;
LABEL_10:
    v8 = v6;
    v9 = cosf(v8);
    v10 = *(*&a1[4] + 8);
    result = v9 * 0.5 + 0.5 + *(v10 + 24);
    *(v10 + 24) = result;
    return result;
  }

  if (result >= 0.0 && result < 1.5)
  {
    v6 = result * 2.0943951;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_2F34(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) contents];
  v5 = &v4[[*(a1 + 40) currentComputeBufferWidth] * a2];
  v6 = *(a1 + 56) + (a2 << 6);
  v7 = *(*(a1 + 48) + 16);

  return v7();
}

id sub_3530(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52) == 1)
  {
    [*(a1 + 32) generateControlPointsForSpline:a2];
  }

  result = [*(a1 + 32) numControlPointsPerSpline];
  if (result >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 48);
      [*(a1 + 32) computeAmplitudeForControlPoint:v5 inSpline:a2 atTime:*(a1 + 40)];
      v8 = *(a1 + 32);
      *&v9 = (v6 + v7) * v8[43];
      [v8 setAmplitude:v5 forControlPoint:a2 ofSpline:v9];
      v5 = (v5 + 1);
      result = [*(a1 + 32) numControlPointsPerSpline];
    }

    while (v5 < result);
  }

  return result;
}

id sub_35E0(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 48) numControlPointsPerSpline];
  if (result >= 1)
  {
    v5 = 0;
    do
    {
      [*(a1 + 48) noiseSamplePositionForControlPoint:v5 inSpline:a2];
      v7 = vmul_f32(v6, **(a1 + 56));
      [*(a1 + 48) ampltiudeForControlPoint:v5 ofSpline:a2];
      v16 = v8;
      *&v9 = vmul_n_f32(*(*(a1 + 56) + 56), *&v8);
      v13 = v9;
      v14 = *(a1 + 32);
      snoise4();
      v15 = v10;
      snoise4();
      [*(a1 + 48) setNoise:v5 forControlPoint:a2 inSpline:{COERCE_DOUBLE(vmul_f32(__PAIR64__(v11, v15), *(*(a1 + 56) + 48))), v13, v14}];
      HIDWORD(v12) = HIDWORD(v16);
      *&v12 = fminf(*&v16, 2.5);
      [*(a1 + 48) setAmplitude:v5 forControlPoint:a2 ofSpline:v12];
      v5 = (v5 + 1);
      result = [*(a1 + 48) numControlPointsPerSpline];
    }

    while (v5 < result);
  }

  return result;
}

uint64_t sub_39C0()
{

  return objc_opt_class();
}

void sub_45AC(id a1)
{
  qword_2CC48 = objc_opt_new();

  _objc_release_x1();
}

void sub_50F0(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  v8 = *(*(a1 + 32) + 272) + 320 * a2;
  v9 = *(v8 + 240);
  v10 = *(v8 + 280);
  v11 = *(v8 + 288);
  v21 = v11;
  v22 = *(v8 + 256);
  v12 = *(v8 + 304);
  v13 = *(v8 + 308);
  [*(a1 + 32) processSpline:a2];
  v23 = 0;
  v24 = 0;
  [v9 getControlPoints:&v24 processedPoints:&v23];
  if (*(a1 + 44) >= 1)
  {
    v14 = 0;
    v16 = v23;
    v15 = v24;
    do
    {
      *&v17 = *(v15 + 8 * v14);
      *(&v17 + 1) = *(v16 + 8 * v14);
      *(a4 + 16 * v14++) = v17;
    }

    while (v14 < *(a1 + 44));
  }

  v18 = *(a1 + 72);
  v19 = *(*(a1 + 32) + 288);
  CLKInterpolateBetweenFloatsClipped();
  *&v20 = v20;
  a3->i32[1] = LODWORD(v20);
  a3[2] = vmlaq_n_f32(v22, vsubq_f32(v21, v22), *(a1 + 92));
  a3->i32[0] = *(a1 + 96);
  if (fabsf(*(*(a1 + 32) + 288)) < 0.00000011921)
  {
    if (v13 < 1)
    {
      a3->f32[1] = v10 * v12;
    }

    else
    {
      a3->i32[0] = 0;
    }
  }

  a3->i32[2] = 1065353216;
  a3->i32[3] = *(a1 + 48);
  a3[3].i16[0] = a2;
}

void sub_528C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&stru_2CC8C);
  if (qword_2CC90)
  {
    v3 = qword_2CC90 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_2CC98))
  {
    qword_2CC90 = v6;
    qword_2CC98 = [v6 version];
    sub_5378(v6, v7);
    xmmword_2CC58 = v7[0];
    unk_2CC68 = v7[1];
    xmmword_2CC78 = v7[2];
    dword_2CC88 = v8;
  }

  v5 = unk_2CC68;
  *a2 = xmmword_2CC58;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_2CC78;
  *(a2 + 48) = dword_2CC88;
  os_unfair_lock_unlock(&stru_2CC8C);
}

void sub_5378(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v3 = a1;
  v4 = [v3 deviceCategory];
  [v3 screenBounds];
  v6 = v5;
  [v3 screenScale];
  v8 = v7;
  if (v4 == &dword_0 + 1)
  {
    v9 = 30;
  }

  else
  {
    v9 = 40;
  }

  *a2 = v9;
  *(a2 + 24) = 5;
  v10 = [v3 sizeClass];

  if (v10 > 7)
  {
    v11 = 23.0;
    v12 = 45.0;
  }

  else
  {
    v11 = flt_1B018[v10];
    v12 = flt_1B038[v10];
  }

  v13 = v8 * v6;
  v14 = v11 / v13;
  v15 = v12 / v13;
  *(a2 + 16) = v15;
  *(a2 + 20) = v14;
  v16 = 1.0 / v9;
  v17 = v16 + -2.8 / v13;
  *(a2 + 28) = v16;
  *(a2 + 32) = v17;
  v18.f32[0] = (v9 - 1);
  *(a2 + 36) = v14 / 5.0;
  v18.f32[1] = v15;
  __asm { FMOV            V0.2S, #5.0 }

  _D0.f32[0] = v16;
  *(a2 + 40) = vsub_f32(0x3F0000003F000000, vmul_f32(vmul_f32(v18, _D0), 0x3F0000003F000000));
  *(a2 + 48) = 0;
  *(a2 + 8) = 2.0 / v13;
  if (v4 == &dword_0 + 1)
  {
    v24 = 8;
  }

  else
  {
    v24 = 12;
  }

  *(a2 + 4) = v24;
  if (v4 == &dword_0 + 1)
  {
    v25 = 102;
  }

  else
  {
    v25 = 152;
  }

  *(a2 + 12) = v25;
}

void sub_55A8(id a1)
{
  qword_2CCA0 = [[NTKCornerComplicationConfiguration alloc] initWithTopLeftComplication:43 topRightComplication:10 bottomLeftComplication:3 bottomRightComplication:7];

  _objc_release_x1();
}

void sub_66B0(id a1)
{
  qword_2CCB0 = objc_opt_new();

  _objc_release_x1();
}

void sub_8554(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [NTKFaceBundleSortableGalleryFace alloc];
  v8 = [v6 face];

  v10 = [v7 initWithFace:v8 priority:v5 + a3];
  v9 = v10;
  if (v10)
  {
    [*(a1 + 32) addObject:v10];
    v9 = v10;
  }
}

id sub_8BE0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_2CCC8);
  if (qword_2CCD0)
  {
    v3 = qword_2CCD0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_2CCD8))
  {
    qword_2CCD0 = v2;
    qword_2CCD8 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_2CCC0;
    qword_2CCC0 = v5;
  }

  v7 = qword_2CCC0;
  os_unfair_lock_unlock(&unk_2CCC8);

  return v7;
}

void sub_8D74(id a1)
{
  v3[0] = &off_258D8;
  v3[1] = &off_258F0;
  v4[0] = NTKFaceBundlePrideStyleBanded;
  v4[1] = NTKFaceBundlePrideStyleFabric;
  v3[2] = &off_25908;
  v4[2] = NTKFaceBundlePrideStyleRibbon;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_2CCE0;
  qword_2CCE0 = v1;
}

void sub_9BF8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 32);
  v6 = a3;
  CLKInterpolateBetweenFloatsClipped();
  [v6 setAlpha:?];
}

void sub_A0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A0D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_A0F0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if ([v7 tapEnabled])
  {
    v5 = [v7 display];
    [v5 bounds];
    [v5 convertRect:*(a1 + 32) toView:?];
    v10 = CGRectInset(v9, -10.0, -10.0);
    if (CGRectContainsPoint(v10, *(a1 + 48)))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    }
  }

  return _objc_release_x1();
}

uint64_t sub_B5E0(uint64_t a1, void *a2)
{
  v3 = [a2 prideFacesForDevice:*(a1 + 32)];
  if (v3)
  {
    [*(a1 + 40) addObjectsFromArray:v3];
  }

  return _objc_release_x1();
}

id *sub_BC34(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

id *sub_C124(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

id *sub_C5A8(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

void sub_CA40(id a1)
{
  qword_2CCF0 = [[NTKPrideSwatchMappedImageCache alloc] _init];

  _objc_release_x1();
}

void sub_CC60(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [*(a1 + 40) removeImageForKey:v3];
}

BOOL sub_CEF8(id a1, NSString *a2)
{
  v2 = a2;
  v3 = NTKBuildVersion();
  v4 = [(NSString *)v2 hasSuffix:v3];

  return v4 ^ 1;
}

void sub_D31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_D344(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[CLKDevice currentDevice];
    v3 = [WeakRetained screenEdgeTextureForDevice:v2 named:@"RectSDF"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

float computePhaseShift(float a1, float a2, float a3)
{
  v3 = a2 * a3;
  __asm { FMOV            V2.2S, #1.0 }

  _D2.f32[0] = v3;
  *&v9 = (v3 * v3) + 1.0;
  v10 = vrsqrte_f32(v9);
  v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10)));
  v12 = vmul_n_f32(_D2, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11))).f32[0]);
  _D2.f32[0] = -*&v12.i32[1];
  return (a1 * a1) / vaddv_f32(vmul_f32(vmul_n_f32(vzip1_s32(_D2, v12), a1), 0x3F80000000000000));
}

float computeMaxPeriod(int a1, float a2, float a3)
{
  v3 = a2;
  v4 = v3 * 3.14159265 / (a1 * a3);
  return sqrt(v4 * v4 + -1.0) / v3;
}

void sub_E9A4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_EAD0(id a1)
{
  qword_2CD00 = objc_opt_new();

  _objc_release_x1();
}

id sub_EE98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) computeShaderName];
  v4 = [v2 newFunctionWithName:v3];

  [v4 setLabel:@"pride_compute_cubic_coefficients"];
  v5 = *(a1 + 48);
  v12 = 0;
  v6 = [v5 newComputePipelineStateWithFunction:v4 error:&v12];
  v7 = v12;
  if (!v6)
  {
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v10 = [v4 name];
      v11 = *(a1 + 48);
      *buf = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v7;
      _os_log_fault_impl(&dword_0, v8, OS_LOG_TYPE_FAULT, "Pride Metal compilation failure: Shader=%@ Device=%@ Error=%@", buf, 0x20u);
    }
  }

  return v6;
}

id sub_F000(uint64_t a1)
{
  v2 = [*(a1 + 32) vertexShaderName];
  v3 = [*(a1 + 32) fragmentShaderName];
  v4 = [*(a1 + 40) newFunctionWithName:v3];
  v5 = [*(a1 + 40) newFunctionWithName:v2];
  v6 = objc_alloc_init(MTLRenderPipelineDescriptor);
  v7 = [*(a1 + 32) renderPipelineName];
  [v6 setLabel:v7];

  [v6 setVertexFunction:v5];
  [v6 setFragmentFunction:v4];
  v8 = [*(a1 + 48) colorPixelFormat];
  v9 = [v6 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript:0];
  [v10 setPixelFormat:v8];

  v11 = [*(a1 + 32) additiveBlendingEnabled];
  v12 = [v6 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 setBlendingEnabled:v11];

  v14 = [v6 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript:0];
  [v15 setRgbBlendOperation:0];

  v16 = [v6 colorAttachments];
  v17 = [v16 objectAtIndexedSubscript:0];
  [v17 setAlphaBlendOperation:0];

  v18 = [v6 colorAttachments];
  v19 = [v18 objectAtIndexedSubscript:0];
  [v19 setSourceRGBBlendFactor:1];

  v20 = [v6 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript:0];
  [v21 setSourceAlphaBlendFactor:1];

  v22 = [v6 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript:0];
  [v23 setDestinationRGBBlendFactor:1];

  v24 = [v6 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript:0];
  [v25 setDestinationAlphaBlendFactor:1];

  v26 = *(a1 + 56);
  v33 = 0;
  v27 = [v26 newRenderPipelineStateWithDescriptor:v6 error:&v33];
  v28 = v33;
  if (!v27)
  {
    v29 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v31 = [v4 name];
      v32 = *(a1 + 56);
      *buf = 138412802;
      v35 = v31;
      v36 = 2112;
      v37 = v32;
      v38 = 2112;
      v39 = v28;
      _os_log_fault_impl(&dword_0, v29, OS_LOG_TYPE_FAULT, "Pride Metal compilation failure: Shader=%@ Device=%@ Error=%@", buf, 0x20u);
    }
  }

  return v27;
}

void sub_F8AC(id a1)
{
  qword_2CD10 = objc_opt_new();

  _objc_release_x1();
}

__n128 sub_FF1C(uint64_t a1, int a2, __n128 *a3)
{
  (*(*(a1 + 40) + 16))();
  result = *(*(*(a1 + 32) + 321) + 32 * a2);
  a3[2] = result;
  return result;
}

uint64_t sub_1001C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_2CD2C);
  if (qword_2CD30)
  {
    v3 = qword_2CD30 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2CD38))
  {
    v5 = qword_2CD20;
  }

  else
  {
    qword_2CD30 = v2;
    qword_2CD38 = [v2 version];
    v5 = sub_100DC(qword_2CD38, v2);
    qword_2CD20 = v5;
    dword_2CD28 = v6;
  }

  os_unfair_lock_unlock(&stru_2CD2C);

  return v5;
}

uint64_t sub_100DC(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 screenBounds];
  [v2 screenScale];

  return 12;
}

id sub_101B4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_2CD48);
  if (qword_2CD50)
  {
    v3 = qword_2CD50 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_2CD58))
  {
    qword_2CD50 = v2;
    qword_2CD58 = [v2 version];
    v5 = sub_10274(qword_2CD58, v2);
    v6 = qword_2CD40;
    qword_2CD40 = v5;
  }

  v7 = qword_2CD40;
  os_unfair_lock_unlock(&unk_2CD48);

  return v7;
}

id sub_10274(uint64_t a1, void *a2)
{
  [a2 deviceCategory];
  v2 = _EnumValueRange();

  return v2;
}

void sub_10394(id a1)
{
  v3[0] = &off_259E0;
  v3[1] = &off_259F8;
  v4[0] = NTKFaceBundlePrideAnalogStyleDial;
  v4[1] = NTKFaceBundlePrideAnalogStyleFullscreen;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_2CD60;
  qword_2CD60 = v1;
}

void sub_11328(id a1)
{
  qword_2CD70 = objc_opt_new();

  _objc_release_x1();
}

void sub_11D74(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  v8 = *(*(a1 + 32) + 176) + 704 * a2;
  v9 = *(v8 + 640);
  v32 = *(v8 + 672);
  v33 = *(v8 + 656);
  v10 = *(v8 + 692);
  v11 = *(v8 + 696);
  [*(a1 + 32) processSpline:a2];
  v34 = 0;
  v35 = 0;
  [v9 getControlPoints:&v35 processedPoints:&v34];
  if (*(a1 + 44) >= 1)
  {
    v12 = 0;
    v14 = v34;
    v13 = v35;
    do
    {
      *&v15 = *(v13 + 8 * v12);
      *(&v15 + 1) = *(v14 + 8 * v12);
      *(a4 + 16 * v12++) = v15;
    }

    while (v12 < *(a1 + 44));
  }

  [*(a1 + 32) currentSplineWidth];
  v17 = v16;
  a3->f32[1] = v16;
  v18 = *(*(a1 + 32) + 184);
  CLKInterpolateBetweenFloatsClipped();
  *&v19 = v17 * 0.5 / v19;
  a3[3].i32[1] = LODWORD(v19);
  [*(a1 + 32) splineColorTransitionFraction];
  *&v20 = v20;
  a3[2] = vmlaq_n_f32(v33, vsubq_f32(v32, v33), *&v20);
  v21 = (*(a1 + 40) - 1);
  CLKInterpolateBetweenFloatsClipped();
  v23 = v22;
  v24 = *(a1 + 32);
  v25 = v24[47];
  [v24 fadeMultiplier];
  v27 = v23;
  v28 = fminf((v25 - v27) + (v25 - v27), 1.0);
  if (v28 < 0.0)
  {
    v28 = 0.0;
  }

  v29 = pow(*(*(a1 + 32) + 188) * 0.8 + 0.2, 6.0) * (v26 * v28);
  a3->f32[0] = v29;
  v30 = *(*(a1 + 32) + 188) * 0.15 + 0.85;
  v31 = *(a1 + 48);
  a3->f32[2] = v30;
  a3->i32[3] = v31;
  a3[3].i16[0] = a2;
  a3[1].i32[0] = *(a1 + 64);
  if (*(a1 + 40) - 2 == a2)
  {
    *(*(a1 + 32) + 236) = v29;
  }
}

void sub_120BC(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&stru_2CD9C);
  if (qword_2CDA0)
  {
    v3 = qword_2CDA0 == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != qword_2CDA8))
  {
    qword_2CDA0 = v5;
    qword_2CDA8 = [v5 version];
    sub_12194(v5, v6);
    xmmword_2CD80 = *v6;
    *(&xmmword_2CD80 + 12) = *&v6[12];
  }

  *a2 = xmmword_2CD80;
  *(a2 + 12) = *(&xmmword_2CD80 + 12);
  os_unfair_lock_unlock(&stru_2CD9C);
}

float sub_12194@<S0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  v3 = a1;
  [v3 screenBounds];
  v5 = v4;
  [v3 screenScale];
  v7 = v6;
  *a2 = 20;
  if ([v3 deviceCategory] == &dword_0 + 1)
  {
    v8 = 12;
  }

  else
  {
    v8 = 32;
  }

  *(a2 + 4) = v8;
  *(a2 + 12) = 1032805417;
  v9 = [v3 sizeClass];

  if (v9 > 9)
  {
    v10 = 1064011039;
  }

  else
  {
    v10 = dword_1B6C8[v9];
  }

  *(a2 + 16) = v10;
  v11 = v7 * v5;
  result = 2.0 / v11;
  *(a2 + 24) = result;
  *(a2 + 20) = 1065353216;
  *(a2 + 8) = result;
  return result;
}

id sub_12CD0(uint64_t a1)
{
  [*(*(a1 + 32) + 48) handleScreenOff];
  v2 = *(a1 + 32);

  return [v2 _updateComplicationColors];
}

void sub_12FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_12FE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_12FF8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if ([v7 tapEnabled])
  {
    v5 = [v7 display];
    [v5 bounds];
    [v5 convertRect:*(a1 + 32) toView:?];
    v10 = CGRectInset(v9, -10.0, -10.0);
    if (CGRectContainsPoint(v10, *(a1 + 48)))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    }
  }

  return _objc_release_x1();
}

void sub_13FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  [*(a1 + 32) _updateComplicationColorsForView:v4 foregroundColor:*(a1 + 40) platterColor:*(a1 + 48)];
}

void sub_14E74(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to create pride weave render pipeline with error: %@", &v4, 0xCu);
}

void sub_15294(void *a1)
{
  v1 = [a1 description];
  sub_E9C4();
  sub_E9A4(&dword_0, v2, v3, "Failed to create pride weave render pipeline with error: %@", v4, v5, v6, v7, v8);
}

void sub_15318(void *a1)
{
  v1 = [a1 description];
  sub_E9C4();
  sub_E9A4(&dword_0, v2, v3, "Failed to create pride weave circles pipeline with error: %@", v4, v5, v6, v7, v8);
}

void sub_1539C(void *a1)
{
  v1 = [a1 description];
  sub_E9C4();
  sub_E9A4(&dword_0, v2, v3, "Failed to create pride weave intersections pipeline with error: %@", v4, v5, v6, v7, v8);
}

void sub_15420(void *a1)
{
  v1 = [a1 description];
  sub_E9C4();
  sub_E9A4(&dword_0, v2, v3, "Failed to create pride weave sort pipeline with error: %@", v4, v5, v6, v7, v8);
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}