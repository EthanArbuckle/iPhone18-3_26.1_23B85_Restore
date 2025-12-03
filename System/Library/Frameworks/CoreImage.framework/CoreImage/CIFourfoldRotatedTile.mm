@interface CIFourfoldRotatedTile
- (id)outputImage;
@end

@implementation CIFourfoldRotatedTile

- (id)outputImage
{
  v46[3] = *MEMORY[0x1E69E9840];
  if (!self->super.inputImage || !self->super.inputCenter)
  {
    return 0;
  }

  [(NSNumber *)self->super.inputWidth doubleValue];
  v39 = v3;
  [(NSNumber *)self->super.inputAngle doubleValue];
  v5 = v4;
  [(CIVector *)self->super.inputCenter X];
  v7 = v6;
  [(CIVector *)self->super.inputCenter Y];
  v9 = v8;
  v11 = __sincos_stret(v5);
  v10.f64[0] = v11.__cosval;
  v10.f64[1] = v11.__sinval;
  v12 = vmulq_n_f64(v10, v39);
  v13 = -(v11.__sinval * v39);
  v43 = v12;
  v44 = v13;
  v45 = v12.f64[0];
  if (fabs(v12.f64[0] * v12.f64[0] - v12.f64[1] * v13) < 0.01)
  {
    return [(CITileFilter *)self _croppedCenterPixelImage];
  }

  *&v15 = v7;
  v16 = v9;
  v38 = *&v15;
  v40 = v16;
  *(&v15 + 1) = v16;
  v17 = vdupq_lane_s64(*&v12.f64[0], 0);
  v17.f64[0] = v13;
  *&v17.f64[0] = vadd_f32(*&v15, vcvt_f32_f64(vaddq_f64(v12, vmulq_f64(v17, 0))));
  v18.f32[0] = v13 + v12.f64[0] * 0.0;
  v19 = v12.f64[0] + v12.f64[1] * 0.0;
  v18.f32[1] = v19;
  v20.f32[0] = v12.f64[0] + v13;
  v21 = v12.f64[1] + v12.f64[0];
  v20.f32[1] = v21;
  roiForPoints(v15, v17.f64[0], COERCE_DOUBLE(vadd_f32(v18, *&v15)), COERCE_DOUBLE(vadd_f32(v20, *&v15)));
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  affine::inverse(&v43, v42);
  v30 = [CIVector vectorWithX:v42[0] Y:v42[2] Z:v42[1] W:v42[3]];
  v31 = [CIVector vectorWithX:v43.f64[0] Y:v44 Z:v43.f64[1] W:v45];
  _kernel = [(CIFourfoldRotatedTile *)self _kernel];
  v33 = *MEMORY[0x1E695F040];
  v34 = *(MEMORY[0x1E695F040] + 8);
  v36 = *(MEMORY[0x1E695F040] + 16);
  v35 = *(MEMORY[0x1E695F040] + 24);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __36__CIFourfoldRotatedTile_outputImage__block_invoke;
  v41[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v41[4] = v23;
  v41[5] = v25;
  v41[6] = v27;
  v41[7] = v29;
  inputImage = self->super.inputImage;
  v46[0] = [CIVector vectorWithX:v38 Y:v40];
  v46[1] = v30;
  v46[2] = v31;
  return [_kernel applyWithExtent:v41 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v46, 3), v33, v34, v36, v35}];
}

@end