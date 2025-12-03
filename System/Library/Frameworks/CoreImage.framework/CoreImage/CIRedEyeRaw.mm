@interface CIRedEyeRaw
- (id)irisProtectionMaskWithThresholdIris:(float)iris thresholdSclera:(float)sclera thresholdSkin:(float)skin;
- (id)outputImage;
- (id)skinProtectionMaskWithThreshold:(float)threshold;
- (void)outputImage;
@end

@implementation CIRedEyeRaw

- (id)irisProtectionMaskWithThresholdIris:(float)iris thresholdSclera:(float)sclera thresholdSkin:(float)skin
{
  v22[6] = *MEMORY[0x1E69E9840];
  v9 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_extract_iris];
  [(CIImage *)[(CIRedEyeRaw *)self inputIrisMask] extent];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v22[0] = [(CIRedEyeRaw *)self inputIrisMask];
  v22[1] = [(CIRedEyeRaw *)self inputScleraMask];
  v22[2] = [(CIRedEyeRaw *)self inputSkinMask];
  *&v18 = iris;
  v22[3] = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  *&v19 = sclera;
  v22[4] = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  *&v20 = skin;
  v22[5] = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  return -[CIColorKernel applyWithExtent:arguments:](v9, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:6], v11, v13, v15, v17);
}

- (id)skinProtectionMaskWithThreshold:(float)threshold
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_extract_skin];
  [(CIImage *)[(CIRedEyeRaw *)self inputSkinMask] extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v16[0] = [(CIRedEyeRaw *)self inputSkinMask];
  *&v14 = threshold;
  v16[1] = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  return -[CIColorKernel applyWithExtent:arguments:](v5, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2], v7, v9, v11, v13);
}

- (id)outputImage
{
  v652[2] = *MEMORY[0x1E69E9840];
  [(CIVector *)self->inputOriginLeft X];
  v574.origin.x = v3;
  [(CIVector *)self->inputOriginLeft Y];
  v571 = v4;
  [(CIVector *)self->inputSize X];
  v572 = v5;
  [(CIVector *)self->inputSize Y];
  v573 = v6;
  [(CIVector *)self->inputOriginRight X];
  v568 = v7;
  [(CIVector *)self->inputOriginRight Y];
  v9 = v8;
  [(CIVector *)self->inputSize X];
  v569 = v10;
  [(CIVector *)self->inputSize Y];
  v12 = v11;
  p_inputAxisLongLeft = &self->inputAxisLongLeft;
  [(CIVector *)self->inputAxisLongLeft _norm];
  v14 = v13;
  [(CIVector *)self->inputAxisLongRight _norm];
  v16 = v15;
  [(CIVector *)self->inputAxisShortLeft _norm];
  v534 = v17;
  p_inputAxisShortRight = &self->inputAxisShortRight;
  [(CIVector *)self->inputAxisShortRight _norm];
  LODWORD(v574.origin.y) = v18;
  if (v14 > v16)
  {
    v16 = v14;
  }

  [(NSNumber *)self->inputScale floatValue];
  v20 = CIRedEyeUtilsSizeFromScale(v16 * v19);
  v21 = tagForEye(v20);
  if (CI_LOG_DUALRED())
  {
    v22 = ci_logger_api();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(CIRedEyeRaw *)v21 outputImage];
    }
  }

  [(NSNumber *)self->inputAbortDensityDiff floatValue];
  v514 = v23;
  [(NSNumber *)self->inputAbortDensityLo floatValue];
  v532 = v24;
  [(NSNumber *)self->inputSpecMax floatValue];
  v503 = v25;
  [(NSNumber *)self->inputSpecular floatValue];
  v537 = v26;
  [(NSNumber *)self->inputSpecMin floatValue];
  v28 = v27;
  [(NSNumber *)self->inputClosingErosion floatValue];
  v509 = v29;
  [(NSNumber *)self->inputClosingDilation floatValue];
  v558 = v30;
  [(NSNumber *)self->inputSplat floatValue];
  v528 = v31;
  [(CIVector *)self->inputSize X];
  v530 = v32;
  [(CIVector *)self->inputSize Y];
  v527 = v33;
  [(NSNumber *)self->inputRepairDarken floatValue];
  v35 = v34;
  [(NSNumber *)self->inputRepairDither floatValue];
  v37 = v36;
  [(NSNumber *)self->inputRepairChroma floatValue];
  v538 = v38;
  [(NSNumber *)self->inputRadiusRepair floatValue];
  v548 = v39;
  [(NSNumber *)self->inputRepairPercentile floatValue];
  v541 = v40;
  [(NSNumber *)self->inputRepairPercent floatValue];
  v42 = v41;
  [(NSNumber *)self->inputClipMin floatValue];
  v540 = v43;
  [(NSNumber *)self->inputCircularity floatValue];
  v539 = v44;
  [(NSNumber *)self->inputFalloffRepair floatValue];
  v546 = v45;
  [(NSNumber *)self->inputWhiteCutoff floatValue];
  v47 = v46;
  [(NSNumber *)self->inputSpecArea floatValue];
  v524 = v48;
  [(NSNumber *)self->inputSpecularCutoff floatValue];
  v551 = v49;
  [(NSNumber *)self->inputCentroidGamma floatValue];
  v543 = v50;
  [(NSNumber *)self->inputCentroidRadius floatValue];
  v542 = v51;
  [(NSNumber *)self->inputSpecIntensity floatValue];
  v536 = v52;
  [(NSNumber *)self->inputScleraThreshold floatValue];
  v505 = v53;
  [(NSNumber *)self->inputMinInterDispersion floatValue];
  v511 = v54;
  [(NSNumber *)self->inputMaxInterDispersion floatValue];
  v512 = v55;
  [(NSNumber *)self->inputMinMaskDiff floatValue];
  v513 = v56;
  [(NSNumber *)self->inputGlintThreshold floatValue];
  v502 = v57;
  v501 = v57;
  if (v57 > 0.00001)
  {
    v47 = 4.0;
  }

  [(NSNumber *)self->inputTargetClosing floatValue];
  v506 = v58;
  if (v20 == 90)
  {
    v507 = v37 * 0.5;
    v522 = v42 + -0.02;
    v558 = v558 * 10.0;
    v47 = v47 * 0.5;
    v65 = v28;
    v504 = 0.0;
    v515 = 0.0;
    v517 = 1.0;
    v519 = 1.0;
    v66 = 1028443341;
    v551 = 0.0;
  }

  else if (v20 == 35)
  {
    v59 = v37 * 0.3;
    v507 = v59;
    v60 = v539 * 0.4;
    v519 = (v16 + -35.0) / 55.0;
    v539 = interpolate(v60, v539 * 0.75, v519);
    v61 = v540 * 0.55;
    v540 = v61;
    v543 = v543 * 0.75;
    v522 = v42 * 0.95;
    v62 = v541 * 0.9;
    v541 = v62;
    v63 = v548 * 0.9;
    v548 = v63;
    v538 = v538 * 0.75;
    if ((v35 + v35) <= 1.0)
    {
      v35 = v35 + v35;
    }

    else
    {
      v35 = 1.0;
    }

    v64 = v546 + 0.3;
    v546 = v64;
    v65 = 0.0;
    v517 = 2.0;
    v66 = 1036831949;
    v515 = 0.8;
    v504 = 0.0;
  }

  else
  {
    v519 = v16 / 35.0;
    [(NSNumber *)self->inputCentroidRadiusSmall floatValue];
    v542 = v67;
    v68 = v37 * 0.3;
    v507 = v68;
    v539 = v539 * 0.25;
    v522 = v42 * 0.2;
    v69 = v541 * 0.9;
    v541 = v69;
    v70 = v537 * 0.2;
    v548 = v548 * 0.75;
    v540 = v540 * 0.75;
    v35 = v35 * 0.75;
    v536 = v536 * 0.75;
    v71 = v546 + 0.2;
    v546 = v71;
    v504 = v70;
    v65 = 0.0;
    v538 = 0.0;
    v517 = 2.0;
    v66 = 1036831949;
    v515 = 0.8;
    v537 = 0.0;
  }

  v554 = 1.0;
  if (v47 <= 1.0)
  {
    v72 = v47;
  }

  else
  {
    v72 = 1.0;
  }

  v545 = v12;
  v570 = v9;
  p_inputAxisShortLeft = &self->inputAxisShortLeft;
  p_inputAxisLongRight = &self->inputAxisLongRight;
  v508 = v35;
  v535 = v16;
  v510 = v65;
  v521 = v66;
  if ([(NSNumber *)self->inputUseFaceSegmentationMask BOOLValue])
  {
    if (v20 == 90)
    {
      v73 = &OBJC_IVAR___CIRedEyeRaw_inputSkinProtectionThresholdLarge;
      v74 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdSkinLarge;
      v75 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdScleraLarge;
      v76 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdIrisLarge;
      v77 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdSkinLarge;
      v78 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdScleraLarge;
      v79 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdIrisLarge;
    }

    else if (v20 == 35)
    {
      v73 = &OBJC_IVAR___CIRedEyeRaw_inputSkinProtectionThresholdMedium;
      v74 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdSkinMedium;
      v75 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdScleraMedium;
      v76 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdIrisMedium;
      v77 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdSkinMedium;
      v78 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdScleraMedium;
      v79 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdIrisMedium;
    }

    else
    {
      v73 = &OBJC_IVAR___CIRedEyeRaw_inputSkinProtectionThresholdSmall;
      v74 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdSkinSmall;
      v75 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdScleraSmall;
      v76 = &OBJC_IVAR___CIRedEyeRaw_inputScleraProtectionThresholdIrisSmall;
      v77 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdSkinSmall;
      v78 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdScleraSmall;
      v79 = &OBJC_IVAR___CIRedEyeRaw_inputDetectionThresholdIrisSmall;
    }

    [*(&self->super.super.isa + *v79) floatValue];
    v175 = v174;
    [*(&self->super.super.isa + *v78) floatValue];
    v177 = v176;
    [*(&self->super.super.isa + *v77) floatValue];
    v179 = v178;
    [*(&self->super.super.isa + *v76) floatValue];
    v181 = v180;
    [*(&self->super.super.isa + *v75) floatValue];
    v183 = v182;
    [*(&self->super.super.isa + *v74) floatValue];
    v185 = v184;
    [*(&self->super.super.isa + *v73) floatValue];
    v187 = v186;
    LODWORD(v188) = v175;
    LODWORD(v189) = v177;
    LODWORD(v190) = v179;
    v81 = [(CIRedEyeRaw *)self irisProtectionMaskWithThresholdIris:v188 thresholdSclera:v189 thresholdSkin:v190];
    LODWORD(v191) = v181;
    LODWORD(v192) = v183;
    LODWORD(v193) = v185;
    v194 = [(CIRedEyeRaw *)self irisProtectionMaskWithThresholdIris:v191 thresholdSclera:v192 thresholdSkin:v193];
    LODWORD(v195) = v187;
    v80 = [(CIRedEyeRaw *)self skinProtectionMaskWithThreshold:v195];
    if ([(NSNumber *)self->inputShowMask intValue]== 14)
    {
      v573 = [(CIImage *)v81 imageByCroppingToRect:v574.origin.x, v571, v572, v573];
      v137 = v81;
      v170 = v568;
LABEL_108:
      v172 = v569;
      v171 = v570;
      v173 = v545;
      goto LABEL_148;
    }

    if ([(NSNumber *)self->inputShowMask intValue]== 15)
    {
      v573 = [(CIImage *)v194 imageByCroppingToRect:v574.origin.x, v571, v572, v573];
      v137 = v194;
LABEL_111:
      v170 = v568;
      v172 = v569;
      v171 = v570;
      v173 = v545;
      goto LABEL_148;
    }

    if ([(NSNumber *)self->inputShowMask intValue]== 16)
    {
      v573 = [(CIImage *)v80 imageByCroppingToRect:v574.origin.x, v571, v572, v573];
      v137 = v80;
      goto LABEL_111;
    }

    v498 = v194;
  }

  else
  {
    v80 = 0;
    v498 = 0;
    v81 = 0;
  }

  v82 = *&v530;
  v531 = v80;
  v83 = dbl_19CF260B0[v20 == 35] * v532;
  v84 = v528 * 0.015 * v82 * v527;
  v85 = v524 * 0.1;
  integerValue = [(NSNumber *)self->inputRepairSource integerValue];
  v87 = &OBJC_IVAR___CIRedEyeRaw_inputSecondary;
  if (!integerValue)
  {
    v87 = &OBJC_IVAR___CIRedEyeRaw_inputPrimary;
  }

  v88 = *(&self->super.super.isa + *v87);
  v89 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_boost];
  [v88 extent];
  v652[0] = v88;
  v652[1] = &unk_1F1085368;
  inputPrimary = -[CIColorKernel applyWithExtent:arguments:](v89, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v652 count:2], v90, v91, v92, v93);
  [(NSNumber *)self->inputMidSpectrumWhiteOffsetsX floatValue];
  v96 = v95;
  [(NSNumber *)self->inputMidSpectrumWhiteOffsetsY floatValue];
  v529 = v20;
  v496 = v72;
  v500 = inputPrimary;
  v525 = v81;
  if (v20 == 90)
  {
    inputPrimary = self->inputPrimary;
    [(NSNumber *)self->inputDetectWhite floatValue];
    v100 = v101;
    selfCopy2 = self;
    [(NSNumber *)self->inputDetectRed floatValue];
    v554 = v102;
  }

  else
  {
    selfCopy2 = self;
    if (v20 == 35)
    {
      v99 = v96 + 0.3;
      v554 = interpolate(v99, v97 + 0.0, v519);
      v100 = interpolate(0.3, 0.7, v519);
    }

    else
    {
      v100 = 0.6272;
    }
  }

  v103 = v522;
  v104 = v83;
  v523 = v104;
  v105 = v84;
  v497 = v105;
  v106 = v85;
  v499 = v106;
  v107 = v103;
  v520 = v107;
  v108 = &v592;
  v109 = 1;
  do
  {
    v110 = v109;
    if (v109)
    {
      v111 = v534;
    }

    else
    {
      v111 = *&v574.origin.y;
    }

    v112 = v111 * 0.0;
    [(NSNumber *)selfCopy2->inputFlooding floatValue];
    v114 = (v113 + v113) * 0.5 * v111;
    v115 = v112 * 3.14159265 * v112;
    v116 = llroundf(v115);
    v117 = v114 * 3.14159265 * v114;
    v118 = llroundf(v117);
    *v108 = [CIVector vectorWithX:v116 Y:v118];
    if (CI_LOG_DUALRED())
    {
      v119 = ci_logger_api();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "[CIRedEyeRaw outputImage]";
        *&buf[12] = 1024;
        *&buf[14] = v114;
        *&buf[18] = 1024;
        *&buf[20] = v116;
        *&buf[24] = 1024;
        *&buf[26] = v118;
        _os_log_error_impl(&dword_19CC36000, v119, OS_LOG_TYPE_ERROR, "%{public}s Convex area threshold range for radius %d = [%d, %d]", buf, 0x1Eu);
      }
    }

    v109 = 0;
    v108 = &v591;
  }

  while ((v110 & 1) != 0);
  v120 = v592;
  v121 = v591;
  v122 = v535 * 0.1;
  if (v529 == 90)
  {
    v123 = RRrawRedWhiteResponseLarge(inputPrimary, v100, v554);
  }

  else
  {
    v123 = RRrawRedWhiteResponseSmallMedium(inputPrimary, v100, v554);
  }

  v125 = v123;
  v126 = v568;
  *&v124 = v558;
  if (v558 > 0.0)
  {
    v127 = v122;
    v125 = RRcloseByDilation(v123, roundf(v558 * v127));
  }

  if (v80)
  {
    if (CI_LOG_DUALRED())
    {
      v128 = ci_logger_api();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        [(CIRedEyeRaw *)v128 outputImage:v129];
      }
    }

    v125 = RRmultiplyRh(v125, v525);
  }

  if ([(NSNumber *)selfCopy2->inputShowMask intValue]== 1)
  {
    v573 = [(CIImage *)v125 imageByCroppingToRect:v574.origin.x, v571, v572, v573];
    v137 = v125;
LABEL_77:
    v170 = v126;
    v172 = v569;
    v171 = v570;
    v173 = v545;
LABEL_148:
    v545 = [v137 imageByCroppingToRect:{v170, v171, v172, v173}];
    v298 = v573;
    return [v298 imageByCompositingOverImage:v545];
  }

  [(NSNumber *)selfCopy2->inputCentroidIterations floatValue];
  v138 = (*&v139 * 5.0);
  *&v139 = v551;
  v140 = v125;
  if (v551 > 0.0)
  {
    v141 = RRspecularMask(selfCopy2->inputPrimary, selfCopy2->inputSecondary, v551, v515);
    v142 = v141;
    if (fabs(v517 + -1.0) > 0.01)
    {
      v142 = [(CIImage *)v141 _imageByApplyingGamma:?];
    }

    v140 = RRmultiplyRh(v125, v142);
  }

  v516 = v122;
  v518 = v121;
  v495 = v120;
  v533 = v125;
  [(NSNumber *)selfCopy2->inputSearchLong floatValue];
  v555 = v143;
  [(NSNumber *)selfCopy2->inputSearchShort floatValue];
  v552 = v144;
  v145 = &v590;
  v146 = 1;
  v147 = selfCopy2;
  v148 = v138;
  do
  {
    v149 = v146 & 1;
    if (v146)
    {
      x = v574.origin.x;
    }

    else
    {
      x = v126;
    }

    if (v146)
    {
      v151 = v571;
    }

    else
    {
      v151 = v570;
    }

    if (v146)
    {
      v152 = v572;
    }

    else
    {
      v152 = v569;
    }

    if (v146)
    {
      v153 = v573;
    }

    else
    {
      v153 = v545;
    }

    v154 = &OBJC_IVAR___CIRedEyeRaw_inputPupilCenterRight;
    if (v149)
    {
      v154 = &OBJC_IVAR___CIRedEyeRaw_inputPupilCenterLeft;
    }

    v155 = *(&v147->super.super.isa + *v154);
    v156 = p_inputAxisLongLeft;
    if (!v149)
    {
      v156 = p_inputAxisLongRight;
    }

    v157 = *v156;
    v158 = p_inputAxisShortLeft;
    if (!v149)
    {
      v158 = p_inputAxisShortRight;
    }

    v159 = v140;
    v160 = *v158;
    v650[0] = @"inputIterations";
    v651[0] = [MEMORY[0x1E696AD98] numberWithInt:v148];
    v651[1] = &unk_1F1085378;
    v650[1] = @"inputScale";
    v650[2] = @"inputDecay";
    v651[2] = &unk_1F1085388;
    v650[3] = @"inputGamma";
    *&v161 = v543;
    v651[3] = [MEMORY[0x1E696AD98] numberWithFloat:v161];
    v650[4] = @"inputClip";
    LODWORD(v162) = v521;
    v651[4] = [MEMORY[0x1E696AD98] numberWithFloat:v162];
    v650[5] = @"inputLocalizationRadius";
    LODWORD(v163) = v542;
    v651[5] = [MEMORY[0x1E696AD98] numberWithFloat:v163];
    v650[6] = @"inputExtent";
    v164 = v151;
    v126 = v568;
    v651[6] = [CIVector vectorWithCGRect:x, v164, v152, v153];
    v650[7] = @"inputDebug";
    v651[7] = [MEMORY[0x1E696AD98] numberWithBool:{-[NSNumber intValue](v147->inputShowMask, "intValue") == 2}];
    v651[8] = v157;
    v650[8] = @"inputAxisLong";
    v650[9] = @"inputAxisShort";
    v651[9] = v160;
    v140 = v159;
    v651[10] = v155;
    v650[10] = @"inputPupilCenter";
    v650[11] = @"inputSearchAxisLong";
    LODWORD(v165) = v555;
    v651[11] = [MEMORY[0x1E696AD98] numberWithFloat:v165];
    v650[12] = @"inputSearchAxisShort";
    LODWORD(v166) = v552;
    v651[12] = [MEMORY[0x1E696AD98] numberWithFloat:v166];
    v167 = -[CIImage imageByApplyingFilter:withInputParameters:](v159, "imageByApplyingFilter:withInputParameters:", @"RedPupilLocalizer", [MEMORY[0x1E695DF20] dictionaryWithObjects:v651 forKeys:v650 count:13]);
    v146 = 0;
    *v145 = v167;
    v145 = &v589;
  }

  while (v149);
  v168 = v590;
  v169 = v589;
  if ([(NSNumber *)v147->inputShowMask intValue]== 2)
  {
    v573 = [(CIImage *)v168 imageByCroppingToRect:v574.origin.x, v571, v572, v573];
    v137 = v169;
    goto LABEL_77;
  }

  v526 = v147;
  v196 = &v588;
  v197 = 1;
  v199 = v571;
  v198 = v572;
  v200 = p_inputAxisShortRight;
  v553 = v169;
  v556 = v168;
  do
  {
    v201 = v197;
    v202 = (v197 & 1) == 0;
    if (v197)
    {
      v169 = v168;
      v203 = v574.origin.x;
    }

    else
    {
      v203 = v126;
    }

    if (v197)
    {
      v204 = v199;
    }

    else
    {
      v204 = v570;
    }

    if (v197)
    {
      v205 = v198;
    }

    else
    {
      v205 = v569;
    }

    if (v197)
    {
      v206 = v573;
    }

    else
    {
      v206 = v545;
    }

    v207 = p_inputAxisLongRight;
    if (!v202)
    {
      v207 = p_inputAxisLongLeft;
    }

    v208 = *v207;
    v209 = p_inputAxisShortLeft;
    if (v202)
    {
      v209 = v200;
    }

    v210 = *v209;
    [(CIVector *)v208 _norm];
    v212 = v211;
    [v210 _norm];
    v214 = v213;
    v215 = v213 / v212;
    v216 = stretch(v213 / v212, 0.0, 0.4, 0.25, 0.8);
    if (CI_LOG_DUALRED())
    {
      v217 = ci_logger_api();
      if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447234;
        *&buf[4] = "[CIRedEyeRaw outputImage]";
        *&buf[12] = 2048;
        *&buf[14] = v212;
        *&buf[22] = 2048;
        *&buf[24] = v214;
        *v649 = 2048;
        *&v649[2] = (v215 * 100.0);
        *&v649[10] = 2048;
        *&v649[12] = v216;
        _os_log_error_impl(&dword_19CC36000, v217, OS_LOG_TYPE_ERROR, "%{public}s Long %.2f | Short %.2f | Ratio %.0f | Conf %.2f", buf, 0x34u);
      }
    }

    v653.origin.x = v203;
    v653.origin.y = v204;
    v653.size.width = v205;
    v653.size.height = v206;
    v218 = RRradialEllipticalMask(v653, v208, v169, v548, v548 * v216, v546, 1.0);
    v219 = RRmultiplyRh(v533, v218);
    v197 = 0;
    *v196 = v219;
    v196 = &v587;
    v126 = v568;
    v199 = v571;
    v198 = v572;
    v169 = v553;
    v168 = v556;
    v200 = p_inputAxisShortRight;
  }

  while ((v201 & 1) != 0);
  v220 = v588;
  v221 = v587;
  if ([(NSNumber *)v147->inputShowMask intValue]== 3)
  {
    v573 = [(CIImage *)v220 imageByCroppingToRect:v574.origin.x, v571, v572, v573];
    v137 = v221;
    v170 = v568;
    goto LABEL_108;
  }

  v561 = v220;
  [(NSNumber *)v147->inputRadiusSpecular floatValue];
  v223 = v222;
  integerValue2 = [(NSNumber *)v147->inputRepairSource integerValue];
  v225 = v500;
  if (!integerValue2)
  {
    v225 = v147->inputPrimary;
  }

  v565 = RRspecularResponse(v225);
  v226 = &v586;
  v227 = 1;
  do
  {
    v228 = v227 & 1;
    if (v227)
    {
      v229 = v556;
    }

    else
    {
      v229 = v553;
    }

    v230 = v574.origin.x;
    if (v228)
    {
      v231 = v571;
    }

    else
    {
      v230 = v568;
      v231 = v570;
    }

    if (v228)
    {
      v232 = v572;
    }

    else
    {
      v232 = v569;
    }

    if (v228)
    {
      v233 = v573;
    }

    else
    {
      v233 = v545;
    }

    v647[0] = v229;
    v646[0] = @"inputCenter";
    v646[1] = @"inputExtent";
    v233 = [CIVector vectorWithCGRect:v230, v231, v232, v233];
    inputFalloffSpecular = v147->inputFalloffSpecular;
    v647[1] = v233;
    v647[2] = inputFalloffSpecular;
    v646[2] = @"inputFalloff";
    v646[3] = @"inputRadius";
    LODWORD(v236) = v223;
    v237 = [MEMORY[0x1E696AD98] numberWithFloat:v236];
    v646[4] = @"inputAnisotropic";
    v647[3] = v237;
    v647[4] = MEMORY[0x1E695E110];
    v238 = -[CIFilter outputImage](+[CIFilter filterWithName:withInputParameters:](CIFilter, "filterWithName:withInputParameters:", @"RadialFalloffFilter", [MEMORY[0x1E695DF20] dictionaryWithObjects:v647 forKeys:v646 count:5]), "outputImage");
    v227 = 0;
    *v226 = v238;
    v226 = &v585;
  }

  while (v228);
  v239 = v585;
  v240 = RRmultiplyRh(v565, v586);
  v241 = RRmultiplyRh(v565, v239);
  v242 = RRmaxRhScalar(v240, 0.001);
  v243 = RRmaxRhScalar(v241, 0.001);
  [(NSNumber *)v147->inputCenterSpecRad floatValue];
  if (v244 <= 0.0)
  {
    v251 = 0x1E75C0000uLL;
    v252 = 0x1E695D000uLL;
    v247 = v569;
    v248 = v570;
    v249 = v545;
  }

  else
  {
    v245 = v244;
    v654.size.height = v573;
    v654.origin.x = v574.origin.x;
    v654.origin.y = v571;
    v654.size.width = v572;
    v246 = RRradialMask(v147->inputPupilCenterLeft, v654, v245, -0.8, 1);
    v242 = RRmultiplyRh(v242, v246);
    v655.origin.x = v568;
    v247 = v569;
    v248 = v570;
    v655.origin.y = v570;
    v655.size.width = v569;
    v249 = v545;
    v655.size.height = v545;
    v250 = RRradialMask(v147->inputPupilCenterRight, v655, v245, -0.8, 1);
    v243 = RRmultiplyRh(v243, v250);
    v251 = 0x1E75C0000;
    v252 = 0x1E695D000;
  }

  if ([(NSNumber *)v147->inputShowMask intValue]== 6)
  {
    v573 = [(CIImage *)v242 imageByCroppingToRect:v574.origin.x, v571, v572, v573];
    v137 = v243;
    v170 = v568;
    v171 = v248;
    v172 = v247;
LABEL_147:
    v173 = v249;
    goto LABEL_148;
  }

  v566 = [*(v251 + 2960) vectorWithX:v540 Y:v510 Z:v540 W:v510];
  [(CIVector *)v147->inputSize X];
  v254 = v253;
  [(CIVector *)v147->inputSize Y];
  *&v255 = v254 * v255;
  v549 = [*(v251 + 2960) vectorWithX:0.0 Y:(v499 * *&v255) Z:0.0 W:(v499 * *&v255)];
  *v649 = 0u;
  memset(buf, 0, sizeof(buf));
  CGAffineTransformMakeTranslation(buf, -(v568 - v574.origin.x), -(v248 - v571));
  *&v583.a = *buf;
  *&v583.c = *&buf[16];
  *&v583.tx = *v649;
  memset(&v584, 0, sizeof(v584));
  CGAffineTransformInvert(&v584, &v583);
  *&v583.a = *buf;
  *&v583.c = *&buf[16];
  *&v583.tx = *v649;
  v256 = [v221 imageByApplyingTransform:&v583];
  *&v583.a = *buf;
  *&v583.c = *&buf[16];
  *&v583.tx = *v649;
  v257 = [(CIImage *)v243 imageByApplyingTransform:&v583];
  *&v583.a = *buf;
  *&v583.c = *&buf[16];
  *&v583.tx = *v649;
  v258 = [(CIImage *)v533 imageByApplyingTransform:&v583];
  v259 = v572;
  v5732 = [(CIImage *)RRcombineRGBA(v561 imageByCroppingToRect:v242, v256, v257), "imageByCroppingToRect:", v574.origin.x, v571, v572, v573];
  v644[0] = @"inputPercentileRepair";
  *&v261 = v541;
  v645[0] = [MEMORY[0x1E696AD98] numberWithFloat:v261];
  v644[1] = @"inputPercentileSpecular";
  *&v262 = v537;
  v645[1] = [MEMORY[0x1E696AD98] numberWithFloat:v262];
  v644[2] = @"inputPercentRepair";
  *&v263 = v520;
  v645[2] = [MEMORY[0x1E696AD98] numberWithFloat:v263];
  v645[3] = &unk_1F1081B78;
  inputInterPeakMin = v147->inputInterPeakMin;
  v644[3] = @"inputPercentSpecular";
  v644[4] = @"inputInterPeakMinRepair";
  v645[4] = inputInterPeakMin;
  v645[5] = v566;
  v644[5] = @"inputMinimum";
  v644[6] = @"inputMaxArea";
  inputSpecAreaScale = v147->inputSpecAreaScale;
  v266 = v553;
  v645[6] = v549;
  v645[7] = inputSpecAreaScale;
  v644[7] = @"inputMaxAreaRatio";
  v644[8] = @"inputCenterLeft";
  v645[8] = v556;
  v645[9] = v553;
  v644[9] = @"inputCenterRight";
  v644[10] = @"inputCenterExtentLeft";
  v267 = v569;
  v249 = v545;
  v645[10] = [*(v251 + 2960) vectorWithCGRect:{v574.origin.x, v571, v572, v573}];
  v644[11] = @"inputCenterExtentRight";
  v645[11] = [*(v251 + 2960) vectorWithCGRect:{v568, v248, v569, v545}];
  v644[12] = @"inputCenterOffsetLeft";
  v645[12] = [*(v251 + 2960) vectorWithCGPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v644[13] = @"inputCenterOffsetRight";
  v645[13] = [*(v251 + 2960) vectorWithCGPoint:{v568 - v574.origin.x, v248 - v571}];
  v645[14] = &unk_1F1085398;
  v644[14] = @"inputAbortMaxCenterDist";
  v644[15] = @"inputMinDensity";
  *&v268 = v523;
  v645[15] = [MEMORY[0x1E696AD98] numberWithFloat:v268];
  v644[16] = @"inputMaxRelDensity";
  LODWORD(v269) = v514;
  v270 = [MEMORY[0x1E696AD98] numberWithFloat:v269];
  inputFalloffDensity = v147->inputFalloffDensity;
  v645[16] = v270;
  v645[17] = inputFalloffDensity;
  v644[17] = @"inputDensityRadius";
  v644[18] = @"inputDetectionLeft";
  v645[18] = v533;
  v645[19] = v258;
  v644[19] = @"inputDetectionRight";
  v644[20] = @"inputMinInterDispersion";
  LODWORD(v272) = v511;
  v645[20] = [MEMORY[0x1E696AD98] numberWithFloat:v272];
  v644[21] = @"inputMaxInterDispersion";
  LODWORD(v273) = v512;
  v645[21] = [MEMORY[0x1E696AD98] numberWithFloat:v273];
  v644[22] = @"inputMinGobalLocalMeanDiff";
  LODWORD(v274) = v513;
  v275 = [MEMORY[0x1E696AD98] numberWithFloat:v274];
  v644[23] = @"inputTuning";
  inputParam2 = v147->inputParam2;
  v645[22] = v275;
  v645[23] = inputParam2;
  v277 = -[CIImage imageByApplyingFilter:withInputParameters:](v5732, "imageByApplyingFilter:withInputParameters:", @"HistoClip_RGBA8_CPU", [*(v252 + 3872) dictionaryWithObjects:v645 forKeys:v644 count:24]);
  v278 = RRextractR8(v277);
  v279 = RRextractG8(v277);
  v280 = RRextractB8(v277);
  v583 = v584;
  v281 = [(CIImage *)v280 imageByApplyingTransform:&v583];
  v282 = RRextractA8(v277);
  v583 = v584;
  v283 = [(CIImage *)v282 imageByApplyingTransform:&v583];
  if (v531)
  {
    if (CI_LOG_DUALRED())
    {
      v284 = ci_logger_api();
      if (os_log_type_enabled(v284, OS_LOG_TYPE_ERROR))
      {
        [(CIRedEyeRaw *)v284 outputImage:v285];
      }
    }

    v278 = RRminimumRh(v278, v498);
    v281 = RRminimumRh(v281, v498);
  }

  if ([v526[15]._priv intValue] == 7)
  {
    v573 = [(CIImage *)v279 imageByCroppingToRect:v574.origin.x, v571, v572, v573];
    v137 = v283;
LABEL_146:
    v170 = v568;
    v171 = v248;
    v172 = v569;
    goto LABEL_147;
  }

  if (v509 <= 0.0)
  {
    v567 = v281;
  }

  else
  {
    v292 = roundf(v509 * v516);
    v293 = RRcloseByErosion(v278, v292);
    v294 = v292;
    v259 = v572;
    v295 = RRcloseByErosion(v281, v294);
    v278 = RRmaxIfGreaterThanZeroRh(v293, v278);
    v296 = v295;
    v266 = v553;
    v567 = RRmaxIfGreaterThanZeroRh(v296, v281);
  }

  if ([v526[15]._priv intValue] == 4)
  {
    v573 = [(CIImage *)v278 imageByCroppingToRect:v574.origin.x, v571, v259, v573];
    v137 = v567;
    goto LABEL_146;
  }

  if ([v526[15]._priv intValue] == 10)
  {
    v300 = v573;
    v301 = v259;
    v302 = RRbinarizeAlphaInverse(v526[5].super.isa, [(CIImage *)v278 imageByClampingToExtent], 0.2);
    v303 = RRbinarizeAlphaInverse(v526[5].super.isa, [(CIImage *)v567 imageByClampingToExtent], 0.2);
    v642 = @"inputExtent";
    v304 = v574.origin.x;
    v643 = [*(v251 + 2960) vectorWithCGRect:{v574.origin.x, v571, v301, v573}];
    v305 = -[CIImage imageByApplyingFilter:withInputParameters:](v302, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [*(v252 + 3872) dictionaryWithObjects:&v643 forKeys:&v642 count:1]);
    v640 = @"inputExtent";
    v641 = [*(v251 + 2960) vectorWithCGRect:{v568, v248, v569, v545}];
    v306 = *(v252 + 3872);
    v307 = &v641;
    v308 = &v640;
LABEL_154:
    v310 = -[CIImage imageByApplyingFilter:withInputParameters:](v303, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [v306 dictionaryWithObjects:v307 forKeys:v308 count:1]);
    imageByUnpremultiplyingAlpha = [(CIImage *)v305 imageByUnpremultiplyingAlpha];
    imageByUnpremultiplyingAlpha2 = [(CIImage *)v310 imageByUnpremultiplyingAlpha];
    [(CIImage *)imageByUnpremultiplyingAlpha extent];
    v313 = [(CIImage *)imageByUnpremultiplyingAlpha imageBySettingAlphaOneInExtent:?];
    [(CIImage *)imageByUnpremultiplyingAlpha2 extent];
    v314 = [(CIImage *)imageByUnpremultiplyingAlpha2 imageBySettingAlphaOneInExtent:?];
    imageByClampingToExtent = [(CIImage *)v313 imageByClampingToExtent];
    imageByClampingToExtent2 = [(CIImage *)v314 imageByClampingToExtent];
    v317 = imageByClampingToExtent;
    v318 = v304;
    v319 = v571;
    v320 = v301;
    v321 = v300;
LABEL_155:
    v322 = [v317 imageByCroppingToRect:{v318, v319, v320, v321}];
    v545 = [(CIImage *)imageByClampingToExtent2 imageByCroppingToRect:v568, v248, v569, v545];
    v298 = v322;
    return [v298 imageByCompositingOverImage:v545];
  }

  if ([v526[15]._priv intValue] == 11)
  {
    v300 = v573;
    v301 = v259;
    v309 = RRbinarizeAlpha(v526[5].super.isa, [(CIImage *)v278 imageByClampingToExtent], 0.2);
    v303 = RRbinarizeAlpha(v526[5].super.isa, [(CIImage *)v567 imageByClampingToExtent], 0.2);
    v638 = @"inputExtent";
    v304 = v574.origin.x;
    v639 = [*(v251 + 2960) vectorWithCGRect:{v574.origin.x, v571, v301, v573}];
    v305 = -[CIImage imageByApplyingFilter:withInputParameters:](v309, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [*(v252 + 3872) dictionaryWithObjects:&v639 forKeys:&v638 count:1]);
    v636 = @"inputExtent";
    v637 = [*(v251 + 2960) vectorWithCGRect:{v568, v248, v569, v545}];
    v306 = *(v252 + 3872);
    v307 = &v637;
    v308 = &v636;
    goto LABEL_154;
  }

  if ([v526[15]._priv intValue] == 12)
  {
    v323 = RRbinarize(v278);
    v324 = RRbinarize(v567);
    v325 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor blackColor]);
    isa = v526[5].super.isa;
    v634[0] = @"inputBackgroundImage";
    v634[1] = @"inputMaskImage";
    v635[0] = v325;
    v635[1] = v323;
    v327 = -[objc_class imageByApplyingFilter:withInputParameters:](isa, "imageByApplyingFilter:withInputParameters:", @"CIBlendWithRedMask", [*(v252 + 3872) dictionaryWithObjects:v635 forKeys:v634 count:2]);
    v328 = v526[5].super.isa;
    v632[0] = @"inputBackgroundImage";
    v632[1] = @"inputMaskImage";
    v633[0] = v325;
    v633[1] = v324;
    v329 = *(v252 + 3872);
    v330 = v633;
    v331 = v632;
LABEL_160:
    imageByClampingToExtent2 = -[objc_class imageByApplyingFilter:withInputParameters:](v328, "imageByApplyingFilter:withInputParameters:", @"CIBlendWithRedMask", [v329 dictionaryWithObjects:v330 forKeys:v331 count:2]);
    v317 = v327;
    v318 = v574.origin.x;
    v319 = v571;
    v320 = v259;
    v321 = v573;
    goto LABEL_155;
  }

  if ([v526[15]._priv intValue] == 13)
  {
    v333 = RRbinarizeInverse(v278);
    v334 = RRbinarizeInverse(v567);
    v335 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor blackColor]);
    v336 = v526[5].super.isa;
    v630[0] = @"inputBackgroundImage";
    v630[1] = @"inputMaskImage";
    v631[0] = v335;
    v631[1] = v333;
    v327 = -[objc_class imageByApplyingFilter:withInputParameters:](v336, "imageByApplyingFilter:withInputParameters:", @"CIBlendWithRedMask", [*(v252 + 3872) dictionaryWithObjects:v631 forKeys:v630 count:2]);
    v328 = v526[5].super.isa;
    v628[0] = @"inputBackgroundImage";
    v628[1] = @"inputMaskImage";
    v629[0] = v335;
    v629[1] = v334;
    v329 = *(v252 + 3872);
    v330 = v629;
    v331 = v628;
    goto LABEL_160;
  }

  v547 = v283;
  v550 = v279;
  if (v529 == 35)
  {
    v338 = &OBJC_IVAR___CIRedEyeRaw_inputSkinThresholdMed;
    v337 = v495;
    goto LABEL_165;
  }

  LODWORD(v332) = 1.0;
  v337 = v495;
  if (v529 == 90)
  {
    v338 = &OBJC_IVAR___CIRedEyeRaw_inputSkinThreshold;
LABEL_165:
    [*(&v526->super.isa + *v338) floatValue];
  }

  v562 = *&v332;
  v339 = &v582;
  v340 = 1;
  do
  {
    v341 = v340;
    if (v340)
    {
      v342 = v574.origin.x;
    }

    else
    {
      v342 = v568;
    }

    if (v340)
    {
      v343 = v571;
    }

    else
    {
      v343 = v248;
    }

    if (v340)
    {
      v344 = v572;
    }

    else
    {
      v344 = v267;
    }

    if (v340)
    {
      v345 = v573;
    }

    else
    {
      v345 = v545;
    }

    if (v340)
    {
      v346 = v337;
    }

    else
    {
      v346 = v518;
    }

    if (v340)
    {
      v347 = v278;
    }

    else
    {
      v347 = v567;
    }

    if (v340)
    {
      v348 = v556;
    }

    else
    {
      v348 = v266;
    }

    v626[0] = @"inputExtent";
    v349 = *(v251 + 2960);
    [(CIImage *)v347 extent];
    v350 = [v349 vectorWithCGRect:?];
    v626[1] = @"inputCentroid";
    v627[0] = v350;
    v627[1] = v348;
    v351 = RRconditionalZero(v347, -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v347, "imageByApplyingFilter:withInputParameters:", @"CICircularityDescriptor", [MEMORY[0x1E695DF20] dictionaryWithObjects:v627 forKeys:v626 count:2]), "imageByClampingToExtent"), v539);
    v624[0] = @"inputCenter";
    v624[1] = @"inputThreshold";
    v625[0] = v348;
    v625[1] = &unk_1F1081B90;
    v625[2] = v346;
    v624[2] = @"inputAreaThresholdLoHi";
    v624[3] = @"inputSplat";
    *&v352 = v497;
    v625[3] = [MEMORY[0x1E696AD98] numberWithFloat:v352];
    v353 = -[CIImage imageByApplyingFilter:withInputParameters:](v351, "imageByApplyingFilter:withInputParameters:", @"CIConvexFill", [MEMORY[0x1E695DF20] dictionaryWithObjects:v625 forKeys:v624 count:4]);
    [(objc_class *)v526[21].super.isa floatValue];
    if (v354 > 0.0 && fabs(v354 + -1.0) > 0.001)
    {
      v355 = [(CIImage *)v353 _imageByApplyingGamma:?];
      [(objc_class *)v526[13].super.isa floatValue];
      v353 = RRsmoothstep(v355, v356);
    }

    v266 = v553;
    v345 = [(CIImage *)v353 imageByCroppingToRect:v342, v343, v344, v345];
    v340 = 0;
    *v339 = v345;
    v339 = &v581;
    v267 = v569;
    v248 = v570;
  }

  while ((v341 & 1) != 0);
  v358 = v582;
  v359 = v581;
  if (v531)
  {
    v360 = v545;
    v361 = v572;
    v362 = 0x1E695D000;
    v363 = v529;
    v364 = v533;
    if (CI_LOG_DUALRED())
    {
      v365 = ci_logger_api();
      if (os_log_type_enabled(v365, OS_LOG_TYPE_ERROR))
      {
        [(CIRedEyeRaw *)v365 outputImage:v366];
      }
    }

    v358 = RRminimumRh(v358, v531);
    v359 = RRminimumRh(v359, v531);
  }

  else
  {
    v360 = v545;
    v361 = v572;
    v362 = 0x1E695D000uLL;
    v363 = v529;
    v364 = v533;
  }

  if (v361 >= v573)
  {
    v373 = v573;
  }

  else
  {
    v373 = v361;
  }

  v374 = v373;
  if (v569 >= v360)
  {
    v375 = v360;
  }

  else
  {
    v375 = v569;
  }

  v376 = v375;
  [v526[21]._priv floatValue];
  v656.size.width = v361;
  v378 = v377;
  v656.origin.x = v574.origin.x;
  v656.origin.y = v571;
  v656.size.height = v573;
  v379 = feather(v358, v656, v374, v378, 0.5);
  v657.origin.x = v568;
  v657.origin.y = v570;
  v657.size.width = v569;
  v657.size.height = v360;
  v380 = feather(v359, v657, v376, v378, 0.5);
  [(objc_class *)v526[38].super.isa floatValue];
  v382 = 50.0;
  if ((v535 * v381) <= 50.0)
  {
    [(objc_class *)v526[38].super.isa floatValue];
    v382 = v535 * v383;
  }

  [v526[38]._priv floatValue];
  v385 = v384 * 0.1;
  if (v363 == 90)
  {
    v385 = v385 * 1.5;
    v386 = 2.5;
    v387 = v568;
  }

  else
  {
    v386 = 1.0;
    v387 = v568;
    if (v363 == 35)
    {
      v364 = refilterChannel(v526[5].super.isa);
      v385 = v385 * 5.0;
      v382 = v382 * 1.5;
      v386 = 0.400000006;
    }
  }

  v388 = [(CIImage *)v364 _imageByApplyingGamma:v386];
  v389 = refilter(v379, v388, v382, v385);
  v390 = refilter(v380, v388, v382, v385);
  [(objc_class *)v526[22].super.isa floatValue];
  v392 = v391;
  v658.origin.x = v574.origin.x;
  v658.origin.y = v571;
  v658.size.width = v572;
  v658.size.height = v573;
  v393 = feather(v389, v658, v374, 0.0, v392);
  v659.origin.x = v387;
  v659.origin.y = v570;
  v659.size.width = v569;
  v659.size.height = v545;
  v394 = feather(v390, v659, v376, 0.0, v392);
  if (v562 < 1.0)
  {
    v660.origin.x = v574.origin.x;
    v660.origin.y = v571;
    v660.size.width = v572;
    v660.size.height = v573;
    v395 = chromaExclusion(v526[5].super.isa, v278, v660, v562, 0.2, v505, 0.35);
    v661.origin.x = v568;
    v661.origin.y = v570;
    v661.size.width = v569;
    v661.size.height = v545;
    v396 = chromaExclusion(v526[5].super.isa, v567, v661, v562, 0.2, v505, 0.35);
    v393 = RRmultiplyRh(v393, v395);
    v394 = RRmultiplyRh(v394, v396);
  }

  v397 = v570;
  if ([v526[15]._priv intValue] == 5)
  {
    v573 = [(CIImage *)v393 imageByCroppingToRect:v574.origin.x, v571, v572, v573];
    v137 = v394;
LABEL_226:
    v170 = v568;
LABEL_227:
    v171 = v397;
    v172 = v569;
    v173 = v545;
    goto LABEL_148;
  }

  v398 = v571;
  v399 = v574.origin.x;
  if (v504 <= 0.0)
  {
    *&v399 = v503;
    if (v503 > 0.0)
    {
      v408 = v535 * 0.5 * v503;
      v409 = v408;
      v622 = @"inputRadius";
      *&v408 = v409;
      v623 = [MEMORY[0x1E696AD98] numberWithFloat:v408];
      v410 = -[CIImage imageByApplyingFilter:withInputParameters:](v550, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyMaximum", [*(v362 + 3872) dictionaryWithObjects:&v623 forKeys:&v622 count:1]);
      v620 = @"inputRadius";
      *&v411 = v409;
      v621 = [MEMORY[0x1E696AD98] numberWithFloat:v411];
      v550 = -[CIImage imageByCroppingToRect:](-[CIImage imageByApplyingFilter:withInputParameters:](v410, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyMinimum", [*(v362 + 3872) dictionaryWithObjects:&v621 forKeys:&v620 count:1]), "imageByCroppingToRect:", v574.origin.x, v571, v572, v573);
      v618 = @"inputRadius";
      *&v412 = v409;
      v619 = [MEMORY[0x1E696AD98] numberWithFloat:v412];
      v413 = [v547 imageByApplyingFilter:@"CIMorphologyMaximum" withInputParameters:{objc_msgSend(*(v362 + 3872), "dictionaryWithObjects:forKeys:count:", &v619, &v618, 1)}];
      v616 = @"inputRadius";
      *&v414 = v409;
      v617 = [MEMORY[0x1E696AD98] numberWithFloat:v414];
      v547 = [objc_msgSend(v413 imageByApplyingFilter:@"CIMorphologyMinimum" withInputParameters:{objc_msgSend(*(v362 + 3872), "dictionaryWithObjects:forKeys:count:", &v617, &v616, 1)), "imageByCroppingToRect:", v568, v570, v569, v545}];
    }

    v614 = @"inputRadius";
    v615 = &unk_1F1085368;
    v406 = -[CIImage imageByApplyingFilter:withInputParameters:](v550, "imageByApplyingFilter:withInputParameters:", @"CIBoxBlur", [*(v362 + 3872) dictionaryWithObjects:&v615 forKeys:&v614 count:{1, v399}]);
    v612 = @"inputRadius";
    v613 = &unk_1F1085368;
    v407 = [v547 imageByApplyingFilter:@"CIBoxBlur" withInputParameters:{objc_msgSend(*(v362 + 3872), "dictionaryWithObjects:forKeys:count:", &v613, &v612, 1)}];
  }

  else
  {
    if (v534 <= *&v574.origin.y)
    {
      v400 = *&v574.origin.y;
    }

    else
    {
      v400 = v534;
    }

    v401 = 2.0 / v400;
    if (v504 > v401)
    {
      v401 = v504;
    }

    v402 = v401;
    v403 = v571;
    v404 = v572;
    v405 = v573;
    v406 = RRradialCenterMask(v556, *&v399, v400, v402, -0.5);
    v662.origin.x = v568;
    v662.origin.y = v570;
    v662.size.width = v569;
    v662.size.height = v545;
    v407 = RRradialCenterMask(v553, v662, v400, v402, -0.5);
  }

  v415 = v407;
  v416 = RRmultiplyRh(v406, v393);
  v417 = RRmultiplyRh(v415, v394);
  if ([v526[15]._priv intValue] == 8)
  {
    v573 = [(CIImage *)v416 imageByCroppingToRect:v574.origin.x, v571, v572, v573];
    v137 = v417;
    goto LABEL_226;
  }

  v557 = v416;
  v563 = v393;
  v418 = &v580;
  v419 = 1;
  v420 = v568;
  v421 = v526;
  do
  {
    v422 = v419;
    if (v419)
    {
      v423 = v393;
    }

    else
    {
      v423 = v394;
    }

    if (v419)
    {
      v420 = v574.origin.x;
    }

    v424 = v397;
    if (v419)
    {
      v425 = v398;
    }

    else
    {
      v425 = v397;
    }

    if (v419)
    {
      v426 = v572;
    }

    else
    {
      v426 = v569;
    }

    if (v419)
    {
      v427 = v573;
    }

    else
    {
      v427 = v545;
    }

    v428 = v421[5].super.isa;
    if (v506 > 0.0)
    {
      v610 = @"inputRadius";
      v611 = &unk_1F1085368;
      v429 = -[objc_class imageByApplyingFilter:withInputParameters:](v428, "imageByApplyingFilter:withInputParameters:", @"CIBoxBlur", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v611 forKeys:&v610 count:{1, v573}]);
      v608 = @"inputRadius";
      v609 = &unk_1F1085368;
      v430 = [v429 imageByApplyingFilter:@"CIBoxBlur" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v609, &v608, 1)}];
      v606 = @"inputRadius";
      *&v431 = v506;
      v607 = [MEMORY[0x1E696AD98] numberWithFloat:v431];
      v428 = [v430 imageByApplyingFilter:@"CIMorphologyMinimum" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v607, &v606, 1)}];
    }

    v604 = @"inputRadius";
    v605 = &unk_1F1085368;
    v432 = -[objc_class imageByApplyingFilter:withInputParameters:](v428, "imageByApplyingFilter:withInputParameters:", @"CIBoxBlur", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v605 forKeys:&v604 count:1]);
    v602 = @"inputRadius";
    v603 = &unk_1F1085368;
    v433 = [v432 imageByApplyingFilter:@"CIBoxBlur" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v603, &v602, 1)}];
    v421 = v526;
    v434 = v526[5].super.isa;
    v600[0] = @"inputSource";
    v600[1] = @"inputMask";
    v601[0] = v434;
    v601[1] = v423;
    v600[2] = @"inputNoiseAmount";
    *&v435 = v507;
    v601[2] = [MEMORY[0x1E696AD98] numberWithFloat:v435];
    v600[3] = @"inputBrightness";
    *&v436 = v508;
    v437 = [MEMORY[0x1E696AD98] numberWithFloat:v436];
    v438 = v526[23].super.isa;
    v601[3] = v437;
    v601[4] = v438;
    v600[4] = @"inputRecovery";
    v600[5] = @"inputExtent";
    v601[5] = [CIVector vectorWithCGRect:v420, v425, v426, v427];
    v600[6] = @"inputWhiteCutoff";
    *&v439 = v496;
    v601[6] = [MEMORY[0x1E696AD98] numberWithFloat:v439];
    v600[7] = @"inputChroma";
    *&v440 = v538;
    v601[7] = [MEMORY[0x1E696AD98] numberWithFloat:v440];
    v441 = [v433 imageByApplyingFilter:@"RedEyeRecolor" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v601, v600, 8)}];
    v419 = 0;
    *v418 = v441;
    v418 = &v579;
    v420 = v568;
    v398 = v571;
    v393 = v563;
    v397 = v424;
  }

  while ((v422 & 1) != 0);
  v442 = v580;
  v443 = v579;
  if ([v526[15]._priv intValue] == 9)
  {
    v573 = [v442 imageByCroppingToRect:{v574.origin.x, v571, v572, v573}];
    v137 = v443;
    v170 = v568;
    goto LABEL_227;
  }

  v445 = &v578;
  v446 = 1;
  do
  {
    v447 = v446;
    if (v446)
    {
      v448 = v442;
    }

    else
    {
      v448 = v443;
    }

    if (v501 <= 0.00001)
    {
      v467 = v417;
      if (v447)
      {
        v467 = v557;
      }

      priv = v526[5]._priv;
      v597[0] = @"inputSource";
      v597[1] = @"inputSpecularMask";
      v598[0] = priv;
      v598[1] = v467;
      v598[2] = &unk_1F10853A8;
      v597[2] = @"inputSpecularThreshold";
      v597[3] = @"inputSpecIntensity";
      *&v444 = v536;
      v469 = [MEMORY[0x1E696AD98] numberWithFloat:v444];
      v597[4] = @"inputDebugFlag";
      v598[3] = v469;
      v598[4] = &unk_1F1081BA8;
      v466 = [v448 imageByApplyingFilter:@"RedEyeSpecular" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v598, v597, 5)}];
    }

    else
    {
      v449 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_rer_glint];
      [(objc_class *)v526[5].super.isa extent];
      v451 = v450;
      v453 = v452;
      v455 = v454;
      v457 = v456;
      [v448 extent];
      v665.origin.x = v458;
      v665.origin.y = v459;
      v665.size.width = v460;
      v665.size.height = v461;
      v663.origin.x = v451;
      v663.origin.y = v453;
      v663.size.width = v455;
      v663.size.height = v457;
      v664 = CGRectUnion(v663, v665);
      v462 = v664.origin.x;
      y = v664.origin.y;
      width = v664.size.width;
      height = v664.size.height;
      v599[0] = v526[5].super.isa;
      v599[1] = v448;
      *&v664.origin.x = v502;
      v599[2] = [MEMORY[0x1E696AD98] numberWithFloat:v664.origin.x];
      v466 = -[CIColorKernel applyWithExtent:arguments:](v449, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v599 count:3], v462, y, width, height);
    }

    v446 = 0;
    *v445 = v466;
    v445 = &v577;
  }

  while ((v447 & 1) != 0);
  v470 = v577;
  v471 = v578;
  [(objc_class *)v526[27].super.isa floatValue];
  if (v472 > 0.0)
  {
    [(objc_class *)v526[27].super.isa floatValue];
    v474 = v473;
    memset(&v583, 0, sizeof(v583));
    CGAffineTransformMakeTranslation(&v583, v574.origin.x - v568, v571 - v570);
    v574.size = *&v583.a;
    v575 = *&v583.c;
    v576 = *&v583.tx;
    v475 = RRmultiplyRh(v563, [(CIImage *)v394 imageByApplyingTransform:&v574.size]);
    v595 = @"inputExtent";
    v5733 = [CIVector vectorWithCGRect:v574.origin.x, v571, v572, v573];
    v476 = -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v475, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5733 forKeys:&v595 count:1]), "imageByClampingToExtent");
    v477 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_threshold];
    [(CIImage *)v471 extent];
    v479 = v478;
    v481 = v480;
    v483 = v482;
    v485 = v484;
    v594[0] = v471;
    v594[1] = v476;
    LODWORD(v478) = v474;
    v594[2] = [MEMORY[0x1E696AD98] numberWithFloat:v478];
    v471 = -[CIColorKernel applyWithExtent:arguments:](v477, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v594 count:3], v479, v481, v483, v485);
    [(CIImage *)v470 extent];
    v487 = v486;
    v489 = v488;
    v491 = v490;
    v493 = v492;
    v593[0] = v470;
    v593[1] = v476;
    LODWORD(v486) = v474;
    v593[2] = [MEMORY[0x1E696AD98] numberWithFloat:v486];
    v470 = -[CIColorKernel applyWithExtent:arguments:](v477, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v593 count:3], v487, v489, v491, v493);
  }

  v494 = [objc_msgSend(-[CIImage _imageByRenderingToIntermediate](v471 "_imageByRenderingToIntermediate")];
  [(objc_class *)v526[5].super.isa extent];
  return [v494 imageByCroppingToRect:?];
}

- (void)outputImage
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136446722;
  v4 = "[CIRedEyeRaw outputImage]";
  v5 = 2048;
  v6 = a3;
  v7 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "%{public}s Eye size: major axis %.0f -> %@", &v3, 0x20u);
}

@end