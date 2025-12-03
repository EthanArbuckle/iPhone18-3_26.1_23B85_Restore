@interface RedPupilLocalizer
- (id)outputImage;
@end

@implementation RedPupilLocalizer

- (id)outputImage
{
  v45[2] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  intValue = [(NSNumber *)self->inputIterations intValue];
  [(NSNumber *)self->inputScale floatValue];
  v39 = v5;
  [(NSNumber *)self->inputDecay floatValue];
  v7 = v6;
  [(NSNumber *)self->inputGamma floatValue];
  v9 = v8;
  [(CIVector *)self->inputExtent CGRectValue];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(NSNumber *)self->inputLocalizationRadius floatValue];
  v19 = v18;
  [(NSNumber *)self->inputSearchAxisLong floatValue];
  v21 = v19 * v20;
  [(NSNumber *)self->inputSearchAxisShort floatValue];
  v23 = v19 * v22;
  v47.origin.x = v11;
  v47.origin.y = v13;
  v47.size.width = v15;
  v47.size.height = v17;
  v24 = RRradialEllipticalMask(v47, self->inputAxisLong, self->inputPupilCenter, v21, v23, 0.25, 1.0);
  v25 = RRmultiplyRh(inputImage, v24);
  if ([(NSNumber *)self->inputDebug BOOLValue])
  {
    [(CIImage *)self->inputImage extent];

    return [(CIImage *)v25 imageByCroppingToRect:?];
  }

  else
  {
    [(NSNumber *)self->inputClip floatValue];
    v28 = RRclip(v25, v27);
    v44[0] = @"inputMinComponents";
    v44[1] = @"inputMaxComponents";
    v45[0] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
    v45[1] = [CIVector vectorWithX:2.0 Y:2.0 Z:2.0 W:1.0];
    v29 = -[CIImage _imageByApplyingGamma:](-[CIImage imageByApplyingFilter:withInputParameters:](v28, "imageByApplyingFilter:withInputParameters:", @"CIColorClamp", [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2]), "_imageByApplyingGamma:", v9);
    if (![(NSNumber *)self->inputDebug BOOLValue])
    {
      v42 = @"inputExtent";
      v43 = [CIVector vectorWithCGRect:v11, v13, v15, v17];
      v29 = -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v29, "imageByApplyingFilter:withInputParameters:", @"CIAreaRedCentroid", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1]), "imageByClampingToExtent");
      [(CIVector *)self->inputAxisLong _norm];
      v31 = v30;
      [(CIVector *)self->inputAxisShort _norm];
      if (intValue >= 1)
      {
        v33 = (v31 * 0.75 + v32 * 0.25) * v39;
        v34 = self->inputImage;
        v35 = 1.0 - v7;
        do
        {
          v36 = v35 * v33;
          if (v36 <= 0.0)
          {
            v36 = 0.0;
          }

          v33 = v36;
          v40[0] = @"inputExtent";
          v41[0] = [CIVector vectorWithCGRect:v11, v13, v15, v17];
          v41[1] = v29;
          v40[1] = @"inputCenter";
          v40[2] = @"inputRadialMode";
          v41[2] = &unk_1F1081B30;
          v40[3] = @"inputRadius";
          *&v37 = v33;
          v38 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
          v40[4] = @"inputMinWeight";
          v41[3] = v38;
          v41[4] = &unk_1F10835A8;
          v29 = -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v34, "imageByApplyingFilter:withInputParameters:", @"CIAreaRedRadialCentroid", [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:5]), "imageByClampingToExtent");
          --intValue;
        }

        while (intValue);
      }
    }

    return v29;
  }
}

@end