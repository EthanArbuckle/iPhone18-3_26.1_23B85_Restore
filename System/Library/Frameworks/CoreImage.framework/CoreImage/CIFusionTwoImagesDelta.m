@interface CIFusionTwoImagesDelta
- (id)outputImage;
@end

@implementation CIFusionTwoImagesDelta

- (id)outputImage
{
  v43[6] = *MEMORY[0x1E69E9840];
  v3 = +[CIImage emptyImage];
  if (self->inputImage && self->inputSecondaryImage)
  {
    v4 = [(CIFusionTwoImagesDelta *)self kernel];
    [(NSNumber *)self->inputApertureScaling floatValue];
    v6 = v5;
    [(CIVector *)self->inputSubtractive Z];
    *&v6 = v7 * v6;
    [(CIVector *)self->inputSubtractive X];
    v9 = v8;
    [(CIVector *)self->inputSubtractive Y];
    *&v10 = v10;
    v11 = *&v6 / (*&v10 - v9);
    [(CIVector *)self->inputSubtractive X];
    v13 = v12;
    [(CIVector *)self->inputSubtractive Y];
    *&v14 = v14;
    v15 = ((-*&v6 / (*&v14 - v13)) * v13) + 0.0;
    [(NSNumber *)self->inputApertureScaling floatValue];
    v17 = v16;
    [(CIVector *)self->inputAdditive Z];
    *&v17 = v18 * v17;
    [(CIVector *)self->inputAdditive X];
    v20 = v19;
    [(CIVector *)self->inputAdditive Y];
    *&v21 = v21;
    v22 = (0.0 - *&v17) / (*&v21 - v20);
    [(CIVector *)self->inputAdditive X];
    v24 = v23;
    [(CIVector *)self->inputAdditive Y];
    *&v25 = v25;
    v26 = *&v17 + ((-(0.0 - *&v17) / (*&v25 - v24)) * v24);
    v27 = [CIVector vectorWithX:v11 Y:v15 Z:*&v6];
    v28 = [CIVector vectorWithX:v22 Y:v26 Z:*&v17];
    [(CIImage *)v3 extent];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    inputSecondaryImage = self->inputSecondaryImage;
    v43[0] = self->inputImage;
    v43[1] = inputSecondaryImage;
    v43[2] = v28;
    v43[3] = v27;
    inputApertureScaling = self->inputApertureScaling;
    v43[4] = self->inputProtectStrength;
    v43[5] = inputApertureScaling;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:6];
    v41[0] = @"kCIKernelOutputFormat";
    v41[1] = @"kCIImageAlphaOne";
    v42[0] = [MEMORY[0x1E696AD98] numberWithInt:2053];
    v42[1] = MEMORY[0x1E695E118];
    return [v4 applyWithExtent:v39 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v42, v41, 2), v30, v32, v34, v36}];
  }

  return v3;
}

@end