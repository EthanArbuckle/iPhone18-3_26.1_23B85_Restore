@interface CIFlashTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIFlashTransition

+ (id)customAttributes
{
  v21[11] = *MEMORY[0x1E69E9840];
  v20[0] = @"CIAttributeFilterCategories";
  v19[0] = @"CICategoryTransition";
  v19[1] = @"CICategoryVideo";
  v19[2] = @"CICategoryStillImage";
  v19[3] = @"CICategoryBuiltIn";
  v21[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v21[1] = @"6";
  v20[1] = @"CIAttributeFilterAvailable_iOS";
  v20[2] = @"CIAttributeFilterAvailable_Mac";
  v21[2] = @"10.4";
  v20[3] = @"inputCenter";
  v17[0] = @"CIAttributeDefault";
  v17[1] = @"CIAttributeType";
  v18[0] = [CIVector vectorWithX:150.0 Y:150.0];
  v18[1] = @"CIAttributeTypePosition";
  v21[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[4] = @"inputExtent";
  v15[1] = @"CIAttributeDefault";
  v16[0] = @"CIAttributeTypeRectangle";
  v15[0] = @"CIAttributeType";
  v16[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:300.0 W:300.0];
  v21[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v20[5] = @"inputColor";
  v13[0] = @"CIAttributeDefault";
  v13[1] = @"CIAttributeType";
  v14[0] = [CIColor colorWithRed:1.0 green:0.8 blue:0.6];
  v14[1] = @"CIAttributeTypeColor";
  v21[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v20[6] = @"inputTime";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F1083A78;
  v12[1] = &unk_1F1083A78;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeDefault";
  v12[2] = &unk_1F1083A88;
  v12[3] = &unk_1F1083A78;
  v11[4] = @"CIAttributeType";
  v12[4] = @"CIAttributeTypeTime";
  v21[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v20[7] = @"inputMaxStriationRadius";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1083A78;
  v10[1] = &unk_1F1083A78;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1083A98;
  v10[3] = &unk_1F1083AA8;
  v9[4] = @"CIAttributeType";
  v10[4] = @"CIAttributeTypeScalar";
  v21[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v20[8] = @"inputStriationStrength";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1083A78;
  v8[1] = &unk_1F1083A78;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1083AB8;
  v8[3] = &unk_1F1083AC8;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeScalar";
  v21[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v20[9] = @"inputStriationContrast";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1083A78;
  v6[1] = &unk_1F1083A78;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1083AD8;
  v6[3] = &unk_1F1083AE8;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeScalar";
  v21[9] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v20[10] = @"inputFadeThreshold";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = &unk_1F1083A78;
  v4[1] = &unk_1F1083A88;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1083A78;
  v4[3] = &unk_1F1083A88;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1083AF8;
  v4[5] = @"CIAttributeTypeScalar";
  v21[10] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:11];
}

- (id)outputImage
{
  v103 = *MEMORY[0x1E69E9840];
  if (!self->inputImage || !self->inputTargetImage)
  {
    return 0;
  }

  [(CIVector *)self->inputExtent CGRectValue];
  if (CGRectIsEmpty(v104))
  {
    v3 = ci_logger_filter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v102 = [objc_opt_class() description];
      _os_log_impl(&dword_19CC36000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: inputExtent is nil or empty.\n", buf, 0xCu);
    }
  }

  [(NSNumber *)self->inputMaxStriationRadius floatValue];
  v97 = v4;
  [(NSNumber *)self->inputStriationStrength floatValue];
  v96 = v5;
  [(NSNumber *)self->inputStriationContrast floatValue];
  v7 = v6;
  [(NSNumber *)self->inputFadeThreshold floatValue];
  v9 = v8;
  [(NSNumber *)self->inputTime floatValue];
  v11 = v10;
  [(CIVector *)self->inputCenter X];
  v13 = v12;
  [(CIVector *)self->inputCenter Y];
  v15 = v14;
  [(CIVector *)self->inputExtent X];
  v17 = v16;
  [(CIVector *)self->inputExtent X];
  v19 = v18;
  [(CIVector *)self->inputExtent Z];
  v21 = v20;
  [(CIVector *)self->inputExtent W];
  v22.f32[0] = v13;
  v23 = v15;
  v94 = v22;
  v95 = v23;
  v22.f32[1] = v23;
  v24.f32[0] = v17;
  *&v25 = v19;
  v26.f32[0] = v21 + v24.f32[0];
  *&v27 = v27 + *&v25;
  v24.i32[1] = LODWORD(v27);
  v26.i32[1] = LODWORD(v27);
  v28 = vsub_f32(__PAIR64__(v25, v24.u32[0]), v22);
  v29 = vsub_f32(__PAIR64__(v25, v26.u32[0]), v22);
  v30 = vsub_f32(v24, v22);
  v31 = vsub_f32(v26, v22);
  v32 = fmaxf(fmaxf(fmaxf(sqrtf(vaddv_f32(vmul_f32(v28, v28))), sqrtf(vaddv_f32(vmul_f32(v29, v29)))), sqrtf(vaddv_f32(vmul_f32(v30, v30)))), sqrtf(vaddv_f32(vmul_f32(v31, v31))));
  v33 = 0.0;
  if (v11 >= v9)
  {
    v33 = 1.0;
    if (v11 < 1.0)
    {
      v34 = (v11 - v9) / (1.0 - v9);
      v33 = v34;
    }
  }

  v35 = log10f(v32) + 1.0;
  if (v9 == 0.0)
  {
    v36 = v11 / 0.000001;
  }

  else
  {
    v36 = (v11 / v9);
  }

  v38 = __exp10(v36 * v35 + -1.0);
  [(CIImage *)self->inputImage extent];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  [(CIImage *)self->inputTargetImage extent];
  v111.origin.x = v47;
  v111.origin.y = v48;
  v111.size.width = v49;
  v111.size.height = v50;
  v105.origin.x = v40;
  v105.origin.y = v42;
  v105.size.width = v44;
  v105.size.height = v46;
  v106 = CGRectUnion(v105, v111);
  x = v106.origin.x;
  y = v106.origin.y;
  width = v106.size.width;
  height = v106.size.height;
  [(CIVector *)self->inputExtent CGRectValue];
  v112.origin.x = v55;
  v112.origin.y = v56;
  v112.size.width = v57;
  v112.size.height = v58;
  v107.origin.x = x;
  v107.origin.y = y;
  v107.size.width = width;
  v107.size.height = height;
  v98 = CGRectUnion(v107, v112);
  v59 = v38;
  v60 = [CIVector vectorWithX:100.0 Y:(v59 * v59) Z:1.0 / (v97 * v59) W:v33];
  v61 = [CIVector vectorWithX:(v96 * v7) Y:(1.0 - v7) * v96 * 0.5];
  _geomKernel = [(CIFlashTransition *)self _geomKernel];
  _colorKernel = [(CIFlashTransition *)self _colorKernel];
  v64 = +[CIImage noiseImage];
  v65 = MEMORY[0x1E695F040];
  v66 = *MEMORY[0x1E695F040];
  v67 = *(MEMORY[0x1E695F040] + 8);
  v68 = *(MEMORY[0x1E695F040] + 16);
  v69 = *(MEMORY[0x1E695F040] + 24);
  v100 = [CIVector vectorWithX:v94.f32[0] Y:v95];
  v70 = [_geomKernel applyWithExtent:&__block_literal_global_32 roiCallback:v64 inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v100, 1), v66, v67, v68, v69}];
  [(CIVector *)v60 Z];
  v72 = 1.0 / v71;
  v73 = v94.f32[0] - v72;
  v74 = v95 - v72;
  v75 = v72 + v72;
  v77 = v72 + v72 == 1.79769313e308 && v73 == -8.98846567e307 && v74 == -8.98846567e307;
  v78 = v72 + v72;
  if (v77)
  {
    v75 = v65[2];
    v78 = v65[3];
    v73 = *v65;
    v74 = v65[1];
  }

  [(CIImage *)self->inputImage extent];
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  [(CIImage *)self->inputTargetImage extent];
  v113.origin.x = v87;
  v113.origin.y = v88;
  v113.size.width = v89;
  v113.size.height = v90;
  v108.origin.x = v80;
  v108.origin.y = v82;
  v108.size.width = v84;
  v108.size.height = v86;
  v109 = CGRectUnion(v108, v113);
  v114.origin.x = v73;
  v114.origin.y = v74;
  v114.size.width = v75;
  v114.size.height = v78;
  v110 = CGRectUnion(v109, v114);
  inputTargetImage = self->inputTargetImage;
  v99[0] = self->inputImage;
  v99[1] = inputTargetImage;
  inputColor = self->inputColor;
  v99[2] = self->inputCenter;
  v99[3] = inputColor;
  v99[4] = v70;
  v99[5] = v60;
  v99[6] = v61;
  v37 = [_colorKernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v99, 7), v110.origin.x, v110.origin.y, v110.size.width, v110.size.height}];
  v115.origin.x = v73;
  v115.origin.y = v74;
  v115.size.width = v75;
  v115.size.height = v78;
  if (!CGRectContainsRect(v98, v115))
  {
    return [v37 imageByCroppingToRect:{v98.origin.x, v98.origin.y, v98.size.width, v98.size.height}];
  }

  return v37;
}

@end