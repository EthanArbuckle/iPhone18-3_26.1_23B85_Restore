@interface CISwipeTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CISwipeTransition

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryTransition";
  v13[1] = @"CICategoryVideo";
  v13[2] = @"CICategoryStillImage";
  v13[3] = @"CICategoryBuiltIn";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v15[1] = @"6";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"10.4";
  v14[3] = @"inputWidth";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F1084E08;
  v12[1] = &unk_1F1084E08;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeDefault";
  v12[2] = &unk_1F1084E18;
  v12[3] = &unk_1F1084E28;
  v11[4] = @"CIAttributeType";
  v12[4] = @"CIAttributeTypeDistance";
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v14[4] = @"inputOpacity";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1084E38;
  v10[1] = &unk_1F1084E38;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1084E48;
  v10[3] = &unk_1F1084E38;
  v9[4] = @"CIAttributeIdentity";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F1084E38;
  v10[5] = @"CIAttributeTypeScalar";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v14[5] = @"inputColor";
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeType";
  v8[0] = [CIColor colorWithRed:1.0 green:1.0 blue:1.0];
  v8[1] = @"CIAttributeTypeOpaqueColor";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v14[6] = @"inputExtent";
  v5[1] = @"CIAttributeDefault";
  v6[0] = @"CIAttributeTypeRectangle";
  v5[0] = @"CIAttributeType";
  v6[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:300.0 W:300.0];
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v14[7] = @"inputAngle";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1084E58;
  v4[1] = &unk_1F1084E68;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeIdentity";
  v4[2] = &unk_1F1084E38;
  v4[3] = &unk_1F1084E38;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeAngle";
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)outputImage
{
  v62 = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputAngle floatValue];
  v4 = v3;
  [(NSNumber *)self->inputWidth floatValue];
  v6 = v5;
  [(NSNumber *)self->inputOpacity floatValue];
  v8 = v7;
  [(NSNumber *)self->inputTime floatValue];
  if (!self->inputImage || !self->inputTargetImage)
  {
    return 0;
  }

  v10 = *v9.i32;
  *v9.i32 = fmaxf(v6, 0.1);
  v54 = v9;
  v11 = fminf(fmaxf(v8, 0.0), 1.0);
  [(CIVector *)self->inputExtent CGRectValue];
  if (CGRectIsEmpty(v63))
  {
    v12 = ci_logger_filter();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v61 = [objc_opt_class() description];
      _os_log_impl(&dword_19CC36000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: inputExtent is nil or empty.\n", buf, 0xCu);
    }
  }

  [(CIVector *)self->inputExtent X];
  *&v13 = v13;
  v57 = *&v13;
  [(CIVector *)self->inputExtent Y];
  *&v15 = v14;
  v51 = *&v15;
  v53 = __PAIR64__(v15, LODWORD(v57));
  [(CIVector *)self->inputExtent Z];
  v16.f32[0] = *&v16 + v57;
  v55 = v16.i32[0];
  v16.f32[1] = v51;
  v52 = v16;
  [(CIVector *)self->inputExtent W];
  *&v17 = v17 + v51;
  v58 = __PAIR64__(LODWORD(v17), LODWORD(v57));
  v56 = __PAIR64__(LODWORD(v17), v55);
  v18 = __sincosf_stret(v4);
  v19 = vdiv_f32(__PAIR64__(LODWORD(v18.__sinval), LODWORD(v18.__cosval)), vdup_lane_s32(v54, 0));
  v20 = vaddv_f32(vmul_f32(v19, v53));
  v21 = vaddv_f32(vmul_f32(v19, v52));
  v22 = fminf(v20, v21);
  v23 = fmaxf(v20, v21);
  v24 = vaddv_f32(vmul_f32(v19, v58));
  v25 = fminf(v22, v24);
  v26 = fmaxf(v23, v24);
  v27 = vaddv_f32(vmul_f32(v19, v56));
  v28 = fminf(v25, v27);
  v29 = [CIVector vectorWithX:v19.f32[0] Y:v19.f32[1] Z:((1.0 - v28) + (((v28 - fmaxf(v26 W:v27)) + -1.0) * v10)), v11];
  inputColor = self->inputColor;
  if (!inputColor)
  {
    inputColor = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  }

  _kernel = [(CISwipeTransition *)self _kernel];
  v32 = *MEMORY[0x1E695F040];
  v33 = *(MEMORY[0x1E695F040] + 8);
  v34 = *(MEMORY[0x1E695F040] + 16);
  v35 = *(MEMORY[0x1E695F040] + 24);
  inputTargetImage = self->inputTargetImage;
  v59[0] = self->inputImage;
  v59[1] = inputTargetImage;
  v59[2] = inputColor;
  v59[3] = v29;
  v37 = [_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v59, 4), v32, v33, v34, v35}];
  [(CIImage *)self->inputImage extent];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  [(CIImage *)self->inputTargetImage extent];
  v66.origin.x = v46;
  v66.origin.y = v47;
  v66.size.width = v48;
  v66.size.height = v49;
  v64.origin.x = v39;
  v64.origin.y = v41;
  v64.size.width = v43;
  v64.size.height = v45;
  v65 = CGRectUnion(v64, v66);
  return [v37 imageByCroppingToRect:{v65.origin.x, v65.origin.y, v65.size.width, v65.size.height}];
}

@end