@interface CIModifyBlurmap
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIModifyBlurmap

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryColorAdjustment";
  v3[1] = @"CICategoryStillImage";
  v3[2] = @"CICategoryBuiltIn";
  v3[3] = @"CICategoryApplePrivate";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v5[1] = @"13";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.15";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v179 = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  v4 = [CIImage imageWithColor:[CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0]];
  [(CIImage *)inputImage extent];
  v5 = [(CIImage *)v4 imageByCroppingToRect:?];
  if (inputImage)
  {
    v6 = v5;
    if (self->inputPersonAlpha)
    {
      v176 = *byte_19CF23680;
      v177 = unk_19CF236B0;
      v178 = 0x3FB0000000000000;
      v7 = [CIVector vectorWithValues:&v176 count:9];
      [(CIImage *)self->inputPersonAlpha extent];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(CIImage *)self->inputPersonAlpha imageByClampingToExtent];
      v174 = @"inputWeights";
      v175 = v7;
      v17 = -[CIImage imageByCroppingToRect:](-[CIImage imageByApplyingFilter:withInputParameters:](v16, "imageByApplyingFilter:withInputParameters:", @"CIConvolution3X3", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1]), "imageByCroppingToRect:", v9, v11, v13, v15);
    }

    else
    {
      v17 = 0;
    }

    [(NSNumber *)self->inputScale floatValue];
    v20 = v19;
    memset(&v176, 0, sizeof(v176));
    CGAffineTransformMakeScale(&v176, v19, v19);
    v21 = v20 == 1.0 || v17 == 0;
    v22 = v17;
    if (!v21)
    {
      v156 = v176;
      v22 = [(CIImage *)v17 imageByApplyingTransform:&v156];
    }

    inputHairAlpha = self->inputHairAlpha;
    if (v20 != 1.0 && inputHairAlpha)
    {
      v156 = v176;
      inputHairAlpha = [(CIImage *)inputHairAlpha imageByApplyingTransform:&v156];
    }

    v24 = v6;
    v25 = v6;
    if (v22)
    {
      [(NSNumber *)self->inputPersonMaxBlur floatValue];
      v24 = v6;
      v25 = v6;
      if (v26 > 0.0)
      {
        [(NSNumber *)self->inputPersonMaxBlur floatValue];
        v28 = v27;
        [(NSNumber *)self->inputDistanceAdd floatValue];
        v30 = v28 * v29;
        [(NSNumber *)self->inputApertureScaling floatValue];
        *&v32 = v30 * v31;
        inputPersonDistance = self->inputPersonDistance;
        v172[0] = @"inputDistance";
        v172[1] = @"inputThreshold";
        inputPersonThreshold = self->inputPersonThreshold;
        v173[0] = inputPersonDistance;
        v173[1] = inputPersonThreshold;
        v172[2] = @"inputScalingFactor";
        v173[2] = [MEMORY[0x1E696AD98] numberWithFloat:v32];
        v25 = -[CIImage imageByApplyingFilter:withInputParameters:](v22, "imageByApplyingFilter:withInputParameters:", @"CIBlurmapRefinementDistanceDelta", [MEMORY[0x1E695DF20] dictionaryWithObjects:v173 forKeys:v172 count:3]);
        inputPersonAdditive = self->inputPersonAdditive;
        v170[0] = @"inputAddBlur";
        v170[1] = @"inputRemoveBlur";
        inputPersonSubtractive = self->inputPersonSubtractive;
        v171[0] = inputPersonAdditive;
        v171[1] = inputPersonSubtractive;
        inputApertureScaling = self->inputApertureScaling;
        v170[2] = @"inputApertureScaling";
        v170[3] = @"inputMaxBlur";
        inputPersonMaxBlur = self->inputPersonMaxBlur;
        v171[2] = inputApertureScaling;
        v171[3] = inputPersonMaxBlur;
        v24 = -[CIImage imageByApplyingFilter:withInputParameters:](v22, "imageByApplyingFilter:withInputParameters:", @"CIFusionDelta", [MEMORY[0x1E695DF20] dictionaryWithObjects:v171 forKeys:v170 count:4]);
      }
    }

    v153 = v24;
    if (inputHairAlpha && ([(NSNumber *)self->inputHairMaxBlur floatValue], v39 > 0.0))
    {
      [(NSNumber *)self->inputHairMaxBlur floatValue];
      v41 = v40;
      [(NSNumber *)self->inputDistanceAdd floatValue];
      v43 = v41 * v42;
      [(NSNumber *)self->inputApertureScaling floatValue];
      *&v45 = v43 * v44;
      inputHairDistance = self->inputHairDistance;
      v168[0] = @"inputDistance";
      v168[1] = @"inputThreshold";
      inputHairThreshold = self->inputHairThreshold;
      v169[0] = inputHairDistance;
      v169[1] = inputHairThreshold;
      v168[2] = @"inputScalingFactor";
      v169[2] = [MEMORY[0x1E696AD98] numberWithFloat:v45];
      v152 = -[CIImage imageByApplyingFilter:withInputParameters:](inputHairAlpha, "imageByApplyingFilter:withInputParameters:", @"CIBlurmapRefinementDistanceDelta", [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:v168 count:3]);
      if (v22)
      {
        inputHairAdditive = self->inputHairAdditive;
        v166[0] = @"inputSecondaryImage";
        v166[1] = @"inputAdditive";
        inputHairSubtractive = self->inputHairSubtractive;
        v167[0] = v22;
        v167[1] = inputHairAdditive;
        v50 = self->inputApertureScaling;
        v166[2] = @"inputSubtractive";
        v166[3] = @"inputApertureScaling";
        inputHairMaxBlur = self->inputHairMaxBlur;
        v167[2] = inputHairSubtractive;
        v167[3] = v50;
        v166[4] = @"inputMaxBlur";
        v166[5] = @"inputProtectStrength";
        inputProtectBodyStrength = self->inputProtectBodyStrength;
        v167[4] = inputHairMaxBlur;
        v167[5] = inputProtectBodyStrength;
        v53 = -[CIImage imageByApplyingFilter:withInputParameters:](inputHairAlpha, "imageByApplyingFilter:withInputParameters:", @"CIFusionTwoImagesDelta", [MEMORY[0x1E695DF20] dictionaryWithObjects:v167 forKeys:v166 count:6]);
      }

      else
      {
        v53 = v6;
      }

      v54 = 0x1E695D000uLL;
    }

    else
    {
      v53 = v6;
      v152 = v6;
      v54 = 0x1E695D000;
    }

    if (outputImage_onceToken != -1)
    {
      [CIModifyBlurmap outputImage];
    }

    if (!outputImage_calculatorKernel)
    {
      [CIModifyBlurmap outputImage];
    }

    if (!outputImage_modifyBlurmapKernel)
    {
      [CIModifyBlurmap outputImage];
    }

    if (!outputImage_combineAllDeltasKernel)
    {
      [CIModifyBlurmap outputImage];
    }

    v151 = inputImage;
    [(NSNumber *)self->inputEyeProtectionOvalDimsDistanceScale floatValue];
    v56 = v55;
    [(NSNumber *)self->inputEyeProtectionOvalDimsDistanceOffset floatValue];
    v58 = v57;
    [(NSNumber *)self->inputEyeProtectionOvalDimsRadiusHorizontal floatValue];
    v60 = v59;
    [(NSNumber *)self->inputEyeProtectionOvalDimsRadiusVertical floatValue];
    v62 = [CIVector vectorWithX:v56 Y:v58 Z:v60 W:v61];
    if ([(NSNumber *)self->inputEyeProtectionMaxFaces intValue]>= 5)
    {
      [CIModifyBlurmap outputImage];
    }

    v148 = v17;
    v149 = v62;
    [(NSNumber *)self->inputEyeProtectionFaceWeightsSmoothStepMin floatValue];
    v64 = v63;
    [(NSNumber *)self->inputEyeProtectionFaceWeightsSmoothStepMax floatValue];
    v66 = v65;
    v67 = [(NSNumber *)self->inputEyeProtectionMaxFaces intValue];
    [(NSNumber *)self->inputEyeProtectionSubtractiveMaxBlur floatValue];
    v69 = [CIVector vectorWithX:v64 Y:v66 Z:v67 W:v68];
    v70 = addPoints(self->inputLeftEyeX, self->inputLeftEyeY, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    v74 = addPoints(self->inputRightEyeX, self->inputRightEyeY, v70, v71, v72, v73);
    v181.origin.x = addPoints(self->inputFaceMidPointX, self->inputFaceMidPointY, v74, v75, v76, v77);
    v182 = CGRectIntegral(v181);
    v183 = CGRectInset(v182, -1.0, -1.0);
    height = v183.size.height;
    x = v183.origin.x;
    y = v183.origin.y;
    width = v183.size.width;
    inputLeftEyeX = self->inputLeftEyeX;
    inputLeftEyeY = self->inputLeftEyeY;
    v165[0] = v151;
    v165[1] = inputLeftEyeX;
    inputRightEyeX = self->inputRightEyeX;
    inputRightEyeY = self->inputRightEyeY;
    v165[2] = inputLeftEyeY;
    v165[3] = inputRightEyeX;
    inputFaceMidPointX = self->inputFaceMidPointX;
    inputFaceMidPointY = self->inputFaceMidPointY;
    v165[4] = inputRightEyeY;
    v165[5] = inputFaceMidPointX;
    v165[6] = inputFaceMidPointY;
    v165[7] = v149;
    v165[8] = v69;
    v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:9];
    v89 = outputImage_calculatorKernel;
    v155[0] = MEMORY[0x1E69E9820];
    v155[1] = 3221225472;
    v155[2] = __30__CIModifyBlurmap_outputImage__block_invoke_2;
    v155[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    *&v155[4] = x;
    *&v155[5] = y;
    *&v155[6] = width;
    *&v155[7] = height;
    v163 = @"kCIKernelOutputFormat";
    v164 = [MEMORY[0x1E696AD98] numberWithInt:2056];
    v90 = [v89 applyWithExtent:v155 roiCallback:v88 arguments:objc_msgSend(*(v54 + 3872) options:{"dictionaryWithObjects:forKeys:count:", &v164, &v163, 1), 0.0, 0.0, 7.0, 1.0}];
    if (!v90)
    {
      [CIModifyBlurmap outputImage];
    }

    v150 = [v90 _imageByRenderingToIntermediate];
    [(NSNumber *)self->inputSmoothstepMin floatValue];
    v92 = v91;
    [(NSNumber *)self->inputSmoothstepMax floatValue];
    v94 = v93;
    [(NSNumber *)self->inputMaxBlur floatValue];
    v96 = v95;
    [(NSNumber *)self->inputRelativeApertureScalingStrength floatValue];
    v147 = [CIVector vectorWithX:v92 Y:v94 Z:v96 W:v97];
    [(NSNumber *)self->inputEyeProtectionPersonMaskSmoothStepMin floatValue];
    v99 = v98;
    [(NSNumber *)self->inputEyeProtectionPersonMaskSmoothStepMax floatValue];
    v101 = v100;
    [(NSNumber *)self->inputEyeProtectionPreventStrength floatValue];
    v103 = v102;
    [(NSNumber *)self->inputRelativeApertureScalingStrength floatValue];
    v146 = [CIVector vectorWithX:v99 Y:v101 Z:v103 W:v104];
    [(NSNumber *)self->inputEyeProtectionSubtractiveApertureScaling floatValue];
    v106 = v105;
    [(NSNumber *)self->inputEyeProtectionSubtractiveMaxBlur floatValue];
    v108 = v107;
    [(NSNumber *)self->inputEyeProtectionOvalFallOffSmoothStepMin floatValue];
    v110 = v109;
    [(NSNumber *)self->inputEyeProtectionOvalFallOffSmoothStepMax floatValue];
    v112 = [CIVector vectorWithX:v106 Y:v108 Z:v110 W:v111];
    v162[0] = v53;
    v162[1] = v153;
    v162[2] = v152;
    v162[3] = v25;
    inputRelativeApertureScalingStrength = self->inputRelativeApertureScalingStrength;
    v162[4] = self->inputFaceMaskDeltaImage;
    v162[5] = inputRelativeApertureScalingStrength;
    v162[6] = self->inputApertureScaling;
    v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:7];
    v115 = outputImage_combineAllDeltasKernel;
    [(CIImage *)v151 extent];
    v117 = v116;
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v160[0] = @"kCIKernelOutputFormat";
    v124 = [MEMORY[0x1E696AD98] numberWithInt:2053];
    v160[1] = @"kCIImageAlphaOne";
    v161[0] = v124;
    v161[1] = MEMORY[0x1E695E118];
    v125 = [v115 applyWithExtent:v114 arguments:objc_msgSend(*(v54 + 3872) options:{"dictionaryWithObjects:forKeys:count:", v161, v160, 2), v117, v119, v121, v123}];
    v159[0] = self->inputImage;
    v159[1] = v150;
    v126 = v6;
    if (v148)
    {
      v126 = v148;
    }

    v159[2] = v125;
    v159[3] = v126;
    v159[4] = v147;
    v159[5] = v146;
    v159[6] = v112;
    v127 = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:7];
    [v150 extent];
    v129 = v128;
    v131 = v130;
    v133 = v132;
    v135 = v134;
    v136 = outputImage_modifyBlurmapKernel;
    [(CIImage *)self->inputImage extent];
    v138 = v137;
    v140 = v139;
    v142 = v141;
    v144 = v143;
    v154[0] = MEMORY[0x1E69E9820];
    v154[1] = 3221225472;
    v154[2] = __30__CIModifyBlurmap_outputImage__block_invoke_3;
    v154[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v154[4] = v129;
    v154[5] = v131;
    v154[6] = v133;
    v154[7] = v135;
    v157[0] = @"kCIKernelOutputFormat";
    v145 = [MEMORY[0x1E696AD98] numberWithInt:2053];
    v157[1] = @"kCIImageAlphaOne";
    v158[0] = v145;
    v158[1] = MEMORY[0x1E695E118];
    return [v136 applyWithExtent:v154 roiCallback:v127 arguments:objc_msgSend(*(v54 + 3872) options:{"dictionaryWithObjects:forKeys:count:", v158, v157, 2), v138, v140, v142, v144}];
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

id __30__CIModifyBlurmap_outputImage__block_invoke()
{
  outputImage_calculatorKernel = [CIKernel SDOFV2MetalKernelNamed:@"_eyeProtectionFaceCalculator"];
  outputImage_modifyBlurmapKernel = [CIKernel SDOFV2MetalKernelNamed:@"_modifyBlurmap"];
  result = [CIColorKernel SDOFV2MetalKernelNamed:@"_combineAllDeltas"];
  outputImage_combineAllDeltasKernel = result;
  return result;
}

double __30__CIModifyBlurmap_outputImage__block_invoke_3(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return *(a1 + 32);
  }

  return result;
}

@end