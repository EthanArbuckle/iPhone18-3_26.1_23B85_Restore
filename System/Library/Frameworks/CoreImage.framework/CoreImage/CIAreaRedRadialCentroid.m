@interface CIAreaRedRadialCentroid
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIAreaRedRadialCentroid

+ (id)customAttributes
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryReduction";
  v13[1] = @"CICategoryBuiltIn";
  v13[2] = @"CICategoryHighDynamicRange";
  v13[3] = @"CICategoryApplePrivate";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v14[1] = @"inputCenter";
  v11 = @"CIAttributeType";
  v12 = @"CIAttributeTypeImage";
  v15[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[2] = @"inputRadius";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeMax";
  v10[0] = &unk_1F1082220;
  v10[1] = &unk_1F1085488;
  v9[2] = @"CIAttributeDefault";
  v9[3] = @"CIAttributeType";
  v10[2] = &unk_1F1082298;
  v10[3] = @"CIAttributeTypeScalar";
  v15[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v14[3] = @"inputRadialMode";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeMax";
  v8[0] = &unk_1F1082220;
  v8[1] = &unk_1F10822B0;
  v7[2] = @"CIAttributeDefault";
  v7[3] = @"CIAttributeType";
  v8[2] = &unk_1F1082220;
  v8[3] = @"CIAttributeTypeInteger";
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v14[4] = @"inputMinWeight";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeMax";
  v6[0] = &unk_1F1082220;
  v6[1] = &unk_1F1085488;
  v5[2] = @"CIAttributeDefault";
  v5[3] = @"CIAttributeType";
  v6[2] = &unk_1F1082220;
  v6[3] = @"CIAttributeTypeScalar";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];
  v3 = [+[CIAreaCentroid customAttributes](CIAreaCentroid "customAttributes")];
  [v3 addEntriesFromDictionary:v2];
  return v3;
}

- (id)outputImage
{
  v71[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSNumber *)self->inputRadialMode integerValue];
  inputCenter = self->inputCenter;
  if (self->super.super.super.inputExtent)
  {
    v5 = inputCenter == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v3 <= 1)
  {
    v8 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v10 = [(CIAreaRedRadialCentroid *)self _kernelCenter];
      [(CIImage *)self->super.super.super.inputImage extent];
      v68 = self->inputCenter;
      inputCenter = [v10 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v68, 1), v11, v12, v13, v14}];
    }

    v15 = [(CIImage *)inputCenter imageByClampingToExtent];
    [(NSNumber *)self->inputRadius floatValue];
    v17 = v16;
    [(NSNumber *)self->inputRadius floatValue];
    v19 = v17 * v18;
    if (v8)
    {
      v19 = 1.0 / (v19 / 9.0);
      v20 = [(CIAreaRedRadialCentroid *)self _kernelGaussian];
      [(CIImage *)self->super.super.super.inputImage extent];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      inputImage = self->super.super.super.inputImage;
      p_inputImage = &inputImage;
    }

    else
    {
      v20 = [(CIAreaRedRadialCentroid *)self _kernelDisk];
      [(CIImage *)self->super.super.super.inputImage extent];
      v22 = v21;
      v24 = v30;
      v26 = v31;
      v28 = v32;
      v67 = self->super.super.super.inputImage;
      p_inputImage = &v67;
    }

    p_inputImage[1] = v15;
    *&v21 = v19;
    p_inputImage[2] = [MEMORY[0x1E696AD98] numberWithFloat:v21];
    v33 = [v20 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", p_inputImage, 3), v22, v24, v26, v28}];
    inputExtent = self->super.super.super.inputExtent;
    v64 = @"inputExtent";
    v65 = inputExtent;
    inputCenter = [v33 imageByApplyingFilter:@"CIAreaRedCentroid" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v65, &v64, 1)}];
    inputMinWeight = self->inputMinWeight;
    if (inputMinWeight)
    {
      [(NSNumber *)inputMinWeight floatValue];
      if (v36 > 0.0)
      {
        v70 = @"inputExtent";
        v63 = v36;
        [(CIImage *)inputCenter extent];
        v71[0] = [CIVector vectorWithCGRect:?];
        v37 = [objc_msgSend(v33 imageByApplyingFilter:@"CIAreaMinMaxRed" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v71, &v70, 1)), "imageByClampingToExtent"}];
        v38 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_RCSelectGreaterThan];
        [(CIImage *)inputCenter extent];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;
        [(CIImage *)v15 extent];
        v76.origin.x = v47;
        v76.origin.y = v48;
        v76.size.width = v49;
        v76.size.height = v50;
        v72.origin.x = v40;
        v72.origin.y = v42;
        v72.size.width = v44;
        v72.size.height = v46;
        v73 = CGRectUnion(v72, v76);
        x = v73.origin.x;
        y = v73.origin.y;
        width = v73.size.width;
        height = v73.size.height;
        [v33 extent];
        v77.origin.x = v55;
        v77.origin.y = v56;
        v77.size.width = v57;
        v77.size.height = v58;
        v74.origin.x = x;
        v74.origin.y = y;
        v74.size.width = width;
        v74.size.height = height;
        v75 = CGRectUnion(v74, v77);
        v59 = v75.origin.x;
        v60 = v75.origin.y;
        v61 = v75.size.width;
        v62 = v75.size.height;
        v69[0] = inputCenter;
        v69[1] = v15;
        v69[2] = v37;
        *&v75.origin.x = v63;
        v69[3] = [MEMORY[0x1E696AD98] numberWithFloat:v75.origin.x];
        return -[CIImage imageByCroppingToRect:](-[CIColorKernel applyWithExtent:arguments:](v38, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:4], v59, v60, v61, v62), "imageByCroppingToRect:", x, y, width, height);
      }
    }
  }

  return inputCenter;
}

@end