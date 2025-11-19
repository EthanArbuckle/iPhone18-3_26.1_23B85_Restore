@interface CIEightfoldReflectedTile
- (id)outputImage;
@end

@implementation CIEightfoldReflectedTile

- (id)outputImage
{
  v47[3] = *MEMORY[0x1E69E9840];
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
  v11 = __sincos_stret(v6);
  v43 = v4 * v11.__cosval;
  v44 = v4 * v11.__sinval;
  v45 = -(v11.__sinval * v4);
  v46 = v4 * v11.__cosval;
  if (fabs(v43 * v43 - v4 * v11.__sinval * v45) < 0.01)
  {
    return [(CITileFilter *)self _croppedCenterPixelImage];
  }

  *&v13 = v8;
  v14 = v10;
  v37 = *&v13;
  v38 = v14;
  *(&v13 + 1) = v14;
  v40 = v13;
  v15 = v6;
  v16 = __sincosf_stret(v15);
  v17 = v4;
  v39 = v17;
  v18 = COERCE_DOUBLE(vadd_f32(vmul_f32(vmul_n_f32(__PAIR64__(LODWORD(v16.__sinval), LODWORD(v16.__cosval)), v17), 0x3F0000003F000000), *&v40));
  v19 = v6 + 0.785398163;
  v20 = __sincosf_stret(v19);
  roiForPoints(v40, v18, COERCE_DOUBLE(vadd_f32(*&v40, vdiv_f32(vmul_n_f32(__PAIR64__(LODWORD(v20.__sinval), LODWORD(v20.__cosval)), v39), vdup_n_s32(0x3FB504F3u)))));
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  affine::inverse(&v43, v42);
  v29 = [CIVector vectorWithX:v42[0] Y:v42[2] Z:v42[1] W:v42[3]];
  v30 = [CIVector vectorWithX:v43 Y:v45 Z:v44 W:v46];
  v31 = [(CIEightfoldReflectedTile *)self _kernel];
  v32 = *MEMORY[0x1E695F040];
  v33 = *(MEMORY[0x1E695F040] + 8);
  v35 = *(MEMORY[0x1E695F040] + 16);
  v34 = *(MEMORY[0x1E695F040] + 24);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __39__CIEightfoldReflectedTile_outputImage__block_invoke;
  v41[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v41[4] = v22;
  v41[5] = v24;
  v41[6] = v26;
  v41[7] = v28;
  inputImage = self->super.inputImage;
  v47[0] = [CIVector vectorWithX:v37 Y:v38];
  v47[1] = v29;
  v47[2] = v30;
  return [v31 applyWithExtent:v41 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v47, 3), v32, v33, v35, v34}];
}

@end