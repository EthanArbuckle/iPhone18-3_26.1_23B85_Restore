@interface CIColumnAverage
- (id)outputImage;
@end

@implementation CIColumnAverage

- (id)outputImage
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = [(CIReductionFilter *)self offsetAndCrop];
  if (v2 && (v3 = v2, [(CIImage *)v2 extent], !CGRectIsEmpty(v34)))
  {
    [(CIImage *)v3 extent];
    v28 = v5;
    [(CIImage *)v3 extent];
    v6 = 1.0;
    if (CGRectGetMaxY(v35) >= 16.0)
    {
      do
      {
        v6 = v6 * 16.0;
        v7 = [CIKernel kernelWithInternalRepresentation:&CI::_vertAvg16];
        [(CIImage *)v3 extent];
        v32[0] = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v7, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_125, [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1], v9, v10, v11, ceil(v8 * 0.0625));
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxY(v36) >= 16.0);
    }

    [(CIImage *)v3 extent];
    if (CGRectGetMaxY(v37) >= 8.0)
    {
      do
      {
        v6 = v6 * 8.0;
        v12 = [CIKernel kernelWithInternalRepresentation:&CI::_vertAvg8];
        [(CIImage *)v3 extent];
        v31 = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v12, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_127_0, [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1], v14, v15, v16, ceil(v13 * 0.125));
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxY(v38) >= 8.0);
    }

    [(CIImage *)v3 extent];
    if (CGRectGetMaxY(v39) >= 4.0)
    {
      do
      {
        v6 = v6 * 4.0;
        v17 = [CIKernel kernelWithInternalRepresentation:&CI::_vertAvg4];
        [(CIImage *)v3 extent];
        v30 = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v17, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_129_0, [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1], v19, v20, v21, ceil(v18 * 0.25));
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxY(v40) >= 4.0);
    }

    v22 = v28;
    [(CIImage *)v3 extent];
    if (CGRectGetMaxY(v41) > 1.0)
    {
      do
      {
        v6 = v6 + v6;
        v23 = [CIKernel kernelWithInternalRepresentation:&CI::_vertAvg2];
        [(CIImage *)v3 extent];
        v29 = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v23, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_131, [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1], v25, v26, v27, ceil(v24 * 0.5));
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxY(v42) > 1.0);
    }

    if ((v6 / v22) != 1.0)
    {
      return [(CIImage *)v3 filteredImage:@"CIColorMatrix" keysAndValues:@"inputRVector", [CIVector vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0], @"inputGVector", [CIVector vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0], @"inputBVector", [CIVector vectorWithX:0.0 Y:0.0 Z:1.0 W:0.0], @"inputAVector", [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:(v6 / v22)], @"inputBiasVector", [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0], 0];
    }

    return v3;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end