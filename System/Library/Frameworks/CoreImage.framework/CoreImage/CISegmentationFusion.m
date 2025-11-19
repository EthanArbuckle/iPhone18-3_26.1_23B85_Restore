@interface CISegmentationFusion
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CISegmentationFusion

+ (id)customAttributes
{
  v22[3] = *MEMORY[0x1E69E9840];
  [objc_msgSend(&unk_1F1082730 objectForKeyedSubscript:{@"additiveLowerAlpha", "floatValue"}];
  v3 = v2;
  [objc_msgSend(&unk_1F1082730 objectForKeyedSubscript:{@"additiveUpperAlpha", "floatValue"}];
  v5 = v4;
  [objc_msgSend(&unk_1F1082730 objectForKeyedSubscript:{@"additiveMaxBlur", "floatValue"}];
  v7 = [CIVector vectorWithX:v3 Y:v5 Z:v6];
  [objc_msgSend(&unk_1F1082730 objectForKeyedSubscript:{@"subtractiveLowerAlpha", "floatValue"}];
  v9 = v8;
  [objc_msgSend(&unk_1F1082730 objectForKeyedSubscript:{@"subtractiveUpperAlpha", "floatValue"}];
  v11 = v10;
  [objc_msgSend(&unk_1F1082730 objectForKeyedSubscript:{@"subtractiveMaxBlur", "floatValue"}];
  v13 = [CIVector vectorWithX:v9 Y:v11 Z:v12];
  v21[0] = @"inputAddBlur";
  v19[0] = @"CIAttributeType";
  v19[1] = @"CIAttributeDefault";
  v20[0] = @"CIAttributeTypePosition3";
  v20[1] = v7;
  v19[2] = @"CIAttributeIdentity";
  v20[2] = &unk_1F1085138;
  v22[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v21[1] = @"inputRemoveBlur";
  v17[0] = @"CIAttributeType";
  v17[1] = @"CIAttributeDefault";
  v18[0] = @"CIAttributeTypePosition3";
  v18[1] = v13;
  v17[2] = @"CIAttributeIdentity";
  v18[2] = &unk_1F1085138;
  v22[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v21[2] = @"inputApertureScaling";
  v15[0] = @"CIAttributeType";
  v15[1] = @"CIAttributeDefault";
  v16[0] = @"CIAttributeTypeScalar";
  v16[1] = &unk_1F1085148;
  v15[2] = @"CIAttributeIdentity";
  v16[2] = &unk_1F1085148;
  v22[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
}

- (BOOL)_isIdentity
{
  [(CIVector *)self->inputAddBlur Z];
  result = 0;
  if (v3 == 0.0)
  {
    [(CIVector *)self->inputRemoveBlur Z];
    if (v4 == 0.0)
    {
      return 1;
    }
  }

  return result;
}

- (id)outputImage
{
  v77[4] = *MEMORY[0x1E69E9840];
  inputMatteImage = self->inputMatteImage;
  if (!inputMatteImage)
  {
    return self->inputImage;
  }

  [(CIImage *)inputMatteImage extent];
  if (v4 <= 1.0)
  {
    return self->inputImage;
  }

  [(CIImage *)self->inputMatteImage extent];
  if (v5 <= 1.0)
  {
    return self->inputImage;
  }

  v6 = self->inputMatteImage;
  [(CIImage *)v6 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CIImage *)self->inputImage extent];
  v80.origin.x = v15;
  v80.origin.y = v16;
  v80.size.width = v17;
  v80.size.height = v18;
  v78.origin.x = v8;
  v78.origin.y = v10;
  v78.size.width = v12;
  v78.size.height = v14;
  if (!CGRectEqualToRect(v78, v80))
  {
    [(CIImage *)self->inputMatteImage extent];
    if (!CGRectEqualToRect(v79, *MEMORY[0x1E695F040]))
    {
      [(CIImage *)self->inputImage extent];
      v20 = v19;
      v22 = v21;
      [(CIImage *)self->inputMatteImage extent];
      v24 = v20 / v23;
      v26 = v22 / v25;
      CGAffineTransformMakeScale(&v74, v24, v26);
      v6 = [(CIImage *)v6 imageByApplyingTransform:&v74];
    }
  }

  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CISegmentationFusion *)self _isIdentity])
  {
    return self->inputImage;
  }

  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  v29 = v28;
  [(CIVector *)self->inputRemoveBlur X];
  v31 = v30;
  [(CIVector *)self->inputRemoveBlur Y];
  v33 = v32;
  [(CIVector *)self->inputRemoveBlur Z];
  *&v34 = v34;
  v73 = (*&v34 / (v33 - v31)) / v29;
  [(CIVector *)self->inputRemoveBlur X];
  v36 = v35;
  [(CIVector *)self->inputRemoveBlur Y];
  v38 = v37;
  [(CIVector *)self->inputRemoveBlur Z];
  *&v39 = v39;
  v40 = (((-*&v39 / (v38 - v36)) * v36) + 0.0) / v29;
  [(NSNumber *)self->inputApertureScaling floatValue];
  v42 = v41;
  [(CIVector *)self->inputRemoveBlur Z];
  v44 = v29;
  *&v42 = v43 * v42 / v29;
  [(CIVector *)self->inputAddBlur X];
  v46 = v45;
  [(CIVector *)self->inputAddBlur Z];
  v48 = v47;
  [(CIVector *)self->inputAddBlur Y];
  *&v49 = v49;
  v50 = ((0.0 - v48) / (*&v49 - v46)) / v29;
  [(CIVector *)self->inputAddBlur X];
  v52 = v51;
  [(CIVector *)self->inputAddBlur Z];
  v54 = v53;
  [(CIVector *)self->inputAddBlur Y];
  *&v55 = v55;
  v56 = (v54 + ((-(0.0 - v54) / (*&v55 - v52)) * v52)) / v29;
  [(NSNumber *)self->inputApertureScaling floatValue];
  v58 = v57;
  [(CIVector *)self->inputAddBlur Z];
  *&v58 = v59 * v58 / v44;
  v60 = [CIVector vectorWithX:v73 Y:v40 Z:*&v42];
  v61 = [CIVector vectorWithX:v50 Y:v56 Z:*&v58];
  v62 = [(CISegmentationFusion *)self kernel];
  [(CIImage *)self->inputImage extent];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v77[0] = self->inputImage;
  v77[1] = v6;
  v77[2] = v61;
  v77[3] = v60;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:4];
  v75[0] = @"kCIKernelOutputFormat";
  v72 = [MEMORY[0x1E696AD98] numberWithInt:2053];
  v75[1] = @"kCIImageAlphaOne";
  v76[0] = v72;
  v76[1] = MEMORY[0x1E695E118];
  return [v62 applyWithExtent:v71 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v76, v75, 2), v64, v66, v68, v70}];
}

@end