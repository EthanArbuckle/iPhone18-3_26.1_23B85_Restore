@interface CIAreaRedCentroid
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIAreaRedCentroid

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryReduction";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryBuiltIn";
  v3[4] = @"CICategoryHighDynamicRange";
  v3[5] = @"CICategoryApplePrivate";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v5[1] = @"12";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.14";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v45[2] = *MEMORY[0x1E69E9840];
  inputImage = self->super.super.inputImage;
  if (inputImage && ([(CIImage *)inputImage extent], v5 = v4, v7 = v6, v9 = v8, v11 = v10, [(CIVector *)self->super.super.inputExtent CGRectValue], v49.origin.x = v12, v49.origin.y = v13, v49.size.width = v14, v49.size.height = v15, v47.origin.x = v5, v47.origin.y = v7, v47.size.width = v9, v47.size.height = v11, v48 = CGRectIntersection(v47, v49), !CGRectIsEmpty(v48)))
  {
    [(CIVector *)self->super.super.inputExtent CGRectValue];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [CIVector vectorWithX:"vectorWithX:Y:Z:W:" Y:v17 Z:? W:?];
    v26 = [(CIAreaCentroid *)self _kernelWeightedCoordinate];
    [(CIImage *)self->super.super.inputImage extent];
    v45[0] = self->super.super.inputImage;
    v45[1] = v25;
    v31 = [v26 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v45, 2), v27, v28, v29, v30}];
    v43 = @"inputExtent";
    v44 = [CIVector vectorWithCGRect:v18, v20, v22, v24];
    v32 = [objc_msgSend(v31 imageByApplyingFilter:@"CIAreaAverage" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v44, &v43, 1)), "imageByUnpremultiplyingAlpha"}];
    v33 = [(CIAreaCentroid *)self _kernelCentroid];
    [v32 extent];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42[0] = v32;
    v42[1] = [CIVector vectorWithCGRect:v18, v20, v22, v24];
    return [objc_msgSend(v33 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v42, 2), v35, v37, v39, v41), "imageByCroppingToRect:", 0.0, 0.0, 1.0, 1.0}];
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end