@interface CIDocumentEnhancer
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIDocumentEnhancer

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryColorEffect";
  v5[1] = @"CICategoryNonSquarePixels";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"13";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.15";
  v6[3] = @"inputAmount";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1083498;
  v4[1] = &unk_1F1083498;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F10834A8;
  v4[3] = &unk_1F10834B8;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F10834C8;
  v4[5] = @"CIAttributeTypeScalar";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  v178[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  inputAmount = self->inputAmount;
  if (!inputAmount)
  {
    return self->inputImage;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  [(NSNumber *)inputAmount floatValue];
  if (v12 < 0.0001)
  {
    return self->inputImage;
  }

  v179.origin.x = v8;
  v179.origin.y = v9;
  v179.size.width = v10;
  v179.size.height = v11;
  if (CGRectIsNull(v179))
  {
    return self->inputImage;
  }

  v180.origin.x = v8;
  v180.origin.y = v9;
  v180.size.width = v10;
  v180.size.height = v11;
  if (CGRectIsInfinite(v180))
  {
    return self->inputImage;
  }

  inputImage = self->inputImage;
  CGAffineTransformMakeTranslation(&v176, -v8, -v9);
  v15 = [[(CIImage *)inputImage imageByApplyingTransform:&v176] imageByCroppingToRect:0.0, 0.0, v10, v11];
  [(NSNumber *)self->inputAmount floatValue];
  v17 = fmax(v16, 0.0001) * 0.8;
  [(CIImage *)self->inputImage extent];
  v19 = v18;
  [(CIImage *)self->inputImage extent];
  v21 = v20;
  [(CIImage *)self->inputImage extent];
  if (v19 >= v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  v25 = 512.0;
  if (v24 <= 512.0)
  {
    [(CIImage *)self->inputImage extent];
    v27 = v26;
    [(CIImage *)self->inputImage extent];
    v29 = v28;
    [(CIImage *)self->inputImage extent];
    if (v27 >= v29)
    {
      v25 = v30;
    }
  }

  v31 = v25;
  v32 = v25;
  v33 = floor(log2(v32) * 0.75);
  if (v33 <= 0.0)
  {
    v33 = 0.0;
  }

  v34 = v33;
  v35 = (v31 * 1.4142);
  v36 = 1.0;
  if (v35 * 0.04 >= 1.0)
  {
    v37 = v35 * 0.04;
  }

  else
  {
    v37 = 1.0;
  }

  v38 = v35 * 0.004;
  if (v38 >= 1.0)
  {
    v36 = v38;
  }

  v39 = v17;
  v152 = v36;
  LODWORD(v145) = v34;
  if (v17 <= 1.0001)
  {
    if (v39 >= 0.9999)
    {
      v150 = 0.25;
      v148 = 3.0;
      v149 = 0.15;
      v40 = 0.054;
    }

    else
    {
      v41 = log2(v39 * 10000.0 + 1.0) / -13.2878566 + 1.0;
      v42 = v41 * 6.75 + 0.25;
      v150 = v42;
      v43 = v41 * 0.849999994 + 0.150000006;
      v148 = 3.0 - (v41 * 3.0);
      v149 = v43;
      v40 = 0.054 - (v41 * 0.054);
    }
  }

  else
  {
    v150 = 0.25 - ((v17 + -1.0) * 0.25);
    v148 = (((v17 + -1.0) * 3.0) * 3.0) + 3.0;
    v149 = 0.15 - ((v17 + -1.0) * 0.15);
    v40 = (v17 + -1.0) * 0.945999999 + 0.0540000014;
  }

  *(&v145 + 1) = v40;
  v44 = v37;
  v151 = v44;
  v45 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_CElumaToR, v145];
  [(CIImage *)v15 extent];
  v175 = v15;
  v50 = -[CIColorKernel applyWithExtent:arguments:](v45, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v175 count:1], v46, v47, v48, v49);
  v173 = @"inputExtent";
  [(CIImage *)v50 extent];
  v174 = [CIVector vectorWithCGRect:?];
  v51 = COERCE_DOUBLE(-[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v50, "imageByApplyingFilter:withInputParameters:", @"CIAreaMinMaxRed", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1]), "imageByClampingToExtent"));
  v52 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_DEcomputeInversionMask];
  v53 = *MEMORY[0x1E695F040];
  v54 = *(MEMORY[0x1E695F040] + 8);
  v55 = *(MEMORY[0x1E695F040] + 16);
  v56 = *(MEMORY[0x1E695F040] + 24);
  *&v176.a = v15;
  v176.b = v51;
  LODWORD(v57) = 3.0;
  *&v176.c = [MEMORY[0x1E696AD98] numberWithFloat:v57];
  LODWORD(v58) = 1000593162;
  *&v176.d = [MEMORY[0x1E696AD98] numberWithFloat:v58];
  v59 = -[CIColorKernel applyWithExtent:arguments:](v52, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v176 count:4], v53, v54, v55, v56);
  v171 = @"inputExtent";
  [(CIImage *)v15 extent];
  v172 = [CIVector vectorWithCGRect:?];
  v155 = -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v59, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1]), "imageByClampingToExtent");
  memset(&v176, 0, sizeof(v176));
  CGAffineTransformMakeScale(&v176, v32 / v10, v32 / v11);
  v170 = v176;
  v154 = v15;
  v60 = [(CIImage *)v15 imageByApplyingTransform:&v170];
  v61 = [CIKernel kernelWithInternalRepresentation:&CI::_DEmax4];
  v62 = v60;
  if (v146 >= 1)
  {
    v63 = v61;
    v64 = v146 + 1;
    v62 = v60;
    do
    {
      [(CIImage *)v62 extent];
      v66 = v65;
      v68 = v67;
      v70 = ceil(v69 * 0.5);
      v72 = ceil(v71 * 0.5);
      *&v170.a = v62;
      [(CIImage *)v62 extent];
      v74 = v73;
      [(CIImage *)v62 extent];
      *&v170.b = [CIVector vectorWithX:v74 Y:v75];
      v62 = -[CIKernel applyWithExtent:roiCallback:arguments:](v63, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_21, [MEMORY[0x1E695DEC8] arrayWithObjects:&v170 count:2], v66, v68, v70, v72);
      --v64;
    }

    while (v64 > 1);
  }

  v153 = v152;
  v168 = @"inputExtent";
  [(CIImage *)v62 extent];
  v169 = [CIVector vectorWithCGRect:?];
  v76 = -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v62, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1]), "imageByClampingToExtent");
  [(CIImage *)v60 extent];
  v77 = resample(v62, v181);
  v78 = [CIVector vectorWithX:v150 Y:v148 Z:v149 W:v147];
  v79 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_DEcreateForegroundMask];
  [(CIImage *)v60 extent];
  v167[0] = v60;
  v167[1] = v77;
  v167[2] = v76;
  v167[3] = v78;
  v84 = -[CIColorKernel applyWithExtent:arguments:](v79, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:4], v80, v81, v82, v83);
  [(CIImage *)v84 extent];
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = normalizedBlur(v84, 15.0);
  v94 = normalizedBlur(v84, 45.0);
  v95 = normalizedBlur(v84, 135.0);
  v96 = -[CIImage imageByCroppingToRect:]([(CIImage *)v93 imageByCompositingOverImage:[(CIImage *)v94 imageByCompositingOverImage:[(CIImage *)v95 imageByCompositingOverImage:[(CIImage *)normalizedBlur(v84 imageByCompositingOverImage:"imageByCompositingOverImage:", +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor whiteColor](CIColor, "whiteColor"))])]], "imageByCroppingToRect:", v86, v88, v90, v92];
  *&v97 = v151;
  if (v151 > 0.0)
  {
    v166[0] = v60;
    v165[0] = @"inputSource";
    v165[1] = @"inputSigmaSpace";
    v165[2] = @"inputSigmaRange";
    v166[1] = [MEMORY[0x1E696AD98] numberWithFloat:v97];
    v166[2] = &unk_1F10852B8;
    v96 = -[CIImage imageByApplyingFilter:withInputParameters:](v96, "imageByApplyingFilter:withInputParameters:", @"CICheapBilateral", [MEMORY[0x1E695DF20] dictionaryWithObjects:v166 forKeys:v165 count:3]);
  }

  CGAffineTransformMakeScale(&v170, v10 / v32, v11 / v32);
  v176 = v170;
  v98 = [(CIImage *)v96 imageByApplyingTransform:&v170];
  v99 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_DEWash];
  v164[0] = v154;
  v164[1] = v98;
  v100 = -[CIColorKernel applyWithExtent:arguments:](v99, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v164 count:2], 0.0, 0.0, v10, v11);
  v101 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_DE_compinv];
  [(CIImage *)v98 extent];
  *&v170.a = v98;
  v106 = -[CIColorKernel applyWithExtent:arguments:](v101, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v170 count:1], v102, v103, v104, v105);
  v177 = @"inputExtent";
  [(CIImage *)v98 extent];
  v178[0] = [CIVector vectorWithCGRect:?];
  v107 = -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v106, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [MEMORY[0x1E695DF20] dictionaryWithObjects:v178 forKeys:&v177 count:1]), "imageByClampingToExtent");
  v108 = self->inputImage;
  v162[0] = @"inputThreshold";
  v162[1] = @"inputSoftness";
  v163[0] = &unk_1F10852C8;
  v163[1] = &unk_1F10852D8;
  v162[2] = @"inputIntensity";
  v163[2] = &unk_1F10852E8;
  v109 = -[CIImage imageByApplyingFilter:withInputParameters:](v108, "imageByApplyingFilter:withInputParameters:", @"CIDesaturateShadows", [MEMORY[0x1E695DF20] dictionaryWithObjects:v163 forKeys:v162 count:3]);
  [(CIImage *)v109 extent];
  v111 = v110;
  [(CIImage *)v109 extent];
  CGAffineTransformMakeTranslation(&v170, v111, v112);
  v113 = [(CIImage *)v100 imageByApplyingTransform:&v170];
  [(CIImage *)v109 extent];
  v114 = conditionallyFilteredMaxThreshold([(CIImage *)v113 imageByCroppingToRect:?], v109, v107, 0.2);
  v160 = @"inputContrast";
  v161 = &unk_1F10852F8;
  v115 = -[CIImage imageByApplyingFilter:withInputParameters:](v109, "imageByApplyingFilter:withInputParameters:", @"CIColorControls", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1]);
  v158[0] = @"inputContrast";
  v158[1] = @"inputBrightness";
  v159[0] = &unk_1F1085308;
  v159[1] = &unk_1F1085318;
  v158[2] = @"inputSaturation";
  v159[2] = &unk_1F1085328;
  v116 = -[CIImage imageByApplyingFilter:withInputParameters:](v109, "imageByApplyingFilter:withInputParameters:", @"CIColorControls", [MEMORY[0x1E695DF20] dictionaryWithObjects:v159 forKeys:v158 count:3]);
  v117 = conditionallyFilteredMaxThreshold(v114, v115, v107, 0.2);
  v156[0] = @"inputThreshold";
  v156[1] = @"inputIntensity";
  v157[0] = &unk_1F10852C8;
  v157[1] = &unk_1F10852E8;
  v118 = -[CIImage imageByApplyingFilter:withInputParameters:](conditionallyFilteredMaxThreshold(v117, v116, v155, 0.18), "imageByApplyingFilter:withInputParameters:", @"CIDesaturateShadows", [MEMORY[0x1E695DF20] dictionaryWithObjects:v157 forKeys:v156 count:2]);
  v119 = [(CIImage *)v118 imageByApplyingGaussianBlurWithSigma:v153];
  v120 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_DE_sub];
  [(CIImage *)v118 extent];
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v128 = v127;
  [(CIImage *)v119 extent];
  v185.origin.x = v129;
  v185.origin.y = v130;
  v185.size.width = v131;
  v185.size.height = v132;
  v182.origin.x = v122;
  v182.origin.y = v124;
  v182.size.width = v126;
  v182.size.height = v128;
  v183 = CGRectUnion(v182, v185);
  *&v170.a = v118;
  *&v170.b = v119;
  v133 = COERCE_DOUBLE(-[CIColorKernel applyWithExtent:arguments:](v120, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v170 count:2], v183.origin.x, v183.origin.y, v183.size.width, v183.size.height));
  v134 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_DE_scaleAdd];
  [(CIImage *)v118 extent];
  v136 = v135;
  v138 = v137;
  v140 = v139;
  v142 = v141;
  *&v170.a = v118;
  v170.b = v133;
  LODWORD(v135) = 1041865114;
  *&v170.c = [MEMORY[0x1E696AD98] numberWithFloat:v135];
  v143 = -[CIImage imageByApplyingFilter:withInputParameters:](-[CIColorKernel applyWithExtent:arguments:](v134, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v170 count:3], v136, v138, v140, v142), "imageByApplyingFilter:withInputParameters:", @"CIContrastEnhancer", &unk_1F1082528);
  [(CIImage *)v109 extent];
  v144 = [(CIImage *)v143 imageByCroppingToRect:?];
  [(CIImage *)v109 extent];
  return resample(v144, v184);
}

@end