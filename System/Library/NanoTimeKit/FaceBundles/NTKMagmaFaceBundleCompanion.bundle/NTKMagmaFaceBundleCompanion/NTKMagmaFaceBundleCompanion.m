void sub_1C20(id a1)
{
  qword_1C158 = objc_opt_new();

  _objc_release_x1();
}

void sub_3768(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_1C198);
  if (qword_1C1A0)
  {
    v3 = qword_1C1A0 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_1C1A8))
  {
    qword_1C1A0 = v6;
    qword_1C1A8 = [v6 version];
    sub_3840(v6, v7);
    xmmword_1C168 = v7[0];
    unk_1C178 = v7[1];
    xmmword_1C188 = v7[2];
  }

  v5 = unk_1C178;
  *a2 = xmmword_1C168;
  a2[1] = v5;
  a2[2] = xmmword_1C188;
  os_unfair_lock_unlock(&unk_1C198);
}

void sub_3840(uint64_t a1@<X1>, void *a2@<X8>)
{
  v9 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v9 scaledValue:86.0];
  *a2 = v3;
  [v9 scaledValue:10.5];
  a2[1] = v4;
  [v9 scaledValue:-62.0];
  a2[2] = v5;
  [v9 scaledValue:84.5];
  a2[3] = v6;
  [v9 scaledSize:{41.5, 14.5}];
  a2[4] = v7;
  a2[5] = v8;
}

void sub_3EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3EE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[12] returnReusableResource:*(a1 + 32)];
    WeakRetained = v3;
  }
}

id sub_44B4()
{
  if (qword_1C1B8 != -1)
  {
    sub_A52C();
  }

  v1 = qword_1C1B0;

  return v1;
}

uint64_t sub_58A8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CLKUIConvertUIImageToMTLTexture();
  v4 = *(a1 + 32);
  v5 = *(v4 + 128);
  *(v4 + 128) = v3;

  v6 = *(a1 + 48);
  v7 = CLKUIConvertUIImageToMTLTexture();
  v8 = *(a1 + 32);
  v9 = *(v8 + 136);
  *(v8 + 136) = v7;

  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  [*(a1 + 40) size];
  v15 = [v12 meshForRect:v10 maxPitch:{v11, v13, v14, 10.0}];
  v16 = *(a1 + 32);
  v17 = *(v16 + 160);
  *(v16 + 160) = v15;

  return _objc_release_x1();
}

uint64_t sub_5A3C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CLKUIConvertUIImageToMTLTexture();
  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  *(v4 + 144) = v3;

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  [*(a1 + 40) size];
  v11 = [v8 meshForRect:v6 maxPitch:{v7, v9, v10, 10.0}];
  v12 = *(a1 + 32);
  v13 = *(v12 + 168);
  *(v12 + 168) = v11;

  return _objc_release_x1();
}

uint64_t sub_5B9C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CLKUIConvertUIImageToMTLTexture();
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  *(v4 + 152) = v3;

  return _objc_release_x1();
}

void sub_645C(id a1)
{
  qword_1C1B0 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_64B8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_67BC(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3 == 4)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:7000];
    v13[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v13[1] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
    v13[2] = v8;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
    v13[3] = v9;
    v10 = v13;
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v14[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:4000];
    v14[1] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
    v14[2] = v8;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
    v14[3] = v9;
    v10 = v14;
LABEL_8:
    v11 = [NSArray arrayWithObjects:v10 count:4];
    [(NTKFace *)v5 setCurationPlacements:v11];

    goto LABEL_9;
  }

  if (a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:4000, v6];
    v12[1] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
    v12[2] = v8;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
    v12[3] = v9;
    v10 = v12;
    goto LABEL_8;
  }

  v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
  v15[0] = v6;
  v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
  v15[1] = v7;
  v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:4000];
  v15[2] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:3];
  [(NTKFace *)v5 setCurationPlacements:v9];
LABEL_9:
}

void sub_7FC0(id a1)
{
  qword_1C1C0 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

double sub_8064(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_1C1F0);
  if (qword_1C1F8)
  {
    v3 = qword_1C1F8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_1C200))
  {
    v5 = qword_1C1D0;
  }

  else
  {
    qword_1C1F8 = v2;
    qword_1C200 = [v2 version];
    v5 = sub_8164(qword_1C200, v2);
    qword_1C1D0 = v5;
    qword_1C1D8 = v6;
    qword_1C1E0 = v7;
    qword_1C1E8 = v8;
  }

  os_unfair_lock_unlock(&unk_1C1F0);

  return *&v5;
}

double sub_8164(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:14.0];
  v4 = v3;
  [v2 scaledValue:13.0];
  [v2 scaledSize:{41.5, 14.5}];

  return v4;
}

id sub_85FC(uint64_t a1, void *a2, double *a3)
{
  v5 = a2;
  v6 = objc_alloc_init(NSMutableParagraphStyle);
  [v6 setAlignment:1];
  v55 = v6;
  v56 = v5;
  if (v5)
  {
    v59[0] = NSFontAttributeName;
    v59[1] = NSParagraphStyleAttributeName;
    v60[0] = v5;
    v60[1] = v6;
    v7 = v60;
    v8 = v59;
    v9 = 2;
  }

  else
  {
    v57 = NSParagraphStyleAttributeName;
    v58 = v6;
    v7 = &v58;
    v8 = &v57;
    v9 = 1;
  }

  v10 = [NSDictionary dictionaryWithObjects:v7 forKeys:v8 count:v9];
  v11 = [[NSAttributedString alloc] initWithString:*(a1 + 32) attributes:v10];
  v54 = v10;
  v12 = [[NSAttributedString alloc] initWithString:*(a1 + 40) attributes:v10];
  v13 = CTFramesetterCreateWithAttributedString(v11);
  v14 = CTFramesetterCreateWithAttributedString(v12);
  v62.length = [(__CFAttributedString *)v11 length];
  v62.location = 0;
  v66.width = 1.79769313e308;
  v66.height = 1.79769313e308;
  v15 = CTFramesetterSuggestFrameSizeWithConstraints(v13, v62, 0, v66, 0);
  v63.length = [(__CFAttributedString *)v12 length];
  v63.location = 0;
  v67.width = 1.79769313e308;
  v67.height = 1.79769313e308;
  v16 = CTFramesetterSuggestFrameSizeWithConstraints(v14, v63, 0, v67, 0);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  if (v15.width + v17 * 2.0 >= v16.width + v17 * 2.0)
  {
    v19 = v15.width + v17 * 2.0;
  }

  else
  {
    v19 = v16.width + v17 * 2.0;
  }

  if (v15.height >= v16.height + v18)
  {
    height = v15.height;
  }

  else
  {
    height = v16.height + v18;
  }

  y = CGPointZero.y;
  v68.origin.x = CGPointZero.x;
  v68.origin.y = y;
  v68.size.width = v19;
  v68.size.height = height;
  v22 = (CGRectGetMaxX(v68) * *(a1 + 64));
  v69.origin.x = CGPointZero.x;
  v69.origin.y = y;
  v69.size.width = v19;
  v69.size.height = height;
  v23 = (CGRectGetMaxY(v69) * *(a1 + 64));
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v25 = CGBitmapContextCreate(0, v22, v23, 8uLL, v22, DeviceGray, 7u);
  CGContextScaleCTM(v25, *(a1 + 64), *(a1 + 64));
  Mutable = CGPathCreateMutable();
  v70.origin.y = height - v15.height;
  v70.origin.x = 0.0;
  v70.size.width = v19;
  v70.size.height = v15.height;
  CGPathAddRect(Mutable, 0, v70);
  v64.length = [(__CFAttributedString *)v11 length];
  cf = v13;
  v64.location = 0;
  Frame = CTFramesetterCreateFrame(v13, v64, Mutable, 0);
  v28 = CGPathCreateMutable();
  v71.origin.y = height - v16.height - *(a1 + 56);
  v71.origin.x = 0.0;
  v71.size.width = v19;
  v71.size.height = v16.height;
  CGPathAddRect(v28, 0, v71);
  v65.length = [(__CFAttributedString *)v12 length];
  v53 = v14;
  v65.location = 0;
  v29 = CTFramesetterCreateFrame(v14, v65, v28, 0);
  if (a3)
  {
    [*(a1 + 72) _opticalBoundsFromFrame:v29 context:v25];
    v31 = v30;
    v50 = v33;
    v51 = v32;
    v35 = v34;
    [*(a1 + 72) _opticalBoundsFromFrame:Frame context:v25];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    if (v31 >= v36)
    {
      v44 = v36;
    }

    else
    {
      v44 = v31;
    }

    v72.origin.x = v31;
    v72.size.width = v50;
    v72.origin.y = v51;
    v72.size.height = v35;
    MaxX = CGRectGetMaxX(v72);
    v73.origin.x = v37;
    v73.origin.y = v39;
    v73.size.width = v41;
    v73.size.height = v43;
    v46 = CGRectGetMaxX(v73);
    if (MaxX >= v46)
    {
      v46 = MaxX;
    }

    *a3 = v19 * 0.5 - (v44 + (v46 - v44) * 0.5);
  }

  CTFrameDraw(Frame, v25);
  CTFrameDraw(v29, v25);
  Image = CGBitmapContextCreateImage(v25);
  v48 = [UIImage imageWithCGImage:Image scale:0 orientation:*(a1 + 64)];
  CGImageRelease(Image);
  CGContextRelease(v25);
  CGColorSpaceRelease(DeviceGray);
  CFRelease(Frame);
  CFRelease(cf);
  CGPathRelease(Mutable);
  CFRelease(v29);
  CFRelease(v53);
  CGPathRelease(v28);

  return v48;
}

void sub_8A6C(uint64_t a1)
{
  v2 = *(a1 + 8);
}

double NTKMagmaReduceMotionMultiplier()
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  result = 1.0;
  if (IsReduceMotionEnabled)
  {
    return 0.5;
  }

  return result;
}

float32x2_t sub_9708(uint64_t a1)
{
  v9 = arc4random();
  v2 = arc4random();
  v3.f32[0] = v9;
  v3.f32[1] = v2;
  v4 = vmul_f32(v3, v3);
  v5 = v3;
  v4.i32[0] = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
  v6 = vrsqrte_f32(v4.u32[0]);
  v7 = vmul_f32(v6, vrsqrts_f32(v4.u32[0], vmul_f32(v6, v6)));
  return vmul_n_f32(vmul_n_f32(v5, vmul_f32(v7, vrsqrts_f32(v4.u32[0], vmul_f32(v7, v7))).f32[0]), *(a1 + 32));
}

float32x2_t sub_9830(float32x2_t *a1, double a2, float32x2_t a3)
{
  v3 = vadd_f32(a3, 0xBF000000BF000000);
  v4 = vmul_f32(vadd_f32(v3, v3), a1[4]);
  v5 = vadd_f32(v4, vdup_lane_s32(v4, 1));
  v6 = vmul_f32(v5, v5);
  v7 = 1.0 - sqrtf(vadd_f32(v6, v6).f32[0]);
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7;
  return vmul_n_f32(a1[5], v8);
}

float32x2_t sub_9940(float32x2_t *a1, double a2, float32x2_t a3)
{
  v3 = vadd_f32(a3, 0xBF000000BF000000);
  v4 = vmul_f32(vadd_f32(v3, v3), a1[4]);
  v5 = vadd_f32(v4, vdup_lane_s32(v4, 1));
  v6 = vmul_f32(v5, v5);
  v7 = 1.0 - vadd_f32(v6, v6).f32[0];
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7;
  return vmul_n_f32(a1[5], v8);
}

float32x2_t sub_99F8(uint64_t a1, double a2, double a3, float32x2_t a4)
{
  [*(a1 + 32) size];
  v16 = v6;
  [*(a1 + 32) size];
  v7.f64[0] = v16;
  v7.f64[1] = v8;
  __asm { FMOV            V0.2D, #0.5 }

  *&_Q0.f64[0] = vcvt_f32_f64(vsubq_f64(vmulq_f64(v7, _Q0), vcvtq_f64_f32(a4)));
  v14 = vmul_f32(*&_Q0.f64[0], *&_Q0.f64[0]);
  v14.i32[0] = vadd_f32(v14, vdup_lane_s32(v14, 1)).u32[0];
  *&v7.f64[0] = vrsqrte_f32(v14.u32[0]);
  *&v7.f64[0] = vmul_f32(*&v7.f64[0], vrsqrts_f32(v14.u32[0], vmul_f32(*&v7.f64[0], *&v7.f64[0])));
  *&_Q0.f64[0] = vmul_n_f32(*&_Q0.f64[0], vmul_f32(*&v7.f64[0], vrsqrts_f32(v14.u32[0], vmul_f32(*&v7.f64[0], *&v7.f64[0]))).f32[0]);
  *v7.f64 = -*(_Q0.f64 + 1);
  return vmul_n_f32(vzip1_s32(*&v7.f64[0], *&_Q0.f64[0]), *(a1 + 40));
}

float32x2_t sub_9B48(uint64_t a1, double a2, double a3, float32x2_t a4)
{
  v4 = *(a1 + 40);
  v5 = vmul_n_f32(vsub_f32(a4, *(a1 + 32)), v4);
  v6 = vmul_f32(v5, v5);
  v7 = vadd_f32(v6, vdup_lane_s32(v6, 1)).u32[0];
  v8 = *(a1 + 48) / vaddv_f32(v6);
  if (v8 >= *(a1 + 52))
  {
    v8 = *(a1 + 52);
  }

  v9 = vrsqrte_f32(v7);
  v10 = vmul_f32(v9, vrsqrts_f32(v7, vmul_f32(v9, v9)));
  return vmul_n_f32(vmul_n_f32(v5, vmul_f32(v10, vrsqrts_f32(v7, vmul_f32(v10, v10))).f32[0]), v8);
}

float32x2_t sub_9C58(uint64_t a1, double a2, double a3, float32x2_t a4)
{
  v4 = *(a1 + 40);
  v5 = vmul_n_f32(vsub_f32(a4, *(a1 + 32)), v4);
  v6 = vmul_f32(v5, v5);
  v7 = vadd_f32(v6, vdup_lane_s32(v6, 1)).u32[0];
  v8 = vaddv_f32(v6);
  v9 = 0.0;
  if (*(a1 + 48) >= v8)
  {
    v9 = *(a1 + 56);
  }

  v10 = vrsqrte_f32(v7);
  v11 = vmul_f32(v10, vrsqrts_f32(v7, vmul_f32(v10, v10)));
  return vmul_n_f32(vmul_n_f32(v5, vmul_f32(v11, vrsqrts_f32(v7, vmul_f32(v11, v11))).f32[0]), v9);
}

float32x2_t sub_9D70(uint64_t a1, double a2, double a3, float32x2_t a4)
{
  v4 = *(a1 + 40);
  v5 = vmul_n_f32(vsub_f32(a4, *(a1 + 32)), v4);
  v6 = vmul_f32(v5, v5);
  v7 = vadd_f32(v6, vdup_lane_s32(v6, 1)).u32[0];
  v8 = vaddv_f32(v6);
  v9 = *(a1 + 48);
  v10 = 0.0;
  if (v9 >= v8)
  {
    v10 = *(a1 + 56);
  }

  v11 = v8 / v9 * v10;
  v12 = vrsqrte_f32(v7);
  v13 = vmul_f32(v12, vrsqrts_f32(v7, vmul_f32(v12, v12)));
  return vmul_n_f32(vmul_n_f32(v5, vmul_f32(v13, vrsqrts_f32(v7, vmul_f32(v13, v13))).f32[0]), v11);
}

float32x2_t sub_9E98(uint64_t a1, double a2, double a3, float32x2_t a4)
{
  v4 = *(a1 + 40);
  v5 = vmul_n_f32(vsub_f32(a4, *(a1 + 32)), v4);
  v6 = vmul_f32(v5, v5);
  v7 = vadd_f32(v6, vdup_lane_s32(v6, 1)).u32[0];
  v6.f32[0] = (1.0 - fmin(vaddv_f32(v6) / *(a1 + 48), 1.0)) * *(a1 + 56);
  v8 = vrsqrte_f32(v7);
  v9 = vmul_f32(v8, vrsqrts_f32(v7, vmul_f32(v8, v8)));
  return vmul_n_f32(vmul_n_f32(v5, vmul_f32(v9, vrsqrts_f32(v7, vmul_f32(v9, v9))).f32[0]), v6.f32[0]);
}

float32x2_t sub_9FBC(uint64_t a1, double a2, double a3, float32x2_t a4)
{
  v4 = *(a1 + 40);
  v5 = vmul_n_f32(vsub_f32(a4, *(a1 + 32)), v4);
  v5.f32[0] = 1.0 - fmin(vaddv_f32(vmul_f32(v5, v5)) / *(a1 + 48), 1.0);
  return vmul_n_f32(*(a1 + 56), v5.f32[0]);
}

void sub_A4BC(id a1)
{
  qword_1C208 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_A684()
{
  sub_64D4();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_0, v1, OS_LOG_TYPE_FAULT, "Magma Collision Texture Load Error: Magma collision texture (%@) error loading: %@", v2, 0x16u);
}

void sub_A7EC(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[NTKMagmaTimeRenderer renderTimeWithHour:minute:fontSize:lineSpacing:]";
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "%s Victory font is nil", &v1, 0xCu);
}

void sub_A870(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[NTKMagmaTimeRenderer renderTimeWithHour:minute:fontSize:lineSpacing:]";
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "%s Victory Tritium font is nil", &v1, 0xCu);
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  v7 = _CTFramesetterSuggestFrameSizeWithConstraints(framesetter, stringRange, frameAttributes, constraints, fitRange);
  height = v7.height;
  width = v7.width;
  result.height = height;
  result.width = width;
  return result;
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