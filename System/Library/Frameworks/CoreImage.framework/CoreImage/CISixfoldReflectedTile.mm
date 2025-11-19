@interface CISixfoldReflectedTile
- (id)outputImage;
@end

@implementation CISixfoldReflectedTile

- (id)outputImage
{
  v48[3] = *MEMORY[0x1E69E9840];
  if (!self->super.inputImage || !self->super.inputCenter)
  {
    return 0;
  }

  [(NSNumber *)self->super.inputWidth doubleValue];
  v4 = v3;
  [(NSNumber *)self->super.inputAngle doubleValue];
  v6 = v5;
  [(CIVector *)self->super.inputCenter X];
  v8 = v7;
  [(CIVector *)self->super.inputCenter Y];
  v10 = v9;
  v11 = __sincos_stret(v6 + -0.523598776);
  v12 = __sincos_stret(v6 + 0.523598776);
  v44 = v4 * v11.__cosval;
  v45 = v4 * v11.__sinval;
  v46 = v4 * v12.__cosval;
  v47 = v4 * v12.__sinval;
  if (fabs(v4 * v11.__cosval * (v4 * v12.__sinval) - v4 * v11.__sinval * (v4 * v12.__cosval)) < 0.01)
  {
    return [(CITileFilter *)self _croppedCenterPixelImage];
  }

  v14.f32[0] = v8;
  v15 = v10;
  v39 = v14.f32[0];
  v40 = v15;
  v14.f32[1] = v15;
  v41 = v14;
  v16 = v6;
  v17 = __sincosf_stret(v16);
  v18 = v4;
  v19 = vdiv_f32(vmul_n_f32(__PAIR64__(LODWORD(v17.__sinval), LODWORD(v17.__cosval)), v18), vdup_n_s32(0x3FDDB3D7u));
  v20 = vadd_f32(v19, v41);
  v21.f32[0] = v4 * v12.__cosval + v4 * v11.__cosval * 0.0;
  v22 = v4 * v12.__sinval + v4 * v11.__sinval * 0.0;
  v21.f32[1] = v22;
  roiForPoints(*&v20, COERCE_DOUBLE(vadd_f32(v19, v20)), COERCE_DOUBLE(vadd_f32(v41, v21)));
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  affine::inverse(&v44, v43);
  v31 = [CIVector vectorWithX:v43[0] Y:v43[2] Z:v43[1] W:v43[3]];
  v32 = [CIVector vectorWithX:v44 Y:v46 Z:v45 W:v47];
  v33 = [(CISixfoldReflectedTile *)self _kernel];
  v34 = *MEMORY[0x1E695F040];
  v35 = *(MEMORY[0x1E695F040] + 8);
  v37 = *(MEMORY[0x1E695F040] + 16);
  v36 = *(MEMORY[0x1E695F040] + 24);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __37__CISixfoldReflectedTile_outputImage__block_invoke;
  v42[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v42[4] = v24;
  v42[5] = v26;
  v42[6] = v28;
  v42[7] = v30;
  inputImage = self->super.inputImage;
  v48[0] = [CIVector vectorWithX:v39 Y:v40];
  v48[1] = v31;
  v48[2] = v32;
  return [v33 applyWithExtent:v42 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v48, 3), v34, v35, v37, v36}];
}

@end