@interface RedEyeRecolor
- (id)outputImage;
@end

@implementation RedEyeRecolor

- (id)outputImage
{
  v47[1] = *MEMORY[0x1E69E9840];
  [(CIVector *)self->inputExtent CGRectValue];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  inputSource = self->inputSource;
  inputImage = self->inputImage;
  v46 = @"inputExtent";
  v47[0] = [CIVector vectorWithCGRect:?];
  v13 = -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1]), "imageByClampingToExtent");
  v14 = self->inputImage;
  if ([(NSNumber *)self->inputRecovery BOOLValue])
  {
    v44 = @"inputExtent";
    v45 = [CIVector vectorWithCGRect:v4, v6, v8, v10];
    v15 = -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](inputSource, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1]), "imageByClampingToExtent");
    [(CIImage *)v14 extent];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(CIImage *)inputSource extent];
    v50.origin.x = v24;
    v50.origin.y = v25;
    v50.size.width = v26;
    v50.size.height = v27;
    v48.origin.x = v17;
    v48.origin.y = v19;
    v48.size.width = v21;
    v48.size.height = v23;
    v49 = CGRectUnion(v48, v50);
    x = v49.origin.x;
    y = v49.origin.y;
    width = v49.size.width;
    height = v49.size.height;
    v32 = [(RedEyeRecolor *)self kernelRecovery];
    v43[0] = v14;
    v43[1] = inputSource;
    v43[2] = v13;
    v43[3] = v15;
    v43[4] = self->inputRecovery;
    v14 = [objc_msgSend(v32 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v43, 5), x, y, width, height), "imageByCroppingToRect:", v4, v6, v8, v10}];
  }

  v33 = [+[CIFilter filterWithName:withInputParameters:](CIFilter outputImage:@"CheapRandomness"];
  v34 = [(RedEyeRecolor *)self kernelRepair];
  [(CIImage *)v14 extent];
  v42[0] = v14;
  v42[1] = inputSource;
  v42[2] = self->inputMask;
  v42[3] = v13;
  inputBrightness = self->inputBrightness;
  v42[4] = v33;
  v42[5] = inputBrightness;
  inputWhiteCutoff = self->inputWhiteCutoff;
  v42[6] = self->inputNoiseAmount;
  v42[7] = inputWhiteCutoff;
  v42[8] = self->inputChroma;
  return [v34 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v42, 9), v37, v38, v39, v40}];
}

@end