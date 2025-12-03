@interface CIDroste
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIDroste

- (id)outputImage
{
  v61[5] = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = &v53;
  v55 = 0x5012000000;
  v56 = __Block_byref_object_copy__4;
  v57 = __Block_byref_object_dispose__4;
  v58 = &unk_19D0E11CF;
  v59 = 0u;
  v60 = 0u;
  [(CIImage *)self->inputImage extent];
  *&v59 = v3;
  *(&v59 + 1) = v4;
  *&v60 = v5;
  *(&v60 + 1) = v6;
  if (CGRectIsEmpty(*(v54 + 6)) || CGRectIsInfinite(*(v54 + 6)))
  {
    v7 = 0;
  }

  else
  {
    [(NSNumber *)self->inputZoom doubleValue];
    [(CIVector *)self->inputInsetPoint0 X];
    v9 = v8;
    [(CIVector *)self->inputInsetPoint1 X];
    v11 = v10;
    [(CIVector *)self->inputInsetPoint0 X];
    v13 = v12;
    [(CIVector *)self->inputInsetPoint1 X];
    v15 = v14;
    [(CIVector *)self->inputInsetPoint0 Y];
    v17 = v16;
    [(CIVector *)self->inputInsetPoint1 Y];
    v19 = v18;
    [(CIVector *)self->inputInsetPoint0 Y];
    v21 = v20;
    [(CIVector *)self->inputInsetPoint1 Y];
    v50 = v22;
    v48 = v21;
    MinX = CGRectGetMinX(*(v54 + 6));
    v23 = v19;
    MaxX = CGRectGetMaxX(*(v54 + 6));
    v24 = v17;
    MinY = CGRectGetMinY(*(v54 + 6));
    MaxY = CGRectGetMaxY(*(v54 + 6));
    [(NSNumber *)self->inputStrands floatValue];
    v44 = v26;
    [(NSNumber *)self->inputPeriodicity floatValue];
    v28 = v27;
    v29 = fmin(v9, v11);
    v30 = fmax(v13, v15);
    v31 = fmin(v24, v23);
    v32 = fmax(v48, v50);
    v33 = v30 - v29;
    v34 = v32 - v31;
    v35 = v29 + (v30 - v29) * 0.5;
    v36 = v31 + (v32 - v31) * 0.5;
    v37 = log(fmin((v36 - MinY) / (v36 - v31), fmin((v35 - MinX) / (v35 - v29), fmin((MaxY - v36) / (v32 - v36), (MaxX - v35) / (v30 - v35)))));
    _CIDroste = [(CIDroste *)self _CIDroste];
    v39 = *(MEMORY[0x1E695F040] + 8);
    v40 = *(MEMORY[0x1E695F040] + 16);
    v49 = *MEMORY[0x1E695F040];
    v51 = *(MEMORY[0x1E695F040] + 24);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __23__CIDroste_outputImage__block_invoke;
    v52[3] = &unk_1E75C2528;
    v52[4] = &v53;
    inputImage = self->inputImage;
    v61[0] = [CIVector vectorWithX:v35 Y:v36];
    v61[1] = [CIVector vectorWithX:llroundf(fmaxf(v44 Y:1.0)), v37 * llroundf(v28) / 6.28318531];
    *&v42 = v37;
    v61[2] = [MEMORY[0x1E696AD98] numberWithFloat:v42];
    [(NSNumber *)self->inputRotation doubleValue];
    v61[3] = [CIVector vectorWithX:"vectorWithX:Y:" Y:?];
    v61[4] = [CIVector vectorWithX:v33 * 0.5 Y:v34 * 0.5];
    v7 = [_CIDroste applyWithExtent:v52 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v61, 5), v49, v39, v40, v51}];
  }

  _Block_object_dispose(&v53, 8);
  return v7;
}

+ (id)customAttributes
{
  v17[9] = *MEMORY[0x1E69E9840];
  v16[0] = @"CIAttributeFilterCategories";
  v15[0] = @"CICategoryDistortionEffect";
  v15[1] = @"CICategoryVideo";
  v15[2] = @"CICategoryStillImage";
  v15[3] = @"CICategoryBuiltIn";
  v17[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v17[1] = @"9";
  v16[1] = @"CIAttributeFilterAvailable_iOS";
  v16[2] = @"CIAttributeFilterAvailable_Mac";
  v17[2] = @"10.6";
  v16[3] = @"inputInsetPoint0";
  v13[0] = @"CIAttributeType";
  v13[1] = @"CIAttributeDefault";
  v14[0] = @"CIAttributeTypePosition";
  v14[1] = [CIVector vectorWithX:200.0 Y:200.0];
  v17[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[4] = @"inputInsetPoint1";
  v11[1] = @"CIAttributeDefault";
  v12[0] = @"CIAttributeTypePosition";
  v11[0] = @"CIAttributeType";
  v12[1] = [CIVector vectorWithX:400.0 Y:400.0];
  v17[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[5] = @"inputPeriodicity";
  v9[0] = @"CIAttributeType";
  v9[1] = @"CIAttributeMin";
  v10[0] = @"CIAttributeTypeScalar";
  v10[1] = &unk_1F1083508;
  v9[2] = @"CIAttributeSliderMin";
  v9[3] = @"CIAttributeSliderMax";
  v10[2] = &unk_1F1083508;
  v10[3] = &unk_1F1083518;
  v9[4] = @"CIAttributeDefault";
  v10[4] = &unk_1F1083508;
  v17[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v16[6] = @"inputStrands";
  v7[0] = @"CIAttributeType";
  v7[1] = @"CIAttributeMin";
  v8[0] = @"CIAttributeTypeScalar";
  v8[1] = &unk_1F1083528;
  v8[2] = &unk_1F1083538;
  v8[3] = &unk_1F1083548;
  v7[2] = @"CIAttributeMax";
  v7[3] = @"CIAttributeSliderMin";
  v7[4] = @"CIAttributeSliderMax";
  v7[5] = @"CIAttributeDefault";
  v8[4] = &unk_1F1083558;
  v8[5] = &unk_1F1083508;
  v17[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v16[7] = @"inputRotation";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = @"CIAttributeTypeAngle";
  v6[1] = &unk_1F1083568;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1083578;
  v6[3] = &unk_1F1083568;
  v17[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v16[8] = @"inputZoom";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v4[0] = @"CIAttributeTypeScalar";
  v4[1] = &unk_1F1083588;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1083588;
  v4[3] = &unk_1F1083518;
  v3[4] = @"CIAttributeDefault";
  v4[4] = &unk_1F1083508;
  v17[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:9];
}

@end