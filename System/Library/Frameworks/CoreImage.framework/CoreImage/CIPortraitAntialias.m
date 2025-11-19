@interface CIPortraitAntialias
- (id)_kernel:(BOOL)a3 withAddedNoise:(BOOL)a4;
- (id)_noiseGeneratorKernel;
- (id)outputImage;
- (id)outputImage:(id)a3 horizontal:(BOOL)a4;
@end

@implementation CIPortraitAntialias

- (id)_kernel:(BOOL)a3 withAddedNoise:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = SDOFV2MetalLibURL();
  v7 = @"_sparserendering_antialias_y_no_noise";
  if (v4)
  {
    v7 = @"_sparserendering_antialias_y";
  }

  if (v5)
  {
    v8 = @"_sparserendering_antialias_x";
  }

  else
  {
    v8 = v7;
  }

  return [CIKernel cachedKernelWithFunctionName:v8 fromMetalLibrary:v6 error:0];
}

- (id)_noiseGeneratorKernel
{
  v2 = SDOFV2MetalLibURL();

  return [(CIKernel *)CIColorKernel cachedKernelWithFunctionName:@"_noiseGenerator" fromMetalLibrary:v2 error:0];
}

- (id)outputImage:(id)a3 horizontal:(BOOL)a4
{
  v92[4] = *MEMORY[0x1E69E9840];
  if (a3 && ((v4 = a4, [(NSNumber *)[(CIPortraitAntialias *)self inputScale] floatValue], v8 = v7, v7 == 1.0) ? (v9 = 1) : (v9 = v4), (v10 = [(CIPortraitAntialias *)self _kernel:v4 withAddedNoise:(v7 == 1.0) & ~v4]) != 0))
  {
    v11 = v10;
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    [(NSNumber *)self->inputAntiAliasRadius floatValue];
    v79 = v12;
    if (v8 < 1.0)
    {
      v13 = v8 * v77[6];
      if (v13 < 3.0)
      {
        v13 = 3.0;
      }

      v77[6] = v13;
    }

    [(NSNumber *)self->inputMaxBlurInPixels floatValue];
    v15 = v14;
    v16 = v77[6];
    [(NSNumber *)self->inputLumaNoiseModelCoeff floatValue];
    v18 = v17;
    [(NSNumber *)self->inputLumaNoiseAmpl floatValue];
    v20 = [CIVector vectorWithX:v15 Y:v16 Z:v18 W:v19];
    [(CIVector *)self->inputRect Z];
    v22 = v21;
    [(CIVector *)self->inputRect W];
    v23 = v8;
    v25 = [CIVector vectorWithX:v22 Y:v24 Z:v23];
    if (v4)
    {
      inputMaxBlurInPixels = self->inputMaxBlurInPixels;
      v92[0] = a3;
      v92[1] = inputMaxBlurInPixels;
      *&v26 = v77[6];
      v28 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
      inputScale = self->inputScale;
      v92[2] = v28;
      v92[3] = inputScale;
      v30 = v92;
      v31 = 4;
    }

    else
    {
      v91[0] = a3;
      v91[1] = v20;
      v30 = v91;
      v31 = 3;
      v91[2] = v25;
    }

    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:v31];
    if (v9)
    {
      v34 = v33;
      v35 = *MEMORY[0x1E695F040];
      v36 = *(MEMORY[0x1E695F040] + 8);
      v38 = *(MEMORY[0x1E695F040] + 16);
      v37 = *(MEMORY[0x1E695F040] + 24);
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __46__CIPortraitAntialias_outputImage_horizontal___block_invoke;
      v74[3] = &unk_1E75C3860;
      v75 = v4;
      v74[4] = &v76;
      v89 = @"kCIKernelOutputFormat";
      v90 = [MEMORY[0x1E696AD98] numberWithInt:2056];
      v39 = [v11 applyWithExtent:v74 roiCallback:v34 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v90, &v89, 1), v35, v36, v38, v37}];
    }

    else
    {
      v40 = [(CIPortraitAntialias *)self _kernel:0 withAddedNoise:0];
      [(NSNumber *)self->inputMaxBlurInPixels floatValue];
      v42 = [CIVector vectorWithX:v41 Y:v77[6] Z:v23];
      v43 = *MEMORY[0x1E695F040];
      v44 = *(MEMORY[0x1E695F040] + 8);
      v46 = *(MEMORY[0x1E695F040] + 16);
      v45 = *(MEMORY[0x1E695F040] + 24);
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __46__CIPortraitAntialias_outputImage_horizontal___block_invoke_2;
      v73[3] = &unk_1E75C2528;
      v73[4] = &v76;
      v88[0] = a3;
      v88[1] = v42;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
      v86 = @"kCIKernelOutputFormat";
      v87 = [MEMORY[0x1E696AD98] numberWithInt:2056];
      v48 = [v40 applyWithExtent:v73 roiCallback:v47 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v87, &v86, 1), v43, v44, v46, v45}];
      [(NSNumber *)self->inputLumaNoiseModelCoeff floatValue];
      LODWORD(v45) = v49;
      [(NSNumber *)self->inputLumaNoiseAmpl floatValue];
      v51 = [CIVector vectorWithX:*&v45 Y:v50];
      v52 = [(CIPortraitAntialias *)self _noiseGeneratorKernel];
      [(CIVector *)self->inputSensorSize X];
      v54 = v53;
      [(CIVector *)self->inputSensorSize Y];
      v55 = v54 * 0.5;
      v57 = v56 * 0.5;
      v85 = [CIVector vectorWithX:v55 Y:v56 * 0.5];
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
      v83 = @"kCIKernelOutputFormat";
      v84 = [MEMORY[0x1E696AD98] numberWithInt:2053];
      v59 = [v52 applyWithExtent:v58 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v84, &v83, 1), 0.0, 0.0, v55, v57}];
      CGAffineTransformMakeScale(&v72, v23, v23);
      v60 = [v59 imageByApplyingTransform:&v72 highQualityDownsample:0];
      v61 = [(CIPortraitAntialias *)self noiseColorKernel];
      [v48 extent];
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v69 = v68;
      v82[0] = v48;
      v82[1] = v60;
      v82[2] = v51;
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:3];
      v80 = @"kCIKernelOutputFormat";
      v81 = [MEMORY[0x1E696AD98] numberWithInt:2056];
      v39 = [v61 applyWithExtent:v70 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v81, &v80, 1), v63, v65, v67, v69}];
    }

    v71 = v39;
    _Block_object_dispose(&v76, 8);
    return v71;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

double __46__CIPortraitAntialias_outputImage_horizontal___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = -*(*(*(a1 + 32) + 8) + 24);
  v6 = v5;
  if (*(a1 + 40))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0.0;
  }

  if (*(a1 + 40))
  {
    v6 = 0.0;
  }

  *&result = CGRectInset(*&a2, v7, v6);
  return result;
}

- (id)outputImage
{
  [(CIImage *)self->inputImage extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CIPortraitAntialias *)self outputImage:[(CIPortraitAntialias *)self outputImage:[(CIImage *)self->inputImage imageByClampingToExtent] horizontal:1] horizontal:0];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  if (CGRectEqualToRect(*MEMORY[0x1E695F040], v14))
  {
    return v11;
  }

  return [v11 imageByCroppingToRect:{v4, v6, v8, v10}];
}

@end