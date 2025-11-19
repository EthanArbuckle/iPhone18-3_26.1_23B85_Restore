@interface CIAreaAverage
- (id)outputImage;
- (id)outputImageNonMPS:(id)a3;
@end

@implementation CIAreaAverage

- (id)outputImageNonMPS:(id)a3
{
  v76[1] = *MEMORY[0x1E69E9840];
  if (a3 && (v3 = a3, [a3 extent], !CGRectIsEmpty(v78)))
  {
    [(CIImage *)v3 extent];
    v65 = v5;
    [(CIImage *)v3 extent];
    v64 = v6;
    [(CIImage *)v3 extent];
    v7 = 1.0;
    if (CGRectGetMaxX(v79) > 4.0)
    {
      do
      {
        [(CIImage *)v3 extent];
        if (CGRectGetMaxY(v80) <= 4.0)
        {
          break;
        }

        v7 = v7 * 64.0;
        v8 = [CIKernel kernelWithInternalRepresentation:&CI::_areaAvg8];
        [(CIImage *)v3 extent];
        v76[0] = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v8, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_78_0, [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:1], v11, v12, ceil(v9 * 0.125), ceil(v10 * 0.125));
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxX(v81) > 4.0);
    }

    [(CIImage *)v3 extent];
    if (CGRectGetMaxX(v82) > 2.0)
    {
      do
      {
        [(CIImage *)v3 extent];
        if (CGRectGetMaxY(v83) <= 2.0)
        {
          break;
        }

        v7 = v7 * 16.0;
        v13 = [CIKernel kernelWithInternalRepresentation:&CI::_areaAvg4];
        [(CIImage *)v3 extent];
        v75 = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v13, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_80_0, [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1], v16, v17, ceil(v14 * 0.25), ceil(v15 * 0.25));
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxX(v84) > 2.0);
    }

    [(CIImage *)v3 extent];
    if (CGRectGetMaxX(v85) > 1.0)
    {
      do
      {
        [(CIImage *)v3 extent];
        if (CGRectGetMaxY(v86) <= 1.0)
        {
          break;
        }

        v7 = v7 * 4.0;
        v18 = [CIKernel kernelWithInternalRepresentation:&CI::_areaAvg2];
        [(CIImage *)v3 extent];
        v74 = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v18, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_82_2, [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1], v21, v22, ceil(v19 * 0.5), ceil(v20 * 0.5));
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxX(v87) > 1.0);
    }

    [(CIImage *)v3 extent];
    if (CGRectGetMaxY(v88) >= 16.0)
    {
      do
      {
        v7 = v7 * 16.0;
        v23 = [CIKernel kernelWithInternalRepresentation:&CI::_vertAvg16];
        [(CIImage *)v3 extent];
        v73 = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v23, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_84_0, [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1], v25, v26, v27, ceil(v24 * 0.0625));
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxY(v89) >= 16.0);
    }

    [(CIImage *)v3 extent];
    if (CGRectGetMaxY(v90) >= 8.0)
    {
      do
      {
        v7 = v7 * 8.0;
        v28 = [CIKernel kernelWithInternalRepresentation:&CI::_vertAvg8];
        [(CIImage *)v3 extent];
        v72 = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v28, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_86, [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1], v30, v31, v32, ceil(v29 * 0.125));
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxY(v91) >= 8.0);
    }

    [(CIImage *)v3 extent];
    if (CGRectGetMaxY(v92) >= 4.0)
    {
      do
      {
        v7 = v7 * 4.0;
        v33 = [CIKernel kernelWithInternalRepresentation:&CI::_vertAvg4];
        [(CIImage *)v3 extent];
        v71 = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v33, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_88_0, [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1], v35, v36, v37, ceil(v34 * 0.25));
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxY(v93) >= 4.0);
    }

    [(CIImage *)v3 extent];
    if (CGRectGetMaxY(v94) > 1.0)
    {
      do
      {
        v7 = v7 + v7;
        v38 = [CIKernel kernelWithInternalRepresentation:&CI::_vertAvg2];
        [(CIImage *)v3 extent];
        v70 = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v38, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_90_0, [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1], v40, v41, v42, ceil(v39 * 0.5));
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxY(v95) > 1.0);
    }

    [(CIImage *)v3 extent];
    if (CGRectGetMaxX(v96) >= 16.0)
    {
      do
      {
        v7 = v7 * 16.0;
        v43 = [CIKernel kernelWithInternalRepresentation:&CI::_horizAvg16];
        [(CIImage *)v3 extent];
        v69 = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v43, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_92_1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1], v45, v46, ceil(v44 * 0.0625), v47);
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxX(v97) >= 16.0);
    }

    [(CIImage *)v3 extent];
    if (CGRectGetMaxX(v98) >= 8.0)
    {
      do
      {
        v7 = v7 * 8.0;
        v48 = [CIKernel kernelWithInternalRepresentation:&CI::_horizAvg8];
        [(CIImage *)v3 extent];
        v68 = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v48, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_94, [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1], v50, v51, ceil(v49 * 0.125), v52);
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxX(v99) >= 8.0);
    }

    [(CIImage *)v3 extent];
    if (CGRectGetMaxX(v100) >= 4.0)
    {
      do
      {
        v7 = v7 * 4.0;
        v53 = [CIKernel kernelWithInternalRepresentation:&CI::_horizAvg4];
        [(CIImage *)v3 extent];
        v67 = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v53, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_96, [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1], v55, v56, ceil(v54 * 0.25), v57);
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxX(v101) >= 4.0);
    }

    [(CIImage *)v3 extent];
    if (CGRectGetMaxX(v102) > 1.0)
    {
      do
      {
        v7 = v7 + v7;
        v58 = [CIKernel kernelWithInternalRepresentation:&CI::_horizAvg2];
        [(CIImage *)v3 extent];
        v66 = v3;
        v3 = -[CIKernel applyWithExtent:roiCallback:arguments:](v58, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_98, [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1], v60, v61, ceil(v59 * 0.5), v62);
        [(CIImage *)v3 extent];
      }

      while (CGRectGetMaxX(v103) > 1.0);
    }

    v63 = v7 / (v65 * v64);
    if (v63 != 1.0)
    {
      return [(CIImage *)v3 filteredImage:@"CIColorMatrix" keysAndValues:@"inputRVector", [CIVector vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0], @"inputGVector", [CIVector vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0], @"inputBVector", [CIVector vectorWithX:0.0 Y:0.0 Z:1.0 W:0.0], @"inputAVector", [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:v63], @"inputBiasVector", [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0], 0];
    }

    return v3;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

- (id)outputImage
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(CIReductionFilter *)self offsetAndCrop];
  if (v3 && (v4 = v3, [v3 extent], !CGRectIsEmpty(v23)))
  {
    [v4 extent];
    if (v6 != 1.0 || ([v4 extent], v7 != 1.0))
    {
      v8 = [(CIAreaAverage *)self outputImageNonMPS:v4];
      if (CI_ENABLE_MPS() && ([v4 extent], v12 = v11, v14 = v13, *&v11 = v9, *&v13 = v10, fmaxf(*&v11, *&v13) <= 4096.0) && (v15 = v9, v16 = v10, v21[0] = v4, v17 = objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v21, 1), v20 = +[CIVector vectorWithCGRect:](CIVector, "vectorWithCGRect:", v12, v14, v15, v16, @"region"), (v18 = +[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:](CIAreaAverageProcessor, "applyWithExtent:inputs:arguments:error:", v17, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v20, &v19, 1), 0, 0.0, 0.0, 1.0, 1.0)) != 0))
      {
        return [CIImage imageForRenderingWithMPS:v18 orNonMPS:v8];
      }

      else
      {
        return v8;
      }
    }

    return v4;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end