@interface CUIGlassHighlightFromAlpha
- (id)outputImage;
@end

@implementation CUIGlassHighlightFromAlpha

- (id)outputImage
{
  v37[6] = *MEMORY[0x1E69E9840];
  inputImage = [(CUIGlassHighlightInternal *)self inputImage];
  if (inputImage)
  {
    v4 = inputImage;
    [(NSNumber *)[(CUIGlassHighlightInternal *)self inputHeight] floatValue];
    v6 = v5;
    [(NSNumber *)[(CUIGlassHighlightInternal *)self inputInset] floatValue];
    v8 = v7;
    [(NSNumber *)[(CUIGlassHighlightInternal *)self inputSpread] floatValue];
    v10 = v9;
    [(NSNumber *)[(CUIGlassHighlightInternal *)self inputBiasAmount] floatValue];
    v12 = [CIVector vectorWithX:v6 Y:v8 Z:v10 W:v11];
    [(NSNumber *)[(CUIGlassHighlightInternal *)self inputCurvature] floatValue];
    v14 = v13;
    [(CIVector *)[(CUIGlassHighlightInternal *)self inputAngleSinCos] X];
    v16 = v15;
    [(CIVector *)[(CUIGlassHighlightInternal *)self inputAngleSinCos] Y];
    v18 = v17;
    [(NSNumber *)[(CUIGlassHighlightInternal *)self inputSDFScaleFactor] floatValue];
    v20 = [CIVector vectorWithX:v14 Y:v16 Z:v18 W:v19];
    _kernel = [(CUIGlassHighlightFromAlpha *)self _kernel];
    if (_kernel)
    {
      v22 = _kernel;
      [(CIImage *)v4 extent];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      imageByClampingToExtent = [(CIImage *)v4 imageByClampingToExtent];
      v39.origin.x = v24;
      v39.origin.y = v26;
      v39.size.width = v28;
      v39.size.height = v30;
      v40 = CGRectInset(v39, -6.0, -6.0);
      x = v40.origin.x;
      y = v40.origin.y;
      width = v40.size.width;
      height = v40.size.height;
      v37[0] = imageByClampingToExtent;
      v37[1] = v12;
      v37[2] = v20;
      v37[3] = [(CUIGlassHighlightInternal *)self inputSDFZeroValue];
      v37[4] = [(CUIGlassHighlightInternal *)self inputColor];
      v37[5] = [(CUIGlassHighlightInternal *)self inputCenter];
      return [objc_msgSend(v22 applyWithExtent:&__block_literal_global_126 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v37, 6), x, y, width, height), "imageByCroppingToRect:", v24, v26, v28, v30}];
    }

    else
    {

      return [(CUIGlassHighlightInternal *)self inputImage];
    }
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end