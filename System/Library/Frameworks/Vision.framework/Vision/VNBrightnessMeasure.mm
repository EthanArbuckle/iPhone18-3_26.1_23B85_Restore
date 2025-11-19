@interface VNBrightnessMeasure
+ (BOOL)computeBrightnessScore:(float *)a3 onImage:(__CVBuffer *)a4 error:(id *)a5;
@end

@implementation VNBrightnessMeasure

+ (BOOL)computeBrightnessScore:(float *)a3 onImage:(__CVBuffer *)a4 error:(id *)a5
{
  v59 = *MEMORY[0x1E69E9840];
  CVPixelBufferLockBaseAddress(a4, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a4, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a4, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
  v10 = (WidthOfPlane >> 8);
  if (WidthOfPlane < 0x100)
  {
    v10 = 1.0;
  }

  v53 = v10;
  v11 = (HeightOfPlane >> 8);
  if (HeightOfPlane < 0x100)
  {
    v11 = 1.0;
  }

  v51 = v11;
  if (HeightOfPlane)
  {
    v46 = a3;
    v49 = HeightOfPlane;
    v9 = 0uLL;
    v12 = 0.0;
    v50 = HeightOfPlane;
    do
    {
      v13 = (v12 + 0.5);
      if (v13 >= HeightOfPlane)
      {
        break;
      }

      v52 = v12;
      if (WidthOfPlane)
      {
        v14 = &BaseAddressOfPlane[BytesPerRowOfPlane * v13];
        v15 = 0.0;
        do
        {
          v16 = v15 + 0.5;
          v17 = (v15 + 0.5);
          if (v17 >= WidthOfPlane)
          {
            break;
          }

          v55 = v9;
          v18 = &v14[4 * v17];
          LOBYTE(v16) = v18[2];
          v19 = LODWORD(v16) / 255.0;
          if (v19 <= 0.04045)
          {
            v20 = v19 / 12.92;
          }

          else
          {
            v19 = powf((v19 + 0.055) / 1.055, 2.4);
            v20 = v19;
          }

          LOBYTE(v19) = v18[1];
          v21 = LODWORD(v19) / 255.0;
          if (v21 <= 0.04045)
          {
            v22 = v21 / 12.92;
          }

          else
          {
            v21 = powf((v21 + 0.055) / 1.055, 2.4);
            v22 = v21;
          }

          LOBYTE(v21) = *v18;
          v23 = LODWORD(v21) / 255.0;
          v24 = v23 <= 0.04045 ? v23 / 12.92 : powf((v23 + 0.055) / 1.055, 2.4);
          v25 = 0;
          v26 = &dword_1A6052350;
          do
          {
            v27 = (v22 * *(v26 - 1)) + (v20 * *(v26 - 2));
            v28 = *v26;
            v26 += 3;
            *(&v56 + v25) = v27 + (v24 * v28);
            v25 += 4;
          }

          while (v25 != 12);
          v29 = v58;
          v30 = v56 / 0.95047;
          v31 = (v56 / 0.95047) <= 0.008856 ? (v30 * 7.787) + 0.13793 : powf(v30, 0.33333);
          v32 = v57 <= 0.008856 ? (v57 * 7.787) + 0.13793 : powf(v57, 0.33333);
          v33 = v29 / 1.0888;
          v34 = (v29 / 1.0888) <= 0.008856 ? (v33 * 7.787) + 0.13793 : powf(v33, 0.33333);
          v35 = (v32 * 116.0) + -16.0;
          v36 = sqrtf((((v32 - v34) * 200.0) * ((v32 - v34) * 200.0)) + (((v31 - v32) * 500.0) * ((v31 - v32) * 500.0)));
          v54 = tanhf(((v35 + -128.0) - v36) + 40.0);
          v37.f32[0] = tanhf((((255.0 - v35) + -240.0) - v36) + 10.0);
          *(&v9 + 1) = *(&v55 + 1);
          v37.f32[1] = v54;
          *&v9 = vsub_s32(*&v55, vcgtz_f32(v37));
          v15 = v53 + v15;
        }

        while (v15 < WidthOfPlane);
      }

      v12 = v51 + v52;
      LODWORD(HeightOfPlane) = v50;
    }

    while ((v51 + v52) < v49);
    v38 = vcvt_f32_u32(*&v9);
    a3 = v46;
  }

  else
  {
    v38 = 0;
  }

  *&v9 = (HeightOfPlane * WidthOfPlane);
  v39 = vdiv_f32(v38, vdup_lane_s32(*&v9, 0));
  __asm { FMOV            V1.2S, #1.0 }

  *a3 = vaddv_f32(vsub_f32(_D1, v39)) * 0.5;
  CVPixelBufferUnlockBaseAddress(a4, 1uLL);
  return 1;
}

@end