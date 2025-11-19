@interface CICopyMachineTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CICopyMachineTransition

+ (id)customAttributes
{
  v17[9] = *MEMORY[0x1E69E9840];
  v16[0] = @"CIAttributeFilterCategories";
  v15[0] = @"CICategoryTransition";
  v15[1] = @"CICategoryVideo";
  v15[2] = @"CICategoryStillImage";
  v15[3] = @"CICategoryBuiltIn";
  v17[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v17[1] = @"6";
  v16[1] = @"CIAttributeFilterAvailable_iOS";
  v16[2] = @"CIAttributeFilterAvailable_Mac";
  v17[2] = @"10.4";
  v16[3] = @"inputTime";
  v13[0] = @"CIAttributeMin";
  v13[1] = @"CIAttributeSliderMin";
  v14[0] = &unk_1F1083188;
  v14[1] = &unk_1F1083188;
  v13[2] = @"CIAttributeSliderMax";
  v13[3] = @"CIAttributeDefault";
  v14[2] = &unk_1F1083198;
  v14[3] = &unk_1F1083188;
  v13[4] = @"CIAttributeType";
  v14[4] = @"CIAttributeTypeTime";
  v17[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
  v16[4] = @"inputAngle";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F1083188;
  v12[1] = &unk_1F1083188;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeDefault";
  v12[2] = &unk_1F10831A8;
  v12[3] = &unk_1F1083188;
  v11[4] = @"CIAttributeIdentity";
  v11[5] = @"CIAttributeType";
  v12[4] = &unk_1F1083188;
  v12[5] = @"CIAttributeTypeAngle";
  v17[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];
  v16[5] = @"inputWidth";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F10831B8;
  v10[1] = &unk_1F10831B8;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F10831C8;
  v10[3] = &unk_1F10831D8;
  v9[4] = @"CIAttributeIdentity";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F10831D8;
  v10[5] = @"CIAttributeTypeDistance";
  v17[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v16[6] = @"inputOpacity";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1083188;
  v8[1] = &unk_1F1083188;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F10831E8;
  v8[3] = &unk_1F10831F8;
  v7[4] = @"CIAttributeIdentity";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F10831F8;
  v8[5] = @"CIAttributeTypeScalar";
  v17[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v16[7] = @"inputExtent";
  v5[1] = @"CIAttributeDefault";
  v6[0] = @"CIAttributeTypeRectangle";
  v5[0] = @"CIAttributeType";
  v6[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:300.0 W:300.0];
  v17[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v16[8] = @"inputColor";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIColor colorWithRed:0.6 green:1.0 blue:0.8];
  v4[1] = @"CIAttributeTypeOpaqueColor";
  v17[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:9];
}

- (id)outputImage
{
  v88 = *MEMORY[0x1E69E9840];
  if (!self->inputImage || !self->inputTargetImage)
  {
    return 0;
  }

  [(CIVector *)self->inputExtent CGRectValue];
  if (CGRectIsEmpty(v89))
  {
    v3 = ci_logger_filter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v87 = [objc_opt_class() description];
      _os_log_impl(&dword_19CC36000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: inputExtent is nil or empty.\n", buf, 0xCu);
    }
  }

  [(NSNumber *)self->inputAngle floatValue];
  v5 = v4;
  [(NSNumber *)self->inputWidth floatValue];
  *&v7 = fmax(v6, 0.1);
  *v7.i32 = *v7.i32;
  v76 = v7;
  [(NSNumber *)self->inputOpacity floatValue];
  v78 = v8;
  [(NSNumber *)self->inputTime floatValue];
  v10 = v9;
  [(CIVector *)self->inputExtent X];
  *&v11 = v11;
  v82 = *&v11;
  [(CIVector *)self->inputExtent X];
  *&v13 = v12;
  v70 = *&v13;
  v74 = __PAIR64__(v13, LODWORD(v82));
  [(CIVector *)self->inputExtent Z];
  v14.f32[0] = *&v14 + v82;
  v79 = v14.i32[0];
  v14.f32[1] = v70;
  v72 = v14;
  [(CIVector *)self->inputExtent W];
  *&v15 = v15 + v70;
  v83 = __PAIR64__(LODWORD(v15), LODWORD(v82));
  v80 = __PAIR64__(LODWORD(v15), v79);
  v16 = __sincosf_stret(v5);
  v17 = vdiv_f32(__PAIR64__(LODWORD(v16.__sinval), LODWORD(v16.__cosval)), vdup_lane_s32(v76, 0));
  v18 = vaddv_f32(vmul_f32(v17, v74));
  v19 = vaddv_f32(vmul_f32(v17, v72));
  v20 = fminf(v18, v19);
  v21 = fmaxf(v18, v19);
  v22 = vaddv_f32(vmul_f32(v17, v83));
  v23 = fminf(v20, v22);
  v24 = fmaxf(v21, v22);
  v77 = v17;
  v25 = vaddv_f32(vmul_f32(v17, v80));
  v75 = fminf(v23, v25);
  v73 = (v75 - fmaxf(v24, v25)) + -1.0;
  if (v10 >= 0.65)
  {
    v81 = 1.0 - (((v10 + -0.65) / 0.35) * ((v10 + -0.65) / 0.35));
    v84 = 1.0;
    v71 = -5.88235235;
    [(CIVector *)self->inputExtent X:0x3FF346F0A0000000];
  }

  else
  {
    v84 = 0.0;
    v71 = -1.20481932;
    v81 = v10 / 0.65;
    [(CIVector *)self->inputExtent X:0x4017878760000000];
  }

  v28 = v26;
  [(CIVector *)self->inputExtent Y];
  v30 = v29;
  [(CIVector *)self->inputExtent Z];
  v32 = v31;
  [(CIVector *)self->inputExtent W];
  v34 = v33;
  [(CIImage *)self->inputImage extent];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  [(CIImage *)self->inputTargetImage extent];
  v93.origin.x = v43;
  v93.origin.y = v44;
  v93.size.width = v45;
  v93.size.height = v46;
  v90.origin.x = v36;
  v90.origin.y = v38;
  v90.size.width = v40;
  v90.size.height = v42;
  v91 = CGRectUnion(v90, v93);
  v94.origin.x = v28;
  v94.origin.y = v30;
  v94.size.width = v32;
  v94.size.height = v34;
  v92 = CGRectUnion(v91, v94);
  x = v92.origin.x;
  y = v92.origin.y;
  width = v92.size.width;
  height = v92.size.height;
  v51 = [CIVector vectorWithX:v71 Y:v69 Z:v68];
  v52 = [CIVector vectorWithX:-*v77.i32 Y:-*&v77.i32[1] Z:-v73 W:((v75 + -1.0) + 1.0)];
  [(CIColor *)self->inputColor red];
  v54 = v53;
  [(CIColor *)self->inputColor green];
  v56 = v55;
  [(CIColor *)self->inputColor blue];
  v58 = v57;
  [(CIColor *)self->inputColor alpha];
  v60 = [CIVector vectorWithX:v54 Y:v56 Z:v58 W:v59];
  v61 = [CIVector vectorWithX:v81 Y:v78 Z:v84];
  v62 = [(CICopyMachineTransition *)self _kernel];
  v63 = *MEMORY[0x1E695F040];
  v64 = *(MEMORY[0x1E695F040] + 8);
  v65 = *(MEMORY[0x1E695F040] + 16);
  v66 = *(MEMORY[0x1E695F040] + 24);
  inputTargetImage = self->inputTargetImage;
  v85[0] = self->inputImage;
  v85[1] = inputTargetImage;
  v85[2] = v51;
  v85[3] = v52;
  v85[4] = v60;
  v85[5] = v61;
  return [objc_msgSend(v62 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v85, 6), v63, v64, v65, v66), "imageByCroppingToRect:", x, y, width, height}];
}

@end