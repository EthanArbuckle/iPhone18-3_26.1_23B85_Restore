@interface CISparseRenderer
+ (id)customAttributes;
- (BOOL)_useD2XRenderer;
- (id)_kernel:(BOOL)a3 alpha:(BOOL)a4;
- (id)_lutKernel:(BOOL)a3 alpha:(BOOL)a4;
- (id)_packageParams:(BOOL)a3 extent:(CGRect)a4 image:(id)a5 haveAlpha:(BOOL)a6;
- (id)baseVecsLUT:(unsigned int)a3;
- (id)baseVecsLUTGenerator;
- (id)outputImage;
- (id)stepsLUT:(unsigned int)a3;
- (id)stepsLUTGenerator;
@end

@implementation CISparseRenderer

+ (id)customAttributes
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"inputScale";
  v6[0] = @"CIAttributeType";
  v6[1] = @"CIAttributeSliderMin";
  v7[0] = @"CIAttributeTypeScalar";
  v7[1] = &unk_1F1084738;
  v6[2] = @"CIAttributeSliderMax";
  v6[3] = @"CIAttributeDefault";
  v7[2] = &unk_1F10846F8;
  v7[3] = &unk_1F10846F8;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v8[1] = @"inputDraftMode";
  v9[0] = v2;
  v4[0] = @"CIAttributeType";
  v4[1] = @"CIAttributeSliderMin";
  v5[0] = @"CIAttributeTypeInteger";
  v5[1] = &unk_1F1082070;
  v4[2] = @"CIAttributeSliderMax";
  v4[3] = @"CIAttributeDefault";
  v5[2] = &unk_1F10820B8;
  v5[3] = &unk_1F1082070;
  v9[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
}

- (id)_packageParams:(BOOL)a3 extent:(CGRect)a4 image:(id)a5 haveAlpha:(BOOL)a6
{
  v73 = a3;
  v74 = a6;
  width = a4.size.width;
  height = a4.size.height;
  v77[6] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputApertureScaling floatValue:a4.origin.x];
  v9 = v8;
  v10 = v8;
  SDOFRenderingValue(&cfstr_Ringamplitude.isa, self->inputTuningParameters);
  v69 = v11;
  SDOFRenderingValue(&cfstr_Ringsharpness.isa, self->inputTuningParameters);
  v67 = v12;
  SDOFRenderingValue(&cfstr_Highlightboost.isa, self->inputTuningParameters);
  v66 = v13;
  SDOFRenderingValue(&cfstr_Relativeweight.isa, self->inputTuningParameters);
  v15 = v14;
  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  v17 = 0.5 / (v15 / v16);
  SDOFRenderingValue(&cfstr_Relativeweight.isa, self->inputTuningParameters);
  v19 = v17 * v18;
  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  v65 = v19 / v20;
  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  v22 = v21;
  SDOFRenderingValue(&cfstr_Shapeobstructi.isa, self->inputTuningParameters);
  v24 = v10 * v23 <= 1.0;
  v25 = 1.0;
  if (v24)
  {
    SDOFRenderingValue(&cfstr_Shapeobstructi.isa, self->inputTuningParameters);
    v25 = (v9 * v26);
  }

  v64 = v25;
  SDOFRenderingValue(&cfstr_Sharpradius.isa, self->inputTuningParameters);
  v61 = v27;
  SDOFRenderingValue(&cfstr_Basepixelweigh.isa, self->inputTuningParameters);
  v63 = v28;
  SDOFRenderingValue(&cfstr_Alphaepsilon.isa, self->inputTuningParameters);
  v62 = v29;
  v60 = 1.0 - v29;
  SDOFRenderingValue(&cfstr_Alphagain.isa, self->inputTuningParameters);
  v59 = v30;
  inputTuningParameters = self->inputTuningParameters;
  [(NSNumber *)self->inputScale floatValue];
  v33 = nRingsFromTuningParameters(inputTuningParameters, v32, [CIDepthBlurEffect getDraftMode:[(CISparseRenderer *)self inputDraftMode]], self->inputAperture);
  SDOFHighlightRecoveryValue(&cfstr_Blurradiust0.isa, self->inputTuningParameters);
  v35 = v22;
  v36 = v10 * v34 / v22;
  SDOFHighlightRecoveryValue(&cfstr_Blurradiust1.isa, self->inputTuningParameters);
  v38 = v10 * v37 / v35;
  v39 = 1.0 / (v38 - v36);
  v40 = -(v39 * v36);
  SDOFHighlightRecoveryValue(&cfstr_Mode.isa, self->inputTuningParameters);
  v42 = v41;
  SDOFHighlightRecoveryValue(&cfstr_Prefiltergain.isa, self->inputTuningParameters);
  v44 = v43;
  SDOFHighlightRecoveryValue(&cfstr_Weightgain.isa, self->inputTuningParameters);
  v46 = v45;
  SDOFHighlightRecoveryValue(&cfstr_Intensitygain.isa, self->inputTuningParameters);
  v48 = v47;
  v49 = [CIVector vectorWithX:v69 Y:v67 Z:v66 W:v17];
  v68 = [CIVector vectorWithX:v65 Y:v35 Z:v64 W:v61];
  v50 = [CIVector vectorWithX:v63 Y:v62 Z:v60 W:v59];
  v51 = [CIVector vectorWithX:v33 Y:v39 Z:v40 W:(3 * v33 * v33)];
  v52 = 0.0;
  if (v42 >= 0.0)
  {
    v52 = 1.0;
  }

  v70 = [CIVector vectorWithX:v52 Y:v44 Z:v46 W:v48];
  v53 = [CIVector vectorWithX:width Y:height Z:v74];
  v54 = MEMORY[0x1E695DF70];
  v77[0] = a5;
  v77[1] = v49;
  v77[2] = v68;
  v77[3] = v50;
  v77[4] = v51;
  v77[5] = [CIVector vectorWithX:width Y:height];
  v55 = [v54 arrayWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v77, 6)}];
  v56 = v55;
  if (v74)
  {
    [v55 insertObject:self->inputMatteImage atIndex:1];
  }

  v76[0] = a5;
  v76[1] = v49;
  v76[2] = v68;
  v76[3] = v50;
  v76[4] = v51;
  v76[5] = v70;
  v76[6] = v53;
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:7];
  if (v74)
  {
    inputMatteImage = self->inputMatteImage;
    v75[0] = a5;
    v75[1] = inputMatteImage;
    v75[2] = v49;
    v75[3] = v68;
    v75[4] = v50;
    v75[5] = v51;
    v75[6] = v70;
    v75[7] = v53;
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:8];
  }

  if (v73)
  {
    return v56;
  }

  return result;
}

- (BOOL)_useD2XRenderer
{
  SDOFRenderingValue(&cfstr_Ringamplitude.isa, self->inputTuningParameters);
  v4 = v3;
  SDOFRenderingValue(&cfstr_Shapeobstructi.isa, self->inputTuningParameters);
  if (v5 <= 1.0)
  {
    SDOFRenderingValue(&cfstr_Shapeobstructi.isa, self->inputTuningParameters);
    v6 = v7 != 0.0;
  }

  else
  {
    v6 = 1;
  }

  SDOFHighlightRecoveryValue(&cfstr_Weightgain.isa, self->inputTuningParameters);
  v9 = v8;
  SDOFHighlightRecoveryValue(&cfstr_Intensitygain.isa, self->inputTuningParameters);
  v11 = v10;
  SDOFRenderingValue(&cfstr_Alphagain.isa, self->inputTuningParameters);
  v13 = v12;
  SDOFRenderingValue(&cfstr_Alphaepsilon.isa, self->inputTuningParameters);
  v15 = v4 == 1.0 && !v6;
  if (!v15 || v9 != 0.0 || v11 != 0.0)
  {
    return 0;
  }

  result = 1;
  if (self->inputMatteImage)
  {
    if (v13 != 0.0 && v14 != 1.0)
    {
      return 0;
    }
  }

  return result;
}

- (id)stepsLUTGenerator
{
  v2 = SDOFV2MetalLibURL();

  return [(CIKernel *)CIColorKernel cachedKernelWithFunctionName:@"_sparserendering_stepLUT" fromMetalLibrary:v2 error:0];
}

- (id)baseVecsLUTGenerator
{
  v2 = SDOFV2MetalLibURL();

  return [(CIKernel *)CIColorKernel cachedKernelWithFunctionName:@"_sparserendering_baseVecLUT" fromMetalLibrary:v2 error:0];
}

- (id)stepsLUT:(unsigned int)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = 3 * a3 * a3;
  v4 = [(CISparseRenderer *)self stepsLUTGenerator];
  v5 = v3;
  v10[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v3];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{2056, @"kCIKernelOutputFormat"}];
  return [v4 applyWithExtent:v6 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v9, &v8, 1), 0.0, 0.0, v5, 1.0}];
}

- (id)baseVecsLUT:(unsigned int)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = 3 * a3 * a3;
  v4 = [(CISparseRenderer *)self baseVecsLUTGenerator];
  v7 = @"kCIKernelOutputFormat";
  v8[0] = [MEMORY[0x1E696AD98] numberWithInt:2054];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  return [v4 applyWithExtent:MEMORY[0x1E695E0F0] arguments:v5 options:{0.0, 0.0, v3, 1.0}];
}

- (id)_lutKernel:(BOOL)a3 alpha:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = SDOFV2MetalLibURL();
  v7 = @"_sparserendering_opt2x_sample_noAlphaLUT";
  if (v4)
  {
    v7 = @"_sparserendering_opt2x_sample_withAlphaLUT";
  }

  v8 = @"_sparserendering_sample_withAlphaLUT";
  if (!v4)
  {
    v8 = @"_sparserendering_sample_noAlphaLUT";
  }

  if (v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return [CIKernel cachedKernelWithFunctionName:v9 fromMetalLibrary:v6 error:0];
}

- (id)_kernel:(BOOL)a3 alpha:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = SDOFV2MetalLibURL();
  v7 = @"_sparserendering_opt2x_sample";
  if (v4)
  {
    v7 = @"_sparserendering_opt2x_sampleWithAlpha";
  }

  v8 = @"_sparserendering_sample_h";
  if (!v4)
  {
    v8 = @"_sparserendering_opt_sample_h";
  }

  if (v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return [CIKernel cachedKernelWithFunctionName:v9 fromMetalLibrary:v6 error:0];
}

- (id)outputImage
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = [(CISparseRenderer *)self _useD2XRenderer];
  SDOFRenderingValue(&cfstr_Alphaepsilon.isa, self->inputTuningParameters);
  v4 = &off_19CF22000;
  if (v5 == 1.0)
  {
    v6 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
  }

  else
  {
    SDOFRenderingValue(&cfstr_Alphagain.isa, self->inputTuningParameters);
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    if (v7 == 0.0 || (inputMatteImage = self->inputMatteImage) == 0 || ([(CIImage *)inputMatteImage extent], v9 <= 1.0))
    {
      v6 = 0;
    }

    else
    {
      [(CIImage *)self->inputImage extent];
      v6 = v10 > 1.0;
    }
  }

  v66 = v6;
  if ([CISparseRenderer outputImage]::onceToken != -1)
  {
    [CISparseRenderer outputImage];
  }

  inputTuningParameters = self->inputTuningParameters;
  [(NSNumber *)self->inputScale floatValue];
  v13 = nRingsFromTuningParameters(inputTuningParameters, v12, [CIDepthBlurEffect getDraftMode:[(CISparseRenderer *)self inputDraftMode]], self->inputAperture);
  v14 = &CI::print_graph_recursive<CI::Image,CI::ImageIndex,CI::Image::ImageStats>(__sFILE *,CI::Image const*,int,std::unordered_map<CI::ImageIndex,CI::Image::ImageStats> const&)::indent_str[784];
  if ([CISparseRenderer outputImage]::useLUTBasedImages == 1)
  {
    v15 = v13;
    v16 = [(CISparseRenderer *)self stepsLUT:v13];
    v17 = [(CISparseRenderer *)self baseVecsLUT:v15];
    v18 = [(CISparseRenderer *)self _lutKernel:v3 alpha:*(v64 + 24)];
  }

  else
  {
    v18 = [(CISparseRenderer *)self _kernel:v3 alpha:*(v64 + 24)];
    v17 = 0;
    v16 = 0;
  }

  [(CIImage *)self->inputImage extent];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(CIImage *)self->inputImage imageByClampingToExtent];
  v28 = [(CISparseRenderer *)self _packageParams:v3 extent:v27 image:*(v64 + 24) haveAlpha:v20, v22, v24, v26];
  v29 = v28;
  if ([CISparseRenderer outputImage]::useLUTBasedImages == 1)
  {
    v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v28, "count") + 2}];
    [v30 addObject:v16];
    [v30 addObject:v17];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v31 = [v29 countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v31)
    {
      v52 = v16;
      v53 = v17;
      v54 = v18;
      v32 = 0;
      v33 = *v60;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v60 != v33)
          {
            objc_enumerationMutation(v29);
          }

          v35 = *(*(&v59 + 1) + 8 * i);
          if (v35)
          {
            objc_opt_class();
            v36 = objc_opt_isKindOfClass() & 1;
            if (v36)
            {
              v37 = v32 + 1;
            }

            else
            {
              v37 = v32;
            }

            if (v36 && (v64[3] & 1) == 0 && v32 == 1)
            {
              v32 = 2;
            }

            else
            {
              [v30 addObject:{v35, v52, v53, v54}];
              v32 = v37;
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v31);
      v29 = v30;
      v18 = v54;
      v14 = CI::print_graph_recursive<CI::Image,CI::ImageIndex,CI::Image::ImageStats>(__sFILE *,CI::Image const*,int,std::unordered_map<CI::ImageIndex,CI::Image::ImageStats> const&)::indent_str + 784;
      v4 = &off_19CF22000;
      v16 = v52;
      v17 = v53;
    }

    else
    {
      v29 = v30;
      v4 = &off_19CF22000;
    }
  }

  v58[0] = 0;
  v58[1] = v58;
  v38 = *(v4 + 421);
  v58[2] = v38;
  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  if (v24 <= v26)
  {
    v40 = v26;
  }

  else
  {
    v40 = v24;
  }

  *&v58[3] = v40 * v39;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = v38;
  if (v16)
  {
    [v16 extent];
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v57[3] = v42;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = v38;
  if (v17)
  {
    [v17 extent];
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v56[3] = v44;
  v45 = *MEMORY[0x1E695F040];
  v46 = *(MEMORY[0x1E695F040] + 8);
  v48 = *(MEMORY[0x1E695F040] + 16);
  v47 = *(MEMORY[0x1E695F040] + 24);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __31__CISparseRenderer_outputImage__block_invoke_2;
  v55[3] = &unk_1E75C38B0;
  v55[4] = v57;
  v55[5] = v56;
  v55[6] = &v63;
  v55[7] = v58;
  v67 = @"kCIKernelOutputFormat";
  v68 = [MEMORY[0x1E696AD98] numberWithInt:{2056, v52, v53, v54}];
  v49 = [v18 applyWithExtent:v55 roiCallback:v29 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v68, &v67, 1), v45, v46, v48, v47}];
  v50 = v49;
  if (v14[736] == 1)
  {
    v50 = [v49 imageByCroppingToRect:{v20, v22, v24, v26}];
  }

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v58, 8);
  _Block_object_dispose(&v63, 8);
  return v50;
}

uint64_t __31__CISparseRenderer_outputImage__block_invoke()
{
  v0 = getenv("CI_SDOF_LUT");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = [CISparseRenderer outputImage]::useLUTBasedImages;
  }

  [CISparseRenderer outputImage]::useLUTBasedImages = result != 0;
  return result;
}

double __31__CISparseRenderer_outputImage__block_invoke_2(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6)
{
  if ([CISparseRenderer outputImage]::useLUTBasedImages == 1 && a2 < 2)
  {
    return 0.0;
  }

  if ([CISparseRenderer outputImage]::useLUTBasedImages)
  {
    v6 = a2 - 2;
  }

  else
  {
    v6 = a2;
  }

  if (v6 == 1 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    return *MEMORY[0x1E695F058];
  }

  v7 = -*(*(*(a1 + 56) + 8) + 24);
  *&result = CGRectInset(*&a3, v7, v7);
  return result;
}

@end