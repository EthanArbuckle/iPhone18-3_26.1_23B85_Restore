@interface CUISignedDistanceField
- (id)outputImage;
@end

@implementation CUISignedDistanceField

- (id)outputImage
{
  v31[1] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    inputMaxDistance = self->inputMaxDistance;
    [(CIImage *)self->inputImage extent];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    if (!inputMaxDistance)
    {
      v13 = MEMORY[0x1E696AD98];
      [(CIImage *)inputImage extent];
      v15 = v14;
      [(CIImage *)inputImage extent];
      v17 = v16;
      [(CIImage *)inputImage extent];
      if (v15 >= v17)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      inputMaxDistance = [v13 numberWithDouble:v20 * 0.2];
    }

    v30 = @"inputMaximumDistance";
    v31[0] = inputMaxDistance;
    v21 = -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CISignedDistanceGradientFromRedMask", [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1]);
    v33.origin.x = v6;
    v33.origin.y = v8;
    v33.size.width = v10;
    v33.size.height = v12;
    v34 = CGRectInset(v33, -1.0, -1.0);
    v22 = [(CIImage *)v21 imageByCroppingToRect:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
    _remappingKernel = [(CUISignedDistanceField *)self _remappingKernel];
    [(CIImage *)v22 extent];
    v29 = v22;
    return [_remappingKernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v29, 1), v24, v25, v26, v27}];
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end