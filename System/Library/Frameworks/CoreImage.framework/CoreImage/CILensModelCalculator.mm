@interface CILensModelCalculator
+ (id)customAttributes;
- (id)cpuParams;
- (id)mtlKernel;
- (id)outputImage;
@end

@implementation CILensModelCalculator

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryColorAdjustment";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryBuiltIn";
  v3[4] = @"CICategoryApplePrivate";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v5[1] = @"11";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.13";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)mtlKernel
{
  v2 = SDOFV2MetalLibURL();

  return [CIKernel cachedKernelWithFunctionName:@"slm_calcV2" fromMetalLibrary:v2 error:0];
}

- (id)cpuParams
{
  SDOFSimpleLensModelValue(@"zeroShiftPercentile", self->inputTuningParameters);
  v4 = v3;
  [(CIVector *)self->inputOriginalSize X];
  v6 = v5;
  [(CIVector *)self->inputOriginalSize Y];
  inputOriginalSize = self->inputOriginalSize;
  if (v6 <= v8)
  {
    [(CIVector *)inputOriginalSize Y];
  }

  else
  {
    [(CIVector *)inputOriginalSize X];
  }

  v10 = v9;
  [(NSNumber *)self->inputIntrinsicMatrixFocalLength floatValue];
  v12 = v11;
  [(NSNumber *)self->inputSimulatedAperture floatValue];
  v14 = v13;
  SDOFSimpleLensModelValue(@"disparityScalingFactor", self->inputTuningParameters);
  if (v15 == 0.0)
  {
    v15 = 1.0;
  }

  v16 = v10;
  v17 = v12 / v16;
  v18 = (v17 * 36.0) / (v14 * 1000.0);
  v19 = v18 * 0.5 * v17;
  v20 = v15 * v19;
  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  v22 = v20 / v21;
  SDOFSimpleLensModelValue(@"maxFGBlur", self->inputTuningParameters);
  v24 = v23 / v19;
  SDOFSimpleLensModelValue(@"shiftDeadZone", self->inputTuningParameters);

  return [CIVector vectorWithX:v4 Y:v22 Z:v24 W:(1.0 / v25)];
}

- (id)outputImage
{
  v70[4] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    [(CIImage *)inputImage extent];
    memset(&v63, 0, sizeof(v63));
    CGAffineTransformMakeScale(&v63, v4, v5);
    [(CIVector *)self->inputFocusRect CGRectValue];
    v59 = v63;
    v73 = CGRectApplyAffineTransform(v72, &v59);
    x = v73.origin.x;
    y = v73.origin.y;
    width = v73.size.width;
    height = v73.size.height;
    v10 = [CIVector vectorWithCGRect:?];
    imageByClampingToExtent = [(CIImage *)self->inputMinMaxImage imageByClampingToExtent];
    cpuParams = [(CILensModelCalculator *)self cpuParams];
    kernel = [(CILensModelCalculator *)self kernel];
    v14 = MEMORY[0x1E695F040];
    v15 = *MEMORY[0x1E695F040];
    v16 = *(MEMORY[0x1E695F040] + 8);
    v18 = *(MEMORY[0x1E695F040] + 16);
    v17 = *(MEMORY[0x1E695F040] + 24);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __36__CILensModelCalculator_outputImage__block_invoke;
    v62[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    *&v62[4] = x;
    *&v62[5] = y;
    *&v62[6] = width;
    *&v62[7] = height;
    v70[0] = self->inputImage;
    v70[1] = v10;
    v70[2] = imageByClampingToExtent;
    v70[3] = cpuParams;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:4];
    v68 = @"kCIKernelOutputFormat";
    v69 = [MEMORY[0x1E696AD98] numberWithInt:2056];
    v20 = [kernel applyWithExtent:v62 roiCallback:v19 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v69, &v68, 1), v15, v16, v18, v17}];
    mtlKernel = [(CILensModelCalculator *)self mtlKernel];
    if (mtlKernel)
    {
      v22 = mtlKernel;
      [(CIVector *)self->inputOriginalSize X];
      v24 = v23;
      [(CIVector *)self->inputOriginalSize Y];
      inputOriginalSize = self->inputOriginalSize;
      if (v24 <= v26)
      {
        [(CIVector *)inputOriginalSize Y];
      }

      else
      {
        [(CIVector *)inputOriginalSize X];
      }

      v29 = v27;
      [(NSNumber *)self->inputIntrinsicMatrixFocalLength floatValue];
      v31 = v30 / v29;
      v32 = 0;
      v33 = 0;
      if ([-[NSDictionary objectForKeyedSubscript:](self->inputTuningParameters objectForKeyedSubscript:{@"Version", "unsignedIntegerValue"}] >= 2)
      {
        SDOFRenderingValue(&cfstr_Minimumsimulat.isa, self->inputTuningParameters);
        v32 = v34;
        SDOFSimpleLensModelValue(@"maximumSimulatedAperture", self->inputTuningParameters);
        v33 = v35;
      }

      *&v36 = x;
      *&v37 = y;
      *&v59.a = __PAIR64__(v37, v36);
      *&v38 = width;
      *&v39 = height;
      *&v59.b = __PAIR64__(v39, v38);
      SDOFSimpleLensModelValue(@"zeroShiftPercentile", self->inputTuningParameters);
      LODWORD(v59.c) = v40;
      *(&v59.c + 1) = v31 * 36.0;
      [(NSNumber *)self->inputSimulatedAperture floatValue];
      *&v59.d = __PAIR64__(v32, v41);
      *&v59.tx = __PAIR64__(LODWORD(v31), v33);
      SDOFSimpleLensModelValue(@"maxFGBlur", self->inputTuningParameters);
      LODWORD(v59.ty) = v42;
      SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
      HIDWORD(v59.ty) = v43;
      SDOFSimpleLensModelValue(@"shiftDeadZone", self->inputTuningParameters);
      v60 = v44;
      SDOFSimpleLensModelValue(@"disparityScalingFactor", self->inputTuningParameters);
      v61 = v45;
      v46 = [MEMORY[0x1E695DEF0] dataWithBytes:&v59 length:56];
      [(CIImage *)self->inputImage extent];
      v47 = [CIVector vectorWithCGRect:?];
      v48 = *v14;
      v49 = v14[1];
      v51 = v14[2];
      v50 = v14[3];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __36__CILensModelCalculator_outputImage__block_invoke_101;
      v58[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      *&v58[4] = x;
      *&v58[5] = y;
      *&v58[6] = width;
      *&v58[7] = height;
      v67[0] = v46;
      v67[1] = cpuParams;
      v52 = self->inputImage;
      v67[2] = imageByClampingToExtent;
      v67[3] = v52;
      v67[4] = v47;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:5];
      v65[0] = @"kCIKernelOutputFormat";
      v66[0] = [MEMORY[0x1E696AD98] numberWithInt:2056];
      v66[1] = &unk_1F1085650;
      v65[1] = @"kCIKernelThreadgroupsPerGrid";
      v65[2] = @"kCIKernelThreadsPerThreadgroup";
      v66[2] = &unk_1F1085638;
      v54 = [v22 applyWithExtent:v58 roiCallback:v53 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v66, v65, 3), v48, v49, v51, v50}];
      if (v54)
      {
        v55 = v54;
        v64[0] = v20;
        v64[1] = v54;
        v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __36__CILensModelCalculator_outputImage__block_invoke_2;
        v57[3] = &unk_1E75C3518;
        v57[4] = v55;
        v20 = [CIImage imageWithArrayOfImages:v56 selector:v57];
      }
    }

    return [[[(CIImage *)v20 imageByCroppingToRect:0.0 imageByInsertingIntermediate:1.0] imageByClampingToExtent];
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

double __36__CILensModelCalculator_outputImage__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0.0;
  }

  else
  {
    return *(a1 + 32);
  }
}

double __36__CILensModelCalculator_outputImage__block_invoke_101(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0.0;
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t __36__CILensModelCalculator_outputImage__block_invoke_2(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 objectForKey:{@"kContextInfoIsMetal", "BOOLValue"}];
  if (result)
  {
    return *(a1 + 32) != 0;
  }

  return result;
}

@end