@interface CIBlurmapRefinementDistanceDelta
- (id)outputImage;
@end

@implementation CIBlurmapRefinementDistanceDelta

- (id)outputImage
{
  v32[1] = *MEMORY[0x1E69E9840];
  result = +[CIImage emptyImage];
  inputImage = self->inputImage;
  if (inputImage)
  {
    inputThreshold = self->inputThreshold;
    v31 = @"inputThreshold";
    v32[0] = inputThreshold;
    v6 = -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIBlurmapRefinementThreshold", [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1]);
    [(CIImage *)v6 extent];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(CIImage *)v6 imageByClampingToExtent];
    inputDistance = self->inputDistance;
    v29 = @"inputRadius";
    v30 = inputDistance;
    v17 = -[CIImage _imageByRenderingToIntermediate](-[CIImage imageByCroppingToRect:](-[CIImage imageByApplyingFilter:withInputParameters:](v15, "imageByApplyingFilter:withInputParameters:", @"CIGaussianBlur", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1]), "imageByCroppingToRect:", v8, v10, v12, v14), "_imageByRenderingToIntermediate");
    inputSecondaryImage = self->inputSecondaryImage;
    if (inputSecondaryImage)
    {
      v27[0] = @"inputSecondaryImage";
      v27[1] = @"inputScalingFactor";
      inputScalingFactor = self->inputScalingFactor;
      v28[0] = inputSecondaryImage;
      v28[1] = inputScalingFactor;
      v20 = MEMORY[0x1E695DF20];
      v21 = v28;
      v22 = v27;
      v23 = 2;
    }

    else
    {
      v24 = self->inputScalingFactor;
      v25 = @"inputScalingFactor";
      v26 = v24;
      v20 = MEMORY[0x1E695DF20];
      v21 = &v26;
      v22 = &v25;
      v23 = 1;
    }

    return [v17 imageByApplyingFilter:@"CIBlurmapRefinementLinearMapping" withInputParameters:{objc_msgSend(v20, "dictionaryWithObjects:forKeys:count:", v21, v22, v23)}];
  }

  return result;
}

@end