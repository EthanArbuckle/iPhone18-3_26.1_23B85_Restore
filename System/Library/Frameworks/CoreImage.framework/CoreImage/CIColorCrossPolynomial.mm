@interface CIColorCrossPolynomial
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIColorCrossPolynomial

+ (id)customAttributes
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v27 = 0;
  v22 = 0x3FF0000000000000;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17[0] = 0;
  v17[1] = 0x3FF0000000000000;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *&v13 = 0x3FF0000000000000;
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryColorEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryInterlaced";
  v9[3] = @"CICategoryNonSquarePixels";
  v9[4] = @"CICategoryStillImage";
  v9[5] = @"CICategoryHighDynamicRange";
  v9[6] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:7];
  v11[1] = @"7";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.9";
  v10[3] = @"inputRedCoefficients";
  v7[0] = @"CIAttributeDefault";
  v8[0] = [CIVector vectorWithValues:&v22 count:10];
  v7[1] = @"CIAttributeIdentity";
  v8[1] = [CIVector vectorWithValues:&v22 count:10];
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[4] = @"inputGreenCoefficients";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeIdentity";
  v6[0] = [CIVector vectorWithValues:v17 count:10];
  v6[1] = [CIVector vectorWithValues:v17 count:10];
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v10[5] = @"inputBlueCoefficients";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeIdentity";
  v4[0] = [CIVector vectorWithValues:&v12 count:10];
  v4[1] = [CIVector vectorWithValues:&v12 count:10];
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)outputImage
{
  v75[11] = *MEMORY[0x1E69E9840];
  if ([(CIColorCrossPolynomial *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  else
  {
    [(CIVector *)self->inputRedCoefficients X];
    v6 = v5;
    [(CIVector *)self->inputGreenCoefficients X];
    v8 = v7;
    [(CIVector *)self->inputBlueCoefficients X];
    v74 = [CIVector vectorWithX:v6 Y:v8 Z:v9];
    [(CIVector *)self->inputRedCoefficients Y];
    v11 = v10;
    [(CIVector *)self->inputGreenCoefficients Y];
    v13 = v12;
    [(CIVector *)self->inputBlueCoefficients Y];
    v73 = [CIVector vectorWithX:v11 Y:v13 Z:v14];
    [(CIVector *)self->inputRedCoefficients Z];
    v16 = v15;
    [(CIVector *)self->inputGreenCoefficients Z];
    v18 = v17;
    [(CIVector *)self->inputBlueCoefficients Z];
    v72 = [CIVector vectorWithX:v16 Y:v18 Z:v19];
    [(CIVector *)self->inputRedCoefficients valueAtIndex:3];
    v21 = v20;
    [(CIVector *)self->inputGreenCoefficients valueAtIndex:3];
    v23 = v22;
    [(CIVector *)self->inputBlueCoefficients valueAtIndex:3];
    v71 = [CIVector vectorWithX:v21 Y:v23 Z:v24];
    [(CIVector *)self->inputRedCoefficients valueAtIndex:4];
    v26 = v25;
    [(CIVector *)self->inputGreenCoefficients valueAtIndex:4];
    v28 = v27;
    [(CIVector *)self->inputBlueCoefficients valueAtIndex:4];
    v30 = [CIVector vectorWithX:v26 Y:v28 Z:v29];
    [(CIVector *)self->inputRedCoefficients valueAtIndex:5];
    v32 = v31;
    [(CIVector *)self->inputGreenCoefficients valueAtIndex:5];
    v34 = v33;
    [(CIVector *)self->inputBlueCoefficients valueAtIndex:5];
    v36 = [CIVector vectorWithX:v32 Y:v34 Z:v35];
    [(CIVector *)self->inputRedCoefficients valueAtIndex:6];
    v38 = v37;
    [(CIVector *)self->inputGreenCoefficients valueAtIndex:6];
    v40 = v39;
    [(CIVector *)self->inputBlueCoefficients valueAtIndex:6];
    v42 = [CIVector vectorWithX:v38 Y:v40 Z:v41];
    [(CIVector *)self->inputRedCoefficients valueAtIndex:7];
    v44 = v43;
    [(CIVector *)self->inputGreenCoefficients valueAtIndex:7];
    v46 = v45;
    [(CIVector *)self->inputBlueCoefficients valueAtIndex:7];
    v48 = [CIVector vectorWithX:v44 Y:v46 Z:v47];
    [(CIVector *)self->inputRedCoefficients valueAtIndex:8];
    v50 = v49;
    [(CIVector *)self->inputGreenCoefficients valueAtIndex:8];
    v52 = v51;
    [(CIVector *)self->inputBlueCoefficients valueAtIndex:8];
    v54 = [CIVector vectorWithX:v50 Y:v52 Z:v53];
    [(CIVector *)self->inputRedCoefficients valueAtIndex:9];
    v56 = v55;
    [(CIVector *)self->inputGreenCoefficients valueAtIndex:9];
    v58 = v57;
    [(CIVector *)self->inputBlueCoefficients valueAtIndex:9];
    v60 = [CIVector vectorWithX:v56 Y:v58 Z:v59];
    v61 = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
    [(CIImage *)self->inputImage extent];
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = [(CIColorCrossPolynomial *)self _kernel];
    v75[0] = v61;
    v75[1] = v74;
    v75[2] = v73;
    v75[3] = v72;
    v75[4] = v71;
    v75[5] = v30;
    v75[6] = v36;
    v75[7] = v42;
    v75[8] = v48;
    v75[9] = v54;
    v75[10] = v60;
    return [objc_msgSend(v70 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v75, 11), v63, v65, v67, v69), "imageByPremultiplyingAlpha"}];
  }
}

@end