@interface CIPortraitBlurCombiner
- (id)_blendKernel:(BOOL)a3;
- (id)_ourBlendKernelMetal;
- (id)outputImage;
@end

@implementation CIPortraitBlurCombiner

- (id)_blendKernel:(BOOL)a3
{
  v3 = a3;
  v4 = SDOFV2MetalLibURL();
  if (v3)
  {
    v5 = @"_CIPortraitBlurBlendWithMaskFromAlphaWithMatte";
  }

  else
  {
    v5 = @"_CIPortraitBlurBlendWithMaskFromAlphaM";
  }

  return [(CIKernel *)CIColorKernel cachedKernelWithFunctionName:v5 fromMetalLibrary:v4 error:0];
}

- (id)_ourBlendKernelMetal
{
  if ([CIPortraitBlurCombiner _ourBlendKernelMetal]::onceToken != -1)
  {
    [CIPortraitBlurCombiner _ourBlendKernelMetal];
  }

  return [CIPortraitBlurCombiner _ourBlendKernelMetal]::k;
}

id __46__CIPortraitBlurCombiner__ourBlendKernelMetal__block_invoke()
{
  result = [CIColorKernel SDOFV2MetalKernelNamed:@"_CIPortraitBlurBlendWithMaskFromAlphaM"];
  [CIPortraitBlurCombiner _ourBlendKernelMetal]::k = result;
  return result;
}

- (id)outputImage
{
  v89[4] = *MEMORY[0x1E69E9840];
  SDOFRenderingValue(&cfstr_Alphagain.isa, self->inputTuningParameters);
  v4 = v3;
  SDOFRenderingValue(&cfstr_Alphaepsilon.isa, self->inputTuningParameters);
  v6 = v5;
  [(CIImage *)self->inputBlurImage extent];
  v8 = v7;
  inputMatteImage = self->inputMatteImage;
  if (!inputMatteImage || ([(CIImage *)inputMatteImage extent], v10 <= 1.0) || ([(CIImage *)self->inputMatteImage extent], v11 == 0.0))
  {
    v12 = 0;
  }

  else
  {
    v12 = self->inputMatteImage;
  }

  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  v14 = v13;
  SDOFRenderingValue(&cfstr_Sharpradius.isa, self->inputTuningParameters);
  v16 = v15;
  SDOFRenderingValue(&cfstr_Softradius.isa, self->inputTuningParameters);
  v18 = [CIVector vectorWithX:v14 Y:v16 Z:v17 W:v8];
  [(CIImage *)self->inputImage extent];
  v20 = v19;
  [(CIImage *)self->inputBlurImage extent];
  *&v16 = v20 / v21;
  [(CIImage *)self->inputImage extent];
  v23 = v22;
  [(CIImage *)self->inputBlurImage extent];
  v25 = v23 / v24;
  memset(&v82, 0, sizeof(v82));
  CGAffineTransformMakeScale(&v82, *&v16, v25);
  inputBlurImage = self->inputBlurImage;
  v81 = v82;
  v27 = [(CIImage *)inputBlurImage imageByApplyingTransform:&v81];
  v28 = 0;
  if (v4 != 0.0 && v6 != 0.0 && v12)
  {
    [(CIImage *)self->inputImage extent];
    v30 = v29;
    [(CIImage *)v12 extent];
    v32 = v30 / v31;
    [(CIImage *)self->inputImage extent];
    v34 = v33;
    [(CIImage *)v12 extent];
    v36 = v34 / v35;
    memset(&v81, 0, sizeof(v81));
    CGAffineTransformMakeScale(&v81, v32, v36);
    v80 = v81;
    v28 = [(CIImage *)v12 imageByApplyingTransform:&v80];
  }

  SDOFRenderingValue(&cfstr_Blendingquarte.isa, self->inputTuningParameters);
  v38 = v37;
  SDOFRenderingValue(&cfstr_Blendingfullre.isa, self->inputTuningParameters);
  v39 = fabsf(v38) < 0.001;
  if (fabsf(v40) >= 0.001)
  {
    v39 = 0;
  }

  if (!v28 || v39)
  {
    v51 = [(CIPortraitBlurCombiner *)self _ourBlendKernelMetal];
    [(CIImage *)self->inputImage extent];
    v53 = v63;
    v55 = v64;
    v57 = v65;
    v59 = v66;
    v83[0] = self->inputImage;
    v83[1] = v27;
    v83[2] = v18;
    v60 = MEMORY[0x1E695DEC8];
    v61 = v83;
    v62 = 3;
    return [v51 applyWithExtent:objc_msgSend(v60 arguments:{"arrayWithObjects:count:", v61, v62), v53, v55, v57, v59}];
  }

  SDOFRenderingValue(&cfstr_Blendingquarte.isa, self->inputTuningParameters);
  v42 = v41;
  SDOFRenderingValue(&cfstr_Blendingfullre.isa, self->inputTuningParameters);
  v44 = v43;
  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  v46 = (v45 * v8);
  SDOFRenderingValue(&cfstr_Sharpradius.isa, self->inputTuningParameters);
  v48 = v47;
  SDOFRenderingValue(&cfstr_Softradius.isa, self->inputTuningParameters);
  v50 = [CIVector vectorWithX:v46 Y:v48 Z:v49 W:v44];
  if (vabds_f32(v42, v44) < 0.001)
  {
    v51 = [(CIPortraitBlurCombiner *)self nonMetalKernel];
    [(CIImage *)self->inputImage extent];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v89[0] = self->inputImage;
    v89[1] = v27;
    v89[2] = v28;
    v89[3] = v50;
    v60 = MEMORY[0x1E695DEC8];
    v61 = v89;
    v62 = 4;
    return [v51 applyWithExtent:objc_msgSend(v60 arguments:{"arrayWithObjects:count:", v61, v62), v53, v55, v57, v59}];
  }

  v68 = [CIImage imageYCC444:self->inputImage matrix:709 fullRange:1 colorSpace:[(CIImage *)self->inputImage colorSpace]];
  v69 = [(CIPortraitBlurCombiner *)self nonMetalKernelYCC];
  [(CIImage *)self->inputImage extent];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v88[0] = v68;
  v88[1] = v27;
  v88[2] = v28;
  v88[3] = v50;
  *&v70 = v42;
  v88[4] = [MEMORY[0x1E696AD98] numberWithFloat:v70];
  v78 = [v69 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v88, 5), v71, v73, v75, v77}];
  v86 = @"inputBiasVector";
  v87 = [CIVector vectorWithX:0.0 Y:0.501960814 Z:0.501960814];
  v79 = [v78 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v87, &v86, 1)}];
  v84[0] = @"inputRVector";
  v85[0] = [CIVector vectorWithX:0.212599993 Y:0.715200007 Z:0.0722000003];
  v84[1] = @"inputGVector";
  v85[1] = [CIVector vectorWithX:-0.114122704 Y:-0.383916527 Z:0.498039216];
  v84[2] = @"inputBVector";
  v85[2] = [CIVector vectorWithX:0.498039216 Y:-0.452372015 Z:-0.0456672079];
  return [v79 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v85, v84, 3)}];
}

@end