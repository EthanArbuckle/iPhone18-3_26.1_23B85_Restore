@interface CISeedFill
- (id)outputImage;
@end

@implementation CISeedFill

- (id)outputImage
{
  v32[2] = *MEMORY[0x1E69E9840];
  v3 = [(CIImage *)self->inputCenter imageByCroppingToRect:0.0, 0.0, 1.0, 1.0];
  [(CIVector *)self->inputExtent CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v29 = 0;
  inputImage = self->inputImage;
  [(NSNumber *)self->inputSplat floatValue];
  if (v13 > 0.0)
  {
    inputCenter = self->inputCenter;
    [(CIVector *)self->inputExtent CGRectValue];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [(NSNumber *)self->inputSplat floatValue];
    v24 = v23;
    v33.origin.x = v16;
    v33.origin.y = v18;
    v33.size.width = v20;
    v33.size.height = v22;
    v25 = RRradialCentroidMask(inputCenter, v33, v24, 1.0, 1);
    inputImage = RRmaximumRh(inputImage, v25);
  }

  v32[0] = inputImage;
  v32[1] = v3;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  inputThreshold = self->inputThreshold;
  v30 = @"kThreshold";
  v31 = inputThreshold;
  return +[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:](CISeedFillProcessor, "applyWithExtent:inputs:arguments:error:", v26, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1], &v29, v5, v7, v9, v11);
}

@end