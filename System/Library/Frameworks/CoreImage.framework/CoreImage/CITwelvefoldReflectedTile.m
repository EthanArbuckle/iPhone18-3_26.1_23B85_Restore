@interface CITwelvefoldReflectedTile
- (id)outputImage;
@end

@implementation CITwelvefoldReflectedTile

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

  *&v14 = v8;
  v15 = v10;
  v38 = *&v14;
  v39 = v15;
  *(&v14 + 1) = v15;
  v41 = v14;
  v16 = v6 + 0.523598776;
  v17 = __sincosf_stret(v16);
  v18 = v4;
  v40 = v18;
  v19 = COERCE_DOUBLE(vadd_f32(*&v41, vmul_f32(vmul_n_f32(__PAIR64__(LODWORD(v17.__sinval), LODWORD(v17.__cosval)), v18), 0x3F0000003F000000)));
  v20 = v6;
  v21 = __sincosf_stret(v20);
  roiForPoints(v41, v19, COERCE_DOUBLE(vadd_f32(vdiv_f32(vmul_n_f32(__PAIR64__(LODWORD(v21.__sinval), LODWORD(v21.__cosval)), v40), vdup_n_s32(0x3FDDB3D7u)), *&v41)));
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  affine::inverse(&v44, v43);
  v30 = [CIVector vectorWithX:v43[0] Y:v43[2] Z:v43[1] W:v43[3]];
  v31 = [CIVector vectorWithX:v44 Y:v46 Z:v45 W:v47];
  v32 = [(CITwelvefoldReflectedTile *)self _kernel];
  v33 = *MEMORY[0x1E695F040];
  v34 = *(MEMORY[0x1E695F040] + 8);
  v36 = *(MEMORY[0x1E695F040] + 16);
  v35 = *(MEMORY[0x1E695F040] + 24);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __40__CITwelvefoldReflectedTile_outputImage__block_invoke;
  v42[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v42[4] = v23;
  v42[5] = v25;
  v42[6] = v27;
  v42[7] = v29;
  inputImage = self->super.inputImage;
  v48[0] = [CIVector vectorWithX:v38 Y:v39];
  v48[1] = v30;
  v48[2] = v31;
  return [v32 applyWithExtent:v42 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v48, 3), v33, v34, v36, v35}];
}

@end