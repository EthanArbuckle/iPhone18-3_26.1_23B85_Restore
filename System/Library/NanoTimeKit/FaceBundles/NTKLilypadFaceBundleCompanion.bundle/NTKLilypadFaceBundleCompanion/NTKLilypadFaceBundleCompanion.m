void sub_1380(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v12 = [a2 mutableCopy];
  v6 = [NTKLilypadFaceBundle localizedStringForKey:@"NOTIFICATION_TITLE" comment:@"Pride Threads Face"];
  v7 = [NTKLilypadFaceBundle localizedStringForKey:@"NOTIFICATION_CONTENT" comment:@"This new face is now available for your Apple Watch."];
  [v12 setTitle:v6];
  [v12 setBody:v7];
  [v12 setCategoryIdentifier:NTKFaceSupportFaceCategoryIdentifier];
  v8 = *(a1 + 40);
  v9 = [v12 copy];
  v10 = *(a1 + 32);
  v11 = [objc_opt_class() identifier];
  (*(v8 + 16))(v8, v9, v11, v5);
}

void sub_23AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23D0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = *a3;
    v7 = *(a3 + 24);
    v9 = *(a3 + 8);
    v10 = v7;
    [WeakRetained _timeUpdated:&v8];
  }
}

void sub_2B84(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 bounds];
  image = [v2 snapshotInRect:? scale:? time:?];

  v3 = NTKHomeDirectory();
  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v6 = [NSString stringWithFormat:@"%@/Lilypad_%lf.png", v3, v5];

  NSLog(@"Snapshotting lilypad face to %@", v6);
  v7 = UIImagePNGRepresentation(image);
  [v7 writeToFile:v6 atomically:0];
}

void sub_32E4(id a1)
{
  qword_11340 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

__n128 CMAcceleration_simd@<Q0>(__n128 *a1@<X8>, __n128 result@<Q0>, double a3@<D1>, __n128 a4@<Q2>)
{
  result.n128_f64[1] = a3;
  *a1 = result;
  a1[1] = a4;
  return result;
}

float64_t CGPoint_simd(float64x2_t a1, float64_t a2)
{
  a1.f64[1] = a2;
  *&a1.f64[0] = vcvt_f32_f64(a1);
  return a1.f64[0];
}

uint64_t sub_4DE8(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 40) + vcvts_n_f32_u64(a2, 7uLL) * *(a1 + 56);
  v5 = a2 << 7;
  do
  {
    v6 = *(a1 + 32) + vcvts_n_f32_u32(v3, 7uLL) * *(a1 + 48);
    v7 = *(a1 + 72);
    v8 = *(a1 + 76);
    result = pnoise2();
    *(*(a1 + 64) + v5 + v3++) = ((v10 + 1.0) * 0.5 * 255.0);
  }

  while (v3 != 128);
  return result;
}

void *sub_4EA0(uint64_t a1, void *a2)
{
  v3 = [a2 blitCommandEncoder];
  v10 = vdupq_n_s64(0x80uLL);
  v11 = 1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  memset(v9, 0, sizeof(v9));
  [v3 copyFromBuffer:v4 sourceOffset:0 sourceBytesPerRow:128 sourceBytesPerImage:0x4000 sourceSize:&v10 toTexture:v5 destinationSlice:0 destinationLevel:0 destinationOrigin:v9];
  [v3 endEncoding];
  v6 = *(a1 + 40);
  v7 = v6;

  return v6;
}

double translationMatrix()
{
  __asm { FMOV            V2.4S, #1.0 }

  *&result = 1065353216;
  return result;
}

float32x2_t simd_clamp_magnitude(float32x2_t result, float a2)
{
  v2 = vmul_f32(result, result);
  v2.f32[0] = sqrtf(vaddv_f32(v2));
  if (v2.f32[0] > a2 && v2.f32[0] > 0.0)
  {
    return vmul_n_f32(vdiv_f32(result, vdup_lane_s32(v2, 0)), a2);
  }

  return result;
}

float float_clamp_magnitude(int8x16_t a1, float a2, int8x16_t a3)
{
  a3.i32[1] = 0;
  v4 = fabsf(*a1.i32) <= a2 || *a1.i32 == 0.0;
  a3.i32[0] = 1.0;
  v5.i64[0] = 0x8000000080000000;
  v5.i64[1] = 0x8000000080000000;
  v6 = *vbslq_s8(v5, a3, a1).i32 * a2;
  if (!v4)
  {
    *a1.i32 = v6;
  }

  return *a1.i32;
}

id sub_57AC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  [*(*(a1 + 32) + 584) position];
  v42 = v6;
  [*(*(a1 + 32) + 584) position];
  v7.f64[0] = v42;
  v7.f64[1] = v8;
  v49[0] = vcvt_f32_f64(v7);
  [*(*(a1 + 32) + 584) position];
  v43 = v9;
  [*(*(a1 + 32) + 584) position];
  v10.f64[0] = v43;
  v10.f64[1] = v11;
  v49[1] = vcvt_f32_f64(v10);
  [*(*(a1 + 32) + 592) position];
  v44 = v12;
  [*(*(a1 + 32) + 592) position];
  v13.f64[0] = v44;
  v13.f64[1] = v14;
  v49[2] = vcvt_f32_f64(v13);
  [*(*(a1 + 32) + 592) position];
  v45 = v15;
  [*(*(a1 + 32) + 592) position];
  v16.f64[0] = v45;
  v16.f64[1] = v17;
  v49[3] = vcvt_f32_f64(v16);
  [*(*(a1 + 32) + 584) rotation];
  *&v18 = v18;
  v48[0] = LODWORD(v18);
  [*(*(a1 + 32) + 584) rotation];
  *&v19 = v19;
  v48[1] = LODWORD(v19);
  [*(*(a1 + 32) + 592) rotation];
  *&v20 = v20;
  v48[2] = LODWORD(v20);
  [*(*(a1 + 32) + 592) rotation];
  v21 = 0;
  v22 = 0;
  *&v23 = v23;
  v48[3] = LODWORD(v23);
  v24 = -384;
  do
  {
    v25 = *(a3 + 4 * v22);
    v26 = a2 + v24;
    *(v26 + 384) = *(*(a1 + 32) + 560);
    *(v26 + 392) = 0x431C0000446EC000;
    [*(a1 + 32) textureSizeForDigit:v25];
    *(v26 + 400) = v27;
    [*(a1 + 32) textureOriginForDigit:v25];
    *(v26 + 408) = v28;
    v29 = *(a1 + 32);
    v30 = dbl_8C78[v22];
    v31 = v29[20].f32[0];
    v32 = COERCE_DOUBLE(vmul_f32(v29[70], vmla_n_f32(vmul_n_f32(v49[v22], v31), *&v30, 1.0 - v31)));
    LODWORD(v30) = v29[71].i32[0];
    *&v33 = (v31 * *&v48[v22]) + ((1.0 - v31) * -0.17453);
    *&v34 = ((1 - (v21 & 2)) * flt_8C4C[v25]) + 0.0;
    result = [(float32x2_t *)v29 createMatrixForTextureWithSize:*(a2 + v24 + 400) translation:v32 scale:v30 rotate:v33 xOffset:v34];
    *(v26 + 424) = v36;
    *(v26 + 416) = v37;
    *(v26 + 440) = v38;
    *(v26 + 428) = 0;
    *(v26 + 432) = v39;
    *(v26 + 444) = 0;
    *(v26 + 456) = v40;
    *(v26 + 448) = v41;
    *(v26 + 460) = 0;
    ++v22;
    v21 += 2;
    *(v26 + 464) = a4;
    v24 += 96;
  }

  while (v24);
  return result;
}

uint64_t sub_6274(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_11360);
  if (qword_11368)
  {
    v3 = qword_11368 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_11370))
  {
    v5 = qword_11350;
  }

  else
  {
    qword_11368 = v2;
    qword_11370 = [v2 version];
    v5 = sub_6334(qword_11370, v2);
    qword_11350 = v5;
    qword_11358 = v6;
  }

  os_unfair_lock_unlock(&unk_11360);

  return v5;
}

uint64_t sub_6334(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 screenBounds];
  [v2 screenScale];

  return 0x6400000010;
}

void sub_639C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_63D0(void *a1)
{
  v1 = [a1 description];
  sub_639C(&dword_0, v2, v3, "Failed to create lilypad time pipeline with error: %@", v4, v5, v6, v7, 2u);
}

void sub_6458(void *a1)
{
  v1 = [a1 description];
  sub_639C(&dword_0, v2, v3, "Failed to create lilypad compute pipeline with error: %@", v4, v5, v6, v7, 2u);
}

void sub_64E0(void *a1)
{
  v1 = [a1 description];
  sub_639C(&dword_0, v2, v3, "Failed to create lilypad render pipeline with error: %@", v4, v5, v6, v7, 2u);
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