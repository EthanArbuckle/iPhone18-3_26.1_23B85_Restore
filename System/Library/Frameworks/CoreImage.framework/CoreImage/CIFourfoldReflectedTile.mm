@interface CIFourfoldReflectedTile
- (id)outputImage;
@end

@implementation CIFourfoldReflectedTile

- (id)outputImage
{
  v48[3] = *MEMORY[0x1E69E9840];
  if (!self->super.super.inputImage || !self->super.super.inputCenter)
  {
    return 0;
  }

  [(NSNumber *)self->super.super.inputWidth doubleValue];
  v42 = v3;
  [(NSNumber *)self->super.super.inputAngle doubleValue];
  v5 = v4;
  [(NSNumber *)self->super.inputAcuteAngle doubleValue];
  v7 = v6;
  [(CIVector *)self->super.super.inputCenter X];
  v9 = v8;
  [(CIVector *)self->super.super.inputCenter Y];
  v11 = v10;
  v12 = __sincos_stret(v5);
  v14 = __sincos_stret(v5 + v7);
  v13.f64[0] = v14.__cosval;
  v15.f64[0] = v12.__cosval;
  v15.f64[1] = v12.__sinval;
  v16 = vmulq_n_f64(v15, v42);
  v13.f64[1] = v14.__sinval;
  v17 = vmulq_n_f64(v13, v42);
  v46 = v16;
  v47 = v17;
  if (fabs(-v16.f64[1] * v17.f64[0] + v16.f64[0] * v17.f64[1]) < 0.01)
  {
    return [(CITileFilter *)self _croppedCenterPixelImage];
  }

  *&v19 = v9;
  v20 = v11;
  v41 = *&v19;
  v43 = v20;
  *(&v19 + 1) = v20;
  v21 = COERCE_DOUBLE(vadd_f32(*&v19, vcvt_f32_f64(vaddq_f64(v16, vmulq_f64(v17, 0)))));
  v22.f32[0] = v17.f64[0] + v16.f64[0] * 0.0;
  v23 = v17.f64[1] + v16.f64[1] * 0.0;
  v22.f32[1] = v23;
  *v16.f64 = vaddq_f64(v16, v17).f64[0];
  v24 = v16.f64[1] + v17.f64[1];
  *(v16.f64 + 1) = v24;
  roiForPoints(v19, v21, COERCE_DOUBLE(vadd_f32(*&v19, v22)), COERCE_DOUBLE(vadd_f32(*&v19, *&v16.f64[0])));
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  affine::inverse(&v46, v45);
  v33 = [CIVector vectorWithX:v45[0] * 0.5 Y:v45[2] * 0.5 Z:v45[1] * 0.5 W:v45[3] * 0.5];
  v34 = [CIVector vectorWithX:v46.f64[0] Y:v47.f64[0] Z:v46.f64[1] W:v47.f64[1]];
  v35 = [(CIFourfoldReflectedTile *)self _kernel];
  v36 = *MEMORY[0x1E695F040];
  v37 = *(MEMORY[0x1E695F040] + 8);
  v39 = *(MEMORY[0x1E695F040] + 16);
  v38 = *(MEMORY[0x1E695F040] + 24);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __38__CIFourfoldReflectedTile_outputImage__block_invoke;
  v44[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v44[4] = v26;
  v44[5] = v28;
  v44[6] = v30;
  v44[7] = v32;
  inputImage = self->super.super.inputImage;
  v48[0] = [CIVector vectorWithX:v41 Y:v43];
  v48[1] = v33;
  v48[2] = v34;
  return [v35 applyWithExtent:v44 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v48, 3), v36, v37, v39, v38}];
}

@end