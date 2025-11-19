@interface CIPortraitEffectSpillCorrection
- (id)outputImage;
- (id)outputImageOfTile:(id)a3 rgb:(id)a4;
@end

@implementation CIPortraitEffectSpillCorrection

- (id)outputImageOfTile:(id)a3 rgb:(id)a4
{
  v24 = 0;
  [a4 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v29[0] = a4;
  v29[1] = a3;
  v15 = [NSArray arrayWithObjects:v29 count:2];
  bgColor = self->bgColor;
  v27 = @"bgColor";
  v28 = bgColor;
  v17 = [CIPortraitEffectSpillCorrectionProcessor applyWithExtent:v15 inputs:[NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1] arguments:&v24 error:v8, v10, v12, v14];
  if (v24)
  {
    NSLog(@"Error = %@", v24);
  }

  if ([(NSNumber *)self->inputRenderCache intValue]>= 1)
  {
    pixelBufferOut = 0;
    [(CIImage *)v17 extent];
    v19 = v18;
    [(CIImage *)v17 extent];
    v25 = kCVPixelBufferIOSurfacePropertiesKey;
    v26 = &__NSDictionary0__struct;
    CVPixelBufferCreate(0, v19, v20, 0x42475241u, [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1], &pixelBufferOut);
    v21 = +[CIContext context];
    [(CIContext *)v21 render:v17 toCVPixelBuffer:pixelBufferOut];
    v17 = [CIImage imageWithCVPixelBuffer:pixelBufferOut];
    CVPixelBufferRelease(pixelBufferOut);
  }

  return v17;
}

- (id)outputImage
{
  [(CIImage *)self->inputImage extent];
  v4 = v3;
  [(CIImage *)self->inputMatte extent];
  v6 = v5;
  v7 = v4 / v6;
  [(CIImage *)self->inputImage extent];
  v9 = v8;
  [(CIImage *)self->inputMatte extent];
  v11 = v10;
  inputImage = self->inputImage;
  CGAffineTransformMakeScale(&v63, 1.0 / v7, 1.0 / (v9 / v11));
  v13 = [(CIImage *)inputImage imageByApplyingTransform:&v63];
  [(CIImage *)self->inputMatte extent];
  v14 = [(CIImage *)v13 imageByCroppingToRect:?];
  v15 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor blackColor]);
  v55 = v14;
  [(CIImage *)v14 extent];
  v16 = [(CIImage *)v15 imageByCroppingToRect:?];
  [(CIImage *)v16 extent];
  v58 = v17;
  [(CIImage *)v16 extent];
  v56 = 0;
  v18.f64[0] = v58;
  v18.f64[1] = v19;
  __asm { FMOV            V0.2D, #0.5 }

  *&_Q0.f64[0] = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v18, _Q0)));
  __asm { FMOV            V2.2S, #1.25 }

  *&v18.f64[0] = vcvt_s32_f32(vmul_f32(vcvt_f32_u32(*&_Q0.f64[0]), _D2));
  *&_Q0.f64[0] = vsub_s32(*&_Q0.f64[0], *&v18.f64[0]);
  v52 = vadd_s32(vadd_s32(*&_Q0.f64[0], *&_Q0.f64[0]), *&v18.f64[0]);
  v53 = LODWORD(v18.f64[0]);
  v54 = *&v18.f64[0];
  v51 = HIDWORD(v18.f64[0]);
  v25 = 1;
  do
  {
    v26 = 0;
    v50 = v25;
    v27 = 1;
    do
    {
      v57 = __PAIR64__(v56, v26);
      v59 = vmul_s32(__PAIR64__(v56, v26), v52);
      v28 = v27;
      v29 = [(CIPortraitEffectSpillCorrection *)self outputImageOfTile:[(CIImage *)self->inputMatte imageByCroppingToRect:v59.u16[0] rgb:v59.u16[2], v53, v51], [(CIImage *)v55 imageByCroppingToRect:v59.u16[0], v59.u16[2], v53, v51]];
      v30 = vmla_s32(v54, vadd_s32(v57, 0xFFFF0000FFFFLL), v52);
      v31 = vtst_s32(v57, 0xFFFF0000FFFFLL);
      HIWORD(v62) = v31.i16[2];
      LOWORD(v62) = v31.i16[0];
      _ZF = v31.u16[0] == 0;
      v33 = vmul_s32(vadd_s32(v57, 0x100000001), v52);
      if (_ZF)
      {
        v34 = 0;
      }

      else
      {
        v34 = v30.i16[0];
      }

      HIWORD(v61) = v33.i16[2];
      LOWORD(v61) = v33.i16[0];
      v35 = vadd_s32(v59, v54);
      HIWORD(v60) = v35.i16[2];
      LOWORD(v60) = v35.i16[0];
      if (_ZF)
      {
        v36 = v61;
      }

      else
      {
        v36 = v35.i16[0];
      }

      if (v62 >= 0x10000)
      {
        v37 = v30.u16[2];
      }

      else
      {
        v37 = 0;
      }

      if (v62 >= 0x10000)
      {
        v38 = v60;
      }

      else
      {
        v38 = v61;
      }

      if (qword_8CEA8 != -1)
      {
        sub_4ADEC();
      }

      v39 = qword_8CEA0;
      if (!qword_8CEA0)
      {
        sub_4AE14();
      }

      [(CIImage *)v16 extent];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      *&v63.a = v16;
      *&v63.b = v29;
      [v29 extent];
      *&v63.c = [CIVector vectorWithCGRect:?];
      *&v63.d = [CIVector vectorWithCGRect:v34, v37, (v36 - v34), (HIWORD(v38) - v37)];
      v48 = [v39 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", &v63, 4), v41, v43, v45, v47}];
      v16 = v48;
      v27 = 0;
      v26 = 1;
    }

    while ((v28 & 1) != 0);
    v25 = 0;
    v56 = 1;
  }

  while ((v50 & 1) != 0);
  return [(CIImage *)v48 imageByInsertingIntermediate:0];
}

@end