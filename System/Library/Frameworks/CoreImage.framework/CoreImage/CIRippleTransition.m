@interface CIRippleTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIRippleTransition

- (id)outputImage
{
  v87 = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputWidth floatValue];
  v4 = v3;
  [(NSNumber *)self->inputScale floatValue];
  v6 = v5;
  [(NSNumber *)self->inputTime floatValue];
  if (!self->inputImage || !self->inputTargetImage || !self->inputShadingImage)
  {
    return 0;
  }

  v8 = v7;
  v82 = v6;
  v9 = v4 * 0.25;
  [(CIVector *)self->inputExtent CGRectValue];
  if (CGRectIsEmpty(v88))
  {
    v10 = ci_logger_filter();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v86 = [objc_opt_class() description];
      _os_log_impl(&dword_19CC36000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: inputExtent is nil or empty.\n", buf, 0xCu);
    }
  }

  [(CIVector *)self->inputCenter X];
  v12 = v11;
  [(CIVector *)self->inputCenter Y];
  v14 = v13;
  [(CIVector *)self->inputExtent X];
  v16 = v15;
  [(CIVector *)self->inputExtent Y];
  v18 = v17;
  [(CIVector *)self->inputExtent Z];
  v20 = v19 + v16;
  [(CIVector *)self->inputExtent W];
  v22 = v21 + v18;
  v23 = v16 - v12;
  v24 = (v18 - v14) * (v18 - v14);
  v25 = sqrtf(v24 + (v23 * v23));
  v26 = v20 - v12;
  v27 = sqrtf(v24 + (v26 * v26));
  if (v27 <= v25)
  {
    v27 = v25;
  }

  v28 = (v22 - v14) * (v22 - v14);
  v29 = sqrtf(v28 + (v23 * v23));
  if (v29 <= v27)
  {
    v29 = v27;
  }

  v30 = sqrtf(v28 + (v26 * v26));
  if (v30 <= v29)
  {
    v30 = v29;
  }

  v31 = v9 * -9.0 + v8 * (v30 + v9 * 9.0);
  v79 = v31;
  [(CIImage *)self->inputShadingImage extent];
  v80 = v33;
  v81 = v32;
  [(CIImage *)self->inputImage extent];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  [(CIImage *)self->inputTargetImage extent];
  v93.origin.x = v42;
  v93.origin.y = v43;
  v93.size.width = v44;
  v93.size.height = v45;
  v89.origin.x = v35;
  v89.origin.y = v37;
  v89.size.width = v39;
  v89.size.height = v41;
  v90 = CGRectUnion(v89, v93);
  x = v90.origin.x;
  y = v90.origin.y;
  width = v90.size.width;
  height = v90.size.height;
  [(CIVector *)self->inputExtent X];
  v51 = v50;
  [(CIVector *)self->inputExtent Y];
  v53 = v52;
  [(CIVector *)self->inputExtent Z];
  v55 = v54;
  [(CIVector *)self->inputExtent W];
  v94.size.height = v56;
  v91.origin.x = x;
  v91.origin.y = y;
  v91.size.width = width;
  v91.size.height = height;
  v94.origin.x = v51;
  v94.origin.y = v53;
  v94.size.width = v55;
  v92 = CGRectUnion(v91, v94);
  v57 = v92.origin.x;
  v58 = v92.origin.y;
  v59 = v92.size.width;
  v60 = v92.size.height;
  [(CIImage *)self->inputShadingImage extent];
  v62 = v61;
  v64 = v63;
  v65 = MEMORY[0x1E695DEC8];
  inputScale = self->inputScale;
  *&v51 = v67;
  LODWORD(v67) = LODWORD(v51);
  v68 = [MEMORY[0x1E696AD98] numberWithFloat:v67];
  LODWORD(v69) = LODWORD(v51);
  v70 = [MEMORY[0x1E696AD98] numberWithFloat:v69];
  *&v71 = v62;
  v72 = [MEMORY[0x1E696AD98] numberWithFloat:v71];
  *&v73 = v64;
  v74 = [v65 arrayWithObjects:{inputScale, v68, v70, v72, objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v73), 0}];
  v75 = [(CIRippleTransition *)self _CIRippleTransition];
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __33__CIRippleTransition_outputImage__block_invoke;
  v83[3] = &unk_1E75C24D8;
  inputImage = self->inputImage;
  v83[4] = v74;
  v84[0] = inputImage;
  inputShadingImage = self->inputShadingImage;
  v84[1] = self->inputTargetImage;
  v84[2] = inputShadingImage;
  v84[3] = self->inputCenter;
  v84[4] = [CIVector vectorWithX:v79 Y:(1.0 / v9) Z:0.333333343 W:v82];
  v84[5] = [CIVector vectorWithX:v81 Y:v80];
  return [v75 applyWithExtent:v83 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v84, 6), v57, v58, v59, v60}];
}

double __33__CIRippleTransition_outputImage__block_invoke(uint64_t a1, unsigned int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = *(a1 + 32);
  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      [objc_msgSend(*(a1 + 32) objectAtIndex:{1), "floatValue"}];
      v6 = v14;
      [objc_msgSend(v7 objectAtIndex:{2), "floatValue"}];
      [objc_msgSend(v7 objectAtIndex:{3), "floatValue"}];
      [objc_msgSend(v7 objectAtIndex:{4), "floatValue"}];
    }
  }

  else
  {
    [objc_msgSend(*(a1 + 32) objectAtIndex:{0), "floatValue"}];
    if (v12 >= 0.0)
    {
      v12 = -v12;
    }

    v13 = v12;
    v16.origin.x = a3;
    v16.origin.y = a4;
    v16.size.width = a5;
    v16.size.height = a6;
    *&v6 = CGRectInset(v16, v13, v13);
  }

  return v6;
}

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryTransition";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"9";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.4";
  v12[3] = @"inputTime";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F10848B8;
  v10[1] = &unk_1F10848B8;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F10848C8;
  v10[3] = &unk_1F10848B8;
  v9[4] = @"CIAttributeType";
  v10[4] = @"CIAttributeTypeTime";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v12[4] = @"inputWidth";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F10848C8;
  v8[1] = &unk_1F10848D8;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F10848E8;
  v8[3] = &unk_1F10848F8;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeDistance";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v12[5] = @"inputScale";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084908;
  v6[1] = &unk_1F1084908;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084918;
  v6[3] = &unk_1F1084918;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F10848B8;
  v6[5] = @"CIAttributeTypeScalar";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v12[6] = @"inputExtent";
  v3[1] = @"CIAttributeDefault";
  v4[0] = @"CIAttributeTypeRectangle";
  v3[0] = @"CIAttributeType";
  v4[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:300.0 W:300.0];
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

@end