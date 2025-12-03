@interface CIGlideReflectedTile
- (id)outputImage;
@end

@implementation CIGlideReflectedTile

- (id)outputImage
{
  v47[3] = *MEMORY[0x1E69E9840];
  if (!self->super.inputImage || !self->super.inputCenter)
  {
    return 0;
  }

  [(NSNumber *)self->super.inputWidth doubleValue];
  v40 = v3;
  [(NSNumber *)self->super.inputAngle doubleValue];
  v5 = v4;
  [(CIVector *)self->super.inputCenter X];
  v7 = v6;
  [(CIVector *)self->super.inputCenter Y];
  v9 = v8;
  v11 = __sincos_stret(v5);
  v10.f64[0] = v11.__cosval;
  v10.f64[1] = v11.__sinval;
  v12 = vmulq_n_f64(v10, v40);
  v13 = -(v11.__sinval * v40);
  v44 = v12;
  v45 = v13;
  v46 = v12.f64[0];
  if (fabs(v12.f64[0] * v12.f64[0] - v12.f64[1] * v13) < 0.01)
  {
    return [(CITileFilter *)self _croppedCenterPixelImage];
  }

  *&v15 = v7;
  v16 = v9;
  v39 = *&v15;
  v41 = v16;
  *(&v15 + 1) = v16;
  v17 = vdupq_lane_s64(*&v12.f64[0], 0);
  v17.f64[0] = v13;
  *&v17.f64[0] = vadd_f32(*&v15, vcvt_f32_f64(vaddq_f64(v12, vmulq_f64(v17, 0))));
  v18 = v13 + v13;
  v19.f32[0] = v13 + v13 + v12.f64[0] * 0.0;
  v20 = v12.f64[0] + v12.f64[0];
  v21 = v12.f64[0] + v12.f64[0] + v12.f64[1] * 0.0;
  v19.f32[1] = v21;
  *v12.f64 = v12.f64[0] + v18;
  v22 = v12.f64[1] + v20;
  *(v12.f64 + 1) = v22;
  roiForPoints(v15, v17.f64[0], COERCE_DOUBLE(vadd_f32(*&v15, v19)), COERCE_DOUBLE(vadd_f32(*&v15, *&v12.f64[0])));
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  affine::inverse(&v44, v43);
  v31 = [CIVector vectorWithX:v43[0] Y:v43[2] Z:v43[1] W:v43[3]];
  v32 = [CIVector vectorWithX:v44.f64[0] Y:v45 Z:v44.f64[1] W:v46];
  _kernel = [(CIGlideReflectedTile *)self _kernel];
  v34 = *MEMORY[0x1E695F040];
  v35 = *(MEMORY[0x1E695F040] + 8);
  v37 = *(MEMORY[0x1E695F040] + 16);
  v36 = *(MEMORY[0x1E695F040] + 24);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __35__CIGlideReflectedTile_outputImage__block_invoke;
  v42[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v42[4] = v24;
  v42[5] = v26;
  v42[6] = v28;
  v42[7] = v30;
  inputImage = self->super.inputImage;
  v47[0] = [CIVector vectorWithX:v39 Y:v41];
  v47[1] = v31;
  v47[2] = v32;
  return [_kernel applyWithExtent:v42 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v47, 3), v34, v35, v37, v36}];
}

@end