@interface CISixfoldRotatedTile
- (id)outputImage;
@end

@implementation CISixfoldRotatedTile

- (id)outputImage
{
  v50[3] = *MEMORY[0x1E69E9840];
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
  v46 = v4 * v11.__cosval;
  v47 = v4 * v11.__sinval;
  v48 = v4 * v12.__cosval;
  v49 = v4 * v12.__sinval;
  if (fabs(v4 * v11.__cosval * (v4 * v12.__sinval) - v4 * v11.__sinval * (v4 * v12.__cosval)) < 0.01)
  {
    return [(CITileFilter *)self _croppedCenterPixelImage];
  }

  *&v14 = v8;
  v15 = v10;
  v40 = *&v14;
  v41 = v15;
  *(&v14 + 1) = v15;
  v43 = v14;
  v16 = v6 + -0.523598776;
  v17 = __sincosf_stret(v16);
  v18 = v4;
  v42 = v18;
  v19 = COERCE_DOUBLE(vadd_f32(*&v43, vmul_f32(vmul_n_f32(__PAIR64__(LODWORD(v17.__sinval), LODWORD(v17.__cosval)), v18), 0x3F0000003F000000)));
  v20 = v6 + 0.523598776;
  v21 = __sincosf_stret(v20);
  v22 = v6;
  v23 = __sincosf_stret(v22);
  roiForPoints(v43, v19, COERCE_DOUBLE(vadd_f32(*&v43, vmul_f32(vmul_n_f32(__PAIR64__(LODWORD(v21.__sinval), LODWORD(v21.__cosval)), v42), 0x3F0000003F000000))), COERCE_DOUBLE(vadd_f32(vdiv_f32(vmul_n_f32(__PAIR64__(LODWORD(v23.__sinval), LODWORD(v23.__cosval)), v42), vdup_n_s32(0x3FDDB3D7u)), *&v43)));
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  affine::inverse(&v46, v45);
  v32 = [CIVector vectorWithX:v45[0] Y:v45[2] Z:v45[1] W:v45[3]];
  v33 = [CIVector vectorWithX:v46 Y:v48 Z:v47 W:v49];
  v34 = [(CISixfoldRotatedTile *)self _kernel];
  v35 = *MEMORY[0x1E695F040];
  v36 = *(MEMORY[0x1E695F040] + 8);
  v38 = *(MEMORY[0x1E695F040] + 16);
  v37 = *(MEMORY[0x1E695F040] + 24);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __35__CISixfoldRotatedTile_outputImage__block_invoke;
  v44[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v44[4] = v25;
  v44[5] = v27;
  v44[6] = v29;
  v44[7] = v31;
  inputImage = self->super.inputImage;
  v50[0] = [CIVector vectorWithX:v40 Y:v41];
  v50[1] = v32;
  v50[2] = v33;
  return [v34 applyWithExtent:v44 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v50, 3), v35, v36, v38, v37}];
}

@end