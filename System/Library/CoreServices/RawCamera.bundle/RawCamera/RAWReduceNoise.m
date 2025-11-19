@interface RAWReduceNoise
+ (id)customAttributes;
+ (id)smartNoiseAdjustmentsForValue:(double)a3 andStatistics:(id)a4;
+ (id)smartNoiseStatistics:(id)a3;
- (BOOL)isBayerGreenAlignedforImage:(id)a3 andPattern:(int)a4;
- (float)adjustedRNAmount;
- (id)V8OutputImage;
- (id)YAndRGBGather:(id)a3 cnrRGB:(id)a4 sushiFactors:(id)a5 crop:(CGRect)a6 lumFactors:(id)a7;
- (id)YAndRGBGatherOpponentColor:(id)a3 cnrRGB:(id)a4 originalY:(id)a5 sushiFactors:(id)a6 crop:(CGRect)a7 lumFactors:(id)a8;
- (id)addNoise:(id)a3 noise:(id)a4 amount:(float)a5;
- (id)blurGradient:(id)a3 lothresh:(float)a4 factor:(float)a5;
- (id)blurGradientPlusCurvature:(id)a3 lothresh:(float)a4 factor:(float)a5 cthresh:(float)a6 cfactor:(float)a7;
- (id)compositeThroughGradientMask:(id)a3 fullSize:(id)a4 fullSizeMask:(id)a5;
- (id)customAttributes;
- (id)directionsToCurvature:(id)a3 threshold:(float)a4;
- (id)expandAndAddDetailsThroughGradientMask2:(id)a3 halfSize:(id)a4 fullSizeDetails:(id)a5 soften:(float)a6 sharpen:(float)a7;
- (id)expandAndAddDetailsThroughGradientMask3:(id)a3 fullSize:(id)a4 fullSizeDetails:(id)a5 fullSizeMask:(id)a6 amount:(float)a7 sharpen:(float)a8 interpolant:(float)a9;
- (id)expandAndAddDetailsThroughGradientMask:(id)a3 fullSize:(id)a4 fullSizeDetails:(id)a5 fullSizeMask:(id)a6 amount:(float)a7 contrastOverdrive:(float)a8 interpolant:(float)a9;
- (id)expandAndAddDetailsWithOverdrive:(id)a3 fullSize:(id)a4 contrast:(float)a5;
- (id)expandAndMakeDetails:(id)a3 halfSize:(id)a4;
- (id)expandAndSharpenDetailsThroughGradientMaskGather:(id)a3 halfSizeY:(id)a4 cnrRGB:(id)a5 sharpen:(float)a6 soften:(float)a7 floor:(float)a8 sushiFactors:(id)a9 crop:(CGRect)a10 lumFactors:(id)a11;
- (id)expandAndSharpenDetailsThroughGradientMaskGatherOpponentColor:(id)a3 halfSizeY:(id)a4 cnrRGB:(id)a5 originalY:(id)a6 sharpen:(float)a7 soften:(float)a8 floor:(float)a9 sushiFactors:(id)a10 crop:(CGRect)a11 lumFactors:(id)a12;
- (id)expandAndSharpenThroughGradientMask:(id)a3 fullSizeY:(id)a4 sharpen:(float)a5;
- (id)expandAndSharpenThroughGradientMaskGather:(id)a3 halfSizeY:(id)a4 cnrRGB:(id)a5 sharpen:(float)a6 floor:(float)a7 sushiFactors:(id)a8 crop:(CGRect)a9 lumFactors:(id)a10;
- (id)expandAndSharpenThroughGradientMaskGatherOpponentColor:(id)a3 halfSizeY:(id)a4 cnrRGB:(id)a5 originalY:(id)a6 sharpen:(float)a7 floor:(float)a8 sushiFactors:(id)a9 crop:(CGRect)a10 lumFactors:(id)a11;
- (id)expandHalfSizeRGB:(id)a3;
- (id)extractHalfSizeRGB:(id)a3 neutralFactors:(id)a4;
- (id)extractHalfSizeRGBHF:(id)a3 neutralFactors:(id)a4 threshold:(float)a5;
- (id)extractY:(id)a3 neutralFactors:(id)a4;
- (id)extractYOpponentColor:(id)a3 neutralFactors:(id)a4 luminanceFactors:(id)a5 noiseVector:(id)a6;
- (id)fineGrainNoise2:(id)a3 tinyBlurFactor:(float)a4;
- (id)fineGrainNoise:(id)a3;
- (id)gaborFiltersToLuminanceAndVectorField:(id)a3 thresh:(float)a4;
- (id)gaborFiltersToSmoothedLuminanceAndGradient:(id)a3 smoothAmt:(float)a4 tinyBlurFactor:(float)a5;
- (id)gaborFiltersToVectorField:(id)a3;
- (id)highFrequencyIntoAlpha:(id)a3 threshold:(float)a4 neutralFactors:(id)a5;
- (id)image:(id)a3 croppedTo:(CGRect)a4;
- (id)kernelArrayWithResourceName:(id)a3;
- (id)kernelWithName:(id)a3 inArray:(id)a4;
- (id)mergeHalfSizeCurvature:(id)a3 intoFullSizeCurvature:(id)a4;
- (id)multiply:(id)a3 byNeutralFactors:(id)a4;
- (id)outputBoost:(id)a3;
- (id)outputCNR:(id)a3 E0:(CGRect)a4 E1:(CGRect)a5;
- (id)outputCNR:(id)a3 extent:(CGRect)a4 returningDebugProduct:(BOOL *)a5;
- (id)outputImage;
- (id)outputUnboost:(id)a3;
- (id)perceptualToLinear:(id)a3;
- (id)powerBlur:(id)a3 threshold:(float)a4 scale:(float)a5;
- (id)powerBlurDespeckle:(id)a3 threshold:(float)a4 scale:(float)a5 countThreshold:(int)a6 luminanceThreshold:(float)a7 diffAmount:(float)a8;
- (id)powerBlurDespeckleHF:(id)a3 threshold:(float)a4 moireAmount:(float)a5 scale:(float)a6 countThreshold:(int)a7 luminanceThreshold:(float)a8 diffAmount:(float)a9;
- (id)powerBlurEarlyOut2:(id)a3 threshold:(float)a4 scale:(float)a5 neutralThreshold:(float)a6 thresholdScale:(float)a7;
- (id)powerBlurEarlyOut2HF:(id)a3 threshold:(float)a4 moireAmount:(float)a5 scale:(float)a6 neutralThreshold:(float)a7 thresholdScale:(float)a8;
- (id)powerBlurEarlyOut:(id)a3 threshold:(float)a4 scale:(float)a5;
- (id)powerBlurEarlyOutHF:(id)a3 threshold:(float)a4 moireAmount:(float)a5 scale:(float)a6;
- (id)powerBlurFS:(id)a3 threshold:(float)a4 neutralFactors:(id)a5;
- (id)powerBlurFSHF:(id)a3 threshold:(float)a4 moireAmount:(float)a5 neutralFactors:(id)a6;
- (id)powerBlurHF:(id)a3 threshold:(float)a4 moireAmount:(float)a5 scale:(float)a6;
- (id)powerBlurY:(id)a3 threshold:(float)a4;
- (id)reduce:(id)a3;
- (id)samplerForImage:(id)a3;
- (id)smoothDetailsAlongDirections:(id)a3 directions:(id)a4 amount:(float)a5;
- (id)smoothDetailsAlongDirectionsAtScale:(id)a3 directions:(id)a4 scale:(float)a5 thresh:(float)a6 smooth:(float)a7;
- (id)smoothDetailsAlongDirectionsAtScaleAntiBloom:(id)a3 directions:(id)a4 scale:(float)a5 thresh:(float)a6 smooth:(float)a7 maxContrast:(float)a8;
- (id)smoothDetailsAlongDirectionsAtScaleWithSharpen:(id)a3 directions:(id)a4 scale:(float)a5 thresh:(float)a6 smooth:(float)a7 sharp:(float)a8 pscale:(float)a9 coringThreshold:(float)a10;
- (id)smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom:(id)a3 directions:(id)a4 scale:(float)a5 thresh:(float)a6 smooth:(float)a7 sharp:(float)a8 pscale:(float)a9 coringThreshold:(float)a10 maxContrast:(float)a11;
- (id)smoothVectorFieldAlongVectors:(id)a3;
- (id)vectorFieldToDirectionsAndGradients:(id)a3;
- (id)viewBlend:(id)a3 sushiFactors:(id)a4 crop:(CGRect)a5;
- (id)viewC:(id)a3 crop:(CGRect)a4;
- (id)viewD:(id)a3 factor:(float)a4 crop:(CGRect)a5;
- (id)viewDIR:(id)a3 do360:(BOOL)a4 crop:(CGRect)a5;
- (id)viewG:(id)a3 scale:(float)a4 crop:(CGRect)a5;
- (id)viewGDIR:(id)a3 do360:(BOOL)a4 crop:(CGRect)a5;
- (id)viewHue:(id)a3 sushiFactors:(id)a4 crop:(CGRect)a5;
- (id)viewRGB:(id)a3 sushiFactors:(id)a4 crop:(CGRect)a5;
- (id)viewTG:(id)a3 lothresh:(float)a4 factor:(float)a5 crop:(CGRect)a6;
- (id)viewTGDIR:(id)a3 lothresh:(float)a4 factor:(float)a5 do360:(BOOL)a6 crop:(CGRect)a7;
- (id)viewVF:(id)a3 crop:(CGRect)a4;
- (id)viewY:(id)a3 sushiFactors:(id)a4 crop:(CGRect)a5;
- (void)computeLowThreshold:(float *)a3 andFactor:(float *)a4 withThreshold:(float)a5 andSoftness:(float)a6;
@end

@implementation RAWReduceNoise

+ (id)customAttributes
{
  v103[14] = *MEMORY[0x277D85DE8];
  v102[0] = @"inputLNRAmount";
  v99[0] = *MEMORY[0x277CBF790];
  v2 = v99[0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *MEMORY[0x277CBF798];
  v74 = v4;
  v101[0] = v4;
  v101[1] = &unk_28495DB10;
  v6 = *MEMORY[0x277CBF7D0];
  v99[1] = v5;
  v99[2] = v6;
  v7 = *MEMORY[0x277CBF7C8];
  v101[2] = &unk_28495DB10;
  v101[3] = &unk_28495DB20;
  v8 = *MEMORY[0x277CBF7F0];
  v99[3] = v7;
  v99[4] = v8;
  v9 = *MEMORY[0x277CBF850];
  v100 = *MEMORY[0x277CBF7A0];
  v10 = v100;
  v101[4] = v9;
  v101[5] = @"inputLNRAmount";
  v73 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v101, v99, 6);
  v103[0] = v73;
  v102[1] = @"inputCNRAmount";
  v97[0] = v2;
  v12 = objc_opt_class();
  v72 = NSStringFromClass(v12);
  v98[0] = v72;
  v98[1] = &unk_28495DB30;
  v97[1] = v5;
  v97[2] = v6;
  v98[2] = &unk_28495DB10;
  v98[3] = &unk_28495DB20;
  v97[3] = v7;
  v97[4] = v8;
  v97[5] = v10;
  v98[4] = v9;
  v98[5] = @"inputCNRAmount";
  v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v98, v97, 6);
  v103[1] = v70;
  v102[2] = @"inputSharpenAmount";
  v95[0] = v2;
  v14 = objc_opt_class();
  v71 = NSStringFromClass(v14);
  v96[0] = v71;
  v96[1] = &unk_28495DB30;
  v95[1] = v5;
  v95[2] = v6;
  v96[2] = &unk_28495DB10;
  v96[3] = &unk_28495DB20;
  v95[3] = v7;
  v95[4] = v8;
  v95[5] = v10;
  v96[4] = v9;
  v96[5] = @"inputSharpenAmount";
  v69 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v96, v95, 6);
  v103[2] = v69;
  v102[3] = @"inputSharpenThreshold";
  v93[0] = v2;
  v16 = objc_opt_class();
  v67 = NSStringFromClass(v16);
  v94[0] = v67;
  v94[1] = &unk_28495DB10;
  v93[1] = v5;
  v93[2] = v6;
  v94[2] = &unk_28495DB40;
  v94[3] = &unk_28495DB50;
  v93[3] = v7;
  v93[4] = v8;
  v93[5] = v10;
  v94[4] = v9;
  v94[5] = @"inputSharpenThreshold";
  v68 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v94, v93, 6);
  v103[3] = v68;
  v102[4] = @"inputContrastAmount";
  v91[0] = v2;
  v18 = objc_opt_class();
  v65 = NSStringFromClass(v18);
  v92[0] = v65;
  v92[1] = &unk_28495DB10;
  v91[1] = v5;
  v91[2] = v6;
  v92[2] = &unk_28495DB10;
  v92[3] = &unk_28495DB20;
  v91[3] = v7;
  v91[4] = v8;
  v91[5] = v10;
  v92[4] = v9;
  v92[5] = @"inputContrastAmount";
  v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v92, v91, 6);
  v103[4] = v66;
  v102[5] = @"inputDetailAmount";
  v89[0] = v2;
  v20 = objc_opt_class();
  v63 = NSStringFromClass(v20);
  v90[0] = v63;
  v90[1] = &unk_28495DB10;
  v89[1] = v5;
  v89[2] = v6;
  v90[2] = &unk_28495DB10;
  v90[3] = &unk_28495DB60;
  v89[3] = v7;
  v89[4] = v8;
  v89[5] = v10;
  v90[4] = v9;
  v90[5] = @"inputDetailAmount";
  v64 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v90, v89, 6);
  v103[5] = v64;
  v102[6] = @"inputNeutralFactors";
  v87[0] = v2;
  v22 = objc_opt_class();
  v60 = NSStringFromClass(v22);
  v88[0] = v60;
  v87[1] = v5;
  v27 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v23, v24, v25, v26, 1.0, 1.0, 1.0, 1.0);
  v28 = *MEMORY[0x277CBF840];
  v61 = v27;
  v88[1] = v27;
  v88[2] = v28;
  v87[2] = v8;
  v87[3] = v10;
  v88[3] = @"inputNeutralFactors";
  v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v88, v87, 4);
  v103[6] = v62;
  v102[7] = @"inputRepresentativeNoise";
  v85[0] = v2;
  v30 = objc_opt_class();
  v58 = NSStringFromClass(v30);
  v86[0] = v58;
  v86[1] = &unk_28495DB30;
  v85[1] = v5;
  v85[2] = v8;
  v85[3] = v10;
  v86[2] = v9;
  v86[3] = @"inputRepresentativeNoise";
  v59 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v86, v85, 4);
  v103[7] = v59;
  v102[8] = @"inputScaleFactor";
  v83[0] = v2;
  v32 = objc_opt_class();
  v56 = NSStringFromClass(v32);
  v84[0] = v56;
  v84[1] = &unk_28495DB10;
  v83[1] = v6;
  v83[2] = v7;
  v84[2] = &unk_28495DB20;
  v84[3] = &unk_28495DB20;
  v83[3] = v5;
  v83[4] = v8;
  v83[5] = v10;
  v84[4] = v9;
  v84[5] = @"inputScaleFactor";
  v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v84, v83, 6);
  v103[8] = v57;
  v102[9] = @"inputMoireRadius";
  v81[0] = v2;
  v34 = objc_opt_class();
  v54 = NSStringFromClass(v34);
  v82[0] = v54;
  v82[1] = &unk_28495DB10;
  v81[1] = v6;
  v81[2] = v7;
  v82[2] = &unk_28495DB70;
  v82[3] = &unk_28495DB80;
  v81[3] = v5;
  v81[4] = v8;
  v35 = *MEMORY[0x277CBF818];
  v81[5] = v10;
  v82[4] = v35;
  v82[5] = @"inputMoireRadius";
  v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, v82, v81, 6);
  v103[9] = v55;
  v102[10] = @"inputMoireAmount";
  v79[0] = v2;
  v37 = objc_opt_class();
  v53 = NSStringFromClass(v37);
  v80[0] = v53;
  v80[1] = &unk_28495DB10;
  v79[1] = v6;
  v79[2] = v7;
  v80[2] = &unk_28495DB20;
  v80[3] = &unk_28495DB30;
  v79[3] = v5;
  v79[4] = v8;
  v79[5] = v10;
  v80[4] = v9;
  v80[5] = @"inputMoireAmount";
  v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, v80, v79, 6);
  v103[10] = v39;
  v102[11] = @"inputOpponentColorEnabled";
  v77[0] = v2;
  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  v78[0] = v41;
  v78[1] = MEMORY[0x277CBEC38];
  v77[1] = v5;
  v77[2] = v8;
  v42 = *MEMORY[0x277CBF800];
  v77[3] = v10;
  v78[2] = v42;
  v78[3] = @"inputOpponentColorEnabled";
  v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, v78, v77, 4);
  v103[11] = v44;
  v102[12] = @"inputShowHF";
  v75[0] = v2;
  v45 = objc_opt_class();
  v46 = NSStringFromClass(v45);
  v76[0] = v46;
  v76[1] = MEMORY[0x277CBEC28];
  v75[1] = v5;
  v75[2] = v8;
  v75[3] = v10;
  v76[2] = v42;
  v76[3] = @"inputShowHF";
  v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, v76, v75, 4);
  v102[13] = @"kCIRAWFilterDoesClip";
  v49 = *MEMORY[0x277CBED10];
  v103[12] = v48;
  v103[13] = v49;
  v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v50, v103, v102, 14);

  return v51;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes, v3, v4, v5);
}

+ (id)smartNoiseStatistics:(id)a3
{
  v28[6] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v7 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"kCGImageSourceLuminanceNoiseReductionAmount", v5, v6);
  v11 = objc_msgSend_objectForKeyedSubscript_(v3, v8, @"kCGImageSourceColorNoiseReductionAmount", v9, v10);
  v15 = objc_msgSend_objectForKeyedSubscript_(v3, v12, @"kCGImageSourceNoiseReductionSharpnessAmount", v13, v14);
  v19 = objc_msgSend_objectForKeyedSubscript_(v3, v16, @"kCGImageSourceNoiseReductionContrastAmount", v17, v18);
  v23 = objc_msgSend_objectForKeyedSubscript_(v3, v20, @"kCGImageSourceNoiseReductionDetailAmount", v21, v22);
  v27[0] = @"autoValue";
  v27[1] = @"lnramt";
  v28[0] = &unk_284958C68;
  v28[1] = v7;
  v27[2] = @"cnramt";
  v27[3] = @"sharpening";
  v28[2] = v11;
  v28[3] = v15;
  v27[4] = @"contrast";
  v27[5] = @"detail";
  v28[4] = v19;
  v28[5] = v23;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v28, v27, 6);

  return v25;
}

+ (id)smartNoiseAdjustmentsForValue:(double)a3 andStatistics:(id)a4
{
  v55[5] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"lnramt", v7, v8);
  objc_msgSend_doubleValue(v9, v10, v11, v12, v13);
  v15 = v14;
  v19 = objc_msgSend_objectForKeyedSubscript_(v5, v16, @"cnramt", v17, v18);
  objc_msgSend_doubleValue(v19, v20, v21, v22, v23);
  v25 = v24;
  v29 = objc_msgSend_objectForKeyedSubscript_(v5, v26, @"sharpening", v27, v28);
  v33 = objc_msgSend_objectForKeyedSubscript_(v5, v30, @"contrast", v31, v32);
  v34 = a3 + -0.5;
  v35 = fmax(v15 + (a3 + -0.5) * (1.0 - v15 + 1.0 - v15), 0.0);
  v54[0] = @"lnramt";
  v40 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v36, v37, v38, v39, v35);
  v55[0] = v40;
  v54[1] = @"cnramt";
  v45 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v41, v42, v43, v44, v25 + v34 * 0.35);
  v55[1] = v45;
  v55[2] = v29;
  v54[2] = @"sharpening";
  v54[3] = @"contrast";
  v55[3] = v33;
  v54[4] = @"detail";
  v50 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v46, v47, v48, v49, fmax(v35 + -0.75, 0.0) * 4.0 * 0.5);
  v55[4] = v50;
  v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, v55, v54, 5);

  return v52;
}

- (id)samplerForImage:(id)a3
{
  v4 = objc_msgSend_samplerWithImage_keysAndValues_(MEMORY[0x277CBF780], a2, a3, *MEMORY[0x277CBFB58], v3, self->inputColorSpace, 0);

  return v4;
}

- (id)extractY:(id)a3 neutralFactors:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_kernelWithName_(NRKernels, v8, @"extractY", v9, v10);
  v18[0] = v7;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v18, 1, v13);
  v16 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_isAlphaOne_(self, v15, v11, v6, v14, self->inputColorSpace, 0, 1);

  return v16;
}

- (id)extractYOpponentColor:(id)a3 neutralFactors:(id)a4 luminanceFactors:(id)a5 noiseVector:(id)a6
{
  v24[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17 = objc_msgSend_kernelWithName_(NRKernels, v14, @"extractYOpponentColor", v15, v16);
  v24[0] = v11;
  v24[1] = v12;
  v24[2] = v13;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v24, 3, v19);
  v22 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v21, v17, v10, v20, self->inputColorSpace, 0);

  return v22;
}

- (id)extractHalfSizeRGB:(id)a3 neutralFactors:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  memset(&v27, 0, sizeof(v27));
  CGAffineTransformMakeScale(&v27, 0.5, 0.5);
  v11 = objc_msgSend_kernelWithName_(NRKernels, v8, @"extractHalfSizeRGB", v9, v10);
  objc_msgSend_extent(v6, v12, v13, v14, v15);
  v26 = v27;
  v31 = CGRectApplyAffineTransform(v30, &v26);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v28[0] = v7;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, v28, 1, v21);
  v24 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v23, v11, v6, &unk_28492DC90, v22, self->inputColorSpace, 1, x, y, width, height);

  return v24;
}

- (id)extractHalfSizeRGBHF:(id)a3 neutralFactors:(id)a4 threshold:(float)a5
{
  v45[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  memset(&v44, 0, sizeof(v44));
  CGAffineTransformMakeScale(&v44, 0.5, 0.5);
  objc_msgSend_adjustedRNAmount(self, v10, v11, v12, v13);
  if (v18 <= 2.0)
  {
    objc_msgSend_adjustedRNAmount(self, v14, v15, v16, v17);
    v19 = flt_23390A730[v20 > 1.0];
  }

  else
  {
    v19 = 0.6;
  }

  v21 = objc_msgSend_kernelWithName_(NRKernels, v14, @"extractHalfSizeRGBHF", v16, v17);
  objc_msgSend_extent(v8, v22, v23, v24, v25);
  v26 = v19 * 0.5;
  v43 = v44;
  v27 = 1.0 / v19;
  v48 = CGRectApplyAffineTransform(v47, &v43);
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  v45[0] = v9;
  v36 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v32, v33, v34, v35, a5, v26, v27, 0.0);
  v45[1] = v36;
  v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v45, 2, v38);
  v41 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v40, v21, v8, &unk_28492DCB0, v39, self->inputColorSpace, x, y, width, height);

  return v41;
}

- (id)highFrequencyIntoAlpha:(id)a3 threshold:(float)a4 neutralFactors:(id)a5
{
  v41[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  objc_msgSend_adjustedRNAmount(self, v10, v11, v12, v13);
  if (v18 <= 2.0)
  {
    objc_msgSend_adjustedRNAmount(self, v14, v15, v16, v17);
    v19 = flt_23390A738[v20 > 1.0];
  }

  else
  {
    v19 = 0.04;
  }

  v21 = objc_msgSend_kernelWithName_(NRKernels, v14, @"highFrequencyIntoAlpha", v16, v17);
  objc_msgSend_extent(v8, v22, v23, v24, v25);
  v44 = CGRectInset(v43, -1.0, -1.0);
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  v34 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v30, v31, v32, v33, a4, (v19 * 0.5), (1.0 / v19), 0.0);
  v41[0] = v34;
  v41[1] = v9;
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v41, 2, v36);
  v39 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v38, v21, v8, &unk_28492DCD0, v37, self->inputColorSpace, x, y, width, height);

  return v39;
}

- (id)multiply:(id)a3 byNeutralFactors:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_kernelWithName_(NRKernels, v8, @"multiplyByNeutralFactors", v9, v10);
  v18[0] = v7;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v18, 1, v13);
  v16 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v15, v11, v6, v14, self->inputColorSpace, 0);

  return v16;
}

- (id)powerBlur:(id)a3 threshold:(float)a4 scale:(float)a5
{
  v34[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v12 = objc_msgSend_kernelWithName_(NRKernels, v9, @"powerBlur", v10, v11);
  objc_msgSend_extent(v8, v13, v14, v15, v16);
  v37 = CGRectInset(v36, (a5 * -2.0), (a5 * -2.0));
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_233881E78;
  v32[3] = &unk_2789EE950;
  v33 = a5;
  v25 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v21, v22, v23, v24, a4, a5, 0.0, 0.0);
  v34[0] = v25;
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, v34, 1, v27);
  v30 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v29, v12, v8, v32, v28, self->inputColorSpace, 1, x, y, width, height);

  return v30;
}

- (id)powerBlurDespeckle:(id)a3 threshold:(float)a4 scale:(float)a5 countThreshold:(int)a6 luminanceThreshold:(float)a7 diffAmount:(float)a8
{
  v45[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v18 = objc_msgSend_kernelWithName_(NRKernels, v15, @"powerBlurDespeckle", v16, v17);
  objc_msgSend_extent(v14, v19, v20, v21, v22);
  v48 = CGRectInset(v47, (a5 * -2.0), (a5 * -2.0));
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  *&v44 = a5;
  v31 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v27, v28, v29, v30, a4, a5, 0.0, 0.0, MEMORY[0x277D85DD0], 3221225472, sub_2338820D8, &unk_2789EE950, v44);
  v45[0] = v31;
  v36 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v32, v33, v34, v35, a6, a7, a8);
  v45[1] = v36;
  v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v45, 2, v38);
  v41 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v40, v18, v14, &v43, v39, self->inputColorSpace, x, y, width, height);

  return v41;
}

- (id)powerBlurEarlyOut:(id)a3 threshold:(float)a4 scale:(float)a5
{
  v34[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v12 = objc_msgSend_kernelWithName_(NRKernels, v9, @"powerBlurEarlyOut", v10, v11);
  objc_msgSend_extent(v8, v13, v14, v15, v16);
  v37 = CGRectInset(v36, (a5 * -2.0), (a5 * -2.0));
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2338822F0;
  v32[3] = &unk_2789EE950;
  v33 = a5;
  v25 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v21, v22, v23, v24, a4, a5, 0.0, 0.0);
  v34[0] = v25;
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, v34, 1, v27);
  v30 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v29, v12, v8, v32, v28, self->inputColorSpace, x, y, width, height);

  return v30;
}

- (id)powerBlurEarlyOut2:(id)a3 threshold:(float)a4 scale:(float)a5 neutralThreshold:(float)a6 thresholdScale:(float)a7
{
  v38[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v16 = objc_msgSend_kernelWithName_(NRKernels, v13, @"powerBlurEarlyOut2", v14, v15);
  objc_msgSend_extent(v12, v17, v18, v19, v20);
  v41 = CGRectInset(v40, (a5 * -2.0), (a5 * -2.0));
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_233882518;
  v36[3] = &unk_2789EE950;
  v37 = a5;
  v29 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v25, v26, v27, v28, a4, a5, a7, a6);
  v38[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v38, 1, v31);
  v34 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v33, v16, v12, v36, v32, self->inputColorSpace, x, y, width, height);

  return v34;
}

- (id)powerBlurFS:(id)a3 threshold:(float)a4 neutralFactors:(id)a5
{
  v33[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v13 = objc_msgSend_kernelWithName_(NRKernels, v10, @"powerBlurFS", v11, v12);
  objc_msgSend_extent(v8, v14, v15, v16, v17);
  v36 = CGRectInset(v35, -4.0, -4.0);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  *&v36.origin.x = a4;
  v26 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v22, v23, v24, v25, v36.origin.x);
  v33[0] = v26;
  v33[1] = v9;
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, v33, 2, v28);
  v31 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v30, v13, v8, &unk_28492DCF0, v29, self->inputColorSpace, x, y, width, height);

  return v31;
}

- (id)powerBlurHF:(id)a3 threshold:(float)a4 moireAmount:(float)a5 scale:(float)a6
{
  v36[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v14 = objc_msgSend_kernelWithName_(NRKernels, v11, @"powerBlurHF", v12, v13);
  objc_msgSend_extent(v10, v15, v16, v17, v18);
  v39 = CGRectInset(v38, (a6 * -2.0), (a6 * -2.0));
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_2338828FC;
  v34[3] = &unk_2789EE950;
  v35 = a6;
  v27 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v23, v24, v25, v26, a4, a6, a5, 0.0);
  v36[0] = v27;
  v30 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, v36, 1, v29);
  v32 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v31, v14, v10, v34, v30, self->inputColorSpace, x, y, width, height);

  return v32;
}

- (id)powerBlurDespeckleHF:(id)a3 threshold:(float)a4 moireAmount:(float)a5 scale:(float)a6 countThreshold:(int)a7 luminanceThreshold:(float)a8 diffAmount:(float)a9
{
  v47[2] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v19 = objc_msgSend_kernelWithName_(NRKernels, v16, @"powerBlurDespeckleHF", v17, v18);
  objc_msgSend_extent(v15, v20, v21, v22, v23);
  v50 = CGRectInset(v49, (a6 * -2.0), (a6 * -2.0));
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_233882B64;
  v45[3] = &unk_2789EE950;
  v46 = a6;
  v32 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v28, v29, v30, v31, a4, a6, a5, 0.0);
  v47[0] = v32;
  v37 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v33, v34, v35, v36, a7, a8, a9);
  v47[1] = v37;
  v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, v47, 2, v39);
  v42 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v41, v19, v15, v45, v40, self->inputColorSpace, x, y, width, height);

  return v42;
}

- (id)powerBlurEarlyOutHF:(id)a3 threshold:(float)a4 moireAmount:(float)a5 scale:(float)a6
{
  v36[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v14 = objc_msgSend_kernelWithName_(NRKernels, v11, @"powerBlurEarlyOutHF", v12, v13);
  objc_msgSend_extent(v10, v15, v16, v17, v18);
  v39 = CGRectInset(v38, (a6 * -2.0), (a6 * -2.0));
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_233882D88;
  v34[3] = &unk_2789EE950;
  v35 = a6;
  v27 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v23, v24, v25, v26, a4, a6, a5, 0.0);
  v36[0] = v27;
  v30 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, v36, 1, v29);
  v32 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v31, v14, v10, v34, v30, self->inputColorSpace, x, y, width, height);

  return v32;
}

- (id)powerBlurEarlyOut2HF:(id)a3 threshold:(float)a4 moireAmount:(float)a5 scale:(float)a6 neutralThreshold:(float)a7 thresholdScale:(float)a8
{
  v45[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v18 = objc_msgSend_kernelWithName_(NRKernels, v15, @"powerBlurEarlyOut2HF", v16, v17);
  objc_msgSend_extent(v14, v19, v20, v21, v22);
  v48 = CGRectInset(v47, (a6 * -2.0), (a6 * -2.0));
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_233882FE8;
  v43[3] = &unk_2789EE950;
  v44 = a6;
  v30 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v26, v27, v28, v29, a4, a6, a8, a7);
  v45[0] = v30;
  v35 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v31, v32, v33, v34, a5, 0.0, 0.0, 0.0);
  v45[1] = v35;
  v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v45, 2, v37);
  v40 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v39, v18, v14, v43, v38, self->inputColorSpace, x, y, width, height);

  return v40;
}

- (id)powerBlurFSHF:(id)a3 threshold:(float)a4 moireAmount:(float)a5 neutralFactors:(id)a6
{
  v40[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v15 = objc_msgSend_kernelWithName_(NRKernels, v12, @"powerBlurFSHF", v13, v14);
  objc_msgSend_extent(v10, v16, v17, v18, v19);
  v43 = CGRectInset(v42, -4.0, -4.0);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  *&v43.origin.x = a4;
  v28 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v24, v25, v26, v27, v43.origin.x);
  v33 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v29, v30, v31, v32, a5, 0.0, 0.0, 0.0, v28, v11);
  v40[2] = v33;
  v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v34, v40, 3, v35);
  v38 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v37, v15, v10, &unk_28492DD10, v36, self->inputColorSpace, x, y, width, height);

  return v38;
}

- (id)perceptualToLinear:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_kernelWithName_(NRKernels, v5, @"perceptualToLinear", v6, v7);
  v10 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v9, v8, v4, MEMORY[0x277CBEBF8], self->inputColorSpace, 0);

  return v10;
}

- (id)expandHalfSizeRGB:(id)a3
{
  v4 = a3;
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeScale(&v17, 2.0, 2.0);
  v8 = objc_msgSend_kernelWithName_(NRKernels, v5, @"expandHalfSizeRGB", v6, v7);
  objc_msgSend_extent(v4, v9, v10, v11, v12);
  v16 = v17;
  v20 = CGRectApplyAffineTransform(v19, &v16);
  v21 = CGRectInset(v20, -1.0, -1.0);
  v14 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v13, v8, v4, &unk_28492DD30, 0, self->inputColorSpace, v21.origin.x, v21.origin.y, v21.size.width, v21.size.height);

  return v14;
}

- (id)powerBlurY:(id)a3 threshold:(float)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v10 = objc_msgSend_kernelWithName_(NRKernels, v7, @"powerBlurY", v8, v9);
  objc_msgSend_extent(v6, v11, v12, v13, v14);
  v33 = CGRectInset(v32, -2.0, -2.0);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  *&v33.origin.x = a4;
  v23 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v19, v20, v21, v22, v33.origin.x);
  v30[0] = v23;
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v24, v30, 1, v25);
  v28 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v27, v10, v6, &unk_28492DD50, v26, self->inputColorSpace, 1, x, y, width, height);

  return v28;
}

- (id)expandAndMakeDetails:(id)a3 halfSize:(id)a4
{
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  memset(&v39, 0, sizeof(v39));
  CGAffineTransformMakeScale(&v39, 2.0, 2.0);
  v11 = objc_msgSend_kernelWithName_(NRKernels, v8, @"expandAndMakeDetails", v9, v10);
  objc_msgSend_extent(v6, v12, v13, v14, v15);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  objc_msgSend_extent(v7, v24, v25, v26, v27);
  v38 = v39;
  v43 = CGRectApplyAffineTransform(v42, &v38);
  v46 = CGRectInset(v43, -1.0, -1.0);
  v44.origin.x = v17;
  v44.origin.y = v19;
  v44.size.width = v21;
  v44.size.height = v23;
  v45 = CGRectUnion(v44, v46);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  v40[0] = v7;
  v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, v40, 1, v33);
  v36 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v35, v11, v6, &unk_28492DD70, v34, self->inputColorSpace, 1, x, y, width, height);

  return v36;
}

- (id)reduce:(id)a3
{
  v4 = a3;
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeScale(&v17, 0.5, 0.5);
  v8 = objc_msgSend_kernelWithName_(NRKernels, v5, @"reduce", v6, v7);
  objc_msgSend_extent(v4, v9, v10, v11, v12);
  v16 = v17;
  v20 = CGRectApplyAffineTransform(v19, &v16);
  v21 = CGRectInset(v20, -1.0, -1.0);
  v14 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v13, v8, v4, &unk_28492DD90, 0, self->inputColorSpace, 1, v21.origin.x, v21.origin.y, v21.size.width, v21.size.height);

  return v14;
}

- (id)gaborFiltersToSmoothedLuminanceAndGradient:(id)a3 smoothAmt:(float)a4 tinyBlurFactor:(float)a5
{
  v42[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v12 = objc_msgSend_kernelWithName_(NRKernels, v9, @"gaborFiltersToSmoothedLuminanceAndGradient", v10, v11);
  objc_msgSend_extent(v8, v13, v14, v15, v16);
  v45 = CGRectInset(v44, -3.0, -3.0);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  *&v45.origin.x = a4;
  v25 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v21, v22, v23, v24, v45.origin.x);
  v30 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v26, v27, v28, v29, (((a5 * -4.0) + 1.0) + -0.14062), (a5 + -0.09375), -0.0625, -0.0234375, v25);
  v42[1] = v30;
  v35 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v31, v32, v33, v34, -0.015625, -0.00390625, 0.0, 0.0);
  v42[2] = v35;
  v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v42, 3, v37);
  v40 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v39, v12, v8, &unk_28492DDB0, v38, self->inputColorSpace, 1, x, y, width, height);

  return v40;
}

- (id)gaborFiltersToLuminanceAndVectorField:(id)a3 thresh:(float)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v10 = objc_msgSend_kernelWithName_(NRKernels, v7, @"gaborFiltersToLuminanceAndVectorField", v8, v9);
  objc_msgSend_extent(v6, v11, v12, v13, v14);
  v33 = CGRectInset(v32, -3.0, -3.0);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  *&v33.origin.x = a4;
  v23 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v19, v20, v21, v22, v33.origin.x);
  v30[0] = v23;
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v24, v30, 1, v25);
  v28 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v27, v10, v6, &unk_28492DDD0, v26, self->inputColorSpace, 1, x, y, width, height);

  return v28;
}

- (id)gaborFiltersToVectorField:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_kernelWithName_(NRKernels, v5, @"gaborFiltersToVectorField", v6, v7);
  objc_msgSend_extent(v4, v9, v10, v11, v12);
  v18 = CGRectInset(v17, -3.0, -3.0);
  v14 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v13, v8, v4, &unk_28492DDF0, 0, self->inputColorSpace, 1, v18.origin.x, v18.origin.y, v18.size.width, v18.size.height);

  return v14;
}

- (id)smoothDetailsAlongDirections:(id)a3 directions:(id)a4 amount:(float)a5
{
  v55[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v54 = 0;
  *&v10 = a5;
  objc_msgSend_computeScaleA_B_withSmoothingAmount_(self, v11, &v54 + 4, &v54, v12, v10);
  v16 = objc_msgSend_kernelWithName_(NRKernels, v13, @"smoothDetailsAlongDirections", v14, v15);
  objc_msgSend_extent(v9, v17, v18, v19, v20);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  objc_msgSend_extent(v8, v29, v30, v31, v32);
  v60 = CGRectInset(v57, -2.0, -2.0);
  v58.origin.x = v22;
  v58.origin.y = v24;
  v58.size.width = v26;
  v58.size.height = v28;
  v59 = CGRectUnion(v58, v60);
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  v55[0] = v9;
  LODWORD(v59.origin.x) = HIDWORD(v54);
  v41 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v37, v38, v39, v40, v59.origin.x);
  v55[1] = v41;
  LODWORD(v42) = v54;
  v47 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v43, v44, v45, v46, v42);
  v55[2] = v47;
  v50 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v55, 3, v49);
  v52 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v51, v16, v8, &unk_28492DE10, v50, self->inputColorSpace, 1, x, y, width, height);

  return v52;
}

- (id)smoothDetailsAlongDirectionsAtScale:(id)a3 directions:(id)a4 scale:(float)a5 thresh:(float)a6 smooth:(float)a7
{
  v51[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v17 = objc_msgSend_kernelWithName_(NRKernels, v14, @"smoothDetailsAlongDirectionsAtScale", v15, v16);
  objc_msgSend_extent(v12, v18, v19, v20, v21);
  v54 = CGRectInset(v53, -a5, -a5);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  objc_msgSend_extent(v13, v26, v27, v28, v29);
  v57.origin.x = v30;
  v57.origin.y = v31;
  v57.size.width = v32;
  v57.size.height = v33;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v56 = CGRectUnion(v55, v57);
  v34 = v56.origin.x;
  v35 = v56.origin.y;
  v36 = v56.size.width;
  v37 = v56.size.height;
  *&v50 = a5;
  v42 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v38, v39, v40, v41, a5, a6, a7, 0.0, MEMORY[0x277D85DD0], 3221225472, sub_233884324, &unk_2789EE950, v50, v13);
  v51[1] = v42;
  v45 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v43, v51, 2, v44);
  v47 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v46, v17, v12, &v49, v45, self->inputColorSpace, v34, v35, v36, v37);

  return v47;
}

- (id)smoothDetailsAlongDirectionsAtScaleAntiBloom:(id)a3 directions:(id)a4 scale:(float)a5 thresh:(float)a6 smooth:(float)a7 maxContrast:(float)a8
{
  v53[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v19 = objc_msgSend_kernelWithName_(NRKernels, v16, @"smoothDetailsAlongDirectionsAtScaleAntiBloom", v17, v18);
  objc_msgSend_extent(v14, v20, v21, v22, v23);
  v56 = CGRectInset(v55, -a5, -a5);
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  objc_msgSend_extent(v15, v28, v29, v30, v31);
  v59.origin.x = v32;
  v59.origin.y = v33;
  v59.size.width = v34;
  v59.size.height = v35;
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v58 = CGRectUnion(v57, v59);
  v36 = v58.origin.x;
  v37 = v58.origin.y;
  v38 = v58.size.width;
  v39 = v58.size.height;
  *&v52 = a5;
  v44 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v40, v41, v42, v43, a5, a6, a7, a8, MEMORY[0x277D85DD0], 3221225472, sub_2338845B8, &unk_2789EE950, v52, v15);
  v53[1] = v44;
  v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v45, v53, 2, v46);
  v49 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v48, v19, v14, &v51, v47, self->inputColorSpace, v36, v37, v38, v39);

  return v49;
}

- (id)smoothDetailsAlongDirectionsAtScaleWithSharpen:(id)a3 directions:(id)a4 scale:(float)a5 thresh:(float)a6 smooth:(float)a7 sharp:(float)a8 pscale:(float)a9 coringThreshold:(float)a10
{
  v62[3] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v21 = objc_msgSend_kernelWithName_(NRKernels, v18, @"smoothDetailsAlongDirectionsAtScaleWithSharpen", v19, v20);
  objc_msgSend_extent(v16, v22, v23, v24, v25);
  v65 = CGRectInset(v64, (a5 * -2.0), (a5 * -2.0));
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  height = v65.size.height;
  objc_msgSend_extent(v17, v30, v31, v32, v33);
  v68.origin.x = v34;
  v68.origin.y = v35;
  v68.size.width = v36;
  v68.size.height = v37;
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  v67 = CGRectUnion(v66, v68);
  v38 = v67.origin.x;
  v39 = v67.origin.y;
  v40 = v67.size.width;
  v41 = v67.size.height;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = sub_2338848A4;
  v60[3] = &unk_2789EE950;
  v61 = a5;
  v62[0] = v17;
  v46 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v42, v43, v44, v45, a5, a6, a7, a8);
  v62[1] = v46;
  v51 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v47, v48, v49, v50, a9, (a10 * 0.75), (2.0 / a10));
  v62[2] = v51;
  v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v52, v62, 3, v53);
  v56 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v55, v21, v16, v60, v54, self->inputColorSpace, v38, v39, v40, v41);

  return v56;
}

- (id)smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom:(id)a3 directions:(id)a4 scale:(float)a5 thresh:(float)a6 smooth:(float)a7 sharp:(float)a8 pscale:(float)a9 coringThreshold:(float)a10 maxContrast:(float)a11
{
  v64[3] = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v22 = objc_msgSend_kernelWithName_(NRKernels, v19, @"smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom", v20, v21);
  objc_msgSend_extent(v17, v23, v24, v25, v26);
  v67 = CGRectInset(v66, (a5 * -2.0), (a5 * -2.0));
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  objc_msgSend_extent(v18, v31, v32, v33, v34);
  v70.origin.x = v35;
  v70.origin.y = v36;
  v70.size.width = v37;
  v70.size.height = v38;
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  v69 = CGRectUnion(v68, v70);
  v39 = v69.origin.x;
  v40 = v69.origin.y;
  v41 = v69.size.width;
  v42 = v69.size.height;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_233884B9C;
  v62[3] = &unk_2789EE950;
  v63 = a5;
  v64[0] = v18;
  v47 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v43, v44, v45, v46, a5, a6, a7, a8);
  v64[1] = v47;
  v52 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v48, v49, v50, v51, a9, (a10 * 0.75), (2.0 / a10), a11);
  v64[2] = v52;
  v55 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v53, v64, 3, v54);
  v57 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v56, v22, v17, v62, v55, self->inputColorSpace, v39, v40, v41, v42);

  return v57;
}

- (id)blurGradient:(id)a3 lothresh:(float)a4 factor:(float)a5
{
  v38[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v12 = objc_msgSend_kernelWithName_(NRKernels, v9, @"blurGradient", v10, v11);
  objc_msgSend_extent(v8, v13, v14, v15, v16);
  v41 = CGRectInset(v40, -1.0, -1.0);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  *&v41.origin.x = a4;
  v25 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v21, v22, v23, v24, v41.origin.x);
  v38[0] = v25;
  *&v26 = a5;
  v31 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v27, v28, v29, v30, v26);
  v38[1] = v31;
  v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, v38, 2, v33);
  v36 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v35, v12, v8, &unk_28492DE30, v34, self->inputColorSpace, x, y, width, height);

  return v36;
}

- (id)blurGradientPlusCurvature:(id)a3 lothresh:(float)a4 factor:(float)a5 cthresh:(float)a6 cfactor:(float)a7
{
  v54[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v16 = objc_msgSend_kernelWithName_(NRKernels, v13, @"blurGradientPlusCurvature", v14, v15);
  objc_msgSend_extent(v12, v17, v18, v19, v20);
  v57 = CGRectInset(v56, -1.0, -1.0);
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  *&v57.origin.x = a4;
  v29 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v25, v26, v27, v28, v57.origin.x);
  v54[0] = v29;
  *&v30 = a5;
  v35 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v31, v32, v33, v34, v30);
  v54[1] = v35;
  *&v36 = a6;
  v41 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v37, v38, v39, v40, v36);
  v54[2] = v41;
  *&v42 = a7;
  v47 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v43, v44, v45, v46, v42);
  v54[3] = v47;
  v50 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v54, 4, v49);
  v52 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v51, v16, v12, &unk_28492DE50, v50, self->inputColorSpace, x, y, width, height);

  return v52;
}

- (id)expandAndSharpenDetailsThroughGradientMaskGather:(id)a3 halfSizeY:(id)a4 cnrRGB:(id)a5 sharpen:(float)a6 soften:(float)a7 floor:(float)a8 sushiFactors:(id)a9 crop:(CGRect)a10 lumFactors:(id)a11
{
  height = a10.size.height;
  width = a10.size.width;
  y = a10.origin.y;
  x = a10.origin.x;
  v62[8] = *MEMORY[0x277D85DE8];
  v61 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a9;
  v26 = a11;
  v60 = v23;
  v30 = objc_msgSend_kernelWithName_(NRKernels, v27, @"expandAndSharpenDetailsThroughGradientMaskGather", v28, v29);
  v62[0] = v23;
  v62[1] = v24;
  *&v31 = a6;
  v36 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v32, v33, v34, v35, v31);
  v62[2] = v36;
  *&v37 = a7;
  v42 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v38, v39, v40, v41, v37);
  v62[3] = v42;
  *&v43 = a8;
  v48 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v44, v45, v46, v47, v43);
  v62[4] = v48;
  v62[5] = v25;
  v53 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v49, v50, v51, v52, x, y, width, height);
  v62[6] = v53;
  v62[7] = v26;
  v56 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v54, v62, 8, v55);
  v58 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v57, v30, v61, &unk_28492DE70, v56, self->inputColorSpace, 1, x, y, width, height);

  return v58;
}

- (id)expandAndSharpenDetailsThroughGradientMaskGatherOpponentColor:(id)a3 halfSizeY:(id)a4 cnrRGB:(id)a5 originalY:(id)a6 sharpen:(float)a7 soften:(float)a8 floor:(float)a9 sushiFactors:(id)a10 crop:(CGRect)a11 lumFactors:(id)a12
{
  height = a11.size.height;
  width = a11.size.width;
  y = a11.origin.y;
  x = a11.origin.x;
  v66[9] = *MEMORY[0x277D85DE8];
  v65 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a10;
  v29 = a12;
  v63 = v25;
  v64 = v26;
  v33 = objc_msgSend_kernelWithName_(NRKernels, v30, @"expandAndSharpenDetailsThroughGradientMaskGatherOpponentColor", v31, v32);
  v66[0] = v25;
  v66[1] = v26;
  v66[2] = v27;
  *&v34 = a7;
  v39 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v35, v36, v37, v38, v34);
  v66[3] = v39;
  *&v40 = a8;
  v45 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v41, v42, v43, v44, v40);
  v66[4] = v45;
  *&v46 = a9;
  v51 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v47, v48, v49, v50, v46);
  v66[5] = v51;
  v66[6] = v28;
  v56 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v52, v53, v54, v55, x, y, width, height);
  v66[7] = v56;
  v66[8] = v29;
  v59 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v57, v66, 9, v58);
  v61 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v60, v33, v65, &unk_28492DE90, v59, self->inputColorSpace, 1, x, y, width, height);

  return v61;
}

- (id)expandAndSharpenThroughGradientMaskGather:(id)a3 halfSizeY:(id)a4 cnrRGB:(id)a5 sharpen:(float)a6 floor:(float)a7 sushiFactors:(id)a8 crop:(CGRect)a9 lumFactors:(id)a10
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v53[7] = *MEMORY[0x277D85DE8];
  v52 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a8;
  v24 = a10;
  v28 = objc_msgSend_kernelWithName_(NRKernels, v25, @"expandAndSharpenThroughGradientMaskGather", v26, v27);
  v53[0] = v21;
  v53[1] = v22;
  *&v29 = a6;
  v34 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v30, v31, v32, v33, v29);
  v53[2] = v34;
  *&v35 = a7;
  v40 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v36, v37, v38, v39, v35);
  v53[3] = v40;
  v53[4] = v23;
  v45 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v41, v42, v43, v44, x, y, width, height);
  v53[5] = v45;
  v53[6] = v24;
  v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v46, v53, 7, v47);
  v50 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v49, v28, v52, &unk_28492DEB0, v48, self->inputColorSpace, 1, x, y, width, height);

  return v50;
}

- (id)expandAndSharpenThroughGradientMaskGatherOpponentColor:(id)a3 halfSizeY:(id)a4 cnrRGB:(id)a5 originalY:(id)a6 sharpen:(float)a7 floor:(float)a8 sushiFactors:(id)a9 crop:(CGRect)a10 lumFactors:(id)a11
{
  height = a10.size.height;
  width = a10.size.width;
  y = a10.origin.y;
  x = a10.origin.x;
  v57[8] = *MEMORY[0x277D85DE8];
  v56 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a9;
  v27 = a11;
  v55 = v23;
  v31 = objc_msgSend_kernelWithName_(NRKernels, v28, @"expandAndSharpenThroughGradientMaskGatherOpponentColor", v29, v30);
  v57[0] = v23;
  v57[1] = v24;
  v57[2] = v25;
  *&v32 = a7;
  v37 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v33, v34, v35, v36, v32);
  v57[3] = v37;
  *&v38 = a8;
  v43 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v39, v40, v41, v42, v38);
  v57[4] = v43;
  v57[5] = v26;
  v48 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v44, v45, v46, v47, x, y, width, height);
  v57[6] = v48;
  v57[7] = v27;
  v51 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v49, v57, 8, v50);
  v53 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v52, v31, v56, &unk_28492DED0, v51, self->inputColorSpace, 1, x, y, width, height);

  return v53;
}

- (id)expandAndSharpenThroughGradientMask:(id)a3 fullSizeY:(id)a4 sharpen:(float)a5
{
  v47[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  memset(&v46, 0, sizeof(v46));
  CGAffineTransformMakeScale(&v46, 2.0, 2.0);
  v13 = objc_msgSend_kernelWithName_(NRKernels, v10, @"expandAndSharpenThroughGradientMask", v11, v12);
  objc_msgSend_extent(v9, v14, v15, v16, v17);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  objc_msgSend_extent(v8, v26, v27, v28, v29);
  v45 = v46;
  v53 = CGRectApplyAffineTransform(v49, &v45);
  v50.origin.x = v19;
  v50.origin.y = v21;
  v50.size.width = v23;
  v50.size.height = v25;
  v51 = CGRectUnion(v50, v53);
  v52 = CGRectInset(v51, -1.0, -1.0);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  v47[0] = v9;
  *&v52.origin.x = a5;
  v38 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v34, v35, v36, v37, v52.origin.x);
  v47[1] = v38;
  v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, v47, 2, v40);
  v43 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v42, v13, v8, &unk_28492DEF0, v41, self->inputColorSpace, 1, x, y, width, height);

  return v43;
}

- (id)YAndRGBGather:(id)a3 cnrRGB:(id)a4 sushiFactors:(id)a5 crop:(CGRect)a6 lumFactors:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v35[4] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v22 = objc_msgSend_kernelWithName_(NRKernels, v19, @"YAndRGBGather", v20, v21);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_233885F10;
  v34[3] = &unk_2789EF848;
  *&v34[4] = x;
  *&v34[5] = y;
  *&v34[6] = width;
  *&v34[7] = height;
  v35[0] = v16;
  v35[1] = v17;
  v27 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v23, v24, v25, v26, x, y, width, height);
  v35[2] = v27;
  v35[3] = v18;
  v30 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, v35, 4, v29);
  v32 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v31, v22, v15, v34, v30, self->inputColorSpace, x, y, width, height);

  return v32;
}

- (id)YAndRGBGatherOpponentColor:(id)a3 cnrRGB:(id)a4 originalY:(id)a5 sushiFactors:(id)a6 crop:(CGRect)a7 lumFactors:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v38[5] = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v25 = objc_msgSend_kernelWithName_(NRKernels, v22, @"YAndRGBGatherOpponentColor", v23, v24);
  v30 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v26, v27, v28, v29, x, y, width, height, MEMORY[0x277D85DD0], 3221225472, sub_23388615C, &unk_2789EF848, *&x, *&y, *&width, *&height, v18, v19, v20);
  v38[3] = v30;
  v38[4] = v21;
  v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v31, v38, 5, v32);
  v35 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v34, v25, v17, &v37, v33, self->inputColorSpace, x, y, width, height);

  return v35;
}

- (id)expandAndAddDetailsWithOverdrive:(id)a3 fullSize:(id)a4 contrast:(float)a5
{
  v47[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  memset(&v46, 0, sizeof(v46));
  CGAffineTransformMakeScale(&v46, 2.0, 2.0);
  v13 = objc_msgSend_kernelWithName_(NRKernels, v10, @"expandAndAddDetailsWithOverdrive", v11, v12);
  objc_msgSend_extent(v9, v14, v15, v16, v17);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  objc_msgSend_extent(v8, v26, v27, v28, v29);
  v45 = v46;
  v50 = CGRectApplyAffineTransform(v49, &v45);
  v53 = CGRectInset(v50, -1.0, -1.0);
  v51.origin.x = v19;
  v51.origin.y = v21;
  v51.size.width = v23;
  v51.size.height = v25;
  v52 = CGRectUnion(v51, v53);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  v47[0] = v9;
  *&v52.origin.x = a5;
  v38 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v34, v35, v36, v37, v52.origin.x);
  v47[1] = v38;
  v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, v47, 2, v40);
  v43 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v42, v13, v8, &unk_28492DF10, v41, self->inputColorSpace, 1, x, y, width, height);

  return v43;
}

- (id)fineGrainNoise:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_kernelWithName_(NRKernels, v5, @"FineGrainNoise", v6, v7);
  objc_msgSend_extent(v4, v9, v10, v11, v12);
  v18 = CGRectInset(v17, -1.0, -1.0);
  v14 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v13, v8, v4, &unk_28492DF30, 0, self->inputColorSpace, 1, v18.origin.x, v18.origin.y, v18.size.width, v18.size.height);

  return v14;
}

- (id)fineGrainNoise2:(id)a3 tinyBlurFactor:(float)a4
{
  v35[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v10 = objc_msgSend_kernelWithName_(NRKernels, v7, @"FineGrainNoise2", v8, v9);
  objc_msgSend_extent(v6, v11, v12, v13, v14);
  v38 = CGRectInset(v37, -2.0, -2.0);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v23 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v19, v20, v21, v22, (((a4 * -4.0) + 1.0) + -0.14062), (a4 + -0.09375), -0.0625, -0.0234375);
  v35[0] = v23;
  v28 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v24, v25, v26, v27, -0.015625, -0.00390625, 0.0, 0.0);
  v35[1] = v28;
  v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v29, v35, 2, v30);
  v33 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v32, v10, v6, &unk_28492DF50, v31, self->inputColorSpace, 1, x, y, width, height);

  return v33;
}

- (id)expandAndAddDetailsThroughGradientMask:(id)a3 fullSize:(id)a4 fullSizeDetails:(id)a5 fullSizeMask:(id)a6 amount:(float)a7 contrastOverdrive:(float)a8 interpolant:(float)a9
{
  v81[4] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  memset(&v80, 0, sizeof(v80));
  CGAffineTransformMakeScale(&v80, 2.0, 2.0);
  v20 = objc_msgSend_kernelWithName_(NRKernels, v17, @"expandAndAddDetailsThroughGradientMask", v18, v19);
  objc_msgSend_extent(v14, v21, v22, v23, v24);
  v74 = v26;
  v75 = v25;
  v72 = v28;
  v73 = v27;
  objc_msgSend_extent(v15, v29, v30, v31, v32);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  objc_msgSend_extent(v16, v41, v42, v43, v44);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  objc_msgSend_extent(v13, v53, v54, v55, v56);
  v79 = v80;
  v84 = CGRectApplyAffineTransform(v83, &v79);
  v89 = CGRectInset(v84, -1.0, -1.0);
  v85.origin.x = v46;
  v85.origin.y = v48;
  v85.size.width = v50;
  v85.size.height = v52;
  v90 = CGRectUnion(v85, v89);
  v86.origin.x = v34;
  v86.origin.y = v36;
  v86.size.width = v38;
  v86.size.height = v40;
  v91 = CGRectUnion(v86, v90);
  v87.origin.y = v74;
  v87.origin.x = v75;
  v87.size.height = v72;
  v87.size.width = v73;
  v88 = CGRectUnion(v87, v91);
  x = v88.origin.x;
  y = v88.origin.y;
  width = v88.size.width;
  height = v88.size.height;
  v81[0] = v14;
  v81[1] = v15;
  v81[2] = v16;
  v65 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v61, v62, v63, v64, a7, a8, a9, 0.0);
  v81[3] = v65;
  v68 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v66, v81, 4, v67);
  v70 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v69, v20, v13, &unk_28492DF70, v68, self->inputColorSpace, 1, x, y, width, height);

  return v70;
}

- (id)compositeThroughGradientMask:(id)a3 fullSize:(id)a4 fullSizeMask:(id)a5
{
  v57[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = objc_msgSend_kernelWithName_(NRKernels, v11, @"compositeThroughGradientMask", v12, v13);
  objc_msgSend_extent(v9, v15, v16, v17, v18);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  objc_msgSend_extent(v10, v27, v28, v29, v30);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  objc_msgSend_extent(v8, v39, v40, v41, v42);
  v62.origin.x = v43;
  v62.origin.y = v44;
  v62.size.width = v45;
  v62.size.height = v46;
  v59.origin.x = v32;
  v59.origin.y = v34;
  v59.size.width = v36;
  v59.size.height = v38;
  v63 = CGRectUnion(v59, v62);
  v60.origin.x = v20;
  v60.origin.y = v22;
  v60.size.width = v24;
  v60.size.height = v26;
  v61 = CGRectUnion(v60, v63);
  x = v61.origin.x;
  y = v61.origin.y;
  width = v61.size.width;
  height = v61.size.height;
  v57[0] = v9;
  v57[1] = v10;
  v53 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v51, v57, 2, v52);
  v55 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v54, v14, v8, 0, v53, self->inputColorSpace, 1, x, y, width, height);

  return v55;
}

- (id)expandAndAddDetailsThroughGradientMask2:(id)a3 halfSize:(id)a4 fullSizeDetails:(id)a5 soften:(float)a6 sharpen:(float)a7
{
  v70[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  memset(&v69, 0, sizeof(v69));
  CGAffineTransformMakeScale(&v69, 2.0, 2.0);
  v16 = objc_msgSend_kernelWithName_(NRKernels, v13, @"expandAndAddDetailsThroughGradientMask2", v14, v15);
  objc_msgSend_extent(v10, v17, v18, v19, v20);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  objc_msgSend_extent(v12, v29, v30, v31, v32);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  objc_msgSend_extent(v11, v41, v42, v43, v44);
  v68 = v69;
  v73 = CGRectApplyAffineTransform(v72, &v68);
  v77 = CGRectInset(v73, -1.0, -1.0);
  v74.origin.x = v34;
  v74.origin.y = v36;
  v74.size.width = v38;
  v74.size.height = v40;
  v78 = CGRectUnion(v74, v77);
  v75.origin.x = v22;
  v75.origin.y = v24;
  v75.size.width = v26;
  v75.size.height = v28;
  v76 = CGRectUnion(v75, v78);
  x = v76.origin.x;
  y = v76.origin.y;
  width = v76.size.width;
  height = v76.size.height;
  v70[0] = v11;
  v70[1] = v12;
  *&v76.origin.x = a6;
  v53 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v49, v50, v51, v52, v76.origin.x);
  v70[2] = v53;
  *&v54 = a7;
  v59 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v55, v56, v57, v58, v54);
  v70[3] = v59;
  v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v60, v70, 4, v61);
  v64 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v63, v16, v10, &unk_28492DF90, v62, self->inputColorSpace, 1, x, y, width, height);

  return v64;
}

- (id)expandAndAddDetailsThroughGradientMask3:(id)a3 fullSize:(id)a4 fullSizeDetails:(id)a5 fullSizeMask:(id)a6 amount:(float)a7 sharpen:(float)a8 interpolant:(float)a9
{
  v81[4] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  memset(&v80, 0, sizeof(v80));
  CGAffineTransformMakeScale(&v80, 2.0, 2.0);
  v20 = objc_msgSend_kernelWithName_(NRKernels, v17, @"expandAndAddDetailsThroughGradientMask3", v18, v19);
  objc_msgSend_extent(v14, v21, v22, v23, v24);
  v74 = v26;
  v75 = v25;
  v72 = v28;
  v73 = v27;
  objc_msgSend_extent(v15, v29, v30, v31, v32);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  objc_msgSend_extent(v16, v41, v42, v43, v44);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  objc_msgSend_extent(v13, v53, v54, v55, v56);
  v79 = v80;
  v84 = CGRectApplyAffineTransform(v83, &v79);
  v89 = CGRectInset(v84, -1.0, -1.0);
  v85.origin.x = v46;
  v85.origin.y = v48;
  v85.size.width = v50;
  v85.size.height = v52;
  v90 = CGRectUnion(v85, v89);
  v86.origin.x = v34;
  v86.origin.y = v36;
  v86.size.width = v38;
  v86.size.height = v40;
  v91 = CGRectUnion(v86, v90);
  v87.origin.y = v74;
  v87.origin.x = v75;
  v87.size.height = v72;
  v87.size.width = v73;
  v88 = CGRectUnion(v87, v91);
  x = v88.origin.x;
  y = v88.origin.y;
  width = v88.size.width;
  height = v88.size.height;
  v81[0] = v14;
  v81[1] = v15;
  v81[2] = v16;
  v65 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v61, v62, v63, v64, a7, a8, a9, 0.0);
  v81[3] = v65;
  v68 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v66, v81, 4, v67);
  v70 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v69, v20, v13, &unk_28492DFB0, v68, self->inputColorSpace, 1, x, y, width, height);

  return v70;
}

- (id)addNoise:(id)a3 noise:(id)a4 amount:(float)a5
{
  v49[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v12 = a4;
  if (v12 && a5 >= 0.001)
  {
    v13 = objc_msgSend_kernelWithName_(NRKernels, v9, @"AddNoise", v10, v11, a5);
    objc_msgSend_extent(v8, v14, v15, v16, v17);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    objc_msgSend_extent(v12, v26, v27, v28, v29);
    v53.origin.x = v30;
    v53.origin.y = v31;
    v53.size.width = v32;
    v53.size.height = v33;
    v51.origin.x = v19;
    v51.origin.y = v21;
    v51.size.width = v23;
    v51.size.height = v25;
    v52 = CGRectUnion(v51, v53);
    x = v52.origin.x;
    y = v52.origin.y;
    width = v52.size.width;
    height = v52.size.height;
    v49[0] = v12;
    *&v52.origin.x = a5;
    v42 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v38, v39, v40, v41, v52.origin.x);
    v49[1] = v42;
    v45 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v43, v49, 2, v44);
    v47 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v46, v13, v8, 0, v45, self->inputColorSpace, 1, x, y, width, height);
  }

  else
  {
    v47 = v8;
  }

  return v47;
}

- (id)vectorFieldToDirectionsAndGradients:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_kernelWithName_(NRKernels, v5, @"vectorFieldToDirectionsAndGradients", v6, v7);
  v10 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_isAlphaOne_(self, v9, v8, v4, 0, self->inputColorSpace, 0, 1);

  return v10;
}

- (id)smoothVectorFieldAlongVectors:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_kernelWithName_(NRKernels, v5, @"smoothVectorFieldAlongVectors", v6, v7);
  objc_msgSend_extent(v4, v9, v10, v11, v12);
  v18 = CGRectInset(v17, -3.0, -3.0);
  v14 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, v13, v8, v4, &unk_28492DFD0, 0, self->inputColorSpace, 1, v18.origin.x, v18.origin.y, v18.size.width, v18.size.height);

  return v14;
}

- (id)directionsToCurvature:(id)a3 threshold:(float)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v10 = objc_msgSend_kernelWithName_(NRKernels, v7, @"directionsToCurvature", v8, v9);
  objc_msgSend_extent(v6, v11, v12, v13, v14);
  v33 = CGRectInset(v32, -4.0, -4.0);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  *&v33.origin.x = a4;
  v23 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v19, v20, v21, v22, v33.origin.x);
  v30[0] = v23;
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v24, v30, 1, v25);
  v28 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v27, v10, v6, &unk_28492DFF0, v26, self->inputColorSpace, x, y, width, height);

  return v28;
}

- (id)mergeHalfSizeCurvature:(id)a3 intoFullSizeCurvature:(id)a4
{
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  memset(&v39, 0, sizeof(v39));
  CGAffineTransformMakeScale(&v39, 2.0, 2.0);
  v11 = objc_msgSend_kernelWithName_(NRKernels, v8, @"mergeHalfSizeCurvature", v9, v10);
  objc_msgSend_extent(v7, v12, v13, v14, v15);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  objc_msgSend_extent(v6, v24, v25, v26, v27);
  v38 = v39;
  v46 = CGRectApplyAffineTransform(v42, &v38);
  v43.origin.x = v17;
  v43.origin.y = v19;
  v43.size.width = v21;
  v43.size.height = v23;
  v44 = CGRectUnion(v43, v46);
  v45 = CGRectInset(v44, -1.0, -1.0);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  v40[0] = v6;
  v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, v40, 1, v33);
  v36 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v35, v11, v7, &unk_28492E010, v34, self->inputColorSpace, x, y, width, height);

  return v36;
}

- (id)viewY:(id)a3 sushiFactors:(id)a4 crop:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v28[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v16 = objc_msgSend_kernelWithName_(NRKernels, v13, @"viewY", v14, v15);
  v28[0] = v12;
  v21 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v17, v18, v19, v20, x, y, width, height);
  v28[1] = v21;
  v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v28, 2, v23);
  v26 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v25, v16, v11, 0, v24, self->inputColorSpace, x, y, width, height);

  return v26;
}

- (id)viewBlend:(id)a3 sushiFactors:(id)a4 crop:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v28[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v16 = objc_msgSend_kernelWithName_(NRKernels, v13, @"viewBlend", v14, v15);
  v28[0] = v12;
  v21 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v17, v18, v19, v20, x, y, width, height);
  v28[1] = v21;
  v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v28, 2, v23);
  v26 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v25, v16, v11, 0, v24, self->inputColorSpace, x, y, width, height);

  return v26;
}

- (id)viewD:(id)a3 factor:(float)a4 crop:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v33[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v15 = objc_msgSend_kernelWithName_(NRKernels, v12, @"viewD", v13, v14);
  *&v16 = a4;
  v21 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v17, v18, v19, v20, v16);
  v33[0] = v21;
  v26 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v22, v23, v24, v25, x, y, width, height);
  v33[1] = v26;
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, v33, 2, v28);
  v31 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v30, v15, v11, 0, v29, self->inputColorSpace, x, y, width, height);

  return v31;
}

- (id)viewTG:(id)a3 lothresh:(float)a4 factor:(float)a5 crop:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v41[3] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v17 = objc_msgSend_kernelWithName_(NRKernels, v14, @"viewTG", v15, v16);
  *&v18 = a4;
  v23 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v19, v20, v21, v22, v18);
  *&v24 = a5;
  v29 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v25, v26, v27, v28, v24, v23);
  v41[1] = v29;
  v34 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v30, v31, v32, v33, x, y, width, height);
  v41[2] = v34;
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v41, 3, v36);
  v39 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v38, v17, v13, 0, v37, self->inputColorSpace, x, y, width, height);

  return v39;
}

- (id)viewVF:(id)a3 crop:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v25[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v13 = objc_msgSend_kernelWithName_(NRKernels, v10, @"viewVF", v11, v12);
  v18 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v14, v15, v16, v17, x, y, width, height);
  v25[0] = v18;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v25, 1, v20);
  v23 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v22, v13, v9, 0, v21, self->inputColorSpace, x, y, width, height);

  return v23;
}

- (id)viewG:(id)a3 scale:(float)a4 crop:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v33[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v15 = objc_msgSend_kernelWithName_(NRKernels, v12, @"viewG", v13, v14);
  *&v16 = a4;
  v21 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v17, v18, v19, v20, v16);
  v33[0] = v21;
  v26 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v22, v23, v24, v25, x, y, width, height);
  v33[1] = v26;
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, v33, 2, v28);
  v31 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v30, v15, v11, 0, v29, self->inputColorSpace, x, y, width, height);

  return v31;
}

- (id)viewDIR:(id)a3 do360:(BOOL)a4 crop:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4;
  v36[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (v9)
  {
    v15 = objc_msgSend_kernelWithName_(NRKernels, v11, @"viewDIR360", v12, v13);
    v20 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v16, v17, v18, v19, x, y, width, height);
    v36[0] = v20;
    v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v36, 1, v22);
    v25 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v24, v15, v14, 0, v23, self->inputColorSpace, 0.0, 0.0, width, height);
  }

  else
  {
    v15 = objc_msgSend_kernelWithName_(NRKernels, v11, @"viewDIR180", v12, v13);
    v20 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v26, v27, v28, v29, x, y, width, height);
    v35 = v20;
    v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, &v35, 1, v31);
    v25 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v32, v15, v14, 0, v23, self->inputColorSpace, 0.0, 0.0, width, height);
  }

  v33 = v25;

  return v33;
}

- (id)viewC:(id)a3 crop:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v25[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v13 = objc_msgSend_kernelWithName_(NRKernels, v10, @"viewC", v11, v12);
  v18 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v14, v15, v16, v17, x, y, width, height);
  v25[0] = v18;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v25, 1, v20);
  v23 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v22, v13, v9, 0, v21, self->inputColorSpace, 0.0, 0.0, width, height);

  return v23;
}

- (id)viewGDIR:(id)a3 do360:(BOOL)a4 crop:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4;
  v36[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (v9)
  {
    v15 = objc_msgSend_kernelWithName_(NRKernels, v11, @"viewGDIR360", v12, v13);
    v20 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v16, v17, v18, v19, x, y, width, height);
    v36[0] = v20;
    v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v36, 1, v22);
    v25 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v24, v15, v14, 0, v23, self->inputColorSpace, 0.0, 0.0, width, height);
  }

  else
  {
    v15 = objc_msgSend_kernelWithName_(NRKernels, v11, @"viewGDIR180", v12, v13);
    v20 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v26, v27, v28, v29, x, y, width, height);
    v35 = v20;
    v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, &v35, 1, v31);
    v25 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v32, v15, v14, 0, v23, self->inputColorSpace, 0.0, 0.0, width, height);
  }

  v33 = v25;

  return v33;
}

- (id)viewTGDIR:(id)a3 lothresh:(float)a4 factor:(float)a5 do360:(BOOL)a6 crop:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v11 = a6;
  v62[3] = *MEMORY[0x277D85DE8];
  v18 = a3;
  if (v11)
  {
    v19 = objc_msgSend_kernelWithName_(NRKernels, v15, @"viewTGDIR360", v16, v17);
    *&v20 = a4;
    v25 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v21, v22, v23, v24, v20);
    v62[0] = v25;
    *&v26 = a5;
    v31 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v27, v28, v29, v30, v26);
    v62[1] = v31;
    v36 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v32, v33, v34, v35, x, y, width, height);
    v62[2] = v36;
    v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v62, 3, v38);
    v41 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v40, v19, v18, 0, v39, self->inputColorSpace, 0.0, 0.0, width, height);
  }

  else
  {
    v19 = objc_msgSend_kernelWithName_(NRKernels, v15, @"viewTGDIR180", v16, v17);
    *&v42 = a4;
    v25 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v43, v44, v45, v46, v42);
    v61[0] = v25;
    *&v47 = a5;
    v31 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v48, v49, v50, v51, v47);
    v61[1] = v31;
    v36 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v52, v53, v54, v55, x, y, width, height);
    v61[2] = v36;
    v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v56, v61, 3, v57);
    v41 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v58, v19, v18, 0, v39, self->inputColorSpace, 0.0, 0.0, width, height);
  }

  v59 = v41;

  return v59;
}

- (id)viewRGB:(id)a3 sushiFactors:(id)a4 crop:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v28[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v16 = objc_msgSend_kernelWithName_(NRKernels, v13, @"viewRGB", v14, v15);
  v28[0] = v12;
  v21 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v17, v18, v19, v20, x, y, width, height);
  v28[1] = v21;
  v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v28, 2, v23);
  v26 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v25, v16, v11, 0, v24, self->inputColorSpace, 0.0, 0.0, width, height);

  return v26;
}

- (id)viewHue:(id)a3 sushiFactors:(id)a4 crop:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v28[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v16 = objc_msgSend_kernelWithName_(NRKernels, v13, @"viewHue", v14, v15);
  v28[0] = v12;
  v21 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v17, v18, v19, v20, x, y, width, height);
  v28[1] = v21;
  v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v28, 2, v23);
  v26 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v25, v16, v11, 0, v24, self->inputColorSpace, 0.0, 0.0, width, height);

  return v26;
}

- (void)computeLowThreshold:(float *)a3 andFactor:(float *)a4 withThreshold:(float)a5 andSoftness:(float)a6
{
  if (a5 < 0.00065)
  {
    a5 = 0.00065;
  }

  v6 = a5 * a6;
  v7 = a5 - (v6 * 0.5);
  *a3 = v7;
  *a4 = 1.0 / ((a5 + (v6 * 0.5)) - v7);
}

- (id)outputUnboost:(id)a3
{
  v61[9] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_intValue(self->inputBoostMethod, v5, v6, v7, v8))
  {
    v60 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v9, v10, v11, v12, 0.0106899999, 0.0437199995, 0.146479994, 0.667469978);
    v59 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v13, v14, v15, v16, 654.581604, -28.2951641, 1.25156403, 0.0);
    v58 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v17, v18, v19, v20, 68.604454, -10.1250257, 1.06397295, 0.000645000022);
    v25 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v21, v22, v23, v24, 5.20553207, -2.30455089, 0.743704975, 0.0049970001);
    v30 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v26, v27, v28, v29, 0.753764987, -0.49348101, 0.499689013, 0.015873);
    v35 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v31, v32, v33, v34, 6.54402304, -12.7344961, 9.10175419, -1.99401903);
    v40 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v36, v37, v38, v39, 232.470688, -640.049011, 589.582336, -181.004013);
    LODWORD(v41) = 1074885725;
    v46 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v42, v43, v44, v45, v41);
    v47 = v4;
    v51 = objc_msgSend_kernelWithName_(NRKernels, v48, @"inverseBoost", v49, v50);
    v61[0] = v60;
    v61[1] = &unk_28495DB90;
    v61[2] = v59;
    v61[3] = v58;
    v61[4] = v25;
    v61[5] = v30;
    v61[6] = v35;
    v61[7] = v40;
    v61[8] = v46;
    v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v52, v61, 9, v53);
    v56 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v55, v51, v47, v54, self->inputColorSpace, 1);
  }

  else
  {
    v56 = v4;
  }

  return v56;
}

- (id)outputBoost:(id)a3
{
  v51[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_intValue(self->inputBoostMethod, v5, v6, v7, v8))
  {
    v50 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v9, v10, v11, v12, 0.100000001, 0.200000003, 0.5, 1.0);
    v17 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v13, v14, v15, v16, -53.0999899, 16.819998, 0.799000025, 0.0);
    v22 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v18, v19, v20, v21, -12.3000026, 2.62000144, 2.41499972, -0.0603999913);
    v27 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v23, v24, v25, v26, 2.64814695, -4.82888758, 3.60077739, -0.11918516);
    v32 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v28, v29, v30, v31, 0.492000163, -1.72000039, 2.10900028, 0.118999943);
    LODWORD(v33) = 1054951342;
    v38 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v34, v35, v36, v37, v33);
    v39 = v4;
    v43 = objc_msgSend_kernelWithName_(NRKernels, v40, @"boost", v41, v42);
    v51[0] = v50;
    v51[1] = v17;
    v51[2] = v22;
    v51[3] = v27;
    v51[4] = v32;
    v51[5] = v38;
    v46 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v44, v51, 6, v45);
    v48 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v47, v43, v39, v46, self->inputColorSpace, 1);
  }

  else
  {
    v48 = v4;
  }

  return v48;
}

- (float)adjustedRNAmount
{
  objc_msgSend_floatValue(self->inputScaleFactor, a2, v2, v3, v4);
  v7 = fminf(fmaxf(v6, 0.0), 1.0);
  objc_msgSend_floatValue(self->inputRepresentativeNoise, v8, v9, v10, v11);
  return v7 * v12;
}

- (id)outputCNR:(id)a3 extent:(CGRect)a4 returningDebugProduct:(BOOL *)a5
{
  v11 = a3;
  if (a5)
  {
    *a5 = 0;
  }

  objc_msgSend_adjustedRNAmount(self, v7, v8, v9, v10);
  v13 = v12;
  objc_msgSend_floatValue(self->inputCNRAmount, v14, v15, v16, v17);
  v19 = v18;
  objc_msgSend_floatValue(self->inputBaselineExposure, v20, v21, v22, v23);
  v25 = v24;
  v26 = MEMORY[0x277CBF788];
  objc_msgSend_X(self->inputNeutralFactors, v27, v28, v29, v30);
  v32 = v31;
  v33 = exp2f(v25);
  objc_msgSend_Y(self->inputNeutralFactors, v34, v35, v36, v37);
  v39 = v38;
  objc_msgSend_Z(self->inputNeutralFactors, v40, v41, v42, v43);
  v53 = objc_msgSend_vectorWithX_Y_Z_W_(v26, v45, v46, v47, v48, v32 * v33, v39 * v33, v44 * v33, 1.0);
  v54 = 1.0;
  if (v13 > 1.5)
  {
    v54 = 5.0;
  }

  v55 = (v13 * 0.024249) * v19;
  if ((v55 * 3.5) >= 0.0051961)
  {
    v56 = v55 * 3.5;
  }

  else
  {
    v56 = 0.0;
  }

  if ((v55 * 1.3) >= 0.0051961)
  {
    v57 = v55 * 1.3;
  }

  else
  {
    v57 = 0.0;
  }

  if ((v55 * 0.75) >= 0.0051961)
  {
    v58 = v55 * 0.75;
  }

  else
  {
    v58 = 0.0;
  }

  v59 = v55 * 0.2;
  if ((v54 * v59) >= 0.0051961)
  {
    v60 = v59;
  }

  else
  {
    v60 = 0.0;
  }

  objc_msgSend_floatValue(self->inputMoireRadius, v49, v50, v51, v52);
  v62 = v61;
  objc_msgSend_floatValue(self->inputMoireAmount, v63, v64, v65, v66);
  v71 = *&v72 * 0.04;
  HIDWORD(v72) = 0;
  if ((*&v72 * 0.04) == 0.0)
  {
    v62 = 0.0;
  }

  if (v56 == 0.0 && v62 == 0.0 && (objc_msgSend_BOOLValue(self->inputShowHF, v67, v68, v69, v70) & 1) == 0)
  {
    v88 = objc_msgSend_multiply_byNeutralFactors_(self, v67, v11, v53, v70);
    goto LABEL_80;
  }

  if (v62 <= 0.0 && !objc_msgSend_BOOLValue(self->inputShowHF, v67, v68, v69, v70))
  {
    if (v57 != 0.0)
    {
      v96 = objc_msgSend_extractHalfSizeRGB_neutralFactors_(self, v67, v11, v53, v70);

      if (v56 <= 0.0)
      {
        v87 = v96;
      }

      else
      {
        LODWORD(v98) = 1.0;
        *&v97 = v56;
        v101 = objc_msgSend_powerBlur_threshold_scale_(self, v79, v96, v80, v81, v97, v98);

        v87 = v101;
      }

      if (v57 > 0.0)
      {
        LODWORD(v99) = 1033650332;
        LODWORD(v100) = 1076258406;
        LODWORD(v98) = 3.0;
        *&v97 = v57;
        v109 = objc_msgSend_powerBlurDespeckle_threshold_scale_countThreshold_luminanceThreshold_diffAmount_(self, v79, v87, 5, v81, v97, v98, v99, v100);

        v87 = v109;
      }

      if (v58 > 0.0)
      {
        LODWORD(v98) = 7.0;
        *&v97 = v58;
        v110 = objc_msgSend_powerBlurEarlyOut_threshold_scale_(self, v79, v87, v80, v81, v97, v98);

        v87 = v110;
      }

      if (v13 <= 1.5)
      {
        if (v60 <= 0.0)
        {
          goto LABEL_77;
        }

        LODWORD(v98) = 14.0;
        *&v97 = v60;
        v111 = objc_msgSend_powerBlurEarlyOut_threshold_scale_(self, v79, v87, v80, v81, v97, v98);
      }

      else
      {
        if (v60 <= 0.0)
        {
          goto LABEL_77;
        }

        LODWORD(v99) = 1041865114;
        LODWORD(v98) = 14.0;
        LODWORD(v100) = 5.0;
        *&v97 = v60;
        v111 = objc_msgSend_powerBlurEarlyOut2_threshold_scale_neutralThreshold_thresholdScale_(self, v79, v87, v80, v81, v97, v98, v99, v100);
      }

      v112 = v111;

      v87 = v112;
      goto LABEL_77;
    }

    *&v72 = v56;
    v74 = objc_msgSend_powerBlurFS_threshold_neutralFactors_(self, v67, v11, v53, v70, v72);
    v89 = v11;
LABEL_78:

    goto LABEL_79;
  }

  v73 = v57 != 0.0 || v62 > 2.0;
  if (!v73 && (objc_msgSend_BOOLValue(self->inputShowHF, v67, v68, v69, v70) & 1) == 0)
  {
    *&v72 = v56;
    v89 = objc_msgSend_highFrequencyIntoAlpha_threshold_neutralFactors_(self, v67, v11, v53, v70, v72);
    *&v90 = v56;
    *&v91 = v71;
    v74 = objc_msgSend_powerBlurFSHF_threshold_moireAmount_neutralFactors_(self, v92, v89, v53, v93, v90, v91);

    goto LABEL_78;
  }

  *&v72 = v56;
  v74 = objc_msgSend_extractHalfSizeRGBHF_neutralFactors_threshold_(self, v67, v11, v53, v70, v72);

  if ((objc_msgSend_BOOLValue(self->inputShowHF, v75, v76, v77, v78) & 1) == 0)
  {
    if (v56 > 0.0 || v62 > 0.0)
    {
      LODWORD(v84) = 1.0;
      *&v82 = v56;
      *&v83 = v71;
      v94 = objc_msgSend_powerBlurHF_threshold_moireAmount_scale_(self, v79, v74, v80, v81, v82, v83, v84);

      v87 = v94;
    }

    else
    {
      v87 = v74;
    }

    if (v57 > 0.0 || v62 >= 3.0)
    {
      if (v57 > 0.0)
      {
        LODWORD(v85) = 1033650332;
        LODWORD(v86) = 1076258406;
        LODWORD(v84) = 3.0;
        *&v82 = v57;
        *&v83 = v71;
        objc_msgSend_powerBlurDespeckleHF_threshold_moireAmount_scale_countThreshold_luminanceThreshold_diffAmount_(self, v79, v87, 5, v81, v82, v83, v84, v85, v86);
      }

      else
      {
        LODWORD(v84) = 3.0;
        *&v82 = v57;
        *&v83 = v71;
        objc_msgSend_powerBlurHF_threshold_moireAmount_scale_(self, v79, v87, v80, v81, v82, v83, v84);
      }
      v102 = ;

      v87 = v102;
    }

    if (v58 > 0.0 || v62 >= 7.0)
    {
      LODWORD(v84) = 7.0;
      *&v82 = v58;
      *&v83 = v71;
      v104 = objc_msgSend_powerBlurEarlyOutHF_threshold_moireAmount_scale_(self, v79, v87, v80, v81, v82, v83, v84);

      v87 = v104;
    }

    v106 = v62 < 14.0 && v60 <= 0.0;
    if (v13 <= 1.5)
    {
      if (!v106)
      {
        LODWORD(v84) = 14.0;
        *&v83 = v71;
        v107 = objc_msgSend_powerBlurEarlyOutHF_threshold_moireAmount_scale_(self, v79, v87, v80, v81, COERCE_DOUBLE(LODWORD(v60)), v83, v84);
        goto LABEL_64;
      }
    }

    else if (!v106)
    {
      LODWORD(v85) = 1041865114;
      LODWORD(v84) = 14.0;
      LODWORD(v86) = 5.0;
      *&v83 = v71;
      v107 = objc_msgSend_powerBlurEarlyOut2HF_threshold_moireAmount_scale_neutralThreshold_thresholdScale_(self, v79, v87, v80, v81, COERCE_DOUBLE(LODWORD(v60)), v83, v84, v85, v86);
LABEL_64:
      v108 = v107;

      v87 = v108;
    }

LABEL_77:
    v89 = objc_msgSend_perceptualToLinear_(self, v79, v87, v80, v81);

    v74 = objc_msgSend_expandHalfSizeRGB_(self, v113, v89, v114, v115);
    goto LABEL_78;
  }

LABEL_79:
  v88 = v74;
  v11 = v88;
LABEL_80:
  v116 = v88;

  return v116;
}

- (id)outputImage
{
  if (self->inputImage)
  {
    objc_msgSend_doubleValue(self->inputLNRAmount, a2, v2, v3, v4);
    if (v10 == 0.0)
    {
      objc_msgSend_doubleValue(self->inputCNRAmount, v6, v7, v8, v9);
      if (v15 == 0.0)
      {
        objc_msgSend_doubleValue(self->inputSharpenAmount, v11, v12, v13, v14);
        if (v20 == 0.0)
        {
          objc_msgSend_doubleValue(self->inputContrastAmount, v16, v17, v18, v19);
          if (v25 == 0.0)
          {
            objc_msgSend_doubleValue(self->inputDetailAmount, v21, v22, v23, v24);
            if (v30 == 0.0)
            {
              objc_msgSend_doubleValue(self->inputMoireAmount, v26, v27, v28, v29);
              if (v31 == 0.0)
              {
                v32 = self->inputImage;
                goto LABEL_211;
              }
            }
          }
        }
      }
    }

    v33 = sub_23378E104();
    v34 = v33;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v33))
    {
      *&buf[4] = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v34, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWReduceNoise", &unk_233945DBE, &buf[4], 2u);
    }

    v805[0] = MEMORY[0x277D85DD0];
    v805[1] = 3221225472;
    v805[2] = sub_23388E644;
    v805[3] = &unk_2789EE800;
    v805[4] = self;
    v35 = MEMORY[0x2383AC810](v805);
    if (objc_msgSend_intValue(self->inputVersion, v36, v37, v38, v39) >= 8)
    {
      if (self->inputISODictionary)
      {
        v32 = objc_msgSend_V8OutputImage(self, v40, v41, v42, v43);
      }

      else
      {
        NSLog(&cfstr_V8NoiseReducti.isa);
        v32 = 0;
      }

      goto LABEL_209;
    }

    *buf = 0;
    v766 = v35;
    objc_msgSend_floatValue(self->inputScaleFactor, v40, v41, v42, v43);
    v45 = v44;
    objc_msgSend_adjustedRNAmount(self, v46, v47, v48, v49);
    v51 = v50;
    objc_msgSend_floatValue(self->inputLNRAmount, v52, v53, v54, v55);
    v57 = v56;
    objc_msgSend_floatValue(self->inputSharpenAmount, v58, v59, v60, v61);
    v63 = v62;
    objc_msgSend_floatValue(self->inputSharpenThreshold, v64, v65, v66, v67);
    v69 = exp2f(fminf(fmaxf((0.6 - v57) * 2.5, 0.0), 1.0) * v68);
    objc_msgSend_floatValue(self->inputContrastAmount, v70, v71, v72, v73);
    v75 = v74;
    objc_msgSend_floatValue(self->inputDetailAmount, v76, v77, v78, v79);
    v81 = v80;
    v759 = objc_msgSend_BOOLValue(self->inputOpponentColorEnabled, v82, v83, v84, v85);
    v795 = v81;
    v798 = v69;
    v86 = fminf(fmaxf(v45, 0.0), 1.0);
    v87 = v86 * v63;
    v92 = log2f(v86);
    v93 = vcvtms_s32_f32(v92);
    if ((v93 & 0x80000000) == 0)
    {
      v94 = v75;
      goto LABEL_31;
    }

    v95 = v92 - floorf(v92);
    v94 = 0.0;
    if (v93 == -3)
    {
      v87 = v95 * v75;
    }

    else
    {
      if (v93 != -2)
      {
        v96 = v75 + ((v87 - v75) * v95);
        v97 = v75 + ((v75 - v75) * v95);
        v98 = v95 * v75;
        if (v93 == -1)
        {
          v75 = v98;
        }

        else
        {
          v75 = 0.0;
        }

        if (v93 == -1)
        {
          v87 = v96;
        }

        else
        {
          v87 = 0.0;
        }

        if (v93 == -1)
        {
          v94 = v97;
        }

LABEL_31:
        if (v51 < 1.0619)
        {
          v747 = (v51 / 1.0619) * 0.0113;
          v99 = 7.0;
          v100 = 0.381;
          v101 = 0.3;
LABEL_39:
          v749 = v101;
          goto LABEL_40;
        }

        if (v51 >= 1.1953)
        {
          if (v51 >= 1.3487)
          {
            if (v51 >= 1.4304)
            {
              if (v51 >= 1.6138)
              {
                if (v51 < 1.8297)
                {
                  v102 = (v51 + -1.6138) / 0.2159;
                  v99 = 11.0 - v102;
                  v747 = (v102 * 0.012) + 0.035;
                  v103 = 0.278;
                  v104 = -0.115;
                  goto LABEL_38;
                }

                if (v51 < 2.8337)
                {
                  v102 = (v51 + -1.8297) / 1.004;
                  v99 = (v102 * -3.0) + 10.0;
                  v747 = (v102 * 0.034) + 0.047;
                  v103 = 0.163;
                  v104 = 0.077;
                  goto LABEL_38;
                }

                if (v51 < 3.9856)
                {
                  v102 = (v51 + -2.8337) / 1.1519;
                  v99 = (v102 * -3.0) + 7.0;
                  v747 = (v102 * 0.008) + 0.081;
                  v103 = 0.24;
                  v104 = 0.06;
                  goto LABEL_38;
                }

                v749 = 1.0;
                if (v51 >= 6.1675)
                {
                  v99 = 3.5;
                  v100 = 0.333;
                  v747 = 0.206;
                }

                else
                {
                  v114 = (v51 + -3.9856) / 2.1819;
                  v99 = (v114 * -0.5) + 4.0;
                  v747 = (v114 * 0.117) + 0.089;
                  v100 = (v114 * 0.033) + 0.3;
                }
              }

              else
              {
                v109 = (v51 + -1.4304) / 0.1834;
                v747 = (v109 * 0.007) + 0.028;
                v100 = (v109 * -0.077) + 0.355;
                v749 = 1.0;
                v99 = 11.0;
              }

LABEL_40:
              if (v51 < 1.135)
              {
                v105 = 0.03;
                goto LABEL_63;
              }

              if (v51 >= 1.2804)
              {
                if (v51 >= 1.5949)
                {
                  if (v51 >= 1.7695)
                  {
                    if (v51 >= 2.5961)
                    {
                      if (v51 >= 3.8895)
                      {
                        if (v51 >= 5.9267)
                        {
                          v105 = 0.08;
LABEL_63:
                          if (v51 > 3.5)
                          {
                            v99 = 1.0;
                          }

                          v745 = v99;
                          v752 = v100;
                          v743 = v105;
                          if (v57 >= 0.5)
                          {
                            if (v51 > 5.3079)
                            {
                              v110 = 0.04;
                              goto LABEL_107;
                            }

                            if (v51 <= 3.7633)
                            {
                              if (v51 <= 2.1287)
                              {
                                if (v51 <= 1.6717)
                                {
                                  if (v51 <= 0.9414)
                                  {
                                    if (v51 <= 0.5)
                                    {
                                      v110 = 0.0021;
                                      goto LABEL_107;
                                    }

                                    v111 = (v51 + -0.5) / 0.3968;
                                    v112 = 0.0021;
                                    v113 = 0.0025;
                                  }

                                  else
                                  {
                                    v111 = (v51 + -0.9414) / 0.7303;
                                    v112 = 0.0046;
                                    v113 = 0.0052;
                                  }
                                }

                                else
                                {
                                  v111 = (v51 + -1.6717) / 0.457;
                                  v112 = 0.0098;
                                  v113 = 0.0085;
                                }
                              }

                              else
                              {
                                v111 = (v51 + -2.1287) / 1.6346;
                                v112 = 0.0183;
                                v113 = 0.0067;
                              }
                            }

                            else
                            {
                              v111 = (v51 + -3.7633) / 1.5446;
                              v112 = 0.025;
                              v113 = 0.015;
                            }
                          }

                          else
                          {
                            if (v51 > 5.9267)
                            {
                              v110 = 0.13;
                              goto LABEL_107;
                            }

                            if (v51 <= 3.8895)
                            {
                              if (v51 <= 2.5961)
                              {
                                if (v51 <= 1.7695)
                                {
                                  if (v51 <= 1.5949)
                                  {
                                    if (v51 <= 1.4104)
                                    {
                                      if (v51 <= 1.2804)
                                      {
                                        if (v51 <= 1.135)
                                        {
                                          if (v51 <= 1.0083)
                                          {
                                            if (v51 <= 0.8954)
                                            {
                                              v111 = v51 / 0.8954;
                                              v112 = 0.0087;
                                              v113 = 0.0108;
                                            }

                                            else
                                            {
                                              v111 = (v51 + -0.8954) / 0.1129;
                                              v112 = 0.0195;
                                              v113 = 0.0025;
                                            }
                                          }

                                          else
                                          {
                                            v111 = (v51 + -1.0083) / 0.1267;
                                            v112 = 0.022;
                                            v113 = 0.002;
                                          }
                                        }

                                        else
                                        {
                                          v111 = (v51 + -1.135) / 0.1454;
                                          v112 = 0.024;
                                          v113 = 0.004;
                                        }
                                      }

                                      else
                                      {
                                        v111 = (v51 + -1.2804) / 0.13;
                                        v112 = 0.028;
                                        v113 = 0.005;
                                      }
                                    }

                                    else
                                    {
                                      v111 = (v51 + -1.4104) / 0.1845;
                                      v112 = 0.033;
                                      v113 = 0.003;
                                    }
                                  }

                                  else
                                  {
                                    v111 = (v51 + -1.5949) / 0.1746;
                                    v112 = 0.036;
                                    v113 = 0.014;
                                  }
                                }

                                else
                                {
                                  v111 = (v51 + -1.7695) / 0.8266;
                                  v112 = 0.05;
                                  v113 = 0.015;
                                }
                              }

                              else
                              {
                                v111 = (v51 + -2.5961) / 1.2934;
                                v112 = 0.065;
                                v113 = 0.025;
                              }
                            }

                            else
                            {
                              v111 = (v51 + -3.8895) / 2.0372;
                              v112 = 0.09;
                              v113 = 0.04;
                            }
                          }

                          v110 = v112 + (v111 * v113);
LABEL_107:
                          v792 = v110;
                          v115 = MEMORY[0x277CBF788];
                          objc_msgSend_X(self->inputNeutralFactors, v88, v89, v90, v91);
                          v117 = v116;
                          objc_msgSend_Y(self->inputNeutralFactors, v118, v119, v120, v121);
                          v123 = v122;
                          objc_msgSend_Z(self->inputNeutralFactors, v124, v125, v126, v127);
                          v133 = objc_msgSend_vectorWithX_Y_Z_W_(v115, v129, v130, v131, v132, 1.0 / v117, 1.0 / v123, 1.0 / v128, 1.0);
                          v754 = v75;
                          v757 = v51;
                          v801 = objc_msgSend_imageByClampingToExtent(self->inputImage, v134, v135, v136, v137);
                          objc_msgSend_extent(self->inputImage, v138, v139, v140, v141);
                          v143 = v142;
                          v145 = v144;
                          v147 = v146;
                          v149 = v148;
                          v153 = objc_msgSend_outputUnboost_(self, v150, v801, v151, v152);

                          v803 = 0;
                          v802 = v153;
                          v156 = objc_msgSend_outputCNR_extent_returningDebugProduct_(self, v154, v802, &v803, v155, v143, v145, v147, v149);
                          if (objc_msgSend_BOOLValue(self->inputShowHF, v157, v158, v159, v160))
                          {
                            v165 = sub_23388E6CC(v156, v133, v143 * 0.5, v145 * 0.5, v147 * 0.5, v149 * 0.5);
LABEL_111:
                            v32 = v165;
                            v35 = v766;
LABEL_208:

LABEL_209:
                            v35[2](v35);

                            goto LABEL_211;
                          }

                          if (v803 == 1)
                          {
                            v165 = objc_msgSend_viewRGB_sushiFactors_crop_(self, v161, v156, v133, v164, v143, v145, v147, v149);
                            goto LABEL_111;
                          }

                          v737 = v94;
                          v734 = v143;
                          v741 = v133;
                          objc_msgSend_X(self->inputNeutralFactors, v161, v162, v163, v164);
                          v167 = v166;
                          v732 = v145;
                          objc_msgSend_Y(self->inputNeutralFactors, v168, v169, v170, v171);
                          v173 = v172;
                          objc_msgSend_Z(self->inputNeutralFactors, v174, v175, v176, v177);
                          v179 = v178;
                          v730 = v147;
                          v731 = v149;
                          v735 = v87;
                          objc_msgSend_floatValue(self->inputBaselineExposure, v180, v181, v182, v183);
                          v185 = exp2f(v184);
                          v186 = MEMORY[0x277CBF788];
                          objc_msgSend_X(self->inputLumFactors, v187, v188, v189, v190);
                          v192 = v191;
                          objc_msgSend_Y(self->inputLumFactors, v193, v194, v195, v196);
                          v198 = v197;
                          objc_msgSend_Z(self->inputLumFactors, v199, v200, v201, v202);
                          v208 = objc_msgSend_vectorWithX_Y_Z_W_(v186, v204, v205, v206, v207, v192 * v185, v198 * v185, v203 * v185, 1.0);
                          v209 = MEMORY[0x277CBF788];
                          v739 = v208;
                          v740 = v156;
                          objc_msgSend_X(v208, v210, v211, v212, v213);
                          v215 = v214;
                          objc_msgSend_Y(v208, v216, v217, v218, v219);
                          v221 = v220;
                          objc_msgSend_Z(v208, v222, v223, v224, v225);
                          v235 = objc_msgSend_vectorWithX_Y_Z_W_(v209, v227, v228, v229, v230, v167 * v215, v173 * v221, v179 * v226, 1.0);
                          v733 = v235;
                          if (v759)
                          {
                            v236 = ((v757 * 0.01) * (v757 * 0.01)) / 0.15;
                            v237 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v231, v232, v233, v234, v167 * (v236 * 100.0), v167 / ((v236 * 200.0) - (v236 * 100.0)), v173 * (v236 * 100.0), v173 / ((v236 * 200.0) - (v236 * 100.0)));
                            v742 = objc_msgSend_extractYOpponentColor_neutralFactors_luminanceFactors_noiseVector_(self, v238, v802, self->inputNeutralFactors, v208, v237);
                            v239 = v798;
                            v240 = v795;
                          }

                          else
                          {
                            v742 = objc_msgSend_extractY_neutralFactors_(self, v231, v802, v235, v234);
                            v239 = v798;
                            v240 = v795;
                          }

                          v245 = v86 * v240;
                          v728 = v239 * v792;
                          v246 = v728 + v728;
                          if (v57 >= 0.5)
                          {
                            v247 = (v57 + -0.5) + (v57 + -0.5);
                          }

                          else
                          {
                            v247 = 0.0;
                          }

                          if (v57 >= 0.5)
                          {
                            v248 = 1.0;
                          }

                          else
                          {
                            v248 = v57 + v57;
                          }

                          if (v757 >= 0.5)
                          {
                            v249 = 0.0;
                          }

                          else
                          {
                            v249 = v245;
                          }

                          if (v757 >= 0.5)
                          {
                            v250 = v245;
                          }

                          else
                          {
                            v250 = 0.0;
                          }

                          v726 = v247;
                          if (v57 == 0.0 && v737 == 0.0 && v754 == 0.0 && v250 == 0.0)
                          {
                            v251 = 0;
                          }

                          else if (v247 == 0.0)
                          {
                            if (v250 == 0.0)
                            {
                              v252 = 2;
                            }

                            else
                            {
                              v252 = 3;
                            }

                            HIDWORD(v243) = 0;
                            if (v754 == 0.0 && v737 == 0.0)
                            {
                              v251 = v252;
                            }

                            else
                            {
                              v251 = 4;
                            }
                          }

                          else
                          {
                            v251 = 5;
                          }

                          LODWORD(v244) = 0.75;
                          *&v243 = v728 + v728;
                          objc_msgSend_computeLowThreshold_andFactor_withThreshold_andSoftness_(self, v241, &buf[4], buf, v242, v243, v244);
                          if (v251 > 2)
                          {
                            if (v251 == 3)
                            {
                              LODWORD(v257) = 1.0;
                              v320 = objc_msgSend_gaborFiltersToSmoothedLuminanceAndGradient_smoothAmt_tinyBlurFactor_(self, v254, v742, v255, v256, v257, 0.0);
                              v324 = objc_msgSend_reduce_(self, v321, v320, v322, v323);
                              LODWORD(v326) = *buf;
                              LODWORD(v325) = *&buf[4];
                              v758 = objc_msgSend_blurGradient_lothresh_factor_(self, v327, v320, v328, v329, v325, v326);
                              v332 = objc_msgSend_expandAndMakeDetails_halfSize_(self, v330, v758, v324, v331);
                              v336 = objc_msgSend_fineGrainNoise2_tinyBlurFactor_(self, v333, v332, v334, v335, 0.0);
                              *&v337 = v248;
                              *&v338 = v735;
                              v748 = objc_msgSend_expandAndAddDetailsThroughGradientMask2_halfSize_fullSizeDetails_soften_sharpen_(self, v339, v758, v324, v332, v337, v338);
                              *&v340 = v250;
                              v343 = objc_msgSend_addNoise_noise_amount_(self, v341, v748, v336, v342, v340);
                              v345 = v343;
                              v746 = v336;
                              v755 = v324;
                              v750 = v320;
                              v300 = 0;
                              v301 = v332;
                              if (v759)
                              {
                                objc_msgSend_YAndRGBGatherOpponentColor_cnrRGB_originalY_sushiFactors_crop_lumFactors_(self, v344, v343, v740, v742, v133, v739, v734, v732, v730, v731);
                              }

                              else
                              {
                                objc_msgSend_YAndRGBGather_cnrRGB_sushiFactors_crop_lumFactors_(self, v344, v343, v740, v133, v739, v734, v732, v730, v731);
                              }
                              v443 = ;
                              v774 = 0;
                              v775 = 0;
                              v776 = 0;
                              v744 = 0;
                              v783 = 0;
                              v785 = 0;
                              v781 = 0;
                              v782 = 0;
                              v780 = 0;
                              v751 = 0;
                              v738 = 0;
                              v727 = 0;
                              v790 = 0;
                              v791 = 0;
                              v787 = 0;
                              v788 = 0;
                              v786 = 0;
                              v753 = 0;
                              v736 = 0;
                              v445 = v345;
                            }

                            else
                            {
                              if (v251 != 4)
                              {
                                v360 = v246;
                                if (v246 <= 0.003)
                                {
                                  LODWORD(v360) = 1.0;
                                  v361 = objc_msgSend_gaborFiltersToSmoothedLuminanceAndGradient_smoothAmt_tinyBlurFactor_(self, v254, v742, v255, v256, v360, 0.0);
                                  v760 = v361;
                                  v761 = 0;
                                }

                                else
                                {
                                  *&v360 = v743;
                                  v361 = objc_msgSend_gaborFiltersToLuminanceAndVectorField_thresh_(self, v254, v742, v255, v256, v360);
                                  v760 = 0;
                                  v761 = v361;
                                }

                                v771 = v361;
                                v762 = objc_msgSend_reduce_(self, v362, v771, v363, v364);
                                v763 = objc_msgSend_expandAndMakeDetails_halfSize_(self, v365, v771, v762, v366);
                                v765 = objc_msgSend_reduce_(self, v367, v762, v368, v369);
                                v764 = objc_msgSend_expandAndMakeDetails_halfSize_(self, v370, v762, v765, v371);
                                v375 = objc_msgSend_reduce_(self, v372, v765, v373, v374);
                                *&v378 = v728 * 0.25;
                                v379 = v375;
                                LODWORD(v380) = 992204554;
                                if ((v728 * 0.25) <= 0.0025)
                                {
                                  v300 = 0;
                                  v767 = 0;
                                  v774 = 0;
                                  v775 = 0;
                                  v776 = 0;
                                }

                                else
                                {
                                  v768 = v375;
                                  v381 = objc_msgSend_gaborFiltersToVectorField_(self, v376, v375, v375, v377);
                                  v385 = v381;
                                  *&v386 = v757;
                                  v387 = fminf(fmaxf((v757 * 0.69444) + -1.0, 0.0), 1.0);
                                  LODWORD(v388) = 2.5;
                                  if (v757 <= 2.5)
                                  {
                                    v449 = v381;
                                    LODWORD(v450) = 0.75;
                                    v774 = v449;
                                    *&v451 = v728 * 0.25;
                                    objc_msgSend_computeLowThreshold_andFactor_withThreshold_andSoftness_(self, v452, &buf[4], buf, v453, v451, v450);
                                    v457 = objc_msgSend_vectorFieldToDirectionsAndGradients_(self, v454, v774, v455, v456);
                                    *&v458 = v387;
                                    v461 = objc_msgSend_smoothDetailsAlongDirections_directions_amount_(self, v459, v768, v457, v460, v458);
                                    LODWORD(v463) = *buf;
                                    LODWORD(v462) = *&buf[4];
                                    objc_msgSend_blurGradient_lothresh_factor_(self, v464, v457, v465, v466, v462, v463);
                                    v767 = v438 = v461;
                                    v775 = v457;
                                  }

                                  else
                                  {
                                    v389 = objc_msgSend_smoothVectorFieldAlongVectors_(self, v382, v381, v383, v384, v388, v386);
                                    LODWORD(v390) = 0.75;
                                    *&v391 = v728 * 0.25;
                                    objc_msgSend_computeLowThreshold_andFactor_withThreshold_andSoftness_(self, v392, &buf[4], buf, v393, v391, v390);
                                    v397 = objc_msgSend_vectorFieldToDirectionsAndGradients_(self, v394, v389, v395, v396);
                                    *&v398 = v747 * 0.03;
                                    v402 = objc_msgSend_directionsToCurvature_threshold_(self, v399, v397, v400, v401, v398);

                                    LODWORD(v404) = *buf;
                                    LODWORD(v403) = *&buf[4];
                                    *&v405 = v745;
                                    v409 = objc_msgSend_blurGradientPlusCurvature_lothresh_factor_cthresh_cfactor_(self, v406, v402, v407, v408, v403, v404, 0.0, v405);
                                    *&v410 = v387 * v749;
                                    LODWORD(v411) = 1.0;
                                    LODWORD(v412) = 1.0;
                                    *&v413 = v752;
                                    *&v414 = v757 * 0.02054;
                                    LODWORD(v415) = 1036831949;
                                    v418 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_maxContrast_(self, v416, v768, v409, v417, v411, 0.0, v410, v413, v412, v414, v415);
                                    *&v419 = v387 * ((v749 * 0.66667) + 0.33333);
                                    LODWORD(v420) = 2.0;
                                    LODWORD(v421) = 0.25;
                                    LODWORD(v422) = 2.0;
                                    *&v423 = v752 * 0.6;
                                    *&v424 = v757 * 0.02054;
                                    LODWORD(v425) = 1036831949;
                                    v428 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_maxContrast_(self, v426, v418, v409, v427, v420, v421, v419, v423, v422, v424, v425);

                                    *&v429 = (v752 * 0.6) * 0.6;
                                    LODWORD(v430) = 4.0;
                                    LODWORD(v431) = 0.5;
                                    LODWORD(v432) = 3.0;
                                    *&v433 = v387 * ((v749 * 0.33333) + 0.66667);
                                    *&v434 = v757 * 0.02054;
                                    LODWORD(v435) = 1036831949;
                                    v438 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_maxContrast_(self, v436, v428, v409, v437, v430, v431, v433, v429, v432, v434, v435);

                                    v767 = v409;
                                    v774 = v389;
                                    v775 = v402;
                                  }

                                  *&v442 = v728 * 0.25;
                                  v467 = objc_msgSend_powerBlurY_threshold_(self, v439, v768, v440, v441, v442);

                                  v469 = objc_msgSend_compositeThroughGradientMask_fullSize_fullSizeMask_(self, v468, v467, v438, v767);

                                  v300 = v469;
                                  v776 = v385;
                                  v379 = v300;
                                }

                                v769 = v379;
                                v470 = objc_msgSend_expandAndMakeDetails_halfSize_(self, v376, v765, v379, v377, v380, v378);
                                v770 = v470;
                                if ((v728 * 0.5) <= 0.003)
                                {
                                  *&v474 = v754;
                                  v537 = objc_msgSend_expandAndAddDetailsWithOverdrive_fullSize_contrast_(self, v471, v769, v470, v473, v474);
                                  v539 = 0;
                                  v493 = 0;
                                  v480 = 0;
                                  v540 = 0;
                                  v529 = 0;
                                }

                                else
                                {
                                  v724 = objc_msgSend_gaborFiltersToVectorField_(self, v471, v765, v472, v473);
                                  *&v478 = v757;
                                  v722 = fminf(fmaxf((v757 * 1.3889) + -1.0, 0.0), 1.0);
                                  LODWORD(v479) = 1071225242;
                                  if (v757 <= 1.7)
                                  {
                                    v541 = v724;
                                    LODWORD(v542) = 0.75;
                                    v784 = v541;
                                    *&v543 = v728 * 0.5;
                                    objc_msgSend_computeLowThreshold_andFactor_withThreshold_andSoftness_(self, v544, &buf[4], buf, v545, v543, v542);
                                    v493 = objc_msgSend_vectorFieldToDirectionsAndGradients_(self, v546, v784, v547, v548);
                                    *&v549 = v722;
                                    v529 = objc_msgSend_smoothDetailsAlongDirections_directions_amount_(self, v550, v770, v493, v551, v549);
                                    LODWORD(v553) = *buf;
                                    LODWORD(v552) = *&buf[4];
                                    v500 = objc_msgSend_blurGradient_lothresh_factor_(self, v554, v493, v555, v556, v552, v553);
                                    v480 = v784;
                                  }

                                  else
                                  {
                                    v480 = objc_msgSend_smoothVectorFieldAlongVectors_(self, v475, v724, v476, v477, v479, v478);
                                    LODWORD(v481) = 0.75;
                                    *&v482 = v728 * 0.5;
                                    objc_msgSend_computeLowThreshold_andFactor_withThreshold_andSoftness_(self, v483, &buf[4], buf, v484, v482, v481);
                                    v488 = objc_msgSend_vectorFieldToDirectionsAndGradients_(self, v485, v480, v486, v487);
                                    *&v489 = v747 * 0.1111;
                                    v493 = objc_msgSend_directionsToCurvature_threshold_(self, v490, v488, v491, v492, v489);

                                    LODWORD(v495) = *buf;
                                    LODWORD(v494) = *&buf[4];
                                    *&v496 = v745;
                                    v500 = objc_msgSend_blurGradientPlusCurvature_lothresh_factor_cthresh_cfactor_(self, v497, v493, v498, v499, v494, v495, 0.0, v496);
                                    *&v501 = v722 * v749;
                                    LODWORD(v502) = 1.0;
                                    LODWORD(v503) = 1.0;
                                    *&v504 = v752;
                                    *&v505 = v757 * 0.02054;
                                    LODWORD(v506) = 1036831949;
                                    v509 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_maxContrast_(self, v507, v770, v500, v508, v502, 0.0, v501, v504, v503, v505, v506);
                                    *&v510 = v722 * ((v749 * 0.66667) + 0.33333);
                                    LODWORD(v511) = 2.0;
                                    LODWORD(v512) = 0.25;
                                    LODWORD(v513) = 2.0;
                                    *&v514 = v752 * 0.6;
                                    *&v515 = v757 * 0.02054;
                                    LODWORD(v516) = 1036831949;
                                    v519 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_maxContrast_(self, v517, v509, v500, v518, v511, v512, v510, v514, v513, v515, v516);

                                    *&v520 = (v752 * 0.6) * 0.6;
                                    LODWORD(v521) = 4.0;
                                    LODWORD(v522) = 0.5;
                                    LODWORD(v523) = 3.0;
                                    *&v524 = v722 * ((v749 * 0.33333) + 0.66667);
                                    *&v525 = v757 * 0.02054;
                                    LODWORD(v526) = 1036831949;
                                    v529 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_maxContrast_(self, v527, v519, v500, v528, v521, v522, v524, v520, v523, v525, v526);
                                  }

                                  *&v533 = fminf(v726 / 0.5625, 1.0);
                                  *&v531 = 1.0 - v722;
                                  *&v532 = v754;
                                  v537 = objc_msgSend_expandAndAddDetailsThroughGradientMask_fullSize_fullSizeDetails_fullSizeMask_amount_contrastOverdrive_interpolant_(self, v530, v769, v770, v529, v500, v531, v532, v533);
                                  v539 = v500;
                                  v540 = v724;
                                }

                                v780 = v540;
                                v781 = v529;
                                v782 = v493;
                                v783 = v480;
                                v785 = v539;
                                v772 = v537;
                                if (v728 <= 0.003)
                                {
                                  v790 = 0;
                                  *&v538 = v737;
                                  v773 = objc_msgSend_expandAndAddDetailsWithOverdrive_fullSize_contrast_(self, v534, v537, v764, v536, v538);
                                  v791 = 0;
                                  v787 = 0;
                                  v788 = 0;
                                  v786 = 0;
                                }

                                else
                                {
                                  *&v538 = v239 * v792;
                                  v557 = objc_msgSend_gaborFiltersToVectorField_(self, v534, v762, v535, v536, v538);
                                  v561 = v557;
                                  *&v562 = v757;
                                  v756 = fminf(fmaxf((v757 * 2.7778) + -1.0, 0.0), 1.0);
                                  LODWORD(v563) = 1068708659;
                                  if (v757 <= 1.4)
                                  {
                                    v624 = v557;
                                    LODWORD(v625) = 0.75;
                                    v789 = v624;
                                    *&v626 = v239 * v792;
                                    objc_msgSend_computeLowThreshold_andFactor_withThreshold_andSoftness_(self, v627, &buf[4], buf, v628, v626, v625);
                                    v609 = objc_msgSend_vectorFieldToDirectionsAndGradients_(self, v629, v789, v630, v631);
                                    *&v632 = v756;
                                    v618 = objc_msgSend_smoothDetailsAlongDirections_directions_amount_(self, v633, v764, v609, v634, v632);
                                    LODWORD(v636) = *buf;
                                    LODWORD(v635) = *&buf[4];
                                    v583 = objc_msgSend_blurGradient_lothresh_factor_(self, v637, v609, v638, v639, v635, v636);
                                    v564 = v789;
                                    v619 = 0;
                                  }

                                  else
                                  {
                                    v564 = objc_msgSend_smoothVectorFieldAlongVectors_(self, v558, v557, v559, v560, v563, v562);
                                    LODWORD(v565) = 0.75;
                                    *&v566 = v239 * v792;
                                    objc_msgSend_computeLowThreshold_andFactor_withThreshold_andSoftness_(self, v567, &buf[4], buf, v568, v566, v565);
                                    v572 = objc_msgSend_vectorFieldToDirectionsAndGradients_(self, v569, v564, v570, v571);
                                    *&v573 = v747 * 0.3333;
                                    v725 = objc_msgSend_directionsToCurvature_threshold_(self, v574, v572, v575, v576, v573);

                                    LODWORD(v578) = *buf;
                                    LODWORD(v577) = *&buf[4];
                                    *&v579 = v745;
                                    v583 = objc_msgSend_blurGradientPlusCurvature_lothresh_factor_cthresh_cfactor_(self, v580, v725, v581, v582, v577, v578, 0.0, v579);
                                    *&v584 = v756 * v749;
                                    LODWORD(v585) = 1.0;
                                    LODWORD(v586) = 1.0;
                                    *&v587 = v752;
                                    *&v588 = v757 * 0.02054;
                                    v591 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpen_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_(self, v589, v764, v583, v590, v585, 0.0, v584, v587, v586, v588);
                                    *&v592 = v756 * ((v749 * 0.66667) + 0.33333);
                                    LODWORD(v593) = 2.0;
                                    LODWORD(v594) = 0.25;
                                    LODWORD(v595) = 2.0;
                                    *&v596 = v752 * 0.6;
                                    *&v597 = v757 * 0.02054;
                                    v600 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpen_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_(self, v598, v591, v583, v599, v593, v594, v592, v596, v595, v597);

                                    LODWORD(v601) = 4.0;
                                    LODWORD(v602) = 0.5;
                                    LODWORD(v603) = 3.0;
                                    *&v604 = v756 * ((v749 * 0.33333) + 0.66667);
                                    *&v605 = (v752 * 0.6) * 0.6;
                                    *&v606 = v757 * 0.02054;
                                    v609 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpen_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_(self, v607, v600, v583, v608, v601, v602, v604, v605, v603, v606);

                                    *&v610 = ((v752 * 0.6) * 0.6) * 0.6;
                                    LODWORD(v611) = 8.0;
                                    LODWORD(v612) = 0.75;
                                    LODWORD(v613) = 4.0;
                                    *&v614 = v756;
                                    *&v615 = v757 * 0.02054;
                                    v618 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpen_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_(self, v616, v609, v583, v617, v611, v612, v614, v610, v613, v615);
                                    v619 = v725;
                                  }

                                  *&v640 = fminf(v726 / 0.75, 1.0);
                                  *&v641 = 1.0 - v756;
                                  *&v642 = v737;
                                  v773 = objc_msgSend_expandAndAddDetailsThroughGradientMask_fullSize_fullSizeDetails_fullSizeMask_amount_contrastOverdrive_interpolant_(self, v643, v772, v764, v618, v583, v641, v642, v640);
                                  v790 = v583;
                                  v791 = v619;
                                  v787 = v618;
                                  v788 = v564;
                                  v786 = v561;
                                }

                                LODWORD(v623) = 0.75;
                                *&v622 = v728 + v728;
                                objc_msgSend_computeLowThreshold_andFactor_withThreshold_andSoftness_(self, v620, &buf[4], buf, v621, v622, v623);
                                if (v246 <= 0.003)
                                {
                                  if (v250 <= 0.0)
                                  {
                                    v665 = 0;
                                  }

                                  else
                                  {
                                    v665 = objc_msgSend_fineGrainNoise2_tinyBlurFactor_(self, v644, v763, v645, v646, 0.0);
                                  }

                                  LODWORD(v648) = *buf;
                                  LODWORD(v647) = *&buf[4];
                                  v800 = objc_msgSend_blurGradient_lothresh_factor_(self, v644, v771, v645, v646, v647, v648);
                                  *&v709 = v248;
                                  *&v710 = v735;
                                  v712 = objc_msgSend_expandAndAddDetailsThroughGradientMask2_halfSize_fullSizeDetails_soften_sharpen_(self, v711, v800, v773, v763, v709, v710);
                                  v713 = v800;
                                  v448 = 0;
                                  v796 = 0;
                                  v714 = 0;
                                }

                                else
                                {
                                  v794 = objc_msgSend_smoothVectorFieldAlongVectors_(self, v644, v771, v645, v646);
                                  v797 = objc_msgSend_vectorFieldToDirectionsAndGradients_(self, v649, v794, v650, v651);
                                  *&v652 = v747;
                                  v656 = objc_msgSend_directionsToCurvature_threshold_(self, v653, v797, v654, v655, v652);

                                  if (v757 > 1.4 && v757 > 3.5 && (*&v660 = v728, v728 > 0.003) && v791)
                                  {
                                    v663 = objc_msgSend_mergeHalfSizeCurvature_intoFullSizeCurvature_(self, v657, v791, v656, v659, v660);

                                    v664 = v663;
                                  }

                                  else
                                  {
                                    v664 = v656;
                                  }

                                  v796 = v664;
                                  LODWORD(v661) = *buf;
                                  LODWORD(v660) = *&buf[4];
                                  *&v662 = v745;
                                  v666 = objc_msgSend_blurGradientPlusCurvature_lothresh_factor_cthresh_cfactor_(self, v657, v664, v658, v659, v660, v661, 0.0, v662);
                                  v667 = fminf(fmaxf((v757 * 5.5556) + -1.0, 0.0), 1.0);
                                  *&v668 = v667 * v749;
                                  LODWORD(v669) = 1.0;
                                  LODWORD(v670) = 1.0;
                                  *&v671 = v752;
                                  *&v672 = v757 * 0.02054;
                                  v675 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpen_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_(self, v673, v763, v666, v674, v669, 0.0, v668, v671, v670, v672);
                                  *&v676 = v667 * ((v749 * 0.66667) + 0.33333);
                                  LODWORD(v677) = 2.0;
                                  LODWORD(v678) = 0.25;
                                  LODWORD(v679) = 2.0;
                                  *&v680 = v752 * 0.6;
                                  *&v681 = v757 * 0.02054;
                                  v684 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpen_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_(self, v682, v675, v666, v683, v677, v678, v676, v680, v679, v681);

                                  LODWORD(v685) = 4.0;
                                  LODWORD(v686) = 0.5;
                                  LODWORD(v687) = 3.0;
                                  *&v688 = v667 * ((v749 * 0.33333) + 0.66667);
                                  *&v689 = (v752 * 0.6) * 0.6;
                                  *&v690 = v757 * 0.02054;
                                  v693 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpen_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_(self, v691, v684, v666, v692, v685, v686, v688, v689, v687, v690);

                                  *&v694 = ((v752 * 0.6) * 0.6) * 0.6;
                                  LODWORD(v695) = 8.0;
                                  LODWORD(v696) = 0.75;
                                  LODWORD(v697) = 4.0;
                                  *&v698 = v667;
                                  *&v699 = v757 * 0.02054;
                                  v448 = objc_msgSend_smoothDetailsAlongDirectionsAtScaleWithSharpen_directions_scale_thresh_smooth_sharp_pscale_coringThreshold_(self, v700, v693, v666, v701, v695, v696, v698, v694, v697, v699);

                                  if (v250 <= 0.0)
                                  {
                                    v665 = 0;
                                    *&v706 = v726;
                                  }

                                  else
                                  {
                                    v708 = objc_msgSend_fineGrainNoise2_tinyBlurFactor_(self, v702, v763, v703, v704, 0.0);
                                    *&v706 = v726;
                                    v665 = v708;
                                  }

                                  *&v707 = 1.0 - *&v706;
                                  *&v705 = v667;
                                  *&v706 = v735;
                                  v712 = objc_msgSend_expandAndAddDetailsThroughGradientMask3_fullSize_fullSizeDetails_fullSizeMask_amount_sharpen_interpolant_(self, v702, v773, v763, v448, v666, v705, v706, v707);
                                  v713 = v666;
                                  v714 = v794;
                                }

                                v715 = v712;
                                v793 = v714;
                                v799 = v713;
                                v778 = v715;
                                v777 = v665;
                                if (v250 <= 0.0)
                                {
                                  v720 = v715;
                                }

                                else
                                {
                                  *&v718 = v250;
                                  v720 = objc_msgSend_addNoise_noise_amount_(self, v716, v715, v665, v717, v718);
                                }

                                v779 = v720;
                                if (v759)
                                {
                                  objc_msgSend_YAndRGBGatherOpponentColor_cnrRGB_originalY_sushiFactors_crop_lumFactors_(self, v719, v720, v740, v742, v741, v739, v734, v732, v730, v731);
                                }

                                else
                                {
                                  objc_msgSend_YAndRGBGather_cnrRGB_sushiFactors_crop_lumFactors_(self, v719, v720, v740, v741, v739, v734, v732, v730, v731);
                                }
                                v443 = ;
                                v727 = v765;
                                v301 = v763;
                                v751 = v770;
                                v753 = v764;
                                v736 = v773;
                                v738 = v772;
                                v755 = v762;
                                v758 = 0;
                                v446 = v778;
                                v445 = v779;
                                v748 = v778;
                                v744 = v769;
                                v746 = v777;
                                v313 = v760;
                                v447 = v761;
                                v444 = v767;
                                goto LABEL_207;
                              }

                              LODWORD(v257) = 1.0;
                              v750 = objc_msgSend_gaborFiltersToSmoothedLuminanceAndGradient_smoothAmt_tinyBlurFactor_(self, v254, v742, v255, v256, v257, 0.0);
                              v261 = objc_msgSend_reduce_(self, v258, v750, v259, v260);
                              v729 = objc_msgSend_expandAndMakeDetails_halfSize_(self, v262, v750, v261, v263);
                              v267 = objc_msgSend_reduce_(self, v264, v261, v265, v266);
                              v753 = objc_msgSend_expandAndMakeDetails_halfSize_(self, v268, v261, v267, v269);
                              v273 = objc_msgSend_reduce_(self, v270, v267, v271, v272);
                              v751 = objc_msgSend_expandAndMakeDetails_halfSize_(self, v274, v267, v273, v275);
                              *&v276 = v754;
                              v279 = objc_msgSend_expandAndAddDetailsWithOverdrive_fullSize_contrast_(self, v277, v273, v751, v278, v276);
                              *&v280 = v737;
                              v283 = objc_msgSend_expandAndAddDetailsWithOverdrive_fullSize_contrast_(self, v281, v279, v753, v282, v280);
                              v287 = objc_msgSend_fineGrainNoise2_tinyBlurFactor_(self, v284, v729, v285, v286, 0.0);
                              LODWORD(v289) = *buf;
                              LODWORD(v288) = *&buf[4];
                              v758 = objc_msgSend_blurGradient_lothresh_factor_(self, v290, v750, v291, v292, v288, v289);
                              *&v293 = v248;
                              *&v294 = v735;
                              v748 = objc_msgSend_expandAndAddDetailsThroughGradientMask2_halfSize_fullSizeDetails_soften_sharpen_(self, v295, v758, v283, v729, v293, v294);
                              *&v296 = v250;
                              v723 = objc_msgSend_addNoise_noise_amount_(self, v297, v748, v287, v298, v296);
                              v736 = v283;
                              v738 = v279;
                              v744 = v273;
                              v746 = v287;
                              v755 = v261;
                              v727 = v267;
                              v300 = 0;
                              v301 = v729;
                              if (v759)
                              {
                                objc_msgSend_YAndRGBGatherOpponentColor_cnrRGB_originalY_sushiFactors_crop_lumFactors_(self, v299, v723, v740, v742, v133, v739, v734, v732, v730, v731);
                              }

                              else
                              {
                                objc_msgSend_YAndRGBGather_cnrRGB_sushiFactors_crop_lumFactors_(self, v299, v723, v740, v133, v739, v734, v732, v730, v731);
                              }
                              v443 = ;
                              v774 = 0;
                              v775 = 0;
                              v776 = 0;
                              v783 = 0;
                              v785 = 0;
                              v781 = 0;
                              v782 = 0;
                              v780 = 0;
                              v790 = 0;
                              v791 = 0;
                              v787 = 0;
                              v788 = 0;
                              v786 = 0;
                              v445 = v723;
                            }

                            v444 = 0;
                            v446 = 0;
                            v796 = 0;
                            v799 = 0;
                            v793 = 0;
                            v771 = 0;
                            v447 = 0;
                            v448 = 0;
                            v313 = v750;
                          }

                          else
                          {
                            if (v251)
                            {
                              LODWORD(v257) = 1.0;
                              v346 = objc_msgSend_gaborFiltersToSmoothedLuminanceAndGradient_smoothAmt_tinyBlurFactor_(self, v254, v742, v255, v256, v257, 0.0);
                              v350 = objc_msgSend_reduce_(self, v347, v346, v348, v349);
                              LODWORD(v352) = *buf;
                              LODWORD(v351) = *&buf[4];
                              v758 = objc_msgSend_blurGradient_lothresh_factor_(self, v353, v346, v354, v355, v351, v352);
                              v755 = v350;
                              v300 = 0;
                              v313 = v346;
                              *&v357 = v735;
                              *&v358 = v248;
                              *&v359 = v249;
                              if (v759)
                              {
                                objc_msgSend_expandAndSharpenDetailsThroughGradientMaskGatherOpponentColor_halfSizeY_cnrRGB_originalY_sharpen_soften_floor_sushiFactors_crop_lumFactors_(self, v356, v758, v755, v156, v742, v133, v739, v357, v358, v359, v734, v732, v730, v731);
                              }

                              else
                              {
                                objc_msgSend_expandAndSharpenDetailsThroughGradientMaskGather_halfSizeY_cnrRGB_sharpen_soften_floor_sushiFactors_crop_lumFactors_(self, v356, v758, v755, v156, v133, v739, v357, v358, v359, v734, v732, v730, v731);
                              }
                            }

                            else
                            {
                              LODWORD(v257) = 1.0;
                              v302 = objc_msgSend_gaborFiltersToSmoothedLuminanceAndGradient_smoothAmt_tinyBlurFactor_(self, v254, v742, v255, v256, v257, 0.0);
                              v306 = objc_msgSend_reduce_(self, v303, v302, v304, v305);
                              LODWORD(v308) = *buf;
                              LODWORD(v307) = *&buf[4];
                              v758 = objc_msgSend_blurGradient_lothresh_factor_(self, v309, v302, v310, v311, v307, v308);
                              v755 = v306;
                              v300 = 0;
                              v313 = v302;
                              *&v314 = v735;
                              *&v315 = v249;
                              if (v759)
                              {
                                objc_msgSend_expandAndSharpenThroughGradientMaskGatherOpponentColor_halfSizeY_cnrRGB_originalY_sharpen_floor_sushiFactors_crop_lumFactors_(self, v312, v758, v755, v156, v742, v133, v739, v314, v315, v734, v732, v730, v731);
                              }

                              else
                              {
                                objc_msgSend_expandAndSharpenThroughGradientMaskGather_halfSizeY_cnrRGB_sharpen_floor_sushiFactors_crop_lumFactors_(self, v312, v758, v755, v156, v133, v739, v314, v315, v734, v732, v730, v731);
                              }
                            }
                            v316 = ;
                            v443 = v316;
                            v444 = 0;
                            v774 = 0;
                            v775 = 0;
                            v776 = 0;
                            v744 = 0;
                            v783 = 0;
                            v785 = 0;
                            v781 = 0;
                            v782 = 0;
                            v780 = 0;
                            v751 = 0;
                            v738 = 0;
                            v727 = 0;
                            v790 = 0;
                            v791 = 0;
                            v787 = 0;
                            v788 = 0;
                            v786 = 0;
                            v753 = 0;
                            v736 = 0;
                            v445 = 0;
                            v446 = 0;
                            v748 = 0;
                            v796 = 0;
                            v799 = 0;
                            v793 = 0;
                            v746 = 0;
                            v771 = 0;
                            v447 = 0;
                            v448 = 0;
                            v301 = 0;
                          }

LABEL_207:
                          v32 = objc_msgSend_outputBoost_(self, v317, v443, v318, v319);

                          v35 = v766;
                          v156 = v740;
                          v133 = v741;
                          goto LABEL_208;
                        }

                        v106 = (v51 + -3.8895) / 2.0372;
                        v107 = 0.07;
                        v108 = 0.01;
                      }

                      else
                      {
                        v106 = (v51 + -2.5961) / 1.2934;
                        v107 = 0.051;
                        v108 = 0.019;
                      }
                    }

                    else
                    {
                      v106 = (v51 + -1.7695) / 0.8266;
                      v107 = 0.05;
                      v108 = 0.001;
                    }
                  }

                  else
                  {
                    v106 = (v51 + -1.5949) / 0.1746;
                    v107 = 0.038;
                    v108 = 0.012;
                  }
                }

                else
                {
                  v106 = (v51 + -1.2804) / 0.3145;
                  v107 = 0.0308;
                  v108 = 0.0072;
                }
              }

              else
              {
                v106 = (v51 + -1.135) / 0.1454;
                v107 = 0.03;
                v108 = 0.0008;
              }

              v105 = v107 + (v106 * v108);
              goto LABEL_63;
            }

            v102 = (v51 + -1.3487) / 0.0817;
            v99 = v102 + 10.0;
            v747 = (v102 * 0.002) + 0.026;
            v103 = 0.355;
            v104 = 0.0;
LABEL_38:
            v100 = v103 + (v102 * v104);
            v101 = 1.0;
            goto LABEL_39;
          }

          v102 = (v51 + -1.1953) / 0.1534;
          v99 = (v102 * 2.0) + 8.0;
          v747 = (v102 * 0.008) + 0.02;
          v103 = 0.368;
        }

        else
        {
          v102 = (v51 + -1.0619) / 0.1334;
          v99 = v102 + 7.0;
          v747 = (v102 * 0.0087) + 0.0113;
          v103 = 0.381;
        }

        v104 = -0.013;
        goto LABEL_38;
      }

      v87 = v75 + ((v75 - v75) * v95);
      v94 = v95 * v75;
    }

    v75 = 0.0;
    goto LABEL_31;
  }

  v32 = 0;
LABEL_211:

  return v32;
}

- (id)image:(id)a3 croppedTo:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v9 = MEMORY[0x277CBF750];
  v14 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v10, v11, v12, v13, x, y, width, height);
  v17 = objc_msgSend_filterWithName_keysAndValues_(v9, v15, @"CICrop", @"inputImage", v16, v8, @"inputRectangle", v14, 0);

  v21 = objc_msgSend_valueForKey_(v17, v18, @"outputImage", v19, v20);

  return v21;
}

- (BOOL)isBayerGreenAlignedforImage:(id)a3 andPattern:(int)a4
{
  v5 = a3;
  objc_msgSend_extent(v5, v6, v7, v8, v9);
  v15 = CGRectIntegral(v14);
  v11 = a4 == 1633771873 || a4 == 1229539657;
  v12 = v11 ^ (v15.origin.x + v15.origin.y);

  return v12 & 1;
}

- (id)outputCNR:(id)a3 E0:(CGRect)a4 E1:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v1181[2] = *MEMORY[0x277D85DE8];
  v1167 = a3;
  objc_msgSend_floatValue(self->inputScaleFactor, v10, v11, v12, v13);
  v1136 = v14;
  v19 = objc_msgSend_intValue(self->inputISO, v15, v16, v17, v18);
  v23 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v20, @"ISOList", v21, v22);
  v1166 = v23;
  v31 = objc_msgSend_count(v23, v24, v25, v26, v27);
  v1129 = width;
  v1130 = height;
  v1127 = x;
  v1128 = y;
  if (v31)
  {
    v32 = 0;
    while (1)
    {
      v33 = objc_msgSend_objectAtIndexedSubscript_(v23, v28, v32, v29, v30);
      v38 = objc_msgSend_intValue(v33, v34, v35, v36, v37);

      v39 = v19 != v38;
      if (v19 == v38)
      {
        v40 = 0.0;
        goto LABEL_10;
      }

      v23 = v1166;
      if (v19 < v38)
      {
        break;
      }

      if (v31 == ++v32)
      {
        goto LABEL_6;
      }
    }

    if (!v32)
    {
      v39 = 0;
      v40 = 0.0;
      goto LABEL_12;
    }

    v41 = objc_msgSend_objectAtIndexedSubscript_(v1166, v28, --v32, v29, v30);
    v46 = objc_msgSend_intValue(v41, v42, v43, v44, v45);

    v40 = (v19 - v46) / (v38 - v46);
LABEL_10:
    if (v32 != 100000)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_6:
    v39 = 0;
    v40 = 0.0;
  }

  v32 = v31 - 1;
LABEL_12:
  v1135 = self->inputTrimParameters;
  v50 = objc_msgSend_objectForKeyedSubscript_(v1135, v47, @"color", v48, v49);
  v54 = objc_msgSend_objectAtIndexedSubscript_(v50, v51, 0, v52, v53);
  objc_msgSend_floatValue(v54, v55, v56, v57, v58);
  v1151 = v59;

  v63 = objc_msgSend_objectAtIndexedSubscript_(v50, v60, 1, v61, v62);
  objc_msgSend_floatValue(v63, v64, v65, v66, v67);
  v1146 = v68;

  objc_msgSend_adjustedRNAmount(self, v69, v70, v71, v72);
  v1124 = v73;
  objc_msgSend_floatValue(self->inputCNRAmount, v74, v75, v76, v77);
  v1133 = v78;
  v82 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v79, @"FCNRa", v80, v81);
  v86 = objc_msgSend_objectAtIndexedSubscript_(v82, v83, v32, v84, v85);
  objc_msgSend_floatValue(v86, v87, v88, v89, v90);
  v1159 = v91;

  if (v39)
  {
    v95 = objc_msgSend_objectAtIndexedSubscript_(v82, v92, v32 + 1, v93, v94);
    objc_msgSend_floatValue(v95, v96, v97, v98, v99);
    v101 = v100;

    v1159 = v1159 + ((v101 - v1159) * v40);
  }

  v102 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v92, @"FCNRb", v93, v94);

  v106 = objc_msgSend_objectAtIndexedSubscript_(v102, v103, v32, v104, v105);
  objc_msgSend_floatValue(v106, v107, v108, v109, v110);
  v1164 = v111;

  if (v39)
  {
    v115 = objc_msgSend_objectAtIndexedSubscript_(v102, v112, v32 + 1, v113, v114);
    objc_msgSend_floatValue(v115, v116, v117, v118, v119);
    v121 = v120;

    v1164 = v1164 + ((v121 - v1164) * v40);
  }

  v122 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v112, @"FCNRc", v113, v114);

  v126 = objc_msgSend_objectAtIndexedSubscript_(v122, v123, v32, v124, v125);
  objc_msgSend_floatValue(v126, v127, v128, v129, v130);
  v1157 = v131;

  if (v39)
  {
    v135 = objc_msgSend_objectAtIndexedSubscript_(v122, v132, v32 + 1, v133, v134);
    objc_msgSend_floatValue(v135, v136, v137, v138, v139);
    v141 = v140;

    v1157 = v1157 + ((v141 - v1157) * v40);
  }

  v142 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v132, @"FCNDa", v133, v134);

  v146 = objc_msgSend_objectAtIndexedSubscript_(v142, v143, v32, v144, v145);
  objc_msgSend_floatValue(v146, v147, v148, v149, v150);
  v1154 = v151;

  if (v39)
  {
    v155 = objc_msgSend_objectAtIndexedSubscript_(v142, v152, v32 + 1, v153, v154);
    objc_msgSend_floatValue(v155, v156, v157, v158, v159);
    v161 = v160;

    v1154 = v1154 + ((v161 - v1154) * v40);
  }

  v162 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v152, @"FCNDb", v153, v154);

  v166 = objc_msgSend_objectAtIndexedSubscript_(v162, v163, v32, v164, v165);
  objc_msgSend_floatValue(v166, v167, v168, v169, v170);
  v1161 = v171;

  if (v39)
  {
    v175 = objc_msgSend_objectAtIndexedSubscript_(v162, v172, v32 + 1, v173, v174);
    objc_msgSend_floatValue(v175, v176, v177, v178, v179);
    v181 = v180;

    v1161 = v1161 + ((v181 - v1161) * v40);
  }

  v182 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v172, @"FCNDc", v173, v174);

  v186 = objc_msgSend_objectAtIndexedSubscript_(v182, v183, v32, v184, v185);
  objc_msgSend_floatValue(v186, v187, v188, v189, v190);
  v1152 = v191;

  if (v39)
  {
    v195 = objc_msgSend_objectAtIndexedSubscript_(v182, v192, v32 + 1, v193, v194);
    objc_msgSend_floatValue(v195, v196, v197, v198, v199);
    v201 = v200;

    v1152 = v1152 + ((v201 - v1152) * v40);
  }

  v202 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v192, @"HCNRa", v193, v194);

  v206 = objc_msgSend_objectAtIndexedSubscript_(v202, v203, v32, v204, v205);
  objc_msgSend_floatValue(v206, v207, v208, v209, v210);
  v1150 = v211;

  if (v39)
  {
    v215 = objc_msgSend_objectAtIndexedSubscript_(v202, v212, v32 + 1, v213, v214);
    objc_msgSend_floatValue(v215, v216, v217, v218, v219);
    v221 = v220;

    v1150 = v1150 + ((v221 - v1150) * v40);
  }

  v222 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v212, @"HCNRb", v213, v214);

  v226 = objc_msgSend_objectAtIndexedSubscript_(v222, v223, v32, v224, v225);
  objc_msgSend_floatValue(v226, v227, v228, v229, v230);
  v232 = v231;

  if (v39)
  {
    v236 = objc_msgSend_objectAtIndexedSubscript_(v222, v233, v32 + 1, v234, v235);
    objc_msgSend_floatValue(v236, v237, v238, v239, v240);
    v242 = v241;

    v232 = v232 + ((v242 - v232) * v40);
  }

  v243 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v233, @"HCNRc", v234, v235);

  v247 = objc_msgSend_objectAtIndexedSubscript_(v243, v244, v32, v245, v246);
  objc_msgSend_floatValue(v247, v248, v249, v250, v251);
  v1149 = v252;

  if (v39)
  {
    v256 = objc_msgSend_objectAtIndexedSubscript_(v243, v253, v32 + 1, v254, v255);
    objc_msgSend_floatValue(v256, v257, v258, v259, v260);
    v262 = v261;

    v1149 = v1149 + ((v262 - v1149) * v40);
  }

  v263 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v253, @"HCNDa", v254, v255);

  v267 = objc_msgSend_objectAtIndexedSubscript_(v263, v264, v32, v265, v266);
  objc_msgSend_floatValue(v267, v268, v269, v270, v271);
  v1148 = v272;

  if (v39)
  {
    v276 = objc_msgSend_objectAtIndexedSubscript_(v263, v273, v32 + 1, v274, v275);
    objc_msgSend_floatValue(v276, v277, v278, v279, v280);
    v282 = v281;

    v1148 = v1148 + ((v282 - v1148) * v40);
  }

  v283 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v273, @"HCNDb", v274, v275);

  v287 = objc_msgSend_objectAtIndexedSubscript_(v283, v284, v32, v285, v286);
  objc_msgSend_floatValue(v287, v288, v289, v290, v291);
  v293 = v292;

  if (v39)
  {
    v297 = objc_msgSend_objectAtIndexedSubscript_(v283, v294, v32 + 1, v295, v296);
    objc_msgSend_floatValue(v297, v298, v299, v300, v301);
    v303 = v302;

    v293 = v293 + ((v303 - v293) * v40);
  }

  v304 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v294, @"HCNDc", v295, v296);

  v308 = objc_msgSend_objectAtIndexedSubscript_(v304, v305, v32, v306, v307);
  objc_msgSend_floatValue(v308, v309, v310, v311, v312);
  v1147 = v313;

  if (v39)
  {
    v317 = objc_msgSend_objectAtIndexedSubscript_(v304, v314, v32 + 1, v315, v316);
    objc_msgSend_floatValue(v317, v318, v319, v320, v321);
    v323 = v322;

    v1147 = v1147 + ((v323 - v1147) * v40);
  }

  v324 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v314, @"QCNRa", v315, v316);

  v328 = objc_msgSend_objectAtIndexedSubscript_(v324, v325, v32, v326, v327);
  objc_msgSend_floatValue(v328, v329, v330, v331, v332);
  v1145 = v333;

  if (v39)
  {
    v337 = objc_msgSend_objectAtIndexedSubscript_(v324, v334, v32 + 1, v335, v336);
    objc_msgSend_floatValue(v337, v338, v339, v340, v341);
    v343 = v342;

    v1145 = v1145 + ((v343 - v1145) * v40);
  }

  v344 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v334, @"QCNRb", v335, v336);

  v348 = objc_msgSend_objectAtIndexedSubscript_(v344, v345, v32, v346, v347);
  objc_msgSend_floatValue(v348, v349, v350, v351, v352);
  v354 = v353;

  if (v39)
  {
    v358 = objc_msgSend_objectAtIndexedSubscript_(v344, v355, v32 + 1, v356, v357);
    objc_msgSend_floatValue(v358, v359, v360, v361, v362);
    v364 = v363;

    v354 = v354 + ((v364 - v354) * v40);
  }

  v365 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v355, @"QCNRc", v356, v357);

  v369 = objc_msgSend_objectAtIndexedSubscript_(v365, v366, v32, v367, v368);
  objc_msgSend_floatValue(v369, v370, v371, v372, v373);
  v1144 = v374;

  if (v39)
  {
    v378 = objc_msgSend_objectAtIndexedSubscript_(v365, v375, v32 + 1, v376, v377);
    objc_msgSend_floatValue(v378, v379, v380, v381, v382);
    v384 = v383;

    v1144 = v1144 + ((v384 - v1144) * v40);
  }

  v385 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v375, @"QCNDa", v376, v377);

  v389 = objc_msgSend_objectAtIndexedSubscript_(v385, v386, v32, v387, v388);
  objc_msgSend_floatValue(v389, v390, v391, v392, v393);
  v1143 = v394;

  if (v39)
  {
    v398 = objc_msgSend_objectAtIndexedSubscript_(v385, v395, v32 + 1, v396, v397);
    objc_msgSend_floatValue(v398, v399, v400, v401, v402);
    v404 = v403;

    v1143 = v1143 + ((v404 - v1143) * v40);
  }

  v405 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v395, @"QCNDb", v396, v397);

  v409 = objc_msgSend_objectAtIndexedSubscript_(v405, v406, v32, v407, v408);
  objc_msgSend_floatValue(v409, v410, v411, v412, v413);
  v415 = v414;

  if (v39)
  {
    v419 = objc_msgSend_objectAtIndexedSubscript_(v405, v416, v32 + 1, v417, v418);
    objc_msgSend_floatValue(v419, v420, v421, v422, v423);
    v425 = v424;

    v415 = v415 + ((v425 - v415) * v40);
  }

  v426 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v416, @"QCNDc", v417, v418);

  v430 = objc_msgSend_objectAtIndexedSubscript_(v426, v427, v32, v428, v429);
  objc_msgSend_floatValue(v430, v431, v432, v433, v434);
  v1142 = v435;

  if (v39)
  {
    v439 = objc_msgSend_objectAtIndexedSubscript_(v426, v436, v32 + 1, v437, v438);
    objc_msgSend_floatValue(v439, v440, v441, v442, v443);
    v445 = v444;

    v1142 = v1142 + ((v445 - v1142) * v40);
  }

  v446 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v436, @"ECNRa", v437, v438);

  v450 = objc_msgSend_objectAtIndexedSubscript_(v446, v447, v32, v448, v449);
  objc_msgSend_floatValue(v450, v451, v452, v453, v454);
  v1141 = v455;

  if (v39)
  {
    v459 = objc_msgSend_objectAtIndexedSubscript_(v446, v456, v32 + 1, v457, v458);
    objc_msgSend_floatValue(v459, v460, v461, v462, v463);
    v465 = v464;

    v1141 = v1141 + ((v465 - v1141) * v40);
  }

  v466 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v456, @"ECNRb", v457, v458);

  v470 = objc_msgSend_objectAtIndexedSubscript_(v466, v467, v32, v468, v469);
  objc_msgSend_floatValue(v470, v471, v472, v473, v474);
  v476 = v475;

  if (v39)
  {
    v480 = objc_msgSend_objectAtIndexedSubscript_(v466, v477, v32 + 1, v478, v479);
    objc_msgSend_floatValue(v480, v481, v482, v483, v484);
    v486 = v485;

    v476 = v476 + ((v486 - v476) * v40);
  }

  v487 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v477, @"ECNRc", v478, v479);

  v491 = objc_msgSend_objectAtIndexedSubscript_(v487, v488, v32, v489, v490);
  objc_msgSend_floatValue(v491, v492, v493, v494, v495);
  v1140 = v496;

  if (v39)
  {
    v500 = objc_msgSend_objectAtIndexedSubscript_(v487, v497, v32 + 1, v498, v499);
    objc_msgSend_floatValue(v500, v501, v502, v503, v504);
    v506 = v505;

    v1140 = v1140 + ((v506 - v1140) * v40);
  }

  v507 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v497, @"ECNDa", v498, v499);

  v511 = objc_msgSend_objectAtIndexedSubscript_(v507, v508, v32, v509, v510);
  objc_msgSend_floatValue(v511, v512, v513, v514, v515);
  v1139 = v516;

  if (v39)
  {
    v520 = objc_msgSend_objectAtIndexedSubscript_(v507, v517, v32 + 1, v518, v519);
    objc_msgSend_floatValue(v520, v521, v522, v523, v524);
    v526 = v525;

    v1139 = v1139 + ((v526 - v1139) * v40);
  }

  v527 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v517, @"ECNDb", v518, v519);

  v531 = objc_msgSend_objectAtIndexedSubscript_(v527, v528, v32, v529, v530);
  objc_msgSend_floatValue(v531, v532, v533, v534, v535);
  v537 = v536;

  if (v39)
  {
    v541 = objc_msgSend_objectAtIndexedSubscript_(v527, v538, v32 + 1, v539, v540);
    objc_msgSend_floatValue(v541, v542, v543, v544, v545);
    v547 = v546;

    v537 = v537 + ((v547 - v537) * v40);
  }

  v548 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v538, @"ECNDc", v539, v540);

  v552 = objc_msgSend_objectAtIndexedSubscript_(v548, v549, v32, v550, v551);
  objc_msgSend_floatValue(v552, v553, v554, v555, v556);
  v1138 = v557;

  if (v39)
  {
    v561 = objc_msgSend_objectAtIndexedSubscript_(v548, v558, v32 + 1, v559, v560);
    objc_msgSend_floatValue(v561, v562, v563, v564, v565);
    v567 = v566;

    v1138 = v1138 + ((v567 - v1138) * v40);
  }

  v1131 = v50;
  v1132 = v548;
  v1123 = (v1146 * 0.33333) + (v1151 * 0.66667);
  v1120 = (v1146 * 0.66667) + (v1151 * 0.33333);
  v568 = v476 + (v1146 * v537);
  v569 = fminf(fmaxf(v1136, 0.0), 1.0) * (v1133 + v1133);
  v1122 = v569 * (v232 + (v1123 * v293));
  v1162 = v569 * (v1164 + (v1151 * v1161));
  v570 = fminf(v1162, v1122) >= 0.00001;
  v1118 = v569 * v568;
  v1119 = v569 * (v354 + (v1120 * v415));
  v1137 = v570;
  if (v1119 < 0.00001)
  {
    v570 = 0;
  }

  v1126 = v570;
  if ((v569 * v568) < 0.00001)
  {
    v570 = 0;
  }

  v1125 = v570;
  v571 = self->inputDespeckleParameters;
  v575 = objc_msgSend_objectForKeyedSubscript_(v571, v572, @"enabled", v573, v574);
  v1121 = objc_msgSend_BOOLValue(v575, v576, v577, v578, v579);

  v583 = objc_msgSend_objectForKeyedSubscript_(v571, v580, @"SCSEnabled", v581, v582);
  v1117 = objc_msgSend_BOOLValue(v583, v584, v585, v586, v587);

  v591 = objc_msgSend_objectForKeyedSubscript_(v571, v588, @"SCSLuminanceThreshold", v589, v590);
  objc_msgSend_floatValue(v591, v592, v593, v594, v595);
  v1116 = v596;

  v600 = objc_msgSend_objectForKeyedSubscript_(v571, v597, @"SCSSparkleThreshold", v598, v599);
  objc_msgSend_floatValue(v600, v601, v602, v603, v604);
  v1115 = v605;

  v609 = objc_msgSend_objectForKeyedSubscript_(v571, v606, @"NCSEnabled", v607, v608);
  v1114 = objc_msgSend_BOOLValue(v609, v610, v611, v612, v613);

  v617 = objc_msgSend_objectForKeyedSubscript_(v571, v614, @"NCSSaturationThreshold", v615, v616);
  objc_msgSend_floatValue(v617, v618, v619, v620, v621);
  v1113 = v622;

  v626 = objc_msgSend_objectForKeyedSubscript_(v571, v623, @"NCSRedBluePop", v624, v625);
  objc_msgSend_floatValue(v626, v627, v628, v629, v630);
  v1112 = v631;

  v635 = objc_msgSend_objectForKeyedSubscript_(v571, v632, @"NCSContrastThreshold", v633, v634);
  objc_msgSend_floatValue(v635, v636, v637, v638, v639);
  v1111 = v640;

  v644 = objc_msgSend_objectForKeyedSubscript_(v571, v641, @"NCSCountThreshold", v642, v643);
  v1110 = objc_msgSend_intValue(v644, v645, v646, v647, v648);

  v652 = objc_msgSend_objectForKeyedSubscript_(v571, v649, @"BCSEnabled", v650, v651);
  v1109 = objc_msgSend_BOOLValue(v652, v653, v654, v655, v656);

  v660 = objc_msgSend_objectForKeyedSubscript_(v571, v657, @"BCSRedPop", v658, v659);
  objc_msgSend_floatValue(v660, v661, v662, v663, v664);
  v1108 = v665;

  v669 = objc_msgSend_objectForKeyedSubscript_(v571, v666, @"BCSBlueness", v667, v668);
  objc_msgSend_floatValue(v669, v670, v671, v672, v673);
  v1107 = v674;

  v678 = objc_msgSend_objectForKeyedSubscript_(v571, v675, @"BCSContrastThreshold", v676, v677);
  objc_msgSend_floatValue(v678, v679, v680, v681, v682);
  v1106 = v683;

  objc_msgSend_X(self->inputNeutralFactors, v684, v685, v686, v687);
  v689 = v688;
  objc_msgSend_Y(self->inputNeutralFactors, v690, v691, v692, v693);
  v695 = v694;
  objc_msgSend_Z(self->inputNeutralFactors, v696, v697, v698, v699);
  v700 = v689;
  v701 = v695;
  v703 = v702;
  v708 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v704, v705, v706, v707, v700, v701, v703, 1.0);
  v713 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v709, v710, v711, v712, (1.0 / v700), (1.0 / v701), (1.0 / v703), 1.0);
  CGAffineTransformMakeScale(&v1170, 0.5, 0.5);
  CGAffineTransformMakeScale(&v1169, 2.0, 2.0);
  objc_msgSend_floatValue(self->inputMoireRadius, v714, v715, v716, v717);
  v719 = v718;
  objc_msgSend_floatValue(self->inputMoireAmount, v720, v721, v722, v723);
  v1165 = v713;
  v1134 = v728 * 0.04;
  if ((v728 * 0.04) == 0.0)
  {
    v729 = 0.0;
  }

  else
  {
    v729 = v719;
  }

  if (v729 <= 0.0)
  {
    v730 = objc_msgSend_BOOLValue(self->inputShowHF, v724, v725, v726, v727);
    *&v731 = v1162;
    if (!((v1162 >= 0.00001) | v730 & 1))
    {
      v880 = objc_msgSend_kernelWithName_(V8CNRKernels, v724, @"multiplyByNeutralFactors", v726, v727, v731);
      objc_msgSend_extent(v1167, v881, v882, v883, v884);
      v886 = v885;
      v888 = v887;
      v890 = v889;
      v892 = v891;
      v1181[0] = v1167;
      v1181[1] = v708;
      v895 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v893, v1181, 2, v894);
      v732 = v708;
      v784 = objc_msgSend_applyWithExtent_arguments_(v880, v896, v895, v897, v898, v886, v888, v890, v892);

      v785 = 0;
      goto LABEL_135;
    }
  }

  else
  {
    v730 = 1;
  }

  v732 = v708;
  inputImage = self->inputImage;
  v734 = objc_msgSend_intValue(self->inputSensorPattern, v724, v725, v726, v727);
  isBayerGreenAlignedforImage_andPattern = objc_msgSend_isBayerGreenAlignedforImage_andPattern_(self, v735, inputImage, v734, v736);
  v742 = v569 * (v1157 + (v1151 * v1152));
  v1153 = v569 * (v1159 + (v1151 * v1154));
  v1155 = v742;
  if (isBayerGreenAlignedforImage_andPattern)
  {
    v743 = -1.0;
  }

  else
  {
    v743 = 1.0;
  }

  v744 = v1137;
  if (v729 > 2.0)
  {
    v744 = 1;
  }

  v1158 = v701 / v703;
  v1160 = v701 / v700;
  if (v744 & 1) != 0 || (objc_msgSend_BOOLValue(self->inputShowHF, v738, v739, v740, v741))
  {
    if (v730)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v738, @"%s%s", v740, v741, "extractHRGB", "HF");
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v738, @"%s%s", v740, v741, "extractHRGB", "");
    }
    v745 = ;
    v749 = objc_msgSend_kernelWithName_(V8CNRKernels, v746, v745, v747, v748);

    objc_msgSend_extent(v1167, v750, v751, v752, v753);
    v1168 = v1170;
    v1184 = CGRectApplyAffineTransform(v1183, &v1168);
    v754 = v1184.origin.x;
    v755 = v1184.origin.y;
    v756 = v1184.size.width;
    v757 = v1184.size.height;
    v1178[0] = v1167;
    v1178[1] = v732;
    v758 = MEMORY[0x277CBF788];
    objc_msgSend_floatValue(self->inputHighFrequencyFactor, v759, v760, v761, v762);
    v768 = objc_msgSend_vectorWithX_Y_Z_W_(v758, v764, v765, v766, v767, v763, v743, 0.0, 0.0);
    v1178[2] = v768;
    v771 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v769, v1178, 3, v770);
    v774 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v749, v772, &unk_28492E070, v771, v773, v754, v755, v756, v757);

    v1167 = v774;
    if (objc_msgSend_BOOLValue(self->inputShowHF, v775, v776, v777, v778))
    {
      v784 = sub_23388E6CC(v774, v1165, v1127, v1128, v1129, v1130);
      v785 = v749;
      goto LABEL_135;
    }

    if (v1162 >= 0.00001 || v729 > 0.0)
    {
      if (v729 >= 1.0)
      {
        *&v783 = 0.0;
      }

      else
      {
        *&v783 = v729;
      }

      v786 = "i";
      if (v729 >= 1.0)
      {
        v786 = "";
      }

      v787 = "HF";
      if (v729 == 0.0)
      {
        v787 = "";
        v788 = 0.0;
      }

      else
      {
        v788 = *&v783;
      }

      if (v729 == 0.0)
      {
        v786 = "";
      }

      v789 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v779, @"%s%s%s", v780, v781, 0.0, v783, "powerBlurL", v787, v786);
      v793 = objc_msgSend_kernelWithName_(V8CNRKernels, v790, v789, v791, v792);

      objc_msgSend_extent(v774, v794, v795, v796, v797);
      v1186 = CGRectInset(v1185, -2.0, -2.0);
      v798 = v1186.origin.x;
      v799 = v1186.origin.y;
      v800 = v1186.size.width;
      v801 = v1186.size.height;
      v1177[0] = v774;
      v806 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v802, v803, v804, v805, v1160, 1.0, v1158, 1.0);
      v1177[1] = v806;
      v811 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v807, v808, v809, v810, v1153, v1162, v1155, v1134);
      v1177[2] = v811;
      *&v812 = v788;
      v817 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v813, v814, v815, v816, v812);
      v1177[3] = v817;
      v820 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v818, v1177, 4, v819);
      v823 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v793, v821, &unk_28492E090, v820, v822, v798, v799, v800, v801);

      v749 = v793;
      v1167 = v823;
    }

    if (((v729 < 1.0) & ~v1137) == 0)
    {
      v824 = v569 * (v1150 + (v1123 * v1148));
      v825 = v569 * (v1149 + (v1123 * v1147));
      v826 = v729 < 3.0;
      v827 = v729 > 1.0;
      v828 = (v729 + -1.0) * 0.5;
      v829 = "HF";
      if (v729 <= 1.0)
      {
        v829 = "";
      }

      v830 = !v827 || !v826;
      if (!v827 || !v826)
      {
        v828 = 0.0;
      }

      v1163 = v828;
      v831 = "i";
      if (v830)
      {
        v831 = "";
      }

      if (v1121)
      {
        v832 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v779, @"%s%s%s", v780, v781, "powerBlurDespeckleL", v829, v831);
        v836 = objc_msgSend_kernelWithName_(V8CNRKernels, v833, v832, v834, v835);

        objc_msgSend_extent(v1167, v837, v838, v839, v840);
        v1188 = CGRectInset(v1187, -6.0, -6.0);
        v841 = v1188.origin.x;
        v842 = v1188.origin.y;
        v843 = v1188.size.width;
        v844 = v1188.size.height;
        v1176[0] = v1167;
        v1156 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v845, v846, v847, v848, v1160, 1.0, v1158, 3.0);
        v1176[1] = v1156;
        v853 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v849, v850, v851, v852, v824, v1122, v825, v1134);
        v1176[2] = v853;
        v858 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v854, v855, v856, v857, 0.0, v1117, v1116, v1115);
        v1176[3] = v858;
        v863 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v859, v860, v861, v862, v1114, v1113, v1112, v1111);
        v1176[4] = v863;
        v868 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v864, v865, v866, v867, v1110, v1109, v1108, v1107);
        v1176[5] = v868;
        v873 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v869, v870, v871, v872, v1106, v1163, 0.0, 0.0);
        v1176[6] = v873;
        v876 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v874, v1176, 7, v875);
        v879 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v836, v877, &unk_28492E0B0, v876, v878, v841, v842, v843, v844);

        v1167 = v879;
      }

      else
      {
        v956 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v779, @"%s%s%s", v780, v781, "powerBlurL", v829, v831);
        v836 = objc_msgSend_kernelWithName_(V8CNRKernels, v957, v956, v958, v959);

        objc_msgSend_extent(v1167, v960, v961, v962, v963);
        v1192 = CGRectInset(v1191, -6.0, -6.0);
        v964 = v1192.origin.x;
        v965 = v1192.origin.y;
        v966 = v1192.size.width;
        v967 = v1192.size.height;
        v1175[0] = v1167;
        v1156 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v968, v969, v970, v971, v1160, 1.0, v1158, 3.0);
        v1175[1] = v1156;
        v853 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v972, v973, v974, v975, v824, v1122, v825, v1134);
        v1175[2] = v853;
        *&v976 = v1163;
        v858 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v977, v978, v979, v980, v976);
        v1175[3] = v858;
        v863 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v981, v1175, 4, v982);
        objc_msgSend_applyWithExtent_roiCallback_arguments_(v836, v983, &unk_28492E0D0, v863, v984, v964, v965, v966, v967);
        v1167 = v868 = v1167;
      }

      v749 = v836;
    }

    if (((v729 < 3.0) & ~v1126) == 0)
    {
      v985 = 0.0;
      if (v729 <= 3.0)
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v779, @"%s%s%s", v780, v781, "powerBlurEarlyOutL", ", ");
      }

      else if (v729 >= 7.0)
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v779, @"%s%s%s", v780, v781, "powerBlurEarlyOutL", "HF", "");
      }

      else
      {
        v985 = (v729 + -3.0) * 0.25;
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v779, @"%s%s%s", v780, v781, "powerBlurEarlyOutL", "HF", "i");
      }
      v986 = ;
      v990 = objc_msgSend_kernelWithName_(V8CNRKernels, v987, v986, v988, v989);

      objc_msgSend_extent(v1167, v991, v992, v993, v994);
      v1194 = CGRectInset(v1193, -14.0, -14.0);
      v995 = v1194.origin.x;
      v996 = v1194.origin.y;
      v997 = v1194.size.width;
      v998 = v1194.size.height;
      v1174[0] = v1167;
      v1003 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v999, v1000, v1001, v1002, v1160, 1.0, v1158, 7.0);
      v1174[1] = v1003;
      v1008 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1004, v1005, v1006, v1007, (v569 * (v1145 + (v1120 * v1143))), v1119, (v569 * (v1144 + (v1120 * v1142))), v1134);
      v1174[2] = v1008;
      *&v1009 = v985;
      v1014 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1010, v1011, v1012, v1013, v1009);
      v1174[3] = v1014;
      v1017 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1015, v1174, 4, v1016);
      v1020 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v990, v1018, &unk_28492E0F0, v1017, v1019, v995, v996, v997, v998);

      v749 = v990;
      v1167 = v1020;
    }

    if (((v729 < 7.0) & ~v1125) == 0)
    {
      v1021 = v569 * (v1141 + (v1146 * v1139));
      v1022 = v569 * (v1140 + (v1146 * v1138));
      v1023 = "HF";
      if (v729 <= 7.0)
      {
        v1023 = "";
      }

      v1024 = v729 <= 7.0 || v729 >= 14.0;
      HIDWORD(v1025) = 0;
      v1026 = "i";
      if (v729 > 7.0 && v729 < 14.0)
      {
        v1027 = (v729 + -7.0) * 0.14286;
      }

      else
      {
        v1027 = 0.0;
      }

      if (v1024)
      {
        v1026 = "";
      }

      LODWORD(v782) = 1.5;
      *&v1025 = v1124;
      if (v1124 <= 1.5)
      {
        v1061 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v779, @"%s%s%s", v780, v781, v782, v1025, "powerBlurEarlyOutL", v1023, v1026);
        v1032 = objc_msgSend_kernelWithName_(V8CNRKernels, v1062, v1061, v1063, v1064);

        objc_msgSend_extent(v1167, v1065, v1066, v1067, v1068);
        v1198 = CGRectInset(v1197, -28.0, -28.0);
        v1069 = v1198.origin.x;
        v1070 = v1198.origin.y;
        v1071 = v1198.size.width;
        v1072 = v1198.size.height;
        v1172[0] = v1167;
        v1045 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1073, v1074, v1075, v1076, v1160, 1.0, v1158, 14.0);
        v1172[1] = v1045;
        v1050 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1077, v1078, v1079, v1080, v1021, v1118, v1022, v1134);
        v1172[2] = v1050;
        *&v1081 = v1027;
        v1055 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1082, v1083, v1084, v1085, v1081);
        v1172[3] = v1055;
        v1058 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1086, v1172, 4, v1087);
        objc_msgSend_applyWithExtent_roiCallback_arguments_(v1032, v1088, &unk_28492E130, v1058, v1089, v1069, v1070, v1071, v1072);
      }

      else
      {
        v1028 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v779, @"%s%s%s", v780, v781, v782, v1025, "powerBlurEarlyOut2L", v1023, v1026);
        v1032 = objc_msgSend_kernelWithName_(V8CNRKernels, v1029, v1028, v1030, v1031);

        objc_msgSend_extent(v1167, v1033, v1034, v1035, v1036);
        v1196 = CGRectInset(v1195, -28.0, -28.0);
        v1037 = v1196.origin.x;
        v1038 = v1196.origin.y;
        v1039 = v1196.size.width;
        v1040 = v1196.size.height;
        v1173[0] = v1167;
        v1045 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1041, v1042, v1043, v1044, v1160, 1.0, v1158, 14.0);
        v1173[1] = v1045;
        v1050 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1046, v1047, v1048, v1049, v1021, v1118, v1022, v1134);
        v1173[2] = v1050;
        v1055 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1051, v1052, v1053, v1054, 5.0, 0.150000006, v1027, 0.0);
        v1173[3] = v1055;
        v1058 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1056, v1173, 4, v1057);
        objc_msgSend_applyWithExtent_roiCallback_arguments_(v1032, v1059, &unk_28492E110, v1058, v1060, v1037, v1038, v1039, v1040);
      }
      v1090 = ;

      v749 = v1032;
      v1167 = v1090;
    }

    v785 = objc_msgSend_kernelWithName_(V8CNRKernels, v779, @"expandHRGB", v780, v781);

    objc_msgSend_extent(v1167, v1091, v1092, v1093, v1094);
    v1168 = v1169;
    v1200 = CGRectApplyAffineTransform(v1199, &v1168);
    v1095 = v1200.origin.x;
    v1096 = v1200.origin.y;
    v1097 = v1200.size.width;
    v1098 = v1200.size.height;
    v1171 = v1167;
    v1101 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1099, &v1171, 1, v1100);
    v1104 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v785, v1102, &unk_28492E150, v1101, v1103, v1095, v1096, v1097, v1098);

    v955 = v1104;
  }

  else
  {
    if (v730)
    {
      v899 = objc_msgSend_kernelWithName_(V8CNRKernels, v738, @"highFrequencyIntoAlpha", v740, v741);
      objc_msgSend_extent(v1167, v900, v901, v902, v903);
      v905 = v904;
      v907 = v906;
      v909 = v908;
      v911 = v910;
      v1180[0] = v1167;
      v1180[1] = v708;
      v1180[2] = self->inputHighFrequencyFactor;
      *&v904 = v743;
      v916 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v912, v913, v914, v915, v904);
      v1180[3] = v916;
      v919 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v917, v1180, 4, v918);
      v922 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v899, v920, &unk_28492E030, v919, v921, v905, v907, v909, v911);

      v923 = v899;
      v1167 = v922;
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v924, @"%s%s", v925, v926, "powerBlurLFS", "HF");
    }

    else
    {
      v923 = 0;
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v738, @"%s%s", v740, v741, "powerBlurLFS", "");
    }
    v927 = ;
    v785 = objc_msgSend_kernelWithName_(V8CNRKernels, v928, v927, v929, v930);

    objc_msgSend_extent(v1167, v931, v932, v933, v934);
    v1190 = CGRectInset(v1189, -4.0, -4.0);
    v935 = v1190.origin.x;
    v936 = v1190.origin.y;
    v937 = v1190.size.width;
    v938 = v1190.size.height;
    v1179[0] = v1167;
    v943 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v939, v940, v941, v942, v1160, 1.0, v1158, 0.0);
    v1179[1] = v943;
    v948 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v944, v945, v946, v947, v1153, v1162, v1155, v1134);
    v1179[2] = v948;
    v1179[3] = v732;
    v951 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v949, v1179, 4, v950);
    v954 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v785, v952, &unk_28492E050, v951, v953, v935, v936, v937, v938);

    v955 = v954;
  }

  v784 = v955;
  v1167 = v955;
LABEL_135:

  return v784;
}

- (id)kernelWithName:(id)a3 inArray:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = a4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v26, v30, 16);
  if (v8)
  {
    v9 = 0;
    v10 = *v27;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v26 + 1) + 8 * v11);

        v17 = objc_msgSend_name(v9, v13, v14, v15, v16);
        isEqualToString = objc_msgSend_isEqualToString_(v17, v18, v5, v19, v20);

        if (isEqualToString)
        {
          v24 = v9;

          goto LABEL_12;
        }

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v22, &v26, v30, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  objc_msgSend_getCString_maxLength_encoding_(v5, v23, v31, 256, 30);
  printf("kernel %s not found\n", v31);
  v24 = 0;
LABEL_12:

  return v24;
}

- (id)kernelArrayWithResourceName:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v4, v5, v6, v7);
  v11 = objc_msgSend_pathForResource_ofType_(v8, v9, v3, @"cikernel", v10);

  v15 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x277CBEA90], v12, v11, v13, v14);
  v20 = objc_msgSend_length(v15, v16, v17, v18, v19);
  v21 = malloc_type_malloc(v20 + 1, 0x100004077774924uLL);
  objc_msgSend_getBytes_range_(v15, v22, v21, 0, v20);
  v21[v20] = 0;
  v25 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v23, v21, 30, v24);
  v28 = objc_msgSend_kernelsWithString_messageLog_(MEMORY[0x277CBF760], v26, v25, 0, v27);
  free(v21);

  return v28;
}

- (id)V8OutputImage
{
  v3285[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_floatValue(self->inputBaselineExposure, a2, v2, v3, v4);
  v3123 = exp2f(v6);
  v3090 = self->inputTrimParameters;
  v3085 = objc_msgSend_objectForKeyedSubscript_(v3090, v7, @"noise", v8, v9);
  v13 = objc_msgSend_objectAtIndexedSubscript_(v3085, v10, 0, v11, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16, v17);
  v3227 = v18;

  v22 = objc_msgSend_objectAtIndexedSubscript_(v3085, v19, 1, v20, v21);
  objc_msgSend_floatValue(v22, v23, v24, v25, v26);
  v3216 = v27;

  v3083 = objc_msgSend_objectForKeyedSubscript_(v3090, v28, @"smoothing", v29, v30);
  v34 = objc_msgSend_objectAtIndexedSubscript_(v3083, v31, 0, v32, v33);
  objc_msgSend_floatValue(v34, v35, v36, v37, v38);
  v3077 = v39;

  v43 = objc_msgSend_objectAtIndexedSubscript_(v3083, v40, 1, v41, v42);
  objc_msgSend_floatValue(v43, v44, v45, v46, v47);
  v3101 = v48;

  v3084 = objc_msgSend_objectForKeyedSubscript_(v3090, v49, @"contrast", v50, v51);
  v55 = objc_msgSend_objectAtIndexedSubscript_(v3084, v52, 0, v53, v54);
  objc_msgSend_floatValue(v55, v56, v57, v58, v59);
  v61 = v60;

  v65 = objc_msgSend_objectAtIndexedSubscript_(v3084, v62, 1, v63, v64);
  objc_msgSend_floatValue(v65, v66, v67, v68, v69);
  v3155 = v70;

  v3086 = objc_msgSend_objectForKeyedSubscript_(v3090, v71, @"outmaskDetailAmount", v72, v73);
  v77 = objc_msgSend_objectAtIndexedSubscript_(v3086, v74, 0, v75, v76);
  objc_msgSend_floatValue(v77, v78, v79, v80, v81);
  v83 = v82;

  v87 = objc_msgSend_objectAtIndexedSubscript_(v3086, v84, 1, v85, v86);
  objc_msgSend_floatValue(v87, v88, v89, v90, v91);
  v93 = v92;

  v3087 = objc_msgSend_objectForKeyedSubscript_(v3090, v94, @"outmaskDetailAttenuation", v95, v96);
  v100 = objc_msgSend_objectAtIndexedSubscript_(v3087, v97, 0, v98, v99);
  objc_msgSend_floatValue(v100, v101, v102, v103, v104);
  v3079 = v105;

  v109 = objc_msgSend_objectAtIndexedSubscript_(v3087, v106, 1, v107, v108);
  objc_msgSend_floatValue(v109, v110, v111, v112, v113);
  v3098 = v114;

  v119 = objc_msgSend_intValue(self->inputISO, v115, v116, v117, v118);
  v3105 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v120, @"ISOList", v121, v122);
  v130 = objc_msgSend_count(v3105, v123, v124, v125, v126);
  v3153 = v83;
  v3151 = v93;
  if (v130)
  {
    v131 = 0;
    while (1)
    {
      v132 = objc_msgSend_objectAtIndexedSubscript_(v3105, v127, v131, v128, v129);
      v137 = objc_msgSend_intValue(v132, v133, v134, v135, v136);

      v138 = v119 != v137;
      if (v119 == v137)
      {
        v139 = 0.0;
        goto LABEL_10;
      }

      if (v119 < v137)
      {
        break;
      }

      if (v130 == ++v131)
      {
        goto LABEL_6;
      }
    }

    if (!v131)
    {
      v138 = 0;
      v139 = 0.0;
      goto LABEL_12;
    }

    v140 = objc_msgSend_objectAtIndexedSubscript_(v3105, v127, --v131, v128, v129);
    v145 = objc_msgSend_intValue(v140, v141, v142, v143, v144);

    v139 = (v119 - v145) / (v137 - v145);
LABEL_10:
    if (v131 != 100000)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_6:
    v138 = 0;
    v139 = 0.0;
  }

  v131 = v130 - 1;
LABEL_12:
  v146 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v127, @"FYMa", v128, v129);
  v150 = objc_msgSend_objectAtIndexedSubscript_(v146, v147, v131, v148, v149);
  objc_msgSend_floatValue(v150, v151, v152, v153, v154);
  v3222 = v155;

  if (v138)
  {
    v159 = objc_msgSend_objectAtIndexedSubscript_(v146, v156, v131 + 1, v157, v158);
    objc_msgSend_floatValue(v159, v160, v161, v162, v163);
    v165 = v164;

    v3222 = v3222 + ((v165 - v3222) * v139);
  }

  v166 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v156, @"FYMb", v157, v158);

  v170 = objc_msgSend_objectAtIndexedSubscript_(v166, v167, v131, v168, v169);
  objc_msgSend_floatValue(v170, v171, v172, v173, v174);
  v3211 = v175;

  if (v138)
  {
    v179 = objc_msgSend_objectAtIndexedSubscript_(v166, v176, v131 + 1, v177, v178);
    objc_msgSend_floatValue(v179, v180, v181, v182, v183);
    v185 = v184;

    v3211 = v3211 + ((v185 - v3211) * v139);
  }

  v186 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v176, @"FYMc", v177, v178);

  v190 = objc_msgSend_objectAtIndexedSubscript_(v186, v187, v131, v188, v189);
  objc_msgSend_floatValue(v190, v191, v192, v193, v194);
  v3206 = v195;

  if (v138)
  {
    v199 = objc_msgSend_objectAtIndexedSubscript_(v186, v196, v131 + 1, v197, v198);
    objc_msgSend_floatValue(v199, v200, v201, v202, v203);
    v205 = v204;

    v3206 = v3206 + ((v205 - v3206) * v139);
  }

  v206 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v196, @"FYSDa", v197, v198);

  v210 = objc_msgSend_objectAtIndexedSubscript_(v206, v207, v131, v208, v209);
  objc_msgSend_floatValue(v210, v211, v212, v213, v214);
  r1 = v215;

  if (v138)
  {
    v219 = objc_msgSend_objectAtIndexedSubscript_(v206, v216, v131 + 1, v217, v218);
    objc_msgSend_floatValue(v219, v220, v221, v222, v223);
    v225 = v224;

    r1 = r1 + ((v225 - r1) * v139);
  }

  v226 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v216, @"FYSDb", v217, v218);

  v230 = objc_msgSend_objectAtIndexedSubscript_(v226, v227, v131, v228, v229);
  objc_msgSend_floatValue(v230, v231, v232, v233, v234);
  v3196 = v235;

  if (v138)
  {
    v239 = objc_msgSend_objectAtIndexedSubscript_(v226, v236, v131 + 1, v237, v238);
    objc_msgSend_floatValue(v239, v240, v241, v242, v243);
    v245 = v244;

    v3196 = v3196 + ((v245 - v3196) * v139);
  }

  v246 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v236, @"FYSDc", v237, v238);

  v250 = objc_msgSend_objectAtIndexedSubscript_(v246, v247, v131, v248, v249);
  objc_msgSend_floatValue(v250, v251, v252, v253, v254);
  v3194 = v255;

  if (v138)
  {
    v259 = objc_msgSend_objectAtIndexedSubscript_(v246, v256, v131 + 1, v257, v258);
    objc_msgSend_floatValue(v259, v260, v261, v262, v263);
    v265 = v264;

    v3194 = v3194 + ((v265 - v3194) * v139);
  }

  v266 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v256, @"HYMa", v257, v258);

  v270 = objc_msgSend_objectAtIndexedSubscript_(v266, v267, v131, v268, v269);
  objc_msgSend_floatValue(v270, v271, v272, v273, v274);
  v3192 = v275;

  if (v138)
  {
    v279 = objc_msgSend_objectAtIndexedSubscript_(v266, v276, v131 + 1, v277, v278);
    objc_msgSend_floatValue(v279, v280, v281, v282, v283);
    v285 = v284;

    v3192 = v3192 + ((v285 - v3192) * v139);
  }

  v286 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v276, @"HYMb", v277, v278);

  v290 = objc_msgSend_objectAtIndexedSubscript_(v286, v287, v131, v288, v289);
  objc_msgSend_floatValue(v290, v291, v292, v293, v294);
  v3190 = v295;

  if (v138)
  {
    v299 = objc_msgSend_objectAtIndexedSubscript_(v286, v296, v131 + 1, v297, v298);
    objc_msgSend_floatValue(v299, v300, v301, v302, v303);
    v305 = v304;

    v3190 = v3190 + ((v305 - v3190) * v139);
  }

  v306 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v296, @"HYMc", v297, v298);

  v310 = objc_msgSend_objectAtIndexedSubscript_(v306, v307, v131, v308, v309);
  objc_msgSend_floatValue(v310, v311, v312, v313, v314);
  v3188 = v315;

  if (v138)
  {
    v319 = objc_msgSend_objectAtIndexedSubscript_(v306, v316, v131 + 1, v317, v318);
    objc_msgSend_floatValue(v319, v320, v321, v322, v323);
    v325 = v324;

    v3188 = v3188 + ((v325 - v3188) * v139);
  }

  v326 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v316, @"HYSDa", v317, v318);

  v330 = objc_msgSend_objectAtIndexedSubscript_(v326, v327, v131, v328, v329);
  objc_msgSend_floatValue(v330, v331, v332, v333, v334);
  v3185 = v335;

  if (v138)
  {
    v339 = objc_msgSend_objectAtIndexedSubscript_(v326, v336, v131 + 1, v337, v338);
    objc_msgSend_floatValue(v339, v340, v341, v342, v343);
    v345 = v344;

    v3185 = v3185 + ((v345 - v3185) * v139);
  }

  v346 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v336, @"HYSDb", v337, v338);

  v350 = objc_msgSend_objectAtIndexedSubscript_(v346, v347, v131, v348, v349);
  objc_msgSend_floatValue(v350, v351, v352, v353, v354);
  v3183 = v355;

  if (v138)
  {
    v359 = objc_msgSend_objectAtIndexedSubscript_(v346, v356, v131 + 1, v357, v358);
    objc_msgSend_floatValue(v359, v360, v361, v362, v363);
    v365 = v364;

    v3183 = v3183 + ((v365 - v3183) * v139);
  }

  v366 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v356, @"HYSDc", v357, v358);

  v370 = objc_msgSend_objectAtIndexedSubscript_(v366, v367, v131, v368, v369);
  objc_msgSend_floatValue(v370, v371, v372, v373, v374);
  v3181 = v375;

  if (v138)
  {
    v379 = objc_msgSend_objectAtIndexedSubscript_(v366, v376, v131 + 1, v377, v378);
    objc_msgSend_floatValue(v379, v380, v381, v382, v383);
    v385 = v384;

    v3181 = v3181 + ((v385 - v3181) * v139);
  }

  v386 = logf(v3227);
  v387 = logf(v3216);
  v3149 = expf((v387 * 0.33333) + (v386 * 0.66667));
  v391 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v388, @"QYMa", v389, v390);

  v395 = objc_msgSend_objectAtIndexedSubscript_(v391, v392, v131, v393, v394);
  objc_msgSend_floatValue(v395, v396, v397, v398, v399);
  v3179 = v400;

  if (v138)
  {
    v404 = objc_msgSend_objectAtIndexedSubscript_(v391, v401, v131 + 1, v402, v403);
    objc_msgSend_floatValue(v404, v405, v406, v407, v408);
    v410 = v409;

    v3179 = v3179 + ((v410 - v3179) * v139);
  }

  v411 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v401, @"QYMb", v402, v403);

  v415 = objc_msgSend_objectAtIndexedSubscript_(v411, v412, v131, v413, v414);
  objc_msgSend_floatValue(v415, v416, v417, v418, v419);
  v3177 = v420;

  if (v138)
  {
    v424 = objc_msgSend_objectAtIndexedSubscript_(v411, v421, v131 + 1, v422, v423);
    objc_msgSend_floatValue(v424, v425, v426, v427, v428);
    v430 = v429;

    v3177 = v3177 + ((v430 - v3177) * v139);
  }

  v431 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v421, @"QYMc", v422, v423);

  v435 = objc_msgSend_objectAtIndexedSubscript_(v431, v432, v131, v433, v434);
  objc_msgSend_floatValue(v435, v436, v437, v438, v439);
  v3174 = v440;

  if (v138)
  {
    v444 = objc_msgSend_objectAtIndexedSubscript_(v431, v441, v131 + 1, v442, v443);
    objc_msgSend_floatValue(v444, v445, v446, v447, v448);
    v450 = v449;

    v3174 = v3174 + ((v450 - v3174) * v139);
  }

  v451 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v441, @"QYSDa", v442, v443);

  v455 = objc_msgSend_objectAtIndexedSubscript_(v451, v452, v131, v453, v454);
  objc_msgSend_floatValue(v455, v456, v457, v458, v459);
  v3172 = v460;

  if (v138)
  {
    v464 = objc_msgSend_objectAtIndexedSubscript_(v451, v461, v131 + 1, v462, v463);
    objc_msgSend_floatValue(v464, v465, v466, v467, v468);
    v470 = v469;

    v3172 = v3172 + ((v470 - v3172) * v139);
  }

  v471 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v461, @"QYSDb", v462, v463);

  v475 = objc_msgSend_objectAtIndexedSubscript_(v471, v472, v131, v473, v474);
  objc_msgSend_floatValue(v475, v476, v477, v478, v479);
  v3170 = v480;

  if (v138)
  {
    v484 = objc_msgSend_objectAtIndexedSubscript_(v471, v481, v131 + 1, v482, v483);
    objc_msgSend_floatValue(v484, v485, v486, v487, v488);
    v490 = v489;

    v3170 = v3170 + ((v490 - v3170) * v139);
  }

  v491 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v481, @"QYSDc", v482, v483);

  v495 = objc_msgSend_objectAtIndexedSubscript_(v491, v492, v131, v493, v494);
  objc_msgSend_floatValue(v495, v496, v497, v498, v499);
  v3168 = v500;

  if (v138)
  {
    v504 = objc_msgSend_objectAtIndexedSubscript_(v491, v501, v131 + 1, v502, v503);
    objc_msgSend_floatValue(v504, v505, v506, v507, v508);
    v510 = v509;

    v3168 = v3168 + ((v510 - v3168) * v139);
  }

  v3147 = expf((v387 * 0.66667) + (v386 * 0.33333));
  v514 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v511, @"EYMa", v512, v513);

  v518 = objc_msgSend_objectAtIndexedSubscript_(v514, v515, v131, v516, v517);
  objc_msgSend_floatValue(v518, v519, v520, v521, v522);
  v3166 = v523;

  if (v138)
  {
    v527 = objc_msgSend_objectAtIndexedSubscript_(v514, v524, v131 + 1, v525, v526);
    objc_msgSend_floatValue(v527, v528, v529, v530, v531);
    v533 = v532;

    v3166 = v3166 + ((v533 - v3166) * v139);
  }

  v534 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v524, @"EYMb", v525, v526);

  v538 = objc_msgSend_objectAtIndexedSubscript_(v534, v535, v131, v536, v537);
  objc_msgSend_floatValue(v538, v539, v540, v541, v542);
  v3164 = v543;

  if (v138)
  {
    v547 = objc_msgSend_objectAtIndexedSubscript_(v534, v544, v131 + 1, v545, v546);
    objc_msgSend_floatValue(v547, v548, v549, v550, v551);
    v553 = v552;

    v3164 = v3164 + ((v553 - v3164) * v139);
  }

  v554 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v544, @"EYMc", v545, v546);

  v558 = objc_msgSend_objectAtIndexedSubscript_(v554, v555, v131, v556, v557);
  objc_msgSend_floatValue(v558, v559, v560, v561, v562);
  v3162 = v563;

  if (v138)
  {
    v567 = objc_msgSend_objectAtIndexedSubscript_(v554, v564, v131 + 1, v565, v566);
    objc_msgSend_floatValue(v567, v568, v569, v570, v571);
    v573 = v572;

    v3162 = v3162 + ((v573 - v3162) * v139);
  }

  v574 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v564, @"EYSDa", v565, v566);

  v578 = objc_msgSend_objectAtIndexedSubscript_(v574, v575, v131, v576, v577);
  objc_msgSend_floatValue(v578, v579, v580, v581, v582);
  v584 = v583;

  if (v138)
  {
    v588 = objc_msgSend_objectAtIndexedSubscript_(v574, v585, v131 + 1, v586, v587);
    objc_msgSend_floatValue(v588, v589, v590, v591, v592);
    v594 = v593;

    v584 = v584 + ((v594 - v584) * v139);
  }

  v595 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v585, @"EYSDb", v586, v587);

  v599 = objc_msgSend_objectAtIndexedSubscript_(v595, v596, v131, v597, v598);
  objc_msgSend_floatValue(v599, v600, v601, v602, v603);
  v3160 = v604;

  if (v138)
  {
    v608 = objc_msgSend_objectAtIndexedSubscript_(v595, v605, v131 + 1, v606, v607);
    objc_msgSend_floatValue(v608, v609, v610, v611, v612);
    v614 = v613;

    v3160 = v3160 + ((v614 - v3160) * v139);
  }

  v615 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v605, @"EYSDc", v606, v607);

  v619 = objc_msgSend_objectAtIndexedSubscript_(v615, v616, v131, v617, v618);
  objc_msgSend_floatValue(v619, v620, v621, v622, v623);
  v3158 = v624;

  if (v138)
  {
    v628 = objc_msgSend_objectAtIndexedSubscript_(v615, v625, v131 + 1, v626, v627);
    objc_msgSend_floatValue(v628, v629, v630, v631, v632);
    v634 = v633;

    v3158 = v3158 + ((v634 - v3158) * v139);
  }

  v635 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v625, @"FullCMa", v626, v627);

  v639 = objc_msgSend_objectAtIndexedSubscript_(v635, v636, v131, v637, v638);
  objc_msgSend_floatValue(v639, v640, v641, v642, v643);
  v3076 = v644;

  if (v138)
  {
    v648 = objc_msgSend_objectAtIndexedSubscript_(v635, v645, v131 + 1, v646, v647);
    objc_msgSend_floatValue(v648, v649, v650, v651, v652);
    v654 = v653;

    v3076 = v3076 + ((v654 - v3076) * v139);
  }

  v655 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v645, @"FullCMb", v646, v647);

  v659 = objc_msgSend_objectAtIndexedSubscript_(v655, v656, v131, v657, v658);
  objc_msgSend_floatValue(v659, v660, v661, v662, v663);
  v3075 = v664;

  if (v138)
  {
    v668 = objc_msgSend_objectAtIndexedSubscript_(v655, v665, v131 + 1, v666, v667);
    objc_msgSend_floatValue(v668, v669, v670, v671, v672);
    v674 = v673;

    v3075 = v3075 + ((v674 - v3075) * v139);
  }

  v675 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v665, @"FullCMc", v666, v667);

  v679 = objc_msgSend_objectAtIndexedSubscript_(v675, v676, v131, v677, v678);
  objc_msgSend_floatValue(v679, v680, v681, v682, v683);
  v3074 = v684;

  if (v138)
  {
    v688 = objc_msgSend_objectAtIndexedSubscript_(v675, v685, v131 + 1, v686, v687);
    objc_msgSend_floatValue(v688, v689, v690, v691, v692);
    v694 = v693;

    v3074 = v3074 + ((v694 - v3074) * v139);
  }

  v695 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v685, @"FullCSDa", v686, v687);

  v699 = objc_msgSend_objectAtIndexedSubscript_(v695, v696, v131, v697, v698);
  objc_msgSend_floatValue(v699, v700, v701, v702, v703);
  v3073 = v704;

  if (v138)
  {
    v708 = objc_msgSend_objectAtIndexedSubscript_(v695, v705, v131 + 1, v706, v707);
    objc_msgSend_floatValue(v708, v709, v710, v711, v712);
    v714 = v713;

    v3073 = v3073 + ((v714 - v3073) * v139);
  }

  v715 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v705, @"FullCSDb", v706, v707);

  v719 = objc_msgSend_objectAtIndexedSubscript_(v715, v716, v131, v717, v718);
  objc_msgSend_floatValue(v719, v720, v721, v722, v723);
  v3072 = v724;

  if (v138)
  {
    v728 = objc_msgSend_objectAtIndexedSubscript_(v715, v725, v131 + 1, v726, v727);
    objc_msgSend_floatValue(v728, v729, v730, v731, v732);
    v734 = v733;

    v3072 = v3072 + ((v734 - v3072) * v139);
  }

  v735 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v725, @"FullCSDc", v726, v727);

  v739 = objc_msgSend_objectAtIndexedSubscript_(v735, v736, v131, v737, v738);
  objc_msgSend_floatValue(v739, v740, v741, v742, v743);
  v3071 = v744;

  if (v138)
  {
    v748 = objc_msgSend_objectAtIndexedSubscript_(v735, v745, v131 + 1, v746, v747);
    objc_msgSend_floatValue(v748, v749, v750, v751, v752);
    v754 = v753;

    v3071 = v3071 + ((v754 - v3071) * v139);
  }

  v755 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v745, @"HalfCMa", v746, v747);

  v759 = objc_msgSend_objectAtIndexedSubscript_(v755, v756, v131, v757, v758);
  objc_msgSend_floatValue(v759, v760, v761, v762, v763);
  v3096 = v764;

  if (v138)
  {
    v768 = objc_msgSend_objectAtIndexedSubscript_(v755, v765, v131 + 1, v766, v767);
    objc_msgSend_floatValue(v768, v769, v770, v771, v772);
    v774 = v773;

    v3096 = v3096 + ((v774 - v3096) * v139);
  }

  v775 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v765, @"HalfCMb", v766, v767);

  v779 = objc_msgSend_objectAtIndexedSubscript_(v775, v776, v131, v777, v778);
  objc_msgSend_floatValue(v779, v780, v781, v782, v783);
  v3081 = v784;

  if (v138)
  {
    v788 = objc_msgSend_objectAtIndexedSubscript_(v775, v785, v131 + 1, v786, v787);
    objc_msgSend_floatValue(v788, v789, v790, v791, v792);
    v794 = v793;

    v3081 = v3081 + ((v794 - v3081) * v139);
  }

  v795 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v785, @"HalfCMc", v786, v787);

  v799 = objc_msgSend_objectAtIndexedSubscript_(v795, v796, v131, v797, v798);
  objc_msgSend_floatValue(v799, v800, v801, v802, v803);
  v3070 = v804;

  if (v138)
  {
    v808 = objc_msgSend_objectAtIndexedSubscript_(v795, v805, v131 + 1, v806, v807);
    objc_msgSend_floatValue(v808, v809, v810, v811, v812);
    v814 = v813;

    v3070 = v3070 + ((v814 - v3070) * v139);
  }

  v815 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v805, @"HalfCSDa", v806, v807);

  v819 = objc_msgSend_objectAtIndexedSubscript_(v815, v816, v131, v817, v818);
  objc_msgSend_floatValue(v819, v820, v821, v822, v823);
  v3069 = v824;

  if (v138)
  {
    v828 = objc_msgSend_objectAtIndexedSubscript_(v815, v825, v131 + 1, v826, v827);
    objc_msgSend_floatValue(v828, v829, v830, v831, v832);
    v834 = v833;

    v3069 = v3069 + ((v834 - v3069) * v139);
  }

  v835 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v825, @"HalfCSDb", v826, v827);

  v839 = objc_msgSend_objectAtIndexedSubscript_(v835, v836, v131, v837, v838);
  objc_msgSend_floatValue(v839, v840, v841, v842, v843);
  v3068 = v844;

  if (v138)
  {
    v848 = objc_msgSend_objectAtIndexedSubscript_(v835, v845, v131 + 1, v846, v847);
    objc_msgSend_floatValue(v848, v849, v850, v851, v852);
    v854 = v853;

    v3068 = v3068 + ((v854 - v3068) * v139);
  }

  v855 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v845, @"HalfCSDc", v846, v847);

  v859 = objc_msgSend_objectAtIndexedSubscript_(v855, v856, v131, v857, v858);
  objc_msgSend_floatValue(v859, v860, v861, v862, v863);
  v3064 = v864;

  if (v138)
  {
    v868 = objc_msgSend_objectAtIndexedSubscript_(v855, v865, v131 + 1, v866, v867);
    objc_msgSend_floatValue(v868, v869, v870, v871, v872);
    v874 = v873;

    v3064 = v3064 + ((v874 - v3064) * v139);
  }

  v875 = logf(v3077);
  v876 = logf(v3101);
  v3028 = expf((v876 * 0.33333) + (v875 * 0.66667));
  v880 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v877, @"QuarterCMa", v878, v879);

  v884 = objc_msgSend_objectAtIndexedSubscript_(v880, v881, v131, v882, v883);
  objc_msgSend_floatValue(v884, v885, v886, v887, v888);
  v3065 = v889;

  if (v138)
  {
    v893 = objc_msgSend_objectAtIndexedSubscript_(v880, v890, v131 + 1, v891, v892);
    objc_msgSend_floatValue(v893, v894, v895, v896, v897);
    v899 = v898;

    v3065 = v3065 + ((v899 - v3065) * v139);
  }

  v900 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v890, @"QuarterCMb", v891, v892);

  v904 = objc_msgSend_objectAtIndexedSubscript_(v900, v901, v131, v902, v903);
  objc_msgSend_floatValue(v904, v905, v906, v907, v908);
  v3063 = v909;

  if (v138)
  {
    v913 = objc_msgSend_objectAtIndexedSubscript_(v900, v910, v131 + 1, v911, v912);
    objc_msgSend_floatValue(v913, v914, v915, v916, v917);
    v919 = v918;

    v3063 = v3063 + ((v919 - v3063) * v139);
  }

  v920 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v910, @"QuarterCMc", v911, v912);

  v924 = objc_msgSend_objectAtIndexedSubscript_(v920, v921, v131, v922, v923);
  objc_msgSend_floatValue(v924, v925, v926, v927, v928);
  v3062 = v929;

  if (v138)
  {
    v933 = objc_msgSend_objectAtIndexedSubscript_(v920, v930, v131 + 1, v931, v932);
    objc_msgSend_floatValue(v933, v934, v935, v936, v937);
    v939 = v938;

    v3062 = v3062 + ((v939 - v3062) * v139);
  }

  v940 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v930, @"QuarterCSDa", v931, v932);

  v944 = objc_msgSend_objectAtIndexedSubscript_(v940, v941, v131, v942, v943);
  objc_msgSend_floatValue(v944, v945, v946, v947, v948);
  v3061 = v949;

  if (v138)
  {
    v953 = objc_msgSend_objectAtIndexedSubscript_(v940, v950, v131 + 1, v951, v952);
    objc_msgSend_floatValue(v953, v954, v955, v956, v957);
    v959 = v958;

    v3061 = v3061 + ((v959 - v3061) * v139);
  }

  v960 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v950, @"QuarterCSDb", v951, v952);

  v964 = objc_msgSend_objectAtIndexedSubscript_(v960, v961, v131, v962, v963);
  objc_msgSend_floatValue(v964, v965, v966, v967, v968);
  v3060 = v969;

  if (v138)
  {
    v973 = objc_msgSend_objectAtIndexedSubscript_(v960, v970, v131 + 1, v971, v972);
    objc_msgSend_floatValue(v973, v974, v975, v976, v977);
    v979 = v978;

    v3060 = v3060 + ((v979 - v3060) * v139);
  }

  v980 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v970, @"QuarterCSDc", v971, v972);

  v984 = objc_msgSend_objectAtIndexedSubscript_(v980, v981, v131, v982, v983);
  objc_msgSend_floatValue(v984, v985, v986, v987, v988);
  v3057 = v989;

  if (v138)
  {
    v993 = objc_msgSend_objectAtIndexedSubscript_(v980, v990, v131 + 1, v991, v992);
    objc_msgSend_floatValue(v993, v994, v995, v996, v997);
    v999 = v998;

    v3057 = v3057 + ((v999 - v3057) * v139);
  }

  v3027 = expf((v876 * 0.66667) + (v875 * 0.33333));
  v1003 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v1000, @"EighthCMa", v1001, v1002);

  v1007 = objc_msgSend_objectAtIndexedSubscript_(v1003, v1004, v131, v1005, v1006);
  objc_msgSend_floatValue(v1007, v1008, v1009, v1010, v1011);
  v3058 = v1012;

  if (v138)
  {
    v1016 = objc_msgSend_objectAtIndexedSubscript_(v1003, v1013, v131 + 1, v1014, v1015);
    objc_msgSend_floatValue(v1016, v1017, v1018, v1019, v1020);
    v1022 = v1021;

    v3058 = v3058 + ((v1022 - v3058) * v139);
  }

  v1023 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v1013, @"EighthCMb", v1014, v1015);

  v1027 = objc_msgSend_objectAtIndexedSubscript_(v1023, v1024, v131, v1025, v1026);
  objc_msgSend_floatValue(v1027, v1028, v1029, v1030, v1031);
  v3055 = v1032;

  if (v138)
  {
    v1036 = objc_msgSend_objectAtIndexedSubscript_(v1023, v1033, v131 + 1, v1034, v1035);
    objc_msgSend_floatValue(v1036, v1037, v1038, v1039, v1040);
    v1042 = v1041;

    v3055 = v3055 + ((v1042 - v3055) * v139);
  }

  v1043 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v1033, @"EighthCMc", v1034, v1035);

  v1047 = objc_msgSend_objectAtIndexedSubscript_(v1043, v1044, v131, v1045, v1046);
  objc_msgSend_floatValue(v1047, v1048, v1049, v1050, v1051);
  v3054 = v1052;

  if (v138)
  {
    v1056 = objc_msgSend_objectAtIndexedSubscript_(v1043, v1053, v131 + 1, v1054, v1055);
    objc_msgSend_floatValue(v1056, v1057, v1058, v1059, v1060);
    v1062 = v1061;

    v3054 = v3054 + ((v1062 - v3054) * v139);
  }

  v1063 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v1053, @"EighthCSDa", v1054, v1055);

  v1067 = objc_msgSend_objectAtIndexedSubscript_(v1063, v1064, v131, v1065, v1066);
  objc_msgSend_floatValue(v1067, v1068, v1069, v1070, v1071);
  v3053 = v1072;

  if (v138)
  {
    v1076 = objc_msgSend_objectAtIndexedSubscript_(v1063, v1073, v131 + 1, v1074, v1075);
    objc_msgSend_floatValue(v1076, v1077, v1078, v1079, v1080);
    v1082 = v1081;

    v3053 = v3053 + ((v1082 - v3053) * v139);
  }

  v1083 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v1073, @"EighthCSDb", v1074, v1075);

  v1087 = objc_msgSend_objectAtIndexedSubscript_(v1083, v1084, v131, v1085, v1086);
  objc_msgSend_floatValue(v1087, v1088, v1089, v1090, v1091);
  v3052 = v1092;

  if (v138)
  {
    v1096 = objc_msgSend_objectAtIndexedSubscript_(v1083, v1093, v131 + 1, v1094, v1095);
    objc_msgSend_floatValue(v1096, v1097, v1098, v1099, v1100);
    v1102 = v1101;

    v3052 = v3052 + ((v1102 - v3052) * v139);
  }

  v1103 = objc_msgSend_objectForKeyedSubscript_(self->inputISODictionary, v1093, @"EighthCSDc", v1094, v1095);

  v1107 = objc_msgSend_objectAtIndexedSubscript_(v1103, v1104, v131, v1105, v1106);
  v3187 = v1103;
  objc_msgSend_floatValue(v1107, v1108, v1109, v1110, v1111);
  v3051 = v1112;

  if (v138)
  {
    v1116 = objc_msgSend_objectAtIndexedSubscript_(v1103, v1113, v131 + 1, v1114, v1115);
    objc_msgSend_floatValue(v1116, v1117, v1118, v1119, v1120);
    v1122 = v1121;

    v3051 = v3051 + ((v1122 - v3051) * v139);
  }

  if (v61 == 0.0)
  {
    v1123 = 0.01;
  }

  else
  {
    v1123 = v61;
  }

  if (v3155 == 0.0)
  {
    v1124 = 0.01;
  }

  else
  {
    v1124 = v3155;
  }

  v1125 = logf(v1123);
  v1126 = logf(v1124);
  v3156 = expf((v1126 * 0.5) + (v1125 * 0.5));
  objc_msgSend_floatValue(self->inputLNRAmount, v1127, v1128, v1129, v1130);
  v3088 = v1131;
  v1132 = ((v1131 + -0.75) * -4.0) + 1.0;
  v1133 = v3153 * v1132;
  v1134 = v3151 * v1132;
  v1135 = v584;
  if (v3088 <= 0.75)
  {
    v1136 = v3151;
  }

  else
  {
    v1136 = v1134;
  }

  if (v3088 <= 0.75)
  {
    v1137 = v3153;
  }

  else
  {
    v1137 = v1133;
  }

  v3034 = v1137;
  v1138 = logf(v1137);
  v3024 = v1136;
  v1139 = logf(v1136);
  HIDWORD(v3018) = expf((v1139 * 0.33333) + (v1138 * 0.66667));
  v3021 = expf((v1139 * 0.66667) + (v1138 * 0.33333));
  v1140 = logf(v3079);
  v1141 = logf(v3098);
  LODWORD(v3018) = expf((v1141 * 0.33333) + (v1140 * 0.66667));
  v1142 = expf((v1141 * 0.66667) + (v1140 * 0.33333));
  objc_msgSend_floatValue(self->inputScaleFactor, v1143, v1144, v1145, v1146);
  v1148 = v1147;
  objc_msgSend_adjustedRNAmount(self, v1149, v1150, v1151, v1152);
  v3111 = v1157;
  v1158 = v3166 + (v3216 * v1135);
  v1159 = fminf(fmaxf(v1148, 0.0), 1.0);
  v3109 = v1159;
  if (v1159 >= 1.0)
  {
    v3106 = v3222 + (v3227 * r1);
    v3113 = v3211 + (v3227 * v3196);
    v3120 = v3206 + (v3227 * v3194);
    v3041 = v3177 + (v3147 * v3170);
    v3042 = v3164 + (v3216 * v3160);
    v3025 = v3174 + (v3147 * v3168);
    v3026 = v3179 + (v3147 * v3172);
    v3039 = v3190 + (v3149 * v3183);
    v3022 = v3188 + (v3149 * v3181);
    v3023 = v3192 + (v3149 * v3185);
    v1160 = v3162 + (v3216 * v3158);
  }

  else
  {
    v3106 = (v3222 + (v3227 * r1)) * (v1159 * v1159);
    v3113 = (v3211 + (v3227 * v3196)) * (v1159 * v1159);
    v3120 = (v3206 + (v3227 * v3194)) * (v1159 * v1159);
    v3039 = (v3190 + (v3149 * v3183)) * (v1159 * v1159);
    v3022 = (v3188 + (v3149 * v3181)) * (v1159 * v1159);
    v3023 = (v3192 + (v3149 * v3185)) * (v1159 * v1159);
    v3025 = (v3174 + (v3147 * v3168)) * (v1159 * v1159);
    v3026 = (v3179 + (v3147 * v3172)) * (v1159 * v1159);
    v1158 = v1158 * (v1159 * v1159);
    v3041 = (v3177 + (v3147 * v3170)) * (v1159 * v1159);
    v3042 = (v3164 + (v3216 * v3160)) * (v1159 * v1159);
    v1160 = (v3162 + (v3216 * v3158)) * (v1159 * v1159);
  }

  objc_msgSend_floatValue(self->inputSharpenAmount, v1153, v1154, v1155, v1156, v3018);
  v1162 = v1161;
  objc_msgSend_floatValue(self->inputSharpenThreshold, v1163, v1164, v1165, v1166);
  v3126 = exp2f(v1167);
  objc_msgSend_floatValue(self->inputContrastAmount, v1168, v1169, v1170, v1171);
  v1173 = v1172;
  objc_msgSend_floatValue(self->inputDetailAmount, v1174, v1175, v1176, v1177);
  v3037 = v1178;
  v3020 = v1142;
  v1179 = v1123 * v1173;
  v3050 = v3156 * v1173;
  v3045 = v3109 * v1162;
  v1180 = log2f(v3109);
  v1181 = vcvtms_s32_f32(v1180);
  if ((v1181 & 0x80000000) != 0)
  {
    v1352 = v1180 - floorf(v1180);
    if (v1181 == -3)
    {
      v3040 = 0.0;
      v3045 = v1352 * v3050;
      v3050 = 0.0;
      v3038 = 0.0;
    }

    else if (v1181 == -2)
    {
      v3040 = 0.0;
      v3045 = v3050 + ((v1179 - v3050) * v1352);
      v3038 = v1352 * v3050;
      v3050 = 0.0;
    }

    else
    {
      v3040 = 0.0;
      if (v1181 == -1)
      {
        v3045 = v1179 + ((v3045 - v1179) * v1352);
        v3038 = v3050 + ((v1179 - v3050) * v1352);
        v3050 = v1352 * v3050;
      }

      else
      {
        v3050 = 0.0;
        v3038 = 0.0;
        v3045 = 0.0;
      }
    }
  }

  else
  {
    v3038 = v1123 * v1173;
    v3040 = v1124 * v1173;
  }

  v1182 = 0.3;
  if (v3111 >= 1.0619)
  {
    v1182 = 1.0;
  }

  v3078 = v1182;
  v3048 = sub_23389FB1C(flt_23390AB48, flt_23390AB6C, v3111);
  v3047 = sub_23389FB1C(flt_23390AB48, flt_23390AB90, v3111);
  v3119 = self;
  v1186 = objc_msgSend_objectAtIndexedSubscript_(self->inputLowCurvatureThreshold, v1183, 0, v1184, v1185);
  objc_msgSend_floatValue(v1186, v1187, v1188, v1189, v1190);

  v1194 = objc_msgSend_objectAtIndexedSubscript_(self->inputLowCurvatureThreshold, v1191, 1, v1192, v1193);
  objc_msgSend_floatValue(v1194, v1195, v1196, v1197, v1198);
  v3029 = v1199;

  v1203 = objc_msgSend_objectAtIndexedSubscript_(self->inputLowCurvatureThreshold, v1200, 2, v1201, v1202);
  objc_msgSend_floatValue(v1203, v1204, v1205, v1206, v1207);
  v3036 = v1208;

  v1212 = objc_msgSend_objectAtIndexedSubscript_(self->inputLowCurvatureThreshold, v1209, 3, v1210, v1211);
  objc_msgSend_floatValue(v1212, v1213, v1214, v1215, v1216);
  v3046 = v1217;

  v1222 = objc_msgSend_imageByClampingToExtent(self->inputImage, v1218, v1219, v1220, v1221);
  objc_msgSend_X(self->inputNeutralFactors, v1223, v1224, v1225, v1226);
  v1228 = v1227;
  objc_msgSend_Y(self->inputNeutralFactors, v1229, v1230, v1231, v1232);
  v1234 = v1233;
  objc_msgSend_Z(self->inputNeutralFactors, v1235, v1236, v1237, v1238);
  v1239 = v1228;
  v1240 = v1234;
  v1242 = v1241;
  v3138 = v1239;
  v3091 = v1240;
  v3043 = v1242;
  objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1243, v1244, v1245, v1246, 1.0 / v1239, 1.0 / v1240, 1.0 / v1242, 1.0);
  v3049 = v1160;
  v3115 = v1158;
  v3125 = v3136 = v1222;
  objc_msgSend_extent(self->inputImage, v1247, v1248, v1249, v1250);
  v1252 = v1251;
  v1254 = v1253;
  v1256 = v1255;
  v1258 = v1257;
  CGAffineTransformMakeScale(&v3231, 0.5, 0.5);
  v3229 = v3231;
  v3287.origin.x = v1252;
  v3287.origin.y = v1254;
  v3287.size.width = v1256;
  v3287.size.height = v1258;
  v3288 = CGRectApplyAffineTransform(v3287, &v3229);
  x = v3288.origin.x;
  y = v3288.origin.y;
  width = v3288.size.width;
  height = v3288.size.height;
  v3229 = v3231;
  v3289 = CGRectApplyAffineTransform(v3288, &v3229);
  v3229 = v3231;
  v3290 = CGRectApplyAffineTransform(v3289, &v3229);
  v3229 = v3231;
  CGRectApplyAffineTransform(v3290, &v3229);
  CGAffineTransformMakeScale(&v3230, 2.0, 2.0);
  v3032 = v1254;
  v3033 = v1252;
  v3030 = v1258;
  v3031 = v1256;
  v3140 = objc_msgSend_outputCNR_E0_E1_(self, v1263, v1222, v1264, v1265, v1252, v1254, v1256, v1258, x, y, width, height);
  if (objc_msgSend_BOOLValue(self->inputShowHF, v1266, v1267, v1268, v1269))
  {
    v1274 = v3140;
    v1275 = 0;
    v3099 = 0;
    v3112 = 0;
    v3121 = 0;
    v3143 = 0;
    v3144 = 0;
    v3139 = 0;
    v3116 = 0;
    v1276 = 0;
    v3228 = 0;
    v3159 = 0;
    v3157 = 0;
    v3154 = 0;
    v3152 = 0;
    v3150 = 0;
    v3161 = 0;
    v3148 = 0;
    v3163 = 0;
    v3145 = 0;
    v3173 = 0;
    v3171 = 0;
    v3169 = 0;
    v3167 = 0;
    v3165 = 0;
    v3175 = 0;
    v3146 = 0;
    v3178 = 0;
    v3141 = 0;
    v3189 = 0;
    v3097 = 0;
    v3184 = 0;
    v3182 = 0;
    v3217 = 0;
    v3142 = 0;
    v3082 = 0;
    v3134 = 0;
    v3135 = 0;
    v1277 = 0;
    v3089 = 0;
    v3107 = 0;
    v3110 = 0;
    v3102 = 0;
    v3124 = 0;
    v3132 = 0;
    v3133 = 0;
    v3127 = 0;
    v3131 = 0;
    v3137 = 0;
  }

  else
  {
    v1278 = MEMORY[0x277CBF788];
    objc_msgSend_X(self->inputLumFactors, v1270, v1271, v1272, v1273);
    v1280 = v1279;
    objc_msgSend_Y(self->inputLumFactors, v1281, v1282, v1283, v1284);
    v1286 = v1285;
    objc_msgSend_Z(self->inputLumFactors, v1287, v1288, v1289, v1290);
    v1296 = objc_msgSend_vectorWithX_Y_Z_W_(v1278, v1292, v1293, v1294, v1295, v1280 * v3138, v1286 * v3091, v1291 * v3043, 1.0);
    v1300 = objc_msgSend_kernelWithName_(V8LNRKernels, v1297, @"extractY", v1298, v1299);
    objc_msgSend_extent(v3136, v1301, v1302, v1303, v1304);
    v1306 = v1305;
    v1308 = v1307;
    v1310 = v1309;
    v1312 = v1311;
    v3285[0] = v3136;
    v3285[1] = v1296;
    v1315 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1313, v3285, 2, v1314);
    v3139 = v1296;
    v3131 = objc_msgSend_applyWithExtent_arguments_(v1300, v1316, v1315, v1317, v1318, v1306, v1308, v1310, v1312);

    v3035 = v3113 * v3126;
    objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1319, v1320, v1321, v1322, (v3106 * v3126), (v3113 * v3126), (v3120 * v3126), 0.0);
    v3114 = v3092 = v1300;
    *&v1327 = v3035;
    if (v3035 <= 0.00001)
    {
      v1353 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1323, v1324, v1325, v1326, 0.859375, -0.09375, -0.0625, -0.0234375);
      v1358 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1354, v1355, v1356, v1357, -0.015625, -0.00390625, 0.0, 0.0);
      v1328 = objc_msgSend_kernelWithName_(V8LNRKernels, v1359, @"gaborToSYAndG", v1360, v1361);
      objc_msgSend_extent(v3131, v1362, v1363, v1364, v1365);
      v1367 = v1366;
      v1369 = v1368;
      v1371 = v1370;
      v1373 = v1372;
      v3283[0] = v3131;
      v3283[1] = &unk_28495DB20;
      v3283[2] = v1353;
      v3283[3] = v1358;
      v1345 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1374, v3283, 4, v1375);
      v1351 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1328, v1376, &unk_28492E190, v1345, v1377, v1367, v1369, v1371, v1373);
      v3132 = v1351;
      v3133 = 0;
      v3143 = v1358;
      v3144 = v1353;
    }

    else
    {
      v1328 = objc_msgSend_kernelWithName_(V8LNRKernels, v1323, @"gaborToYAndVF", v1325, v1326, v1327);
      objc_msgSend_extent(v3131, v1329, v1330, v1331, v1332);
      v1334 = v1333;
      v1336 = v1335;
      v1338 = v1337;
      v1340 = v1339;
      v3284[0] = v3131;
      LODWORD(v1333) = 0.5;
      v1345 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1341, v1342, v1343, v1344, v1333);
      v3284[1] = v1345;
      v1348 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1346, v3284, 2, v1347);
      v1351 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1328, v1349, &unk_28492E170, v1348, v1350, v1334, v1336, v1338, v1340);

      v3143 = 0;
      v3144 = 0;
      v3132 = 0;
      v3133 = v1351;
    }

    v3134 = v1351;
    v1381 = objc_msgSend_kernelWithName_(V8LNRKernels, v1378, @"reduce", v1379, v1380);

    objc_msgSend_extent(v3134, v1382, v1383, v1384, v1385);
    v3229 = v3231;
    v3292 = CGRectApplyAffineTransform(v3291, &v3229);
    v1386 = v3292.origin.x;
    v1387 = v3292.origin.y;
    v1388 = v3292.size.width;
    v1389 = v3292.size.height;
    v3282 = v3134;
    v1392 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1390, &v3282, 1, v1391);
    v3135 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1381, v1393, &unk_28492E1B0, v1392, v1394, v1386, v1387, v1388, v1389);

    v1398 = objc_msgSend_kernelWithName_(V8LNRKernels, v1395, @"expandAndMakeD", v1396, v1397);

    objc_msgSend_extent(v3134, v1399, v1400, v1401, v1402);
    v1404 = v1403;
    v1406 = v1405;
    v1408 = v1407;
    v1410 = v1409;
    objc_msgSend_extent(v3135, v1411, v1412, v1413, v1414);
    v3229 = v3230;
    v3294 = CGRectApplyAffineTransform(v3293, &v3229);
    v3452 = CGRectInset(v3294, -1.0, -1.0);
    v3295.origin.x = v1404;
    v3295.origin.y = v1406;
    v3295.size.width = v1408;
    v3295.size.height = v1410;
    v3296 = CGRectUnion(v3295, v3452);
    v1415 = v3296.origin.x;
    v1416 = v3296.origin.y;
    v1417 = v3296.size.width;
    v1418 = v3296.size.height;
    v3281[0] = v3134;
    v3281[1] = v3135;
    v1421 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1419, v3281, 2, v1420);
    v3137 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1398, v1422, &unk_28492E1D0, v1421, v1423, v1415, v1416, v1417, v1418);

    v1427 = objc_msgSend_kernelWithName_(V8LNRKernels, v1424, @"reduce", v1425, v1426);

    objc_msgSend_extent(v3135, v1428, v1429, v1430, v1431);
    v3229 = v3231;
    v3298 = CGRectApplyAffineTransform(v3297, &v3229);
    v1432 = v3298.origin.x;
    v1433 = v3298.origin.y;
    v1434 = v3298.size.width;
    v1435 = v3298.size.height;
    v3280 = v3135;
    v1438 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1436, &v3280, 1, v1437);
    v3141 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1427, v1439, &unk_28492E1F0, v1438, v1440, v1432, v1433, v1434, v1435);

    v1444 = objc_msgSend_kernelWithName_(V8LNRKernels, v1441, @"expandAndMakeD", v1442, v1443);

    objc_msgSend_extent(v3135, v1445, v1446, v1447, v1448);
    v1450 = v1449;
    v1452 = v1451;
    v1454 = v1453;
    v1456 = v1455;
    objc_msgSend_extent(v3141, v1457, v1458, v1459, v1460);
    v3229 = v3230;
    v3300 = CGRectApplyAffineTransform(v3299, &v3229);
    v3453 = CGRectInset(v3300, -1.0, -1.0);
    v3301.origin.x = v1450;
    v3301.origin.y = v1452;
    v3301.size.width = v1454;
    v3301.size.height = v1456;
    v3302 = CGRectUnion(v3301, v3453);
    v1461 = v3302.origin.x;
    v1462 = v3302.origin.y;
    v1463 = v3302.size.width;
    v1464 = v3302.size.height;
    v3279[0] = v3135;
    v3279[1] = v3141;
    v1467 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1465, v3279, 2, v1466);
    v3142 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1444, v1468, &unk_28492E210, v1467, v1469, v1461, v1462, v1463, v1464);

    v1473 = objc_msgSend_kernelWithName_(V8LNRKernels, v1470, @"reduce", v1471, v1472);

    objc_msgSend_extent(v3141, v1474, v1475, v1476, v1477);
    v3229 = v3231;
    v3304 = CGRectApplyAffineTransform(v3303, &v3229);
    v1478 = v3304.origin.x;
    v1479 = v3304.origin.y;
    v1480 = v3304.size.width;
    v1481 = v3304.size.height;
    v3278 = v3141;
    v1484 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1482, &v3278, 1, v1483);
    v3145 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1473, v1485, &unk_28492E230, v1484, v1486, v1478, v1479, v1480, v1481);

    v1490 = objc_msgSend_kernelWithName_(V8LNRKernels, v1487, @"expandAndMakeD", v1488, v1489);

    objc_msgSend_extent(v3141, v1491, v1492, v1493, v1494);
    v1496 = v1495;
    v1498 = v1497;
    v1500 = v1499;
    v1502 = v1501;
    objc_msgSend_extent(v3145, v1503, v1504, v1505, v1506);
    v3229 = v3230;
    v3306 = CGRectApplyAffineTransform(v3305, &v3229);
    v3454 = CGRectInset(v3306, -1.0, -1.0);
    v3307.origin.x = v1496;
    v3307.origin.y = v1498;
    v3307.size.width = v1500;
    v3307.size.height = v1502;
    v3308 = CGRectUnion(v3307, v3454);
    v1507 = v3308.origin.x;
    v1508 = v3308.origin.y;
    v1509 = v3308.size.width;
    v1510 = v3308.size.height;
    v3277[0] = v3141;
    v3277[1] = v3145;
    v1513 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1511, v3277, 2, v1512);
    v3146 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1490, v1514, &unk_28492E250, v1513, v1515, v1507, v1508, v1509, v1510);

    v1519 = objc_msgSend_kernelWithName_(V8LNRKernels, v1516, @"reduce", v1517, v1518);

    objc_msgSend_extent(v3145, v1520, v1521, v1522, v1523);
    v3229 = v3231;
    v3310 = CGRectApplyAffineTransform(v3309, &v3229);
    v1524 = v3310.origin.x;
    v1525 = v3310.origin.y;
    v1526 = v3310.size.width;
    v1527 = v3310.size.height;
    v3276 = v3145;
    v1530 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1528, &v3276, 1, v1529);
    v3186 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1519, v1531, &unk_28492E270, v1530, v1532, v1524, v1525, v1526, v1527);

    v1536 = objc_msgSend_kernelWithName_(V8LNRKernels, v1533, @"expandAndMakeD", v1534, v1535);

    objc_msgSend_extent(v3145, v1537, v1538, v1539, v1540);
    v1542 = v1541;
    v1544 = v1543;
    v1546 = v1545;
    v1548 = v1547;
    objc_msgSend_extent(v3186, v1549, v1550, v1551, v1552);
    v3229 = v3230;
    v3312 = CGRectApplyAffineTransform(v3311, &v3229);
    v3455 = CGRectInset(v3312, -1.0, -1.0);
    v3313.origin.x = v1542;
    v3313.origin.y = v1544;
    v3313.size.width = v1546;
    v3313.size.height = v1548;
    v3314 = CGRectUnion(v3313, v3455);
    v1553 = v3314.origin.x;
    v1554 = v3314.origin.y;
    v1555 = v3314.size.width;
    v1556 = v3314.size.height;
    v3275[0] = v3145;
    v3275[1] = v3186;
    v1559 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1557, v3275, 2, v1558);
    v3148 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1536, v1560, &unk_28492E290, v1559, v1561, v1553, v1554, v1555, v1556);

    v1562 = v3042 * v3126;
    v3044 = 0.81 / v3123;
    v3228 = v3186;
    if ((v3042 * v3126) <= 0.00001)
    {
      v1747 = objc_msgSend_kernelWithName_(V8LNRKernels, v1563, @"expandPlusDWithOverdrive", v1564, v1565);

      objc_msgSend_extent(v3148, v1748, v1749, v1750, v1751);
      v1753 = v1752;
      v1755 = v1754;
      v1757 = v1756;
      v1759 = v1758;
      objc_msgSend_extent(v3228, v1760, v1761, v1762, v1763);
      v3229 = v3230;
      v3332 = CGRectApplyAffineTransform(v3331, &v3229);
      v3460 = CGRectInset(v3332, -1.0, -1.0);
      v3333.origin.x = v1753;
      v3333.origin.y = v1755;
      v3333.size.width = v1757;
      v3333.size.height = v1759;
      v3334 = CGRectUnion(v3333, v3460);
      v1764 = v3334.origin.x;
      v1765 = v3334.origin.y;
      v1766 = v3334.size.width;
      v1767 = v3334.size.height;
      v3268[0] = v3228;
      v3268[1] = v3148;
      *&v3334.origin.x = v3040;
      v1731 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1768, v1769, v1770, v1771, v3334.origin.x);
      v3268[2] = v1731;
      v1736 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1772, v3268, 3, v1773);
      v3163 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1747, v1774, &unk_28492E350, v1736, v1775, v1764, v1765, v1766, v1767);
      v1678 = 0;
      v3159 = 0;
      v3157 = 0;
      v3154 = 0;
      v3152 = 0;
      v3150 = 0;
      v3161 = 0;
      v3180 = v3092;
      v1686 = v1747;
    }

    else
    {
      v1566 = objc_msgSend_kernelWithName_(V8LNRKernels, v1563, @"gaborToVF", v1564, v1565);

      objc_msgSend_extent(v3145, v1567, v1568, v1569, v1570);
      v3316 = CGRectInset(v3315, -3.0, -3.0);
      v1571 = v3316.origin.x;
      v1572 = v3316.origin.y;
      v1573 = v3316.size.width;
      v1574 = v3316.size.height;
      v3274 = v3145;
      v1577 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1575, &v3274, 1, v1576);
      v3150 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1566, v1578, &unk_28492E2B0, v1577, v1579, v1571, v1572, v1573, v1574);

      v1584 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1580, v1581, v1582, v1583, (v3115 * v3126), v1562, (v3049 * v3126), 0.0);
      v1588 = objc_msgSend_kernelWithName_(V8LNRKernels, v1585, @"smoothVF", v1586, v1587);

      objc_msgSend_extent(v3150, v1589, v1590, v1591, v1592);
      v3318 = CGRectInset(v3317, -3.0, -3.0);
      v1593 = v3318.origin.x;
      v1594 = v3318.origin.y;
      v1595 = v3318.size.width;
      v1596 = v3318.size.height;
      v3273 = v3150;
      v1599 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1597, &v3273, 1, v1598);
      v3122 = v1584;
      v3152 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1588, v1600, &unk_28492E2D0, v1599, v1601, v1593, v1594, v1595, v1596);

      v3117 = objc_msgSend_kernelWithName_(V8LNRKernels, v1602, @"VFToGDIR", v1603, v1604);

      objc_msgSend_extent(v3152, v1605, v1606, v1607, v1608);
      v1610 = v1609;
      v1612 = v1611;
      v1614 = v1613;
      v1616 = v1615;
      v3272 = v3152;
      v1619 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1617, &v3272, 1, v1618);
      v3154 = objc_msgSend_applyWithExtent_arguments_(v3117, v1620, v1619, v1621, v1622, v1610, v1612, v1614, v1616);

      v1626 = objc_msgSend_kernelWithName_(V8LNRKernels, v1623, @"DIRToC", v1624, v1625);

      objc_msgSend_extent(v3154, v1627, v1628, v1629, v1630);
      v3320 = CGRectInset(v3319, -8.0, -8.0);
      v1631 = v3320.origin.x;
      v1632 = v3320.origin.y;
      v1633 = v3320.size.width;
      v1634 = v3320.size.height;
      v3271[0] = v3154;
      v3271[1] = v3145;
      v1639 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1635, v1636, v1637, v1638, (v3058 + (v3101 * v3053)), (v3055 + (v3101 * v3052)), (v3054 + (v3101 * v3051)), 0.0);
      v1640 = v1626;
      v3271[2] = v1639;
      v1643 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1641, v3271, 3, v1642);
      v3157 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1640, v1644, &unk_28492E2F0, v1643, v1645, v1631, v1632, v1633, v1634);

      v1649 = objc_msgSend_kernelWithName_(V8LNRKernels, v1646, @"annealGAndC", v1647, v1648);

      objc_msgSend_extent(v3157, v1650, v1651, v1652, v1653);
      v3322 = CGRectInset(v3321, -1.0, -1.0);
      v1654 = v3322.origin.x;
      v1655 = v3322.origin.y;
      v1656 = v3322.size.width;
      v1657 = v3322.size.height;
      objc_msgSend_extent(v3145, v1658, v1659, v1660, v1661);
      v3456.origin.x = v1662;
      v3456.origin.y = v1663;
      v3456.size.width = v1664;
      v3456.size.height = v1665;
      v3323.origin.x = v1654;
      v3323.origin.y = v1655;
      v3323.size.width = v1656;
      v3323.size.height = v1657;
      v3324 = CGRectUnion(v3323, v3456);
      v1666 = v3324.origin.x;
      v1667 = v3324.origin.y;
      v1668 = v3324.size.width;
      v1669 = v3324.size.height;
      v3270[0] = v3157;
      v3270[1] = v3145;
      v3270[2] = v3122;
      *&v3324.origin.x = v3048;
      v1674 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1670, v1671, v1672, v1673, v3324.origin.x);
      v3270[3] = v1674;
      v1677 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1675, v3270, 4, v1676);
      v1678 = v3122;
      v3159 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1649, v1679, &unk_28492E310, v1677, v1680, v1666, v1667, v1668, v1669);

      v3161 = v3148;
      v1684 = (v1562 + -0.00003) / 0.00004;
      v1685 = 0.0;
      if (v1684 >= 0.0)
      {
        v1685 = (v1562 + -0.00003) / 0.00004;
        if (v1684 > 1.0)
        {
          v1685 = 1.0;
        }
      }

      v3223 = v1685;
      v1686 = objc_msgSend_kernelWithName_(V8LNRKernels, v1681, @"expandPlusDThruG", v1682, v1683);

      objc_msgSend_extent(v3161, v1687, v1688, v1689, v1690);
      v3218 = v1691;
      v3212 = v1692;
      v3207 = v1693;
      r1a = v1694;
      objc_msgSend_extent(v3161, v1695, v1696, v1697, v1698);
      v1700 = v1699;
      v1702 = v1701;
      v1704 = v1703;
      v1706 = v1705;
      objc_msgSend_extent(v3159, v1707, v1708, v1709, v1710);
      v1712 = v1711;
      v1714 = v1713;
      v1716 = v1715;
      v1718 = v1717;
      objc_msgSend_extent(v3228, v1719, v1720, v1721, v1722);
      v3229 = v3230;
      v3326 = CGRectApplyAffineTransform(v3325, &v3229);
      v3457 = CGRectInset(v3326, -1.0, -1.0);
      v3327.origin.x = v1712;
      v3327.origin.y = v1714;
      v3327.size.width = v1716;
      v3327.size.height = v1718;
      v3458 = CGRectUnion(v3327, v3457);
      v3328.origin.x = v1700;
      v3328.origin.y = v1702;
      v3328.size.width = v1704;
      v3328.size.height = v1706;
      v3459 = CGRectUnion(v3328, v3458);
      v3329.origin.x = v3218;
      v3329.origin.y = v3212;
      v3329.size.width = v3207;
      v3329.size.height = r1a;
      v3330 = CGRectUnion(v3329, v3459);
      v1723 = v3330.origin.x;
      v1724 = v3330.origin.y;
      v1725 = v3330.size.width;
      v1726 = v3330.size.height;
      *&v3330.size.height = fminf(v3088 / 0.42188, 1.0);
      v3269[0] = v3228;
      v3269[1] = v3161;
      v3269[2] = v3161;
      v3269[3] = v3159;
      v1731 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1727, v1728, v1729, v1730, 0.0, v3040, *&v3330.size.height, ((((v3088 * 0.75) * 0.75) * 0.75) + ((*&v3330.size.height - (((v3088 * 0.75) * 0.75) * 0.75)) * v3223)));
      v3269[4] = v1731;
      v1736 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1732, v1733, v1734, v1735, (v3044 * 0.0003), (v3044 * 0.0009), (v3044 * 0.0006), 0.0);
      v3269[5] = v1736;
      v1741 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1737, v1738, v1739, v1740, v3024, v3098, 0.0, 0.0);
      v3269[6] = v1741;
      v1744 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1742, v3269, 7, v1743);
      v3163 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1686, v1745, &unk_28492E330, v1744, v1746, v1723, v1724, v1725, v1726);

      v3180 = v3117;
    }

    v3056 = v3111 * 0.02054;
    v3059 = v3123 * v3111;
    *&v1779 = v3041 * v3126;
    LODWORD(v1780) = 925353388;
    v3103 = v3041 * v3126;
    v3121 = v1678;
    if ((v3041 * v3126) <= 0.00001)
    {
      v2023 = objc_msgSend_kernelWithName_(V8LNRKernels, v1776, @"expandPlusDWithOverdrive", v1777, v1778, v1780, v1779);

      objc_msgSend_extent(v3146, v2024, v2025, v2026, v2027);
      v2029 = v2028;
      v2031 = v2030;
      v2033 = v2032;
      v2035 = v2034;
      objc_msgSend_extent(v3163, v2036, v2037, v2038, v2039);
      v3229 = v3230;
      v3358 = CGRectApplyAffineTransform(v3357, &v3229);
      v3465 = CGRectInset(v3358, -1.0, -1.0);
      v3359.origin.x = v2029;
      v3359.origin.y = v2031;
      v3359.size.width = v2033;
      v3359.size.height = v2035;
      v3360 = CGRectUnion(v3359, v3465);
      v2040 = v3360.origin.x;
      v2041 = v3360.origin.y;
      v2042 = v3360.size.width;
      v2043 = v3360.size.height;
      v3258[0] = v3163;
      v3258[1] = v3146;
      *&v3360.origin.x = v3050;
      v2048 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v2044, v2045, v2046, v2047, v3360.origin.x);
      v3258[2] = v2048;
      v2051 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2049, v3258, 3, v2050);
      v2052 = v2023;
      v3178 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2023, v2053, &unk_28492E470, v2051, v2054, v2040, v2041, v2042, v2043);
      v3112 = 0;
      v3173 = 0;
      v3171 = 0;
      v3169 = 0;
      v3167 = 0;
      v3165 = 0;
      v3175 = 0;
    }

    else
    {
      v1781 = objc_msgSend_kernelWithName_(V8LNRKernels, v1776, @"gaborToVF", v1777, v1778, v1780, v1779);

      objc_msgSend_extent(v3141, v1782, v1783, v1784, v1785);
      v3336 = CGRectInset(v3335, -3.0, -3.0);
      v1786 = v3336.origin.x;
      v1787 = v3336.origin.y;
      v1788 = v3336.size.width;
      v1789 = v3336.size.height;
      v3267 = v3141;
      v1792 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1790, &v3267, 1, v1791);
      v3165 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1781, v1793, &unk_28492E370, v1792, v1794, v1786, v1787, v1788, v1789);

      objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1795, v1796, v1797, v1798, (v3026 * v3126), v3103, (v3025 * v3126), 0.0);
      v1800 = v1799 = v1781;
      v1804 = objc_msgSend_kernelWithName_(V8LNRKernels, v1801, @"smoothVF", v1802, v1803);
      v3112 = v1800;

      objc_msgSend_extent(v3165, v1805, v1806, v1807, v1808);
      v3338 = CGRectInset(v3337, -3.0, -3.0);
      v1809 = v3338.origin.x;
      v1810 = v3338.origin.y;
      v1811 = v3338.size.width;
      v1812 = v3338.size.height;
      v3266 = v3165;
      v1815 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1813, &v3266, 1, v1814);
      v3167 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1804, v1816, &unk_28492E390, v1815, v1817, v1809, v1810, v1811, v1812);

      v3118 = objc_msgSend_kernelWithName_(V8LNRKernels, v1818, @"VFToGDIR", v1819, v1820);

      objc_msgSend_extent(v3167, v1821, v1822, v1823, v1824);
      v1826 = v1825;
      v1828 = v1827;
      v1830 = v1829;
      v1832 = v1831;
      v3265 = v3167;
      v1835 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1833, &v3265, 1, v1834);
      v3169 = objc_msgSend_applyWithExtent_arguments_(v3118, v1836, v1835, v1837, v1838, v1826, v1828, v1830, v1832);

      v1842 = objc_msgSend_kernelWithName_(V8LNRKernels, v1839, @"DIRToC", v1840, v1841);

      objc_msgSend_extent(v3169, v1843, v1844, v1845, v1846);
      v3340 = CGRectInset(v3339, -8.0, -8.0);
      v1847 = v3340.origin.x;
      v1848 = v3340.origin.y;
      v1849 = v3340.size.width;
      v1850 = v3340.size.height;
      v3264[0] = v3169;
      v3264[1] = v3141;
      v1855 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1851, v1852, v1853, v1854, (v3065 + (v3027 * v3061)), (v3063 + (v3027 * v3060)), (v3062 + (v3027 * v3057)), 0.0);
      v1856 = v1842;
      v3264[2] = v1855;
      v1859 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1857, v3264, 3, v1858);
      v3171 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1856, v1860, &unk_28492E3B0, v1859, v1861, v1847, v1848, v1849, v1850);

      v3093 = objc_msgSend_kernelWithName_(V8LNRKernels, v1862, @"annealGAndC", v1863, v1864);

      objc_msgSend_extent(v3171, v1865, v1866, v1867, v1868);
      v3342 = CGRectInset(v3341, -1.0, -1.0);
      v1869 = v3342.origin.x;
      v1870 = v3342.origin.y;
      v1871 = v3342.size.width;
      v1872 = v3342.size.height;
      objc_msgSend_extent(v3141, v1873, v1874, v1875, v1876);
      v3461.origin.x = v1877;
      v3461.origin.y = v1878;
      v3461.size.width = v1879;
      v3461.size.height = v1880;
      v3343.origin.x = v1869;
      v3343.origin.y = v1870;
      v3343.size.width = v1871;
      v3343.size.height = v1872;
      v3344 = CGRectUnion(v3343, v3461);
      v1881 = v3344.origin.x;
      v1882 = v3344.origin.y;
      v1883 = v3344.size.width;
      v1884 = v3344.size.height;
      v3263[0] = v3171;
      v3263[1] = v3141;
      v3263[2] = v3112;
      *&v3344.origin.x = v3048;
      v1889 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1885, v1886, v1887, v1888, v3344.origin.x);
      v3263[3] = v1889;
      v1892 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1890, v3263, 4, v1891);
      v3173 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v3093, v1893, &unk_28492E3D0, v1892, v1894, v1881, v1882, v1883, v1884);

      if (v3059 <= 2.4)
      {
        v2019 = v3146;
        v2016 = v3093;
      }

      else
      {
        v1898 = objc_msgSend_kernelWithName_(V8LNRKernels, v1895, @"smoothDSharpenAntiBloom", v1896, v1897);

        v1903 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1899, v1900, v1901, v1902, 1.0, v3029, v3078, v3047);

        v3100 = (v3056 * 0.75);
        v3066 = (2.0 / v3056);
        v1908 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1904, v1905, v1906, v1907, 1.0);

        v1909 = v1898;
        objc_msgSend_extent(v3146, v1910, v1911, v1912, v1913);
        v3346 = CGRectInset(v3345, -2.0, -2.0);
        v1914 = v3346.origin.x;
        v1915 = v3346.origin.y;
        v1916 = v3346.size.width;
        v1917 = v3346.size.height;
        objc_msgSend_extent(v3173, v1918, v1919, v1920, v1921);
        v3462.origin.x = v1922;
        v3462.origin.y = v1923;
        v3462.size.width = v1924;
        v3462.size.height = v1925;
        v3347.origin.x = v1914;
        v3347.origin.y = v1915;
        v3347.size.width = v1916;
        v3347.size.height = v1917;
        v3348 = CGRectUnion(v3347, v3462);
        v1926 = v3348.origin.x;
        v1927 = v3348.origin.y;
        v1928 = v3348.size.width;
        v1929 = v3348.size.height;
        v3262[0] = v3146;
        v3262[1] = v3173;
        v3262[2] = v1903;
        v3262[3] = v1908;
        v1932 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1930, v3262, 4, v1931);
        v3176 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1898, v1933, &unk_28492E3F0, v1932, v1934, v1926, v1927, v1928, v1929);

        v1939 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1935, v1936, v1937, v1938, 2.0, (v3029 + ((1.0 - v3029) * 0.25)), ((v3078 * 0.66667) + 0.33333), (v3047 * 0.6));

        v1940 = v1939;
        v1941 = v1908;
        v1946 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1942, v1943, v1944, v1945, 2.0, v3100, v3066, 0.100000001);

        v1947 = v1946;
        v1948 = v1940;
        v1949 = v1947;
        v1953 = objc_msgSend_kernelWithName_(V8LNRKernels, v1950, @"smoothDSharpenAntiBloom", v1951, v1952);

        objc_msgSend_extent(v3176, v1954, v1955, v1956, v1957);
        v3350 = CGRectInset(v3349, -4.0, -4.0);
        v1958 = v3350.origin.x;
        v1959 = v3350.origin.y;
        v1960 = v3350.size.width;
        v1961 = v3350.size.height;
        objc_msgSend_extent(v3173, v1962, v1963, v1964, v1965);
        v3463.origin.x = v1966;
        v3463.origin.y = v1967;
        v3463.size.width = v1968;
        v3463.size.height = v1969;
        v3351.origin.x = v1958;
        v3351.origin.y = v1959;
        v3351.size.width = v1960;
        v3351.size.height = v1961;
        v3352 = CGRectUnion(v3351, v3463);
        v1970 = v3352.origin.x;
        v1971 = v3352.origin.y;
        v1972 = v3352.size.width;
        v1973 = v3352.size.height;
        v3261[0] = v3176;
        v3261[1] = v3173;
        v3261[2] = v1948;
        v3261[3] = v1949;
        v1976 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1974, v3261, 4, v1975);
        v1979 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1953, v1977, &unk_28492E410, v1976, v1978, v1970, v1971, v1972, v1973);

        v3094 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1980, v1981, v1982, v1983, 4.0, (v3029 + ((1.0 - v3029) * 0.5)), ((v3078 * 0.33333) + 0.66667), ((v3047 * 0.6) * 0.6));

        v3067 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v1984, v1985, v1986, v1987, 3.0, v3100, v3066, 0.100000001);

        v1988 = v1979;
        v1992 = objc_msgSend_kernelWithName_(V8LNRKernels, v1989, @"smoothDSharpenAntiBloom", v1990, v1991);

        objc_msgSend_extent(v1988, v1993, v1994, v1995, v1996);
        v3354 = CGRectInset(v3353, -8.0, -8.0);
        v1997 = v3354.origin.x;
        v1998 = v3354.origin.y;
        v1999 = v3354.size.width;
        v2000 = v3354.size.height;
        objc_msgSend_extent(v3173, v2001, v2002, v2003, v2004);
        v3464.origin.x = v2005;
        v3464.origin.y = v2006;
        v3464.size.width = v2007;
        v3464.size.height = v2008;
        v3355.origin.x = v1997;
        v3355.origin.y = v1998;
        v3355.size.width = v1999;
        v3355.size.height = v2000;
        v3356 = CGRectUnion(v3355, v3464);
        v2009 = v3356.origin.x;
        v2010 = v3356.origin.y;
        v2011 = v3356.size.width;
        v2012 = v3356.size.height;
        v3260[0] = v1988;
        v3260[1] = v3173;
        v3260[2] = v3094;
        v3260[3] = v3067;
        v2015 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2013, v3260, 4, v2014);
        v2016 = v1992;
        v2019 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1992, v2017, &unk_28492E430, v2015, v2018, v2009, v2010, v2011, v2012);

        v3143 = v3067;
        v3144 = v3094;
      }

      v2055 = (v3103 + -0.00003) / 0.00004;
      v2056 = 0.0;
      if (v2055 >= 0.0)
      {
        v2056 = (v3103 + -0.00003) / 0.00004;
        if (v2055 > 1.0)
        {
          v2056 = 1.0;
        }
      }

      v3224 = v2056;
      v3175 = v2019;
      v2052 = objc_msgSend_kernelWithName_(V8LNRKernels, v2020, @"expandPlusDThruG", v2021, v2022);

      objc_msgSend_extent(v3146, v2057, v2058, v2059, v2060);
      v3219 = v2061;
      v3213 = v2062;
      v3208 = v2063;
      r1b = v2064;
      objc_msgSend_extent(v2019, v2065, v2066, v2067, v2068);
      v2070 = v2069;
      v2072 = v2071;
      v2074 = v2073;
      v2076 = v2075;
      objc_msgSend_extent(v3173, v2077, v2078, v2079, v2080);
      v2082 = v2081;
      v2084 = v2083;
      v2086 = v2085;
      v2088 = v2087;
      objc_msgSend_extent(v3163, v2089, v2090, v2091, v2092);
      v3229 = v3230;
      v3362 = CGRectApplyAffineTransform(v3361, &v3229);
      v3466 = CGRectInset(v3362, -1.0, -1.0);
      v3363.origin.x = v2082;
      v3363.origin.y = v2084;
      v3363.size.width = v2086;
      v3363.size.height = v2088;
      v3467 = CGRectUnion(v3363, v3466);
      v3364.origin.x = v2070;
      v3364.origin.y = v2072;
      v3364.size.width = v2074;
      v3364.size.height = v2076;
      v3468 = CGRectUnion(v3364, v3467);
      v3365.origin.x = v3219;
      v3365.origin.y = v3213;
      v3365.size.width = v3208;
      v3365.size.height = r1b;
      v3366 = CGRectUnion(v3365, v3468);
      v2093 = v3366.origin.x;
      v2094 = v3366.origin.y;
      v2095 = v3366.size.width;
      v2096 = v3366.size.height;
      *&v3366.origin.x = fminf(v3088 / 0.5625, 1.0);
      v3259[0] = v3163;
      v3259[1] = v3146;
      v3259[2] = v2019;
      v3259[3] = v3173;
      v2048 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2097, v2098, v2099, v2100, 0.0, v3050, *&v3366.origin.x, (((v3088 * 0.75) * 0.75) + ((*&v3366.origin.x - ((v3088 * 0.75) * 0.75)) * v3224)));
      v3259[4] = v2048;
      v2051 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2101, v2102, v2103, v2104, (v3044 * 0.0005), (v3044 * 0.0015), (v3044 * 0.001), 0.0);
      v3259[5] = v2051;
      v2109 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2105, v2106, v2107, v2108, v3021, v3020, 0.0, 0.0);
      v3259[6] = v2109;
      v2112 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2110, v3259, 7, v2111);
      v3178 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2052, v2113, &unk_28492E450, v2112, v2114, v2093, v2094, v2095, v2096);

      v3180 = v3118;
    }

    *&v2118 = v3039 * v3126;
    LODWORD(v2119) = 925353388;
    v3104 = v3039 * v3126;
    if ((v3039 * v3126) <= 0.00001)
    {
      v2409 = objc_msgSend_kernelWithName_(V8LNRKernels, v2115, @"expandPlusDWithOverdrive", v2116, v2117, v2119, v2118);

      objc_msgSend_extent(v3142, v2410, v2411, v2412, v2413);
      v2415 = v2414;
      v2417 = v2416;
      v2419 = v2418;
      v2421 = v2420;
      objc_msgSend_extent(v3178, v2422, v2423, v2424, v2425);
      v3229 = v3230;
      v3394 = CGRectApplyAffineTransform(v3393, &v3229);
      v3474 = CGRectInset(v3394, -1.0, -1.0);
      v3395.origin.x = v2415;
      v3395.origin.y = v2417;
      v3395.size.width = v2419;
      v3395.size.height = v2421;
      v3396 = CGRectUnion(v3395, v3474);
      v2426 = v3396.origin.x;
      v2427 = v3396.origin.y;
      v2428 = v3396.size.width;
      v2429 = v3396.size.height;
      v3247[0] = v3178;
      v3247[1] = v3142;
      *&v3396.origin.x = v3038;
      v2434 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v2430, v2431, v2432, v2433, v3396.origin.x);
      v3247[2] = v2434;
      v2437 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2435, v3247, 3, v2436);
      v2438 = v2409;
      v1275 = v3114;
      v3082 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2409, v2439, &unk_28492E5B0, v2437, v2440, v2426, v2427, v2428, v2429);
      v3097 = 0;
      v3099 = 0;
      v3189 = 0;
      v3184 = 0;
      v3182 = 0;
      v3217 = 0;
      v3116 = v3180;
    }

    else
    {
      v2120 = objc_msgSend_kernelWithName_(V8LNRKernels, v2115, @"gaborToVF", v2116, v2117, v2119, v2118);

      objc_msgSend_extent(v3135, v2121, v2122, v2123, v2124);
      v3368 = CGRectInset(v3367, -3.0, -3.0);
      v2125 = v3368.origin.x;
      v2126 = v3368.origin.y;
      v2127 = v3368.size.width;
      v2128 = v3368.size.height;
      v3257 = v3135;
      v2131 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2129, &v3257, 1, v2130);
      v3182 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2120, v2132, &unk_28492E490, v2131, v2133, v2125, v2126, v2127, v2128);

      v2138 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2134, v2135, v2136, v2137, (v3023 * v3126), v3104, (v3022 * v3126), 0.0);
      v2142 = objc_msgSend_kernelWithName_(V8LNRKernels, v2139, @"smoothVF", v2140, v2141);
      v3099 = v2138;

      objc_msgSend_extent(v3182, v2143, v2144, v2145, v2146);
      v3370 = CGRectInset(v3369, -3.0, -3.0);
      v2147 = v3370.origin.x;
      v2148 = v3370.origin.y;
      v2149 = v3370.size.width;
      v2150 = v3370.size.height;
      v3256 = v3182;
      v2153 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2151, &v3256, 1, v2152);
      v3184 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2142, v2154, &unk_28492E4B0, v2153, v2155, v2147, v2148, v2149, v2150);

      v3116 = objc_msgSend_kernelWithName_(V8LNRKernels, v2156, @"VFToGDIR", v2157, v2158);

      objc_msgSend_extent(v3184, v2159, v2160, v2161, v2162);
      v2164 = v2163;
      v2166 = v2165;
      v2168 = v2167;
      v2170 = v2169;
      v3255 = v3184;
      v2173 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2171, &v3255, 1, v2172);
      v3191 = objc_msgSend_applyWithExtent_arguments_(v3116, v2174, v2173, v2175, v2176, v2164, v2166, v2168, v2170);

      v2180 = objc_msgSend_kernelWithName_(V8LNRKernels, v2177, @"DIRToC", v2178, v2179);

      objc_msgSend_extent(v3191, v2181, v2182, v2183, v2184);
      v3372 = CGRectInset(v3371, -8.0, -8.0);
      v2185 = v3372.origin.x;
      v2186 = v3372.origin.y;
      v2187 = v3372.size.width;
      v2188 = v3372.size.height;
      v3254[0] = v3191;
      v3254[1] = v3135;
      v2193 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2189, v2190, v2191, v2192, (v3096 + (v3028 * v3069)), (v3081 + (v3028 * v3068)), (v3070 + (v3028 * v3064)), 0.0);
      v2194 = v2180;
      v3254[2] = v2193;
      v2197 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2195, v3254, 3, v2196);
      v3097 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2194, v2198, &unk_28492E4D0, v2197, v2199, v2185, v2186, v2187, v2188);

      v2203 = objc_msgSend_kernelWithName_(V8LNRKernels, v2200, @"annealGAndC", v2201, v2202);

      objc_msgSend_extent(v3097, v2204, v2205, v2206, v2207);
      v3374 = CGRectInset(v3373, -1.0, -1.0);
      v2208 = v3374.origin.x;
      v2209 = v3374.origin.y;
      v2210 = v3374.size.width;
      v2211 = v3374.size.height;
      objc_msgSend_extent(v3135, v2212, v2213, v2214, v2215);
      v3469.origin.x = v2216;
      v3469.origin.y = v2217;
      v3469.size.width = v2218;
      v3469.size.height = v2219;
      v3375.origin.x = v2208;
      v3375.origin.y = v2209;
      v3375.size.width = v2210;
      v3375.size.height = v2211;
      v3376 = CGRectUnion(v3375, v3469);
      v2220 = v3376.origin.x;
      v2221 = v3376.origin.y;
      v2222 = v3376.size.width;
      v2223 = v3376.size.height;
      v3253[0] = v3097;
      v3253[1] = v3135;
      v3253[2] = v2138;
      *&v3376.origin.x = v3048;
      v2228 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v2224, v2225, v2226, v2227, v3376.origin.x);
      v3253[3] = v2228;
      v2231 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2229, v3253, 4, v2230);
      v2232 = v2203;
      v1275 = v3114;
      v3189 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2203, v2233, &unk_28492E4F0, v2231, v2234, v2220, v2221, v2222, v2223);

      if (v3059 <= 1.7)
      {
        v2405 = v3142;
      }

      else
      {
        v2238 = objc_msgSend_kernelWithName_(V8LNRKernels, v2235, @"smoothDSharpen", v2236, v2237);

        v2243 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2239, v2240, v2241, v2242, 1.0, v3036, v3078, v3047);

        v3128 = (v3056 * 0.75);
        v3095 = (2.0 / v3056);
        v2248 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2244, v2245, v2246, v2247, 1.0);

        objc_msgSend_extent(v3142, v2249, v2250, v2251, v2252);
        v3378 = CGRectInset(v3377, -2.0, -2.0);
        v2253 = v3378.origin.x;
        v2254 = v3378.origin.y;
        v2255 = v3378.size.width;
        v2256 = v3378.size.height;
        objc_msgSend_extent(v3189, v2257, v2258, v2259, v2260);
        v3470.origin.x = v2261;
        v3470.origin.y = v2262;
        v3470.size.width = v2263;
        v3470.size.height = v2264;
        v3379.origin.x = v2253;
        v3379.origin.y = v2254;
        v3379.size.width = v2255;
        v3379.size.height = v2256;
        v3380 = CGRectUnion(v3379, v3470);
        v2265 = v3380.origin.x;
        v2266 = v3380.origin.y;
        v2267 = v3380.size.width;
        v2268 = v3380.size.height;
        v3252[0] = v3142;
        v3252[1] = v3189;
        v3252[2] = v2243;
        v3252[3] = v2248;
        v2271 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2269, v3252, 4, v2270);
        v3220 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2238, v2272, &unk_28492E510, v2271, v2273, v2265, v2266, v2267, v2268);

        v2274 = v2248;
        v2279 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2275, v2276, v2277, v2278, 2.0, (v3036 + ((1.0 - v3036) * 0.25)), ((v3078 * 0.66667) + 0.33333), (v3047 * 0.6));

        v2284 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2280, v2281, v2282, v2283, 2.0, v3128, v3095, 0.0);

        v2285 = v2279;
        v2289 = objc_msgSend_kernelWithName_(V8LNRKernels, v2286, @"smoothDSharpen", v2287, v2288);

        v2290 = v2289;
        v2291 = v2284;
        v2292 = v2290;
        objc_msgSend_extent(v3220, v2293, v2294, v2295, v2296);
        v3382 = CGRectInset(v3381, -4.0, -4.0);
        v2297 = v3382.origin.x;
        v2298 = v3382.origin.y;
        v2299 = v3382.size.width;
        v2300 = v3382.size.height;
        objc_msgSend_extent(v3189, v2301, v2302, v2303, v2304);
        v3471.origin.x = v2305;
        v3471.origin.y = v2306;
        v3471.size.width = v2307;
        v3471.size.height = v2308;
        v3383.origin.x = v2297;
        v3383.origin.y = v2298;
        v3383.size.width = v2299;
        v3383.size.height = v2300;
        v3384 = CGRectUnion(v3383, v3471);
        v2309 = v3384.origin.x;
        v2310 = v3384.origin.y;
        v2311 = v3384.size.width;
        v2312 = v3384.size.height;
        v3251[0] = v3220;
        v3251[1] = v3189;
        v3251[2] = v2279;
        v3251[3] = v2284;
        v2315 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2313, v3251, 4, v2314);
        v2316 = v2292;
        v2319 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2292, v2317, &unk_28492E530, v2315, v2318, v2309, v2310, v2311, v2312);

        v2320 = (v3047 * 0.6) * 0.6;
        v2325 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2321, v2322, v2323, v2324, 4.0, (v3036 + ((1.0 - v3036) * 0.5)), ((v3078 * 0.33333) + 0.66667), v2320);

        v2326 = v2316;
        v2331 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2327, v2328, v2329, v2330, 3.0, v3128, v3095, 0.0);

        v2332 = v2331;
        v2333 = v2319;
        v2334 = v2325;
        v2335 = v2332;
        v2339 = objc_msgSend_kernelWithName_(V8LNRKernels, v2336, @"smoothDSharpen", v2337, v2338);

        objc_msgSend_extent(v2333, v2340, v2341, v2342, v2343);
        v3386 = CGRectInset(v3385, -8.0, -8.0);
        v2344 = v3386.origin.x;
        v2345 = v3386.origin.y;
        v2346 = v3386.size.width;
        v2347 = v3386.size.height;
        objc_msgSend_extent(v3189, v2348, v2349, v2350, v2351);
        v3472.origin.x = v2352;
        v3472.origin.y = v2353;
        v3472.size.width = v2354;
        v3472.size.height = v2355;
        v3387.origin.x = v2344;
        v3387.origin.y = v2345;
        v3387.size.width = v2346;
        v3387.size.height = v2347;
        v3388 = CGRectUnion(v3387, v3472);
        v2356 = v3388.origin.x;
        v2357 = v3388.origin.y;
        v2358 = v3388.size.width;
        v2359 = v3388.size.height;
        v3250[0] = v2333;
        v3250[1] = v3189;
        v3250[2] = v2334;
        v3250[3] = v2335;
        v2362 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2360, v3250, 4, v2361);
        v3221 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2339, v2363, &unk_28492E550, v2362, v2364, v2356, v2357, v2358, v2359);

        v2369 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2365, v2366, v2367, v2368, 8.0, (v3036 + ((1.0 - v3036) * 0.75)), 1.0, (v2320 * 0.6));

        v2374 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2370, v2371, v2372, v2373, 4.0, v3128, v3095, 0.0);

        v2375 = v2374;
        v2232 = objc_msgSend_kernelWithName_(V8LNRKernels, v2376, @"smoothDSharpen", v2377, v2378);

        v2379 = v2369;
        objc_msgSend_extent(v3221, v2380, v2381, v2382, v2383);
        v3390 = CGRectInset(v3389, -16.0, -16.0);
        v2384 = v3390.origin.x;
        v2385 = v3390.origin.y;
        v2386 = v3390.size.width;
        v2387 = v3390.size.height;
        objc_msgSend_extent(v3189, v2388, v2389, v2390, v2391);
        v3473.origin.x = v2392;
        v3473.origin.y = v2393;
        v3473.size.width = v2394;
        v3473.size.height = v2395;
        v3391.origin.x = v2384;
        v3391.origin.y = v2385;
        v3391.size.width = v2386;
        v3391.size.height = v2387;
        v3392 = CGRectUnion(v3391, v3473);
        v2396 = v3392.origin.x;
        v2397 = v3392.origin.y;
        v2398 = v3392.size.width;
        v2399 = v3392.size.height;
        v3249[0] = v3221;
        v3249[1] = v3189;
        v3249[2] = v2369;
        v3249[3] = v2375;
        v2402 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2400, v3249, 4, v2401);
        v2405 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2232, v2403, &unk_28492E570, v2402, v2404, v2396, v2397, v2398, v2399);

        v1275 = v3114;
        v3143 = v2375;
        v3144 = v2379;
      }

      v2441 = (v3104 + -0.00003) / 0.00004;
      v2442 = 0.0;
      if (v2441 >= 0.0)
      {
        v2442 = (v3104 + -0.00003) / 0.00004;
        if (v2441 > 1.0)
        {
          v2442 = 1.0;
        }
      }

      v3225 = v2442;
      v3217 = v2405;
      v2438 = objc_msgSend_kernelWithName_(V8LNRKernels, v2406, @"expandPlusDThruG", v2407, v2408);

      objc_msgSend_extent(v3142, v2443, v2444, v2445, v2446);
      v3214 = v2447;
      v3209 = v2448;
      r1c = v2449;
      v3197 = v2450;
      objc_msgSend_extent(v2405, v2451, v2452, v2453, v2454);
      v2456 = v2455;
      v2458 = v2457;
      v2460 = v2459;
      v2462 = v2461;
      objc_msgSend_extent(v3189, v2463, v2464, v2465, v2466);
      v2468 = v2467;
      v2470 = v2469;
      v2472 = v2471;
      v2474 = v2473;
      objc_msgSend_extent(v3178, v2475, v2476, v2477, v2478);
      v3229 = v3230;
      v3398 = CGRectApplyAffineTransform(v3397, &v3229);
      v3475 = CGRectInset(v3398, -1.0, -1.0);
      v3399.origin.x = v2468;
      v3399.origin.y = v2470;
      v3399.size.width = v2472;
      v3399.size.height = v2474;
      v3476 = CGRectUnion(v3399, v3475);
      v3400.origin.x = v2456;
      v3400.origin.y = v2458;
      v3400.size.width = v2460;
      v3400.size.height = v2462;
      v3477 = CGRectUnion(v3400, v3476);
      v3401.origin.x = v3214;
      v3401.origin.y = v3209;
      v3401.size.width = r1c;
      v3401.size.height = v3197;
      v3402 = CGRectUnion(v3401, v3477);
      v2479 = v3402.origin.x;
      v2480 = v3402.origin.y;
      v2481 = v3402.size.width;
      v2482 = v3402.size.height;
      *&v3402.size.width = fminf(v3088 / 0.75, 1.0);
      v3248[0] = v3178;
      v3248[1] = v3142;
      v3248[2] = v2405;
      v3248[3] = v3189;
      v2434 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2483, v2484, v2485, v2486, 0.0, v3038, *&v3402.size.width, ((v3088 * 0.75) + ((*&v3402.size.width - (v3088 * 0.75)) * v3225)));
      v3248[4] = v2434;
      v2437 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2487, v2488, v2489, v2490, (v3044 * 0.0007), (v3044 * 0.0021), (v3044 * 0.0014), 0.0);
      v3248[5] = v2437;
      v2495 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2491, v2492, v2493, v2494, *(&v3019 + 1), *&v3019, 0.0, 0.0);
      v3248[6] = v2495;
      v2498 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2496, v3248, 7, v2497);
      v3082 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2438, v2499, &unk_28492E590, v2498, v2500, v2479, v2480, v2481, v2482);
    }

    v2504 = (1.0 / v3123) * 0.00175;
    v3226 = v3109 * v3037;
    v3210 = 1.0 / ((((1.0 / v3123) * 0.014) / v2504) + -1.0);
    v3215 = v2504 * (v3210 + 1.0);
    if (v3035 <= 0.00001)
    {
      if ((v3109 * v3037) <= 0.0)
      {
        v3124 = 0;
      }

      else
      {
        v2775 = objc_msgSend_kernelWithName_(V8LNRKernels, v2501, @"FGN", v2502, v2503);

        objc_msgSend_extent(v3137, v2776, v2777, v2778, v2779);
        v3430 = CGRectInset(v3429, -2.0, -2.0);
        v2780 = v3430.origin.x;
        v2781 = v3430.origin.y;
        v2782 = v3430.size.width;
        v2783 = v3430.size.height;
        v3236 = v3137;
        v2786 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2784, &v3236, 1, v2785);
        v3124 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2775, v2787, &unk_28492E6F0, v2786, v2788, v2780, v2781, v2782, v2783);

        v2438 = v2775;
      }

      v2789 = objc_msgSend_kernelWithName_(V8LNRKernels, v2501, @"annealG", v2502, v2503);

      objc_msgSend_extent(v3134, v2790, v2791, v2792, v2793);
      v3432 = CGRectInset(v3431, -1.0, -1.0);
      v2794 = v3432.origin.x;
      v2795 = v3432.origin.y;
      v2796 = v3432.size.width;
      v2797 = v3432.size.height;
      objc_msgSend_extent(v3134, v2798, v2799, v2800, v2801);
      v3483.origin.x = v2802;
      v3483.origin.y = v2803;
      v3483.size.width = v2804;
      v3483.size.height = v2805;
      v3433.origin.x = v2794;
      v3433.origin.y = v2795;
      v3433.size.width = v2796;
      v3433.size.height = v2797;
      v3434 = CGRectUnion(v3433, v3483);
      v2806 = v3434.origin.x;
      v2807 = v3434.origin.y;
      v2808 = v3434.size.width;
      v2809 = v3434.size.height;
      v3235[0] = v3134;
      v3235[1] = v3134;
      v3235[2] = v1275;
      v2812 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2810, v3235, 3, v2811);
      v3110 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2789, v2813, &unk_28492E710, v2812, v2814, v2806, v2807, v2808, v2809);

      v2818 = objc_msgSend_kernelWithName_(V8LNRKernels, v2815, @"expandPlusDThruG2", v2816, v2817);

      objc_msgSend_extent(v3110, v2819, v2820, v2821, v2822);
      v2824 = v2823;
      v2826 = v2825;
      v2828 = v2827;
      v2830 = v2829;
      objc_msgSend_extent(v3137, v2831, v2832, v2833, v2834);
      v2836 = v2835;
      v2838 = v2837;
      v2840 = v2839;
      v2842 = v2841;
      objc_msgSend_extent(v3082, v2843, v2844, v2845, v2846);
      v3229 = v3230;
      v3436 = CGRectApplyAffineTransform(v3435, &v3229);
      v3484 = CGRectInset(v3436, -1.0, -1.0);
      v3437.origin.x = v2836;
      v3437.origin.y = v2838;
      v3437.size.width = v2840;
      v3437.size.height = v2842;
      v3485 = CGRectUnion(v3437, v3484);
      v3438.origin.x = v2824;
      v3438.origin.y = v2826;
      v3438.size.width = v2828;
      v3438.size.height = v2830;
      v3439 = CGRectUnion(v3438, v3485);
      v2847 = v3439.origin.x;
      v2848 = v3439.origin.y;
      v2849 = v3439.size.width;
      v2850 = v3439.size.height;
      v3234[0] = v3082;
      v3234[1] = v3137;
      v3234[2] = v3110;
      v2855 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2851, v2852, v2853, v2854, v3045, 1.0, v3215, v3210);
      v3234[3] = v2855;
      v2860 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2856, v2857, v2858, v2859, (v3044 * 0.004), (v3044 * 0.012), (v3044 * 0.008), 0.0);
      v3234[4] = v2860;
      v2865 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2861, v2862, v2863, v2864, v3034, v3079, 0.0, 0.0);
      v3234[5] = v2865;
      v2868 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2866, v3234, 6, v2867);
      v2871 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2818, v2869, &unk_28492E730, v2868, v2870, v2847, v2848, v2849, v2850);
      v3107 = 0;
      v3102 = 0;
      v3127 = 0;
    }

    else
    {
      v2505 = objc_msgSend_kernelWithName_(V8LNRKernels, v2501, @"smoothVF", v2502, v2503);

      objc_msgSend_extent(v3134, v2506, v2507, v2508, v2509);
      v3404 = CGRectInset(v3403, -3.0, -3.0);
      v2510 = v3404.origin.x;
      v2511 = v3404.origin.y;
      v2512 = v3404.size.width;
      v2513 = v3404.size.height;
      v3246 = v3134;
      v2516 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2514, &v3246, 1, v2515);
      v3102 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2505, v2517, &unk_28492E5D0, v2516, v2518, v2510, v2511, v2512, v2513);

      v2522 = objc_msgSend_kernelWithName_(V8LNRKernels, v2519, @"VFToGDIR", v2520, v2521);

      v3116 = v2522;
      objc_msgSend_extent(v3102, v2523, v2524, v2525, v2526);
      v2528 = v2527;
      v2530 = v2529;
      v2532 = v2531;
      v2534 = v2533;
      v3245 = v3102;
      v2537 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2535, &v3245, 1, v2536);
      v3108 = objc_msgSend_applyWithExtent_arguments_(v3116, v2538, v2537, v2539, v2540, v2528, v2530, v2532, v2534);

      v2544 = objc_msgSend_kernelWithName_(V8LNRKernels, v2541, @"DIRToC", v2542, v2543);

      objc_msgSend_extent(v3108, v2545, v2546, v2547, v2548);
      v3406 = CGRectInset(v3405, -8.0, -8.0);
      v2549 = v3406.origin.x;
      v2550 = v3406.origin.y;
      v2551 = v3406.size.width;
      v2552 = v3406.size.height;
      v3244[0] = v3108;
      v3244[1] = v3134;
      v2557 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2553, v2554, v2555, v2556, (v3076 + (v3077 * v3073)), (v3075 + (v3077 * v3072)), (v3074 + (v3077 * v3071)), 0.0);
      v3244[2] = v2557;
      v2560 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2558, v3244, 3, v2559);
      v2563 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2544, v2561, &unk_28492E5F0, v2560, v2562, v2549, v2550, v2551, v2552);

      v3107 = v2563;
      v2567 = objc_msgSend_kernelWithName_(V8LNRKernels, v2564, @"annealGAndC", v2565, v2566);

      objc_msgSend_extent(v2563, v2568, v2569, v2570, v2571);
      v3408 = CGRectInset(v3407, -1.0, -1.0);
      v2572 = v3408.origin.x;
      v2573 = v3408.origin.y;
      v2574 = v3408.size.width;
      v2575 = v3408.size.height;
      objc_msgSend_extent(v3134, v2576, v2577, v2578, v2579);
      v3478.origin.x = v2580;
      v3478.origin.y = v2581;
      v3478.size.width = v2582;
      v3478.size.height = v2583;
      v3409.origin.x = v2572;
      v3409.origin.y = v2573;
      v3409.size.width = v2574;
      v3409.size.height = v2575;
      v3410 = CGRectUnion(v3409, v3478);
      v2584 = v3410.origin.x;
      v2585 = v3410.origin.y;
      v2586 = v3410.size.width;
      v2587 = v3410.size.height;
      v3243[0] = v2563;
      v3243[1] = v3134;
      v3243[2] = v1275;
      *&v3410.origin.x = v3048;
      v2592 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v2588, v2589, v2590, v2591, v3410.origin.x);
      v3243[3] = v2592;
      v2595 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2593, v3243, 4, v2594);
      v3110 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2567, v2596, &unk_28492E610, v2595, v2597, v2584, v2585, v2586, v2587);

      v2601 = objc_msgSend_kernelWithName_(V8LNRKernels, v2598, @"smoothDSharpen", v2599, v2600);

      v2606 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2602, v2603, v2604, v2605, 1.0, v3046, v3078, v3047);

      r1d = (v3056 * 0.75);
      v3198 = (2.0 / v3056);
      v2611 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2607, v2608, v2609, v2610, 1.0);

      objc_msgSend_extent(v3137, v2612, v2613, v2614, v2615);
      v3412 = CGRectInset(v3411, -2.0, -2.0);
      v2616 = v3412.origin.x;
      v2617 = v3412.origin.y;
      v2618 = v3412.size.width;
      v2619 = v3412.size.height;
      objc_msgSend_extent(v3110, v2620, v2621, v2622, v2623);
      v3479.origin.x = v2624;
      v3479.origin.y = v2625;
      v3479.size.width = v2626;
      v3479.size.height = v2627;
      v3413.origin.x = v2616;
      v3413.origin.y = v2617;
      v3413.size.width = v2618;
      v3413.size.height = v2619;
      v3414 = CGRectUnion(v3413, v3479);
      v2628 = v3414.origin.x;
      v2629 = v3414.origin.y;
      v2630 = v3414.size.width;
      v2631 = v3414.size.height;
      v3242[0] = v3137;
      v3242[1] = v3110;
      v3242[2] = v2606;
      v3242[3] = v2611;
      v2634 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2632, v3242, 4, v2633);
      v3129 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2601, v2635, &unk_28492E630, v2634, v2636, v2628, v2629, v2630, v2631);

      v2641 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2637, v2638, v2639, v2640, 2.0, (v3046 + ((1.0 - v3046) * 0.25)), ((v3078 * 0.66667) + 0.33333), (v3047 * 0.6));

      v2646 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2642, v2643, v2644, v2645, 2.0, r1d, v3198, 0.0);

      v2650 = objc_msgSend_kernelWithName_(V8LNRKernels, v2647, @"smoothDSharpen", v2648, v2649);

      objc_msgSend_extent(v3129, v2651, v2652, v2653, v2654);
      v3416 = CGRectInset(v3415, -4.0, -4.0);
      v2655 = v3416.origin.x;
      v2656 = v3416.origin.y;
      v2657 = v3416.size.width;
      v2658 = v3416.size.height;
      objc_msgSend_extent(v3110, v2659, v2660, v2661, v2662);
      v3480.origin.x = v2663;
      v3480.origin.y = v2664;
      v3480.size.width = v2665;
      v3480.size.height = v2666;
      v3417.origin.x = v2655;
      v3417.origin.y = v2656;
      v3417.size.width = v2657;
      v3417.size.height = v2658;
      v3418 = CGRectUnion(v3417, v3480);
      v2667 = v3418.origin.x;
      v2668 = v3418.origin.y;
      v2669 = v3418.size.width;
      v2670 = v3418.size.height;
      v3241[0] = v3129;
      v3241[1] = v3110;
      v3241[2] = v2641;
      v3241[3] = v2646;
      v2673 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2671, v3241, 4, v2672);
      v2676 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2650, v2674, &unk_28492E650, v2673, v2675, v2667, v2668, v2669, v2670);

      *&v2585 = (v3047 * 0.6) * 0.6;
      v2681 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2677, v2678, v2679, v2680, 4.0, (v3046 + ((1.0 - v3046) * 0.5)), ((v3078 * 0.33333) + 0.66667), *&v2585);

      v2686 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2682, v2683, v2684, v2685, 3.0, r1d, v3198, 0.0);

      v2690 = objc_msgSend_kernelWithName_(V8LNRKernels, v2687, @"smoothDSharpen", v2688, v2689);

      objc_msgSend_extent(v2676, v2691, v2692, v2693, v2694);
      v3420 = CGRectInset(v3419, -8.0, -8.0);
      v2695 = v3420.origin.x;
      v2696 = v3420.origin.y;
      v2697 = v3420.size.width;
      v2698 = v3420.size.height;
      objc_msgSend_extent(v3110, v2699, v2700, v2701, v2702);
      v3481.origin.x = v2703;
      v3481.origin.y = v2704;
      v3481.size.width = v2705;
      v3481.size.height = v2706;
      v3421.origin.x = v2695;
      v3421.origin.y = v2696;
      v3421.size.width = v2697;
      v3421.size.height = v2698;
      v3422 = CGRectUnion(v3421, v3481);
      v2707 = v3422.origin.x;
      v2708 = v3422.origin.y;
      v2709 = v3422.size.width;
      v2710 = v3422.size.height;
      v3240[0] = v2676;
      v3240[1] = v3110;
      v3240[2] = v2681;
      v3240[3] = v2686;
      v2713 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2711, v3240, 4, v2712);
      v3130 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2690, v2714, &unk_28492E670, v2713, v2715, v2707, v2708, v2709, v2710);

      v2720 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2716, v2717, v2718, v2719, 8.0, (v3046 + ((1.0 - v3046) * 0.75)), 1.0, (*&v2585 * 0.6));

      v3144 = v2720;
      v2725 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2721, v2722, v2723, v2724, 4.0, r1d, v3198, 0.0);

      v3143 = v2725;
      v2729 = objc_msgSend_kernelWithName_(V8LNRKernels, v2726, @"smoothDSharpen", v2727, v2728);

      objc_msgSend_extent(v3130, v2730, v2731, v2732, v2733);
      v3424 = CGRectInset(v3423, -16.0, -16.0);
      v2734 = v3424.origin.x;
      v2735 = v3424.origin.y;
      v2736 = v3424.size.width;
      v2737 = v3424.size.height;
      objc_msgSend_extent(v3110, v2738, v2739, v2740, v2741);
      v3482.origin.x = v2742;
      v3482.origin.y = v2743;
      v3482.size.width = v2744;
      v3482.size.height = v2745;
      v3425.origin.x = v2734;
      v3425.origin.y = v2735;
      v3425.size.width = v2736;
      v3425.size.height = v2737;
      v3426 = CGRectUnion(v3425, v3482);
      v2746 = v3426.origin.x;
      v2747 = v3426.origin.y;
      v2748 = v3426.size.width;
      v2749 = v3426.size.height;
      v3239[0] = v3130;
      v3239[1] = v3110;
      v3239[2] = v3144;
      v3239[3] = v3143;
      v2752 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2750, v3239, 4, v2751);
      v2755 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2729, v2753, &unk_28492E690, v2752, v2754, v2746, v2747, v2748, v2749);

      v3127 = v2755;
      *&v2759 = v3226;
      if (v3226 <= 0.0)
      {
        v3124 = 0;
        v2774 = v2729;
      }

      else
      {
        v2760 = objc_msgSend_kernelWithName_(V8LNRKernels, v2756, @"FGN", v2757, v2758, v2759);

        objc_msgSend_extent(v3137, v2761, v2762, v2763, v2764);
        v3428 = CGRectInset(v3427, -2.0, -2.0);
        v2765 = v3428.origin.x;
        v2766 = v3428.origin.y;
        v2767 = v3428.size.width;
        v2768 = v3428.size.height;
        v3238 = v3137;
        v2771 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2769, &v3238, 1, v2770);
        v3124 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2760, v2772, &unk_28492E6B0, v2771, v2773, v2765, v2766, v2767, v2768);

        v2774 = v2760;
      }

      v2818 = objc_msgSend_kernelWithName_(V8LNRKernels, v2756, @"expandPlusDThruG3", v2757, v2758);

      objc_msgSend_extent(v3137, v2872, v2873, v2874, v2875);
      r1e = v2876;
      v3199 = v2877;
      v3195 = v2878;
      v3193 = v2879;
      objc_msgSend_extent(v2755, v2880, v2881, v2882, v2883);
      v2885 = v2884;
      v2887 = v2886;
      v2889 = v2888;
      v2891 = v2890;
      objc_msgSend_extent(v3110, v2892, v2893, v2894, v2895);
      v2897 = v2896;
      v2899 = v2898;
      v2901 = v2900;
      v2903 = v2902;
      objc_msgSend_extent(v3082, v2904, v2905, v2906, v2907);
      v3229 = v3230;
      v3441 = CGRectApplyAffineTransform(v3440, &v3229);
      v3486 = CGRectInset(v3441, -1.0, -1.0);
      v3442.origin.x = v2897;
      v3442.origin.y = v2899;
      v3442.size.width = v2901;
      v3442.size.height = v2903;
      v3487 = CGRectUnion(v3442, v3486);
      v3443.origin.x = v2885;
      v3443.origin.y = v2887;
      v3443.size.width = v2889;
      v3443.size.height = v2891;
      v3488 = CGRectUnion(v3443, v3487);
      v3444.origin.x = r1e;
      v3444.origin.y = v3199;
      v3444.size.width = v3195;
      v3444.size.height = v3193;
      v3445 = CGRectUnion(v3444, v3488);
      v2908 = v3445.origin.x;
      v2909 = v3445.origin.y;
      v2910 = v3445.size.width;
      v2911 = v3445.size.height;
      v3237[0] = v3082;
      v3237[1] = v3137;
      v3237[2] = v2755;
      v3237[3] = v3110;
      v2855 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2912, v2913, v2914, v2915, v3215, v3045, (1.0 - v3088), 1.0);
      v3237[4] = v2855;
      v2860 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2916, v2917, v2918, v2919, (v3044 * 0.004), (v3044 * 0.012), (v3044 * 0.008), v3210);
      v3237[5] = v2860;
      v2865 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v2920, v2921, v2922, v2923, v3034, v3079, 0.0, 0.0);
      v3237[6] = v2865;
      v2868 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2924, v3237, 7, v2925);
      v2871 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2818, v2926, &unk_28492E6D0, v2868, v2927, v2908, v2909, v2910, v2911);
    }

    v2928 = v2871;
    v3089 = v2928;
    if (v3226 > 0.0 && v3226 >= 0.001 && v3124)
    {
      v2932 = objc_msgSend_kernelWithName_(V8LNRKernels, v2929, @"addFGN", v2930, v2931);

      objc_msgSend_extent(v3089, v2933, v2934, v2935, v2936);
      v2938 = v2937;
      v2940 = v2939;
      v2942 = v2941;
      v2944 = v2943;
      objc_msgSend_extent(v3124, v2945, v2946, v2947, v2948);
      v3489.origin.x = v2949;
      v3489.origin.y = v2950;
      v3489.size.width = v2951;
      v3489.size.height = v2952;
      v3446.origin.x = v2938;
      v3446.origin.y = v2940;
      v3446.size.width = v2942;
      v3446.size.height = v2944;
      v3447 = CGRectUnion(v3446, v3489);
      v2953 = v3447.origin.x;
      v2954 = v3447.origin.y;
      v2955 = v3447.size.width;
      v2956 = v3447.size.height;
      v3233[0] = v3089;
      v3233[1] = v3124;
      v3233[2] = v3110;
      *&v3447.origin.x = v3226;
      v2961 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v2957, v2958, v2959, v2960, v3447.origin.x);
      v3233[3] = v2961;
      v2964 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2962, v3233, 4, v2963);
      v2967 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v2932, v2965, &unk_28492E750, v2964, v2966, v2953, v2954, v2955, v2956);

      v3080 = v2967;
      v2971 = v2932;
    }

    else
    {
      v2971 = v2818;
      v3080 = v2928;
    }

    v1276 = objc_msgSend_kernelWithName_(V8LNRKernels, v2968, @"YAndRGBGather", v2969, v2970);

    objc_msgSend_extent(v3080, v2972, v2973, v2974, v2975);
    v2977 = v2976;
    v2979 = v2978;
    v2981 = v2980;
    v2983 = v2982;
    objc_msgSend_extent(v3131, v2984, v2985, v2986, v2987);
    v3490.origin.x = v2988;
    v3490.origin.y = v2989;
    v3490.size.width = v2990;
    v3490.size.height = v2991;
    v3448.origin.x = v2977;
    v3448.origin.y = v2979;
    v3448.size.width = v2981;
    v3448.size.height = v2983;
    v3449 = CGRectUnion(v3448, v3490);
    v2992 = v3449.origin.x;
    v2993 = v3449.origin.y;
    v2994 = v3449.size.width;
    v2995 = v3449.size.height;
    objc_msgSend_extent(v3140, v2996, v2997, v2998, v2999);
    v3491.origin.x = v3000;
    v3491.origin.y = v3001;
    v3491.size.width = v3002;
    v3491.size.height = v3003;
    v3450.origin.x = v2992;
    v3450.origin.y = v2993;
    v3450.size.width = v2994;
    v3450.size.height = v2995;
    v3451 = CGRectUnion(v3450, v3491);
    v3004 = v3451.origin.x;
    v3005 = v3451.origin.y;
    v3006 = v3451.size.width;
    v3007 = v3451.size.height;
    v3232[0] = v3080;
    v3232[1] = v3131;
    v3232[2] = v3140;
    v3232[3] = v3125;
    v3232[4] = v3119->inputLumFactors;
    v3010 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v3008, v3232, 5, v3009);
    v3013 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v1276, v3011, &unk_28492E770, v3010, v3012, v3004, v3005, v3006, v3007);
    v1277 = v3080;
    v1274 = objc_msgSend_image_croppedTo_(v3119, v3014, v3013, v3015, v3016, v3033, v3032, v3031, v3030);
  }

  return v1274;
}

@end