@interface CIProSharpenEdges
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIProSharpenEdges

- (id)outputImage
{
  v55[1] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputFalloff floatValue];
  v4 = fminf(fmaxf(v3, 0.0), 1.0);
  [(NSNumber *)self->inputSharpness floatValue];
  v6 = v5;
  [(NSNumber *)self->inputEdgeScale floatValue];
  v8 = v6 / ((v4 + 1.0) + (v4 * v4));
  if (v8 >= 0.1)
  {
    v11 = fminf(fmaxf(v7, 0.0), 5.5);
    if ((v4 * v8) >= 0.1)
    {
      v12 = v4 * v8;
    }

    else
    {
      v12 = 0.0;
    }

    if (((v4 * v4) * v8) >= 0.1)
    {
      v13 = (v4 * v4) * v8;
    }

    else
    {
      v13 = 0.0;
    }

    _CIEdgesPrep = [(CIProSharpenEdges *)self _CIEdgesPrep];
    [(CIImage *)self->inputImage extent];
    v55[0] = self->inputImage;
    v19 = [_CIEdgesPrep applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v55, 1), v15, v16, v17, v18}];
    _CIFindEdges = [(CIProSharpenEdges *)self _CIFindEdges];
    [v19 extent];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v54[0] = v19;
    v54[1] = [MEMORY[0x1E696AD98] numberWithDouble:__exp10(v11)];
    v29 = [_CIFindEdges applyWithExtent:&__block_literal_global_48_0 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v54, 2), v22, v24, v26, v28}];
    _CIConvertRGBtoY = [(CIProSharpenEdges *)self _CIConvertRGBtoY];
    [(CIImage *)self->inputImage extent];
    inputImage = self->inputImage;
    v35 = [_CIConvertRGBtoY applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &inputImage, 1), v31, v32, v33, v34}];
    _CIBlur1 = [(CIProSharpenEdges *)self _CIBlur1];
    [v35 extent];
    v58 = CGRectInset(v57, -1.0, -1.0);
    v52 = v35;
    v37 = [_CIBlur1 applyWithExtent:&__block_literal_global_51_0 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v52, 1), v58.origin.x, v58.origin.y, v58.size.width, v58.size.height}];
    if (v12 > 0.0)
    {
      _CIBlur2 = [(CIProSharpenEdges *)self _CIBlur2];
      [v37 extent];
      v60 = CGRectInset(v59, -2.0, -2.0);
      v51 = v37;
      v37 = [_CIBlur2 applyWithExtent:&__block_literal_global_53 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v51, 1), v60.origin.x, v60.origin.y, v60.size.width, v60.size.height}];
    }

    if (v13 > 0.0)
    {
      _CIBlur4 = [(CIProSharpenEdges *)self _CIBlur4];
      [v37 extent];
      v62 = CGRectInset(v61, -4.0, -4.0);
      v50 = v37;
      v37 = [_CIBlur4 applyWithExtent:&__block_literal_global_55 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v50, 1), v62.origin.x, v62.origin.y, v62.size.width, v62.size.height}];
    }

    _CISharpenCombineEdges = [(CIProSharpenEdges *)self _CISharpenCombineEdges];
    [v37 extent];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49[2] = [CIVector vectorWithX:v8 Y:v12 Z:v13, self->inputImage, v37];
    v49[3] = v29;
    return [_CISharpenCombineEdges applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v49, 4), v42, v44, v46, v48}];
  }

  else
  {
    v9 = self->inputImage;

    return v9;
  }
}

+ (id)customAttributes
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategorySharpen";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryBuiltIn";
  v9[4] = @"CICategoryApplePrivate";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
  v10[1] = @"inputFalloff";
  v7[0] = @"CIAttributeType";
  v7[1] = @"CIAttributeMin";
  v8[0] = @"CIAttributeTypeScalar";
  v8[1] = &unk_1F1084968;
  v7[2] = @"CIAttributeMax";
  v7[3] = @"CIAttributeSliderMin";
  v8[2] = &unk_1F10849B8;
  v8[3] = &unk_1F1084968;
  v7[4] = @"CIAttributeSliderMax";
  v7[5] = @"CIAttributeDefault";
  v8[4] = &unk_1F10849B8;
  v8[5] = &unk_1F10849C8;
  v11[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v10[2] = @"inputSharpness";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeMin";
  v6[0] = @"CIAttributeTypeScalar";
  v6[1] = &unk_1F1084968;
  v5[2] = @"CIAttributeMax";
  v5[3] = @"CIAttributeSliderMin";
  v6[2] = &unk_1F1084978;
  v6[3] = &unk_1F1084968;
  v5[4] = @"CIAttributeSliderMax";
  v5[5] = @"CIAttributeDefault";
  v6[4] = &unk_1F1084978;
  v6[5] = &unk_1F10849D8;
  v5[6] = @"CIAttributeIdentity";
  v6[6] = &unk_1F1084968;
  v11[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v10[3] = @"inputEdgeScale";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v4[0] = @"CIAttributeTypeScalar";
  v4[1] = &unk_1F1084968;
  v3[2] = @"CIAttributeMax";
  v3[3] = @"CIAttributeSliderMin";
  v4[2] = &unk_1F10849E8;
  v4[3] = &unk_1F1084968;
  v3[4] = @"CIAttributeSliderMax";
  v3[5] = @"CIAttributeDefault";
  v4[4] = &unk_1F10849E8;
  v4[5] = &unk_1F10849F8;
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
}

@end