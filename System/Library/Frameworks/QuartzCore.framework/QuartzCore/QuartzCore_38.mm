void ___ZN2CA20HDRProcessorInternal30configure_display_pipe_tonemapEP11__IOSurfacejPKNS_6Render17DisplayAttributesEfPP12CGColorSpaceU13block_pointerFvP18IOMFBToneMapConfigEU13block_pointerFv13IOMFBCurveLocPK14IOMFBCurveDataEU13block_pointerFv14IOMFBICCMatLocPK16IOMFBColorMatrixE_block_invoke(void *a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v4 = a1[5];
  }

  else
  {
    if (a2 != 1)
    {
      if (a2)
      {
        if (x_log_get_utilities::once != -1)
        {
          dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
        }

        v6 = x_log_get_utilities::log;
        if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
        {
          v7[0] = 67109120;
          v7[1] = a2;
          _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "unexpected HDRProcessingDisplayConfigType: %u", v7, 8u);
        }
      }

      else
      {
        v3 = *(a1[4] + 16);

        v3();
      }

      return;
    }

    v4 = a1[6];
  }

  v5 = *(v4 + 16);

  v5();
}

void CA::HDRProcessorInternal::initialize_metal(CA::HDRProcessorInternal *this)
{
  if ((*(this + 88) & 1) == 0)
  {
    *(this + 88) = 1;
    v2 = MTLCreateSystemDefaultDevice();
    *(this + 3) = v2;
    v3 = [v2 newCommandQueue];
    *(this + 4) = v3;
    [v3 setLabel:@"com.apple.QuartzCore-HDRProcessing"];
    if (CA::_root_queue_once != -1)
    {
      dispatch_once(&CA::_root_queue_once, &__block_literal_global_24520);
    }

    v4 = CA::_root_queue;
    if (CA::_root_queue)
    {
      v5 = dispatch_queue_create_with_target_V2("com.apple.coreanimation.hdr_submission", 0, CA::_root_queue);
      v6 = dispatch_queue_create_with_target_V2("com.apple.coreanimation.hdr_completion", 0, v4);
      [*(this + 4) setSubmissionQueue:v5];
      [*(this + 4) setCompletionQueue:v6];
      dispatch_release(v5);

      dispatch_release(v6);
    }
  }
}

uint64_t CA::create_hdrprocessor(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_hdrp_supports_new_init == 1)
  {
    result = [[hdr_processor_class alloc] initProcessingEngine:a1 config:a2];
    if (!result)
    {
LABEL_8:
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v7 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "CoreAnimation: Error initializing HDRProcessor.", v8, 2u);
      }

      abort();
    }
  }

  else
  {
    v5 = *(a2 + 36);
    v6 = [hdr_processor_class alloc];
    if (v5)
    {
      result = [v6 initWithConfig:a2];
      if (!result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = [v6 initWithDevice:a1 config:a2];
      if (!result)
      {
        goto LABEL_8;
      }
    }
  }

  return result;
}

void load_hdrprocessing_symbols(void)
{
  v0 = dlopen("/System/Library/PrivateFrameworks/HDRProcessing.framework/HDRProcessing", 5);
  hdr_handle = v0;
  if (v0)
  {
    v1 = dlsym(v0, "kHDRProcessingDolbyVisionRPUDataKey");
    if (v1)
    {
      v2 = *v1;
    }

    else
    {
      v2 = 0;
    }

    _kHDRProcessingDolbyVisionRPUDataKey = v2;
    v3 = dlsym(hdr_handle, "kHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKey");
    if (v3)
    {
      v4 = *v3;
    }

    else
    {
      v4 = 0;
    }

    _kHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKey = v4;
    v5 = dlsym(hdr_handle, "kHDRProcessingEDRFactorKey");
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    _kHDRProcessingEDRFactorKey = v6;
    v7 = dlsym(hdr_handle, "kHDRProcessingHDRConstraintStrengthKey");
    if (v7)
    {
      v8 = *v7;
    }

    else
    {
      v8 = 0;
    }

    _kHDRProcessingHDRConstraintStrengthKey = v8;
    v9 = dlsym(hdr_handle, "kHDRProcessingGCPGammaValueKey");
    if (v9)
    {
      v10 = *v9;
    }

    else
    {
      v10 = 0;
    }

    _kHDRProcessingGCPGammaValueKey = v10;
    v11 = dlsym(hdr_handle, "kHDRProcessingCurrentMaxPanelNitsKey");
    if (v11)
    {
      v12 = *v11;
    }

    else
    {
      v12 = 0;
    }

    _kHDRProcessingCurrentMaxPanelNitsKey = v12;
    v13 = dlsym(hdr_handle, "kHDRProcessingAmbientLightInNitsKey");
    if (v13)
    {
      v14 = *v13;
    }

    else
    {
      v14 = 0;
    }

    _kHDRProcessingAmbientLightInNitsKey = v14;
    v15 = dlsym(hdr_handle, "kHDRProcessingDolbyVisionBackwardDMMaximumValueKey");
    if (v15)
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    _kHDRProcessingDolbyVisionBackwardDMMaximumValueKey = v16;
    v17 = dlsym(hdr_handle, "kHDRProcessingUILayerScaleFactor");
    if (v17)
    {
      v18 = *v17;
    }

    else
    {
      v18 = 0;
    }

    _kHDRProcessingUILayerScaleFactor = v18;
    v19 = dlsym(hdr_handle, "kHDRProcessingSDRMaxBrightnessInNits");
    if (v19)
    {
      v20 = *v19;
    }

    else
    {
      v20 = 0;
    }

    _kHDRProcessingSDRMaxBrightnessInNits = v20;
    v21 = dlsym(hdr_handle, "kHDRProcessingSourceContentKey");
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    _kHDRProcessingSourceContentKey = v22;
    v23 = dlsym(hdr_handle, "kHDRProcessingSourceContentTypeKey");
    if (v23)
    {
      v24 = *v23;
    }

    else
    {
      v24 = 0;
    }

    _kHDRProcessingSourceContentTypeKey = v24;
    v25 = dlsym(hdr_handle, "kHDRProcessingSourceContentTypeDolbyVision");
    if (v25)
    {
      v26 = *v25;
    }

    else
    {
      v26 = 0;
    }

    _kHDRProcessingSourceContentTypeDolbyVision = v26;
    v27 = dlsym(hdr_handle, "kHDRProcessingSourceContentTypeHLG");
    if (v27)
    {
      v28 = *v27;
    }

    else
    {
      v28 = 0;
    }

    _kHDRProcessingSourceContentTypeHLG = v28;
    v29 = dlsym(hdr_handle, "kHDRProcessingSourceContentTypeHDR10");
    if (v29)
    {
      v30 = *v29;
    }

    else
    {
      v30 = 0;
    }

    _kHDRProcessingSourceContentTypeHDR10 = v30;
    v31 = dlsym(hdr_handle, "kHDRProcessingSourceContentBitDepthKey");
    if (v31)
    {
      v32 = *v31;
    }

    else
    {
      v32 = 0;
    }

    _kHDRProcessingSourceContentBitDepthKey = v32;
    v33 = dlsym(hdr_handle, "kHDRProcessingSourceContentSDRMaxBrightnessInNitsKey");
    if (v33)
    {
      v34 = *v33;
    }

    else
    {
      v34 = 0;
    }

    _kHDRProcessingSourceContentSDRMaxBrightnessInNitsKey = v34;
    v35 = dlsym(hdr_handle, "kHDRProcessingSourceContentHDRMaxBrightnessInNitsKey");
    if (v35)
    {
      v36 = *v35;
    }

    else
    {
      v36 = 0;
    }

    _kHDRProcessingSourceContentHDRMaxBrightnessInNitsKey = v36;
    v37 = dlsym(hdr_handle, "kHDRProcessingDestinationDisplayTypeDolbyVisionTV");
    if (v37)
    {
      v38 = *v37;
    }

    else
    {
      v38 = 0;
    }

    _kHDRProcessingDestinationDisplayTypeDolbyVisionTV = v38;
    v39 = dlsym(hdr_handle, "kHDRProcessingDestinationDisplayTypeLowLatencyDolbyVisionTV");
    if (v39)
    {
      v40 = *v39;
    }

    else
    {
      v40 = 0;
    }

    _kHDRProcessingDestinationDisplayTypeLowLatencyDolbyVisionTV = v40;
    v41 = dlsym(hdr_handle, "kHDRProcessingDestinationDisplayTypeHDR10TV");
    if (v41)
    {
      v42 = *v41;
    }

    else
    {
      v42 = 0;
    }

    _kHDRProcessingDestinationDisplayTypeHDR10TV = v42;
    v43 = dlsym(hdr_handle, "kHDRProcessingDestinationDisplayTypeInternalPanel");
    if (v43)
    {
      v44 = *v43;
    }

    else
    {
      v44 = 0;
    }

    _kHDRProcessingDestinationDisplayTypeInternalPanel = v44;
    v45 = dlsym(hdr_handle, "kHDRProcessingDestinationDisplayTypeInternalPanelOLED");
    if (v45)
    {
      v46 = *v45;
    }

    else
    {
      v46 = 0;
    }

    _kHDRProcessingDestinationDisplayTypeInternalPanelOLED = v46;
    v47 = dlsym(hdr_handle, "kHDRProcessingDestinationDisplayTypeInternalPanelLCD");
    if (v47)
    {
      v48 = *v47;
    }

    else
    {
      v48 = 0;
    }

    _kHDRProcessingDestinationDisplayTypeInternalPanelLCD = v48;
    v49 = dlsym(hdr_handle, "kHDRProcessingDestinationDisplayTypeInternalPanel0DBL");
    if (v49)
    {
      v50 = *v49;
    }

    else
    {
      v50 = 0;
    }

    _kHDRProcessingDestinationDisplayTypeInternalPanel0DBL = v50;
    v51 = dlsym(hdr_handle, "kHDRProcessingDestinationDisplayTypeInternalPanel2DBL");
    if (v51)
    {
      v52 = *v51;
    }

    else
    {
      v52 = 0;
    }

    _kHDRProcessingDestinationDisplayTypeInternalPanel2DBL = v52;
    v53 = dlsym(hdr_handle, "kHDRProcessingDestinationDisplayTypeInternalPanelMac");
    if (v53)
    {
      v54 = *v53;
    }

    else
    {
      v54 = 0;
    }

    _kHDRProcessingDestinationDisplayTypeInternalPanelMac = v54;
    v55 = dlsym(hdr_handle, "kHDRProcessingDestinationDisplayTypeReferenceDisplay");
    if (v55)
    {
      v56 = *v55;
    }

    else
    {
      v56 = 0;
    }

    _kHDRProcessingDestinationDisplayTypeReferenceDisplay = v56;
    v57 = dlsym(hdr_handle, "kHDRProcessingDestinationDisplayTypeKey");
    if (v57)
    {
      v58 = *v57;
    }

    else
    {
      v58 = 0;
    }

    _kHDRProcessingDestinationDisplayTypeKey = v58;
    v59 = dlsym(hdr_handle, "kHDRProcessingDestinationDisplayTypeSDRTV");
    if (v59)
    {
      v60 = *v59;
    }

    else
    {
      v60 = 0;
    }

    _kHDRProcessingDestinationDisplayTypeSDRTV = v60;
    v61 = dlsym(hdr_handle, "kHDRProcessingDisplayDiagonalSizeInInchesKey");
    if (v61)
    {
      v62 = *v61;
    }

    else
    {
      v62 = 0;
    }

    _kHDRProcessingDisplayDiagonalSizeInInchesKey = v62;
    v63 = dlsym(hdr_handle, "kHDRProcessingDisplayMaximumBrightnessInNitsKey");
    if (v63)
    {
      v64 = *v63;
    }

    else
    {
      v64 = 0;
    }

    _kHDRProcessingDisplayMaximumBrightnessInNitsKey = v64;
    v65 = dlsym(hdr_handle, "kHDRProcessingDisplayAverageBrightnessInNitsKey");
    if (v65)
    {
      v66 = *v65;
    }

    else
    {
      v66 = 0;
    }

    _kHDRProcessingDisplayAverageBrightnessInNitsKey = v66;
    v67 = dlsym(hdr_handle, "kHDRProcessingDisplayMinimumBrightnessInNitsKey");
    if (v67)
    {
      v68 = *v67;
    }

    else
    {
      v68 = 0;
    }

    _kHDRProcessingDisplayMinimumBrightnessInNitsKey = v68;
    v69 = dlsym(hdr_handle, "kHDRProcessingDisplayKey");
    if (v69)
    {
      v70 = *v69;
    }

    else
    {
      v70 = 0;
    }

    _kHDRProcessingDisplayKey = v70;
    v71 = dlsym(hdr_handle, "kHDRProcessingDisplayContrastRatioKey");
    if (v71)
    {
      v72 = *v71;
    }

    else
    {
      v72 = 0;
    }

    _kHDRProcessingDisplayContrastRatioKey = v72;
    v73 = dlsym(hdr_handle, "kHDRProcessingDisplayDolbyVisionDMVersionKey");
    if (v73)
    {
      v74 = *v73;
    }

    else
    {
      v74 = 0;
    }

    _kHDRProcessingDisplayDolbyVisionDMVersionKey = v74;
    v75 = dlsym(hdr_handle, "kHDRProcessingForwardDMDictinaryKey");
    if (v75)
    {
      v76 = *v75;
    }

    else
    {
      v76 = 0;
    }

    _kHDRProcessingForwardDMDictinaryKey = v76;
    v77 = dlsym(hdr_handle, "kHDRProcessingDolbyVisionBackwardDMDictinary");
    if (v77)
    {
      v78 = *v77;
    }

    else
    {
      v78 = 0;
    }

    _kHDRProcessingDolbyVisionBackwardDMDictinary = v78;
    v79 = dlsym(hdr_handle, "kHDRProcessingDisplayColorFormatKey");
    if (v79)
    {
      v80 = *v79;
    }

    else
    {
      v80 = 0;
    }

    _kHDRProcessingDisplayColorFormatKey = v80;
    v81 = dlsym(hdr_handle, "kHDRProcessingDisplayColorFormat_IPT422_12BITS");
    if (v81)
    {
      v82 = *v81;
    }

    else
    {
      v82 = 0;
    }

    _kHDRProcessingDisplayColorFormat_IPT422_12BITS = v82;
    v83 = dlsym(hdr_handle, "kHDRProcessingDisplayColorFormat_YUV422_12BITS_DP");
    if (v83)
    {
      v84 = *v83;
    }

    else
    {
      v84 = 0;
    }

    _kHDRProcessingDisplayColorFormat_YUV422_12BITS_DP = v84;
    v85 = dlsym(hdr_handle, "kHDRProcessingDisplayColorFormat_YUV422_12BITS_HDMI");
    if (v85)
    {
      v86 = *v85;
    }

    else
    {
      v86 = 0;
    }

    _kHDRProcessingDisplayColorFormat_YUV422_12BITS_HDMI = v86;
    v87 = dlsym(hdr_handle, "kHDRProcessingDisplayChromaticityBx");
    if (v87)
    {
      v88 = *v87;
    }

    else
    {
      v88 = 0;
    }

    _kHDRProcessingDisplayChromaticityBx = v88;
    v89 = dlsym(hdr_handle, "kHDRProcessingDisplayChromaticityBy");
    if (v89)
    {
      v90 = *v89;
    }

    else
    {
      v90 = 0;
    }

    _kHDRProcessingDisplayChromaticityBy = v90;
    v91 = dlsym(hdr_handle, "kHDRProcessingDisplayChromaticityGx");
    if (v91)
    {
      v92 = *v91;
    }

    else
    {
      v92 = 0;
    }

    _kHDRProcessingDisplayChromaticityGx = v92;
    v93 = dlsym(hdr_handle, "kHDRProcessingDisplayChromaticityGy");
    if (v93)
    {
      v94 = *v93;
    }

    else
    {
      v94 = 0;
    }

    _kHDRProcessingDisplayChromaticityGy = v94;
    v95 = dlsym(hdr_handle, "kHDRProcessingDisplayChromaticityRx");
    if (v95)
    {
      v96 = *v95;
    }

    else
    {
      v96 = 0;
    }

    _kHDRProcessingDisplayChromaticityRx = v96;
    v97 = dlsym(hdr_handle, "kHDRProcessingDisplayChromaticityRy");
    if (v97)
    {
      v98 = *v97;
    }

    else
    {
      v98 = 0;
    }

    _kHDRProcessingDisplayChromaticityRy = v98;
    v99 = dlsym(hdr_handle, "kHDRProcessingDisplayChromaticityWx");
    if (v99)
    {
      v100 = *v99;
    }

    else
    {
      v100 = 0;
    }

    _kHDRProcessingDisplayChromaticityWx = v100;
    v101 = dlsym(hdr_handle, "kHDRProcessingDisplayChromaticityWy");
    if (v101)
    {
      v102 = *v101;
    }

    else
    {
      v102 = 0;
    }

    _kHDRProcessingDisplayChromaticityWy = v102;
    v103 = dlsym(hdr_handle, "kHDRProcessingDisplaySupportsAmbientAdaptationKey");
    if (v103)
    {
      v104 = *v103;
    }

    else
    {
      v104 = 0;
    }

    _kHDRProcessingDisplaySupportsAmbientAdaptationKey = v104;
    v105 = dlsym(hdr_handle, "kHDRProcessingOperationEnum");
    if (v105)
    {
      v106 = *v105;
    }

    else
    {
      v106 = 0;
    }

    _kHDRProcessingOperationEnum = v106;
    v107 = dlsym(hdr_handle, "kHDRProcessingDisplayPipelineCompensationType");
    if (v107)
    {
      v108 = *v107;
    }

    else
    {
      v108 = 0;
    }

    _kHDRProcessingDisplayPipelineCompensationType = v108;
    v109 = dlsym(hdr_handle, "kHDRProcessingDisplayPipelineCompensationTypeNone");
    if (v109)
    {
      v110 = *v109;
    }

    else
    {
      v110 = 0;
    }

    _kHDRProcessingDisplayPipelineCompensationTypeNone = v110;
    v111 = dlsym(hdr_handle, "kHDRProcessingDisplayPipelineCompensationTypePurePower");
    if (v111)
    {
      v112 = *v111;
    }

    else
    {
      v112 = 0;
    }

    _kHDRProcessingDisplayPipelineCompensationTypePurePower = v112;
    v113 = dlsym(hdr_handle, "kHDRProcessingDisplayPipelineCompensationTypeHeadroomDependent");
    if (v113)
    {
      v114 = *v113;
    }

    else
    {
      v114 = 0;
    }

    _kHDRProcessingDisplayPipelineCompensationTypeHeadroomDependent = v114;
    v115 = dlsym(hdr_handle, "kHDRProcessingOrientationKey");
    if (v115)
    {
      v116 = *v115;
    }

    else
    {
      v116 = 0;
    }

    _kHDRProcessingOrientationKey = v116;
    v117 = dlsym(hdr_handle, "kHDRProcessingDisplayAveragePixelThresholdKey");
    if (v117)
    {
      v118 = *v117;
    }

    else
    {
      v118 = 0;
    }

    _kHDRProcessingDisplayAveragePixelThresholdKey = v118;
    v119 = dlsym(hdr_handle, "kHDRProcessingDisplayAveragePixelWeightR");
    if (v119)
    {
      v120 = *v119;
    }

    else
    {
      v120 = 0;
    }

    _kHDRProcessingDisplayAveragePixelWeightR = v120;
    v121 = dlsym(hdr_handle, "kHDRProcessingDisplayAveragePixelWeightG");
    if (v121)
    {
      v122 = *v121;
    }

    else
    {
      v122 = 0;
    }

    _kHDRProcessingDisplayAveragePixelWeightG = v122;
    v123 = dlsym(hdr_handle, "kHDRProcessingDisplayAveragePixelWeightB");
    if (v123)
    {
      v124 = *v123;
    }

    else
    {
      v124 = 0;
    }

    _kHDRProcessingDisplayAveragePixelWeightB = v124;
    v125 = dlsym(hdr_handle, "kHDRProcessingDisplaySustainedBrightnessInNitsKey");
    if (v125)
    {
      v126 = *v125;
    }

    else
    {
      v126 = 0;
    }

    _kHDRProcessingDisplaySustainedBrightnessInNitsKey = v126;
    v127 = dlsym(hdr_handle, "kHDRProcessingDestinationKey");
    if (v127)
    {
      v128 = *v127;
    }

    else
    {
      v128 = 0;
    }

    _kHDRProcessingDestinationKey = v128;
    v129 = dlsym(hdr_handle, "kHDRProcessingPixelFormatKey");
    if (v129)
    {
      v130 = *v129;
    }

    else
    {
      v130 = 0;
    }

    _kHDRProcessingPixelFormatKey = v130;
    v131 = dlsym(hdr_handle, "kHDRProcessingSurfaceAttributesKey");
    if (v131)
    {
      v132 = *v131;
    }

    else
    {
      v132 = 0;
    }

    _kHDRProcessingSurfaceAttributesKey = v132;
    v133 = dlsym(hdr_handle, "kHDRProcessingApiInterfaceVersionKey");
    if (v133)
    {
      v134 = *v133;
    }

    else
    {
      v134 = 0;
    }

    _kHDRProcessingApiInterfaceVersionKey = v134;
    v135 = dlsym(hdr_handle, "kHDRProcessingVersion");
    if (v135)
    {
      v136 = *v135;
    }

    else
    {
      v136 = 0;
    }

    _kHDRProcessingVersion = v136;
    v137 = dlsym(hdr_handle, "kHDRProcessingDolbyVisionHDMIDataKey");
    if (v137)
    {
      v138 = *v137;
    }

    else
    {
      v138 = 0;
    }

    _kHDRProcessingDolbyVisionHDMIDataKey = v138;
    v139 = dlsym(hdr_handle, "kHDRProcessingEdrRangeTypeNormalized");
    if (v139)
    {
      v140 = *v139;
    }

    else
    {
      v140 = 0;
    }

    _kHDRProcessingEdrRangeTypeNormalized = v140;
    v141 = dlsym(hdr_handle, "kHDRProcessingEdrRangeTypeNonNormalized");
    if (v141)
    {
      v142 = *v141;
    }

    else
    {
      v142 = 0;
    }

    _kHDRProcessingEdrRangeTypeNonNormalized = v142;
    v143 = dlsym(hdr_handle, "kHDRProcessingEdrRangeTypeKey");
    if (v143)
    {
      v144 = *v143;
    }

    else
    {
      v144 = 0;
    }

    _kHDRProcessingEdrRangeTypeKey = v144;
    v145 = dlsym(hdr_handle, "kHDRProcessingScreenCaptureSessionKey");
    if (v145)
    {
      v146 = *v145;
    }

    else
    {
      v146 = 0;
    }

    _kHDRProcessingScreenCaptureSessionKey = v146;
    if (_kHDRProcessingVersion)
    {
      _hdrp_version = CFStringGetIntValue(_kHDRProcessingVersion);
    }

    v147 = objc_autoreleasePoolPush();
    hdr_processor_class = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithPath:{@"/System/Library/PrivateFrameworks/HDRProcessing.framework", "classNamed:", @"HDRProcessor"}];
    _hdrp_supports_new_init = [hdr_processor_class instancesRespondToSelector:sel_initProcessingEngine_config_];
    _hdrp_supports_pixel_format_query = [hdr_processor_class instancesRespondToSelector:sel_isFormatSupported_inputFormat_outputFormat_device_];

    objc_autoreleasePoolPop(v147);
  }
}

uint64_t CA::HDRProcessorInternal::create_surface_with_forward_dm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, unsigned int a8, float a9, float a10, char a11, char a12)
{
  v157[4] = *MEMORY[0x1E69E9840];
  if (a11)
  {
    v18 = 1;
  }

  else
  {
    v18 = *(a3 + 520);
  }

  v123 = v18;
  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    v106 = a4;
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
    a4 = v106;
  }

  if (CADeviceHasHardwareAcceleratedHDR::has_capability == 1)
  {
    v19 = v123 < 2 || v123 == 3;
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 89) = v20;
  v21 = *(a2 + 128);
  *&v136[1] = v21;
  *v146 = 0u;
  memset(v148, 0, sizeof(v148));
  *&v146[12] = xmmword_183E213D0;
  v147 = 1065353216;
  LODWORD(v148[0]) = *(a4 + 32);
  *&v148[1] = xmmword_183E20F20;
  v148[3] = 0;
  *(&v148[3] + 7) = 0;
  *(&v148[4] + 4) = 0x100000001;
  memset(&v148[5] + 4, 0, 33);
  v151 = 0;
  v150 = 0;
  v22 = v146;
  v110 = a4;
  if (!a7)
  {
    v22 = a4;
  }

  v122 = v22;
  v149 = 1065353216;
  v152 = -1;
  PixelFormat = IOSurfaceGetPixelFormat(v21);
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v118 = *&dword_1ED4E964C;
  v24 = dword_1ED4E9728;
  v119 = a7;
  v114 = a3;
  v111 = a2;
  if (CA::Render::fourcc_compressed_of_type(dword_1ED4E9728, 0, 0) == v24)
  {
    if (CADeviceSupportsUniversalCompression::once != -1)
    {
      dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
    }

    if (CADeviceSupportsUniversalCompression::universal == 1)
    {
      if (v118)
      {
        v25 = 0;
      }

      else
      {
        v25 = *(a1 + 89);
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 1;
  }

  v136[0] = CA::HDRProcessorInternal::output_pixel_format(a1, v122, v123, v21, v25);
  Width = IOSurfaceGetWidth(*&v136[1]);
  Height = IOSurfaceGetHeight(*&v136[1]);
  ProtectionOptions = IOSurfaceGetProtectionOptions();
  v115 = ProtectionOptions;
  if (*(a1 + 89) == 1)
  {
    CA::ScalerUtil::ScalerLimits::limits(ProtectionOptions);
    v29 = *&xmmword_1EA84FD90;
    if (*&xmmword_1EA84FD90 <= *(&xmmword_1EA84FD90 + 1))
    {
      v29 = *(&xmmword_1EA84FD90 + 1);
    }

    v30 = a9;
    if (a9 > 1.0)
    {
      v30 = 1.0;
    }

    if (v30 >= v29)
    {
      a9 = v30;
    }

    else
    {
      a9 = v29;
    }
  }

  if (byte_1ED4E9870 == 1 && a8 && a9 != 1.0)
  {
    if (x_log_get_filmgrain(void)::once != -1)
    {
      dispatch_once(&x_log_get_filmgrain(void)::once, &__block_literal_global_18204);
    }

    v107 = x_log_get_filmgrain(void)::log;
    if (os_log_type_enabled(x_log_get_filmgrain(void)::log, OS_LOG_TYPE_INFO))
    {
      *v142 = 67109376;
      *&v142[4] = IOSurfaceGetID(*&v136[1]);
      *&v142[8] = 2048;
      *&v142[10] = a9;
      _os_log_impl(&dword_183AA6000, v107, OS_LOG_TYPE_INFO, "[0x%x] combine scale + FG in next MSR pass (scale: %f)", v142, 0x12u);
    }
  }

  v31 = (a9 * Height) + 0.5;
  *v134 = (v31 + 1) & 0xFFFFFFFFFFFFFFFELL;
  *v135 = (((a9 * Width) + 0.5) + 1) & 0xFFFFFFFFFFFFFFFELL;
  if ((a6 & 4) != 0)
  {
    *v134 = (((a9 * Width) + 0.5) + 1) & 0xFFFFFFFFFFFFFFFELL;
    *v135 = (v31 + 1) & 0xFFFFFFFFFFFFFFFELL;
  }

  if (*(a1 + 80) && (a11 & 1) == 0)
  {
    os_unfair_lock_lock((a1 + 20));
    if (!*(a1 + 104) || !*(a1 + 40))
    {
      v143 = 0;
      memset(v142, 0, sizeof(v142));
      v32 = IOSurfaceGetPixelFormat(*(a1 + 80));
      CA::HDRProcessorInternal::get_config(&v131, 0, *&v136[1], v122, &v139, 0, v157, v32);
      v143 = (v133 | 0x100000000);
      *v142 = v131;
      *&v142[16] = v132;
      *v142 = IOSurfaceGetWidth(*(a1 + 80));
      *&v142[4] = IOSurfaceGetHeight(*(a1 + 80));
      CA::HDRProcessorInternal::get_or_create_hdr_processor_instance(a1, 1, v142, v122);
    }

    if (CADeviceSupportsToneMapAcceleratorSwitching::once != -1)
    {
      dispatch_once(&CADeviceSupportsToneMapAcceleratorSwitching::once, &__block_literal_global_294);
    }

    if (CADeviceSupportsToneMapAcceleratorSwitching::accelerator_switching != 1)
    {
      goto LABEL_249;
    }

    if (CADeviceHasHardwareAcceleratedHDR::once != -1)
    {
      dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
    }

    if (v123 == 2 && (CADeviceHasHardwareAcceleratedHDR::has_capability & 1) != 0)
    {
      goto LABEL_50;
    }

    v39 = *(a1 + 80);
    if (!v39)
    {
      goto LABEL_249;
    }

    v112 = v136[0];
    v40 = *v134;
    v41 = *v135;
    v42 = IOSurfaceGetPixelFormat(v39);
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (((v43 = *&dword_1ED4E964C, v44 = CA::Render::fourcc_compressed_of_type(v42, 0, 0), v45 = v44, !v43) || v44 == v42) && IOSurfaceGetWidth(v39) == v41 && IOSurfaceGetHeight(v39) == v40 && v45 == v112 && (IOSurfaceGetProtectionOptions(), IOSurfaceSupportsProtectionOptions()))
    {
LABEL_50:
      v33 = *&v136[1];
      v34 = *(a1 + 80);
      v35 = *(v114 + 452);
      v36 = mach_absolute_time();
      v37 = CATimeWithHostTime(v36);
      if (!CA::HDRProcessorInternal::should_switch_accelerator(a1, v33, v34, v35, a6, a8, v123, 1, v37 + *(v114 + 120) * 2.0))
      {
LABEL_66:
        os_unfair_lock_unlock((a1 + 20));
        goto LABEL_67;
      }

      if (v123 == 2)
      {
        v38 = 1;
      }

      else
      {
        v38 = 2;
      }

      *(v114 + 520) = v38;
    }

    else
    {
LABEL_249:
      if (!a12)
      {
        goto LABEL_66;
      }

      memset(v142, 0, 24);
      CA::HDRProcessorInternal::get_msr_estimate(v142, a1, *&v136[1], *(a1 + 80), a6, a8);
      if (*v142 <= 0.975)
      {
        goto LABEL_66;
      }
    }

    os_unfair_lock_unlock((a1 + 20));
    return 0;
  }

LABEL_67:
  v130 = 0;
  v129 = 0;
  *v142 = &v130;
  *&v142[8] = &v129;
  *&v142[16] = &v136[1];
  *&v142[24] = v136;
  v143 = v135;
  v144 = v134;
  v145 = a1;
  v46 = *(a1 + 64);
  if (!v46 || (CA::HDRProcessorInternal::create_surface_with_forward_dm(CA::Render::Surface const*,CA::Render::Update *,CA::Render::DisplayAttributes const*,BOOL,float,CA::Render::TextureFlags,float,BOOL,BOOL,BOOL,BOOL)::$_0::operator()(v142, *(v46 + 8), 0), !v129) || !*(a1 + 72))
  {
    CA::HDRProcessorInternal::create_surface_with_forward_dm(CA::Render::Surface const*,CA::Render::Update *,CA::Render::DisplayAttributes const*,BOOL,float,CA::Render::TextureFlags,float,BOOL,BOOL,BOOL,BOOL)::$_0::operator()(v142, *(a1 + 56), *(a1 + 64));
  }

  if (v130 < 2)
  {
    v49 = 3;
  }

  else
  {
    v48 = *(a1 + 72);
    if (!v48)
    {
      goto LABEL_76;
    }

    v49 = v48 - 1;
  }

  *(a1 + 72) = v49;
LABEL_76:
  if (!v129)
  {
LABEL_80:
    if (v25)
    {
      v52 = HIBYTE(PixelFormat);
      if (HIBYTE(PixelFormat) == 45)
      {
        v53 = 0;
      }

      else if (v52 == 124)
      {
        v53 = 2;
      }

      else if (v52 == 47)
      {
        v53 = 1;
      }

      else
      {
        v53 = -1;
      }

      v55 = v136[0];
      if (v136[0] == 1882469428)
      {
        v53 = -1;
      }

      if (v53 > 2)
      {
        v54 = 2;
      }

      else
      {
        v54 = dword_183E2484C[v53];
      }
    }

    else
    {
      v54 = 0;
      v55 = v136[0];
    }

    v56 = (MEMORY[0xFFFFFC020] >> 9) & 4;
    iosurface_with_pixel_format = CA::Render::create_iosurface_with_pixel_format(v55, v135[0], v134[0], v54 | v56, v115, @"CA Forward DM", v47);
    v59 = *(a1 + 80);
    if (!v59)
    {
      goto LABEL_104;
    }

    v60 = v136[0];
    v61 = *v134;
    v62 = *v135;
    v63 = IOSurfaceGetPixelFormat(v59);
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (*&dword_1ED4E964C && CA::Render::fourcc_compressed_of_type(v63, 0, 0) != v63 || IOSurfaceGetWidth(v59) != v62 || (v64 = CA::Render::fourcc_compressed_of_type(v63, 0, 0), IOSurfaceGetHeight(v59) != v61) || v64 != v60 || (IOSurfaceGetProtectionOptions(), (IOSurfaceSupportsProtectionOptions() & 1) == 0))
    {
LABEL_104:
      if (*(a1 + 89) == 1)
      {
        if (CADeviceSupportsToneMapAcceleratorSwitching::once != -1)
        {
          dispatch_once(&CADeviceSupportsToneMapAcceleratorSwitching::once, &__block_literal_global_294);
        }

        if (CADeviceSupportsToneMapAcceleratorSwitching::accelerator_switching == 1)
        {
          v65 = CA::Render::create_iosurface_with_pixel_format(v136[0], v135[0], v134[0], v54 | v56, v115, @"CA Estimate Surface", v57);
          v66 = *(a1 + 80);
          if (v66)
          {
            CFRelease(v66);
          }

          *(a1 + 80) = v65;
        }

        else
        {
          v67 = *(a1 + 80);
          if (v67 != iosurface_with_pixel_format)
          {
            if (v67)
            {
              CFRelease(v67);
            }

            *(a1 + 80) = iosurface_with_pixel_format;
            if (!iosurface_with_pixel_format)
            {
              return 0;
            }

            CFRetain(iosurface_with_pixel_format);
            v68 = iosurface_with_pixel_format;
LABEL_117:
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v69 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
            if (v69)
            {
              CA::Render::Surface::Surface(v69, v68, -1, 127, 0, 0, 0);
              operator new();
            }

            operator new();
          }
        }
      }
    }

    v68 = iosurface_with_pixel_format;
    if (iosurface_with_pixel_format)
    {
      goto LABEL_117;
    }

    return 0;
  }

  v50 = **v129;
  if (!v50)
  {
    *(a1 + 64) = v129;
    goto LABEL_80;
  }

  atomic_fetch_add((v50 + 8), 1u);
  v51 = *(v50 + 128);
  *(a1 + 64) = v129;
  v128 = 0;
  v133 = 0;
  v131 = 0u;
  v132 = 0u;
  v127 = 0;
  v113 = v51;
  CA::HDRProcessorInternal::get_config(&v139, v51, *&v136[1], v122, &v128, 0, &v127, 0x42475241);
  v131 = v139;
  v132 = v140;
  v133 = v141;
  if (CADeviceSupportsToneMapAcceleratorSwitching::once != -1)
  {
    dispatch_once(&CADeviceSupportsToneMapAcceleratorSwitching::once, &__block_literal_global_294);
  }

  if (CADeviceSupportsToneMapAcceleratorSwitching::accelerator_switching == 1)
  {
    if (CADeviceHasHardwareAcceleratedHDR::once != -1)
    {
      dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
    }

    if (v123 == 2 && (CADeviceHasHardwareAcceleratedHDR::has_capability & 1) != 0)
    {
      *(&v132 + 1) = *MEMORY[0x1E6965DB0];
    }
  }

  if (*(a1 + 89))
  {
    started = 0;
  }

  else
  {
    started = CA::HDRProcessorInternal::start_command_buffer(a1, v115, v70);
  }

  if (v118)
  {
    a5 = 0;
    if (*&dword_1ED4E964C > 0.0)
    {
      *&dword_1ED4E964C = *&dword_1ED4E964C + -1.0;
    }
  }

  v126 = 0;
  v125 = HIDWORD(v131);
  v72 = v119 & a8;
  if ((v119 & a8) == 1)
  {
    v73 = *(v111 + 56);
    if (v73)
    {
      CA::Render::Texture::set_colorspace(v50, *(v111 + 56));
      CA::Render::iosurface_set_colorspace(v113, v73, v74);
    }

    v75 = *&v136[1];
    contexta = objc_autoreleasePoolPush();
    if (*(a1 + 89) == 1 && !*(a1 + 104))
    {
      if (CA::WindowServer::accelerator_runloop(void)::once[0] != -1)
      {
        dispatch_once(CA::WindowServer::accelerator_runloop(void)::once, &__block_literal_global_6932);
      }

      CA::IOSAManager::create_new_iosa_manager(CA::WindowServer::accelerator_runloop(void)::runloop, v76);
    }

    v77 = BYTE12(xmmword_1ED4E988C);
    v78 = *MEMORY[0x1E69A85B8];
    *&v139 = MEMORY[0x1E695E110];
    v79 = *MEMORY[0x1E69A85C0];
    v157[0] = v78;
    v157[1] = v79;
    *(&v139 + 1) = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a6 & 7];
    v157[2] = *MEMORY[0x1E69A84C8];
    *&v140 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v157[3] = *MEMORY[0x1E69A84A0];
    *(&v140 + 1) = [MEMORY[0x1E696AD98] numberWithBool:(v77 ^ 1) & 1];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:v157 count:4];
    v138 = qword_1EF1FA0B8;
    v137 = xmmword_1EF1FA0A8;
    v80 = IOSurfaceAcceleratorTransformSurface();
    if ((a5 & 1) == 0)
    {
      (v137)(*(&v137 + 1), 0, v138);
    }

    if (v80)
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v81 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        ID = IOSurfaceGetID(v75);
        *buf = 67109376;
        v154 = v80;
        v155 = 1024;
        v156 = ID;
        _os_log_error_impl(&dword_183AA6000, v81, OS_LOG_TYPE_ERROR, "MSR failed err=0x%x sur=0x%x", buf, 0xEu);
      }

      objc_autoreleasePoolPop(contexta);
      goto LABEL_153;
    }

    if (byte_1ED4E9870 == 1)
    {
      if (x_log_get_filmgrain(void)::once != -1)
      {
        dispatch_once(&x_log_get_filmgrain(void)::once, &__block_literal_global_18204);
      }

      v108 = x_log_get_filmgrain(void)::log;
      if (os_log_type_enabled(x_log_get_filmgrain(void)::log, OS_LOG_TYPE_INFO))
      {
        v109 = IOSurfaceGetID(v75);
        *buf = 67109120;
        v154 = v109;
        _os_log_impl(&dword_183AA6000, v108, OS_LOG_TYPE_INFO, "[0x%x] [SDR] MSR Successfully applied film grain", buf, 8u);
      }
    }

    objc_autoreleasePoolPop(contexta);
  }

  else if ((CA::HDRProcessorInternal::tonemap_surface_internal(a1, v113, *&v136[1], v114, 0, 0, &v131, &v125, a10, v128, v122, v123, a5, started, &v126, a6, SHIWORD(a6), a8, 0, 0, 0) & 1) == 0)
  {
LABEL_153:

    if (atomic_fetch_add((v50 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v50 + 16))(v50);
    }

    return 0;
  }

  if (*(v114 + 445) == 1)
  {
    v83 = IOSurfaceCopyValue(*&v136[1], _kHDRProcessingDolbyVisionRPUDataKey);
    if (v83)
    {
      v84 = 160;
LABEL_165:
      X::CFRef<__CFData const*>::operator=((v50 + v84), v83);
      CFRelease(v83);
    }
  }

  else if (*(v114 + 447) == 1)
  {
    v83 = IOSurfaceCopyValue(v113, _kHDRProcessingDolbyVisionHDMIDataKey);
    if (v83)
    {
      v84 = 168;
      goto LABEL_165;
    }
  }

  CA::Render::Surface::reload_iosurface_color_attributes(v50, 0x7E);
  v85 = v119;
  if (started)
  {
    CA::HDRProcessorInternal::commit_command_buffer(started, a5);
    v85 = v119;
    if (a5)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZN2CA20HDRProcessorInternal30create_surface_with_forward_dmEPKNS_6Render7SurfaceEPNS1_6UpdateEPKNS1_17DisplayAttributesEbfNS1_12TextureFlagsEfbbbb_block_invoke;
      aBlock[3] = &unk_1E6DEDDC8;
      aBlock[4] = started;
      v86 = *(v50 + 344);
      if (v86)
      {
        (*(v86 + 16))(v86, 1);
        _Block_release(*(v50 + 344));
        *(v50 + 344) = 0;
      }

      *(v50 + 344) = _Block_copy(aBlock);
    }
  }

  v88 = CA::Render::fourcc_compressed_of_type(v132, 0, 0);
  v89 = v110;
  if ((v72 & 1) == 0)
  {
    switch(v127)
    {
      case 16:
        if (*MEMORY[0x1E6965DB0] == *(&v132 + 1))
        {
          v90 = 18;
        }

        else if (*MEMORY[0x1E6965DD0] == *(&v132 + 1))
        {
          v90 = 9;
        }

        else
        {
          if (*MEMORY[0x1E6965DB8] != *(&v132 + 1))
          {
            goto LABEL_195;
          }

          v90 = 25;
        }

        break;
      case 13:
        if (*MEMORY[0x1E6965DB0] == *(&v132 + 1))
        {
          v90 = 19;
        }

        else if (*MEMORY[0x1E6965DD0] == *(&v132 + 1))
        {
          v90 = 6;
        }

        else
        {
          if (*MEMORY[0x1E6965DB8] != *(&v132 + 1))
          {
            goto LABEL_195;
          }

          v90 = 36;
        }

        break;
      case 8:
        if (*MEMORY[0x1E6965DB8] == *(&v132 + 1))
        {
          v90 = 33;
        }

        else if (*MEMORY[0x1E6965DD0] == *(&v132 + 1))
        {
          v90 = 20;
        }

        else
        {
          if (*MEMORY[0x1E6965DB0] != *(&v132 + 1))
          {
            goto LABEL_195;
          }

          v90 = 13;
        }

        break;
      default:
        goto LABEL_195;
    }

    v92 = CAGetColorSpace(v90);
    v89 = v110;
    if (v92)
    {
      CA::Render::Texture::set_colorspace(v50, v92);
      v89 = v110;
    }
  }

LABEL_195:
  if (v85)
  {
    v93 = v146;
  }

  else
  {
    v93 = v89;
  }

  v94 = *(v93 + 17);
  if (v94 <= 6)
  {
    v95 = 1 << v94;
    if ((v95 & 0x1C) == 0)
    {
      v96 = 1.0;
      if ((v95 & 0x61) != 0 && (v88 != 1919365992 && v88 != 1380411457 || *(a1 + 89) == 1))
      {
        v96 = 1.0 / *(v122 + 20);
      }

LABEL_218:
      *(v50 + 368) |= 4u;
      if (*(v50 + 148) != v96)
      {
        *(v50 + 148) = v96;
        CA::Render::iosurface_set_edr_factor(*(v50 + 128), v87, v96);
        v89 = v110;
      }

      goto LABEL_220;
    }

    if (v88 == 1919365992 || v88 == 1380411457)
    {
      (*(*v50 + 168))(v50);
      v89 = v110;
      if (*(a1 + 89) != 1 || *(v93 + 17) != 2 || (*(v122 + 61) & 1) != 0 || (BYTE6(xmmword_1ED4E980C) & 1) != 0)
      {
        if ((*(v50 + 368) & 4) == 0)
        {
          v96 = HIDWORD(v131);
        }
      }

      else
      {
        v97 = v146;
        if (!v119)
        {
          v97 = v110;
        }

        v98 = v97[7];
        v99 = v98 * 0.1;
        v19 = v98 == 0.0;
        v96 = 0.2;
        if (!v19)
        {
          v96 = v99;
        }
      }

      goto LABEL_218;
    }
  }

LABEL_220:
  if (v127 == 16)
  {
    v100 = v146;
    if (v119)
    {
      v101 = v146;
    }

    else
    {
      v101 = v89;
    }

    v102 = v101[7];
    if (v102 == 0.0)
    {
      v102 = 1.0;
    }

    if (v126 == 1)
    {
      if (!v119)
      {
        v100 = v89;
      }

      v102 = (v125 * v102) / v100[3];
    }

    *(v50 + 368) |= 4u;
    if (*(v50 + 148) != v102)
    {
      *(v50 + 148) = v102;
      CA::Render::iosurface_set_edr_factor(*(v50 + 128), v87, v102);
    }
  }

  if (v123 == 2)
  {
    v103 = 136;
  }

  else
  {
    v103 = 8;
  }

  *(v50 + 368) = v103 | *(v50 + 368) & 0xFF67;
  *(v50 + 12) &= 0xFFFFF8FF;
  if (v118)
  {
    v104 = CAIOSurfaceWriteToFileWithSuffix(*&v136[1], "hdr-tonemap-src");
    free(v104);
    v105 = CAIOSurfaceWriteToFileWithSuffix(v113, "hdr-tonemap-dst");
    free(v105);
  }

  return v50;
}

uint64_t CA::HDRProcessorInternal::should_switch_accelerator(uint64_t a1, IOSurfaceRef buffer, __IOSurface *a3, unsigned int a4, char a5, uint64_t a6, int a7, char a8, double a9)
{
  v47 = *MEMORY[0x1E69E9840];
  PixelFormat = IOSurfaceGetPixelFormat(buffer);
  v19 = CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  memset(buf, 0, sizeof(buf));
  if (IOSurfaceGetBulkAttachments())
  {
    v21 = 0;
  }

  else
  {
    v20 = IOSurfaceCopyAllValues(buffer);
    if (CFDictionaryGetValue(v20, _kHDRProcessingDolbyVisionRPUDataKey) && (BYTE12(v41) & 0xFD) == 0x10)
    {
      v21 = _kHDRProcessingSourceContentTypeDolbyVision;
      if (!v20)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (BYTE12(v41) == 18)
    {
      goto LABEL_12;
    }

    if (BYTE12(v41) != 16 || BYTE11(v41) > 0xCu || ((1 << SBYTE11(v41)) & 0x1202) == 0)
    {
      if (CA_CFDictionaryGetBool(v20, @"isHLG"))
      {
LABEL_12:
        v21 = _kHDRProcessingSourceContentTypeHLG;
        if (!v20)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      if (v19 != 1380411457 && CA::Render::fourcc_to_format(v19) - 33 > 2)
      {
        if (x_log_get_utilities::once != -1)
        {
          dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
        }

        v34 = x_log_get_utilities::log;
        if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
        {
          *v36 = 67109376;
          *&v36[4] = BYTE12(v41);
          LOWORD(v37) = 1024;
          *(&v37 + 2) = BYTE11(v41);
          _os_log_error_impl(&dword_183AA6000, v34, OS_LOG_TYPE_ERROR, "Unknown HDR surface with transfer index %d color index %d", v36, 0xEu);
        }

        v21 = 0;
        if (!v20)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    v21 = _kHDRProcessingSourceContentTypeHDR10;
    if (v20)
    {
LABEL_17:
      CFRelease(v20);
    }
  }

LABEL_18:
  if (CADeviceSupportsToneMapAcceleratorSwitching::once != -1)
  {
    dispatch_once(&CADeviceSupportsToneMapAcceleratorSwitching::once, &__block_literal_global_294);
  }

  result = 0;
  if (CADeviceSupportsToneMapAcceleratorSwitching::accelerator_switching == 1 && (byte_1ED4E980B & 1) == 0)
  {
    result = 0;
    if (a4 <= 6 && ((1 << a4) & 0x61) != 0)
    {
      if (v21 != _kHDRProcessingSourceContentTypeHDR10 && v21 != _kHDRProcessingSourceContentTypeHLG)
      {
        return 0;
      }

      v23 = IOSurfaceGetPixelFormat(a3);
      v24 = CA::Render::fourcc_compressed_of_type(v23, 0, 0);
      v25 = IOSurfaceGetPixelFormat(buffer);
      v26 = CA::Render::fourcc_compressed_of_type(v25, 0, 0);
      if ((a8 & 1) != 0 || _hdrp_supports_pixel_format_query != 1 || (result = [*(a1 + 40) isFormatSupported:0 inputFormat:v26 outputFormat:v24 device:*(a1 + 24)], result))
      {
        *v36 = 0;
        v37 = 0;
        v38 = 0;
        CA::HDRProcessorInternal::get_msr_estimate(v36, a1, buffer, a3, a5, a6);
        v27 = mach_absolute_time();
        v28 = CATimeWithHostTime(v27);
        v29 = v37;
        v30 = v38;
        if (x_log_get_utilities::once != -1)
        {
          dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
        }

        v31 = x_log_get_utilities::log;
        if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEBUG))
        {
          v35 = "beat";
          if (v28 + (v30 + v29) * 0.000001 > a9)
          {
            v35 = "missed";
          }

          *buf = 136315906;
          *&buf[4] = v35;
          *&buf[12] = 2048;
          *&buf[14] = a9;
          *&buf[22] = 2048;
          *&buf[24] = v28 + (v30 + v29) * 0.000001;
          LOWORD(v40) = 2048;
          *(&v40 + 2) = (*v36 * 100.0);
          _os_log_debug_impl(&dword_183AA6000, v31, OS_LOG_TYPE_DEBUG, "IOSA %s deadline: %f, with completion estimate: %f.\nCurrent MSR utilization: %.2f%%", buf, 0x2Au);
        }

        v32 = mach_absolute_time();
        if (a7 == 2)
        {
          v33 = CATimeWithHostTime(v32);
          if (v38 / ((a9 - v33) * 1000000.0) + *v36 < 0.9)
          {
            return 1;
          }
        }

        else if (*v36 > 0.975)
        {
          return 1;
        }

        return 0;
      }
    }
  }

  return result;
}

void sub_183CEEAAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::HDRProcessorInternal::get_msr_estimate(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v9 = malloc_type_calloc(1uLL, 0x28uLL, 0x10000407607B2BCuLL);
  *v9 = 3;
  v9[2] = 0;
  v9[3] = 0;
  v9[1] = 0;
  *(v9 + 8) = 0;
  v10 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v9 length:40 freeWhenDone:1];
  v11 = *MEMORY[0x1E69A8498];
  v16 = v10;
  v17[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v13 = *MEMORY[0x1E69A84D8];
  v18[0] = v12;
  v18[1] = MEMORY[0x1E695E118];
  v14 = *MEMORY[0x1E69A85B8];
  v17[1] = v13;
  v17[2] = v14;
  v18[2] = MEMORY[0x1E695E110];
  v17[3] = *MEMORY[0x1E69A85C0];
  v18[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a5 & 7];
  v17[4] = *MEMORY[0x1E69A84C8];
  v18[4] = [MEMORY[0x1E696AD98] numberWithBool:a6];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return IOSurfaceAcceleratorGetTransformEstimation();
}

uint64_t CA::HDRProcessorInternal::create_surface_with_forward_dm(CA::Render::Surface const*,CA::Render::Update *,CA::Render::DisplayAttributes const*,BOOL,float,CA::Render::TextureFlags,float,BOOL,BOOL,BOOL,BOOL)::$_0::operator()(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    v6 = *(result + 48);
    do
    {
      v8 = *v4;
      v7 = v4[1];
      result = IOSurfaceIsInUse(*(**v4 + 128));
      if (!result)
      {
        v9 = *v8;
        if (*(*v8 + 8) == 1)
        {
          v10 = *(v5 + 8);
          ++**v5;
          if (*v10)
          {
            goto LABEL_6;
          }

          v13 = *(v9 + 16);
          if (!v13)
          {
            goto LABEL_6;
          }

          v19 = **(v5 + 24);
          v14 = **(v5 + 32);
          v15 = **(v5 + 40);
          PixelFormat = IOSurfaceGetPixelFormat(v13);
          if (initialized[0] != -1)
          {
            dispatch_once_f(initialized, 0, init_debug);
          }

          if ((!*&dword_1ED4E964C || CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0) == PixelFormat) && IOSurfaceGetWidth(v13) == v14 && ((v17 = CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0), IOSurfaceGetHeight(v13) == v15) ? (v18 = v17 == v19) : (v18 = 0), v18 && (IOSurfaceGetProtectionOptions(), result = IOSurfaceSupportsProtectionOptions(), result)))
          {
            **(v5 + 8) = v4;
            if (*(v6 + 72))
            {
              return result;
            }
          }

          else
          {
LABEL_6:
            --**v5;
            v11 = *(v6 + 56);
            x_list_remove(v11, v8);
            *(v6 + 56) = v11;
            v12 = *v8;
            if (*v8)
            {
              if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v12 + 16))(v12);
              }
            }

            result = MEMORY[0x1865EA9A0](v8, 0x20C4093837F09);
          }
        }
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

id CA::HDRProcessorInternal::start_command_buffer(id *this, uint64_t a2, const char *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  CA::HDRProcessorInternal::initialize_metal(this);
  v5 = [this[4] commandBuffer];
  v6 = v5;
  if (v5)
  {
    [v5 setProtectionOptions:a2];
  }

  else
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v7 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "command buffer allocation failed!\n", &v9, 2u);
    }
  }

  return v6;
}

uint64_t CA::HDRProcessorInternal::tonemap_surface_internal(uint64_t a1, __IOSurface *a2, __IOSurface *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float *a8, float a9, unsigned int a10, uint64_t a11, unsigned int a12, char a13, void *a14, _BYTE *a15, char a16, __int16 a17, char a18, uint64_t a19, char a20, _DWORD *a21)
{
  v241 = *MEMORY[0x1E69E9840];
  if (hdrprocessing_init_once != -1)
  {
    v122 = a5;
    dispatch_once_f(&hdrprocessing_init_once, 0, load_hdrprocessing_symbols);
    a5 = v122;
  }

  if (hdr_handle)
  {
    v175 = a6;
    v177 = a7;
    v173 = a4;
    v174 = a5;
    v179 = a1;
    v29 = objc_autoreleasePoolPush();
    PixelFormat = IOSurfaceGetPixelFormat(a2);
    v31 = CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0);
    v32 = IOSurfaceGetPixelFormat(a3);
    v33 = CA::Render::fourcc_compressed_of_type(v32, 0, 0);
    v199 = 0;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0;
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v181[1] = 132;
    BulkAttachments = IOSurfaceGetBulkAttachments();
    v35 = 0;
    if (IOSurfaceGetBulkAttachments() | BulkAttachments)
    {
LABEL_29:
      v45 = a21;
      goto LABEL_30;
    }

    v35 = IOSurfaceCopyAllValues(a3);
    Value = CFDictionaryGetValue(v35, _kHDRProcessingDolbyVisionRPUDataKey);
    v172 = v35;
    if (Value && (BYTE12(v194) & 0xFD) == 0x10)
    {
      v37 = &_kHDRProcessingSourceContentTypeDolbyVision;
LABEL_19:
      v39 = *v37;
      if (*v37)
      {
        v40 = a11;
        if (CADeviceHasHardwareAcceleratedHDR::once != -1)
        {
          dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
        }

        v169 = a2;
        buffer = a3;
        if (CADeviceHasHardwareAcceleratedHDR::has_capability)
        {
          v41 = a12 < 2;
          if (a12 == 3)
          {
            v41 = 1;
          }

          *(v179 + 89) = v41;
          v168 = (v179 + 89);
          v42 = v33;
          if (a12 <= 3 && a12 != 2)
          {
            v43 = v29;
            v44 = 1;
            v163 = 1;
            goto LABEL_35;
          }

          v43 = v29;
        }

        else
        {
          v42 = v33;
          v43 = v29;
          *(v179 + 89) = 0;
          v168 = (v179 + 89);
        }

        v44 = 0;
        v163 = 0;
LABEL_35:
        *(v177 + 36) = v44;
        os_unfair_lock_lock((v179 + 20));
        v166 = v44;
        hdr_processor_instance = CA::HDRProcessorInternal::get_or_create_hdr_processor_instance(v179, v44, v177, a11);
        v29 = v43;
        v47 = v169;
        if (hdr_processor_instance)
        {
          v164 = v43;
          os_unfair_lock_unlock((v179 + 20));
          v180 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v48 = v42;
          v49 = buffer;
          if (_hdrp_version >= 1)
          {
            [v180 setObject:&unk_1EF22B9A0 forKeyedSubscript:_kHDRProcessingApiInterfaceVersionKey];
          }

          if (_kHDRProcessingScreenCaptureSessionKey)
          {
            v50 = [MEMORY[0x1E696AD98] numberWithBool:*(a11 + 66)];
            [v180 setObject:v50 forKeyedSubscript:_kHDRProcessingScreenCaptureSessionKey];
          }

          if (_kHDRProcessingGCPGammaValueKey)
          {
            if (CADeviceSupportsGCP::once != -1)
            {
              dispatch_once(&CADeviceSupportsGCP::once, &__block_literal_global_488);
            }

            if (CADeviceSupportsGCP::b == 1 && (byte_1ED4E98A8 & 1) == 0 && *(a11 + 32) != 0.0)
            {
              v51 = [MEMORY[0x1E696AD98] numberWithFloat:?];
              [v180 setObject:v51 forKeyedSubscript:_kHDRProcessingGCPGammaValueKey];
            }
          }

          if (_kHDRProcessingHDRConstraintStrengthKey && (*(a11 + 62) & 1) == 0)
          {
            v52 = [MEMORY[0x1E696AD98] numberWithDouble:a9 * 0.5];
            [v180 setObject:v52 forKeyedSubscript:_kHDRProcessingHDRConstraintStrengthKey];
          }

          v170 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v170 setObject:v39 forKeyedSubscript:_kHDRProcessingSourceContentTypeKey];
          if (_kHDRProcessingSourceContentHDRMaxBrightnessInNitsKey)
          {
            [v170 setObject:&unk_1EF22B9B8 forKeyedSubscript:?];
          }

          v53 = *(a11 + 20);
          v54 = *(a11 + 68);
          v29 = v164;
          if (v54 > 6 || ((1 << v54) & 0x61) == 0)
          {
            if (*(a11 + 58) == 1)
            {
              v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v177 + 12)];
              v31 = v179;
              [v180 setObject:v72 forKeyedSubscript:_kHDRProcessingCurrentMaxPanelNitsKey];
              [v180 setObject:&unk_1EF22B9D0 forKeyedSubscript:_kHDRProcessingAmbientLightInNitsKey];
            }

            else
            {
              v31 = v179;
            }

            goto LABEL_107;
          }

          v55 = *(a11 + 12);
          if (CADeviceSupportsTwilight::once == -1)
          {
            if (!Value)
            {
              goto LABEL_74;
            }
          }

          else
          {
            dispatch_once(&CADeviceSupportsTwilight::once, &__block_literal_global_359);
            if (!Value)
            {
              goto LABEL_74;
            }
          }

          if ((CADeviceSupportsTwilight::twilight & 1) != 0 && *(a11 + 57) == 1 && (byte_1ED4E9866 & 1) == 0)
          {
            *v237 = 0;
            v238 = v237;
            v239 = 0x2020000000;
            v56 = getCMGetDMVersionLevelFromRPUSymbolLoc(void)::ptr;
            v240 = getCMGetDMVersionLevelFromRPUSymbolLoc(void)::ptr;
            if (!getCMGetDMVersionLevelFromRPUSymbolLoc(void)::ptr)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = ___ZL38getCMGetDMVersionLevelFromRPUSymbolLocv_block_invoke;
              *v204 = &unk_1E6DEDE18;
              *&v204[8] = v237;
              ___ZL38getCMGetDMVersionLevelFromRPUSymbolLocv_block_invoke(buf);
              v56 = *(v238 + 3);
            }

            _Block_object_dispose(v237, 8);
            if (!v56)
            {
              dlerror();
              abort_report_np();
              __break(1u);
              goto LABEL_285;
            }

            if (v56(Value) <= 3)
            {
              v57 = v53 * 0.125 + -1.0;
              v58 = v57 > 1.0 || v57 < 0.0;
              v59 = 4.0;
              if (v57 < 0.0 && v57 <= 1.0)
              {
                v59 = 6.0;
              }

              v60 = v57;
              v61 = (v60 * -2.0) + 6.0;
              if (v58)
              {
                v61 = v59;
              }

              v62 = v61 * v53;
              if (v55 <= v62)
              {
                v55 = v62;
              }

              if (a15)
              {
                *a15 = 1;
              }
            }
          }

LABEL_74:
          v63 = 100.0;
          if (v55 != 0.0)
          {
            v63 = v55;
          }

          *(v177 + 12) = v63;
          *a8 = v63;
          v64 = [MEMORY[0x1E696AD98] numberWithFloat:?];
          [v180 setObject:v64 forKeyedSubscript:_kHDRProcessingCurrentMaxPanelNitsKey];
          *&v65 = v53;
          v66 = [MEMORY[0x1E696AD98] numberWithFloat:v65];
          [v180 setObject:v66 forKeyedSubscript:_kHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKey];
          if (v31 != 1919365992)
          {
            if (v31 == 1380411457)
            {
              if (*v168)
              {
LABEL_79:
                *&v67 = 1.0 / v53;
                v68 = [MEMORY[0x1E696AD98] numberWithFloat:v67];
                v31 = v179;
                [v180 setObject:v68 forKeyedSubscript:_kHDRProcessingEDRFactorKey];
LABEL_90:
                LODWORD(v69) = *(a11 + 16);
                v73 = [MEMORY[0x1E696AD98] numberWithFloat:v69];
                [v180 setObject:v73 forKeyedSubscript:_kHDRProcessingAmbientLightInNitsKey];
                if (*(a11 + 56) == 1 && _kHDRProcessingDisplaySupportsAmbientAdaptationKey)
                {
                  [v180 setObject:MEMORY[0x1E695E118] forKeyedSubscript:?];
                }

                if (*(a11 + 62) & 1) != 0 || (byte_1ED4E981D)
                {
                  v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
                  [v180 setObject:v74 forKeyedSubscript:_kHDRProcessingOperationEnum];
                  a10 = 1;
                }

                v75 = *(a11 + 68);
                if (v75 <= 6 && ((1 << v75) & 0x61) != 0)
                {
                  v76 = *(a11 + 72);
                  v77 = &_kHDRProcessingDisplayPipelineCompensationTypeNone;
                  if (v76 == 1 || (xmmword_1ED4E980C & 1) != 0)
                  {
                    goto LABEL_106;
                  }

                  if (v76 == 3)
                  {
                    v77 = &_kHDRProcessingDisplayPipelineCompensationTypeHeadroomDependent;
                    goto LABEL_106;
                  }

                  if (v76 == 2)
                  {
                    v77 = &_kHDRProcessingDisplayPipelineCompensationTypePurePower;
LABEL_106:
                    [v180 setObject:*v77 forKeyedSubscript:_kHDRProcessingDisplayPipelineCompensationType];
                  }
                }

LABEL_107:
                if (v39 == _kHDRProcessingSourceContentTypeDolbyVision && Value)
                {
                  [v180 setObject:Value forKeyedSubscript:_kHDRProcessingDolbyVisionRPUDataKey];
                }

                v78 = forward_display_params_from_attributes(a11, 0);
                if (v78)
                {
                  [v180 setObject:v78 forKeyedSubscript:_kHDRProcessingDisplayKey];
                }

                if ((v48 == 1380411457 || CA::Render::fourcc_to_format(v48) - 33 <= 2) && BYTE12(v194) != 16)
                {
                  v80 = IOSurfaceCopyValue(buffer, @"SDRBrightnessInNits");
                  v82 = v80;
                  if (v80)
                  {
                    v83 = CA_CFFloatValue(v80);
                    CFRelease(v82);
                  }

                  else
                  {
                    v83 = 100.0;
                  }

                  *&v81 = v83;
                  v84 = [MEMORY[0x1E696AD98] numberWithFloat:v81];
                  [v170 setObject:v84 forKeyedSubscript:_kHDRProcessingSourceContentSDRMaxBrightnessInNitsKey];
                }

                if (*(a11 + 61) == 1)
                {
                  if (a10 == 4)
                  {
                    v85 = *(a11 + 28);
                    if (initialized[0] != -1)
                    {
                      dispatch_once_f(initialized, 0, init_debug);
                    }

                    v86 = v85 * 100.0;
                    if (v85 == 0.0)
                    {
                      v86 = 200.0;
                    }

                    *&v79 = truncf(*&dword_1ED4E96B0);
                    if (!*&dword_1ED4E96B0)
                    {
                      *&v79 = v86;
                    }

                    v87 = [MEMORY[0x1E696AD98] numberWithFloat:v79];
                    [v170 setObject:v87 forKeyedSubscript:_kHDRProcessingSourceContentSDRMaxBrightnessInNitsKey];
                    if (!a19 && a20 != 2 && (*(a11 + 68) - 3) <= 1)
                    {
                      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      v89 = Mutable;
                      if (Mutable)
                      {
                        v90 = flt_183E204D8[a20 == 0];
                        v91 = flt_183E204E0[a20 == 0];
                        CA_CFDictionarySetFloat(Mutable, *MEMORY[0x1E696CF50], 0.015);
                        CA_CFDictionarySetFloat(v89, *MEMORY[0x1E696CF48], v91);
                        CA_CFDictionarySetFloat(v89, *MEMORY[0x1E696CF40], v90);
                        CA_CFDictionarySetInt(v89, *MEMORY[0x1E696CF38], 16);
                        IOSurfaceSetValue(v169, *MEMORY[0x1E696CF30], v89);
                        CFRelease(v89);
                      }

                      else
                      {
                        if (x_log_get_utilities::once != -1)
                        {
                          dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
                        }

                        v93 = x_log_get_utilities::log;
                        if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_error_impl(&dword_183AA6000, v93, OS_LOG_TYPE_ERROR, "unable to set static PQ stats, no dictionary created.", buf, 2u);
                        }
                      }
                    }
                  }

                  if (BYTE12(v194) == 18)
                  {
                    LODWORD(v79) = *(a11 + 4);
                    v94 = [MEMORY[0x1E696AD98] numberWithFloat:v79];
                    [v180 setObject:v94 forKeyedSubscript:_kHDRProcessingCurrentMaxPanelNitsKey];
                    a10 = 3;
                  }

                  if (a19)
                  {
                    [v180 setObject:a19 forKeyedSubscript:_kHDRProcessingDolbyVisionRPUDataKey];
                  }
                }

                [v180 setObject:v170 forKeyedSubscript:_kHDRProcessingSourceContentKey];

                v95 = v168;
                if (*v168 == 1)
                {
                  v56 = a21;
                  if (*(a11 + 68) == 2 && (*(a11 + 61) & 1) == 0 && (BYTE6(xmmword_1ED4E980C) & 1) == 0)
                  {
                    [v180 setObject:&unk_1EF22B8D0 forKeyedSubscript:_kHDRProcessingCurrentMaxPanelNitsKey];
                    a10 = 3;
                    v56 = a21;
                    v95 = v168;
                  }
                }

                else
                {
                  v56 = a21;
                }

                IOSurfaceGetID(buffer);
                IOSurfaceGetID(v169);
                if (BYTE11(xmmword_1ED4E980C) == 1)
                {
                  kdebug_trace();
                }

                if (*(a11 + 68))
                {
                  IOSurfaceRemoveValue(v169, *MEMORY[0x1E696CF00]);
                }

                if (byte_1ED4E983D == 1)
                {
                  v171 = [objc_msgSend(v180 "debugDescription")];
                  if (x_log_get_utilities::once != -1)
                  {
                    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
                  }

                  v124 = x_log_get_utilities::log;
                  v29 = v164;
                  v31 = v179;
                  v56 = a21;
                  v95 = v168;
                  v47 = v169;
                  v49 = buffer;
                  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
                  {
                    if (*v168)
                    {
                      v125 = "MSR";
                    }

                    else
                    {
                      v125 = "GPU";
                    }

                    ID = IOSurfaceGetID(buffer);
                    Width = IOSurfaceGetWidth(buffer);
                    Height = IOSurfaceGetHeight(buffer);
                    v126 = IOSurfaceGetPixelFormat(buffer);
                    v127 = HIBYTE(v126);
                    if ((v126 & 0x80000000) != 0)
                    {
                      v128 = __maskrune(v127, 0x40000uLL);
                    }

                    else
                    {
                      v128 = *(MEMORY[0x1E69E9830] + 4 * v127 + 60) & 0x40000;
                    }

                    if (v128)
                    {
                      v129 = IOSurfaceGetPixelFormat(buffer) >> 24;
                    }

                    else
                    {
                      v129 = 32;
                    }

                    v130 = (IOSurfaceGetPixelFormat(buffer) >> 16);
                    if (v130 <= 0x7F)
                    {
                      v131 = *(MEMORY[0x1E69E9830] + 4 * v130 + 60) & 0x40000;
                    }

                    else
                    {
                      v131 = __maskrune(v130, 0x40000uLL);
                    }

                    if (v131)
                    {
                      v132 = (IOSurfaceGetPixelFormat(buffer) << 8) >> 24;
                    }

                    else
                    {
                      v132 = 32;
                    }

                    v159 = v132;
                    v133 = (IOSurfaceGetPixelFormat(buffer) >> 8);
                    if (v133 <= 0x7F)
                    {
                      v134 = *(MEMORY[0x1E69E9830] + 4 * v133 + 60) & 0x40000;
                    }

                    else
                    {
                      v134 = __maskrune(v133, 0x40000uLL);
                    }

                    if (v134)
                    {
                      v135 = IOSurfaceGetPixelFormat(buffer) >> 8;
                    }

                    else
                    {
                      v135 = 32;
                    }

                    v158 = v135;
                    v136 = IOSurfaceGetPixelFormat(buffer);
                    if (v136 <= 0x7F)
                    {
                      v137 = *(MEMORY[0x1E69E9830] + 4 * v136 + 60) & 0x40000;
                    }

                    else
                    {
                      v137 = __maskrune(v136, 0x40000uLL);
                    }

                    if (v137)
                    {
                      v138 = IOSurfaceGetPixelFormat(buffer);
                    }

                    else
                    {
                      v138 = 32;
                    }

                    v157 = v138;
                    v156 = IOSurfaceGetID(v169);
                    v139 = IOSurfaceGetWidth(v169);
                    v140 = IOSurfaceGetHeight(v169);
                    v141 = IOSurfaceGetPixelFormat(v169);
                    v142 = HIBYTE(v141);
                    if ((v141 & 0x80000000) != 0)
                    {
                      v143 = __maskrune(v142, 0x40000uLL);
                    }

                    else
                    {
                      v143 = *(MEMORY[0x1E69E9830] + 4 * v142 + 60) & 0x40000;
                    }

                    if (v143)
                    {
                      v144 = IOSurfaceGetPixelFormat(v169) >> 24;
                    }

                    else
                    {
                      v144 = 32;
                    }

                    v145 = (IOSurfaceGetPixelFormat(v169) >> 16);
                    if (v145 <= 0x7F)
                    {
                      v146 = *(MEMORY[0x1E69E9830] + 4 * v145 + 60) & 0x40000;
                    }

                    else
                    {
                      v146 = __maskrune(v145, 0x40000uLL);
                    }

                    if (v146)
                    {
                      v147 = (IOSurfaceGetPixelFormat(v169) << 8) >> 24;
                    }

                    else
                    {
                      v147 = 32;
                    }

                    v148 = (IOSurfaceGetPixelFormat(v169) >> 8);
                    if (v148 <= 0x7F)
                    {
                      v149 = *(MEMORY[0x1E69E9830] + 4 * v148 + 60) & 0x40000;
                    }

                    else
                    {
                      v149 = __maskrune(v148, 0x40000uLL);
                    }

                    if (v149)
                    {
                      v150 = IOSurfaceGetPixelFormat(v169) >> 8;
                    }

                    else
                    {
                      v150 = 32;
                    }

                    v151 = IOSurfaceGetPixelFormat(v169);
                    if (v151 <= 0x7F)
                    {
                      v152 = *(MEMORY[0x1E69E9830] + 4 * v151 + 60) & 0x40000;
                    }

                    else
                    {
                      v152 = __maskrune(v151, 0x40000uLL);
                    }

                    if (v152)
                    {
                      v153 = IOSurfaceGetPixelFormat(v169);
                    }

                    else
                    {
                      v153 = 32;
                    }

                    *buf = 134223362;
                    *&buf[4] = v179;
                    *&buf[12] = 2080;
                    *&buf[14] = v125;
                    *&buf[22] = 1024;
                    *v204 = ID;
                    *&v204[4] = 2048;
                    *&v204[6] = Width;
                    *&v204[14] = 2048;
                    *&v204[16] = Height;
                    *&v204[24] = 1024;
                    *&v204[26] = v129;
                    v205 = 1024;
                    v206 = v159;
                    v207 = 1024;
                    v208 = v158;
                    v209 = 1024;
                    v210 = v157;
                    v211 = 1024;
                    v212 = BYTE11(v194);
                    v213 = 1024;
                    v214 = BYTE12(v194);
                    v215 = 1024;
                    v216 = v156;
                    v217 = 2048;
                    v218 = v139;
                    v219 = 2048;
                    v220 = v140;
                    v31 = v179;
                    v221 = 1024;
                    v222 = v144;
                    v223 = 1024;
                    v224 = v147;
                    v225 = 1024;
                    v226 = v150;
                    v227 = 1024;
                    v228 = v153;
                    v229 = 1024;
                    v230 = BYTE11(v185);
                    v231 = 1024;
                    v232 = BYTE12(v185);
                    v233 = 1024;
                    v234 = a10;
                    v235 = 2080;
                    v236 = v171;
                    _os_log_impl(&dword_183AA6000, v124, OS_LOG_TYPE_DEFAULT, "HDRProcessor %p accelerator %s src surface 0x%x [%zu x %zu] (%c%c%c%c) Primaries: 0x%x, TransferFunction: 0x%x dst surface 0x%x [%zu x %zu] (%c%c%c%c) Primaries: 0x%x, TransferFunction: 0x%x operation 0x%x metadata: %s\n", buf, 0xA2u);
                    v29 = v164;
                    v56 = a21;
                    v95 = v168;
                    v47 = v169;
                    v49 = buffer;
                  }
                }

                os_unfair_lock_lock((v31 + 20));
                v35 = v172;
                if (CA::HDRProcessorInternal::get_or_create_hdr_processor_instance(v31, v166, v177, a11))
                {
                  if (*v95 == 1)
                  {
                    v181[0] = 0;
                    v96 = 96;
                    if (_hdrp_supports_new_init)
                    {
                      v96 = 40;
                    }

                    v40 = [*(v31 + v96) generateMSRColorConfigWithOperation:a10 inputSurface:v49 outputSurface:v47 metadata:v180 histogram:0 config:v181];
                    os_unfair_lock_unlock((v31 + 20));
                    v97 = [v181[0] bytes];
                    v98 = [v181[0] length];
                    v99 = v181[0];
                    if (v40 == -17000)
                    {
                      v100 = malloc_type_malloc(0x28uLL, 0x10000407607B2BCuLL);
                      *v100 = 3;
                      v100[1] = v97;
                      *(v100 + 4) = v98;
                      *(v100 + 28) = 0;
                      *(v100 + 20) = 0;
                      v101 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v100 length:40 freeWhenDone:1];
                      if (v175)
                      {
                        v102 = *(v175 + 32);
                        wait_value = CA::CASharedEvent::get_wait_value(v175, 6, 1);
                        v104 = CA::CASharedEvent::inc_signal_value(v175, 6, 1);
                      }

                      else
                      {
                        v102 = 0;
                        wait_value = 0;
                        v104 = 0;
                      }

                      if (v174)
                      {
                        v111 = *(v174 + 32);
                        v112 = CA::CASharedEvent::get_wait_value(v174, 7, 2);
                        v178 = CA::CASharedEvent::inc_signal_value(v174, 7, 2);
                      }

                      else
                      {
                        v111 = 0;
                        v112 = 0;
                        v178 = 0;
                      }

                      v176 = BYTE12(xmmword_1ED4E988C);
                      v113 = *MEMORY[0x1E69A8498];
                      v200 = v101;
                      v201[0] = v113;
                      v202[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v200 count:1];
                      v202[1] = MEMORY[0x1E695E118];
                      v114 = *MEMORY[0x1E69A85B8];
                      v201[1] = *MEMORY[0x1E69A84D8];
                      v201[2] = v114;
                      v202[2] = MEMORY[0x1E695E110];
                      v201[3] = *MEMORY[0x1E69A85C0];
                      v202[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a16 & 7];
                      v201[4] = *MEMORY[0x1E69A84C8];
                      v202[4] = [MEMORY[0x1E696AD98] numberWithBool:?];
                      v201[5] = *MEMORY[0x1E69A8548];
                      v202[5] = [MEMORY[0x1E696AD98] numberWithLongLong:v102];
                      v201[6] = *MEMORY[0x1E69A8558];
                      v202[6] = [MEMORY[0x1E696AD98] numberWithLongLong:wait_value];
                      v201[7] = *MEMORY[0x1E69A8550];
                      v202[7] = [MEMORY[0x1E696AD98] numberWithLongLong:v104];
                      v201[8] = *MEMORY[0x1E69A8530];
                      v202[8] = [MEMORY[0x1E696AD98] numberWithLongLong:v111];
                      v201[9] = *MEMORY[0x1E69A8540];
                      v202[9] = [MEMORY[0x1E696AD98] numberWithLongLong:v112];
                      v201[10] = *MEMORY[0x1E69A8538];
                      v202[10] = [MEMORY[0x1E696AD98] numberWithLongLong:v178];
                      v201[11] = *MEMORY[0x1E69A84A0];
                      v202[11] = [MEMORY[0x1E696AD98] numberWithBool:(v176 ^ 1) & 1];
                      [MEMORY[0x1E695DF20] dictionaryWithObjects:v202 forKeys:v201 count:12];
                      v31 = v179;
                      atomic_fetch_add((*(v179 + 104) + 24), 1u);
                      v115 = *(v179 + 104);
                      *buf = CA::release_hdr_iosa_param;
                      *&buf[8] = v115;
                      *&buf[16] = v181[0];
                      v35 = v172;
                      v116 = IOSurfaceAcceleratorTransformSurface();
                      v108 = v173;
                      v117 = v116;
                      if (v173)
                      {
                        ++*(v173 + 528);
                      }

                      if (!a13 || v116)
                      {
                        (*buf)(*&buf[8], 0, *&buf[16]);
                        if (v117)
                        {
                          if (x_log_get_utilities::once != -1)
                          {
                            dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
                          }

                          v118 = x_log_get_utilities::log;
                          if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
                          {
                            v123 = IOSurfaceGetID(v49);
                            *v237 = 67109376;
                            *&v237[4] = v117;
                            LOWORD(v238) = 1024;
                            *(&v238 + 2) = v123;
                            _os_log_error_impl(&dword_183AA6000, v118, OS_LOG_TYPE_ERROR, "MSR failed err=0x%x sur=0x%x", v237, 0xEu);
                            if (!a21)
                            {
                              goto LABEL_199;
                            }
                          }

                          else if (!a21)
                          {
LABEL_199:

                            goto LABEL_200;
                          }

                          *a21 = v117;
                          goto LABEL_199;
                        }
                      }

                      if (byte_1ED4E9870 == 1 && a18)
                      {
                        if (x_log_get_filmgrain(void)::once != -1)
                        {
                          dispatch_once(&x_log_get_filmgrain(void)::once, &__block_literal_global_18204);
                        }

                        v154 = x_log_get_filmgrain(void)::log;
                        v29 = v164;
                        v35 = v172;
                        v108 = v173;
                        v31 = v179;
                        if (os_log_type_enabled(x_log_get_filmgrain(void)::log, OS_LOG_TYPE_INFO))
                        {
                          v155 = IOSurfaceGetID(buffer);
                          *v237 = 67109120;
                          *&v237[4] = v155;
                          _os_log_impl(&dword_183AA6000, v154, OS_LOG_TYPE_INFO, "[0x%x] [HDR] MSR Successfully applied film grain", v237, 8u);
                          v29 = v164;
                          v35 = v172;
                          v108 = v173;
                          v31 = v179;
                        }
                      }

                      os_unfair_lock_lock((v31 + 20));
LABEL_209:
                      os_unfair_lock_unlock((v31 + 20));
                      if (v108)
                      {
                        *(v108 + 1376) |= 0x10000000000000uLL;
                      }

                      v38 = 1;
                      if (!v35)
                      {
                        goto LABEL_205;
                      }

                      goto LABEL_204;
                    }

                    if (x_log_get_utilities::once == -1)
                    {
LABEL_175:
                      v109 = x_log_get_utilities::log;
                      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134218752;
                        *&buf[4] = v40;
                        *&buf[12] = 2048;
                        *&buf[14] = v49;
                        *&buf[22] = 2048;
                        *v204 = v47;
                        *&v204[8] = 2048;
                        *&v204[10] = v180;
                        _os_log_error_impl(&dword_183AA6000, v109, OS_LOG_TYPE_ERROR, "HDRProcessor error (%ld) (src:%p, dst:%p, md:%p)", buf, 0x2Au);
                        if (!v56)
                        {
                          goto LABEL_178;
                        }
                      }

                      else if (!v56)
                      {
LABEL_178:

                        os_unfair_lock_lock((v31 + 20));
                        v35 = v172;
                        goto LABEL_201;
                      }

                      *v56 = v40;
                      goto LABEL_178;
                    }

LABEL_285:
                    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
                    goto LABEL_175;
                  }

                  CA::shared_event_submit(*(v31 + 24), a14, v175, 1, 1);
                  CA::shared_event_submit(*(v31 + 24), a14, v174, 1, 2);
                  v106 = 48;
                  if (_hdrp_supports_new_init)
                  {
                    v106 = 40;
                  }

                  v107 = [*(v31 + v106) encodeToCommandBuffer:a14 inputSurfaceLayer0:v49 inputSurfacelayer1:0 outputSurface:v47 metadata:v180];
                  os_unfair_lock_unlock((v31 + 20));
                  CA::shared_event_submit(*(v31 + 24), a14, v175, 0, 1);
                  CA::shared_event_submit(*(v31 + 24), a14, v174, 0, 2);
                  if (v173)
                  {
                    ++*(v173 + 532);
                  }

                  if (v107 == -17000)
                  {
                    os_unfair_lock_lock((v31 + 20));
                    v108 = v173;
                    goto LABEL_209;
                  }

                  if (x_log_get_utilities::once != -1)
                  {
                    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
                  }

                  v110 = x_log_get_utilities::log;
                  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134219008;
                    *&buf[4] = v107;
                    *&buf[12] = 2048;
                    *&buf[14] = a14;
                    *&buf[22] = 2048;
                    *v204 = v49;
                    *&v204[8] = 2048;
                    *&v204[10] = v47;
                    *&v204[18] = 2048;
                    *&v204[20] = v180;
                    _os_log_error_impl(&dword_183AA6000, v110, OS_LOG_TYPE_ERROR, "HDRProcessor error (%ld) (cmd:%p, src:%p, dst:%p, md:%p)", buf, 0x34u);
                    if (!v56)
                    {
                      goto LABEL_184;
                    }
                  }

                  else if (!v56)
                  {
LABEL_184:
                    v35 = v172;

LABEL_200:
                    os_unfair_lock_lock((v31 + 20));
                    goto LABEL_201;
                  }

                  *v56 = v107;
                  goto LABEL_184;
                }

                if (x_log_get_utilities::once != -1)
                {
                  dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
                }

                v105 = x_log_get_utilities::log;
                if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
                {
                  v121 = "GPU";
                  if (v163)
                  {
                    v121 = "MSR";
                  }

                  *buf = 136315138;
                  *&buf[4] = v121;
                  _os_log_error_impl(&dword_183AA6000, v105, OS_LOG_TYPE_ERROR, "Failed to create HDRProcessor for %s", buf, 0xCu);
                  if (!v56)
                  {
                    goto LABEL_167;
                  }
                }

                else if (!v56)
                {
LABEL_167:

LABEL_201:
                  v71 = (v31 + 20);
                  goto LABEL_202;
                }

                *v56 = -17001;
                goto LABEL_167;
              }
            }

            else if (BYTE12(v185) != 16)
            {
              goto LABEL_79;
            }
          }

          [v180 setObject:&unk_1EF22F9C0 forKeyedSubscript:_kHDRProcessingEDRFactorKey];
          v31 = v179;
          goto LABEL_90;
        }

        if (x_log_get_utilities::once != -1)
        {
          dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
        }

        v35 = v172;
        v70 = x_log_get_utilities::log;
        if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
        {
          v120 = "GPU";
          if (v163)
          {
            v120 = "MSR";
          }

          *buf = 136315138;
          *&buf[4] = v120;
          _os_log_error_impl(&dword_183AA6000, v70, OS_LOG_TYPE_ERROR, "Failed to create HDRProcessor for %s", buf, 0xCu);
          if (!a21)
          {
            goto LABEL_85;
          }
        }

        else if (!a21)
        {
LABEL_85:
          v71 = (v179 + 20);
LABEL_202:
          os_unfair_lock_unlock(v71);
LABEL_203:
          v38 = 0;
          if (!v35)
          {
LABEL_205:
            objc_autoreleasePoolPop(v29);
            return v38;
          }

LABEL_204:
          CFRelease(v35);
          goto LABEL_205;
        }

        *a21 = -17001;
        goto LABEL_85;
      }

      v35 = v172;
      goto LABEL_29;
    }

    if (BYTE12(v194) != 18)
    {
      if (BYTE12(v194) != 16 || BYTE11(v194) > 0xCu || ((1 << SBYTE11(v194)) & 0x1202) == 0)
      {
        if (CA_CFDictionaryGetBool(v35, @"isHLG"))
        {
          goto LABEL_15;
        }

        if (v33 != 1380411457 && CA::Render::fourcc_to_format(v33) - 33 >= 3)
        {
          if (x_log_get_utilities::once != -1)
          {
            dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
          }

          v45 = a21;
          v92 = x_log_get_utilities::log;
          if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = BYTE12(v194);
            *&buf[8] = 1024;
            *&buf[10] = BYTE11(v194);
            _os_log_error_impl(&dword_183AA6000, v92, OS_LOG_TYPE_ERROR, "Unknown HDR surface with transfer index %d color index %d", buf, 0xEu);
          }

LABEL_30:
          if (v45)
          {
            v38 = 0;
            *v45 = -17006;
            if (!v35)
            {
              goto LABEL_205;
            }

            goto LABEL_204;
          }

          goto LABEL_203;
        }
      }

      v37 = &_kHDRProcessingSourceContentTypeHDR10;
      goto LABEL_19;
    }

LABEL_15:
    v37 = &_kHDRProcessingSourceContentTypeHLG;
    goto LABEL_19;
  }

  v38 = 0;
  if (a21)
  {
    *a21 = -17010;
  }

  return v38;
}

void sub_183CF0ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *context, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CFTypeRef cf, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, os_unfair_lock_s *a28)
{
  os_unfair_lock_lock(a28 + 5);
  os_unfair_lock_unlock(a28 + 5);
  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(context);
  _Unwind_Resume(a1);
}

void CA::HDRProcessorInternal::commit_command_buffer(void *a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (CA::_root_queue_once == -1)
  {
    if (a2)
    {
LABEL_3:
      v3 = CA::_root_queue;
      v4 = dispatch_time(0, 14000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[3] = &unk_1E6DFA588;
      block[4] = v5;
      block[2] = ___ZN2CA20HDRProcessorInternal21commit_command_bufferEPU27objcproto16MTLCommandBuffer11objc_objectb_block_invoke;
      dispatch_after(v4, v3, block);
      return;
    }
  }

  else
  {
    dispatch_once(&CA::_root_queue_once, &__block_literal_global_24520);
    a1 = v5;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  if (([a1 commitAndWaitUntilSubmitted] & 1) == 0)
  {
    [v5 waitUntilScheduled];
  }
}

void ___ZN2CA20HDRProcessorInternal30create_surface_with_forward_dmEPKNS_6Render7SurfaceEPNS1_6UpdateEPKNS1_17DisplayAttributesEbfNS1_12TextureFlagsEfbbbb_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) waitUntilScheduled];
  }

  v3 = *(a1 + 32);
}

void *___ZL38getCMGetDMVersionLevelFromRPUSymbolLocv_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreMediaLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL20CoreMediaLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E6DEDE38;
    v7 = 0;
    CoreMediaLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = CoreMediaLibraryCore(char **)::frameworkLibrary;
    if (CoreMediaLibraryCore(char **)::frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CoreMediaLibraryCore(char **)::frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "CMGetDMVersionLevelFromRPU");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMGetDMVersionLevelFromRPUSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CA::shared_event_submit(void *a1, void *a2, uint64_t a3, int a4, atomic_uint a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return;
  }

  if (!a2)
  {
    if (x_log_get_sharedevent(void)::once != -1)
    {
      dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
    }

    v13 = x_log_get_sharedevent(void)::log;
    if (!os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v14 = "Invalid command buffer";
LABEL_24:
    _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    return;
  }

  v8 = *(a3 + 32);
  if (!v8)
  {
    if (x_log_get_sharedevent(void)::once != -1)
    {
      dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
    }

    v13 = x_log_get_sharedevent(void)::log;
    if (!os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v14 = "Invalid metal shared event";
    goto LABEL_24;
  }

  v11 = [v8 newSharedEventHandle];
  if (!v11)
  {
    if (x_log_get_sharedevent(void)::once != -1)
    {
      dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
    }

    v13 = x_log_get_sharedevent(void)::log;
    if (!os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v14 = "Invalid metal shared event handle";
    goto LABEL_24;
  }

  v12 = v11;
  v15 = [a1 newSharedEventWithHandle:v11];

  if (v15)
  {
    if (a4)
    {
      [a2 encodeWaitForEvent:v15 value:{CA::CASharedEvent::get_wait_value(a3, 14, a5)}];
    }

    else
    {
      [a2 encodeSignalEvent:v15 value:{CA::CASharedEvent::inc_signal_value(a3, 14, a5)}];
    }

    return;
  }

  if (x_log_get_sharedevent(void)::once != -1)
  {
    dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
  }

  v13 = x_log_get_sharedevent(void)::log;
  if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v14 = "Invalid metal shared event with handle";
    goto LABEL_24;
  }
}

void CA::release_hdr_iosa_param(CA *this, void *a2, void *a3, void *a4)
{
  CA::IOSAManager::unref(this);
}

uint64_t ___ZL20CoreMediaLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  CoreMediaLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

uint64_t CA::HDRProcessorInternal::tonemap_surface(uint64_t a1, __IOSurface *a2, __IOSurface *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, float a9, unint64_t a10, char a11, _DWORD *a12)
{
  v37 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  CA::HDRProcessorInternal::get_config(v34, a2, a3, a6, &v36, a8, &v33, 0x42475241);
  if (a7)
  {
    if (*(a1 + 89) == 1)
    {
      HIDWORD(v35) = 1;
      os_unfair_lock_lock((a1 + 20));
      if (!*(a1 + 104) || !*(a1 + 40))
      {
        CA::HDRProcessorInternal::get_or_create_hdr_processor_instance(a1, 1, v34, a6);
      }

      v21 = *(a6 + 68);
      v22 = mach_absolute_time();
      v23 = CATimeWithHostTime(v22);
      if (CA::HDRProcessorInternal::should_switch_accelerator(a1, a3, a2, v21, 0, 0, 0, 0, v23 + *(a7 + 120) * 2.0))
      {
        *(a7 + 520) = 2;
      }

      os_unfair_lock_unlock((a1 + 20));
    }

    v24 = *(a7 + 520);
  }

  else
  {
    v24 = 2;
  }

  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  if (CADeviceHasHardwareAcceleratedHDR::has_capability)
  {
    v25 = v24 < 2;
    if (v24 == 3)
    {
      v25 = 1;
    }

    *(a1 + 89) = v25;
    if (v24 <= 3 && v24 != 2)
    {
      started = 0;
      goto LABEL_21;
    }
  }

  else
  {
    *(a1 + 89) = 0;
  }

  started = CA::HDRProcessorInternal::start_command_buffer(a1, a10, v20);
LABEL_21:
  if (a7)
  {
    v27 = CA::HDRProcessorInternal::tonemap_surface_internal(a1, a2, a3, a7, a4, a5, v34, &v32, a9, v36, a6, v24, a11, started, 0, 0, 0, 0, *(a7 + 1000), *(a7 + 1208) & 3, a12);
  }

  else
  {
    v27 = CA::HDRProcessorInternal::tonemap_surface_internal(a1, a2, a3, 0, a4, a5, v34, &v32, a9, v36, a6, v24, a11, started, 0, 0, 0, 0, 0, 0, a12);
  }

  v28 = v27;
  if (started)
  {
    CA::HDRProcessorInternal::commit_command_buffer(started, 0);
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E964C)
  {
    if (*&dword_1ED4E964C > 0.0)
    {
      *&dword_1ED4E964C = *&dword_1ED4E964C + -1.0;
    }

    v29 = CAIOSurfaceWriteToFileWithSuffix(a3, "hdr-tonemap-src");
    free(v29);
    v30 = CAIOSurfaceWriteToFileWithSuffix(a2, "hdr-tonemap-dst");
    free(v30);
  }

  return v28;
}

void ___ZN2CA14CAHDRProcessor14warmup_shadersEPv_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (CADeviceSupportsHDRProcessing::once != -1)
  {
    dispatch_once(&CADeviceSupportsHDRProcessing::once, &__block_literal_global_199);
  }

  if (CADeviceSupportsHDRProcessing::supports_hdr == 1)
  {
    v4 = 0u;
    v3 = 0u;
    v2 = 0x87000000F00;
    *&v4 = *MEMORY[0x1E6965DB8];
    *(&v3 + 4) = 0x7267336800000064;
  }
}

BOOL CA::CAHDRProcessor::iomfb_hdr10plus_convert_sei_to_metadata(CA::CAHDRProcessor *this, const __CFData *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (hdrprocessing_init_once != -1)
  {
    dispatch_once_f(&hdrprocessing_init_once, 0, load_hdrprocessing_symbols);
  }

  if (!hdr_handle)
  {
    return 0;
  }

  v5 = NSSelectorFromString(&cfstr_Parsehdr10plus.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = [hdr_processor_class v5];
  if (v6 == -17000)
  {
    return 1;
  }

  v8 = v6;
  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v9 = x_log_get_utilities::log;
  result = os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v10 = 134218496;
    v11 = v8;
    v12 = 2048;
    v13 = this;
    v14 = 2048;
    v15 = a2;
    _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "HDRProcessor error (%ld) converting hdr10plus SEI to metadata (sei:%p, metadata:%p)", &v10, 0x20u);
    return 0;
  }

  return result;
}

BOOL CA::CAHDRProcessor::can_display_tonemap(CA::CAHDRProcessor *this, CA::Render::Surface *a2)
{
  if (IOSurfaceGetBulkAttachments())
  {
    return 0;
  }

  v3 = IOSurfaceCopyAllValues(this);
  if (CFDictionaryGetValue(v3, _kHDRProcessingDolbyVisionRPUDataKey))
  {
    Bool = 0;
  }

  else
  {
    Bool = CA_CFDictionaryGetBool(v3, @"isHLG");
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return Bool;
}

void sub_183CF18A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

id CA::CAHDRProcessor::is_hdr10plus_screen_recording(CA::CAHDRProcessor *this, CA::Render::Surface *a2)
{
  if (hdrprocessing_init_once != -1)
  {
    dispatch_once_f(&hdrprocessing_init_once, 0, load_hdrprocessing_symbols);
  }

  if (!hdr_handle)
  {
    return 0;
  }

  v3 = *(this + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = NSSelectorFromString(&cfstr_Ishdrscreenrec.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v5 = hdr_processor_class;

  return [v5 v4];
}

uint64_t CA::CAHDRProcessor::should_invalidate_tonemapping(float *a1, float *a2, float a3, float a4)
{
  if (byte_1ED4E983C)
  {
    v4 = 1;
  }

  else
  {
    v4 = 1;
    if (a1[1] > 0.0 && a2[1] > 0.0)
    {
      v5 = a2[3];
      v4 = 0;
      if (v5 != 0.0)
      {
        v6 = a1[5];
        v7 = a2[5];
        if (v6 != 0.0 && v7 != 0.0)
        {
          v4 = vabds_f32(v6, v7) > (fminf(v6, v7) * 0.01);
        }

        v8 = 0;
        v9 = vabds_f32(a3, a4);
        v10 = fminf(a3, a4) * 0.0025;
        v11 = a1[8];
        v12 = a2[8];
        v13 = v7 == 1.0 && v6 == 1.0;
        v14 = 0.05;
        if (v13)
        {
          v14 = 0.01;
        }

        v15 = a1[3];
        v16 = vabds_f32(v15, v5);
        v17 = v15 * v14;
        if (v11 == 0.0 && v12 == 0.0)
        {
          v8 = vabds_f32(a1[4], a2[4]) > 100.0;
        }

        if (v16 > v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = v4;
        }

        v4 = 1;
        if (v9 <= v10 && (v18 & 1) == 0 && vabds_f32(v11, v12) <= (fminf(v11, v12) * 0.01))
        {
          v4 = (v11 == 0.0) ^ (v12 == 0.0) | v8;
        }
      }
    }
  }

  return v4 & 1;
}

void native_window_release(_CAEAGLNativeWindow *a1, void *a2)
{
  if (atomic_fetch_add(a1 + 32, 0xFFFFFFFF) == 1)
  {
    CA::Render::remove_every_observer(a1, a2);
    if (*(a1 + 18))
    {
      pthread_setspecific(collect_slot, a1);
      CAImageQueueInvalidate(*(a1 + 18));
      pthread_setspecific(collect_slot, 0);
    }

    v4 = *(a1 + 22);
    if (v4)
    {
      do
      {
        v5 = *v4;
        if (*v4)
        {
          v6 = *(a1 + 18);
          if (v6)
          {
            v7 = v5[3];
            if (v7)
            {
              CAImageQueueUnregisterBuffer(v6, v7);
            }
          }

          v8 = v5[5];
          if (v8)
          {
            CFRelease(v8);
          }

          free(v5);
        }

        v4 = *(v4 + 8);
      }

      while (v4);
      v9 = *(a1 + 22);
      if (v9)
      {
        do
        {
          v10 = v9[1];
          free(v9);
          v9 = v10;
        }

        while (v10);
      }
    }

    v11 = *(a1 + 13);
    if (v11)
    {
      do
      {
        v12 = v11[1];
        free(v11);
        v11 = v12;
      }

      while (v12);
    }

    v13 = *(a1 + 24);
    if (v13)
    {
      v14 = *(a1 + 18);
      if (v14)
      {
        v15 = v13[3];
        if (v15)
        {
          CAImageQueueUnregisterBuffer(v14, v15);
        }
      }

      v16 = v13[5];
      if (v16)
      {
        CFRelease(v16);
      }

      free(v13);
    }

    v17 = *(a1 + 29);
    if (v17)
    {
      dispatch_release(v17);
    }

    v18 = *(a1 + 18);
    if (v18)
    {
      CFRelease(v18);
    }

    free(a1);
  }
}

intptr_t layer_collectable_signal(_CAImageQueue *a1, void *a2)
{
  if (atomic_exchange(a2 + 60, 2u) == 1)
  {
    return dispatch_semaphore_signal(*(a2 + 29));
  }

  return result;
}

void will_suspend_callback(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a2 + 136));
  pthread_setspecific(collect_slot, a2);
  CAImageQueueConsumeUnconsumed_(*(a2 + 144), 1);
  CAImageQueueCollect_(*(a2 + 144), 0, 0);
  pthread_setspecific(collect_slot, 0);
  for (i = *(a2 + 176); i; i = i[1])
  {
    v4 = *i;
    *(v4 + 48) = 1;
    v5 = *(v4 + 40);
    oldState = 0;
    IOSurfaceSetPurgeable(v5, 1u, &oldState);
  }

  os_unfair_lock_unlock((a2 + 136));
}

uint64_t native_window_estimated_size(_EAGLNativeWindowObject *a1)
{
  os_unfair_lock_lock(&a1[2].var2);
  if ((a1[2].var1 & 2) == 0)
  {
    v2 = 0;
    goto LABEL_21;
  }

  var3 = a1[3].var3;
  var3_high = HIDWORD(a1[3].var3);
  var4 = a1[3].var4;
  var8 = a1[2].var8;
  if (var8 <= 1278555700)
  {
    if (var8 != 875836468)
    {
      if (var8 == 1111970369)
      {
        v7 = 4;
        goto LABEL_14;
      }

      if (var8 != 1278555445)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    v7 = 2;
    goto LABEL_14;
  }

  if (var8 == 1278555701)
  {
    goto LABEL_12;
  }

  v7 = 8;
  if (var8 != 1380411457 && var8 != 1999908961)
  {
LABEL_11:
    v7 = 0;
  }

LABEL_14:
  if ((var4 & 4) != 0)
  {
    v8 = HIDWORD(a1[3].var3);
  }

  else
  {
    v8 = a1[3].var3;
  }

  v9 = MEMORY[0x1865EA040](*MEMORY[0x1E696CE58], (v7 * v8));
  if ((var4 & 4) != 0)
  {
    v10 = var3;
  }

  else
  {
    v10 = var3_high;
  }

  v2 = MEMORY[0x1865EA040](*MEMORY[0x1E696CE30], ((v9 + 255) & 0xFFFFFF00) * v10);
LABEL_21:
  os_unfair_lock_unlock(&a1[2].var2);
  return v2;
}

uint64_t native_window_begin_properties(_EAGLNativeWindowObject *a1)
{
  os_unfair_lock_lock(&a1[2].var2);
  if ((a1[2].var1 & 2) == 0 || *&a1[3].var0)
  {
    v2 = 0;
    goto LABEL_4;
  }

  if ((a1[4].var0 & 2) == 0 || (v4 = *(a1[2].var3 + 6)) == 0 || !*(*(v4 + 24) + 32))
  {
    atomic_fetch_and(&a1[2].var1, 0xFFFFFFF7);
    var5 = a1[3].var5;
    if (!var5)
    {
      var2 = a1[3].var2;
      if (var2)
      {
        preflight_buffer = get_preflight_buffer(a1, a1[3].var3, HIDWORD(a1[3].var3), var2[4], LODWORD(a1[2].var8));
        LODWORD(a1[3].var4) = preflight_buffer[4];
        atomic_fetch_or(&a1[2].var1, 1u);
        a1[3].var5 = preflight_buffer;
        atomic_fetch_add(preflight_buffer, 1u);
        v2 = preflight_buffer[4];
        goto LABEL_4;
      }

      goto LABEL_14;
    }

    goto LABEL_11;
  }

  atomic_fetch_or(&a1[2].var1, 8u);
  var5 = a1[3].var5;
  if (var5)
  {
LABEL_11:
    if (atomic_fetch_add(var5, 0xFFFFFFFF) == 1)
    {
      a1[2].var7 = x_list_prepend(a1[2].var7, var5);
    }

    a1[3].var5 = 0;
  }

LABEL_14:
  v6 = *(a1[2].var3 + 6);
  if (v6)
  {
    v7 = atomic_load((*(v6 + 24) + 8));
    if ((v7 & 0x800000000000000) == 0)
    {
      goto LABEL_19;
    }

    if (CADeviceUseCompression::once[0] != -1)
    {
      dispatch_once(CADeviceUseCompression::once, &__block_literal_global_17_12639);
    }

    if ((CADeviceUseCompression::enable_compression & 1) == 0)
    {
      LODWORD(v6) = *(*(*(a1[2].var3 + 6) + 24) + 92) & 7;
    }

    else
    {
LABEL_19:
      LODWORD(v6) = 0;
    }
  }

  if (LODWORD(a1[2].var8) == 1111970369)
  {
    v2 = v6 | 0x10;
  }

  else
  {
    v2 = v6;
  }

  var4 = a1[1].var4;
  if (var4)
  {
    if ((var4)(*&a1[1].var0, LODWORD(a1[3].var3), HIDWORD(a1[3].var3), v2))
    {
      v2 = v2;
    }

    else
    {
      v2 &= 0x10u;
    }
  }

  LODWORD(a1[3].var4) = v2;
  atomic_fetch_or(&a1[2].var1, 1u);
LABEL_4:
  os_unfair_lock_unlock(&a1[2].var2);
  return v2;
}

_DWORD *get_preflight_buffer(_CAEAGLNativeWindow *a1, unsigned int a2, int a3, int a4, CA::Render *a5)
{
  pthread_setspecific(collect_slot, a1);
  CAImageQueueConsumeUnconsumed_(*(a1 + 18), 0);
  CAImageQueueCollect_(*(a1 + 18), 0, 0);
  pthread_setspecific(collect_slot, 0);
  v12 = *(a1 + 22);
  if (v12)
  {
    while (1)
    {
      buffer = *v12;
      if (*(*v12 + 4) == a2 && buffer[2] == a3 && buffer[4] == a4 && buffer[3] == a5)
      {
        break;
      }

      v12 = v12[1];
      if (*(a1 + 28) - buffer[5] >= 1)
      {
        v14 = *(a1 + 22);
        x_list_remove(v14, buffer);
        *(a1 + 22) = v14;
        release_buffer(a1, buffer);
      }

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    v19 = *(a1 + 22);
    x_list_remove(v19, *v12);
    *(a1 + 22) = v19;
  }

  else
  {
LABEL_9:
    buffer = allocate_buffer(a2, a3, a4, a5, *(a1 + 18), v10, v11);
    if ((call_create_buffer(a1, buffer) & 1) == 0 && buffer)
    {
      v15 = *(a1 + 18);
      if (v15)
      {
        v16 = *(buffer + 3);
        if (v16)
        {
          CAImageQueueUnregisterBuffer(v15, v16);
        }
      }

      v17 = *(buffer + 5);
      if (v17)
      {
        CFRelease(v17);
      }

      free(buffer);
      return 0;
    }
  }

  return buffer;
}

void release_buffer(_CAEAGLNativeWindow *a1, CAEAGLBuffer *a2)
{
  v5 = (a1 + 104);
  v4 = *(a1 + 13);
  if (v4)
  {
    if (*v4 == a2)
    {
LABEL_6:
      *v5 = x_list_remove_head(v4);
      --*(a1 + 15);
      v7 = *(a1 + 10);
      if (v7)
      {
        v7(*(a1 + 8), *(a2 + 5));
      }
    }

    else
    {
      while (1)
      {
        v6 = v4;
        v4 = v4[1];
        if (!v4)
        {
          break;
        }

        if (*v4 == a2)
        {
          v5 = (v6 + 1);
          goto LABEL_6;
        }
      }
    }
  }

  if (*(a1 + 25) == a2)
  {
    *(a1 + 25) = 0;
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  v8 = *(a1 + 18);
  if (v8)
  {
    v9 = *(a2 + 3);
    if (v9)
    {
      CAImageQueueUnregisterBuffer(v8, v9);
    }
  }

  v10 = *(a2 + 5);
  if (v10)
  {
    CFRelease(v10);
  }

  free(a2);
}

_DWORD *allocate_buffer(unsigned int a1, int a2, int a3, CA::Render *this, _CAImageQueue *a5, uint64_t a6, const __CFString *a7)
{
  v8 = this;
  v10 = a2;
  if ((a3 & 4) != 0)
  {
    v12 = a1;
  }

  else
  {
    a2 = a1;
    v12 = v10;
  }

  iosurface_with_pixel_format = CA::Render::create_iosurface_with_pixel_format(this, a2, v12, (MEMORY[0xFFFFFC020] >> 9) & 4, 0, @"CAEAGLLayer Drawable", a7);
  v14 = malloc_type_calloc(1uLL, 0x38uLL, 0x10200404E9E88B7uLL);
  v14[1] = a1;
  v14[2] = v10;
  v14[3] = v8;
  v14[4] = a3;
  *(v14 + 5) = iosurface_with_pixel_format;
  if (a5)
  {
    *(v14 + 3) = CAImageQueueRegisterIOSurfaceBuffer(a5, iosurface_with_pixel_format, 0);
  }

  return v14;
}

uint64_t call_create_buffer(_CAEAGLNativeWindow *a1, CAEAGLBuffer *a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = *(a1 + 9);
  if (v3)
  {
    v5 = *(a1 + 13);
    if (v5)
    {
      while (*v5 != a2)
      {
        v5 = *(v5 + 8);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      result = v3(*(a1 + 8), *(a2 + 5));
      if (!result)
      {
        return result;
      }

      *(a1 + 13) = x_list_prepend(*(a1 + 13), a2);
      ++*(a1 + 15);
    }
  }

  return 1;
}

void native_window_collect(_EAGLNativeWindowObject *a1)
{
  os_unfair_lock_lock(&a1[2].var2);
  native_window_collect_(a1, 0);

  os_unfair_lock_unlock(&a1[2].var2);
}

void native_window_collect_(_EAGLNativeWindowObject *a1, int a2)
{
  pthread_setspecific(collect_slot, a1);
  CAImageQueueCollect_(a1[2].var3, a2, 0);
  pthread_setspecific(collect_slot, 0);
  var7 = a1[2].var7;
  if (var7)
  {
    a1[2].var7 = 0;
    v5 = var7;
    do
    {
      release_buffer(a1, *v5);
      v5 = v5[1];
    }

    while (v5);
    do
    {
      v6 = var7[1];
      free(var7);
      var7 = v6;
    }

    while (v6);
  }
}

uint64_t native_window_begin_iosurface(_EAGLNativeWindowObject *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&a1[2].var2);
  if ((a1[2].var1 & 2) == 0 || *&a1[3].var0)
  {
LABEL_3:
    os_unfair_lock_unlock(&a1[2].var2);
    return 0;
  }

  if (a1[2].var1)
  {
    atomic_fetch_and(&a1[2].var1, 0xFFFFFFFE);
    var4 = a1[3].var4;
    LODWORD(a1[3].var4) = 0;
    var5 = a1[3].var5;
    if (var5)
    {
      *&a1[3].var0 = var5;
      a1[3].var5 = 0;
      pthread_setspecific(collect_slot, a1);
      CAImageQueueCollect_(a1[2].var3, 0, 0);
      pthread_setspecific(collect_slot, 0);
      call_create_buffer(a1, var5);
      v7 = mach_absolute_time();
      *(var5 + 4) = CATimeWithHostTime(v7);
      IOSurfaceGetID(*(var5 + 5));
      kdebug_trace();
      goto LABEL_10;
    }
  }

  else
  {
    if ((a1[2].var1 & 8) == 0)
    {
      var5 = get_preflight_buffer(a1, a1[3].var3, HIDWORD(a1[3].var3), 0, LODWORD(a1[2].var8));
      atomic_fetch_add(var5, 1u);
      *&a1[3].var0 = var5;
      pthread_setspecific(collect_slot, a1);
      CAImageQueueCollect_(a1[2].var3, 0, 0);
      pthread_setspecific(collect_slot, 0);
      call_create_buffer(a1, var5);
      v5 = mach_absolute_time();
      *(var5 + 4) = CATimeWithHostTime(v5);
      IOSurfaceGetID(*(var5 + 5));
      kdebug_trace();
LABEL_10:
      os_unfair_lock_unlock(&a1[2].var2);
      goto LABEL_56;
    }

    var4 = 0;
  }

  if ((a1[2].var1 & 8) == 0)
  {
    CAImageQueueConsumeUnconsumed_(a1[2].var3, 0);
  }

  v8 = 0;
  v9 = 0.0;
  *&v2 = 138412290;
  v30 = v2;
  while (1)
  {
    pthread_setspecific(collect_slot, a1);
    v10 = CAImageQueueCollect_(a1[2].var3, 0, 0);
    pthread_setspecific(collect_slot, 0);
    if (v10)
    {
      break;
    }

    os_unfair_lock_unlock(&a1[2].var2);
    v13 = mach_absolute_time();
    v14 = CATimeWithHostTime(v13);
    v15 = v14;
    if (v9 == 0.0)
    {
      v9 = v14;
    }

    else if (v8 & 1 | (v14 <= v9 + 0.05) || (dyld_program_sdk_at_least() & 1) != 0)
    {
      if (v15 > *&a1[2].var6 + v9)
      {
        os_unfair_lock_lock(&a1[2].var2);
        goto LABEL_3;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      +[CATransaction flush];
      objc_autoreleasePoolPop(v16);
      v8 = 1;
    }

    kdebug_trace();
    v17 = 2;
    atomic_compare_exchange_strong(&a1[3].var7, &v17, 0);
    if (v17 != 2)
    {
      while (1)
      {
        v18 = 0;
        atomic_compare_exchange_strong(&a1[3].var7, &v18, 1u);
        if (!v18)
        {
          v19 = dispatch_time(0, (*&a1[2].var6 * 1000000000.0));
          if (dispatch_semaphore_wait(a1[3].var6, v19))
          {
            break;
          }
        }

        v20 = 2;
        atomic_compare_exchange_strong(&a1[3].var7, &v20, 0);
        if (v20 == 2)
        {
          goto LABEL_30;
        }
      }

      v21 = 1;
      atomic_compare_exchange_strong(&a1[3].var7, &v21, 0);
      if (v21 != 1)
      {
        dispatch_semaphore_wait(a1[3].var6, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

LABEL_30:
    kdebug_trace();
    os_unfair_lock_lock(&a1[2].var2);
  }

  var7 = a1[2].var7;
  if (var7)
  {
    v23 = 0;
    while (1)
    {
      var5 = *var7;
      var7 = x_list_remove_head(var7);
      a1[2].var7 = var7;
      if (var5[1] == LODWORD(a1[3].var3) && var5[2] == HIDWORD(a1[3].var3) && var5[4] == var4 && var5[3] == LODWORD(a1[2].var8))
      {
        break;
      }

      if (LODWORD(a1[1].var7) - var5[5] < 1)
      {
        v23 = var5;
        if (!var7)
        {
LABEL_41:
          if (v23)
          {
            a1[2].var7 = x_list_prepend(0, v23);
          }

          goto LABEL_43;
        }
      }

      else
      {
        release_buffer(a1, var5);
        var7 = a1[2].var7;
        if (!var7)
        {
          goto LABEL_41;
        }
      }
    }

    if (v23)
    {
      a1[2].var7 = x_list_prepend(var7, v23);
    }

    if (*(var5 + 48) == 1)
    {
      v29 = *(var5 + 5);
      oldState = 0;
      IOSurfaceSetPurgeable(v29, 0, &oldState);
      *(var5 + 48) = 0;
    }
  }

  else
  {
LABEL_43:
    var5 = allocate_buffer(a1[3].var3, HIDWORD(a1[3].var3), var4, LODWORD(a1[2].var8), a1[2].var3, v11, v12);
  }

  if (call_create_buffer(a1, var5))
  {
    *&a1[3].var0 = var5;
    if (var5)
    {
      atomic_fetch_add(var5, 1u);
      v24 = mach_absolute_time();
      *(var5 + 4) = CATimeWithHostTime(v24);
      IOSurfaceGetID(*(var5 + 5));
    }
  }

  else
  {
    if (var5)
    {
      var3 = a1[2].var3;
      if (var3)
      {
        v26 = *(var5 + 3);
        if (v26)
        {
          CAImageQueueUnregisterBuffer(var3, v26);
        }
      }

      v27 = *(var5 + 5);
      if (v27)
      {
        CFRelease(v27);
      }

      free(var5);
    }

    var5 = 0;
    *&a1[3].var0 = 0;
  }

  kdebug_trace();
  os_unfair_lock_unlock(&a1[2].var2);
  if (!var5)
  {
    return 0;
  }

LABEL_56:
  v28 = LODWORD(a1[1].var7) + 1;
  LODWORD(a1[1].var7) = v28;
  var5[5] = v28;
  return *(var5 + 5);
}

uint64_t native_window_swap(_EAGLNativeWindowObject *a1, double a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2 == 0.0)
  {
    v4 = (LOBYTE(a1[4].var0) >> 3) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  os_unfair_lock_lock(&a1[2].var2);
  if ((a1[2].var1 & 2) == 0 || (v5 = *&a1[3].var0) == 0)
  {
    os_unfair_lock_unlock(&a1[2].var2);
    return 0;
  }

  *&a1[3].var0 = 0;
  if (a2 <= 0.0005)
  {
    if ((a1[4].var0 & 4) != 0)
    {
      v6 = 4;
    }

    else
    {
      v6 = 2;
    }

    v8 = ((a1[4].var0 & 4) == 0) & v4;
    v7 = 0.0;
  }

  else
  {
    v6 = 0;
    v7 = a2 + -0.0005;
    v8 = ((a1[4].var0 & 4) == 0) & v4;
    if (v7 != 0.0)
    {
      goto LABEL_18;
    }
  }

  if (CADeviceSupportsAPT::once != -1)
  {
    dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
  }

  if (CADeviceSupportsAPT::supports_apt == 1 && (CADeviceDisableMinimumFrameDuration() & 1) == 0)
  {
    v8 = 0;
    v10 = 0x80000000;
    v7 = 0.014;
    goto LABEL_21;
  }

LABEL_18:
  v10 = v6 | 0x20;
  if ((v8 & 1) == 0)
  {
    v10 = v6;
  }

LABEL_21:
  v11 = v10 | 1;
  if (a1[4].var0)
  {
    v12 = v10 | 1;
  }

  else
  {
    v12 = v10;
  }

  if ((v12 & 1) == 0 && !CA::Render::fourcc_has_alpha(*(v5 + 12)))
  {
    v12 = v11;
  }

  v13 = image_queue_rotation_from_logical_rotation(CAMetalLayerRotation,BOOL)::invert_table[*(v5 + 16) & 7];
  var3 = a1[2].var3;
  v15 = *(v5 + 24);
  var5 = a1[2].var5;
  v17 = *(v5 + 32);
  v23 = xmmword_183E21120;
  if (CAImageQueueInsertImage_(var3, 3, v15, v12, v13, &v23, release_sample, v5, v7, *&var5, v17, 0.0, 0.0))
  {
    a1[3].var2 = v5;
    if ((v12 & 2) != 0)
    {
      atomic_fetch_and(&a1[2].var1, 0xFFFFFFFB);
    }

    else if ((v12 & 4) != 0)
    {
      atomic_fetch_or(&a1[2].var1, 4u);
      os_unfair_lock_unlock(&a1[2].var2);
      v18 = +[CATransaction lock];
      if (v8)
      {
        v18 = [CATransaction setLowLatency:1];
      }

      if (*&a1[2].var5 != 0.0)
      {
        v18 = [CATransaction setInputTime:?];
      }

      var4 = a1[2].var4;
      if (var4)
      {
        v20 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
        if (!v20)
        {
          v20 = CA::Transaction::create(v18);
        }

        CA::Layer::set_commit_needed(var4[2], v20, 0);
      }

      +[CATransaction unlock];
      goto LABEL_42;
    }
  }

  else
  {
    v21 = pthread_setspecific(collect_slot, a1);
    release_sample(v21, v22, v5);
    pthread_setspecific(collect_slot, 0);
  }

  os_unfair_lock_unlock(&a1[2].var2);
LABEL_42:
  a1[2].var5 = 0;
  return 1;
}

void release_sample(unsigned int a1, unint64_t a2, CAEAGLBuffer *a3)
{
  if (atomic_fetch_add(a3, 0xFFFFFFFF) == 1)
  {
    v4 = pthread_getspecific(collect_slot);
    if (v4)
    {
      if (v4[15] > v4[31] && (*(v4 + 33) & 8) != 0 && *(v4 + 28) - *(a3 + 5) >= 1)
      {

        release_buffer(v4, a3);
      }

      else
      {
        v4[22] = x_list_prepend(v4[22], a3);
      }
    }

    else if (a3)
    {
      v5 = *(a3 + 5);
      if (v5)
      {
        CFRelease(v5);
      }

      free(a3);
    }
  }
}

void native_window_detach(_EAGLNativeWindowObject *a1)
{
  os_unfair_lock_lock(&a1[2].var2);
  if ((a1[2].var1 & 2) != 0)
  {
    v2 = *&a1[3].var0;
    if (v2)
    {
      if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
      {
        a1[2].var7 = x_list_prepend(a1[2].var7, v2);
      }

      *&a1[3].var0 = 0;
    }

    var5 = a1[3].var5;
    if (var5)
    {
      if (atomic_fetch_add(var5, 0xFFFFFFFF) == 1)
      {
        a1[2].var7 = x_list_prepend(a1[2].var7, var5);
      }

      a1[3].var5 = 0;
    }

    atomic_fetch_and(&a1[2].var1, 0xFFFFFFFC);
    a1[3].var3 = 0;
    LODWORD(a1[2].var8) = 0;
    a1[3].var5 = 0;
    a1[1].var2 = 0;
    a1[1].var3 = 0;
    *&a1[1].var0 = 0;
    var6 = a1[1].var6;
    if (var6)
    {
      do
      {
        v5 = var6[1];
        free(var6);
        var6 = v5;
      }

      while (v5);
    }

    a1[1].var6 = 0;
    a1[1].var8 = 0;
    native_window_collect_(a1, 1);
    os_unfair_lock_unlock(&a1[2].var2);

    native_window_release(a1, v6);
  }

  else
  {

    os_unfair_lock_unlock(&a1[2].var2);
  }
}

uint64_t native_window_attach(uint64_t a1, int a2, _OWORD *a3)
{
  os_unfair_lock_lock((a1 + 136));
  if ((*(a1 + 132) & 2) != 0)
  {
    goto LABEL_6;
  }

  v6 = *(a1 + 152);
  if (!v6)
  {
    goto LABEL_6;
  }

  [v6 bounds];
  v8 = v7;
  v10 = v9;
  [*(a1 + 152) contentsScale];
  atomic_fetch_or((a1 + 132), 2u);
  v12 = (v11 * v8);
  v13 = (v11 * v10);
  *(a1 + 208) = v12;
  *(a1 + 212) = v13;
  CAImageQueueSetSize(*(a1 + 144), v12, v13);
  *(a1 + 184) = a2;
  if (a3)
  {
    *(a1 + 64) = *a3;
    *(a1 + 80) = a3[1];
  }

  if ((*(a1 + 132) & 2) != 0)
  {
    v14 = 1;
    atomic_fetch_add((a1 + 128), 1u);
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

  os_unfair_lock_unlock((a1 + 136));
  return v14;
}

void sub_183CF4D08(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **CA::Render::BackdropState::copy_isolated(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v8 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 2) = 1;
    *(v8 + 3) = 4;
    ++dword_1ED4EAA48;
    *v8 = &unk_1EF1FA2C8;
    *(v8 + 136) = 0;
    v8[18] = 0;
    *(v8 + 76) = 0;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 28) = 0;
  }

  v8[2] = *(a1 + 16);
  v8[3] = *(a1 + 24);
  *(v8 + 2) = *a3;
  *(v8 + 12) = *(a1 + 48);
  v10 = *(a2 + 544);
  if (v10)
  {
    while (1)
    {
      v11 = v10[1];
      v12 = *(*(v11 + 32) + 136);
      if (v12)
      {
        v13 = *v12;
        if (v13)
        {
          if (*(v13 + 12) == 3)
          {
            v14 = *(v13 + 136);
            if (v14)
            {
              if (*(v14 + 56) == *(a1 + 56) && (*(v11 + 27) & 8) == 0 && (*(a2 + 1379) & 4) == 0)
              {
                break;
              }
            }
          }
        }
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    v27 = *(*(v11 + 256) + 56);
    v28 = v8[7];
    if (v28 != v27)
    {
      if (v28 && atomic_fetch_add(v28 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v28 + 16))(v28);
      }

      if (v27)
      {
        v29 = v27 + 2;
        if (!atomic_fetch_add(v27 + 2, 1u))
        {
          v27 = 0;
          atomic_fetch_add(v29, 0xFFFFFFFF);
        }
      }

      v9[7] = v27;
    }
  }

LABEL_14:
  if (!v9[7])
  {
    if (a4)
    {
      CA::Render::BackdropGroup::retain_group(v31, *(a1 + 16), *(*(a1 + 56) + 32), *(a1 + 136), *(a1 + 48));
      v16 = v31[0];
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *(*(a1 + 56) + 32);
      v19 = *(a1 + 136);
      v20 = *(a1 + 48);
      v30 = 0;
      CA::Render::BackdropGroup::retain_group_common(&v30, v17, v18, v19, (a2 + 592), 2, 1, v20);
      if ((*(a2 + 1377) & 8) != 0)
      {
        v31[0] = 0;
        CA::Render::BackdropGroup::retain_group(v31, v17, v18, v19, v20);
        v21 = v31[0];
        if (v31[0])
        {
          os_unfair_lock_lock((v31[0] + 40));
          v22 = *(v21 + 48);
          if (v22)
          {
            v23 = v30;
            v24 = (*(*v22 + 16))(v22);
            v25 = *(v23 + 6);
            if (v25 != v24)
            {
              if (v25)
              {
                (*(*v25 + 8))(v25);
              }

              *(v23 + 6) = v24;
            }
          }

          os_unfair_lock_unlock((v21 + 40));
          if (atomic_fetch_add((v21 + 8), 0xFFFFFFFF) == 1)
          {
            (*(*v21 + 16))(v21);
          }
        }
      }

      v16 = v30;
    }

    v26 = v9[7];
    v9[7] = v16;
    if (v26 && atomic_fetch_add(v26 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v26 + 16))(v26);
    }
  }

  return v9;
}

void X::small_vector_base<CA::Render::BackdropGroup *>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (*(a1 + 24) + 1) | ((*(a1 + 24) + 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = v7 | (v7 >> 8) | ((v7 | (v7 >> 8)) >> 16);
  v9 = v8 | HIDWORD(v8);
  if (v9 + 1 > a2)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = a2;
  }

  v11 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
  v12 = v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  if (*a1 != v14)
  {
    v15 = v11;
    do
    {
      v16 = *v13++;
      *v15++ = v16;
    }

    while (v13 != v14);
  }

  if (v3 != v5)
  {
    free(*a1);
  }

  *a1 = v12;
  *(a1 + 8) = v12 + v4 - v3;
  *(a1 + 24) = v10;
}

char *CA::Render::BackdropLayer::show(uint64_t a1, X::Stream *this, int a3, char a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ((a4 & 1) == 0)
  {
    X::Stream::printf(this, "(backdrop-layer %ld", *(a1 + 16));
    v7 = 2 * a3;
    if ((*(a1 + 13) & 1) == 0)
    {
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      X::Stream::printf(this, "(enabled false)");
    }

    if (*(a1 + 24))
    {
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      X::Stream::printf(this, "(group %s)", (*(a1 + 24) + 28));
    }

    if (*(a1 + 128))
    {
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      if (*(a1 + 128) == 2)
      {
        X::Stream::printf(this, "(groupNamespace global)");
      }

      else
      {
        X::Stream::printf(this, "(groupNamespace hostingNamespacedContext)");
      }
    }

    if (*(a1 + 32) != 1.0)
    {
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      X::Stream::printf(this, "(scale %g)", *(a1 + 32));
    }

    if (*(a1 + 40) != 0.0)
    {
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      X::Stream::printf(this, "(zoom %g)", *(a1 + 40));
    }

    if (*(a1 + 36) != 0.0)
    {
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      X::Stream::printf(this, "(marginWidth %g)", *(a1 + 36));
    }

    v8 = *(a1 + 112);
    if (v8 >= *(a1 + 120))
    {
      v8 = *(a1 + 120);
    }

    if (v8 > 0.0)
    {
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      X::Stream::printf(this, "(backdropRect [%g %g; %g %g])", *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120));
    }

    v9 = *(a1 + 12);
    if ((v9 & 0x1000) != 0)
    {
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      X::Stream::printf(this, "(captureOnly true)");
      v9 = *(a1 + 12);
      if ((v9 & 0x200) == 0)
      {
LABEL_22:
        if ((v9 & 0x2000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_52;
      }
    }

    else if ((v9 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    X::Stream::printf(this, "\n%*s", v7 + 2, "");
    X::Stream::printf(this, "(allowsInPlaceFiltering true)");
    v9 = *(a1 + 12);
    if ((v9 & 0x2000) == 0)
    {
LABEL_23:
      if ((v9 & 0x10000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_53;
    }

LABEL_52:
    X::Stream::printf(this, "\n%*s", v7 + 2, "");
    X::Stream::printf(this, "(reducesCaptureBitDepth true)");
    v9 = *(a1 + 12);
    if ((v9 & 0x10000) == 0)
    {
LABEL_24:
      if ((v9 & 0x20000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_54;
    }

LABEL_53:
    X::Stream::printf(this, "\n%*s", v7 + 2, "");
    X::Stream::printf(this, "(ignoresScreenClip true)");
    v9 = *(a1 + 12);
    if ((v9 & 0x20000) == 0)
    {
LABEL_25:
      if ((v9 & 0x100000) == 0)
      {
LABEL_27:
        if (*(a1 + 88) != 0.0)
        {
          X::Stream::printf(this, "\n%*s", v7 + 2, "");
          X::Stream::printf(this, "(updateRate %f)", *(a1 + 88));
        }

        v10 = *(a1 + 12);
        if ((v10 & 0x400) != 0)
        {
          X::Stream::printf(this, "\n%*s", v7 + 2, "");
          X::Stream::printf(this, "(tracksLuma true)");
          v10 = *(a1 + 12);
        }

        if ((~v10 & 0x80400) == 0)
        {
          X::Stream::printf(this, "\n%*s", v7 + 2, "");
          X::Stream::printf(this, "(tracksLumaWhileHidden true)");
        }

        if (*(a1 + 48) != 0.25)
        {
          X::Stream::printf(this, "\n%*s", v7 + 2, "");
          X::Stream::printf(this, "(lumaUpdateRate %g)", *(a1 + 48));
        }

        if ((*(a1 + 14) & 4) != 0)
        {
          X::Stream::printf(this, "\n%*s", v7 + 2, "");
          X::Stream::printf(this, "(allowsFilteredLuma true)");
        }

        v11 = *(a1 + 72);
        if (v11 >= *(a1 + 80))
        {
          v11 = *(a1 + 80);
        }

        if (v11 > 0.0)
        {
          X::Stream::printf(this, "\n%*s", v7 + 2, "");
          X::Stream::printf(this, "(lumaSubrect [%g %g; %g %g])", *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
        }

        if ((*(a1 + 13) & 0x40) != 0)
        {
          X::Stream::printf(this, "\n%*s", v7 + 2, "");
          X::Stream::printf(this, "(inverseMeshed true)");
        }

        v12 = *(a1 + 136);
        if (v12)
        {
          os_unfair_lock_lock((v12 + 52));
          v13 = *(v12 + 56);
          if (v13)
          {
            os_unfair_lock_lock((v13 + 40));
            v14 = *(v13 + 48);
            if (v14)
            {
              v17[0] = 0;
              v16 = 0.0;
              (*(*v14 + 24))(v14, v17 + 4, v17, &v16);
              X::Stream::printf(this, "\n%*s", v7 + 2, "");
              X::Stream::printf(this, "(buffer [%d x %d] scale %g)", HIDWORD(v17[0]), LODWORD(v17[0]), v16);
            }

            os_unfair_lock_unlock((v13 + 40));
          }

          os_unfair_lock_unlock((v12 + 52));
        }

        return X::Stream::printf(this, ")");
      }

LABEL_26:
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      X::Stream::printf(this, "(disableFilterCache true)");
      goto LABEL_27;
    }

LABEL_54:
    X::Stream::printf(this, "\n%*s", v7 + 2, "");
    X::Stream::printf(this, "(preallocatesScreenArea true)");
    if ((*(a1 + 12) & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  return X::Stream::printf(this, "backdrop-layer");
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *>(uint64_t a1, __int128 *a2)
{
  v3 = a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 6);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v6 = *(*(a1 + 216) + 112);
        v7 = *(*(a2 - 21) + 112);
        if (v6 >= *(*(a1 + 24) + 112))
        {
          if (v7 >= v6)
          {
            return 1;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>((a1 + 192), a2 - 12);
          if (*(*(v3 + 27) + 112) >= *(*(v3 + 3) + 112))
          {
            return 1;
          }

          v5 = v3 + 12;
          goto LABEL_6;
        }

        if (v7 >= v6)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a1, (a1 + 192));
          if (*(*(a2 - 21) + 112) >= *(*(v3 + 27) + 112))
          {
            return 1;
          }

          a1 = (v3 + 12);
        }

        v5 = a2 - 12;
        goto LABEL_27;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,0>(a1, a1 + 192, a1 + 384, (a2 - 12));
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,0>(a1, a1 + 192, a1 + 384, a1 + 576, (a2 - 12));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (*(*(a2 - 21) + 112) < *(*(a1 + 24) + 112))
      {
        v5 = a2 - 12;
LABEL_6:
        a1 = v3;
LABEL_27:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a1, v5);
      }

      return 1;
    }
  }

  v8 = a1 + 384;
  v9 = *(*(a1 + 216) + 112);
  v10 = *(*(a1 + 408) + 112);
  if (v9 < *(*(a1 + 24) + 112))
  {
    if (v10 >= v9)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a1, (a1 + 192));
      if (*(*(v3 + 51) + 112) >= *(*(v3 + 27) + 112))
      {
        goto LABEL_32;
      }

      a1 = (v3 + 12);
    }

    v11 = v3 + 24;
    goto LABEL_31;
  }

  if (v10 < v9)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>((a1 + 192), (a1 + 384));
    if (*(*(v3 + 27) + 112) < *(*(v3 + 3) + 112))
    {
      v11 = v3 + 12;
      a1 = v3;
LABEL_31:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a1, v11);
    }
  }

LABEL_32:
  v12 = v3 + 36;
  if (v3 + 36 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(v12 + 3);
    if (*(v15 + 112) < *(*(v8 + 24) + 112))
    {
      v36 = *v12;
      v37 = *(v12 + 2);
      v16 = v12[2];
      v17 = v12[3];
      v18 = v12[4];
      v19 = v12[5];
      v20 = v12[6];
      v21 = v12[7];
      v38 = v12[8];
      v39 = v12[9];
      *v40 = v12[10];
      v22 = v13;
      *&v40[12] = *(v12 + 172);
      while (1)
      {
        v23 = v22;
        v24 = v3 + v22;
        v25 = *(v3 + v22 + 400);
        *(v24 + 36) = *(v3 + v22 + 384);
        *(v24 + 37) = v25;
        v26 = *(v3 + v22 + 432);
        *(v24 + 38) = *(v3 + v22 + 416);
        *(v24 + 39) = v26;
        v27 = *(v3 + v22 + 464);
        *(v24 + 40) = *(v3 + v22 + 448);
        *(v24 + 41) = v27;
        v28 = *(v3 + v22 + 496);
        *(v24 + 42) = *(v3 + v22 + 480);
        *(v24 + 43) = v28;
        v29 = v3 + v22 + 704;
        v30 = (v3 + v22 + 512);
        v31 = *(v24 + 32);
        v32 = *(v24 + 33);
        v33 = *(v24 + 34);
        *(v29 + 44) = *(v30 + 44);
        *(v24 + 45) = v32;
        *(v24 + 46) = v33;
        *(v24 + 44) = v31;
        if (v23 == -384)
        {
          break;
        }

        v22 = v23 - 192;
        if (*(v15 + 112) >= *(*(v24 + 27) + 112))
        {
          v34 = v3 + v22 + 576;
          v30 = (v3 + v23 + 512);
          goto LABEL_40;
        }
      }

      v34 = v3;
LABEL_40:
      *v34 = v36;
      *(v34 + 16) = v37;
      *(v34 + 24) = v15;
      *(v34 + 32) = v16;
      *(v34 + 48) = v17;
      *(v34 + 64) = v18;
      *(v34 + 80) = v19;
      *(v34 + 96) = v20;
      *(v34 + 112) = v21;
      *v30 = v38;
      v30[1] = v39;
      v30[2] = *v40;
      ++v14;
      *(v30 + 44) = *&v40[12];
      if (v14 == 8)
      {
        return v12 + 12 == a2;
      }
    }

    v8 = v12;
    v13 += 192;
    v12 += 12;
    if (v12 == a2)
    {
      return 1;
    }
  }
}

int8x16_t CA::Render::BackdropGroup::subrect_to_master(int8x16_t *this, const CA::Rect *a2, CA::Render::LayerNode *a3, CA::Render::LayerNode *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 1);
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v20.f64[0] = *a3;
  v20.f64[1] = v4;
  v21.f64[0] = v5 + v20.f64[0];
  v21.f64[1] = v4;
  v22.f64[0] = v5 + v20.f64[0];
  v22.f64[1] = v6 + v4;
  v23.i64[0] = *&v20.f64[0];
  *&v23.i64[1] = v6 + v4;
  v19[0] = &unk_1EF1FECF0;
  v19[1] = 4;
  v19[2] = &v20;
  v7 = *(a2 + 63);
  v8 = *(a2 + 9);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 10) - v8) >> 6) <= v7)
  {
    __assert_rtn("operator[]", "x-small-vector.h", 91, "pos < size () && Out of bounds access");
  }

  CA::Render::LayerNode::MapGeometry::map(v19, a4, *(v8 + 192 * v7 + 24));
  v10 = vbslq_s8(vcgtq_f64(v21, v20), v20, v21);
  v11 = vbslq_s8(vcgtq_f64(v23, v22), v22, v23);
  v12 = vbslq_s8(vcgtq_f64(v11, v10), v10, v11);
  v13 = vbslq_s8(vcgtq_f64(v20, v21), v20, v21);
  v14 = vbslq_s8(vcgtq_f64(v22, v23), v22, v23);
  v15 = vcgtq_f64(v13, v14);
  v16 = vsubq_f64(vbslq_s8(v15, v13, v14), v12);
  *&v14.f64[0] = COERCE_UNSIGNED_INT64(vaddvq_f64(v16)) & 0x7FFFFFFFFFFFFFFFLL;
  v15.i64[0] = 0x7FF0000000000000;
  v17 = vdupq_lane_s64(vcgtq_s64(v15, v14).i64[0], 0);
  result = vbslq_s8(v17, v16, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL));
  *this = vbslq_s8(v17, v12, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL));
  this[1] = result;
  return result;
}

uint64_t CA::Render::BackdropGroup::layer_item(uint64_t result, uint64_t a2, void *a3, int a4)
{
  if (result == a2)
  {
    return 0;
  }

  while (*result != a3[3] || a3[4] != *(result + 8) || *(result + 16) != a3[5] || a4 && *(result + 184) != a4)
  {
    result += 192;
    if (result == a2)
    {
      return 0;
    }
  }

  return result;
}

char *CA::Render::Transition::show(char *result, X::Stream *a2, int a3, uint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    v7 = result;
    v8 = [(__CFString *)CAAtomGetString(*(result + 4)) cStringUsingEncoding:4];
    X::Stream::printf(a2, "(transition %s", v8);
    if (*(v7 + 5))
    {
      v9 = (a3 + 1);
      X::Stream::printf(a2, "\n%*s", 2 * v9, "");
      (*(**(v7 + 5) + 40))(*(v7 + 5), a2, v9, a4);
    }

    return X::Stream::printf(a2, ")");
  }

  return result;
}

double CA::Render::TransitionSubclass::ROI(CA::Render::TransitionSubclass *this, const Transition *a2, const CA::Rect *a3, const CA::Transform *a4, const CA::Rect *a5, CA::Rect *a6, CA::Rect *a7)
{
  result = 0.0;
  *a7 = 0u;
  *(a7 + 1) = 0u;
  *a6 = 0u;
  *(a6 + 1) = 0u;
  return result;
}

double CA::Render::TransitionSubclass::DOD@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

CA::Render::Layer *CA::Render::BuiltinTransition::apply(CA::Render::BuiltinTransition *this, const CA::Render::TransitionAnimation *a2, CA::Render::Layer *a3, int a4, float a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 25);
  v9 = *(a2 + 16);
  if (a4 != 523 && a4 != 610 && a4 != 586)
  {
    return 0;
  }

  if (v8)
  {
    v10 = *(a2 + 25);
  }

  else
  {
    v10 = 272;
  }

  v11 = *(a3 + 11);
  v12 = a5;
  v13 = round(v11 * a5);
  v14 = -v11;
  v15 = 0.0;
  if ((v10 & 0xFFFFFFFE) != 0x110)
  {
    v13 = 0.0;
    v14 = 0.0;
  }

  if (v8 == 274 || (v16 = 0.0, v8 == 271))
  {
    v17 = *(a3 + 12);
    v15 = round(v17 * v12);
    v16 = -v17;
  }

  v18 = v10 == 273 ? -v13 : v13;
  v19 = v10 == 273 ? -v14 : v14;
  v20 = v10 == 274 ? -v15 : v15;
  v21 = v10 == 274 ? -v16 : v16;
  v22 = *(a2 + 15);
  if (v22 && !CA::Render::KeyValueArray::get_int_key(v22, 241, 1))
  {
    v25 = 1.0;
    v23 = 1.0;
  }

  else
  {
    v23 = a5 + a5;
    if (a5 >= 0.5)
    {
      v23 = 1.0;
    }

    if (a5 <= 0.5)
    {
      v25 = 1.0;
    }

    else
    {
      v24 = 2.0 - v12 * 2.0;
      v25 = v24;
    }
  }

  v26 = 0.0;
  if (a4 == 523)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v18;
  }

  if (a4 == 523)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v20;
  }

  v29 = v18 + v19;
  if (a4 == 610)
  {
    v29 = 0.0;
  }

  else
  {
    v26 = v21 + v20;
  }

  v30 = CA::Render::layer_apply(a3, a2, v23, v29, v26);
  v50.i64[0] = v30;
  v32 = CA::Render::layer_apply(v9, v31, v25, v27, v28);
  v50.i64[1] = v32;
  if (a4 == 523)
  {
    v50.i64[0] = v32;
    v50.i64[1] = v30;
  }

  v33 = vaddvq_s64(vbslq_s8(vceqzq_s64(v50), xmmword_183E20F60, xmmword_183E213E0));
  v34 = v33;
  if (!v33)
  {
    return 0;
  }

  if (v33 == 1)
  {
    v35 = 0;
    v36 = &v50;
    while (1)
    {
      v37 = v36->i64[0];
      if (v36->i64[0])
      {
        break;
      }

      v38 = v35;
      v35 = 1;
      v36 = &v50.u64[1];
      if (v38)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
LABEL_48:
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v39 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
    v37 = v39;
    if (v39)
    {
      *(v39 + 2) = 1;
      *(v39 + 3) = 30;
      ++dword_1ED4EAAB0;
      *v39 = &unk_1EF1F53C8;
      *(v39 + 2) = 0;
      *(v39 + 3) = 0;
      *(v39 + 8) = 0;
      *(v39 + 9) = 16843007;
      *(v39 + 5) = *(v39 + 5) & 0x80000000 | 0x13000000F9F11;
      *(v39 + 12) = (v39[51] << 24) | 0x901818;
      *(v39 + 56) = 0u;
      *(v39 + 72) = 0u;
      *(v39 + 88) = 0u;
      *(v39 + 13) = 0;
      *(v39 + 120) = 0u;
      *(v39 + 136) = 0u;
      *(v39 + 19) = 0;
    }

    v40 = CA::Render::Array::new_array(v34, 0, 0, 0);
    v41 = v40;
    v42 = 0;
    v43 = 0;
    v44 = &v50;
    do
    {
      v45 = v42;
      if (v44->i64[0])
      {
        *&v40[8 * v43++ + 24] = v44->i64[0];
      }

      v42 = 1;
      v44 = &v50.u64[1];
    }

    while ((v45 & 1) == 0);
    v46 = *(v37 + 14);
    if (v46 && atomic_fetch_add(v46 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v46 + 16))(v46);
    }

    *(v37 + 14) = v41;
  }

  if (v37 != a3)
  {
    v47 = *(a3 + 17);
    if (v47)
    {
      v48 = *(v47 + 8);
    }

    else
    {
      v48 = 0;
    }

    CA::Render::Layer::set_timing(v37, v48);
  }

  return v37;
}

CA::Render *CA::Render::layer_apply(atomic_uint *this, CA::Render::Layer *a2, float a3, float64_t a4, float64_t a5)
{
  v5 = this;
  if (this)
  {
    v7 = *(this + 17);
    if (v7)
    {
      LOBYTE(v7) = *(v7 + 8) != 0;
    }

    if (a3 == 1.0 && a4 == 0.0 && a5 == 0.0 && (v7 & 1) == 0)
    {
      if (!atomic_fetch_add(this + 2, 1u))
      {
        v5 = 0;
        atomic_fetch_add(this + 2, 0xFFFFFFFF);
      }
    }

    else
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v8 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
      if (v8)
      {
        v9 = v8;
        v10 = CA::Render::Layer::Layer(v8, v5);
        CA::Render::Layer::set_timing(v10, 0);
        v12 = 1.0;
        if (a3 != 1.0)
        {
          LOBYTE(v12) = *(v5 + 36);
          v9[36] = ((v12 * a3) + 0.5);
        }

        v13.f64[0] = a4;
        if (a4 != 0.0 || a5 != 0.0)
        {
          v13.f64[1] = a5;
          *(v9 + 56) = vaddq_f64(*(v5 + 56), v13);
        }

        v14 = *(v9 + 3);
        if ((v14 & 0x1000) != 0 || !CA::Render::Layer::is_containerable(v9, v11))
        {
          v15 = v14 & 0xFFFFF7FF;
        }

        else
        {
          v15 = v14 | 0x800;
        }

        *(v9 + 3) = v15;
        return v9;
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

void CA::Render::add_transition(CA::Render *this, uint64_t a2, const CA::Render::TransitionSubclass *a3)
{
  v4 = this;
  os_unfair_lock_lock(&CA::Render::transition_lock);
  v5 = CA::Render::transition_table;
  if (!CA::Render::transition_table)
  {
    v5 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
    CA::Render::transition_table = v5;
  }

  hash_table_modify(v5, v4, a2, 0);

  os_unfair_lock_unlock(&CA::Render::transition_lock);
}

const void *CAML::ObjCContext::failed_to_load_resource(CAML::ObjCContext *this, const __CFURL *a2)
{
  if ((*(this + 112) & 4) == 0)
  {
    return 0;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [*(this + 12) CAMLParser:*(this + 10) didFailToLoadResourceFromURL:a2];
  v2 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  objc_autoreleasePoolPop(v5);
  return v2;
}

void CAML::ObjCContext::did_load_resource(id *this, const __CFURL *a2, const void *a3)
{
  CAML::Context::did_load_resource(this, a2, a3);
  if (a3 && (this[14] & 2) != 0)
  {
    v6 = objc_autoreleasePoolPush();
    [this[12] CAMLParser:this[10] didLoadResource:a3 fromURL:a2];

    objc_autoreleasePoolPop(v6);
  }
}

const void *CAML::ObjCContext::will_load_resource(CAML::ObjCContext *this, const __CFURL *key)
{
  v4 = *(this + 9);
  if (!v4 || (result = CFDictionaryGetValue(v4, key)) == 0)
  {
    if (*(this + 112))
    {
      v6 = *(this + 12);
      v7 = *(this + 10);

      return [v6 CAMLParser:v7 resourceForURL:key];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CAML::ObjCContext::end_script(id *this, char *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = "Null <script> contents";
    goto LABEL_5;
  }

  if ((this[14] & 0x10) == 0)
  {
    v4 = "Delegate does not support <script>.";
LABEL_5:

    CAML::Context::error(this, v4);
    return;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a2 length:a3 encoding:4];
  [this[12] CAMLParser:this[10] evaluateScriptElement:v8 sourceURL:this[3] lineNumber:*(*(this[1] + 7) + 52)];

  objc_autoreleasePoolPop(v7);
}

void CAML::ObjCContext::start_script(id *this, const char **a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = CAML::Context::parse_src_attribute(this, a2);
  if (v3)
  {
    v4 = v3;
    CAML::Context::push_state(this, 0, 0, 0, 0);
    v10 = 0;
    if ((this[14] & 0x10) == 0)
    {
      CAML::Context::error(this, "Delegate does not support <script>.");
LABEL_15:
      CFRelease(v4);
      return;
    }

    v5 = objc_autoreleasePoolPush();
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithContentsOfURL:v4 encoding:4 error:&v10];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to load CAPackage from URL: %@", v4];
    if (v10)
    {
      v8 = *MEMORY[0x1E696AA08];
      v11[0] = *MEMORY[0x1E696A578];
      v11[1] = v8;
      v12[0] = v7;
      v12[1] = v10;
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, v11, 2)}];
      v10 = v9;
      if (!v6)
      {
        if (v9)
        {
          CAML::Context::set_error(this, v9);
LABEL_14:
          objc_autoreleasePoolPop(v5);
          goto LABEL_15;
        }

LABEL_13:
        CAML::Context::error(this, "Unable to open script: %s", [objc_msgSend(v4 "absoluteString")]);
        goto LABEL_14;
      }
    }

    else if (!v6)
    {
      goto LABEL_13;
    }

    [this[12] CAMLParser:this[10] evaluateScriptElement:v6 sourceURL:v4 lineNumber:1];

    goto LABEL_14;
  }

  CAML::Context::push_state(this, 7, 0, 0, 0);
}

void CAML::ObjCContext::errorv(id *this, const char *a2, char *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a3;
  if (this[14] < 0)
  {
    [this[12] CAMLParser:this[10] formatErrorString:a2 arguments:v8 lineNumber:*(*(this[1] + 7) + 52)];
  }

  else
  {
    v7 = 0;
    vasprintf(&v7, a2, v8);
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v5 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(this[1] + 7) + 52);
      *buf = 67109378;
      v11 = v6;
      v12 = 2080;
      v13 = v7;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "CAML error:%d: %s", buf, 0x12u);
    }

    free(v7);
  }

  CAML::Context::errorv(this, a2, v9);
}

uint64_t CA::Render::Server::set_thread_priority(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2 + 55;
  v6 = 0;
  v5 = 0;
  pthread_getschedparam(this, &v5, &v6);
  v5 = 4;
  v6.sched_priority = v3;
  return pthread_setschedparam(this, 4, &v6);
}

uint64_t CA::Render::Server::port_set_qlimit(uint64_t name)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 1;
  port_info_out = 0;
  v2 = MEMORY[0x1E69E9A60];
  mach_port_get_attributes(*MEMORY[0x1E69E9A60], name, 1, &port_info_out, &v4);
  port_info_out = 3;
  return MEMORY[0x1865EB330](*v2, name, 1, &port_info_out, 1);
}

void CA::Render::Server::remove_dead_name_watch(CA::Render::Server *this)
{
  v1 = this;
  os_unfair_lock_lock(&CA::Render::Server::_dead_name_watch_list_lock);
  CA::Render::Server::dead_name_watch_list(v2);
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,BOOL (*)>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL (*)>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL (*)>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL (*)>>>::find<unsigned int>(v1);
  if (v3)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,BOOL (*)>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL (*)>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL (*)>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL (*)>>>::erase(v3);
  }

  os_unfair_lock_unlock(&CA::Render::Server::_dead_name_watch_list_lock);
}

void std::__hash_table<std::__hash_value_type<unsigned int,BOOL (*)(unsigned int)>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL (*)(unsigned int)>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL (*)(unsigned int)>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL (*)(unsigned int)>>>::erase(void *__p)
{
  v1 = *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1);
  v2 = *(__p + 1);
  v3 = vcnt_s8(*(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 8));
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    if (v2 >= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1))
    {
      v2 %= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1);
    }
  }

  else
  {
    v2 &= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1) - 1;
  }

  v4 = *(CA::Render::Server::dead_name_watch_list(void)::watch_list + 8 * v2);
  do
  {
    v5 = v4;
    v4 = *v4;
  }

  while (v4 != __p);
  if (v5 == &qword_1EA84F998)
  {
    goto LABEL_18;
  }

  v6 = v5[1];
  if (v3.u32[0] > 1uLL)
  {
    if (v6 >= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1))
    {
      v6 %= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1);
    }
  }

  else
  {
    v6 &= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1) - 1;
  }

  if (v6 != v2)
  {
LABEL_18:
    if (!*__p)
    {
      goto LABEL_19;
    }

    v7 = *(*__p + 8);
    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1))
      {
        v7 %= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1);
      }
    }

    else
    {
      v7 &= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1) - 1;
    }

    if (v7 != v2)
    {
LABEL_19:
      *(CA::Render::Server::dead_name_watch_list(void)::watch_list + 8 * v2) = 0;
    }
  }

  v8 = *__p;
  if (*__p)
  {
    v9 = *(v8 + 8);
    if (v3.u32[0] > 1uLL)
    {
      if (v9 >= v1)
      {
        v9 %= v1;
      }
    }

    else
    {
      v9 &= v1 - 1;
    }

    if (v9 != v2)
    {
      *(CA::Render::Server::dead_name_watch_list(void)::watch_list + 8 * v9) = v5;
      v8 = *__p;
    }
  }

  *v5 = v8;
  *__p = 0;
  --qword_1EA84F9A0;
  operator delete(__p);
}

BOOL CA::Render::Server::register_name(CA::Render::Server *this, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v2 = this;
  }

  else
  {
    v2 = "com.apple.CARenderServer";
  }

  v3 = *MEMORY[0x1E69E99F8];
  if ((*MEMORY[0x1E69E99F8] - 1) >= 0xFFFFFFFE)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v8 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "unable to find bootstrap server", buf, 2u);
    }

    return 0;
  }

  else
  {
    sp = 0;
    v4 = bootstrap_check_in(v3, v2, &sp);
    v5 = v4 == 0;
    if (v4)
    {
      v6 = v4;
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v7 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = v2;
        v17 = 1024;
        v18 = v6;
        _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "unable to register bootstrap port %s: %x\n", buf, 0x12u);
      }
    }

    else
    {
      v9 = CA::Render::Server::port_set_qlimit(sp);
      v10 = *MEMORY[0x1E69E9A60];
      v11 = sp;
      v12 = CA::Render::Server::port_set(v9);
      mach_port_move_member(v10, v11, v12);
      os_unfair_lock_lock(&CA::Render::Server::_checked_in_lock);
      CA::Render::Server::_checked_in_ports = x_list_prepend(CA::Render::Server::_checked_in_ports, sp);
      os_unfair_lock_unlock(&CA::Render::Server::_checked_in_lock);
    }
  }

  return v5;
}

BOOL CA::Render::Server::start(CA::Render::Server *this)
{
  v5 = *MEMORY[0x1E69E9840];
  if (CA::Render::memory_once != -1)
  {
    dispatch_once_f(&CA::Render::memory_once, 0, CA::Render::init_memory_warnings_);
  }

  pthread_mutex_lock(&CA::Render::Server::_mutex);
  atomic_store(0, CA::Render::Server::_stopping);
  if (CA::Render::Server::_thread)
  {
    v1 = 1;
  }

  else
  {
    v4 = 0;
    v2 = x_thread_create(CA::Render::Server::server_thread, &v4, 1);
    if (v2)
    {
      CA::Render::Server::set_thread_priority(v2, 0);
      if ((v4 & 1) == 0)
      {
        do
        {
          pthread_cond_wait(&CA::Render::Server::_cond, &CA::Render::Server::_mutex);
        }

        while (v4 != 1);
      }
    }

    v1 = CA::Render::Server::_thread != 0;
  }

  pthread_mutex_unlock(&CA::Render::Server::_mutex);
  return v1;
}

void CA::Render::Server::ca_mach_msg_error_f(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_e(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_d(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_c(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_b(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_a(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_9(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_8(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_7(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_6(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_5(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_4(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_3(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_2(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_1(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::ca_mach_msg_error_0(CA::Render::Server *this, int a2)
{
  if (a2 == 32)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v2 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_msg returned error!\n", v3, 2u);
    }

    abort();
  }

  (CA::Render::Server::error_jump_table[(this >> a2) & 0xF])();
  abort();
}

void CA::Render::Server::stop(CA::Render::Server *this)
{
  v6 = *MEMORY[0x1E69E9840];
  atomic_store(1u, CA::Render::Server::_stopping);
  CA::Render::Server::kick_server(this);
  if (CA::Render::Server::_server_port)
  {
    MEMORY[0x1EEE9AC00](v1);
    v3 = 0x1C00000013;
    v4 = v2;
    v5 = xmmword_183E21400;
    mach_msg(&v3, 1, 0x1Cu, 0, 0, 0, 0);
    pthread_mutex_lock(&CA::Render::Server::_mutex);
    while (CA::Render::Server::_thread)
    {
      pthread_cond_wait(&CA::Render::Server::_cond, &CA::Render::Server::_mutex);
    }

    pthread_mutex_unlock(&CA::Render::Server::_mutex);
  }
}

void ___ZN2CA6Render6Server9is_deniedEv_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  getpid();
  v0 = sandbox_check();
  if (v0 < 0)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v1 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v2 = *__error();
      *buf = 67109120;
      v4 = v2;
      _os_log_error_impl(&dword_183AA6000, v1, OS_LOG_TYPE_ERROR, "Failed to check sandbox %{darwin.errno}d", buf, 8u);
    }
  }

  CA::Render::Server::is_denied(void)::denied = v0 == 1;
}

dispatch_queue_t ___Z13dealloc_queuev_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("CA::Render::DeallocQueue", v0);
  dealloc_queue(void)::queue = result;
  return result;
}

uint64_t CASGetClientProcessId(CA::Render::Context *a1, audit_token_t *a2, CA::Render::Server *this)
{
  v6 = 4213784577;
  a2->val[0] = 0;
  if ((CA::Render::Server::audit_token_cache_lookup(this, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v7) & 0x20000) == 0)
  {
    v8 = CA::Render::Context::context_by_client_port(a1);
    if (v8)
    {
      v9 = v8;
      v10 = atomic_load((v8 + 228));
      if (!v10)
      {
        v11 = *(v8 + 256) ? 0 : getpid();
        v10 = 0;
        atomic_compare_exchange_strong(v9 + 57, &v10, v11);
        if (!v10)
        {
          v10 = v11;
        }
      }

      a2->val[0] = v10;
      if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v9 + 16))(v9);
      }

      v6 = 0;
    }

    else
    {
      v6 = 56;
    }
  }

  if (a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], a1);
  }

  return v6;
}

uint64_t CASSetDebugMessage(const char *a1, const audit_token_t *a2, CA::Render::Server *this)
{
  v4 = a2;
  v11 = *MEMORY[0x1E69E9840];
  v6 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(this, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v7) & 0x20000) == 0)
  {
    if ((CA::Render::Server::audit_token_cache_lookup(this, v8) & 0x100) != 0)
    {
      memset(v10, 0, sizeof(v10));
      strlcpy(v10, a1, 0x100uLL);
      CASetDebugMessage(v10, v4);
      return 0;
    }

    else
    {
      return 53;
    }
  }

  return v6;
}

uint64_t CASRenderDisplaySurface(const char *a1, audit_token_t *a2, unsigned int *a3, mach_port_t a4, mach_port_t a5, int a6, int a7, int a8, double a9, CA::Mat4Impl *a10, int a11, unsigned int a12, unint64_t *a13, CA::Render::Server *a14)
{
  v52 = *MEMORY[0x1E69E9840];
  v22 = 4213784577;
  v23 = 4 * a3;
  if ((CA::Render::Server::audit_token_cache_lookup(a14, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(a14, v24) & 0x20000) != 0)
  {
    goto LABEL_13;
  }

  if (strnlen(a1, 0x100uLL) - 256 < 0xFFFFFF01 || (v25 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a1, 0x8000100u, *MEMORY[0x1E695E498])) == 0)
  {
    v22 = 4;
    goto LABEL_13;
  }

  v35 = a7;
  CFRelease(v25);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v26 = IOSurfaceLookupFromMachPort(a4);
  v27 = IOSurfaceLookupFromMachPort(a5);
  if (v26)
  {
    v40 = &unk_1EF1FA4D8;
    v28 = v27;
    Width = IOSurfaceGetWidth(v26);
    Height = IOSurfaceGetHeight(v26);
    v34 = v26;
    v43 = v26;
    v38 = 0;
    v39 = 0;
    v37 = &unk_1EF1FA4D8;
    *(&v45 + 1) = &v40;
    v29 = v28;
    if (v28)
    {
      LODWORD(v38) = IOSurfaceGetWidth(v28);
      HIDWORD(v38) = IOSurfaceGetHeight(v28);
      v39 = v28;
      *&v46 = &v37;
    }

    HIDWORD(v49) = a6;
    v30 = v34;
    v31 = IOSurfaceGetProtectionOptions() != 0;
    if (!v29)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v22 = 5;
  v30 = 0;
  v29 = v27;
  if (v27)
  {
LABEL_9:
    CFRelease(v29);
  }

LABEL_10:
  if (v30)
  {
    CFRelease(v30);
  }

LABEL_13:
  v32 = MEMORY[0x1E69E9A60];
  mach_vm_deallocate(*MEMORY[0x1E69E9A60], a2, v23);
  if (a5)
  {
    mach_port_deallocate(*v32, a5);
  }

  if (a4)
  {
    mach_port_deallocate(*v32, a4);
  }

  return v22;
}

uint64_t anonymous namespace::render_display(const char *a1, _anonymous_namespace_ *a2, unsigned int *a3, int a4, int a5, CA::Mat4Impl *this, int a7, BOOL *a8, double a9, unint64_t *a10, _anonymous_namespace_ *a11, uint64_t a12, char a13)
{
  v32 = *MEMORY[0x1E69E9840];
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  CA::Transform::set(v30, this, 1);
  if (a13)
  {
    *a12 = 0;
    *(a12 + 4) = 1;
    v21 = *(a12 + 112) & 0xFB;
  }

  else
  {
    if ((a13 & 2) == 0)
    {
      *(a12 + 84) = 0x10000;
    }

    v21 = *(a12 + 112) | 4;
  }

  *(a12 + 112) = v21;
  *(a12 + 16) = CFStringCreateWithCString(0, a1, 0x8000100u);
  *(a12 + 60) = a4;
  *(a12 + 64) = a5;
  *(a12 + 72) = a9;
  *(a12 + 40) = a3;
  *(a12 + 48) = a2;
  v22 = v30;
  if (*v30 == 0.0)
  {
    v23 = 1;
    do
    {
      if (v23 == 16)
      {
        goto LABEL_11;
      }

      v24 = v23;
      v25 = *(v30 + v23++);
    }

    while (v25 == 0.0);
    if ((v24 - 1) >= 0xF)
    {
LABEL_11:
      v22 = 0;
      goto LABEL_13;
    }

    v22 = v30;
  }

LABEL_13:
  *(a12 + 80) = a7;
  *(a12 + 96) = v22;
  *(a12 + 104) = 0;
  v26 = *(a12 + 112) & 0xCD;
  *(a12 + 7) = (a8 & 0x400) != 0;
  *(a12 + 8) = (a8 & 0x2000) != 0;
  *(a12 + 112) = v26 | BYTE1(a8) & 0x10 | (a8 >> 10) & 2;
  if (*(a12 + 24))
  {
    CA::Render::post_notification(0x13u, 0, a12, 0);
  }

  v27 = *(a12 + 16);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a12 + 112);
  if (a10)
  {
    *a10 = *(a12 + 104) | ((*(a12 + 112) & 0x20) << 58);
    v28 = *(a12 + 112);
  }

  if ((v28 & 0x20) != 0)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t anonymous namespace::check_capture_entitlements(uint64_t this, audit_token_t *a2, int *a3, BOOL *a4, BOOL *a5, BOOL *a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v6 = a6;
    v11 = *(this + 16);
    v15 = *this;
    v16 = v11;
    a2->val[0] = 0;
    v12 = DWORD1(v16);
    if (DWORD1(v16) != getpid() && (CA::Render::Server::audit_token_cache_lookup(&v15, v13) & 1) == 0)
    {
      a2->val[0] = v12;
    }

    if ((CA::Render::Server::audit_token_cache_lookup(&v15, v13) & 8) != 0)
    {
      *a3 = (v6 & 2) == 0;
      *a4 = (v6 & 0x20) != 0;
    }

    this = CA::Render::Server::audit_token_cache_lookup(&v15, v14);
    if ((this & 0x800) != 0)
    {
      *a5 = HIBYTE(v6) & 1;
    }
  }

  return this;
}

float anonymous namespace::get_max_context_level(_anonymous_namespace_ *this, unsigned int *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v6 = 2139095040;
    return *&v6;
  }

  v2 = a2;
  v4 = 8 * a2;
  if (a2 <= 0x200)
  {
    MEMORY[0x1EEE9AC00](this);
    v5 = v18 - ((v4 + 15) & 0xFFFFFFFF0);
    bzero(v5, v4);
    goto LABEL_6;
  }

  v5 = malloc_type_malloc(8 * a2, 0xF5A4B172uLL);
  bzero(v5, v4);
  if (!v5)
  {
    v6 = -8388608;
    return *&v6;
  }

LABEL_6:
  v7 = 0;
  while (1)
  {
    v8 = CA::Render::Context::context_by_id(*(this + v7));
    *&v5[8 * v7] = v8;
    if (!v8)
    {
      break;
    }

    if (v2 == ++v7)
    {
      goto LABEL_11;
    }
  }

  if (v7 != v2)
  {
    v10 = -INFINITY;
    goto LABEL_26;
  }

LABEL_11:
  v9 = 0;
  v10 = -INFINITY;
  do
  {
    v11 = *&v5[8 * v9];
    v12 = v11 + 2;
    if (!atomic_fetch_add(v11 + 2, 1u))
    {
      v11 = 0;
      atomic_fetch_add(v12, 0xFFFFFFFF);
    }

    v13 = 0;
    do
    {
      v14 = v11;
      v11 = CA::Render::Context::retain_host_context(v11);
      if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v13 + 16))(v13);
      }

      v13 = v14;
    }

    while (v11);
    if (*(v14 + 48) > v10)
    {
      v10 = *(v14 + 48);
    }

    if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v14 + 16))(v14);
    }

    ++v9;
  }

  while (v9 != v2);
LABEL_26:
  for (i = 0; i != v2; ++i)
  {
    v16 = *&v5[8 * i];
    if (v16)
    {
      if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v16 + 16))(v16);
      }

      *&v5[8 * i] = 0;
    }
  }

  if (v2 >= 0x201)
  {
    free(v5);
  }

  return v10;
}

uint64_t CASRenderDisplayShmem(const char *a1, _anonymous_namespace_ *a2, unsigned int *a3, int a4, int a5, uint64_t a6, mem_entry_name_port_t a7, mach_vm_size_t a8, double a9, int a10, int a11, int a12, CA::Mat4Impl *a13, int a14, unsigned int a15, unint64_t *a16, CA::Render::Server *a17)
{
  v47 = *MEMORY[0x1E69E9840];
  v25 = 4213784577;
  v26 = 4 * a3;
  if ((CA::Render::Server::audit_token_cache_lookup(a17, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(a17, v27) & 0x20000) == 0)
  {
    if (strnlen(a1, 0x100uLL) - 256 >= 0xFFFFFF01)
    {
      v28 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a1, 0x8000100u, *MEMORY[0x1E695E498]);
      if (v28)
      {
        CFRelease(v28);
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        v37 = a6;
        v34 = &unk_1EF1FA518;
        v35 = a4;
        v36 = a5;
        v38 = CA::Render::Shmem::new_shmem(a7, a8, 1, a10);
        v29 = &v34;
        if (!v38)
        {
          v29 = 0;
        }

        *(&v40 + 1) = v29;
        v34 = &unk_1EF1FA518;
        v30 = v38;
        if (v38 && atomic_fetch_add(v38 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v30 + 16))(v30);
        }

        mach_vm_deallocate(*MEMORY[0x1E69E9A60], a2, v26);
        return v25;
      }
    }

    v25 = 4;
  }

  v31 = MEMORY[0x1E69E9A60];
  mach_vm_deallocate(*MEMORY[0x1E69E9A60], a2, v26);
  if (a7)
  {
    mach_port_deallocate(*v31, a7);
  }

  return v25;
}

void anonymous namespace::MIGRenderBuffer::~MIGRenderBuffer(_anonymous_namespace_::MIGRenderBuffer *this)
{
  *this = &unk_1EF1FA518;
  v1 = *(this + 3);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
  }

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF1FA518;
  v1 = *(this + 3);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
    }
  }
}

uint64_t CASRenderDisplayLayerSurface(const char *a1, audit_token_t *a2, uint64_t a3, mach_port_t a4, mach_port_t a5, int a6, int a7, CA::Mat4Impl *a8, double a9, unsigned int a10, unint64_t *a11, CA::Render::Server *a12)
{
  v44 = *MEMORY[0x1E69E9840];
  v21 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(a12, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(a12, v22) & 0x20000) != 0)
  {
    goto LABEL_13;
  }

  if (strnlen(a1, 0x100uLL) - 256 < 0xFFFFFF01 || (v23 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a1, 0x8000100u, *MEMORY[0x1E695E498])) == 0)
  {
    v21 = 4;
    goto LABEL_13;
  }

  CFRelease(v23);
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v38, 0, sizeof(v38));
  v24 = IOSurfaceLookupFromMachPort(a4);
  v25 = IOSurfaceLookupFromMachPort(a5);
  cf = v24;
  if (v24)
  {
    v34 = &unk_1EF1FA4D8;
    buffer = v25;
    Width = IOSurfaceGetWidth(v24);
    Height = IOSurfaceGetHeight(v24);
    v37 = v24;
    v32 = 0;
    v33 = 0;
    v31 = &unk_1EF1FA4D8;
    *(&v39 + 1) = &v34;
    if (buffer)
    {
      LODWORD(v32) = IOSurfaceGetWidth(buffer);
      HIDWORD(v32) = IOSurfaceGetHeight(buffer);
      v33 = buffer;
      *&v40 = &v31;
    }

    v26 = IOSurfaceGetProtectionOptions() != 0;
    v25 = buffer;
    if (!buffer)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v21 = 5;
  if (v25)
  {
LABEL_9:
    CFRelease(v25);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_13:
  v27 = MEMORY[0x1E69E9A60];
  if (a5)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], a5);
  }

  if (a4)
  {
    mach_port_deallocate(*v27, a4);
  }

  return v21;
}

uint64_t CASRenderDisplayLayerShmem(const char *a1, CA::Render::Context *a2, uint64_t a3, int a4, int a5, uint64_t a6, mem_entry_name_port_t a7, mach_vm_size_t a8, double a9, int a10, int a11, int a12, CA::Mat4Impl *a13, unsigned int a14, unint64_t *a15, CA::Render::Server *a16)
{
  v42 = *MEMORY[0x1E69E9840];
  v25 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(a16, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(a16, v26) & 0x20000) == 0)
  {
    if (strnlen(a1, 0x100uLL) - 256 >= 0xFFFFFF01)
    {
      v27 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a1, 0x8000100u, *MEMORY[0x1E695E498]);
      if (v27)
      {
        CFRelease(v27);
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        memset(v36, 0, sizeof(v36));
        v34 = a6;
        v31 = &unk_1EF1FA518;
        v32 = a4;
        v33 = a5;
        v35 = CA::Render::Shmem::new_shmem(a7, a8, 1, a10);
        v28 = &v31;
        if (!v35)
        {
          v28 = 0;
        }

        *(&v37 + 1) = v28;
        v31 = &unk_1EF1FA518;
        v29 = v35;
        if (v35 && atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v29 + 16))(v29);
        }

        return v25;
      }
    }

    v25 = 4;
  }

  if (a7)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], a7);
  }

  return v25;
}

uint64_t CASRenderDisplayContextListSurface(const char *a1, const audit_token_t *a2, unsigned int a3, mach_port_t a4, mach_port_t a5, int a6, int a7, CA::Mat4Impl *a8, double a9, unsigned int a10, unsigned int a11, unint64_t *a12, CA::Render::Server *a13)
{
  v46 = *MEMORY[0x1E69E9840];
  v19 = 4213784577;
  v20 = 4 * a3;
  if ((CA::Render::Server::audit_token_cache_lookup(a13, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(a13, v21) & 0x20000) != 0)
  {
    goto LABEL_13;
  }

  if (strnlen(a1, 0x100uLL) - 256 < 0xFFFFFF01 || (v22 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a1, 0x8000100u, *MEMORY[0x1E695E498])) == 0)
  {
    v19 = 4;
    goto LABEL_13;
  }

  CFRelease(v22);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  memset(v40, 0, sizeof(v40));
  v23 = IOSurfaceLookupFromMachPort(a4);
  v24 = IOSurfaceLookupFromMachPort(a5);
  cf = v23;
  if (v23)
  {
    v36 = &unk_1EF1FA4D8;
    buffer = v24;
    Width = IOSurfaceGetWidth(v23);
    Height = IOSurfaceGetHeight(v23);
    v39 = v23;
    v34 = 0;
    v35 = 0;
    v33 = &unk_1EF1FA4D8;
    *(&v41 + 1) = &v36;
    if (buffer)
    {
      LODWORD(v34) = IOSurfaceGetWidth(buffer);
      HIDWORD(v34) = IOSurfaceGetHeight(buffer);
      v35 = buffer;
      *&v42 = &v33;
    }

    v25 = IOSurfaceGetProtectionOptions() != 0;
    v24 = buffer;
    if (!buffer)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v19 = 5;
  if (v24)
  {
LABEL_9:
    CFRelease(v24);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_13:
  v26 = MEMORY[0x1E69E9A60];
  mach_vm_deallocate(*MEMORY[0x1E69E9A60], a8, a10 << 7);
  mach_vm_deallocate(*v26, a2, v20);
  if (a5)
  {
    mach_port_deallocate(*v26, a5);
  }

  if (a4)
  {
    mach_port_deallocate(*v26, a4);
  }

  return v19;
}

uint64_t anonymous namespace::render_display_context_list(const char *a1, uint64_t a2, unsigned int a3, int a4, int a5, CA::Mat4Impl *a6, unsigned int a7, BOOL *a8, double a9, unint64_t *a10, _anonymous_namespace_ *a11, uint64_t a12, char a13)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a3 > 0x200)
  {
    v24 = malloc_type_malloc(8 * a3, 0x6C36391CuLL);
    v23 = v24;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v23 = &v45 - ((v22 + 15) & 0xFFFFFFFF0);
    bzero(v23, v22);
  }

  if (a7 <= 0x1A)
  {
    MEMORY[0x1EEE9AC00](v24);
    v26 = &v45 - ((v25 + 15) & 0x1FFFFFFFFF0);
    bzero(v26, v25);
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_19:
    v38 = 5;
    goto LABEL_41;
  }

  v26 = malloc_type_malloc(152 * a7, 0xE709007uLL);
  if (!v23)
  {
    goto LABEL_19;
  }

LABEL_6:
  v46 = a1;
  v47 = a4;
  v48 = a5;
  v49 = a7;
  if (a7)
  {
    v27 = v26 + 144;
    v28 = v49;
    do
    {
      CA::Transform::set(v50, a6, 1);
      v29 = v50[1];
      v30 = v50[2];
      v31 = v50[3];
      *(v27 - 9) = v50[0];
      *(v27 - 8) = v29;
      *(v27 - 7) = v30;
      *(v27 - 6) = v31;
      v32 = v50[5];
      v33 = v50[6];
      v34 = v50[7];
      *(v27 - 5) = v50[4];
      *(v27 - 4) = v32;
      *(v27 - 3) = v33;
      *(v27 - 2) = v34;
      *(v27 - 1) = v50[8];
      *v27 = *v27 & 0xE0 | v51 & 0x1F;
      v27 += 152;
      a6 = (a6 + 128);
      --v28;
    }

    while (v28);
  }

  if (a3)
  {
    v35 = 0;
    while (1)
    {
      v36 = CA::Render::Context::context_by_id(*(a2 + 4 * v35));
      *&v23[8 * v35] = v36;
      if (!v36)
      {
        break;
      }

      if (a3 == ++v35)
      {
        LODWORD(v35) = a3;
        break;
      }
    }

    if ((a13 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    LODWORD(v35) = 0;
    if ((a13 & 1) == 0)
    {
LABEL_15:
      if ((a13 & 2) == 0)
      {
        *(a12 + 72) = 0x10000;
      }

      v37 = *(a12 + 104) | 1;
      goto LABEL_22;
    }
  }

  *a12 = 0;
  *(a12 + 4) = 1;
  v37 = *(a12 + 104) & 0xFE;
LABEL_22:
  *(a12 + 104) = v37;
  v38 = 5;
  if (a3 && v35 == a3)
  {
    v39 = CFStringCreateWithCString(0, v46, 0x8000100u);
    *(a12 + 16) = v39;
    *(a12 + 24) = a3;
    *(a12 + 32) = v23;
    v40 = v48;
    *(a12 + 56) = v47;
    *(a12 + 60) = v40;
    *(a12 + 64) = a9;
    *(a12 + 80) = v49;
    *(a12 + 88) = v26;
    *(a12 + 96) = 0;
    LOBYTE(v40) = *(a12 + 104) & 0xC9;
    *(a12 + 7) = (a8 & 0x400) != 0;
    *(a12 + 8) = (a8 & 0x2000) != 0;
    *(a12 + 104) = BYTE1(a8) & 0x10 | (a8 >> 5) & 4 | (a8 >> 10) & 2 | v40;
    if (*(a12 + 40))
    {
      CA::Render::post_notification(0x15u, 0, a12, 0);
      v39 = *(a12 + 16);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    v41 = *(a12 + 104);
    if (a10)
    {
      *a10 = *(a12 + 96) | ((*(a12 + 104) & 0x20) << 58);
      v41 = *(a12 + 104);
    }

    if ((v41 & 0x20) != 0)
    {
      v38 = 0;
    }

    else
    {
      v38 = 5;
    }
  }

  if (v35)
  {
    v35 = v35;
    v42 = v23;
    do
    {
      v43 = *v42;
      if (*v42 && atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v43 + 16))(v43);
      }

      ++v42;
      --v35;
    }

    while (v35);
  }

  if (a3 > 0x200)
  {
    free(v23);
  }

LABEL_41:
  if (a7 >= 0x1B && v26)
  {
    free(v26);
  }

  return v38;
}

uint64_t CASRenderDisplayContextListShmem(const char *a1, const audit_token_t *a2, unsigned int a3, int a4, int a5, uint64_t a6, mem_entry_name_port_t a7, mach_vm_size_t a8, double a9, int a10, int a11, int a12, CA::Mat4Impl *a13, unsigned int a14, unsigned int a15, unint64_t *a16, CA::Render::Server *a17)
{
  v45 = *MEMORY[0x1E69E9840];
  v22 = 4213784577;
  v23 = 4 * a3;
  if ((CA::Render::Server::audit_token_cache_lookup(a17, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(a17, v24) & 0x20000) == 0)
  {
    if (strnlen(a1, 0x100uLL) - 256 >= 0xFFFFFF01 && (v25 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a1, 0x8000100u, *MEMORY[0x1E695E498])) != 0)
    {
      CFRelease(v25);
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      memset(v39, 0, sizeof(v39));
      v34 = &unk_1EF1FA518;
      v35 = a4;
      v36 = a5;
      v37 = a6;
      v38 = CA::Render::Shmem::new_shmem(a7, a8, 1, a10);
      v26 = &v34;
      if (!v38)
      {
        v26 = 0;
      }

      *(&v40 + 1) = v26;
      v34 = &unk_1EF1FA518;
      v27 = v38;
      if (v38 && atomic_fetch_add(v38 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v27 + 16))(v27);
      }

      a7 = 0;
    }

    else
    {
      v22 = 4;
    }
  }

  v28 = MEMORY[0x1E69E9A60];
  mach_vm_deallocate(*MEMORY[0x1E69E9A60], a13, a14 << 7);
  mach_vm_deallocate(*v28, a2, v23);
  if (a7)
  {
    mach_port_deallocate(*v28, a7);
  }

  return v22;
}

uint64_t CASCaptureDisplay(const char *a1, _anonymous_namespace_ *a2, unsigned int *a3, _anonymous_namespace_ *a4, int a5, int a6, int a7, int a8, double a9, CA::Mat4Impl *a10, int a11, unsigned int a12, CA::Render::Server *a13)
{
  v37 = *MEMORY[0x1E69E9840];
  v22 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(a13, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(a13, v23) & 0x20000) == 0)
  {
    if (strnlen(a1, 0x100uLL) - 256 >= 0xFFFFFF01 && (v24 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a1, 0x8000100u, *MEMORY[0x1E695E498])) != 0)
    {
      CFRelease(v24);
      v36 = 8;
      v32 = 0;
      v35 = 0u;
      v30 = 0u;
      v31 = 0u;
      v27 = 0;
      v29 = 0u;
      v26 = 0u;
      v33 = a6;
      v34 = a5;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }

    else
    {
      v22 = 4;
    }
  }

  mach_vm_deallocate(*MEMORY[0x1E69E9A60], a2, 4 * a3);
  return v22;
}

void anonymous namespace::SlotRenderBuffer::~SlotRenderBuffer(_anonymous_namespace_::SlotRenderBuffer *this)
{
  *this = &unk_1EF1FA5D8;
  v2 = *(this + 4);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FA5D8;
  v1 = *(this + 4);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
    }
  }
}

uint64_t anonymous namespace::SlotIOSurface::set_edr_factor(uint64_t this, float a2, __IOSurface *a3)
{
  *(*(this + 24) + 368) = *(*(this + 24) + 368) & 0xFFF7 | (8 * (a2 != 1.0));
  v3 = *(this + 24);
  *(v3 + 368) |= 4u;
  if (*(v3 + 148) != a2)
  {
    *(v3 + 148) = a2;
    return CA::Render::iosurface_set_edr_factor(*(v3 + 128), a3, a2);
  }

  return this;
}

void anonymous namespace::SlotIOSurface::~SlotIOSurface(_anonymous_namespace_::SlotIOSurface *this)
{
  *this = &unk_1EF1FA598;
  v2 = *(this + 3);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FA598;
  v1 = *(this + 3);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
    }
  }
}

uint64_t CASCaptureDisplayContextList(const char *a1, const audit_token_t *a2, unsigned int a3, _anonymous_namespace_ *a4, int a5, int a6, int a7, CA::Mat4Impl *a8, double a9, unsigned int a10, unsigned int a11, CA::Render::Server *a12)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(a12, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(a12, v21) & 0x20000) == 0)
  {
    if (strnlen(a1, 0x100uLL) - 256 >= 0xFFFFFF01 && (v22 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a1, 0x8000100u, *MEMORY[0x1E695E498])) != 0)
    {
      CFRelease(v22);
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0;
      memset(v26, 0, sizeof(v26));
      BYTE8(v32) = 8;
      HIDWORD(v30) = a5;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }

    else
    {
      v20 = 4;
    }
  }

  v23 = MEMORY[0x1E69E9A60];
  mach_vm_deallocate(*MEMORY[0x1E69E9A60], a8, a10 << 7);
  mach_vm_deallocate(*v23, a2, 4 * a3);
  return v20;
}

uint64_t CASSetDisplayProperties(int a1, const audit_token_t *a2, int a3, uint64_t a4, int a5, char a6, unsigned int a7, int a8, float a9, float a10, int a11, unsigned __int8 a12, unsigned int a13, mach_port_name_t a14, CA::Render::Server *a15)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a14 - 1 > 0xFFFFFFFD)
  {
    return 5;
  }

  v23 = a2;
  v24 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(a15, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(a15, v25) & 0x20000) == 0)
  {
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    v24 = 5;
    if (!a3 && (byte_1ED4E9823 & 1) == 0)
    {
      v27 = CA::Render::Server::audit_token_cache_lookup(a15, v26);
      v28 = a13 & 0xFFFFFFCF;
      v30 = 0u;
      v31 = 0u;
      if ((v27 & 2) != 0)
      {
        v28 = a13;
      }

      LODWORD(v30) = v23;
      *(&v30 + 1) = a4;
      LODWORD(v31) = a5;
      BYTE4(v31) = a6;
      *(&v31 + 1) = __PAIR64__(LODWORD(a9), a7);
      v32 = a10;
      v33 = a8;
      v34 = a12;
      v35 = v28;
      v36 = a14;
      CA::Render::post_notification(0x20u, 0, &v30, 0);
      v24 = 0;
    }
  }

  mach_port_deallocate(*MEMORY[0x1E69E9A60], a14);
  return v24;
}

uint64_t CASSetDisplayPresetProperties(int a1, const audit_token_t *a2, mach_port_name_t a3, CA::Render::Server *this, double a5, double a6, double a7, double a8)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 - 1 > 0xFFFFFFFD)
  {
    return 5;
  }

  v14 = a2;
  v16 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(this, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v17) & 0x20000) == 0)
  {
    if ((CA::Render::Server::audit_token_cache_lookup(this, v18) & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if ((byte_1ED4E9823 & 1) == 0)
    {
      v20[0] = a1;
      v20[1] = v14;
      v21 = a5;
      v22 = a6;
      v23 = a7;
      v24 = a8;
      v25 = a3;
      CA::Render::post_notification(0x21u, 0, v20, 0);
      v16 = 0;
    }

    else
    {
LABEL_8:
      v16 = 5;
    }
  }

  mach_port_deallocate(*MEMORY[0x1E69E9A60], a3);
  return v16;
}

uint64_t CASSetDisplayLatency(int a1, const audit_token_t *a2, uint64_t a3, CA::Render::Server *this, double a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(this, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v11) & 0x20000) == 0)
  {
    if (LOBYTE(a2->val[0]))
    {
      v15[0] = 0;
      v15[1] = a1;
      v12 = *&a2->val[4];
      v16 = *a2->val;
      v17 = v12;
      v13 = *&a2[1].val[4];
      v18 = *a2[1].val;
      v19 = v13;
      v20 = a3;
      v21 = a5;
      CA::Render::post_notification(0x23u, 0, v15, 0);
      if (LOBYTE(v15[0]))
      {
        return 0;
      }

      else
      {
        return 56;
      }
    }

    else
    {
      return 5;
    }
  }

  return v10;
}

uint64_t CASRegisterForDisallowedLayersNotification(mach_port_name_t a1, const audit_token_t *a2, CA::Render::Server *this)
{
  v4 = a2;
  v12 = *MEMORY[0x1E69E9840];
  v6 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(this, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v7) & 0x20000) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v8) & 0x10000) != 0)
  {
    if (a1 - 1 > 0xFFFFFFFD)
    {
      return 4;
    }

    else
    {
      v10[1] = a1;
      v11 = 0;
      v10[0] = v4;
      CA::Render::post_notification(0x24u, 0, v10, 0);
      v6 = 0;
      if ((v11 & 1) == 0)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], a1);
        return 56;
      }
    }
  }

  return v6;
}

uint64_t CASUnregisterForDisallowedLayersNotification(int a1, const audit_token_t *a2, int a3, CA::Render::Server *this)
{
  v6 = a2;
  v14 = *MEMORY[0x1E69E9840];
  v8 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(this, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v9) & 0x20000) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v10) & 0x10000) != 0)
  {
    if (v6 - 1 > 0xFFFFFFFD)
    {
      return 5;
    }

    v12[1] = a1;
    v13 = 0;
    v12[0] = a3;
    CA::Render::post_notification(0x25u, 0, v12, 0);
    v8 = 0;
    if ((v13 & 1) == 0)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v6);
      return 5;
    }
  }

  return v8;
}

uint64_t CASFlipBookRender(int a1, const audit_token_t *a2, unsigned int a3, uint64_t a4, unsigned int a5, CA::Render::Server *this)
{
  v9 = a2;
  v16 = *MEMORY[0x1E69E9840];
  if ((CA::Render::Server::audit_token_cache_lookup(this, a2) & 0x40) == 0)
  {
    return 53;
  }

  v14 = a4;
  v12[0] = a1;
  v12[1] = v9;
  v13 = a3;
  v15 = a5;
  CA::Render::post_notification(0xDu, 0, v12, 0);
  return 0;
}

uint64_t CASContentStreamModify(mach_port_name_t a1, const audit_token_t *a2, uint64_t a3, CA::Render::Server *this)
{
  v6 = a2;
  v18 = *MEMORY[0x1E69E9840];
  v8 = 4213784577;
  v9 = CA::Render::Server::audit_token_cache_lookup(this, a2);
  v11 = MEMORY[0x1E69E9A60];
  if (v9 < 0 || (CA::Render::Server::audit_token_cache_lookup(this, v10) & 0x20000) != 0 || (CA::Render::Server::audit_token_cache_lookup(this, v12) & 0x8000) == 0)
  {
    goto LABEL_11;
  }

  if (*(a3 + 77) != 1)
  {
    goto LABEL_7;
  }

  if (!v6)
  {
    v8 = 4;
    if (!a1)
    {
      return v8;
    }

    goto LABEL_14;
  }

  if (*a3)
  {
LABEL_7:
    v17 = 0;
    v14 = a3;
    v15 = a1;
    v16 = v6;
    CA::Render::post_notification(0x3Fu, 0, &v14, 0);
    if (BYTE1(v17))
    {
      v8 = 0;
    }

    else
    {
      v8 = 5;
    }

    if (v17)
    {
      return v8;
    }

LABEL_11:
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = 4;
LABEL_12:
  mach_port_deallocate(*v11, v6);
LABEL_13:
  if (a1)
  {
LABEL_14:
    mach_port_deallocate(*v11, a1);
  }

  return v8;
}

uint64_t CASContentStreamStartStop(CA::Render::ContentStream *a1, const audit_token_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, CA::Render::Server *this)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v12 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(this, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v13) & 0x20000) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v14) & 0x8000) != 0)
  {
    stream_and_lock = CA::Render::ContentStream::get_or_create_stream_and_lock(a1, 0, 0);
    if (stream_and_lock)
    {
      if (a5 + a4 != a3)
      {
        __assert_rtn("CASContentStreamStartStop", "render-server.cpp", 4935, "included_count + excluded_count == contexts_count");
      }

      v16 = stream_and_lock;
      v17 = a3 != 0;
      X::small_vector_base<unsigned int>::resize((stream_and_lock + 18), a4);
      X::small_vector_base<unsigned int>::resize((v16 + 26), a5);
      memcpy(v16[18], a2, 4 * a4);
      memcpy(v16[26], &a2->val[a4], 4 * a5);
      if (!a3)
      {
        *(v16 + 100) = 0;
      }

      *(v16 + 408) = v17;
      memset(v30, 0, 40);
      v29 = 0u;
      v28 = 0u;
      memset(v27, 0, sizeof(v27));
      v26 = 0u;
      *&v25[24] = 0u;
      v18 = *(v16 + 7);
      v24[2] = *(v16 + 6);
      *v25 = v18;
      *&v25[11] = *(v16 + 123);
      v19 = *(v16 + 5);
      v24[0] = *(v16 + 4);
      v24[1] = v19;
      *&v25[32] = &v27[1];
      *&v26 = &v27[1];
      *(&v26 + 1) = &v27[1];
      v27[0] = 8;
      X::small_vector_base<unsigned int>::append<unsigned int const*>(&v25[32], v16[18], v16[19]);
      *(&v28 + 1) = &v30[1];
      *&v29 = &v30[1];
      *(&v29 + 1) = &v30[1];
      v30[0] = 8;
      X::small_vector_base<unsigned int>::append<unsigned int const*>(&v28 + 8, v16[26], v16[27]);
      pthread_mutex_unlock(v16);
      v23[0] = v24;
      v23[1] = v17;
      if (!DWORD1(v24[0]))
      {
        __assert_rtn("CASContentStreamStartStop", "render-server.cpp", 4952, "!implicit display not yet implemented");
      }

      CA::Render::post_notification(0x3Eu, 0, v23, 0);
      if (*(&v28 + 1) != *(&v29 + 1))
      {
        free(*(&v28 + 1));
      }

      if (*&v25[32] != *(&v26 + 1))
      {
        free(*&v25[32]);
      }

      v12 = 0;
    }

    else
    {
      v12 = 56;
    }
  }

  v20 = 4 * a3;
  v21 = MEMORY[0x1E69E9A60];
  mach_vm_deallocate(*MEMORY[0x1E69E9A60], a2, v20);
  if (a1)
  {
    mach_port_deallocate(*v21, a1);
  }

  return v12;
}

void X::small_vector_base<unsigned int>::append<unsigned int const*>(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = (a3 - a2) >> 2;
  v8 = *(a1 + 8);
  v9 = v8 - *a1;
  if (v7 > *(a1 + 24) - (v9 >> 2))
  {
    X::small_vector_base<unsigned int>::grow(a1, (v9 >> 2) + v7);
    v8 = *(a1 + 8);
  }

  if (v4 != a3)
  {
    v10 = v8;
    do
    {
      v11 = *v4;
      v4 += 4;
      *v10++ = v11;
    }

    while (v4 != a3);
  }

  *(a1 + 8) = v8 + v6;
}

uint64_t CASContentStreamReleaseSurf(CA::Render::ContentStream *a1, const audit_token_t *a2, CA::Render::Server *this)
{
  v4 = a2;
  v6 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(this, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v7) & 0x20000) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v8) & 0x8000) != 0)
  {
    stream_and_lock = CA::Render::ContentStream::get_or_create_stream_and_lock(a1, 0, 0);
    if (!stream_and_lock)
    {
      v6 = 56;
      if (!a1)
      {
        return v6;
      }

      goto LABEL_9;
    }

    v10 = stream_and_lock;
    v11 = CA::Render::ContentStream::reuse_surface(stream_and_lock, v4);
    pthread_mutex_unlock(v10);
    if (v11)
    {
      v6 = 0;
    }

    else
    {
      v6 = 5;
    }
  }

  if (a1)
  {
LABEL_9:
    mach_port_deallocate(*MEMORY[0x1E69E9A60], a1);
  }

  return v6;
}

uint64_t CASSetDisplayCloningState(mach_port_name_t a1, const audit_token_t *a2, unsigned int a3, uint64_t a4, CA::Render::Server *this)
{
  v8 = a2;
  v19 = *MEMORY[0x1E69E9840];
  v10 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(this, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v11) & 0x20000) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v12) & 0x10000) != 0)
  {
    v15[1] = a1;
    v15[0] = v8;
    v16 = a3;
    BYTE1(v16) = a4;
    CA::Render::post_notification(0x42u, 0, v15, 0);
    if ((v16 & 0x10000) == 0)
    {
      if (x_log_get_display_state(void)::once != -1)
      {
        dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
      }

      v13 = x_log_get_display_state(void)::log;
      if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v18 = v8;
        _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, "Failed to find display %u to set cloning state.", buf, 8u);
        if (!a1)
        {
          return 0;
        }

        goto LABEL_9;
      }

      if (a1)
      {
LABEL_9:
        CADisplayCloningStateDidChange(v8, a3, a4, 5u);
        mach_port_deallocate(*MEMORY[0x1E69E9A60], a1);
      }
    }

    return 0;
  }

  return v10;
}

uint64_t CASDestroyDisplayPowerAssertion(int a1, const audit_token_t *a2, CA::Render::Server *this)
{
  v4 = a2;
  v12 = *MEMORY[0x1E69E9840];
  v6 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(this, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v7) & 0x20000) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v8) & 0x10000) != 0)
  {
    v10[1] = v4;
    v11 = 0;
    v10[0] = a1;
    CA::Render::post_notification(0x44u, 0, v10, 0);
    if (v4)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
    }

    if (v11)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return v6;
}

char *CA::convert_bgra8888_to_mask(char *this, char *a2, char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  if (a6 >= 1)
  {
    do
    {
      v6 = a3;
      v7 = a5;
      v8 = this;
      if (a5 >= 4)
      {
        do
        {
          v9 = v8[3];
          v10 = v8[7];
          v11 = v8[11];
          v12 = v8[15];
          v8 += 16;
          *v6 = v9;
          v6[1] = v10;
          v6[2] = v11;
          v6[3] = v12;
          v6 += 4;
          v13 = v7 > 7;
          v7 -= 4;
        }

        while (v13);
      }

      if (v7 >= 1)
      {
        v14 = v8 + 3;
        v15 = v7 + 1;
        do
        {
          v16 = *v14;
          v14 += 4;
          *v6++ = v16;
          --v15;
        }

        while (v15 > 1);
      }

      this = &a2[this];
      a3 = &a4[a3];
      v13 = a6-- <= 1;
    }

    while (!v13);
  }

  return this;
}

char *CA::Render::PixelBuffer::show(uint64_t a1, X::Stream *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return X::Stream::printf(a2, "(pixel-buffer [%d %d])");
  }

  v5 = *(a1 + 128);
  if (v5 < 0)
  {
    __maskrune(HIBYTE(*(a1 + 128)), 0x40000uLL);
  }

  if (BYTE2(v5) > 0x7Fu)
  {
    __maskrune(BYTE2(v5), 0x40000uLL);
  }

  if (BYTE1(v5) > 0x7Fu)
  {
    __maskrune(BYTE1(v5), 0x40000uLL);
  }

  if (v5 > 0x7Fu)
  {
    __maskrune(v5, 0x40000uLL);
  }

  return X::Stream::printf(a2, "(pixel-buffer %c%c%c%c [%d %d])");
}

void *CA::Render::PixelBuffer::encode(CA::Render::PixelBuffer *this, CA::Render::Encoder *a2)
{
  v4 = *(this + 3) >> 8;
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = (v6 + 4);
  *(a2 + 4) = v6 + 4;
  v9 = *(this + 4);
  if (v6 + 8 > v7)
  {
    CA::Render::Encoder::grow(a2, 4);
    v8 = *(a2 + 4);
  }

  *v8 = v9;
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = (v10 + 4);
  *(a2 + 4) = v10 + 4;
  v13 = *(this + 5);
  if (v10 + 8 > v11)
  {
    CA::Render::Encoder::grow(a2, 4);
    v12 = *(a2 + 4);
  }

  *v12 = v13;
  *(a2 + 4) += 4;
  CA::Render::Encoder::encode_object(a2, *(this + 14));
  v14 = *(this + 15);
  v15 = *(a2 + 4);
  if ((v15 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 8);
    v15 = *(a2 + 4);
  }

  *v15 = v14;
  v16 = *(a2 + 4);
  v17 = *(a2 + 5);
  v18 = (v16 + 8);
  *(a2 + 4) = v16 + 8;
  v19 = *(this + 32);
  if (v16 + 12 > v17)
  {
    CA::Render::Encoder::grow(a2, 4);
    v18 = *(a2 + 4);
  }

  *v18 = v19;
  *(a2 + 4) += 4;
  CA::Render::Encoder::encode_cfobject(a2, *(this + 17));
  CA::Render::Texture::encode(this, a2);

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::PixelBuffer::finalize(CA::Render::PixelBuffer *this)
{
  CA::Render::post_notification(3u, this, 0, 1);
  if (this)
  {
    v2 = *(*this + 8);

    v2(this);
  }
}

void CA::Render::PixelBuffer::~PixelBuffer(CA::Render::PixelBuffer *this)
{
  CA::Render::PixelBuffer::~PixelBuffer(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1FA618;
  v2 = *(this + 17);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 18);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 14);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  --dword_1ED4EAAD8;

  CA::Render::Texture::~Texture(this);
}

void CA::Render::release_cvpixelbuffer(CA::Render *this, CVPixelBufferRef pixelBuffer, void *a3)
{
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

  CVPixelBufferRelease(pixelBuffer);
}

CA::Render::Texture *CA::Render::PixelBuffer::decode(CA::Render::PixelBuffer *this, CA::Render::Decoder *a2)
{
  v3 = CA::Render::Decoder::decode_int32(this);
  v4 = CA::Render::Decoder::decode_int32(this);
  v5 = CA::Render::Decoder::decode_int32(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
  v7 = v6;
  if (v6)
  {
    CA::Render::Texture::Texture(v6, v4, v5);
    v8 = *(v7 + 3) & 0xFFFFFF00 | 0x28;
    ++dword_1ED4EAAD8;
    *v7 = &unk_1EF1FA618;
    *(v7 + 14) = 0;
    *(v7 + 18) = 0;
  }

  else
  {
    v8 = MEMORY[0xC];
  }

  *(v7 + 3) = v8 | (v3 << 8);
  v9 = CA::Render::Decoder::decode_object(this, 52);
  v10 = *(v7 + 14);
  *(v7 + 14) = v9;
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v10 + 16))(v10);
  }

  *(v7 + 15) = CA::Render::Decoder::decode_size_t(this);
  *(v7 + 32) = CA::Render::Decoder::decode_int32(this);
  CFDictionaryGetTypeID();
  *(v7 + 17) = CA::Render::Decoder::decode_cfobject(this);
  *(v7 + 19) = 0;
  CA::Render::Texture::decode(v7, this);
  v11 = *(v7 + 15);
  if (is_mul_ok(v11, v5))
  {
    v12 = v11 * v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = CA::Render::fourcc_to_format(*(v7 + 32));
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v11 - (dword_183E22690[v13] * v4);
    v12 -= v14 & ~(v14 >> 63);
  }

  if (!v4 || !v5 || (v5 | v4) >> 24 || (v15 = *(v7 + 14)) == 0 || *(v15 + 16) < v12)
  {
    if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v7 + 16))(v7);
    }

    v7 = 0;
  }

  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-pixel-buffer.cpp", 316);
  return v7;
}

void CA::OGL::anonymous namespace::FlipTransition::render(uint64_t a1, uint64_t a2, CA::OGL::Context *a3, float64x2_t *a4, float64x2_t *a5, uint64_t a6, uint64_t a7)
{
  v31 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (BYTE4(v30))
  {
    v12 = a6;
  }

  else
  {
    v12 = a7;
  }

  if (v12)
  {
    _S0 = v30;
    __asm { FCVT            H0, S0 }

    v18 = *(a3 + 2);
    v18[4] = _S0;
    v18[5] = _S0;
    v18[6] = _S0;
    v18[7] = 15360;
    *(*(a3 + 2) + 497) |= 1u;
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    v20[3] = v25;
    v20[4] = v26;
    v20[5] = v27;
    v20[6] = v28;
    v20[7] = v29;
    __asm { FMOV            V0.2D, #1.0 }

    v20[8] = _Q0;
    v21 = 16;
    CA::OGL::fill_surface_rect(a3, v12, a5, v20, *a4, a4[1]);
    *(*(a3 + 2) + 497) &= ~1u;
  }
}

void CA::OGL::anonymous namespace::FlipTransition::set_state(unsigned __int8 a1, uint64_t a2, uint64_t a3, double *a4, float64x2_t *a5)
{
  v43[16] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 48);
  v8 = v7 < 0.5;
  v9 = v7 + v7;
  if (v7 >= 0.5)
  {
    v9 = 2.0 - (v7 + v7);
    v7 = v7 + 1.0;
  }

  *(a2 + 132) = v8;
  *(a2 + 128) = (v9 * -0.75) + 1.0;
  v10 = *(a3 + 20);
  if (!v10)
  {
    v10 = 274;
  }

  if ((v10 & 0xFFFFFFFD) == 0x110)
  {
    v11 = -(v7 * 3.14159265);
  }

  else
  {
    v11 = v7 * 3.14159265;
  }

  v12 = v10 & 0xFFFFFFFE;
  if (v12 == 272)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  v35 = 0.0;
  if (v12 == 272)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  v19 = *(a3 + 32);
  if (v19)
  {
    v20 = (v19 + 40);
  }

  else
  {
    v20 = (a3 + 24);
  }

  v21 = *v20;
  if (CA::Render::KeyValueArray::get_int_key(*v20, 5, a1))
  {
    v35 = fabs(sin(v11)) * 0.5 * (v17 * v14 + v18 * v13);
  }

  v37 = v16 + v18 * 0.5;
  v36 = v15 + v17 * 0.5;
  v38[0] = xmmword_183E20E00;
  v38[1] = 0u;
  v38[2] = xmmword_183E20E60;
  memset(&v38[3], 0, 32);
  v39 = 0x3FF0000000000000;
  v41 = 0u;
  v42 = xmmword_183E20E60;
  v40 = -1.0 / (CA::Render::KeyValueArray::get_float_key(v21, 325, 3.0) * (0.5 * (v18 + v17)));
  v22 = *a5;
  v23 = a5[1];
  v24 = a5[2];
  v25 = a5[3];
  *a2 = *a5;
  *(a2 + 16) = v23;
  *(a2 + 32) = v24;
  *(a2 + 48) = v25;
  v26 = a5[4];
  v27 = a5[5];
  v28 = a5[6];
  v29 = a5[7];
  *(a2 + 64) = v26;
  *(a2 + 80) = v27;
  *(a2 + 96) = vmlaq_f64(vmlaq_n_f64(vmlaq_n_f64(v28, v22, v36), v24, v37), 0, v26);
  *(a2 + 112) = vmlaq_f64(vmlaq_n_f64(vmlaq_n_f64(v29, v23, v36), v25, v37), 0, v27);
  CA::Mat4Impl::mat4_concat(a2, v38, a2, v30);
  v31 = vmlsq_lane_f64(vmlaq_f64(vmlaq_f64(*(a2 + 112), 0, *(a2 + 16)), 0, *(a2 + 48)), *(a2 + 80), v35, 0);
  *(a2 + 96) = vmlsq_lane_f64(vmlaq_f64(vmlaq_f64(*(a2 + 96), 0, *a2), 0, *(a2 + 32)), *(a2 + 64), v35, 0);
  *(a2 + 112) = v31;
  CA::Mat4Impl::mat4_set_rotation(v43, v32, -v11, v13, v14, 0.0);
  CA::Mat4Impl::mat4_concat(a2, v43, a2, v33);
  v34 = vmlaq_f64(vmlsq_lane_f64(vmlsq_lane_f64(*(a2 + 112), *(a2 + 16), v36, 0), *(a2 + 48), v37, 0), 0, *(a2 + 80));
  *(a2 + 96) = vmlaq_f64(vmlsq_lane_f64(vmlsq_lane_f64(*(a2 + 96), *a2, v36, 0), *(a2 + 32), v37, 0), 0, *(a2 + 64));
  *(a2 + 112) = v34;
}

double CA::OGL::anonymous namespace::FlipTransition::ROI(CA::OGL::_anonymous_namespace_::FlipTransition *this, const Transition *a2, const CA::Rect *a3, const CA::Transform *a4, const CA::Rect *a5, CA::Rect *a6, CA::Rect *a7)
{
  result = *a3;
  v8 = *(a3 + 1);
  *a6 = *a3;
  *(a6 + 1) = v8;
  v9 = *(a3 + 2);
  v10 = *(a3 + 3);
  *(a6 + 2) = v9;
  *(a6 + 3) = v10;
  *a7 = result;
  *(a7 + 1) = v8;
  *(a7 + 2) = v9;
  *(a7 + 3) = v10;
  return result;
}

double CA::OGL::anonymous namespace::FlipTransition::DOD@<D0>(CA::OGL::_anonymous_namespace_::FlipTransition *this@<X0>, const Transition *a2@<X1>, const CA::Rect *a3@<X2>, float64x2_t *a4@<X3>, const CA::Rect *a5@<X4>, const CA::Rect *a6@<X5>, uint64_t a7@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  if (BYTE4(v15))
  {
    v11 = a5;
  }

  else
  {
    v11 = a6;
  }

  v12 = *(v11 + 1);
  *a7 = *v11;
  *(a7 + 16) = v12;
  *&result = CA::Mat4Impl::mat4_apply_to_rect(v14, a7, v10).u64[0];
  return result;
}

void CA::Render::ImageProvider::prefetch_subtexture(CA::Render::ImageProvider *this, __int32 a2, __int32 a3, __int32 a4, __int32 a5, double a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x80000000) == 0 && *(this + 30) > a2)
  {
    v14[0] = a2;
    v14[1] = a3;
    v14[2] = a4;
    os_unfair_lock_lock(&CA::Render::ImageProvider::_provider_lock);
    v8 = x_hash_table_lookup(*(this + 20), v14, 0);
    if (v8)
    {
      v9 = *(v8 + 80);
      if (v9 <= *(this + 26))
      {
        v9 = *(this + 26);
      }

      *(v8 + 80) = v9;
      if (*(v8 + 24))
      {
        v11 = *v8;
        v10 = *(v8 + 8);
        if (v10)
        {
          *v10 = v11;
        }

        if (v11)
        {
          v12 = (*&v11 + 8);
        }

        else
        {
          v12 = &CA::Render::subimage_head;
        }

        *v12 = v10;
        *v8 = 0;
        v13 = CA::Render::subimage_head;
        *(v8 + 8) = CA::Render::subimage_head;
        if (v13)
        {
          *v13 = v8;
        }

        CA::Render::subimage_head = v8;
      }
    }

    CA::Render::ImageProvider::add_needed(this, v14, a5, v8);
    os_unfair_lock_unlock(&CA::Render::ImageProvider::_provider_lock);
    CA::Render::ImageProvider::signal_client(this);
  }
}

int32x2_t *CA::Render::ImageProvider::add_needed(int32x2_t *result, __int32 *a2, __int32 a3, int32x2_t *a4)
{
  if ((a3 & 0x80000000) == 0)
  {
    v7 = result;
    if (!a4 || (a4[6].i32[1] & 0x10002) != 0)
    {
      v8 = *a2;
      if ((*a2 & 0x80000000) == 0 && result[15].i32[0] > v8)
      {
        v9 = a2[1];
        v10 = result[15].i32[1];
        v11 = __OFSUB__(v8, v10);
        v12 = v8 - v10;
        v13 = result[2].u32[0];
        v14 = v13 >> v12;
        v15 = v13 << -v12;
        if (v12 < 0 == v11)
        {
          v15 = v14;
        }

        if (result[14].i32[0] * v9 < v15)
        {
          v16 = a2[2];
          v17 = result[2].u32[1];
          v18 = v12 < 0 ? v17 << -v12 : v17 >> v12;
          if (result[14].i32[1] * v16 < v18)
          {
            v19 = result + 21;
            for (result = result[22]; result != v19; result = result[1])
            {
              if (result[2].i32[0] == v8 && result[2].i32[1] == v9 && result[3].i32[0] == v16)
              {
                v29 = *result;
                v28 = result[1];
                *(*&v29 + 8) = v28;
                *v28 = v29;
                *result = result;
                result[1] = result;
                goto LABEL_22;
              }
            }

            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            result = malloc_type_zone_malloc(malloc_zone, 0x30uLL, 0x1020040586F8431uLL);
            *result = result;
            result[1] = result;
            v20 = a2[2];
            result[2] = *a2;
            result[3].i32[0] = v20;
LABEL_22:
            result[3].i32[1] = a3;
            if (a4)
            {
              v21 = a4[7];
            }

            else
            {
              v21 = 0;
            }

            result[4] = vrev64_s32(v21);
            v22 = v7[27].i32[0];
            result[5].i32[0] = v22;
            v23 = v7[22];
            if (v23 != v19)
            {
              v24 = result[2].i32[0];
              do
              {
                v25 = *(*&v23 + 16);
                if (v25 < v24)
                {
                  break;
                }

                if (v25 <= v24)
                {
                  v26 = *(*&v23 + 36);
                  if (v26 > v21.i32[0] || v26 >= v21.i32[0] && *(*&v23 + 28) >= a3)
                  {
                    break;
                  }
                }

                v23 = *(*&v23 + 8);
              }

              while (v23 != v19);
            }

            v27 = **&v23;
            **&v23 = result;
            *result = v27;
            result[1] = v23;
            *(*&v27 + 8) = result;
            v7[27].i32[1] = v22;
          }
        }
      }
    }
  }

  return result;
}

void CA::Render::ImageProvider::signal_client(CA::Render::ImageProvider *this)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Render::ImageProvider::_provider_lock);
  if (*(this + 56) == *(this + 55) || (v2 = *(this + 23)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 260);
  }

  os_unfair_lock_unlock(&CA::Render::ImageProvider::_provider_lock);
  v4 = *(this + 55);
  if (*(this + 56) != v4)
  {
    v5 = *(this + 24);
    if (v3)
    {
      v8 = *MEMORY[0x1E69E99E0];
      v9 = v5;
      v10 = v4;
      *&msg.msgh_bits = 19;
      msg.msgh_voucher_port = 0;
      msg.msgh_id = 40408;
      msg.msgh_remote_port = v3;
      msg.msgh_local_port = 0;
      if (MEMORY[0x1EEE9AC50])
      {
        voucher_mach_msg_set(&msg);
      }

      v6 = mach_msg(&msg, 17, 0x2Cu, 0, 0, 0, 0);
      if ((v6 - 268435459) <= 1)
      {
        if ((msg.msgh_bits & 0x1F00) == 0x1100)
        {
          mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
        }

        mach_msg_destroy(&msg);
        return;
      }

      if (v6)
      {
        return;
      }
    }

    else
    {
      CAImageProviderSignal(v5, v4);
    }

    *(this + 56) = *(this + 55);
  }
}

atomic_uint *CA::Render::ImageProvider::generate_subtexture(CA::Render::ImageProvider *this, int a2, int a3, int a4, int a5, unsigned int a6, double a7, unsigned int *a8)
{
  v112 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  *&v111[0] = __PAIR64__(a3, a2);
  DWORD2(v111[0]) = a4;
  os_unfair_lock_lock(&CA::Render::ImageProvider::_provider_lock);
  v14 = x_hash_table_lookup(*(this + 20), v111, 0);
  if (v14 && (*(v14 + 52) & 0x20002) == 2)
  {
    v15 = *(v14 + 24);
    if (v15)
    {
      v16 = v15 + 2;
      if (!atomic_fetch_add(v15 + 2, 1u))
      {
        v15 = 0;
        atomic_fetch_add(v16, 0xFFFFFFFF);
      }
    }

    os_unfair_lock_unlock(&CA::Render::ImageProvider::_provider_lock);
    return v15;
  }

  os_unfair_lock_unlock(&CA::Render::ImageProvider::_provider_lock);
  v104 = a2 - 1;
  v96 = a8;
  v95 = a2;
  if (a2 >= 1 && *(this + 30) >= a2)
  {
    v19 = *(this + 31);
    v20 = __OFSUB__(v104, v19);
    v21 = v104 - v19;
    v22 = *(this + 4);
    v23 = *(this + 5);
    v24 = v22 >> v21;
    v25 = v22 << -v21;
    if (v21 < 0 != v20)
    {
      v17 = v25;
    }

    else
    {
      v17 = v24;
    }

    v26 = v23 << -v21;
    v27 = v23 >> v21;
    if (v21 >= 0)
    {
      v18 = v27;
    }

    else
    {
      v18 = v26;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v28 = 0;
  v100 = 0;
  v29 = 0;
  memset(v111, 0, sizeof(v111));
  v97 = a3;
  v98 = a4;
  v30 = 2 * a3;
  v108 = 2 * a4;
  v102 = -1;
  v103 = 0;
  do
  {
    v31 = 0;
    v101 = v29;
    v32 = v29 + v108;
    v33 = 2;
    v34 = v30;
    v35 = &v111[v28];
    do
    {
      *(v35 + v31) = 0;
      if (*(this + 28) * v34 < v17 && *(this + 29) * v32 < v18)
      {
        v110 = 0;
        v36 = (*(*this + 280))(this, v104, v30 | v31, v108 | v28, 0xFFFFFFFFLL, 1, 0, a6, a7, &v110 + 4, &v110);
        if (!v36)
        {
          goto LABEL_32;
        }

        if (*(v36 + 12) != 23 || (v37 = *(v36 + 168), (v37 & 0xFFFFFFFD) != 1))
        {
          if (atomic_fetch_add((v36 + 8), 0xFFFFFFFF) == 1)
          {
            (*(*v36 + 16))(v36);
          }

LABEL_32:
          v103 = 1;
          goto LABEL_33;
        }

        if (v102 >= v37)
        {
          v38 = *(v36 + 168);
        }

        else
        {
          v38 = v102;
        }

        v39 = HIDWORD(v102);
        if (HIDWORD(v102) >= v110)
        {
          v39 = v110;
        }

        v102 = __PAIR64__(v39, v38);
        *(v35 + v31) = v36;
        v100 = 1;
      }

LABEL_33:
      ++v34;
      v31 = 1;
      --v33;
    }

    while (v33);
    v29 = v101 + 1;
    v28 = 1;
  }

  while (v101 != 1);
  if ((v100 & 1) == 0)
  {
    return 0;
  }

  v40 = *(this + 28);
  v41 = *(this + 29);
  v43 = v97;
  v42 = v98;
  if (v40 * v97 + v40 <= v17 >> 1)
  {
    v44 = *(this + 28);
  }

  else
  {
    v44 = (v17 >> 1) - v40 * v97;
  }

  if (v41 * v98 + v41 <= v18 >> 1)
  {
    v45 = *(this + 29);
  }

  else
  {
    v45 = (v18 >> 1) - v41 * v98;
  }

  if ((v103 & 1) == 0)
  {
    v51 = CA::Render::Shmem::new_bitmap(v102, v44, v45, 0, 0, 1u);
    if (v51)
    {
      v105 = v51;
      v48 = *(v51 + 3);
      goto LABEL_53;
    }

LABEL_90:
    v15 = 0;
    v85 = 6;
    v82 = v96;
    v83 = v95;
    v84 = HIDWORD(v102);
    goto LABEL_91;
  }

  if (*(this + 17))
  {
    goto LABEL_90;
  }

  v46 = *(this + 128) == 0xFF ? v102 : 1;
  v47 = CA::Render::Shmem::new_bitmap(v46, v44, v45, 0, 0, 1u);
  if (!v47)
  {
    goto LABEL_90;
  }

  v48 = *(v47 + 3);
  v105 = v47;
  if (*(this + 32))
  {
    HIDWORD(v49) = *(this + 32);
    LODWORD(v49) = HIDWORD(v49);
    CA::Render::ShmemBitmap::fill_pixels(v48, (v49 >> 8), 0);
    v50 = 262150;
    goto LABEL_54;
  }

LABEL_53:
  v50 = 6;
LABEL_54:
  v107 = v50;
  v52 = 0;
  v53 = 0;
  v54 = 1;
  while (2)
  {
    v55 = 0;
    v109 = v54;
    v56 = v52 & a5;
    v57 = v52 | a5;
    v58 = 1;
    v59 = &v111[v53];
    while (2)
    {
      v60 = v58;
      v61 = *(v59 + v55);
      if (v61)
      {
        v62 = v48[4] <= 1u ? 1 : v48[4];
        v63 = CA::Render::format_rowbytes(v48[3], v62);
        v64 = v48 + v48[2];
        if (v56)
        {
          v65 = *(this + 29) >> 1;
          v64 += v63 * v65;
          v66 = v45 - v65;
        }

        else if (v57)
        {
          v66 = v45;
        }

        else
        {
          v67 = *(this + 29);
          v66 = v45;
          if (v45 > v67 >> 1)
          {
            v66 = v67 >> 1;
            v64 += v63 * (v45 - (v67 >> 1));
          }
        }

        if (v60)
        {
          v68 = v44;
        }

        else
        {
          v69 = *(this + 28);
          v64 += (2 * v69) & 0xFFFFFFFCLL;
          v68 = v44 - (v69 >> 1);
        }

        if (v68 >= 1 && v66 >= 1)
        {
          v70 = *(v61 + 176);
          v71 = *(v61 + 112);
          v73 = *(v61 + 16);
          v72 = *(v61 + 20);
          v74 = v73 >> 1;
          if (v68 < v73 >> 1)
          {
            v74 = v68;
          }

          if (*(v61 + 168) == 3)
          {
            v75 = -16777216;
          }

          else
          {
            v75 = 0;
          }

          if (v66 < v72 >> 1)
          {
LABEL_79:
            v76 = 2 * v70;
            v77 = v71 + v70;
            v78 = v73 >> 1;
            if (v78 < v68)
            {
              v68 = v78;
            }

            do
            {
              if (v74)
              {
                v79 = 0;
                do
                {
                  v80.i64[0] = *(v71 + 8 * v79);
                  v80.i64[1] = *(v77 + 8 * v79);
                  v81 = *&vshrq_n_u32(v80, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
                  v80.i16[0] = v80.u8[0];
                  v80.i16[1] = BYTE2(*(v71 + 8 * v79));
                  v80.i16[2] = BYTE4(*(v71 + 8 * v79));
                  v80.i16[3] = BYTE6(*(v71 + 8 * v79));
                  v80.i16[4] = v80.u8[8];
                  v80.i16[5] = BYTE2(*(v77 + 8 * v79));
                  v80.i16[6] = BYTE4(*(v77 + 8 * v79));
                  v80.i16[7] = BYTE6(*(v77 + 8 * v79));
                  *&v64[4 * v79++] = (vaddvq_s32(v80) >> 2) & 0xFF00FF | v75 | (vaddvq_s32(v81) << 6) & 0xFF00FF00;
                }

                while (v68 != v79);
              }

              v64 += v63;
              v71 += v76;
              v77 += v76;
              --v66;
            }

            while (v66);
          }

          else if (v72 >= 2)
          {
            v66 = v72 >> 1;
            goto LABEL_79;
          }
        }
      }

      v58 = 0;
      v55 = 1;
      if (v60)
      {
        continue;
      }

      break;
    }

    v54 = 0;
    v52 = 1;
    v53 = 1;
    if (v109)
    {
      continue;
    }

    break;
  }

  v15 = CA::Render::Shmem::copy_image(v105, 0);
  if (atomic_fetch_add(v105 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v105 + 16))(v105);
  }

  v82 = v96;
  v43 = v97;
  v42 = v98;
  v83 = v95;
  v84 = HIDWORD(v102);
  v85 = v107;
LABEL_91:
  CA::Render::ImageProvider::set_subimage(this, v83, v43, v42, v15, v85, v84);
  v86 = 0;
  v87 = 1;
  do
  {
    v88 = 0;
    v89 = v87;
    v90 = 1;
    v91 = &v111[v86];
    do
    {
      v92 = v90;
      v93 = *(v91 + v88);
      if (v93 && atomic_fetch_add(v93 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v93 + 16))(v93);
      }

      v90 = 0;
      v88 = 1;
    }

    while ((v92 & 1) != 0);
    v87 = 0;
    v86 = 1;
  }

  while ((v89 & 1) != 0);
  *v82 = v84;
  return v15;
}

void CA::Render::ImageProvider::set_subimage(CA::Render::ImageProvider *this, int a2, int a3, int a4, atomic_uint *a5, int a6, int a7)
{
  *&v31[3] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v12 = a5[4];
    v11 = a5[5];
    if (a2 < 0)
    {
      return;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    if (a2 < 0)
    {
      return;
    }
  }

  if (*(this + 30) > a2 && v12 <= *(this + 28) && v11 <= *(this + 29))
  {
    v31[0] = a2;
    v31[1] = a3;
    v31[2] = a4;
    os_unfair_lock_lock(&CA::Render::ImageProvider::_provider_lock);
    v13 = x_hash_table_lookup(*(this + 20), v31, 0);
    if (!v13)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v13 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x58uLL, 0x1020040C999BB29uLL);
      *(v13 + 48) = v31[2];
      *(v13 + 40) = *v31;
      *(v13 + 16) = this;
      v14 = mach_absolute_time();
      *(v13 + 80) = CATimeWithHostTime(v14);
      hash_table_modify(*(this + 20), v13 + 40, v13, 0);
    }

    v15 = *(v13 + 24);
    if (a5)
    {
      v16 = a5;
      if (!atomic_fetch_add(a5 + 2, 1u))
      {
        v16 = 0;
        atomic_fetch_add(a5 + 2, 0xFFFFFFFF);
      }

      *(v13 + 24) = v16;
      v17 = (*(*a5 + 184))(a5);
    }

    else
    {
      v17 = 0;
      *(v13 + 24) = 0;
    }

    *(v13 + 32) = v17;
    *(v13 + 52) = a6;
    v18 = *(v13 + 60);
    if (a7)
    {
      *(v13 + 56) = a7;
      if (v18 != a7)
      {
        *(v13 + 52) = a6 | 0x10000;
      }

      if ((a6 & 0x40000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *(v13 + 56) = v18;
      if ((a6 & 0x40000) == 0)
      {
LABEL_21:
        v19 = 0;
        goto LABEL_24;
      }
    }

    v19 = *(this + 32);
LABEL_24:
    *(v13 + 64) = v19;
    if ((a6 & 4) != 0 || v15)
    {
      *(v13 + 72) = 0xD4B249AD2594C37DLL;
      if (v15)
      {
        v25 = *v13;
        v24 = *(v13 + 8);
        if (v24)
        {
          *v24 = v25;
        }

        if (v25)
        {
          v26 = (v25 + 8);
        }

        else
        {
          v26 = &CA::Render::subimage_head;
        }

        *v26 = v24;
      }
    }

    else
    {
      v20 = mach_absolute_time();
      v21 = CATimeWithHostTime(v20);
      *(v13 + 72) = v21;
      v22 = *(this + 37);
      if (v22 > 0.0)
      {
        v23 = v21 + v22;
        if (*(this + 25) > v23)
        {
          v23 = *(this + 25);
        }

        *(this + 25) = v23;
      }
    }

    if (a5)
    {
      *v13 = 0;
      v27 = CA::Render::subimage_head;
      *(v13 + 8) = CA::Render::subimage_head;
      if (v27)
      {
        *v27 = v13;
      }

      CA::Render::subimage_head = v13;
    }

    if ((a6 & 2) == 0)
    {
      v28 = *(this + 22);
      while (v28 != (this + 168))
      {
        v29 = v28;
        v28 = v28[1];
        if ((*(this + 54) - *(v29 + 10)) > 4 || (*(v13 + 52) & 0x10002) == 0 && *(v29 + 4) == v31[0] && *(v29 + 20) == *&v31[1])
        {
          v30 = *v29;
          *(v30 + 8) = v28;
          *v28 = v30;
          *v29 = v29;
          v29[1] = v29;
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v29);
        }
      }
    }

    os_unfair_lock_unlock(&CA::Render::ImageProvider::_provider_lock);
    if (v15)
    {
      if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v15 + 16))(v15);
      }
    }
  }
}

uint64_t CA::Render::ImageProvider::copy_subtexture(CA::Render::ImageProvider *this, __int32 a2, __int32 a3, __int32 a4, __int32 a5, int a6, char a7, int a8, double a9, float *a10, unsigned int *a11)
{
  v38 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x80000000) == 0 && *(this + 30) > a2)
  {
    v12 = *(this + 38);
    if (v12 < 1 || v12 >= a6)
    {
      *(this + 54) = a8;
      *(this + 26) = a9;
      v37[0] = a2;
      v37[1] = a3;
      v37[2] = a4;
      os_unfair_lock_lock(&CA::Render::ImageProvider::_provider_lock);
      v16 = x_hash_table_lookup(*(this + 20), v37, 0);
      v17 = v16;
      if (!v16)
      {
LABEL_56:
        v21 = 0;
LABEL_57:
        CA::Render::ImageProvider::add_needed(this, v37, a5, v17);
        os_unfair_lock_unlock(&CA::Render::ImageProvider::_provider_lock);
        CA::Render::ImageProvider::signal_client(this);
        return v21;
      }

      v18 = *(v16 + 24);
      v19 = v17[6].u32[1];
      if (v18)
      {
        v20 = (v19 & 0x20000) == 0;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        if (!(*(*v18 + 208))(v18, 0))
        {
          v30 = *v17;
          v29 = v17[1];
          if (v29)
          {
            *v29 = v30;
          }

          if (v30)
          {
            v31 = (*&v30 + 8);
          }

          else
          {
            v31 = &CA::Render::subimage_head;
          }

          *v31 = v29;
          v32 = v17[3];
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
          }

          x_hash_table_remove_ptr(*(this + 20), &v17[5]);
          if (x_malloc_get_zone::once == -1)
          {
            goto LABEL_55;
          }

          goto LABEL_58;
        }

        v19 = v17[6].i32[1] & 0xFFFDFFFF;
        v17[6].i32[1] = v19;
      }

      if ((v19 & 0x40000) == 0 || v17[8].i32[0] == *(this + 32))
      {
        v17[10] = *(this + 208);
        if (a7)
        {
          v17[9] = 0xD4B249AD2594C37DLL;
        }

        v21 = v17[3];
        if (v21)
        {
          v22 = (*&v21 + 8);
          if (!atomic_fetch_add((*&v21 + 8), 1u))
          {
            v21 = 0;
            atomic_fetch_add(v22, 0xFFFFFFFF);
          }

          v23 = 1.0;
          if ((v17[6].i8[4] & 4) == 0)
          {
            v23 = (*(this + 26) - *&v17[9]) / *(this + 37);
            if (v23 > 1.0)
            {
              v23 = 1.0;
            }

            if (v23 < 0.0)
            {
              v23 = 0.0;
            }
          }

          *a10 = v23;
          v25 = *v17;
          v24 = v17[1];
          if (v24)
          {
            *v24 = v25;
          }

          if (v25)
          {
            v26 = (*&v25 + 8);
          }

          else
          {
            v26 = &CA::Render::subimage_head;
          }

          *v26 = v24;
          *v17 = 0;
          v27 = CA::Render::subimage_head;
          v17[1] = CA::Render::subimage_head;
          if (v27)
          {
            *v27 = v17;
          }

          CA::Render::subimage_head = v17;
        }

        *a11 = v17[7].u32[0];
        goto LABEL_57;
      }

      v34 = *v17;
      v33 = v17[1];
      if (v33)
      {
        *v33 = v34;
      }

      if (v34)
      {
        v35 = (*&v34 + 8);
      }

      else
      {
        v35 = &CA::Render::subimage_head;
      }

      *v35 = v33;
      v36 = v17[3];
      if (v36 && atomic_fetch_add(v36 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v36 + 16))(v36);
      }

      x_hash_table_remove_ptr(*(this + 20), &v17[5]);
      if (x_malloc_get_zone::once == -1)
      {
        goto LABEL_55;
      }

LABEL_58:
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
LABEL_55:
      malloc_zone_free(malloc_zone, v17);
      v17 = 0;
      goto LABEL_56;
    }
  }

  return 0;
}