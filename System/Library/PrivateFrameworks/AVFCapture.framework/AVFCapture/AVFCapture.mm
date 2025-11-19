uint64_t AVCaptureIsRunningInMacCatalystEnvironment()
{
  if (AVCaptureIsRunningInMacCatalystEnvironment_once != -1)
  {
    AVCaptureIsRunningInMacCatalystEnvironment_cold_1();
  }

  return AVCaptureIsRunningInMacCatalystEnvironment_isCatalystApp;
}

uint64_t __AVCaptureIsRunningInMacCatalystEnvironment_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  AVCaptureIsRunningInMacCatalystEnvironment_isCatalystApp = result;
  return result;
}

uint64_t __avgestalt_buildDataBase_block_invoke()
{
  sAVGestaltBoolDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  sAVGestaltIntegerDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  sAVGestaltFloatDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  sAVGestaltStringDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  ModelSpecificName = FigCaptureGetModelSpecificName();
  AVGestaltGetDeviceFeatures(ModelSpecificName, sAVGestaltBoolDataBase, sAVGestaltIntegerDataBase, sAVGestaltFloatDataBase, sAVGestaltStringDataBase);
  [sAVGestaltBoolDataBase setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", FigCapturePlatformSupportsExclaves() != 0), @"AVGQCaptureAttentionDetectionSupported"}];
  [sAVGestaltBoolDataBase setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"AVGQCaptureDefaultDevicePrefersUnsuspendedAndAllowsAnyPosition"];
  v1 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 3)
  {
    v2 = 1;
  }

  else if (dyld_get_active_platform() == 1 || dyld_get_active_platform() == 6)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [objc_msgSend(v3 objectForInfoDictionaryKey:{AVCaptureBundleUseContinuityCameraDeviceTypeKey), "BOOLValue"}];
  }

  else
  {
    v2 = 0;
  }

  v4 = [v1 numberWithInt:v2];
  [sAVGestaltBoolDataBase setObject:v4 forKeyedSubscript:@"AVGQCaptureUseContinuityCameraDeviceType"];
  v5 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 2 || dyld_get_active_platform() == 11 || dyld_get_active_platform() == 1)
  {
    v6 = 1;
  }

  else if (dyld_get_active_platform() == 6)
  {
    v100 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [objc_msgSend(v100 objectForInfoDictionaryKey:{AVCaptureBundleUseExternalDeviceTypeKey), "BOOLValue"}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 numberWithInt:v6];
  [sAVGestaltBoolDataBase setObject:v7 forKeyedSubscript:@"AVGQCaptureUseExternalDeviceType"];
  v8 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 2)
  {
    v9 = dyld_program_sdk_at_least() ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 numberWithInt:v9];
  [sAVGestaltBoolDataBase setObject:v10 forKeyedSubscript:@"AVGQCaptureProResRawVDORotationAndMirroringSupported"];
  v11 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = dyld_program_sdk_at_least();
  }

  v13 = [v11 numberWithInt:v12];
  [sAVGestaltBoolDataBase setObject:v13 forKeyedSubscript:@"AVGQCaptureDICOMSupported"];
  v14 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = dyld_program_sdk_at_least();
  }

  v16 = [v14 numberWithInt:v15];
  [sAVGestaltBoolDataBase setObject:v16 forKeyedSubscript:@"AVGQCaptureMultipleAudioDataOutputsSupported"];
  v17 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = dyld_program_sdk_at_least();
  }

  v19 = [v17 numberWithInt:v18];
  [sAVGestaltBoolDataBase setObject:v19 forKeyedSubscript:@"AVGQCaptureDeferredStartSupported"];
  v20 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = dyld_program_sdk_at_least() ^ 1;
  }

  v22 = [v20 numberWithInt:v21];
  [sAVGestaltBoolDataBase setObject:v22 forKeyedSubscript:@"AVGQCaptureSessionMultiCamCaptureAlwaysRequiresSupportedFormats"];
  v23 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = dyld_program_sdk_at_least();
  }

  v25 = [v23 numberWithInt:v24];
  [sAVGestaltBoolDataBase setObject:v25 forKeyedSubscript:@"AVGQCaptureMultitaskingCameraAccessVoipAppsSupported"];
  v26 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = dyld_program_sdk_at_least();
  }

  v28 = [v26 numberWithInt:v27];
  [sAVGestaltBoolDataBase setObject:v28 forKeyedSubscript:@"AVGQCaptureDepthWithDeepFusionSupported"];
  v29 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = dyld_program_sdk_at_least();
  }

  v31 = [v29 numberWithInt:v30];
  [sAVGestaltBoolDataBase setObject:v31 forKeyedSubscript:@"AVGQCaptureZeroShutterLagAutomaticallyEnabled"];
  v32 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = dyld_program_sdk_at_least();
  }

  v34 = [v32 numberWithInt:v33];
  [sAVGestaltBoolDataBase setObject:v34 forKeyedSubscript:@"AVGQCaptureCheckIfFileAlreadyExistForMFO"];
  v35 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = dyld_program_sdk_at_least();
  }

  v37 = [v35 numberWithInt:v36];
  [sAVGestaltBoolDataBase setObject:v37 forKeyedSubscript:@"AVGQCaptureSimultaneousADOMFOVDOOutputsSupported"];
  v38 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = dyld_program_sdk_at_least();
  }

  v40 = [v38 numberWithInt:v39];
  [sAVGestaltBoolDataBase setObject:v40 forKeyedSubscript:@"AVGQCaptureMultipleVideoDataOutputsSupported"];
  v41 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = dyld_program_sdk_at_least();
  }

  v43 = [v41 numberWithInt:v42];
  [sAVGestaltBoolDataBase setObject:v43 forKeyedSubscript:@"AVGQCaptureFaceDrivenAEAFOnByDefault"];
  v44 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = dyld_program_sdk_at_least();
  }

  v46 = [v44 numberWithInt:v45];
  [sAVGestaltBoolDataBase setObject:v46 forKeyedSubscript:@"AVGQCaptureHighPhotoQualityFrameDropAllowed"];
  v47 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v48 = 0;
  }

  else
  {
    v48 = dyld_program_sdk_at_least();
  }

  v49 = [v47 numberWithInt:v48];
  [sAVGestaltBoolDataBase setObject:v49 forKeyedSubscript:@"AVGQCaptureDeviceSupportsCinematicVideoFocusAtPoint"];
  v50 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v51 = 0;
  }

  else
  {
    v51 = dyld_program_sdk_at_least();
  }

  v52 = [v50 numberWithInt:v51];
  [sAVGestaltBoolDataBase setObject:v52 forKeyedSubscript:@"AVGQCaptureExtendedCinematicVISSupported"];
  v53 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v54 = 0;
  }

  else
  {
    v54 = dyld_program_sdk_at_least();
  }

  v55 = [v53 numberWithInt:v54];
  [sAVGestaltBoolDataBase setObject:v55 forKeyedSubscript:@"AVGQCaptureMFOSupportsPhotoFormats"];
  v56 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v57 = 0;
  }

  else
  {
    v57 = dyld_program_sdk_at_least();
  }

  v58 = [v56 numberWithInt:v57];
  [sAVGestaltBoolDataBase setObject:v58 forKeyedSubscript:@"AVGQCaptureMFOVideoSettingsSupportCompressionProperties"];
  v59 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v60 = 0;
  }

  else
  {
    v60 = dyld_program_sdk_at_least();
  }

  v61 = [v59 numberWithInt:v60];
  [sAVGestaltBoolDataBase setObject:v61 forKeyedSubscript:@"AVGQCapturePhotoSettingsSupportRawEmbeddedThumbnailFormat"];
  v62 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v63 = 0;
  }

  else
  {
    v63 = dyld_program_sdk_at_least();
  }

  v64 = [v62 numberWithInt:v63];
  [sAVGestaltBoolDataBase setObject:v64 forKeyedSubscript:@"AVGQCaptureDevicesShouldBeSortedByDeviceType"];
  v65 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v66 = 0;
  }

  else
  {
    v66 = dyld_program_sdk_at_least();
  }

  v67 = [v65 numberWithInt:v66];
  [sAVGestaltBoolDataBase setObject:v67 forKeyedSubscript:@"AVGQCaptureAppsMayUseHEVC"];
  v68 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v69 = 0;
  }

  else
  {
    v69 = dyld_program_sdk_at_least();
  }

  v70 = [v68 numberWithInt:v69];
  [sAVGestaltBoolDataBase setObject:v70 forKeyedSubscript:@"AVGQCaptureADOSupportsAudioCaptureWithPhotoFormats"];
  v71 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v72 = 0;
  }

  else
  {
    v72 = dyld_program_sdk_at_least();
  }

  v73 = [v71 numberWithInt:v72];
  [sAVGestaltBoolDataBase setObject:v73 forKeyedSubscript:@"AVGQCaptureMicrophoneUsesDecoupledIO"];
  v74 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v75 = 0;
  }

  else
  {
    v75 = dyld_program_sdk_at_least() ^ 1;
  }

  v76 = [v74 numberWithInt:v75];
  [sAVGestaltBoolDataBase setObject:v76 forKeyedSubscript:@"AVGQCaptureConnectionAlwaysSelectsStandardVISFor720p30"];
  v77 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v78 = 0;
  }

  else
  {
    v78 = dyld_program_sdk_at_least();
  }

  v79 = [v77 numberWithInt:v78];
  [sAVGestaltBoolDataBase setObject:v79 forKeyedSubscript:@"AVGQCaptureConnectionCinematicVISAwareAPIsAreAvailable"];
  v80 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v81 = 0;
  }

  else
  {
    v81 = dyld_program_sdk_at_least();
  }

  v82 = [v80 numberWithInt:v81];
  [sAVGestaltBoolDataBase setObject:v82 forKeyedSubscript:@"AVGQCaptureConnectionFrameRatePropertiesAreDeprecated"];
  v83 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v84 = 0;
  }

  else
  {
    v84 = dyld_program_sdk_at_least();
  }

  v85 = [v83 numberWithInt:v84];
  [sAVGestaltBoolDataBase setObject:v85 forKeyedSubscript:@"AVGQCaptureSessionUsesAppAudioSessionByDefault"];
  v86 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v87 = 0;
  }

  else
  {
    v87 = dyld_program_sdk_at_least() ^ 1;
  }

  v88 = [v86 numberWithInt:v87];
  [sAVGestaltBoolDataBase setObject:v88 forKeyedSubscript:@"AVGQCaptureMetadataOutputCapturesFacesByDefault"];
  v89 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v90 = 0;
  }

  else
  {
    v90 = dyld_program_sdk_at_least();
  }

  v91 = [v89 numberWithInt:v90];
  [sAVGestaltBoolDataBase setObject:v91 forKeyedSubscript:@"AVGQCaptureVPLOrientationAndMirroringPropertiesAreDeprecated"];
  v92 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v93 = 0;
  }

  else
  {
    v93 = dyld_program_sdk_at_least() ^ 1;
  }

  v94 = [v92 numberWithInt:v93];
  [sAVGestaltBoolDataBase setObject:v94 forKeyedSubscript:@"AVGQCaptureMFOStabilizationIsAlwaysOn"];
  v95 = MEMORY[0x1E696AD98];
  if (dyld_get_active_platform() == 1)
  {
    v96 = 0;
  }

  else
  {
    v96 = dyld_program_sdk_at_least();
  }

  v97 = [v95 numberWithInt:v96];
  v98 = sAVGestaltBoolDataBase;

  return [v98 setObject:v97 forKeyedSubscript:@"AVGQCaptureVDOFrameRatePropertiesAreDeprecated"];
}

uint64_t AVGestaltGetDeviceFeatures(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = 40;
  for (i = &off_1E7871090; ; i += 2)
  {
    result = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{*(i - 1)), "componentsSeparatedByString:", @"-", "containsObject:", a1}];
    if (result)
    {
      break;
    }

    if (!--v10)
    {
      return result;
    }
  }

  v13 = *i;
  if (*i)
  {
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", *v13), @"AVGQCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[1]), @"AVGQCameraFlashCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[2]), @"AVGQCameraFrontFlashCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[3]), @"AVGQCameraHDR2Capability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[4]), @"AVGQCameraLiveEffectsCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[5]), @"AVGQCaptureSessionSupportsMultiCamCapture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[6]), @"AVGQDeviceHasAggregateCamera"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[7]), @"AVGQB7LQTMQIRMWVL3QHSIGQY3YFAA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[8]), @"AVGQDeviceSupportsAutoLowLightVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[9]), @"AVGQDeviceSupportsBravoCamera"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[10]), @"AVGQDeviceSupportsBravoPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[11]), @"AVGQDeviceSupportsCameraCaptureOnTouchDown"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[12]), @"AVGQDeviceSupportsCameraDeferredProcessing"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[13]), @"AVGQDeviceSupportsCinematicVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[14]), @"AVGQ3FYMJTRW4LUXTNAFCC6XVFTDHA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[15]), @"AVGQDeviceSupportsContentAwareDistortionCorrection"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[16]), @"AVGQ3J3FEVOOCNOKKTK3XQPUQ47DYY"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[17]), @"AVGQBPMGIAYPLJA32XFRAAWDO5G4G4"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[18]), @"AVGQDeviceSupportsDeferredPortraitRendering"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[19]), @"AVGQDeviceSupportsDepthWithDeepFusion"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[20]), @"AVGQDeviceSupportsExposureBiasWithoutExposureLock"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[21]), @"AVGQDeviceSupportsExtendedEnhancedCinematicVideoStabilization"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[22]), @"AVGQODGWLXGASKA4RNU2OP6Z44TGZ4"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[23]), @"AVGQN46I2BPHSDKPVN3YSGNPHPTAPE"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[24]), @"AVGQVYXTSFZ3R7TURIB5WPPITDPJLY"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[25]), @"AVGQDeviceSupportsFrontFacingCameraMirroredVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[26]), @"AVGQDeviceSupportsFrontFacingCameraNightMode"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[27]), @"AVGQDeviceSupportsFrontFacingCameraSmartHDR"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[28]), @"AVGQDeviceSupportsFrontFacingCameraSuperWide"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[29]), @"AVGQDeviceSupportsFrontFacingCameraZoomToggle"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[30]), @"AVGQDeviceSupportsFrontPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[31]), @"AVGQ6HD7ZNZD33DG7SG4DOHIPW4SUQ"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[32]), @"AVGQDeviceSupportsHDREV0Capture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[33]), @"AVGQLBZEVZETJU77LU4MEZH4LWJ54M"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[34]), @"AVGQCACKZRYIKJ5BE2QI3FAY65ZYJA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[35]), @"AVGQDeviceSupportsLinearDNG"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[36]), @"AVGQDeviceSupportsLivePhotoAuto"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[37]), @"AVGQDeviceSupportsMomentCapture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[38]), @"AVGQDeviceSupportsP3ColorspaceVideoRecording"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[39]), @"AVGQDeviceSupportsPortraitIntensityAdjustments"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[40]), @"AVGQDeviceSupportsPortraitLightEffectFilters"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[41]), @"AVGQL72SILMBLRSKPL2V4VLPUD2TDU"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[42]), @"AVGQDeviceSupportsProResVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[43]), @"AVGQDeviceSupportsResponsiveShutter"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[44]), @"AVGQKYDMKTE2UUKHJCGGZGQNYH5GDE"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[45]), @"AVGQIIPQVVOWR6BFMGVVBAM7ZDTIW4"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[46]), @"AVGQIDWZFGNLZOQVZINTCD5JZM57DE"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[47]), @"AVGQDeviceSupportsSemanticDevelopment"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[48]), @"AVGQDeviceSupportsSemanticStyles"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[49]), @"AVGQDeviceSupportsSingleCameraPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[50]), @"AVGQJQYPVTLPCNY4PHM26XACLZH4PU"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[51]), @"AVGQX3DWIDHL6QYY3OCER3G5UEM2QU"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[52]), @"AVGQDeviceSupportsSpatialOverCapture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[53]), @"AVGQDeviceSupportsStageLightPortraitPreview"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[54]), @"AVGQDeviceSupportsStereoAudioRecording"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[55]), @"AVGQMZMLNHBX4MFF5QD4PJWZFEVCEI"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[56]), @"AVGQBWQSOG5QWWG276TG2HH4RGJZDA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[57]), @"AVGQDeviceSupportsStudioLightPortraitPreview"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[58]), @"AVGQDeviceSupportsSuperWideAutoMacro"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[59]), @"AVGQDeviceSupportsTimelapseNightMode"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[60]), @"AVGQDJVGPJA65CJA2ZPQZL4GRPYDYA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[61]), @"AVGQDeviceSupportsTrueVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[62]), @"AVGQDeviceSupportsVariableFrameRateVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[63]), @"AVGQDeviceSupportsWideBravoCamera"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[64]), @"AVGQDeviceSupportsWideBravoPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[65]), @"AVGQDeviceSupportsWideBravoPortraitNightMode"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[66]), @"AVGQVNFDPYA37ZIZPRZOSYS4KMQIJ4"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[67]), @"AVGQDeviceSupportsZoomPictureInPicture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[68]), @"AVGQFrontFacingCameraAutoHDRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[69]), @"AVGQFrontFacingCameraBurstCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[70]), @"AVGQFrontFacingCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[71]), @"AVGQFrontFacingCameraDeferredPrewarmingDisabled"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[72]), @"AVGQFrontFacingCameraHDRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[73]), @"AVGQFrontFacingCameraHDROnCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[74]), @"AVGQFrontFacingCameraHFRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[75]), @"AVGQFrontFacingCameraPortraitModeCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[76]), @"AVGQFrontFacingCameraSingleCameraPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[77]), @"AVGQFrontFacingCameraStageLightPortraitCaptureCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[78]), @"AVGQFrontFacingCameraSupportsCinematicVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[79]), @"AVGQFrontFacingCameraSupportsCinematicVideo4K"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[80]), @"AVGQCB54MH3XAXNGTVD2SAMOV5WWOQ"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[81]), @"AVGQ4UHSO4KRGIJFZHZ3EAGDMAK6CA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[82]), @"AVGQOKRXQZPHFZ4X2XCPOHTANZXNGM"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[83]), @"AVGQBGWR3YSZWCQ7BKUUAOT5CCLHHE"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[84]), @"AVGQT42HZJM7T4BHFEGWILGWIJSNEQ"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[85]), @"AVGQFrontFacingCameraSupportsPortraitAutoSuggest"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[86]), @"AVGQYPHR3FTUAZCCTEYFPSINLTE7DI"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[87]), @"AVGQHEVCEncodingCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[88]), @"AVGQHasAppleNeuralEngine"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[89]), @"AVGQMedusaOverlayAppCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[90]), @"AVGQPanoramaCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[91]), @"AVGQPearlCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[92]), @"AVGQPhotosPostEffectsCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[93]), @"AVGQPipelinedStillImageProcessingCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[94]), @"AVGQDINRSVRALL7UYNXKHVSIWKZLRA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[95]), @"AVGQRearFacingCamera60fpsVideoCaptureCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[96]), @"AVGQRearFacingCameraAutoHDRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[97]), @"AVGQRearFacingCameraBurstCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[98]), @"AVGQRearFacingCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[99]), @"AVGQRearFacingCameraFocusPixelCalibrationCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[100]), @"AVGQRearFacingCameraHDRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[101]), @"AVGQRearFacingCameraHDROnCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[102]), @"AVGQRearFacingCameraHFRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[103]), @"AVGQRearFacingCameraPortraitModeCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[104]), @"AVGQRearFacingCameraStageLightPortraitCaptureCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[105]), @"AVGQRearFacingCameraSuperWideCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[106]), @"AVGQPEABAPB242SGF4J5L26EX5YTKA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[107]), @"AVGQRearFacingCameraSupportsCinematicVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[108]), @"AVGQRearFacingCameraSupportsCinematicVideo4K"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[109]), @"AVGQRearFacingCameraSupportsPortraitAutoSuggest"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[110]), @"AVGQHSSMVIQNR3MAPIGELAQM7DWP4U"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[111]), @"AVGQRearFacingCameraTimeOfFlightCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[112]), @"AVGQQ4PFVIJ6WPTAHHYTAR5J5O7YNA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[113]), @"AVGQRearFacingLowLightCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[114]), @"AVGQRearFacingTelephotoCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[115]), @"AVGQRearWideCameraDisplayCustomZoomStops"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[116]), @"AVGQSphereCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[117]), @"AVGQSupportsIrisCapture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[118]), @"AVGQVideoCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v13[119]), @"AVGQVideoStillsCapability"}];
    LODWORD(v14) = *(v13 + 30);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v14), @"AVGQFrontFacingCameraMaxPhotoZoomFactor"}];
    LODWORD(v15) = *(v13 + 31);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v15), @"AVGQRearFacingAggregateDeviceMaxCinematicZoomFactor"}];
    LODWORD(v16) = *(v13 + 32);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v16), @"AVGQRearFacingAggregateDeviceMaxPortraitZoomFactor"}];
    LODWORD(v17) = *(v13 + 33);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v17), @"AVGQRearFacingCameraMaxPhotoZoomFactor"}];
    LODWORD(v18) = *(v13 + 34);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v18), @"AVGQSN3QUOWTBFYIVAQOVNQEVK6G4M"}];
    LODWORD(v19) = *(v13 + 35);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v19), @"AVGQAJT7KNQJHRRDW5Q5QTGETOLK2E"}];
    LODWORD(v20) = *(v13 + 36);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v20), @"AVGQHDDMQ6RTH76PQ2HVCQ4MSWG63Q"}];
    LODWORD(v21) = *(v13 + 37);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v21), @"AVGQ5RTE3RTRZZFRGK7IDFEQC7NFBE"}];
    LODWORD(v22) = *(v13 + 38);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v22), @"AVGQQIBUFDUYMZTKVBF36FTLQON3DY"}];
    LODWORD(v23) = *(v13 + 39);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v23), @"AVGQSuperWideCameraToWideCameraRelativeZoomFactor"}];
    LODWORD(v24) = *(v13 + 40);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v24), @"AVGQTorchMaxBeamWidth"}];
    LODWORD(v25) = *(v13 + 41);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v25), @"AVGQTorchMinBeamWidth"}];
    LODWORD(v26) = *(v13 + 42);
    result = [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v26), @"AVGQWideCameraToTelephotoCameraRelativeZoomFactor"}];
    if (*(v13 + 22) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQAggregateDevicePhotoZoomFactor"}];
    }

    if (*(v13 + 23) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQAggregateDeviceVideoZoomFactor"}];
    }

    if (*(v13 + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQBravoCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 25) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQCameraAppUIVersion"}];
    }

    if (*(v13 + 26) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQCameraHDR10BitVideoCaptureMaxFPS"}];
    }

    if (*(v13 + 27) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQCameraHDRVersion"}];
    }

    if (*(v13 + 28) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQCameraMaxBurstLength"}];
    }

    if (*(v13 + 29) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQCaptureSessionMaxMultiCamRGBStreamsSupported"}];
    }

    if (*(v13 + 30) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQDefaultVariableFrameRateVideoMaxFPS"}];
    }

    if (*(v13 + 31) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraFocalLengthIn35mm"}];
    }

    if (*(v13 + 32) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraHFRVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 33) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraHFRVideoCapture720pMaxFPS"}];
    }

    if (*(v13 + 34) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraMaxVideoZoomFactor"}];
    }

    if (*(v13 + 35) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraStillDurationForBurst"}];
    }

    if (*(v13 + 36) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 37) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 38) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQFrontFacingCameraVideoCapture720pMaxFPS"}];
    }

    if (*(v13 + 39) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQMinimumDiskSpaceReserved"}];
    }

    if (*(v13 + 40) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraHFRVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 41) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraHFRVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 42) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraHFRVideoCapture720pMaxFPS"}];
    }

    if (*(v13 + 43) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraMaxVideoZoomFactor"}];
    }

    if (*(v13 + 44) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraStillDurationForBurst"}];
    }

    if (*(v13 + 45) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 46) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 47) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingCameraVideoCapture720pMaxFPS"}];
    }

    if (*(v13 + 48) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingSuperWideCameraFocalLengthIn35mm"}];
    }

    if (*(v13 + 49) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingTeleCameraFocalLengthIn35mm"}];
    }

    if (*(v13 + 50) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQRearFacingWideCameraFocalLengthIn35mm"}];
    }

    if (*(v13 + 51) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQGYSWMQKMTMQOUYQ2AKUCKEN6AA"}];
    }

    if (*(v13 + 52) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQSuperBravoCameraVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 53) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQSuperBravoCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 54) != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQWideBravoCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 55))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];

      return [a5 setObject:v27 forKeyedSubscript:@"AVGQFirstSupportedReleaseVersion"];
    }
  }

  return result;
}

uint64_t AVGestaltGetBoolAnswer(uint64_t a1)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v2 = [sAVGestaltBoolDataBase objectForKeyedSubscript:a1];

  return [v2 BOOLValue];
}

uint64_t AVGestaltGetStringAnswerWithDefault(uint64_t a1, uint64_t a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  result = [sAVGestaltStringDataBase objectForKeyedSubscript:a1];
  if (!result)
  {
    return a2;
  }

  return result;
}

uint64_t AVCaptureClientHasEntitlement(void *a1)
{
  if ([a1 isEqualToString:AVCaptureEntitlementShutterSoundManipulation])
  {
    v2 = &AVCaptureClientHasEntitlement_shutterManipulationAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkShutterManipulationOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementOfflineVideoStabilizer])
  {
    v2 = &AVCaptureClientHasEntitlement_offlineVideoStabilizerAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkOfflineVideoStabilizerOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementFilterRendering])
  {
    v2 = &AVCaptureClientHasEntitlement_filterRenderingAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkFilterRenderingOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementDeferredPhotoProcessor])
  {
    v2 = &AVCaptureClientHasEntitlement_deferredPhotoProcessingAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkDeferredPhotoProcessingOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementDeskViewCamera])
  {
    v2 = &AVCaptureClientHasEntitlement_overheadCameraAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkOverheadCameraOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementMultitaskingCameraAccess])
  {
    v2 = &AVCaptureClientHasEntitlement_multitaskingCameraAccessAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkMultitaskingCameraAccessOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementSetAnyUserPreferredCamera])
  {
    v2 = &AVCaptureClientHasEntitlement_setAnyUserPreferredCameraAllowed;
    v3 = &AVCaptureClientHasEntitlement_setAnyUserPreferredCameraOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementMetadataCameras])
  {
    v2 = &AVCaptureClientHasEntitlement_metadataCamerasAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkMetadataCamerasOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementWebBrowserEngineRendering])
  {
    v2 = &AVCaptureClientHasEntitlement_isWebBrowserEngineGPUProcess;
    v3 = &AVCaptureClientHasEntitlement_checkWebBrowserEngineRenderingOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementProxyDevices])
  {
    v2 = &AVCaptureClientHasEntitlement_proxyDevicesAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkProxyDevicesOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementCameraStolenInterruptor])
  {
    v2 = &AVCaptureClientHasEntitlement_cameraStolenInterruptorAllowed;
    v3 = &AVCaptureClientHasEntitlement_checkCameraStolenInterruptorOnceToken;
  }

  else if ([a1 isEqualToString:AVCaptureEntitlementVDOPreparesCellularRadioForMRC])
  {
    v2 = &AVCaptureClientHasEntitlement_vdoPreparesCellularRadioForMRC;
    v3 = &AVCaptureClientHasEntitlement_checkVDOPreparesCellularRadioForMRCOnceToken;
  }

  else
  {
    if (![a1 isEqualToString:AVCaptureEntitlementAudioFormatOverride])
    {
      v4 = 0;
      return v4 & 1;
    }

    v2 = &AVCaptureClientHasEntitlement_audioFormatOverride;
    v3 = &AVCaptureClientHasEntitlement_checkAudioFormatOverrideOnceToken;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __AVCaptureClientHasEntitlement_block_invoke;
  v6[3] = &unk_1E786ECD0;
  v6[4] = a1;
  v6[5] = v2;
  if (*v3 != -1)
  {
    dispatch_once(v3, v6);
  }

  v4 = *v2;
  return v4 & 1;
}

__CFString *AVCaptureClientPreferencesDomain()
{
  v0 = sClientPreferencesDomain;
  if (sClientPreferencesDomain)
  {
    return v0;
  }

  if (AVCaptureCurrentClientIsFaceTimeVariant_sOnceToken != -1)
  {
    AVCaptureCurrentClientIsFaceTimeVariant_cold_1();
  }

  if (AVCaptureCurrentClientIsFaceTimeVariant_sAnswer == 1)
  {
    v0 = @"com.apple.facetime";
    v1 = 1;
  }

  else
  {
    v0 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsDomainForClient];
    v1 = v0 != 0;
    if (!v0)
    {
      v0 = @"unknown";
      if (!v1)
      {
        return v0;
      }

      goto LABEL_12;
    }
  }

  if ([(__CFString *)v0 hasPrefix:@"com.apple.WebKit"])
  {
    v0 = @"com.apple.mobilesafari";
  }

  if (v1)
  {
LABEL_12:
    os_unfair_lock_lock(&sClientPreferencesDomainLock);
    if (!sClientPreferencesDomain)
    {
      sClientPreferencesDomain = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v0];
    }

    os_unfair_lock_unlock(&sClientPreferencesDomainLock);
  }

  return v0;
}

void __AVCaptureCurrentClientIsFaceTimeVariant_block_invoke()
{
  v0 = AVCaptureCopyClientCodeSigningIdentifier();
  AVCaptureCurrentClientIsFaceTimeVariant_sAnswer = AVCaptureClientIsFaceTimeVariant(v0);
}

uint64_t AVCaptureClientIsFaceTimeVariant(void *a1)
{
  if ([a1 isEqualToString:@"com.apple.mediaserverd"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", 0x1F1CBF6C8) & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", 0x1F1CBF688) & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.avconferenced") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.TelephonyUtilities") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.FaceTime.FaceTimeNotificationCenterService") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.VideoConference.AVConferenceTestRunneriOS") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.AVConferenceTestRunnertvOS") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.facetime.legacy"))
  {
    return 1;
  }

  return [a1 isEqualToString:@"com.apple.facetime.debug"];
}

void __AVCaptureClientHasEntitlement_block_invoke(uint64_t a1)
{
  v2 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopyValueForEntitlement(v2, *(a1 + 32), 0);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFBooleanGetTypeID())
      {
        **(a1 + 40) = CFBooleanGetValue(v5) != 0;
      }

      CFRelease(v5);
    }

    CFRelease(v3);
  }
}

CFStringRef AVCaptureCopyClientCodeSigningIdentifier()
{
  if (AVCaptureCopyClientCodeSigningIdentifier_sOnceToken != -1)
  {
    AVCaptureCopyClientCodeSigningIdentifier_cold_1();
  }

  v1 = AVCaptureCopyClientCodeSigningIdentifier_sClientCodeSigningIdentifier;
  if (!AVCaptureCopyClientCodeSigningIdentifier_sClientCodeSigningIdentifier)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];

  return CFStringCreateCopy(v2, v1);
}

void __AVCaptureCopyClientCodeSigningIdentifier_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    AVCaptureCopyClientCodeSigningIdentifier_sClientCodeSigningIdentifier = SecTaskCopySigningIdentifier(v0, 0);

    CFRelease(v1);
  }
}

uint64_t AVCaptureIsRunningInMediaserverd()
{
  if (AVCaptureIsRunningInMediaserverd_sOnceToken != -1)
  {
    AVCaptureIsRunningInMediaserverd_cold_1();
  }

  return AVCaptureIsRunningInMediaserverd_sAnswer;
}

void __AVCaptureIsRunningInMediaserverd_block_invoke()
{
  v0 = AVCaptureCopyClientCodeSigningIdentifier();
  if (v0)
  {
    v1 = v0;
    if (CFStringGetLength(v0) == 22)
    {
      v2 = CFStringFind(v1, @"com.apple.mediaserverd", 0);
      if (v2.location)
      {
        v3 = 0;
      }

      else
      {
        v3 = v2.length == 22;
      }

      v4 = v3;
      AVCaptureIsRunningInMediaserverd_sAnswer = v4;
    }

    CFRelease(v1);
  }
}

void _registerServerConnectionDiedNotification()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 addObserverForName:*MEMORY[0x1E69904D0] object:0 queue:0 usingBlock:&__block_literal_global_1508];

  JUMPOUT(0x1AC582C50);
}

void avcdpp_dispatchNotification(uint64_t a1, CFTypeRef cf, CFTypeRef a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __avcdpp_dispatchNotification_block_invoke;
  block[3] = &unk_1E786ECA8;
  block[4] = a1;
  block[5] = cf;
  block[6] = a3;
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], block);
  v5 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v5);
}

void __avcdpp_dispatchNotification_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _handleNotification:*(a1 + 40) payload:*(a1 + 48)];
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t AVGestaltGetIntegerAnswerWithDefault(uint64_t a1, uint64_t a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v4 = [sAVGestaltIntegerDataBase objectForKeyedSubscript:a1];
  if (!v4)
  {
    return a2;
  }

  return [v4 integerValue];
}

void avflashlightNotification(uint64_t a1, void *a2, void *a3, uint64_t a4, const void *a5)
{
  if ([a3 isEqualToString:*MEMORY[0x1E69909F0]])
  {

    [a2 _reconnectToServer];
  }

  else
  {
    if (a3)
    {
      CFRetain(a3);
    }

    if (a5)
    {
      CFRetain(a5);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __avflashlightNotification_block_invoke;
    block[3] = &unk_1E786ECA8;
    block[4] = a2;
    block[5] = a3;
    block[6] = a5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void fvd_figCaptureSourceNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fvd_figCaptureSourceNotificationHandler_block_invoke;
  block[3] = &unk_1E786EFD0;
  block[4] = a2;
  block[5] = a3;
  block[6] = a5;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], block);
  v10 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v10);
  objc_autoreleasePoolPop(v8);
}

void sub_1A9181AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9181C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float AVGestaltGetFloatAnswerWithDefault(uint64_t a1, float a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v4 = [sAVGestaltFloatDataBase objectForKeyedSubscript:a1];
  if (!v4)
  {
    return a2;
  }

  [v4 floatValue];
  return result;
}

void __avflashlightNotification_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _handleNotification:*(a1 + 40) payload:*(a1 + 48)];
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t AVGestaltGetIntegerAnswer(uint64_t a1)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v2 = [sAVGestaltIntegerDataBase objectForKeyedSubscript:a1];
  if (!v2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v2 integerValue];
}

uint64_t AVCaptureClientIsCameraOrDerivative()
{
  if (AVCaptureClientIsCameraOrDerivative_sOnceToken != -1)
  {
    AVCaptureClientIsCameraOrDerivative_cold_1();
  }

  return AVCaptureClientIsCameraOrDerivative_sAnswer;
}

void __AVCaptureClientIsCameraOrDerivative_block_invoke()
{
  v1 = AVCaptureCopyClientCodeSigningIdentifier();
  if (([(__CFString *)v1 isEqualToString:0x1F1CBF648]& 1) != 0 || ([(__CFString *)v1 isEqualToString:0x1F1CBF668]& 1) != 0)
  {
    v0 = 1;
  }

  else
  {
    v0 = [(__CFString *)v1 isEqualToString:0x1F1CC2068];
  }

  AVCaptureClientIsCameraOrDerivative_sAnswer = v0;
}

uint64_t __AVCaptureSessionIsDeferredStartSupported_block_invoke()
{
  result = AVGestaltGetBoolAnswer(@"AVGQCaptureDeferredStartSupported");
  AVCaptureSessionIsDeferredStartSupported_deferredStartSupported = result;
  return result;
}

void sub_1A9182EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _registerVideoDevicesOnce()
{
  os_unfair_lock_lock(&sRegisterVideoDevicesLock);
  if (sRegisteredVideoDevices)
  {

    os_unfair_lock_unlock(&sRegisterVideoDevicesLock);
  }

  else
  {
    sSourceInfoArrayChangedNotificationQueue = dispatch_queue_create("com.apple.avfoundation.capturedevice.source_info_array_changed_queue", 0);
    CStringPtr = CFStringGetCStringPtr(*MEMORY[0x1E6990560], 0x8000100u);
    notify_register_dispatch(CStringPtr, &sSourceInfoArrayChangedNotificationToken, sSourceInfoArrayChangedNotificationQueue, &__block_literal_global_1515);
    v1 = [NSClassFromString(&cfstr_Avcapturefigvi.isa) _devices];
    sRegisteredVideoDevices = v1;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [v1 countByEnumeratingWithState:&v9 objects:v8 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v10;
LABEL_7:
      v5 = 0;
      while (1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        if ([v6 deviceType] == @"AVCaptureDeviceTypeBuiltInWideAngleCamera" && objc_msgSend(v6, "position") == 2)
        {
          break;
        }

        if (v3 == ++v5)
        {
          v3 = [v1 countByEnumeratingWithState:&v9 objects:v8 count:16];
          if (v3)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    os_unfair_lock_unlock(&sRegisterVideoDevicesLock);
    FigCameraUsageRegisterChangeHandler();
  }
}

uint64_t AVControlCenterPreferencesDomainForPreferencesDomain(void *a1)
{
  if ([a1 isEqualToString:@"global"])
  {
    return a1;
  }

  v2 = 0x1F1CBF688;
  if (([a1 isEqualToString:0x1F1CBF688] & 1) == 0)
  {
    if (AVCaptureCurrentClientIsFaceTimeVariant_sOnceToken != -1)
    {
      AVCaptureCurrentClientIsFaceTimeVariant_cold_1();
    }

    if ((AVCaptureCurrentClientIsFaceTimeVariant_sAnswer & 1) == 0)
    {
      if ([a1 hasPrefix:@"com.apple.WebKit"])
      {
        return 0x1F1CC2088;
      }

      else
      {
        return a1;
      }
    }
  }

  return v2;
}

uint64_t AVControlCenterVideoEffectsCenterStageControlModePreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@centerstage-controlmode", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsCenterStageEnabledPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@centerstage-enabled", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsCenterStageUnavailableReasonsPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@centerstage-unavailablereasons", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsCenterStageMigrationCompletePreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@centerstage-migration-complete", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterMigrateDefaultsForKeys(void *a1, void *a2, uint64_t a3)
{
  result = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton "objectForKey:"BOOLValue"")];
  if (result)
  {
    return result;
  }

  v7 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  v8 = [v7 isEqualToString:0x1F1CBF688];
  if (v7 && (v9 = v8, ![v7 isEqualToString:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundleIdentifier")}]))
  {
    if (!v9)
    {
      v20 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:a1 allowPlaceholder:1 error:0];
      v21 = [v20 dataContainerURL];
      v11 = [objc_alloc(MEMORY[0x1E695E000]) _initWithSuiteName:v7 container:v21];

      goto LABEL_6;
    }

    v10 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v7];
  }

  else
  {
    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  v11 = v10;
LABEL_6:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [a2 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(a2);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [a2 objectForKeyedSubscript:v16];
        v18 = [v11 objectForKey:v16];
        if (v18)
        {
          v19 = v17 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          [AVCaptureProprietaryDefaultsSingleton setObject:v18 forKey:v17];
        }
      }

      v13 = [a2 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v13);
  }

  return [AVCaptureProprietaryDefaultsSingleton setObject:MEMORY[0x1E695E118] forKey:a3];
}

uint64_t AVCaptureCurrentClientIsFaceTimeVariant()
{
  if (AVCaptureCurrentClientIsFaceTimeVariant_sOnceToken != -1)
  {
    AVCaptureCurrentClientIsFaceTimeVariant_cold_1();
  }

  return AVCaptureCurrentClientIsFaceTimeVariant_sAnswer;
}

uint64_t AVControlCenterVideoEffectsReactionsEnabledPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@reactions-enabled", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsGesturesEnabledPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@gestures-enabled", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254()
{
  if (AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254_sOnceToken != -1)
  {
    AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254_cold_1();
  }

  return AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254_sAnswer;
}

void __AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254_block_invoke()
{
  v1 = AVCaptureCopyClientCodeSigningIdentifier();
  if (([(__CFString *)v1 isEqualToString:@"com.apple.camera"]& 1) != 0)
  {
    v0 = 1;
  }

  else
  {
    v0 = [(__CFString *)v1 isEqualToString:@"com.apple.VisionKit.KeyboardCamera"];
  }

  AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254_sAnswer = v0;
}

uint64_t AVControlCenterVideoEffectsPortraitEffectEnabledPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@portraiteffect-enabled", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsPortraitEffectUnavailableReasonsPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@portraiteffect-unavailablereasons", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsPortraitEffectAperturePreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@portraiteffect-aperture", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsReactionsUnavailableReasonsPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@reactions-unavailablereasons", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsPortraitEffectControlModePreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@portraiteffect-controlmode", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsPortraitEffectMigrationCompletePreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@portraiteffect-migration-complete", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsStudioLightingControlModePreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@studiolighting-controlmode", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsStudioLightingEnabledPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@studiolighting-enabled", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsStudioLightingUnavailableReasonsPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@studiolighting-unavailablereasons", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsStudioLightingIntensityPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@studiolighting-intensity", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVCaptureIsRunningInXCTest()
{
  if (AVCaptureIsRunningInXCTest_sOnceToken != -1)
  {
    AVCaptureIsRunningInXCTest_cold_1();
  }

  return AVCaptureIsRunningInXCTest_sAnswer;
}

void __AVCaptureIsRunningInXCTest_block_invoke()
{
  v0 = AVCaptureCopyClientCodeSigningIdentifier();
  if (!v0)
  {
    return;
  }

  v1 = v0;
  Length = CFStringGetLength(v0);
  v3 = Length;
  if (Length <= 63)
  {
    if (Length == 16)
    {
      v4 = @"com.apple.xctest";
      goto LABEL_14;
    }

    if (Length == 24)
    {
      v4 = @"com.apple.dt.xctest.tool";
      goto LABEL_14;
    }
  }

  else
  {
    switch(Length)
    {
      case '@':
        v4 = @"com.apple.avfoundation.AVFCaptureTests-Embedded-Runner.xctrunner";
        goto LABEL_14;
      case 'D':
        v4 = @"com.apple.avfoundation.AVFoundation-OSX-Capture-Unit-Tests.xctrunner";
        goto LABEL_14;
      case 'L':
        v4 = @"com.apple.avfoundation.AVFoundation-macCatalyst-Capture-Unit-Tests.xctrunner";
LABEL_14:
        v5 = CFStringFind(v1, v4, 0);
        if (v5.location)
        {
          v6 = 0;
        }

        else
        {
          v6 = v5.length == v3;
        }

        v7 = v6;
        AVCaptureIsRunningInXCTest_sAnswer = v7;
        break;
    }
  }

  CFRelease(v1);
}

void __AVCaptureClientIsInternalTestTool_block_invoke()
{
  v1 = AVCaptureCopyClientCodeSigningIdentifier();
  if (([(__CFString *)v1 isEqualToString:@"com.apple.avfoundation.figcam"]& 1) != 0)
  {
    v0 = 1;
  }

  else
  {
    v0 = [(__CFString *)v1 isEqualToString:@"com.apple.avcapture"];
  }

  AVCaptureClientIsInternalTestTool_sAnswer = v0;
}

uint64_t AVCaptureClientIsInternalTestTool()
{
  if (AVCaptureClientIsInternalTestTool_sOnceToken != -1)
  {
    AVCaptureClientIsInternalTestTool_cold_1();
  }

  return AVCaptureClientIsInternalTestTool_sAnswer;
}

uint64_t AVControlCenterVideoEffectsReactionsTriggeredPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  if (a1)
  {
    v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
    if (!v2)
    {
      v2 = @"unknown";
    }

    v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"signal/%@/", v3];
  }

  else
  {
    v4 = @"signal/";
  }

  return [v1 stringWithFormat:@"%@reaction-trigger", v4];
}

uint64_t AVControlCenterVideoEffectsReactionsInProgressPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  if (a1)
  {
    v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
    if (!v2)
    {
      v2 = @"unknown";
    }

    v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"signal/%@/", v3];
  }

  else
  {
    v4 = @"signal/";
  }

  return [v1 stringWithFormat:@"%@reactions-active", v4];
}

uint64_t AVControlCenterVideoEffectsHaveShownGesturesDefaultDisabledNotificationPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@did-show-gestures-default-disabled-notification", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsEligibleEffectListPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@eligible-effects-list", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

void __AVCaptureClientIsContinuityCapture_block_invoke()
{
  v1 = AVCaptureCopyClientCodeSigningIdentifier();
  if (([(__CFString *)v1 isEqualToString:0x1F1CBF768]& 1) != 0)
  {
    v0 = 1;
  }

  else
  {
    v0 = [(__CFString *)v1 isEqualToString:0x1F1CBF788];
  }

  AVCaptureClientIsContinuityCapture_sAnswer = v0;
}

uint64_t AVCaptureClientIsContinuityCapture()
{
  if (AVCaptureClientIsContinuityCapture_sOnceToken != -1)
  {
    AVCaptureClientIsContinuityCapture_cold_1();
  }

  return AVCaptureClientIsContinuityCapture_sAnswer;
}

uint64_t AVControlCenterVideoEffectsGesturesEnabledDefaultPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@gestures-enabled-default", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsBackgroundReplacementEnabledPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@background-replacement-enabled", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsBackgroundReplacementUnavailableReasonsPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@background-replacement-unavailablereasons", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

uint64_t AVControlCenterVideoEffectsBackgroundReplacementURLBookmarkPreferenceKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v1 stringWithFormat:@"%@background-replacement-url-bookmark", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"videoeffects/%@/", v3)];
}

BOOL AVCaptureIsSensorMountedInPortraitOrientation(float a1)
{
  HIDWORD(v1) = -1527099483 * a1 + 47721856;
  LODWORD(v1) = HIDWORD(v1);
  return (v1 >> 2) < 0x16C16C1;
}

uint64_t AVControlCenterVideoEffectsModuleShouldBeShownForBundleID(void *a1)
{
  if (dword_1ED8068A0)
  {
    v24 = 0;
    v23 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  if (AVCaptureClientIsFaceTimeVariant(a1))
  {
    a1 = @"com.apple.facetime";
  }

  else if ([a1 hasPrefix:@"com.apple.WebKit"])
  {
    a1 = @"com.apple.mobilesafari";
  }

  v3 = avccm_commonDisallowListForVideoEffectsAndMicModes();
  v22[0] = 0x1F1CBF648;
  v22[1] = 0x1F1CC2068;
  v22[2] = 0x1F1CBF668;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  if (([v3 containsObject:a1] & 1) != 0 || objc_msgSend(v4, "containsObject:", a1))
  {
    if (dword_1ED8068A0)
    {
      v24 = 0;
      v23 = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v12 = v24;
      if (os_log_type_enabled(v11, v23))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v16 = 136315394;
        v17 = "AVControlCenterVideoEffectsModuleShouldBeShownForBundleID";
        v18 = 2114;
        v19 = a1;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  else
  {
    v5 = _AVControlCenterModuleStateForBundleID(a1);
    if (dword_1ED8068A0)
    {
      v24 = 0;
      v23 = OS_LOG_TYPE_DEFAULT;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v7 = v24;
      if (os_log_type_enabled(v6, v23))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v9 = [v5 isActive];
        v16 = 136315650;
        v17 = "AVControlCenterVideoEffectsModuleShouldBeShownForBundleID";
        v18 = 2114;
        v19 = a1;
        v20 = 1024;
        v21 = v9;
        LODWORD(v15) = 28;
        v14 = &v16;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [v5 isActive];
  }
}

uint64_t avccm_commonDisallowListForVideoEffectsAndMicModes()
{
  v1[0] = 0x1F1CBF6A8;
  v1[1] = 0x1F1CC20A8;
  v1[2] = @"com.apple.ShazamKit";
  v1[3] = @"com.apple.VisionKit.KeyboardCamera";
  v1[4] = 0x1F1CBF768;
  v1[5] = 0x1F1CBF788;
  v1[6] = @"com.apple.livetranscriptionui";
  v1[7] = @"com.apple.BarcodeScanner";
  v1[8] = @"com.apple.measure";
  v1[9] = @"com.apple.SpeechRecognitionCore.speechrecognitiond";
  v1[10] = @"com.apple.Magnifier";
  v1[11] = @"com.apple.replayd";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:12];
}

uint64_t AVCaptureClientAllowsDeskViewCamera()
{
  if ([objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
  {
    return 1;
  }

  v1 = AVCaptureEntitlementDeskViewCamera;

  return AVCaptureClientHasEntitlement(v1);
}

uint64_t AVCaptureClientIsInternalCommandLineTool()
{
  if (AVCaptureClientIsInternalCommandLineTool_sOnceToken != -1)
  {
    AVCaptureClientIsInternalCommandLineTool_cold_1();
  }

  return AVCaptureClientIsInternalCommandLineTool_sAnswer;
}

void __AVCaptureClientIsInternalCommandLineTool_block_invoke()
{
  v0 = AVCaptureCopyClientCodeSigningIdentifier();
  AVCaptureClientIsInternalCommandLineTool_sAnswer = [(__CFString *)v0 isEqualToString:@"com.apple.avcapture"];
}

uint64_t AVCaptureClientExpectsCameraMountedInLandscapeOrientation()
{
  if (AVCaptureClientExpectsCameraMountedInLandscapeOrientation_sOnceToken != -1)
  {
    AVCaptureClientExpectsCameraMountedInLandscapeOrientation_cold_1();
  }

  return AVCaptureClientExpectsCameraMountedInLandscapeOrientation_sAnswer;
}

uint64_t AVCaptureSessionIsLaunchPrewarmingEnabled()
{
  if (AVCaptureSessionIsLaunchPrewarmingEnabled_onceToken != -1)
  {
    AVCaptureSessionIsLaunchPrewarmingEnabled_cold_1();
  }

  return AVCaptureSessionIsLaunchPrewarmingEnabled_launchPrewarmingEnabled;
}

uint64_t __AVCaptureSessionIsLaunchPrewarmingEnabled_block_invoke()
{
  if ([objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
  {
    result = 1;
  }

  else
  {
    result = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  }

  AVCaptureSessionIsLaunchPrewarmingEnabled_launchPrewarmingEnabled = result;
  return result;
}

BOOL AVMediaTypeMetadataObjectAndAVMediaTypeMetadataAreDefined()
{
  if (AVMediaTypeForMetadataObjects_sCorrectedAVMediaTypeMetadataOnce != -1)
  {
    AVMediaTypeForMetadataObjects_cold_1();
  }

  return AVMediaTypeForMetadataObjects_sCorrectedAVMediaTypeMetadata == *MEMORY[0x1E69875D8];
}

BOOL AVCapturePlatformMountsCamerasInLandscapeOrientation()
{
  if (AVCaptureClientExpectsCameraMountedInLandscapeOrientation_sOnceToken != -1)
  {
    AVCaptureClientExpectsCameraMountedInLandscapeOrientation_cold_1();
  }

  return FigCapturePlatformMountsCamerasInLandscapeOrientation() != 0;
}

uint64_t AVCaptureOutputConnectionFailureReasonString(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = MEMORY[0x1E696AEC0];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = objc_opt_class();
        v23 = a3;
        v24 = NSStringFromClass(v15);
        v22 = v14;
        v8 = @"<%@: %p> cannot be added because %@ only accepts metadata connections originating from the same AVCaptureInput";
        break;
      case 4:
        v9 = MEMORY[0x1E696AEC0];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = objc_opt_class();
        v23 = a3;
        v24 = NSStringFromClass(v18);
        v22 = v17;
        v8 = @"<%@: %p> cannot be added because %@ only accepts AVCaptureDeviceInput metadata connections originating from the same AVCaptureDeviceInput";
        break;
      case 5:
        v4 = MEMORY[0x1E696AEC0];
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        [objc_msgSend(a3 "sourceDevice")];
        v7 = objc_opt_class();
        v23 = a3;
        v24 = NSStringFromClass(v7);
        v22 = v6;
        v8 = @"<%@: %p> cannot be added because streaming depth is not supported for the source AVCaptureDevice's activeFormat: %@";
LABEL_13:
        v19 = v4;
        return [v19 stringWithFormat:v8, v22, v23, v24];
      default:
        return 0;
    }

LABEL_11:
    v19 = v9;
    return [v19 stringWithFormat:v8, v22, v23, v24];
  }

  if (a1 == 1)
  {
    v4 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    v22 = NSStringFromClass(v20);
    v23 = a3;
    v8 = @"<%@: %p> cannot be added because the source and destination media types are incompatible";
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = objc_opt_class();
    v23 = a3;
    v24 = NSStringFromClass(v12);
    v22 = v11;
    v8 = @"<%@: %p> cannot be added because %@ only accepts one connection of this media type at a time, and it is already connected";
    goto LABEL_11;
  }

  return 0;
}

void AVCaptureInitializeShutterSoundSuppressedByAirpodStemClickStorageOnce()
{
  if (_MergedGlobals != -1)
  {
    AVCaptureInitializeShutterSoundSuppressedByAirpodStemClickStorageOnce_cold_1();
  }
}

uint64_t AVMediaTypeForMetadataObjects()
{
  if (AVMediaTypeForMetadataObjects_sCorrectedAVMediaTypeMetadataOnce != -1)
  {
    AVMediaTypeForMetadataObjects_cold_1();
  }

  return AVMediaTypeForMetadataObjects_sCorrectedAVMediaTypeMetadata;
}

void __AVMediaTypeForMetadataObjects_block_invoke()
{
  if (dyld_get_active_platform() == 1)
  {
    v0 = MEMORY[0x1E69875D0];
  }

  else
  {
    v1 = dyld_program_sdk_at_least();
    v0 = MEMORY[0x1E69875D0];
    if (v1)
    {
      if (AVCaptureMetadataObjectsOnly_onceToken != -1)
      {
        AVCaptureMetadataObjectsOnly_cold_1();
        v0 = MEMORY[0x1E69875D0];
      }

      if (!AVCaptureMetadataObjectsOnly_answer)
      {
        v0 = MEMORY[0x1E69875D8];
      }
    }
  }

  AVMediaTypeForMetadataObjects_sCorrectedAVMediaTypeMetadata = *v0;
}

uint64_t __AVCaptureMetadataObjectsOnly_block_invoke()
{
  result = dyld_program_sdk_at_least();
  if ((result & 1) == 0)
  {
    AVCaptureMetadataObjectsOnly_answer = 1;
  }

  return result;
}

double AVCaptureMainScreenPixelSize()
{
  if (AVCaptureMainScreenPixelSize_onceToken != -1)
  {
    AVCaptureMainScreenPixelSize_cold_1();
  }

  return *&AVCaptureMainScreenPixelSize_width;
}

void __AVCaptureMainScreenPixelSize_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    FigCFDictionaryGetFloatIfPresent();
    FigCFDictionaryGetFloatIfPresent();

    CFRelease(v1);
  }
}

void _registerAudioDevicesOnce()
{
  os_unfair_lock_lock(&sRegisterAudioDevicesLock);
  if (!sRegisteredAudioDevices)
  {
    if (AVCaptureIsRunningInMediaserverd())
    {
      v0 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    else
    {
      v0 = [NSClassFromString(&cfstr_Avcapturefigau.isa) _devices];
    }

    sRegisteredAudioDevices = v0;
  }

  os_unfair_lock_unlock(&sRegisterAudioDevicesLock);
}

CGAffineTransform *AVCaptureVideoTransformForCaptureDevice@<X0>(void *a1@<X0>, int a2@<W3>, int a3@<W4>, double *a4@<X5>, char a5@<W6>, void *a6@<X7>, uint64_t a7@<X8>, CGFloat a8@<D0>, CGFloat a9@<D1>, CGFloat a10@<D2>, CGFloat a11@<D3>, double a12@<D4>, double a13@<D5>, CGFloat a14@<D6>, CGFloat a15@<D7>, char a16, char a17)
{
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *a7 = 0u;
  CGAffineTransformMakeScale(a7, a8, a9);
  if (a8 != a10 || a9 != a11)
  {
    if ([a1 isEqualToString:*MEMORY[0x1E69840F8]])
    {
      v33 = fmax(a10 / a8, a11 / a9);
      v34 = v33;
    }

    else
    {
      v35 = [a1 isEqualToString:*MEMORY[0x1E69840E8]];
      v34 = a10 / a8;
      v33 = a11 / a9;
      v36 = fmin(a10 / a8, a11 / a9);
      if (v35)
      {
        v33 = v36;
        v34 = v36;
      }
    }

    memset(&v85, 0, sizeof(v85));
    CGAffineTransformMakeScale(&v85, v34, v33);
    v37 = *(a7 + 16);
    *&t1.a = *a7;
    *&t1.c = v37;
    *&t1.tx = *(a7 + 32);
    v82 = v85;
    CGAffineTransformConcat(&t2, &t1, &v82);
    v38 = *&t2.c;
    *a7 = *&t2.a;
    *(a7 + 16) = v38;
    v39 = *&v85.a;
    *(a7 + 32) = *&t2.tx;
    *&t2.a = v39;
    *&t2.c = *&v85.c;
    *&t2.tx = *&v85.tx;
    *&v39 = 0;
    *&v38 = 0;
    v40 = a8;
    v41 = a9;
    v86 = CGRectApplyAffineTransform(*(&v38 - 8), &t2);
    CGAffineTransformMakeTranslation(&t1, (a10 - v86.size.width) * 0.5, (a11 - v86.size.height) * 0.5);
    v42 = *(a7 + 16);
    *&v82.a = *a7;
    *&v82.c = v42;
    *&v82.tx = *(a7 + 32);
    CGAffineTransformConcat(&t2, &v82, &t1);
    v43 = *&t2.c;
    *a7 = *&t2.a;
    *(a7 + 16) = v43;
    *(a7 + 32) = *&t2.tx;
  }

  v44 = a3;
  if (!a2)
  {
    if (a3 == 90 || a3 == 270)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  AVCapturePlatformMountsCamerasInLandscapeOrientation();
  if (a3 == 270)
  {
    CGAffineTransformMakeRotation(&t2, v44 * 3.14159265 / 180.0);
    v54 = *(a7 + 16);
    *&t1.a = *a7;
    *&t1.c = v54;
    *&t1.tx = *(a7 + 32);
    CGAffineTransformConcat(&v85, &t1, &t2);
    v55 = *&v85.c;
    *a7 = *&v85.a;
    *(a7 + 16) = v55;
    *(a7 + 32) = *&v85.tx;
    v48 = 0.0;
    v47 = a10;
    goto LABEL_21;
  }

  if (a3 == 180)
  {
    CGAffineTransformMakeRotation(&t2, v44 * 3.14159265 / 180.0);
    v49 = *(a7 + 16);
    *&t1.a = *a7;
    *&t1.c = v49;
    *&t1.tx = *(a7 + 32);
    CGAffineTransformConcat(&v85, &t1, &t2);
    v50 = *&v85.c;
    *a7 = *&v85.a;
    *(a7 + 16) = v50;
    *(a7 + 32) = *&v85.tx;
    CGAffineTransformMakeTranslation(&t2, a10, a11);
    v51 = *(a7 + 16);
    *&t1.a = *a7;
    *&t1.c = v51;
    *&t1.tx = *(a7 + 32);
    CGAffineTransformConcat(&v85, &t1, &t2);
    v52 = *&v85.c;
    *a7 = *&v85.a;
    *(a7 + 16) = v52;
    *(a7 + 32) = *&v85.tx;
    goto LABEL_19;
  }

  if (a3 != 90)
  {
LABEL_19:
    v53 = a10;
    goto LABEL_23;
  }

  CGAffineTransformMakeRotation(&t2, v44 * 3.14159265 / 180.0);
  v45 = *(a7 + 16);
  *&t1.a = *a7;
  *&t1.c = v45;
  *&t1.tx = *(a7 + 32);
  CGAffineTransformConcat(&v85, &t1, &t2);
  v46 = *&v85.c;
  *a7 = *&v85.a;
  *(a7 + 16) = v46;
  *(a7 + 32) = *&v85.tx;
  v47 = 0.0;
  v48 = a11;
LABEL_21:
  CGAffineTransformMakeTranslation(&t2, v48, v47);
  v56 = *(a7 + 16);
  *&t1.a = *a7;
  *&t1.c = v56;
  *&t1.tx = *(a7 + 32);
  CGAffineTransformConcat(&v85, &t1, &t2);
  v57 = *&v85.c;
  *a7 = *&v85.a;
  *(a7 + 16) = v57;
  *(a7 + 32) = *&v85.tx;
LABEL_22:
  v53 = a11;
  a11 = a10;
LABEL_23:
  v58 = 0;
  if (a5)
  {
    v59 = a12;
  }

  else
  {
    v59 = 0.0;
  }

  if (a5)
  {
    v60 = a13;
  }

  else
  {
    v60 = 0.0;
  }

  if ((a5 & 1) == 0)
  {
    a14 = v53;
    a15 = a11;
  }

  v61 = 0;
  v62 = v53;
  v63 = a11;
  v64 = a14;
  v65 = a15;
  result = CGRectEqualToRect(*&v58, *&v59);
  if ((result & 1) == 0)
  {
    if ([a6 isEqualToString:*MEMORY[0x1E69874E0]])
    {
      v67 = a14 / v53;
      v68 = a15 / a11;
    }

    else
    {
      v69 = [a6 isEqualToString:*MEMORY[0x1E69874F0]];
      v70 = fmin(a14 / v53, a15 / a11);
      v68 = fmax(a14 / v53, a15 / a11);
      if (v69)
      {
        v67 = v68;
      }

      else
      {
        v67 = v70;
      }

      if (!v69)
      {
        v68 = v70;
      }
    }

    memset(&v85, 0, sizeof(v85));
    CGAffineTransformMakeScale(&v85, v67, v68);
    v71 = *(a7 + 16);
    *&t1.a = *a7;
    *&t1.c = v71;
    *&t1.tx = *(a7 + 32);
    v82 = v85;
    CGAffineTransformConcat(&t2, &t1, &v82);
    v72 = *&t2.c;
    *a7 = *&t2.a;
    *(a7 + 16) = v72;
    v73 = *&v85.a;
    *(a7 + 32) = *&t2.tx;
    *&t2.a = v73;
    *&t2.c = *&v85.c;
    *&t2.tx = *&v85.tx;
    *&v73 = 0;
    *&v72 = 0;
    v74 = v53;
    v75 = a11;
    v87 = CGRectApplyAffineTransform(*(&v72 - 8), &t2);
    CGAffineTransformMakeTranslation(&t1, (a14 - v87.size.width) * 0.5, (a15 - v87.size.height) * 0.5);
    v76 = *(a7 + 16);
    *&v82.a = *a7;
    *&v82.c = v76;
    *&v82.tx = *(a7 + 32);
    result = CGAffineTransformConcat(&t2, &v82, &t1);
    v77 = *&t2.c;
    *a7 = *&t2.a;
    *(a7 + 16) = v77;
    *(a7 + 32) = *&t2.tx;
  }

  if (a16 && a17)
  {
    CGAffineTransformMakeScale(&t2, -1.0, 1.0);
    v78 = *(a7 + 16);
    *&t1.a = *a7;
    *&t1.c = v78;
    *&t1.tx = *(a7 + 32);
    CGAffineTransformConcat(&v85, &t1, &t2);
    v79 = *&v85.c;
    *a7 = *&v85.a;
    *(a7 + 16) = v79;
    *(a7 + 32) = *&v85.tx;
    CGAffineTransformMakeTranslation(&t2, a14, 0.0);
    v80 = *(a7 + 16);
    *&t1.a = *a7;
    *&t1.c = v80;
    *&t1.tx = *(a7 + 32);
    result = CGAffineTransformConcat(&v85, &t1, &t2);
    v81 = *&v85.c;
    *a7 = *&v85.a;
    *(a7 + 16) = v81;
    *(a7 + 32) = *&v85.tx;
  }

  if (a4)
  {
    *a4 = v44;
  }

  return result;
}

uint64_t __AVCaptureInitializeShutterSoundSuppressedByAirpodStemClickStorageOnce_block_invoke()
{
  sShutterSoundSuppressedByAirpodStemClick = 0;
  result = FigDispatchQueueCreateWithPriority();
  qword_1EB3851B8 = result;
  return result;
}

unint64_t AVCaptureConvertDimensionsForAspectRatio(unint64_t a1, void *a2, float a3)
{
  v4 = HIDWORD(a1);
  if (!a2)
  {
    goto LABEL_15;
  }

  if (a1 <= SHIDWORD(a1))
  {
    v6 = HIDWORD(a1);
  }

  else
  {
    v6 = a1;
  }

  if ([a2 isEqualToString:@"AVCaptureAspectRatio4x3"])
  {
    v7 = 0.75;
  }

  else
  {
    if ([a2 isEqualToString:@"AVCaptureAspectRatio3x4"])
    {
      v7 = 1.0;
      v8 = 0.75;
      goto LABEL_14;
    }

    if (([a2 isEqualToString:@"AVCaptureAspectRatio16x9"] & 1) == 0)
    {
      v9 = [a2 isEqualToString:@"AVCaptureAspectRatio9x16"];
      v7 = 1.0;
      v8 = 0.5625;
      if (!v9)
      {
        v8 = 1.0;
      }

      goto LABEL_14;
    }

    v7 = 0.5625;
  }

  v8 = 1.0;
LABEL_14:
  v10 = round(v8 * v6 * 0.5);
  LODWORD(a1) = (v10 + v10);
  v11 = round(v7 * v6 * 0.5);
  LODWORD(v4) = (v11 + v11);
LABEL_15:
  v12 = a3 % 180;
  v13 = v12 == 0;
  if (v12)
  {
    v14 = v4;
  }

  else
  {
    v14 = a1;
  }

  if (v13)
  {
    LODWORD(a1) = v4;
  }

  return a1 | (v14 << 32);
}

uint64_t AVCaptureAudiomxdSupportEnabled()
{
  if (AVCaptureAudiomxdSupportEnabled_sOnceToken != -1)
  {
    AVCaptureAudiomxdSupportEnabled_cold_1();
  }

  return AVCaptureAudiomxdSupportEnabled_sCaptureAudiomxdSupportEnabled;
}

uint64_t __AVCaptureAudiomxdSupportEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  AVCaptureAudiomxdSupportEnabled_sCaptureAudiomxdSupportEnabled = result;
  return result;
}

uint64_t AVCaptureSessionIsDeferredStartSupported()
{
  if (AVCaptureSessionIsDeferredStartSupported_onceToken != -1)
  {
    AVCaptureSessionIsDeferredStartSupported_cold_1();
  }

  return AVCaptureSessionIsDeferredStartSupported_deferredStartSupported;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return [v27 countByEnumeratingWithState:&a27 objects:&a11 count:16];
}

__n128 OUTLINED_FUNCTION_1_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, uint64_t a14)
{
  result = a13;
  *(v14 - 48) = a13;
  *(v14 - 32) = a14;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  return [v41 countByEnumeratingWithState:a3 objects:&a41 count:16];
}

void *ps_formatFourCCForSettingsDictionary(void *result)
{
  if (result)
  {
    v1 = result;
    result = [objc_msgSend(result objectForKeyedSubscript:{*MEMORY[0x1E6966130]), "intValue"}];
    if (!result)
    {
      [v1 objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];

      return AVOSTypeForString();
    }
  }

  return result;
}

void sub_1A9193EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A919533C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *avcfvd_deviceTypesFromAVCaptureDevices(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(*(*(&v9 + 1) + 8 * v6++), "figCaptureSourceDeviceType"))}];
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t vpl_rectToValue(double a1, double a2, double a3, double a4)
{
  *v5 = a1;
  *&v5[1] = a2;
  *&v5[2] = a3;
  *&v5[3] = a4;
  return [MEMORY[0x1E696B098] valueWithBytes:v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
}

BOOL po_photoSettingsAreValid(void *a1, uint64_t a2, void *a3, void *a4, __CFString **a5)
{
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  if (!a3)
  {
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_277:
    v22 = @"Nil settings";
    goto LABEL_274;
  }

  if (!a1)
  {
    goto LABEL_277;
  }

  if (a3[2])
  {
    v84 = a3[2];
    if ([a1 uniqueID] <= *(v84 + 16))
    {
      v22 = @"Settings may not be re-used";
      goto LABEL_274;
    }

    v7 = *(v84 + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __po_photoSettingsAreValid_block_invoke;
    block[3] = &unk_1E78760D8;
    block[4] = v84;
    block[5] = a1;
    block[6] = &v108;
    block[7] = &v104;
    block[8] = &v100;
    block[9] = &v96;
    dispatch_sync(v7, block);
    v8 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v8 = 0;
  v84 = 0;
LABEL_8:
  v9 = [a1 processedFileType];
  v10 = v8 ^ 1;
  if (!v9)
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0 && ![*(v84 + 48) containsObject:{objc_msgSend(a1, "processedFileType")}])
  {
    v22 = @"settings.processedFileType must be present in self.availablePhotoFileTypes";
    goto LABEL_274;
  }

  v11 = [a1 rawFileType];
  v12 = v8 ^ 1;
  if (!v11)
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0 && ![*(v84 + 56) containsObject:{objc_msgSend(a1, "rawFileType")}])
  {
    v22 = @"settings.rawFileType must be present in self.availableRawPhotoFileTypes";
    goto LABEL_274;
  }

  if ([a1 rawPhotoPixelFormatType])
  {
    if (v8)
    {
      if (![*(v84 + 40) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a1, "rawPhotoPixelFormatType"))}])
      {
        v22 = @"settings.rawPhotoPixelFormatType must be present in self.availableRawPhotoPixelFormatTypes";
        goto LABEL_274;
      }

      if ([a1 rawFileType])
      {
        v13 = [a3 supportedRawPhotoPixelFormatTypesForFileType:{objc_msgSend(a1, "rawFileType")}];
        if (![v13 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a1, "rawPhotoPixelFormatType"))}])
        {
          v22 = @"settings.rawPhotoPixelFormatType must be present in [self supportedRawPhotoPixelFormatTypesForFileType:settings.rawFileType]";
          goto LABEL_274;
        }
      }

      if ([a1 isConstantColorEnabled])
      {
        v22 = @"When capturing a raw photo, settings.constantColorEnabled must be set to NO";
        goto LABEL_274;
      }
    }

    if (+[AVCapturePhotoOutput isBayerRAWPixelFormat:](AVCapturePhotoOutput, "isBayerRAWPixelFormat:", [a1 rawPhotoPixelFormatType]))
    {
      if ([a1 HDRMode])
      {
        v22 = @"When specifying Bayer raw capture, settings.HDRMode must be set to AVCaptureHDRModeOff";
        goto LABEL_274;
      }

      if ([a1 photoQualityPrioritization] != 1)
      {
        v22 = @"When specifying Bayer raw capture, settings.photoQualityPrioritization must be set to AVCapturePhotoQualityPrioritizationSpeed";
        goto LABEL_274;
      }

      if ([a1 digitalFlashMode])
      {
        v22 = @"When specifying Bayer raw capture, settings.digitalFlashMode must be set to AVCaptureDigitalFlashModeOff";
        goto LABEL_274;
      }

      if (a4)
      {
        [objc_msgSend(a4 "sourceDevice")];
        if (v14 != 1.0)
        {
          v22 = @"When specifying Bayer raw capture, the videoZoomFactor of the video device must be set to 1.0";
          goto LABEL_274;
        }

        [a4 videoScaleAndCropFactor];
        if (v15 != 1.0)
        {
          v22 = @"When specifying Bayer raw capture, the videoScaleAndCropFactor of the photo output's video connection must be set to 1.0";
          goto LABEL_274;
        }
      }

      if ([a1 isAutoVirtualDeviceFusionEnabled])
      {
        v22 = @"When specifying Bayer raw capture, settings.autoVirtualDeviceFusionEnabled must be set to NO";
        goto LABEL_274;
      }
    }

    if (a2 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v22 = @"If you specify a non-nil raw pixel format type in your settings, your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: or the deprecated captureOutput:didFinishProcessingRawPhotoSampleBuffer:previewPhotoSampleBuffer:resolvedSettings:bracketSettings:error:";
      goto LABEL_274;
    }
  }

  if ([a1 format])
  {
    v16 = [a1 format];
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6966130]];
    v18 = [a1 format];
    v19 = [v18 objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
    v20 = v8 ^ 1;
    if (v17)
    {
      v21 = v8 ^ 1;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v23 = v19;
      if (!v19)
      {
        v20 = 1;
      }

      if ((v20 & 1) == 0)
      {
        if (![*(v84 + 32) containsObject:v19])
        {
          v22 = @"The AVVideoCodecKey format must be present in self.availablePhotoCodecTypes";
          goto LABEL_274;
        }

        if ([a1 processedFileType] && !objc_msgSend(objc_msgSend(a3, "supportedPhotoCodecTypesForFileType:", objc_msgSend(a1, "processedFileType")), "containsObject:", v23))
        {
          v22 = @"The AVVideoCodecKey format must be present in [self supportedPhotoCodecTypesForFileType:settings.processedFileType]";
          goto LABEL_274;
        }
      }
    }

    else
    {
      if (([*(v84 + 24) containsObject:v17] & 1) == 0)
      {
        v22 = @"The CVPixelBufferPixelFormatTypeKey format must be present in self.availablePhotoPixelFormatTypes";
        goto LABEL_274;
      }

      if ([a1 processedFileType] && (objc_msgSend(objc_msgSend(a3, "supportedPhotoPixelFormatTypesForFileType:", objc_msgSend(a1, "processedFileType")), "containsObject:", v17) & 1) == 0)
      {
        v22 = @"The CVPixelBufferFormatTypeKey format must be present in [self supportedPhotoPixelFormatTypesForFileType:settings.processedFileType]";
        goto LABEL_274;
      }
    }

    if (a2)
    {
      v24 = [a1 processedFileType];
      if ([v24 isEqual:*MEMORY[0x1E69874A0]] & 1) != 0 || (v25 = objc_msgSend(a1, "processedFileType"), (objc_msgSend(v25, "isEqual:", *MEMORY[0x1E69874A8])) || (v26 = objc_msgSend(a1, "processedFileType"), (objc_msgSend(v26, "isEqual:", *MEMORY[0x1E6987490])))
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v22 = @"In order to capture HEIF/DICOM containerized photos, your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error:";
          goto LABEL_274;
        }
      }

      if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v22 = @"If you specify a non-nil format dictionary in your settings, your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error:, or the deprecated captureOutput:didFinishProcessingPhotoSampleBuffer:previewPhotoSampleBuffer:resolvedSettings:bracketSettings:error:";
        goto LABEL_274;
      }
    }
  }

  if (v8 && *(v105 + 24) != 1)
  {
    v22 = @"HDRMode must be set to a value present in the supportedHDRModes array";
    goto LABEL_274;
  }

  if ((v8 & [a1 photoQualityPrioritizationIsSetByClient]) == 1)
  {
    v27 = *(v84 + 80);
    if (v27 < [a1 photoQualityPrioritization])
    {
      v22 = @"settings.photoQualityPrioritization must not be higher than self.maxPhotoQualityPrioritization";
      goto LABEL_274;
    }
  }

  if ([a1 isEV0PhotoDeliveryEnabled])
  {
    if (v8 && *(v101 + 24) != 1)
    {
      v22 = @"EV0PhotoDeliveryEnabled must not be set to YES when EV0PhotoDeliverySupported is NO";
      goto LABEL_274;
    }

    if (![a1 HDRMode])
    {
      v22 = @"EV0PhotoDeliveryEnabled must be set to NO if HDRMode is AVCaptureHDRModeOff";
      goto LABEL_274;
    }

    if (a2 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v22 = @"If you specify EV0PhotoDeliveryEnabled=YES in your settings, your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error:";
      goto LABEL_274;
    }
  }

  if (v8 && *(v109 + 24) != 1)
  {
    v22 = @"flashMode must be set to a value present in the supportedFlashModes array";
    goto LABEL_274;
  }

  if ([a1 digitalFlashMode])
  {
    if (v8)
    {
      if (*(v84 + 128) != 1)
      {
        v22 = @"digitalFlashMode must be AVCaptureDigitalFlashModeOff if self.digitalFlashCaptureEnabled is NO";
        goto LABEL_274;
      }

      if (*(v97 + 24) != 1)
      {
        v22 = @"digitalFlashMode must be set to a value present in the supportedDigitalFlashModes array";
        goto LABEL_274;
      }
    }

    if ([a1 digitalFlashMode])
    {
      if ([a1 flashMode] == 1)
      {
        v22 = @"Flash mode must not be on when Digital Flash mode is min or max";
        goto LABEL_274;
      }

      if ([a1 HDRMode] == 1)
      {
        v22 = @"HDR mode must not be on when Digital Flash mode is min or max";
        goto LABEL_274;
      }
    }

    if ([a1 livePhotoMovieFileURL])
    {
      v22 = @"digitalFlashMode must be AVCaptureDigitalFlashModeOff when livePhotoMovieFileURL is non-nil";
      goto LABEL_274;
    }
  }

  if ([a1 livePhotoMovieFileURL])
  {
    if (v8 && *(v84 + 146) != 1)
    {
      v22 = @"livePhotoMovieFileURL must be nil if self.livePhotoCaptureEnabled is NO";
      goto LABEL_274;
    }

    if (![objc_msgSend(a1 "livePhotoMovieFileURL")])
    {
      v22 = @"livePhotoMovieFileURL must be a file url";
      goto LABEL_274;
    }

    if (a2 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v22 = @"If you specify a non-nil livePhotoMovieFileURL, your delegate must respond to the selector captureOutput:didFinishProcessingLivePhotoToMovieFileAtURL:duration:photoDisplayTime:resolvedSettings:error:";
      goto LABEL_274;
    }

    if ([a1 livePhotoMovieFileURLForOriginalPhoto])
    {
      if ([objc_msgSend(a1 "livePhotoMovieFileURL")])
      {
        v22 = @"livePhotoMovieFileURLForOriginalPhoto may not be the same as livePhotoMovieFileURL";
        goto LABEL_274;
      }

      if (![objc_msgSend(a1 "livePhotoMovieFileURLForOriginalPhoto")])
      {
        v22 = @"livePhotoMovieFileURLForOriginalPhoto must be a file url";
        goto LABEL_274;
      }
    }

    if (v8)
    {
      if (*(v84 + 216))
      {
        v22 = @"Live Photos may not be captured while livePhotoCaptureSuspended is YES";
        goto LABEL_274;
      }

      if (([*(v84 + 152) containsObject:{objc_msgSend(a1, "livePhotoVideoCodecType")}] & 1) == 0)
      {
        v22 = @"livePhotoVideoCodecType must be present in self.availableLivePhotoVideoCodecTypes";
        goto LABEL_274;
      }
    }
  }

  if ([a1 livePhotoMovieFileURLForOriginalPhoto] && !objc_msgSend(a1, "livePhotoMovieFileURL"))
  {
    v22 = @"If you specify a non-nil livePhotoMovieFileURLForOriginalPhoto, you must also provide a non-nil livePhotoMovieFileURL";
    goto LABEL_274;
  }

  if ([a1 isAutoSpatialOverCaptureEnabled])
  {
    if (a4 && ![objc_msgSend(a4 "sourceDevice")])
    {
      v22 = @"If you set autoSpatialOverCaptureEnabled to YES, the source device's spatialOverCaptureEnabled property must also be set to YES";
      goto LABEL_274;
    }

    v28 = [a1 livePhotoMovieFileURL];
    if ((v28 != 0) != ([a1 spatialOverCaptureLivePhotoMovieFileURL] != 0))
    {
      v22 = @"If you set autoSpatialOverCaptureEnabled to YES and specify a non-nil livePhotoMovieFileURL, you must also specify a non-nil spatialOverCaptureLivePhotoMovieFileURL";
      goto LABEL_274;
    }

    v29 = [a1 livePhotoMovieFileURLForOriginalPhoto];
    if ((v29 != 0) != ([a1 spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto] != 0))
    {
      v22 = @"If you set autoSpatialOverCaptureEnabled to YES and specify a non-nil livePhotoMovieFileURLForOriginalPhoto, you must also specify a non-nil spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto";
      goto LABEL_274;
    }
  }

  v30 = [a1 HEICSFileURL];
  if (a2 && v30 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v22 = @"If you specify a non-nil HEICSFileURL, your delegate must respond to the selector captureOutput:didFinishProcessingPhotoFileAtURL:resolvedSettings:error:";
    goto LABEL_274;
  }

  v31 = [a1 videoFileURL];
  if (a2 && v31 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v22 = @"If you specify a non-nil videoFileURL, your delegate must respond to the selector captureOutput:didFinishProcessingVideoFileAtURL:resolvedSettings:previewPixelBuffer:recordedDuration:error:";
    goto LABEL_274;
  }

  if (v8)
  {
    if ([a1 isHighResolutionPhotoEnabled] && *(v84 + 130) != 1)
    {
      v22 = @"settings.highResolutionPhotoEnabled may not be YES unless self.highResolutionCaptureEnabled is YES";
      goto LABEL_274;
    }

    if ([a1 maxPhotoDimensions] || objc_msgSend(a1, "maxPhotoDimensions") >> 32)
    {
      if (([objc_msgSend(objc_msgSend(objc_msgSend(a3 connectionWithMediaType:{*MEMORY[0x1E6987608]), "sourceDevice"), "activeFormat"), "validateMaxPhotoDimensions:privateDimensionsEnabled:", objc_msgSend(a1, "maxPhotoDimensions"), objc_msgSend(a3, "arePrivatePhotoDimensionsEnabled")}] & 1) == 0)
      {
        v22 = @"If you specify a maxPhotoDimensions, it must match one of the supportedMaxPhotoDimensions of the video devices's active format";
        goto LABEL_274;
      }

      if (*(v84 + 512) < [a1 maxPhotoDimensions] || *(v84 + 516) < (objc_msgSend(a1, "maxPhotoDimensions") >> 32))
      {
        v22 = @"If you specify a non-nil maxPhotoDimensions, it must not be larger than the maxPhotoDimensions set on the AVCapturePhotoOutput";
        goto LABEL_274;
      }
    }
  }

  if ([a1 livePhotoMovieFileURL] && (objc_msgSend(a1, "isSquareCropEnabled") & 1) != 0)
  {
    v22 = @"Square crop must be NO when livePhotoMovieFileURL is non-nil";
    goto LABEL_274;
  }

  if ([a1 isSquareCropEnabled] && objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a3, "connectionWithMediaType:", *MEMORY[0x1E6987608]), "sourceDevice"), "activeFormat"), "supportedDynamicAspectRatios"), "count"))
  {
    v22 = @"Square crop must be NO when the active format supports dynamic aspect ratios";
    goto LABEL_274;
  }

  if ([a1 flashMode] == 1 && objc_msgSend(a1, "HDRMode") == 1)
  {
    v22 = @"HDR mode must not be on when flash mode is on";
    goto LABEL_274;
  }

  if ([a1 shutterSound] != 1108 && (AVCaptureClientHasEntitlement(AVCaptureEntitlementShutterSoundManipulation) & 1) == 0)
  {
    v32 = [objc_msgSend(a3 "session")];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v33 = [v32 countByEnumeratingWithState:&v91 objects:v90 count:16];
    if (!v33)
    {
LABEL_128:
      v22 = @"You are not authorized to use custom shutter sounds";
      goto LABEL_274;
    }

    v34 = *v92;
LABEL_120:
    v35 = 0;
    while (1)
    {
      if (*v92 != v34)
      {
        objc_enumerationMutation(v32);
      }

      v36 = *(*(&v91 + 1) + 8 * v35);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(objc_msgSend(v36 "device")] && objc_msgSend(objc_msgSend(v36, "device"), "timeOfFlightProjectorMode") == 6)
      {
        break;
      }

      if (v33 == ++v35)
      {
        v33 = [v32 countByEnumeratingWithState:&v91 objects:v90 count:16];
        if (!v33)
        {
          goto LABEL_128;
        }

        goto LABEL_120;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_128;
    }
  }

  if ([a1 isShutterSoundSuppressionEnabled] && (sIsForcedShutterSoundRegion & 1) != 0)
  {
    v22 = @"settings.shutterSoundSuppressionEnabled may not be set to YES unless self.shutterSoundSuppressionSupported is YES";
    goto LABEL_274;
  }

  if ((v8 & [a1 isProcessedPhotoZoomWithoutUpscalingEnabled]) == 1 && *(v84 + 434) != 1)
  {
    v22 = @"settings.processedPhotoZoomWithoutUpscalingEnabled may not be set to YES unless self.processedPhotoZoomWithoutUpscalingSupported is YES";
    goto LABEL_274;
  }

  if ((v8 & [a1 isAutoContentAwareDistortionCorrectionEnabled]) == 1 && *(v84 + 438) != 1)
  {
    v22 = @"settings.autoContentAwareDistortionCorrectionEnabled may not be set to YES unless self.contentAwareDistortionCorrectionEnabled is YES";
    goto LABEL_274;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_182;
  }

  if (v84)
  {
    if ([objc_msgSend(a1 "bracketedSettings")] > *(v84 + 136))
    {
      v22 = @"bracketedSettings array exceeds -maxBracketedCapturePhotoCount";
      goto LABEL_274;
    }

    if ([a1 isLensStabilizationEnabled] && *(v84 + 144) != 1)
    {
      v22 = @"settings.lensStabilizationEnabled may only be set to YES if self.lensStabilizationDuringBracketedCaptureSupported is YES";
      goto LABEL_274;
    }
  }

  if (!a4)
  {
    goto LABEL_182;
  }

  v37 = [a4 sourceDevice];
  v38 = [v37 activeFormat];
  v39 = [a1 bracketedSettings];
  [v39 objectAtIndexedSubscript:0];
  v40 = objc_opt_class();
  if (v40 != objc_opt_class())
  {
    if (v40 == objc_opt_class())
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v41 = [v39 countByEnumeratingWithState:&v113 objects:v112 count:16];
      if (v41)
      {
        v42 = *v114;
        while (2)
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v114 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v113 + 1) + 8 * i);
            [v44 exposureTargetBias];
            if (v45 != 3.4028e38)
            {
              [v44 exposureTargetBias];
              v47 = v46;
              [v37 minExposureTargetBias];
              if (v47 < v48)
              {
                v80 = @"%@ contains an out of range exposure target bias. Use AVCaptureDevice -minExposureTargetBias";
                goto LABEL_273;
              }

              [v44 exposureTargetBias];
              v50 = v49;
              [v37 maxExposureTargetBias];
              if (v50 > v51)
              {
                v80 = @"%@ contains an out of range exposure target bias. Use AVCaptureDevice -maxExposureTargetBias";
                goto LABEL_273;
              }
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v113 objects:v112 count:16];
          if (v41)
          {
            continue;
          }

          break;
        }
      }
    }

    goto LABEL_182;
  }

  if (![v37 isExposureModeSupported:3])
  {
    v22 = @"Source device does not support manual exposure bracketed capture. Use AVCaptureDevice -isExposureModeSupported: with AVCaptureExposureModeCustom";
    goto LABEL_274;
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v52 = [v39 countByEnumeratingWithState:&v120 objects:v119 count:16];
  if (!v52)
  {
    goto LABEL_182;
  }

  v53 = *v121;
  while (2)
  {
    for (j = 0; j != v52; ++j)
    {
      if (*v121 != v53)
      {
        objc_enumerationMutation(v39);
      }

      v44 = *(*(&v120 + 1) + 8 * j);
      [v44 ISO];
      if (v55 != 3.4028e38)
      {
        [v44 ISO];
        v57 = v56;
        [v38 minISO];
        if (v57 < v58)
        {
          v80 = @"%@ contains an out of range ISO value. Use AVCaptureDeviceFormat -minISO";
          goto LABEL_273;
        }

        [v44 ISO];
        v60 = v59;
        [v38 maxISO];
        if (v60 > v61)
        {
          v80 = @"%@ contains an out of range ISO value. Use AVCaptureDeviceFormat -maxISO";
          goto LABEL_273;
        }
      }

      if (v44)
      {
        [v44 exposureDuration];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      memset(&time2, 0, sizeof(time2));
      if (CMTimeCompare(&time1, &time2))
      {
        if (v44)
        {
          [v44 exposureDuration];
          if (v38)
          {
            goto LABEL_170;
          }

LABEL_172:
          memset(&time2, 0, sizeof(time2));
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
          if (!v38)
          {
            goto LABEL_172;
          }

LABEL_170:
          [v38 minExposureDuration];
        }

        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v80 = @"%@ contains an out of range exposure duration. Use AVCaptureDeviceFormat -minExposureDuration";
        }

        else
        {
          if (v44)
          {
            [v44 exposureDuration];
            if (v38)
            {
              goto LABEL_176;
            }

LABEL_178:
            memset(&time2, 0, sizeof(time2));
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
            if (!v38)
            {
              goto LABEL_178;
            }

LABEL_176:
            [v38 maxExposureDuration];
          }

          if (CMTimeCompare(&time1, &time2) <= 0)
          {
            continue;
          }

          v80 = @"%@ contains an out of range exposure duration. Use AVCaptureDeviceFormat -maxExposureDuration";
        }

LABEL_273:
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:v80, v44];
        goto LABEL_274;
      }
    }

    v52 = [v39 countByEnumeratingWithState:&v120 objects:v119 count:16];
    if (v52)
    {
      continue;
    }

    break;
  }

LABEL_182:
  if ([a1 isDepthDataDeliveryEnabled])
  {
    if (v8 && *(v84 + 219) != 1)
    {
      v22 = @"settings.depthDataDeliveryEnabled must be NO if self.isDepthDataDeliveryEnabled is NO";
    }

    else
    {
      if (!a2 || (objc_opt_respondsToSelector() & 1) != 0)
      {
        goto LABEL_187;
      }

      v22 = @"Your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: if you set depthDataDeliveryEnabled to YES";
    }

LABEL_274:
    if (a5 && v22)
    {
      *a5 = v22;
    }
  }

  else
  {
LABEL_187:
    if ([a1 isPortraitEffectsMatteDeliveryEnabled])
    {
      if (v8)
      {
        if (*(v84 + 221) != 1)
        {
          v22 = @"settings.portraitEffectsMatteDeliveryEnabled must be NO if self.isPortraitEffectsMatteDeliveryEnabled is NO";
          goto LABEL_274;
        }

        if (*(v84 + 219) != 1)
        {
          v22 = @"settings.depthDataDeliveryEnabled must be YES if settings.portraitEffectsMatteDeliveryEnabled is YES";
          goto LABEL_274;
        }
      }

      if ([a1 embedsPortraitEffectsMatteInPhoto] && !objc_msgSend(a1, "embedsDepthDataInPhoto"))
      {
        v22 = @"If settings.embedsPortraitEffectsMatteInPhoto is set to YES, settings.embedsDepthDataInPhoto must also be set to YES.";
        goto LABEL_274;
      }

      if (a2 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v22 = @"Your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: if you set portraitEffectsMatteDeliveryEnabled to YES";
        goto LABEL_274;
      }
    }

    if ([objc_msgSend(a1 "enabledSemanticSegmentationMatteTypes")])
    {
      if (v8)
      {
        v62 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(a1, "enabledSemanticSegmentationMatteTypes")}];
        [v62 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", *(v84 + 232))}];
        if ([v62 count])
        {
          v22 = @"You may not set enabledSemanticSegmentationMatteTypes in your AVCapturePhotoSettings that are not present in your AVCapturePhotoOutput.enabledSemanticSegmentationMatteTypes";
          goto LABEL_274;
        }
      }

      if (a2 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v22 = @"Your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: if you set enabledSemanticSegmentationMatteTypes";
        goto LABEL_274;
      }
    }

    v63 = [objc_msgSend(a1 "photoFilters")];
    v64 = v8 ^ 1;
    if (!v63)
    {
      v64 = 1;
    }

    if ((v64 & 1) == 0 && *(v84 + 240) != 1)
    {
      v22 = @"settings.photoFilters must be empty if self.isFilterRenderingEnabled is NO";
      goto LABEL_274;
    }

    v65 = [objc_msgSend(a1 "adjustedPhotoFilters")];
    v66 = v8 ^ 1;
    if (!v65)
    {
      v66 = 1;
    }

    if ((v66 & 1) == 0 && *(v84 + 240) != 1)
    {
      v22 = @"settings.adjustedPhotoFilters must be empty if self.isFilterRenderingEnabled is NO";
      goto LABEL_274;
    }

    if ([objc_msgSend(a1 "virtualDeviceConstituentPhotoDeliveryEnabledDevices")])
    {
      if ([objc_msgSend(a1 "virtualDeviceConstituentPhotoDeliveryEnabledDevices")] < 2)
      {
        v22 = @"settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices must have 2 or more AVCaptureDevices";
        goto LABEL_274;
      }

      if (v8 && *(v84 + 92) != 1)
      {
        v22 = @"settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices may not be set to a non-empty array unless self.virtualDeviceConstituentPhotoDeliveryEnabled is YES";
        goto LABEL_274;
      }

      if (a4)
      {
        if (![objc_msgSend(a4 "sourceDevice")])
        {
          v22 = @"settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices may not be set to a non-empty array unless your photo output is not connected to a virtual device";
          goto LABEL_274;
        }

        v67 = [objc_msgSend(a4 "sourceDevice")];
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v68 = [a1 virtualDeviceConstituentPhotoDeliveryEnabledDevices];
        v69 = [v68 countByEnumeratingWithState:&v86 objects:v85 count:16];
        if (v69)
        {
          v70 = *v87;
          v22 = @"settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices may only include devices present in the source virtual device's constituentDevices array";
LABEL_216:
          v71 = 0;
          while (1)
          {
            if (*v87 != v70)
            {
              objc_enumerationMutation(v68);
            }

            if (([v67 containsObject:*(*(&v86 + 1) + 8 * v71)] & 1) == 0)
            {
              goto LABEL_274;
            }

            if (v69 == ++v71)
            {
              v69 = [v68 countByEnumeratingWithState:&v86 objects:v85 count:16];
              if (v69)
              {
                goto LABEL_216;
              }

              break;
            }
          }
        }
      }

      if (AVCIFilterArrayContainsPortraitFilters([a1 adjustedPhotoFilters]))
      {
        v22 = @"settings.adjustedPhotoFilters must not contain any portrait filters if settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices is a non-empty array";
        goto LABEL_274;
      }

      if ([a1 isConstantColorEnabled])
      {
        v22 = @"settings.constantColorEnabled must be NO if settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices is a non-empty array";
        goto LABEL_274;
      }

      if (a2 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v22 = @"Your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: if you set settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices to a non-empty array";
        goto LABEL_274;
      }
    }

    if ([a1 isDualCameraDualPhotoDeliveryEnabled])
    {
      if (v8 && (*(v84 + 94) & 1) == 0 && *(v84 + 92) != 1)
      {
        v22 = @"settings.dualCameraDualPhotoDeliveryEnabled may not be set to YES unless self.dualCameraDualPhotoDeliveryEnabled is YES";
        goto LABEL_274;
      }

      if (AVCIFilterArrayContainsPortraitFilters([a1 adjustedPhotoFilters]))
      {
        v22 = @"settings.adjustedPhotoFilters must not contain any portrait filters if settings.dualCameraDualPhotoDeliveryEnabled is YES";
        goto LABEL_274;
      }

      if (a2 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v22 = @"Your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: if you set dualCameraDualPhotoDeliveryEnabled to YES";
        goto LABEL_274;
      }
    }

    if ([a1 isCameraCalibrationDataDeliveryEnabled])
    {
      if (v8 && ![a3 isCameraCalibrationDataDeliverySupported])
      {
        v22 = @"settings.cameraCalibrationDataDeliveryEnabled may not be set to YES unless self.cameraCalibrationDataDeliverySupported is YES";
        goto LABEL_274;
      }

      if ([objc_msgSend(a1 "virtualDeviceConstituentPhotoDeliveryEnabledDevices")] < 2)
      {
        v22 = @"settings.cameraCalibrationDataDeliveryEnabled may not be set to YES unless 2 or more AVCaptureDevices are added to settings.virtualDeviceConstituentPhotoDeliveryEnabledDevices";
        goto LABEL_274;
      }

      if (a2 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v22 = @"Your delegate must respond to the selector captureOutput:didFinishProcessingPhoto:error: if you set cameraCalibrationDataDeliveryEnabled to YES";
        goto LABEL_274;
      }
    }

    v72 = [a3 isAutoDeferredPhotoDeliveryEnabled] ^ 1;
    if (!a2)
    {
      LOBYTE(v72) = 1;
    }

    if ((v72 & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v22 = @"Your delegate must respond to the selector captureOutput:didFinishCapturingDeferredPhotoProxy:error: if you set AVCapturePhotoOutput.autoDeferredPhotoDeliveryEnabled to YES";
      goto LABEL_274;
    }

    if ([a1 isConstantColorEnabled])
    {
      if (v8 && *(v84 + 537) != 1)
      {
        v22 = @"settings.isConstantColorEnabled must be NO if self.isConstantColorEnabled is NO";
        goto LABEL_274;
      }

      if ([a1 flashMode] != 1 && objc_msgSend(a1, "flashMode") != 2)
      {
        v22 = @"settings.flashMode must be AVCaptureFlashModeOn or AVCaptureFlashModeAuto if settings.isConstantColorEnabled is YES";
        goto LABEL_274;
      }
    }

    if ([a1 isConstantColorFallbackPhotoDeliveryEnabled] && !objc_msgSend(a1, "isConstantColorEnabled"))
    {
      v22 = @"settings.isConstantColorEnabled must be YES if settings.isConstantColorFallbackPhotoDeliveryEnabled is YES";
      goto LABEL_274;
    }

    if ([a1 isAutoSpatialPhotoCaptureEnabled])
    {
      if (v8)
      {
        if (*(v84 + 541) != 1)
        {
          v22 = @"settings.autoSpatialPhotoCaptureEnabled must not be set to YES when self.spatialPhotoCaptureEnabled is NO";
          goto LABEL_274;
        }

        if (*(v84 + 433) != 1)
        {
          v22 = @"settings.autoSpatialPhotoCaptureEnabled must not be set to YES when self.autoDeferredPhotoDeliveryEnabled is NO";
          goto LABEL_274;
        }
      }

      if ([a1 photoQualityPrioritization] != 3)
      {
        v22 = @"settings.autoSpatialPhotoCaptureEnabled must not be set to YES when settings.photoQualityPrioritization is not set to AVCapturePhotoQualityPrioritizationQuality";
        goto LABEL_274;
      }

      if (a4)
      {
        v73 = [a4 sourceDevice];
        if ([objc_msgSend(v73 "constituentDevices")] < 2)
        {
          v22 = @"settings.autoSpatialPhotoCaptureEnabled must not be set to YES when AVCaptureDevice.constituentDevices.count is less than 2";
          goto LABEL_274;
        }

        if ([objc_msgSend(objc_msgSend(v73 "constituentDevices")] != @"AVCaptureDeviceTypeBuiltInWideAngleCamera")
        {
          v22 = @"settings.autoSpatialPhotoCaptureEnabled must not be set to YES when AVCaptureDeviceTypeBuiltInWideAngleCamera is not second constituentDevice";
          goto LABEL_274;
        }

        [objc_msgSend(objc_msgSend(objc_msgSend(a4 "sourceDevice")];
        v75 = v74;
        [v73 videoZoomFactor];
        if (v76 != v75)
        {
          v22 = @"settings.autoSpatialPhotoCaptureEnabled must not be set to YES when videoZoomFactor is not equal to Ultra Wide camera to Wide Angle camera switch over zoom factor : videoConnection.sourceDevice.virtualDeviceSwitchOverVideoZoomFactors.firstObject";
          goto LABEL_274;
        }
      }
    }

    if ([a1 metadata])
    {
      v77 = [a1 metadata];
      v78 = [v77 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
      if (v78)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = @"kCGImagePropertyOrientation specified in settings.metadata must be a number";
          goto LABEL_274;
        }

        if (![v78 intValue] || objc_msgSend(v78, "intValue") >= 9)
        {
          v22 = @"kCGImagePropertyOrientation specified in settings.metadata must be in the valid range of CGImagePropertyOrientation enum";
          goto LABEL_274;
        }
      }
    }

    v22 = 0;
  }

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);
  return v22 == 0;
}

void sub_1A91972EC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Unwind_Resume(a1);
}

uint64_t po_requestingDefaultHighResStillForAVCapturePhotoSettings(void *a1, void *a2, unsigned int *a3)
{
  if (![a1 maxPhotoDimensions] && !(objc_msgSend(a1, "maxPhotoDimensions") >> 32))
  {
    v6 = [a2 defaultPhotoDimensionsWithHighResolutionCaptureEnabled:{objc_msgSend(a1, "isHighResolutionPhotoEnabled")}];
    v7 = HIDWORD(v6);
    v8 = v6;
    if (![a1 isHighResolutionPhotoEnabled])
    {
      v9 = 0;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = [a1 maxPhotoDimensions];
  v8 = v10;
  v7 = HIDWORD(v10);
  v11 = [a2 defaultPhotoDimensionsWithHighResolutionCaptureEnabled:1];
  v9 = 0;
  if (v8 == v11 && v7 == HIDWORD(v11))
  {
LABEL_7:
    v9 = [a2 supportsHighResolutionStillImageOutput];
  }

LABEL_8:
  [objc_msgSend(a2 "figCaptureSourceVideoFormat")];
  if (AVCaptureIsSensorMountedInPortraitOrientation(v12))
  {
    v13 = AVCaptureFlippedDimensions(v8 | (v7 << 32));
    v7 = HIDWORD(v13);
    v8 = v13;
  }

  *a3 = v8;
  a3[1] = v7;
  return v9;
}

void sub_1A9198350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91986A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return _os_log_send_and_compose_impl();
}

void OUTLINED_FUNCTION_4_1(const void *a1)
{

  _Block_object_dispose(a1, 8);
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return [v33 countByEnumeratingWithState:&a33 objects:&a17 count:16];
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return [v6 countByEnumeratingWithState:v7 - 160 objects:va count:16];
}

uint64_t OUTLINED_FUNCTION_3(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [v9 countByEnumeratingWithState:a3 objects:&a9 count:16];
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return _os_log_send_and_compose_impl();
}

void OUTLINED_FUNCTION_3_6(char a1@<W0>, NSObject *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, char a10, char a11, char a12)
{
  a8 = v13;
  a7 = v12;
  a9 = v14;
  a10 = v15;
  a11 = v16;
  a12 = a1;

  dispatch_async(a2, &a3);
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return [v2 handleDidStopRecordingNotificationForWrapper:v1 withPayload:a1 demoof:0 addMetadata:0];
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  return [v25 countByEnumeratingWithState:&a25 objects:&a9 count:16];
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return objc_opt_isKindOfClass();
}

uint64_t avcaptureVideoStabilizationModeToFigCaptureVideoStabilizationMethod(uint64_t a1, void *a2)
{
  v3 = [a2 cinematicFramingEnabled];
  if ((a1 - 1) <= 5)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void *AVSemanticSegmentationCMPhotoURNsForMatteTypes(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    v16 = *MEMORY[0x1E69917D8];
    v17 = *MEMORY[0x1E69917F8];
    v6 = *MEMORY[0x1E69917E8];
    v7 = *MEMORY[0x1E69917E0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 isEqual:{@"AVSemanticSegmentationMatteTypeHair", v16}];
        v11 = v7;
        if ((v10 & 1) == 0)
        {
          v12 = [v9 isEqual:@"AVSemanticSegmentationMatteTypeSkin"];
          v11 = v6;
          if ((v12 & 1) == 0)
          {
            v13 = [v9 isEqual:@"AVSemanticSegmentationMatteTypeTeeth"];
            v11 = v17;
            if ((v13 & 1) == 0)
            {
              v14 = [v9 isEqual:@"AVSemanticSegmentationMatteTypeGlasses"];
              v11 = v16;
              if (!v14)
              {
                continue;
              }
            }
          }
        }

        [v2 addObject:v11];
      }

      v4 = [a1 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t __avcc_frontCameraPhysicalMirroringFollowsCameraAppPreference_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  result = [v0 isEqualToString:0x1F1CBF648];
  if ((result & 1) == 0)
  {
    result = [v0 isEqualToString:0x1F1CC2068];
    if ((result & 1) == 0)
    {

      return [v0 isEqualToString:0x1F1CBF668];
    }
  }

  return result;
}

void sub_1A919B00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A919B644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A919B8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A919BF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Block_object_dispose((v27 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A919C134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __avcs_platformSupportsDeferredProcessing_block_invoke()
{
  result = MGGetBoolAnswer();
  avcs_platformSupportsDeferredProcessing_answer = result;
  return result;
}

void avcaptureFigCaptureSessionNotification(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v13 = __avcaptureFigCaptureSessionNotification_block_invoke;
  v14 = &unk_1E786EFD0;
  v15 = a2;
  v16 = a3;
  v17 = a5;
  v6 = [a2 notifiesOnMainThread];
  if ([a3 isEqualToString:*MEMORY[0x1E698FD20]])
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (v7)
  {
    v13(block);
  }

  else
  {
    Main = CFRunLoopGetMain();
    v9 = *MEMORY[0x1E695E8D0];
    v11[0] = *MEMORY[0x1E6961580];
    v11[1] = v9;
    CFRunLoopPerformBlock(Main, [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2], block);
    v10 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v10);
  }
}

void vpl_figCaptureSessionNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v12 = __vpl_figCaptureSessionNotification_block_invoke;
  v13 = &unk_1E786EFD0;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v5 = [a2 session];
  if (v5 && ![v5 notifiesOnMainThread])
  {
    v12(block);
  }

  else
  {
    Main = CFRunLoopGetMain();
    FigRunLoopMode = AVCaptureGetFigRunLoopMode();
    v8 = *MEMORY[0x1E695E8D0];
    v10[0] = FigRunLoopMode;
    v10[1] = v8;
    CFRunLoopPerformBlock(Main, [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2], block);
    v9 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v9);
  }
}

void sub_1A919CFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void di_notificationHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v8 = __di_notificationHandler_block_invoke;
  v9 = &unk_1E786EFD0;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  if ([objc_msgSend(a2 "session")])
  {
    Main = CFRunLoopGetMain();
    CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], block);
    v6 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v6);
  }

  else
  {
    v8(block);
  }
}

void socvpl_figCaptureSessionNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v11 = __socvpl_figCaptureSessionNotification_block_invoke;
  v12 = &unk_1E786EFD0;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  if ([objc_msgSend(a2 "session")])
  {
    Main = CFRunLoopGetMain();
    FigRunLoopMode = AVCaptureGetFigRunLoopMode();
    v7 = *MEMORY[0x1E695E8D0];
    v9[0] = FigRunLoopMode;
    v9[1] = v7;
    CFRunLoopPerformBlock(Main, [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2], block);
    v8 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v8);
  }

  else
  {
    v11(block);
  }
}

uint64_t po_figCaptureStillImageSettingsFileTypeForAVFileType(void *a1)
{
  if ([a1 isEqual:*MEMORY[0x1E69874B0]])
  {
    return 1785096550;
  }

  v2 = 1751476579;
  if (([a1 isEqual:*MEMORY[0x1E69874A0]] & 1) == 0)
  {
    if ([a1 isEqual:*MEMORY[0x1E69874A8]])
    {
      return 1751476582;
    }

    else if ([a1 isEqual:*MEMORY[0x1E69874C8]])
    {
      return 1953064550;
    }

    else if ([a1 isEqual:*MEMORY[0x1E6987498]])
    {
      return 1684956519;
    }

    else if ([a1 isEqual:*MEMORY[0x1E6987490]])
    {
      return 1684628333;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t AVCIFilterArrayContainsPortraitFilters(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        NSClassFromString(&cfstr_Cideptheffect.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSClassFromString(&cfstr_Ciportraiteffe_12.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        return 1;
      }

      v3 = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      result = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *getFirstAvailableDeviceFromHistory(void *a1, void *a2, char a3, char a4)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  result = [a1 countByEnumeratingWithState:&v27 objects:v26 count:16];
  v18 = result;
  if (result)
  {
    v8 = *v28;
    v17 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(a1);
        }

        v20 = v9;
        v10 = *(*(&v27 + 1) + 8 * v9);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = [a2 countByEnumeratingWithState:&v22 objects:v21 count:{16, v17}];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(a2);
              }

              v15 = *(*(&v22 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ((a3 & 1) != 0 || ([v15 isSuspended] & 1) == 0) && ((a4 & 1) != 0 || objc_msgSend(v15, "specialDeviceType") != 1) && (objc_msgSend(objc_msgSend(v10, "objectForKeyedSubscript:", @"DeviceUID"), "isEqualToString:", v15[9]))
              {
                return v15;
              }
            }

            v12 = [a2 countByEnumeratingWithState:&v22 objects:v21 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v9 = v20 + 1;
        v8 = v17;
      }

      while ((v20 + 1) != v18);
      v16 = [a1 countByEnumeratingWithState:&v27 objects:v26 count:16];
      result = 0;
      v18 = v16;
    }

    while (v16);
  }

  return result;
}

void *getFirstAvailableDeviceFromHistoryWhereWombatsMustBeMagic(void *a1, void *a2, char a3, char a4, void *a5)
{
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  result = [a1 countByEnumeratingWithState:&v29 objects:v28 count:16];
  v19 = result;
  if (result)
  {
    v9 = *v30;
    v18 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(a1);
        }

        v21 = v10;
        v11 = *(*(&v29 + 1) + 8 * v10);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = [a2 countByEnumeratingWithState:&v24 objects:v23 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v25;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(a2);
              }

              v16 = *(*(&v24 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ((a3 & 1) != 0 || ([v16 isSuspended] & 1) == 0) && ((a4 & 1) != 0 || objc_msgSend(v16, "specialDeviceType") != 1) && objc_msgSend(objc_msgSend(v11, "objectForKeyedSubscript:", @"DeviceUID"), "isEqualToString:", v16[9]) && (objc_msgSend(v16, "specialDeviceType") != 2 && objc_msgSend(v16, "specialDeviceType") != 3 || (fvd_deviceIsPresentInCameraList(v16, a5)))
              {
                return v16;
              }
            }

            v13 = [a2 countByEnumeratingWithState:&v24 objects:v23 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v10 = v21 + 1;
        v9 = v18;
      }

      while ((v21 + 1) != v19);
      v17 = [a1 countByEnumeratingWithState:&v29 objects:v28 count:16];
      result = 0;
      v19 = v17;
    }

    while (v17);
  }

  return result;
}

double vpl_valueToRect(void *a1)
{
  v1 = *(MEMORY[0x1E695F058] + 16);
  v3[0] = *MEMORY[0x1E695F058];
  v3[1] = v1;
  [a1 getValue:v3];
  return *v3;
}

CFDictionaryRef fvd_cgRectDictionaryForRectOfInterest(double a1, CGFloat y, CGFloat width, CGFloat height)
{
  x = a1;
  v8 = *MEMORY[0x1E695F050];
  v9 = *(MEMORY[0x1E695F050] + 8);
  v10 = *(MEMORY[0x1E695F050] + 16);
  v11 = *(MEMORY[0x1E695F050] + 24);
  v19.origin.x = *MEMORY[0x1E695F050];
  v19.origin.y = v9;
  v19.size.width = v10;
  v19.size.height = v11;
  if (!CGRectEqualToRect(*&a1, v19))
  {
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = 1.0;
    v20.size.height = 1.0;
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v16 = CGRectIntersection(v15, v20);
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    if (CGRectIsEmpty(v16))
    {
      height = v11;
      width = v10;
      y = v9;
      x = v8;
    }
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v21.origin.x = v8;
  v21.origin.y = v9;
  v21.size.width = v10;
  v21.size.height = v11;
  if (CGRectEqualToRect(v17, v21))
  {
    DictionaryRepresentation = 0;
  }

  else
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v18);
  }

  return DictionaryRepresentation;
}

uint64_t sub_1A919EA9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1A919F1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A919F37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AVSmartStyleSettingsGetSystemStyle(uint64_t a1)
{
  v1 = _AVSmartStyleSettingsStateForBundleID(a1);

  return [v1 systemStyle];
}

id _AVSmartStyleSettingsStateForBundleID(uint64_t a1)
{
  if (AVSmartStyleSettingsPrewarm_onceToken != -1)
  {
    _AVSmartStyleSettingsStateForBundleID_cold_1();
  }

  os_unfair_lock_lock(&sSystemStyleSettingsLock);
  v2 = [sSmartStyleSettingsStatesByBundleID objectForKeyedSubscript:a1];
  if (v2)
  {
    v3 = v2;
    os_unfair_lock_unlock(&sSystemStyleSettingsLock);
  }

  else
  {
    v3 = [AVSmartStyleSettingsState smartStyleSettingsStateForBundleID:a1];
    [sSmartStyleSettingsStatesByBundleID setObject:v3 forKeyedSubscript:a1];
    os_unfair_lock_unlock(&sSystemStyleSettingsLock);
    if (v3)
    {
      [v3 installProprietaryDefaultListeners];
    }
  }

  return v3;
}

uint64_t AVSmartStyleSettingsSetSystemStyle(uint64_t a1, uint64_t a2)
{
  v3 = _AVSmartStyleSettingsStateForBundleID(a2);

  return [v3 setSystemStyle:a1];
}

AVCaptureSmartStyle *AVSmartStyleSettingsGetSystemStyleFast(void *a1)
{
  v1 = AVSmartStyleSettingsSystemStylePreferenceKey(a1);
  v2 = *MEMORY[0x1E695E8B8];
  v3 = *MEMORY[0x1E695E898];
  v4 = CFPreferencesCopyValue(v1, @"com.apple.cameracapture", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = AVSmartStyleSettingsSystemStylePreferenceKey(AVSmartStyleSettingsSystemStyle);
    v5 = CFPreferencesCopyValue(v6, @"com.apple.cameracapture", v2, v3);
    if (!v5)
    {
LABEL_6:
      v16 = 0;
      goto LABEL_7;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = [v5 objectForKeyedSubscript:AVSmartStyleSettingsCastTypeKey];
  [objc_msgSend(v5 objectForKeyedSubscript:{AVSmartStyleSettingsCastIntensityKey), "floatValue"}];
  v9 = v8;
  [objc_msgSend(v5 objectForKeyedSubscript:{AVSmartStyleSettingsToneBiasKey), "floatValue"}];
  v11 = v10;
  [objc_msgSend(v5 objectForKeyedSubscript:{AVSmartStyleSettingsColorBiasKey), "floatValue"}];
  LODWORD(v13) = v12;
  LODWORD(v14) = v9;
  LODWORD(v15) = v11;
  v16 = [AVCaptureSmartStyle styleWithCast:v7 intensity:v14 toneBias:v15 colorBias:v13];
LABEL_7:

  return v16;
}

uint64_t AVSmartStyleSettingsGetSystemStyleEnabledForBundleID(uint64_t a1)
{
  v1 = _AVSmartStyleSettingsStateForBundleID(a1);

  return [v1 systemStyleEnabled];
}

uint64_t AVSmartStyleSettingsSetSystemStyleEnabledForBundleID(uint64_t a1, uint64_t a2)
{
  v3 = _AVSmartStyleSettingsStateForBundleID(a2);

  return [v3 setSystemStyleEnabled:a1];
}

id AVSmartStyleSettingsGetSystemStyleEnabledStateForCameraApps()
{
  if (AVSmartStyleSettingsPrewarm_onceToken != -1)
  {
    _AVSmartStyleSettingsStateForBundleID_cold_1();
  }

  v0 = AVSmartStyleSettingsSystemStyleEnabledPreferenceKey();

  return [AVCaptureProprietaryDefaultsSingleton objectForKey:v0];
}

uint64_t __AVSmartStyleSettingsPrewarm_block_invoke()
{
  os_unfair_lock_lock(&sSystemStyleSettingsLock);
  sSmartStyleSettingsStatesByBundleID = objc_alloc_init(MEMORY[0x1E695DF90]);
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v5[0] = 0x1F1CBF688;
  v5[1] = 0x1F1CC2048;
  sAllowedFirstPartyAppsInSystemStyleEnabledList = [v0 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v5, 2)}];
  v1 = objc_alloc(MEMORY[0x1E695DEC8]);
  v4 = 0x1F1CBF788;
  sDisallowedFirstPartyAppsInSystemStyleEnabledList = [v1 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v4, 1)}];
  [AVCaptureProprietaryDefaultsSingleton objectForKey:@"warmup"];
  v2 = [AVSmartStyleSettingsState smartStyleSettingsStateForBundleID:AVSmartStyleSettingsSystemStyle];
  [sSmartStyleSettingsStatesByBundleID setObject:v2 forKeyedSubscript:AVSmartStyleSettingsSystemStyle];
  os_unfair_lock_unlock(&sSystemStyleSettingsLock);
  return [v2 installProprietaryDefaultListeners];
}

uint64_t avcp_copyDNGFileDataRepresentationForSushiRawBuffer(__CVBuffer *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v19 = 0;
  if (a1)
  {
    v8 = 0;
    if (a2 && a5)
    {
      v9 = HIDWORD(a6);
      if (a6 > SHIDWORD(a6))
      {
        LODWORD(v9) = a6;
      }

      v20 = 0;
      if (v9)
      {
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v9];
      }

      else
      {
        v10 = 0;
      }

      [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{&unk_1F1CE99C8, *MEMORY[0x1E69918D0], v10, *MEMORY[0x1E6991940], 0}];
      CMPhotoCompressionCreateDataContainerFromImage();
      v8 = v20;
    }

    if (a4)
    {
      [a4 depthDataMap];
      v11 = [a4 copyAuxiliaryMetadata];
      [a4 auxiliaryImageType];
    }

    else
    {
      v11 = 0;
    }

    IOSurface = CVPixelBufferGetIOSurface(a1);
    v13 = IOSurfaceCopyValue(IOSurface, *MEMORY[0x1E696D128]);
    attachmentMode = kCVAttachmentMode_ShouldPropagate;
    v14 = *MEMORY[0x1E69661F8];
    v15 = CVBufferCopyAttachment(a1, *MEMORY[0x1E69661F8], &attachmentMode);
    if (v13)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      CVBufferSetAttachment(a1, v14, v13, kCVAttachmentMode_ShouldNotPropagate);
    }

    CMPhotoDNGCreateDNGFromRAWPixelBufferAndAuxiliaryImage();

    if (v11)
    {
      CFRelease(v11);
    }
  }

  return v19;
}

uint64_t _addAuxiliaryImage(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 != 0) != (a2 == 0))
  {
    return _addAuxiliaryImage_cold_4();
  }

  if (a1)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = v10;
    if (a7)
    {
      [v10 setObject:a7 forKeyedSubscript:*MEMORY[0x1E69918B8]];
    }

    if (a4 == 4)
    {
      [v11 setObject:a5 forKeyedSubscript:*MEMORY[0x1E69918B0]];
    }

    result = CMPhotoCompressionSessionAddAuxiliaryImage();
    if (result)
    {
      return _addAuxiliaryImage_cold_3();
    }
  }

  else if (a7)
  {
    return _addAuxiliaryImage_cold_1();
  }

  else
  {
    result = CMPhotoDNGCompressorAddAuxiliaryImage();
    if (result)
    {
      return _addAuxiliaryImage_cold_2();
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2(void *a1, const char *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);

  return [a1 dictionaryWithObjects:va1 forKeys:va count:1];
}

uint64_t esdds_handleStorageDeviceManagerCallback(void *a1, uint64_t a2, uint64_t a3)
{
  FigSimpleMutexLock();
  if (dword_1EB385998)
  {
    v86 = 0;
    v85 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (![*(a3 + 40) count])
  {
    if ([*(a3 + 32) count])
    {
      v27 = [*(a3 + 32) copy];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v42 = v27;
      v44 = [v27 countByEnumeratingWithState:&v70 objects:v69 count:16];
      if (v44)
      {
        v43 = *v71;
        v47 = *MEMORY[0x1E6990990];
        v28 = *MEMORY[0x1E695E480];
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v71 != v43)
            {
              objc_enumerationMutation(v42);
            }

            v30 = *(*(&v70 + 1) + 8 * i);
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v31 = [a1 countByEnumeratingWithState:&v65 objects:v64 count:16];
            if (!v31)
            {
              goto LABEL_59;
            }

            v32 = v31;
            v33 = 0;
            v34 = *v66;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v66 != v34)
                {
                  objc_enumerationMutation(a1);
                }

                v36 = *(*(&v65 + 1) + 8 * j);
                [v30 baseURL];
                v84[0] = 0;
                v37 = *(a3 + 24);
                v38 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v38)
                {
                  v38(v37, v36, v47, v28, v84);
                }

                if (FigCFEqual())
                {
                  [v30 updateExternalStorageDeviceManager:*(a3 + 24) andFigExternalStorageDeviceUUID:v36];
                  [*(a3 + 40) addObject:v36];
                  v33 = 1;
                }
              }

              v32 = [a1 countByEnumeratingWithState:&v65 objects:v64 count:16];
            }

            while (v32);
            if ((v33 & 1) == 0)
            {
LABEL_59:
              [a3 willChangeValueForKey:@"externalStorageDevices"];
              [*(a3 + 32) removeObject:v30];
              [a3 didChangeValueForKey:@"externalStorageDevices"];
            }
          }

          v44 = [v42 countByEnumeratingWithState:&v70 objects:v69 count:16];
        }

        while (v44);
      }
    }
  }

  if ([a1 count] || objc_msgSend(*(a3 + 40), "count"))
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v5 = [a1 countByEnumeratingWithState:&v60 objects:v59 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v61;
      do
      {
        for (k = 0; k != v6; ++k)
        {
          if (*v61 != v7)
          {
            objc_enumerationMutation(a1);
          }

          v9 = *(*(&v60 + 1) + 8 * k);
          if (([*(a3 + 40) containsObject:v9] & 1) == 0)
          {
            v10 = [[AVExternalStorageDevice alloc] initWithExternalStorageDeviceManager:*(a3 + 24) figExternalStorageDeviceUUID:v9];
            [(AVExternalStorageDevice *)v10 baseURL];
            [a3 willChangeValueForKey:@"externalStorageDevices"];
            [*(a3 + 32) addObject:v10];
            [a3 didChangeValueForKey:@"externalStorageDevices"];
            [*(a3 + 40) addObject:v9];
          }
        }

        v6 = [a1 countByEnumeratingWithState:&v60 objects:v59 count:16];
      }

      while (v6);
    }

    v11 = [*(a3 + 40) copy];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v45 = v11;
    v12 = [v11 countByEnumeratingWithState:&v55 objects:v54 count:16];
    if (v12)
    {
      v13 = v12;
      v46 = *v56;
      do
      {
        for (m = 0; m != v13; ++m)
        {
          if (*v56 != v46)
          {
            objc_enumerationMutation(v45);
          }

          v15 = *(*(&v55 + 1) + 8 * m);
          if (([a1 containsObject:v15] & 1) == 0)
          {
            if ([*(a3 + 40) containsObject:v15])
            {
              [*(a3 + 40) removeObject:v15];
            }

            v16 = [*(a3 + 32) copy];
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v17 = [v16 countByEnumeratingWithState:&v50 objects:v49 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v51;
              do
              {
                for (n = 0; n != v18; ++n)
                {
                  if (*v51 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v50 + 1) + 8 * n);
                  if ([objc_msgSend(v21 "figExternalStorageDeviceUUID")] && objc_msgSend(*(a3 + 32), "containsObject:", v21))
                  {
                    [a3 willChangeValueForKey:@"externalStorageDevices"];
                    [*(a3 + 32) removeObject:v21];
                    [a3 didChangeValueForKey:@"externalStorageDevices"];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v50 objects:v49 count:16];
              }

              while (v18);
            }
          }
        }

        v13 = [v45 countByEnumeratingWithState:&v55 objects:v54 count:16];
      }

      while (v13);
    }
  }

  if (dword_1EB385998)
  {
    v86 = 0;
    v85 = OS_LOG_TYPE_DEFAULT;
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v23 = v86;
    if (os_log_type_enabled(v22, v85))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFE;
    }

    if (v24)
    {
      v25 = *(a3 + 32);
      v26 = *(a3 + 40);
      v74 = 136316162;
      v75 = "esdds_handleStorageDeviceManagerCallback";
      v76 = 2112;
      v77 = a3;
      v78 = 2112;
      v79 = v25;
      v80 = 2112;
      v81 = v26;
      v82 = 2112;
      v83 = a1;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigSimpleMutexUnlock();
}

uint64_t avExternalStorageDeviceNotification(uint64_t a1, void *a2, void *a3)
{
  result = [a3 isEqualToString:*MEMORY[0x1E6990988]];
  if (result)
  {

    return [a2 _reconnectToServer];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5()
{
  *(v0 - 68) = 0;
  *(v0 - 69) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_6(NSObject *a1)
{
  v3 = *(v1 - 69);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_7()
{
  *(v0 - 76) = 0;
  *(v0 - 77) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_12(NSObject *a1)
{
  v3 = *(v1 - 77);

  return os_log_type_enabled(a1, v3);
}

uint64_t getUISSystemReferenceAngleChangedNotification()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUISSystemReferenceAngleChangedNotificationSymbolLoc_ptr;
  v6 = getUISSystemReferenceAngleChangedNotificationSymbolLoc_ptr;
  if (!getUISSystemReferenceAngleChangedNotificationSymbolLoc_ptr)
  {
    v1 = UIKitServicesLibrary();
    v4[3] = dlsym(v1, "UISSystemReferenceAngleChangedNotification");
    getUISSystemReferenceAngleChangedNotificationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getUISSystemReferenceAngleChangedNotification_cold_1();
  }

  return *v0;
}

void sub_1A91A6E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getFBSOrientationObserverClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__0;
  v0 = getFBSOrientationObserverClass_softClass;
  v7 = __Block_byref_object_dispose__0;
  v8 = getFBSOrientationObserverClass_softClass;
  if (!getFBSOrientationObserverClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getFBSOrientationObserverClass_block_invoke;
    v2[3] = &unk_1E786EC30;
    v2[4] = &v3;
    __getFBSOrientationObserverClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A91A7004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91A75FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91A7A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUISSystemReferenceAngleChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary();
  result = dlsym(v2, "UISSystemReferenceAngleChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISSystemReferenceAngleChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKitServicesLibrary()
{
  v2[0] = 0;
  if (!UIKitServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __UIKitServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E786EC50;
    v4 = 0;
    UIKitServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = UIKitServicesLibraryCore_frameworkLibrary;
  if (!UIKitServicesLibraryCore_frameworkLibrary)
  {
    UIKitServicesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __UIKitServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UIKitServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFBSOrientationObserverClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E786EC88;
    v5 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    __getFBSOrientationObserverClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("FBSOrientationObserver");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFBSOrientationObserverClass_block_invoke_cold_1();
  }

  getFBSOrientationObserverClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getUISSystemReferenceAngleModeForContextIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary();
  result = dlsym(v2, "UISSystemReferenceAngleModeForContextID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISSystemReferenceAngleModeForContextIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUISSystemReferenceAngleForContextIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary();
  result = dlsym(v2, "UISSystemReferenceAngleForContextID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISSystemReferenceAngleForContextIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUISSystemReferenceAngleAffectedContextIDsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary();
  result = dlsym(v2, "UISSystemReferenceAngleAffectedContextIDsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISSystemReferenceAngleAffectedContextIDsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

os_log_t __getCameraCaptureLegacyLog_block_invoke()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog = result;
  return result;
}

void AVAUVoiceIOInitializeListenersForBundleID(uint64_t a1)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  context = objc_autoreleasePoolPush();
  v11 = vpio_translatedBundleIDForBundleID(a1);
  if (dword_1EB385978)
  {
    v14 = 0;
    v13 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_lock(&sKeysBeingObservedLock);
  v3 = AVControlCenterAudioPreferredMicrophoneModePreferenceKeyForTranslatedBundleID(v11);
  IsAutoMicrophoneModeEnabledPreferenceKeyForTranslatedBundleID = AVControlCenterAudioIsAutoMicrophoneModeEnabledPreferenceKeyForTranslatedBundleID(v11);
  v5 = 1;
  do
  {
    v6 = v5;
    if (([sKeysBeingObserved containsObject:{v3, v8, v9}] & 1) == 0)
    {
      v8 = v3;
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AVAUVoiceIOChatFlavorObservingKey-%@"];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __AVAUVoiceIOInitializeListenersForBundleID_block_invoke;
      v12[3] = &unk_1E786EAF0;
      v12[4] = v11;
      [AVCaptureProprietaryDefaultsSingleton addObserver:v7 forKey:v3 callHandlerForInitialValue:1 defaultChangedHandler:v12];
      [sKeysBeingObserved addObject:v3];
    }

    v5 = 0;
    v3 = IsAutoMicrophoneModeEnabledPreferenceKeyForTranslatedBundleID;
  }

  while ((v6 & 1) != 0);
  os_unfair_lock_unlock(&sKeysBeingObservedLock);
  objc_autoreleasePoolPop(context);
}

uint64_t vpio_translatedBundleIDForBundleID(uint64_t a1)
{
  os_unfair_lock_lock(&sBundleIDTranslationMapLock);
  v2 = sBundleIDTranslationMap;
  if (!sBundleIDTranslationMap)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sBundleIDTranslationMap = v2;
  }

  v3 = [v2 objectForKeyedSubscript:a1];
  if (!v3)
  {
    [sBundleIDTranslationMap setObject:a1 forKeyedSubscript:a1];
    v3 = a1;
  }

  os_unfair_lock_unlock(&sBundleIDTranslationMapLock);
  return v3;
}

uint64_t __AVAUVoiceIOInitializeListenersForBundleID_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  os_unfair_lock_lock(&sBundleIDTranslationMapLock);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __vpio_bundleIDsForTranslatedBundleID_block_invoke;
  v24[3] = &unk_1E786EDA0;
  v24[4] = v3;
  v4 = [sBundleIDTranslationMap keysOfEntriesPassingTest:v24];
  os_unfair_lock_unlock(&sBundleIDTranslationMapLock);
  if (dword_1EB385978)
  {
    LODWORD(v19) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([a2 isEqualToString:AVControlCenterAudioPreferredMicrophoneModePreferenceKeyForTranslatedBundleID(v3)])
  {
    v6 = 0;
    v7 = @"AVAUVoiceIOPreferredChatFlavorDidChangeNotification";
  }

  else
  {
    v8 = [a2 isEqualToString:AVControlCenterAudioIsAutoMicrophoneModeEnabledPreferenceKeyForTranslatedBundleID(v3)];
    v6 = v8 ^ 1;
    if (v8)
    {
      v7 = @"AVAUVoiceIOAutoChatFlavorEnabledDidChangeNotification";
    }

    else
    {
      v7 = 0;
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v4 allObjects];
  result = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ((v6 & 1) == 0)
        {
          v14 = *(*(&v20 + 1) + 8 * v13);
          *type = @"AVAUVoiceIONotificationBundleIdentifierKey";
          v19 = v14;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:type count:1];
          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        }

        ++v13;
      }

      while (v11 != v13);
      result = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v11 = result;
    }

    while (result);
  }

  return result;
}

id AVAUVoiceIOGetSupportedChatFlavorsForBundleID(uint64_t a1)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = vpio_translatedBundleIDForBundleID(a1);
  v4 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{AVControlCenterAudioSupportedMicrophoneModesPreferenceKeyForTranslatedBundleID(v3)), "copy"}];
  if (!v4)
  {
    v4 = [AVControlCenterAudioDefaultSupportedMicrophoneModesForBundleID(v3) copy];
    if (!dword_1EB385978)
    {
      goto LABEL_8;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EB385978)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_8:
  objc_autoreleasePoolPop(v2);
  return v4;
}

void AVAUVoiceIOSetSupportedChatFlavorsForBundleID(uint64_t a1, uint64_t a2)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = vpio_translatedBundleIDForBundleID(a1);
  if (dword_1EB385978)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [AVCaptureProprietaryDefaultsSingleton setObject:a2 forKey:AVControlCenterAudioSupportedMicrophoneModesPreferenceKeyForTranslatedBundleID(v5)];
  objc_autoreleasePoolPop(v4);
}

uint64_t AVAUVoiceIOGetPreferredChatFlavorForBundleID(uint64_t a1)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = vpio_translatedBundleIDForBundleID(a1);
  v4 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{AVControlCenterAudioPreferredMicrophoneModePreferenceKeyForTranslatedBundleID(v3)), "intValue"}];
  if (dword_1EB385978)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

void AVAUVoiceIOSetActiveChatFlavorForBundleID(uint64_t a1, uint64_t a2)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = vpio_translatedBundleIDForBundleID(a1);
  if (dword_1EB385978)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{a2, v7, v8}], AVControlCenterAudioActiveMicrophoneModePreferenceKeyForTranslatedBundleID(v5));
  objc_autoreleasePoolPop(v4);
}

void AVAUVoiceIORemoveActiveChatFlavorForBundleID(uint64_t a1)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = vpio_translatedBundleIDForBundleID(a1);
  if (dword_1EB385978)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [AVCaptureProprietaryDefaultsSingleton setObject:0 forKey:AVControlCenterAudioActiveMicrophoneModePreferenceKeyForTranslatedBundleID(v3)];
  objc_autoreleasePoolPop(v2);
}

void AVAUVoiceIOSetHiddenChatFlavorsForBundleID(uint64_t a1, uint64_t a2)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = vpio_translatedBundleIDForBundleID(a1);
  if (dword_1EB385978)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [AVCaptureProprietaryDefaultsSingleton setObject:a2 forKey:AVControlCenterAudioHiddenMicrophoneModesPreferenceKeyForTranslatedBundleID(v5)];
  objc_autoreleasePoolPop(v4);
}

void AVAUVoiceIOSetVoiceProcessingBypassedForBundleID(uint64_t a1, uint64_t a2)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = vpio_translatedBundleIDForBundleID(a1);
  if (dword_1EB385978)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedChar:{a2, v7, v8}], AVControlCenterAudioVoiceProcessingBypassedPreferenceKeyForTranslatedBundleID(v5));
  objc_autoreleasePoolPop(v4);
}

uint64_t AVAUVoiceIOIsAutoChatFlavorEnabledForBundleID(uint64_t a1)
{
  if (vpio_initializeDefaultsOnce_onceToken != -1)
  {
    AVAUVoiceIOInitializeListenersForBundleID_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = vpio_translatedBundleIDForBundleID(a1);
  v4 = [AVCaptureProprietaryDefaultsSingleton objectForKey:AVControlCenterAudioIsAutoMicrophoneModeEnabledPreferenceKeyForTranslatedBundleID(v3)];
  if (v4)
  {
    IsAutoMicrophoneEnabledForBundleIDAndMicMode = [v4 BOOLValue];
    goto LABEL_10;
  }

  v6 = [AVCaptureProprietaryDefaultsSingleton objectForKey:AVControlCenterAudioPreferredMicrophoneModePreferenceKeyForTranslatedBundleID(v3)];
  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  IsAutoMicrophoneEnabledForBundleIDAndMicMode = AVControlCenterAudioDefaultIsAutoMicrophoneEnabledForBundleIDAndMicMode(v3, v7);
  if (dword_1EB385978)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_10:
    if (dword_1EB385978)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  objc_autoreleasePoolPop(v2);
  return IsAutoMicrophoneEnabledForBundleIDAndMicMode;
}

void __vpio_initializeDefaultsOnce_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  sKeysBeingObserved = objc_alloc_init(MEMORY[0x1E695DF70]);

  objc_autoreleasePoolPop(v0);
}

uint64_t getUISDisplayConfigurationChangedNotification()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUISDisplayConfigurationChangedNotificationSymbolLoc_ptr;
  v6 = getUISDisplayConfigurationChangedNotificationSymbolLoc_ptr;
  if (!getUISDisplayConfigurationChangedNotificationSymbolLoc_ptr)
  {
    v1 = UIKitServicesLibrary_0();
    v4[3] = dlsym(v1, "UISDisplayConfigurationChangedNotification");
    getUISDisplayConfigurationChangedNotificationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getUISDisplayConfigurationChangedNotification_cold_1();
  }

  return *v0;
}

void sub_1A91AE6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91B04B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91B0DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91B0F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUISDisplayConfigurationChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary_0();
  result = dlsym(v2, "UISDisplayConfigurationChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISDisplayConfigurationChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKitServicesLibrary_0()
{
  v2[0] = 0;
  if (!UIKitServicesLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __UIKitServicesLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E786EE60;
    v4 = 0;
    UIKitServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = UIKitServicesLibraryCore_frameworkLibrary_0;
  if (!UIKitServicesLibraryCore_frameworkLibrary_0)
  {
    UIKitServicesLibrary_cold_1_0(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __UIKitServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  UIKitServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getUISSDisplayConfigurationAffectedContextIDsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary_0();
  result = dlsym(v2, "UISSDisplayConfigurationAffectedContextIDsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISSDisplayConfigurationAffectedContextIDsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUISDisplayConfigurationForContextIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary_0();
  result = dlsym(v2, "UISDisplayConfigurationForContextID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISDisplayConfigurationForContextIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getFBSMutableDisplayConfigurationRequestClass_block_invoke(uint64_t a1)
{
  UIKitServicesLibrary_0();
  result = objc_getClass("FBSMutableDisplayConfigurationRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFBSMutableDisplayConfigurationRequestClass_block_invoke_cold_1();
  }

  getFBSMutableDisplayConfigurationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *__getUISRequestDisplayConfigurationForContextIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitServicesLibrary_0();
  result = dlsym(v2, "UISRequestDisplayConfigurationForContextID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISRequestDisplayConfigurationForContextIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A91B3E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A91B4070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGImageMetadataTag *AVAuxiliaryMetadataArrayTagWithPrefixedKey(const CGImageMetadata *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@", a2, a3];
  v5 = CGImageMetadataCopyTagWithPath(a1, 0, v4);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_21;
  }

  if (CGImageMetadataTagGetType(v5) != kCGImageMetadataTypeArrayOrdered)
  {
    CFRelease(v6);
    goto LABEL_20;
  }

  v7 = CGImageMetadataTagCopyValue(v6);
  CFRelease(v6);
  if (!v7)
  {
LABEL_20:
    v6 = 0;
    goto LABEL_21;
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if (v12)
        {
          v13 = CFGetTypeID(*(*(&v17 + 1) + 8 * v11));
          if (v13 == CGImageMetadataTagGetTypeID() && CGImageMetadataTagGetType(v12) == kCGImageMetadataTypeString)
          {
            v14 = CGImageMetadataTagCopyValue(v12);
            [(CGImageMetadataTag *)v6 addObject:v14];
          }

          else if (v13 == CFNumberGetTypeID() || v13 == CFBooleanGetTypeID())
          {
            [(CGImageMetadataTag *)v6 addObject:v12];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v9);
  }

  CFRelease(v7);
LABEL_21:

  return v6;
}

id AVAuxiliaryMetadataStringTagWithPrefixedKey(const CGImageMetadata *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@", a2, a3];
  v5 = CGImageMetadataCopyTagWithPath(a1, 0, v4);
  if (v5)
  {
    v6 = v5;
    if (CGImageMetadataTagGetType(v5) == kCGImageMetadataTypeString)
    {
      v7 = CGImageMetadataTagCopyValue(v6);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL AVAuxiliaryMetadataAddValue(CGImageMetadata *a1, CFStringRef xmlns, CFStringRef prefix, CFStringRef name, const void *a5)
{
  v8 = CGImageMetadataTagCreate(xmlns, prefix, name, kCGImageMetadataTypeDefault, a5);
  if (v8)
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@", prefix, name];
    v11 = CGImageMetadataSetTagWithPath(a1, 0, v10, v9);
    if (!v11)
    {
      AVAuxiliaryMetadataAddValue_cold_1();
    }

    CFRelease(v9);
  }

  else
  {
    AVAuxiliaryMetadataAddValue_cold_2();
    v10 = 0;
    v11 = 0;
  }

  return v11;
}

void avcdds_addValidMultiCamCombinations(void *a1, uint64_t a2, unint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (a2)
  {
    for (i = a3; i <= [a1 count] - a2; avcdds_addValidMultiCamCombinations(a1, a2 - 1, i, a4, a5, a6))
    {
      [a4 setObject:objc_msgSend(a1 atIndexedSubscript:{"objectAtIndexedSubscript:", i++), objc_msgSend(a4, "count") - a2}];
    }
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __avcdds_addValidMultiCamCombinations_block_invoke;
    v12[3] = &unk_1E786EEF0;
    v12[4] = a4;
    v12[5] = &v13;
    if (![objc_msgSend(a4 indexesOfObjectsPassingTest:{v12), "count"}] && v14[3] <= a6)
    {
      [a5 addObject:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", a4)}];
    }

    _Block_object_dispose(&v13, 8);
  }
}

void sub_1A91B5008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

os_log_t __getCameraCaptureLegacyLog_block_invoke_0()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog_0 = result;
  return result;
}

BOOL __avcdds_addValidMultiCamCombinations_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a3 + 1;
  while (1)
  {
    v8 = v7;
    v9 = [*(a1 + 32) count];
    if (v8 >= v9)
    {
      break;
    }

    v10 = [objc_msgSend(*(a1 + 32) objectAtIndexedSubscript:{v8), "supportsMultiCamCaptureWithDevice:", a2}];
    v7 = v8 + 1;
    if ((v10 & 1) == 0)
    {
      *a4 = 1;
      return v8 < v9;
    }
  }

  if ([a2 hasMediaType:*MEMORY[0x1E6987608]])
  {
    v11 = [objc_msgSend(a2 "constituentDevices")];
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    *(*(*(a1 + 40) + 8) + 24) += v12;
  }

  return v8 < v9;
}

void sub_1A91B55C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADJasperPointCloudClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!AppleDepthLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AppleDepthLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E786EF10;
    v5 = 0;
    AppleDepthLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleDepthLibraryCore_frameworkLibrary)
  {
    __getADJasperPointCloudClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("ADJasperPointCloud");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADJasperPointCloudClass_block_invoke_cold_1();
  }

  getADJasperPointCloudClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __AppleDepthLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleDepthLibraryCore_frameworkLibrary = result;
  return result;
}

double AVCaptureOutputFitAspectInsideDimensions(double a1, double a2, double a3, double a4, double a5)
{
  v7 = a1;
  v8 = a2;
  v9 = (v7 / v8);
  if (a3 == 0.0)
  {
    a3 = v9;
  }

  if (a3 <= v9)
  {
    v14 = a5 * (a2 / a5) * a3 / a4;
    result = a4 * llroundf(v14);
    if (result > a1)
    {
      return result - a4;
    }
  }

  else
  {
    result = a4 * (a1 / a4);
    v11 = result / a3 / a5;
    v12 = a5 * llroundf(v11);
    if (v12 > a2)
    {
      v13 = a3 * (v12 - a5) / a4;
      return a4 * llroundf(v13);
    }
  }

  return result;
}

double AVCaptureAspectRatioForDimensions(unint64_t a1)
{
  result = 0.0;
  if (HIDWORD(a1))
  {
    return a1 / SHIDWORD(a1);
  }

  return result;
}

uint64_t xy_to_XYZ(uint64_t a1, double a2, double a3)
{
  if (a3 < 1.0e-20)
  {
    return 0;
  }

  *a1 = a2 / a3;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = (1.0 - a2) / a3 + -1.0;
  return 1;
}

uint64_t XYZ_to_xy(double *a1, double *a2, double *a3)
{
  v3 = a1[1];
  if (*a1 >= 1.0e-20 || v3 >= 1.0e-20 || a1[2] >= 1.0e-20)
  {
    *a2 = *a1 / (*a1 + v3 + a1[2]);
    *a3 = a1[1] / (a1[1] + *a1 + a1[2]);
    return 1;
  }

  else
  {
    result = 0;
    *a3 = NAN;
    *a2 = NAN;
  }

  return result;
}

double VectorMatrix(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  *a3 = v4 * a2[1] + *a1 * *a2 + v5 * a2[2];
  a3[1] = v4 * a2[4] + v3 * a2[3] + v5 * a2[5];
  result = v4 * a2[7] + v3 * a2[6] + v5 * a2[8];
  a3[2] = result;
  return result;
}

double InvertMatrix(double *a1, double *a2)
{
  result = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = -(*a1 * v7);
  v12 = v5 * -(v8 * v6) + *a1 * v6 * v10 + v5 * v4 * v9 + -(v4 * v3) * v10 + v3 * v7 * v8 + v11 * v9;
  if (v12 != 0.0)
  {
    *a2 = (v6 * v10 - v9 * v7) / v12;
    a2[1] = (v9 * v5 - v3 * v10) / v12;
    a2[2] = (v3 * v7 - v6 * v5) / v12;
    a2[3] = (v10 * -v4 + v8 * v7) / v12;
    a2[4] = (v5 * -v8 + result * v10) / v12;
    a2[5] = (v11 + v4 * v5) / v12;
    a2[6] = (v4 * v9 - v8 * v6) / v12;
    a2[7] = (v9 * -result + v8 * v3) / v12;
    result = (result * v6 - v4 * v3) / v12;
    a2[8] = result;
  }

  return result;
}

double xy_to_tempTint(double *a1, double *a2, double a3, double a4)
{
  v4 = 1.5 - a3 + a4 * 6.0;
  v5 = (a3 + a3) / v4;
  v6 = a4 * 3.0 / v4;
  v7 = 0.0;
  v8 = &kTempTable;
  v9 = 29;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v12 = v11;
    v13 = v10;
    v14 = v7;
    v15 = v8[7];
    v16 = sqrt(v15 * v15 + 1.0);
    v7 = 1.0 / v16;
    v10 = v15 / v16;
    v18 = v8[5];
    v17 = v8[6];
    v19 = (v6 - v17) * v7;
    v11 = v19 - (v5 - v18) * v10;
    v20 = v9 - 1;
    v8 += 4;
    if (!v9)
    {
      break;
    }

    --v9;
  }

  while (v11 > 0.0);
  v21 = 0.0;
  if (v20 != 28)
  {
    if (v11 <= 0.0)
    {
      v21 = v19 - (v5 - v18) * v10;
    }

    v21 = -v21 / (v12 - v21);
  }

  *a1 = 1000000.0 / ((1.0 - v21) * *v8 + *(v8 - 4) * v21);
  v22 = v14 * v21 + v7 * (1.0 - v21);
  v23 = v13 * v21 + v10 * (1.0 - v21);
  v24 = sqrt(v23 * v23 + v22 * v22);
  result = (v23 / v24 * (v6 - (v17 * (1.0 - v21) + *(v8 - 2) * v21)) + (v5 - (v18 * (1.0 - v21) + *(v8 - 3) * v21)) * (v22 / v24)) * -3000.0;
  *a2 = result;
  return result;
}

double tempTint_to_xy(double *a1, double *a2, double a3, double a4)
{
  v4 = &qword_1A92AB208;
  v5 = 29;
  v6 = 1000000.0 / a3;
  do
  {
    v7 = *v4;
    v4 += 4;
    v8 = v7;
    if (!v5)
    {
      break;
    }

    --v5;
  }

  while (v6 >= v8);
  v9 = a4 * -0.000333333333;
  v10 = (v8 - v6) / (v8 - *(v4 - 8));
  v11 = *(v4 - 3) * (1.0 - v10) + *(v4 - 7) * v10;
  v12 = *(v4 - 5);
  v13 = (1.0 - v10) * *(v4 - 2) + *(v4 - 6) * v10;
  v14 = *(v4 - 1);
  v15 = sqrt(v12 * v12 + 1.0);
  v16 = sqrt(v14 * v14 + 1.0);
  v17 = (1.0 - v10) * (1.0 / v16) + 1.0 / v15 * v10;
  v18 = (1.0 - v10) * (v14 / v16) + v12 / v15 * v10;
  v19 = sqrt(v18 * v18 + v17 * v17);
  v20 = v11 + v17 / v19 * v9;
  v21 = v13 + v18 / v19 * v9;
  v22 = v20 * 1.5;
  v23 = v20 + v21 * -4.0 + 2.0;
  *a1 = v22 / v23;
  result = v21 / v23;
  *a2 = result;
  return result;
}

void __AVCaptureTemporarilySuppressShutterSoundForAirpodStemClick_block_invoke()
{
  avco_cancelShutterSoundSuppressionTimer();
  sShutterSoundSuppressedByAirpodStemClick = 1;
  v0 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1EB3851B8);
  sShutterSoundSuppressedByAirPodStemClickTimer = v0;
  v1 = dispatch_time(0, 500000000);
  dispatch_source_set_timer(v0, v1, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(sShutterSoundSuppressedByAirPodStemClickTimer, &__block_literal_global_226);
  v2 = sShutterSoundSuppressedByAirPodStemClickTimer;

  dispatch_activate(v2);
}

void avco_cancelShutterSoundSuppressionTimer()
{
  if (sShutterSoundSuppressedByAirPodStemClickTimer)
  {
    dispatch_source_cancel(sShutterSoundSuppressedByAirPodStemClickTimer);

    sShutterSoundSuppressedByAirPodStemClickTimer = 0;
  }
}

void __AVCaptureTemporarilySuppressShutterSoundForAirpodStemClick_block_invoke_2()
{
  if (dword_1ED806980)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  avco_cancelShutterSoundSuppressionTimer();
  sShutterSoundSuppressedByAirpodStemClick = 0;
}

void AVCaptureStillImageOutputPlayShutterSound(void *a1, unsigned int a2, int a3)
{
  if (!qword_1EB3851B8)
  {
    AVCaptureStillImageOutputPlayShutterSound_cold_1();
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AVCaptureStillImageOutputPlayShutterSound_block_invoke;
  block[3] = &unk_1E786EC30;
  block[4] = &v27;
  dispatch_sync(qword_1EB3851B8, block);
  if (*(v28 + 24) == 1)
  {
    if (dword_1ED806980)
    {
LABEL_4:
      v25 = 0;
      v24 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (a3)
    {
      if (!dword_1ED806980)
      {
        goto LABEL_28;
      }

      goto LABEL_4;
    }

    v7 = [objc_msgSend(a1 "session")];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v8)
    {
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 isRecording] && (objc_msgSend(v11, "isRecordingPaused") & 1) == 0)
          {
            if (dword_1ED806980)
            {
              v25 = 0;
              v24 = OS_LOG_TYPE_DEFAULT;
              v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v13 = v25;
              if (os_log_type_enabled(v12, v24))
              {
                v14 = v13;
              }

              else
              {
                v14 = v13 & 0xFFFFFFFE;
              }

              if (v14)
              {
                v22 = 136315138;
                v23 = "AVCaptureStillImageOutputPlayShutterSound";
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            goto LABEL_28;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    if (a2 > 0x1000)
    {
      v15 = *MEMORY[0x1E695A8B0];
      v16 = &unk_1F1CE9B00;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    }

    AudioServicesPlaySystemSoundWithOptions();
  }

LABEL_28:
  _Block_object_dispose(&v27, 8);
}

void __AVCaptureStillImageOutputPlayShutterSound_block_invoke(uint64_t a1)
{
  avco_cancelShutterSoundSuppressionTimer();
  *(*(*(a1 + 32) + 8) + 24) = sShutterSoundSuppressedByAirpodStemClick;
  sShutterSoundSuppressedByAirpodStemClick = 0;
}

__CFString *ps_shortStringForFileType(void *a1)
{
  if ([a1 isEqual:*MEMORY[0x1E69874B0]])
  {
    return @"JFIF";
  }

  if ([a1 isEqual:*MEMORY[0x1E6987498]])
  {
    return @"DNG";
  }

  if ([a1 isEqual:*MEMORY[0x1E69874C8]])
  {
    return @"TIFF";
  }

  if ([a1 isEqual:*MEMORY[0x1E69874A8]])
  {
    return @"HEIF";
  }

  if ([a1 isEqual:*MEMORY[0x1E69874A0]])
  {
    return @"HEIC";
  }

  if ([a1 isEqual:*MEMORY[0x1E6987490]])
  {
    return @"DICM";
  }

  return @"Unknown";
}

double ps_CGSizeForSettingsDictionary(void *a1)
{
  if (!a1)
  {
    return *MEMORY[0x1E695F060];
  }

  if ([a1 objectForKeyedSubscript:*MEMORY[0x1E6966130]])
  {
    v2 = MEMORY[0x1E69660B8];
    v3 = MEMORY[0x1E6966208];
  }

  else
  {
    if (![a1 objectForKeyedSubscript:*MEMORY[0x1E6987CB0]])
    {
      return *MEMORY[0x1E695F060];
    }

    v2 = MEMORY[0x1E6987D70];
    v3 = MEMORY[0x1E6987E08];
  }

  v5 = [objc_msgSend(a1 objectForKeyedSubscript:{*v3), "intValue"}];
  v6 = [objc_msgSend(a1 objectForKeyedSubscript:{*v2), "intValue"}];
  if (v5 >= 1 && v6 >= 1)
  {
    return v5;
  }

  return *MEMORY[0x1E695F060];
}

double AVCaptureGetCurrentProcessAuditToken@<D0>(_OWORD *a1@<X8>)
{
  if (AVCaptureGetCurrentProcessAuditToken_sOnceToken != -1)
  {
    AVCaptureGetCurrentProcessAuditToken_cold_1();
  }

  result = *&AVCaptureGetCurrentProcessAuditToken_currentProcessAuditToken;
  v3 = unk_1EB385418;
  *a1 = AVCaptureGetCurrentProcessAuditToken_currentProcessAuditToken;
  a1[1] = v3;
  return result;
}

uint64_t AVCaptureClientIsFigCam()
{
  if (AVCaptureClientIsFigCam_sOnceToken != -1)
  {
    AVCaptureClientIsFigCam_cold_1();
  }

  return AVCaptureClientIsFigCam_sAnswer;
}

void __AVCaptureClientIsFigCam_block_invoke()
{
  v0 = AVCaptureCopyClientCodeSigningIdentifier();
  AVCaptureClientIsFigCam_sAnswer = [(__CFString *)v0 isEqualToString:0x1F1CC0FC8];
}

uint64_t AVCaptureClientIsRapport()
{
  if (AVCaptureClientIsRapport_sOnceToken != -1)
  {
    AVCaptureClientIsRapport_cold_1();
  }

  return AVCaptureClientIsRapport_sAnswer;
}

void __AVCaptureClientIsRapport_block_invoke()
{
  v0 = AVCaptureCopyClientCodeSigningIdentifier();
  AVCaptureClientIsRapport_sAnswer = [(__CFString *)v0 isEqualToString:0x1F1CC1988];
}

uint64_t AVControlCenterAudioAreMicrophoneModesSupported()
{
  if (AVControlCenterAudioAreMicrophoneModesSupported_onceToken != -1)
  {
    AVControlCenterAudioAreMicrophoneModesSupported_cold_1();
  }

  return AVControlCenterAudioAreMicrophoneModesSupported_sMicModesSupported;
}

uint64_t __AVControlCenterAudioAreMicrophoneModesSupported_block_invoke()
{
  result = MGGetBoolAnswer();
  AVControlCenterAudioAreMicrophoneModesSupported_sMicModesSupported = result;
  return result;
}

void *AVControlCenterAudioDefaultSupportedMicrophoneModesForBundleID(void *a1)
{
  if (AVControlCenterAudioAreMicrophoneModesSupported_onceToken != -1)
  {
    AVControlCenterAudioAreMicrophoneModesSupported_cold_1();
  }

  if (AVControlCenterAudioAreMicrophoneModesSupported_sMicModesSupported == 1)
  {
    if ([a1 isEqual:0x1F1CBF688])
    {
      return &unk_1F1CEA3C8;
    }

    v2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:a1 allowPlaceholder:1 error:0];
    v3 = [objc_msgSend(v2 "infoDictionary")];
    v4 = [objc_msgSend(v2 "infoDictionary")];
    if (v3 | v4)
    {
      v5 = v4;
      if ([v3 BOOLValue])
      {

        return &unk_1F1CEA3C8;
      }

      v8 = [v5 BOOLValue];

      if (v8)
      {
        return &unk_1F1CEA3C8;
      }
    }

    else
    {
      v6 = [objc_msgSend(v2 "infoDictionary")];

      if (v6)
      {
        return &unk_1F1CEA3C8;
      }
    }
  }

  return MEMORY[0x1E695E0F0];
}

uint64_t AVControlCenterAudioMicrophoneMGAutoMode()
{
  if (AVControlCenterAudioMicrophoneMGAutoMode_onceToken != -1)
  {
    AVControlCenterAudioMicrophoneMGAutoMode_cold_1();
  }

  return AVControlCenterAudioMicrophoneMGAutoMode_sMicMGAutoMode;
}

uint64_t __AVControlCenterAudioMicrophoneMGAutoMode_block_invoke()
{
  result = MGGetSInt32Answer();
  AVControlCenterAudioMicrophoneMGAutoMode_sMicMGAutoMode = result;
  return result;
}

BOOL AVControlCenterAudioDefaultIsAutoMicrophoneEnabledForBundleIDAndMicMode(uint64_t a1, uint64_t a2)
{
  if (AVControlCenterAudioMicrophoneMGAutoMode_onceToken != -1)
  {
    AVControlCenterAudioMicrophoneMGAutoMode_cold_1();
  }

  return (a2 - 3) < 0xFFFFFFFFFFFFFFFELL && AVControlCenterAudioMicrophoneMGAutoMode_sMicMGAutoMode == 1;
}

uint64_t AVControlCenterBlackenFramesPreferenceKey(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
  if (!v4)
  {
    v4 = @"unknown";
  }

  v5 = [(__CFString *)v4 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [v3 stringWithFormat:@"%@blacken-frames-from-deviceid-%@", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@/", @"nonpersisting-global/", v5), a2];
}

uint64_t avsss_prefixedSystemStylePreferenceKeyForBundleID(void *a1)
{
  v2 = AVSmartStyleSettingsSystemStyle;
  if (([a1 isEqualToString:AVSmartStyleSettingsSystemStyle] & 1) == 0)
  {
    v3 = AVControlCenterPreferencesDomainForPreferencesDomain(a1);
    if (!v3)
    {
      v3 = @"unknown";
    }

    v2 = [(__CFString *)v3 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"smartStyle/%@/", v2];
}

uint64_t __AVCaptureIsRunningInIOSAppOnMacEnvironment_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  AVCaptureIsRunningInIOSAppOnMacEnvironment_isIOSAppOnMac = result;
  return result;
}

void *AVCIFilterArrayDescription(void *a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:&stru_1F1CBCFE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = "";
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 appendFormat:@"%s%@", v6, objc_msgSend(*(*(&v10 + 1) + 8 * v7++), "name")];
        v6 = ", ";
      }

      while (v4 != v7);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v6 = ", ";
    }

    while (v4);
  }

  return v2;
}

BOOL validRectInUnitRectCoordinateSpace(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectIsNull(*&a1))
  {
    return 0;
  }

  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  if (CGRectEqualToRect(v18, *MEMORY[0x1E695F058]))
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 1.0;
  v12 = 1.0;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;

  return CGRectContainsRect(*&v9, *&v13);
}

BOOL AVCaptureShouldThrowForAPIViolations()
{
  if (AVCaptureShouldThrowForAPIViolations_onceToken != -1)
  {
    AVCaptureShouldThrowForAPIViolations_cold_1();
  }

  return (AVCaptureShouldThrowForAPIViolations_pardonAPIViolations & 1) == 0;
}

uint64_t __AVCaptureShouldThrowForAPIViolations_block_invoke()
{
  if (AVCaptureIsRunningInIOSAppOnMacEnvironment_onceToken != -1)
  {
    __AVCaptureShouldThrowForAPIViolations_block_invoke_cold_1();
  }

  result = FigGetCFPreferenceNumberWithDefault();
  AVCaptureShouldThrowForAPIViolations_pardonAPIViolations = result != 0;
  return result;
}

uint64_t AVCaptureGetDiskCapacityInGB()
{
  if (AVCaptureGetDiskCapacityInGB_onceToken != -1)
  {
    AVCaptureGetDiskCapacityInGB_cold_1();
  }

  return AVCaptureGetDiskCapacityInGB_sDiskCapacityInGB;
}

void __AVCaptureGetDiskCapacityInGB_block_invoke()
{
  v0 = MGCopyAnswer();
  AVCaptureGetDiskCapacityInGB_sDiskCapacityInGB = ([objc_msgSend(v0 objectForKeyedSubscript:{*MEMORY[0x1E69E5128]), "longLongValue"}] / 1000000000.0);
}

uint64_t AVCaptureMovieFileURLIsValidForConnection(void *a1, double a2, double a3, uint64_t a4, __CFString **a5)
{
  IsFileOnExternalStorageDevice = FigFileIsFileOnExternalStorageDevice();
  if (!a1)
  {
    return 1;
  }

  v10 = IsFileOnExternalStorageDevice;
  v11 = [a1 sourceDevice];
  v12 = [v11 activeFormat];
  [objc_msgSend(v12 "figCaptureSourceVideoFormat")];
  v13 = FigCapturePixelFormatIs422();
  [objc_msgSend(v12 "figCaptureSourceVideoFormat")];
  IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw();
  v15 = IsPackedBayerRaw;
  if (AVCaptureMovieFileURLIsValidForConnection_onceToken == -1)
  {
    if (IsPackedBayerRaw)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (v13)
    {
      if (v11)
      {
        [v11 activeVideoMaxFrameDuration];
        [v11 activeVideoMaxFrameDuration];
        v17 = v36 / v35;
        [v11 activeVideoMinFrameDuration];
        [v11 activeVideoMinFrameDuration];
        v18 = v34 / v33;
      }

      else
      {
        v17 = NAN;
        v18 = NAN;
      }

      if (a2 == 3840.0 && a3 == 2160.0)
      {
        v19 = 1;
      }

      else
      {
        v19 = a2 == 2160.0;
        if (a3 != 3840.0)
        {
          v19 = 0;
        }
      }

      v20 = v17 == v18;
      v21 = v17 == v18 && v19;
      v22 = v17 == 60.0 && v21;
      v23 = v17 == 30.0 && v21;
      if (a2 != 1920.0 || a3 != 1080.0)
      {
        v24 = a2 == 1080.0;
        if (a3 != 1920.0)
        {
          v24 = 0;
        }

        v20 = v17 == v18 && v24;
      }

      v25 = v17 == 60.0 && v20;
      if (v17 != 120.0)
      {
        LOBYTE(v20) = 0;
      }

      if (AVCaptureGetDiskCapacityInGB_onceToken == -1)
      {
        if (v10)
        {
          return 1;
        }
      }

      else
      {
        v31 = v20;
        v32 = v25;
        AVCaptureMovieFileURLIsValidForConnection_cold_2();
        LOBYTE(v20) = v31;
        v25 = v32;
        if (v10)
        {
          return 1;
        }
      }

      v26 = v17 == 60.0;
      if (v17 == 120.0)
      {
        v26 = 1;
      }

      v27 = v21 && v26;
      v16 = @"Capturing 4k120 with ProRes codec on this device is supported only on external storage device.";
      if (v22)
      {
        v16 = @"Capturing 4k60 with ProRes codec on this device is supported only on external storage device.";
      }

      if (v27)
      {
        goto LABEL_53;
      }

      if (AVCaptureGetDiskCapacityInGB_sDiskCapacityInGB <= 0xFF)
      {
        v28 = v23 || v25 || v20;
        v29 = v25 ? @"Capturing HD60 with ProRes codec on this device is supported only on external storage device." : @"Capturing HD120 with ProRes codec on this device is supported only on external storage device.";
        v16 = @"Capturing 4k30 with ProRes codec on this device is supported only on external storage device.";
        if (!v23)
        {
          v16 = v29;
        }

        if (v28)
        {
          goto LABEL_53;
        }
      }
    }

    return 1;
  }

  AVCaptureMovieFileURLIsValidForConnection_cold_1();
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (v10)
  {
    return 1;
  }

  v16 = @"Capturing ProRes Raw codec is supported only on external storage device.";
LABEL_53:
  result = 0;
  if (a5)
  {
    *a5 = v16;
  }

  return result;
}

id AVCaptureCreateAVAssetWriterCompatibleMovieMetadata(void *a1)
{
  if (![a1 count])
  {
    return 0;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E6971F88];
  v4 = *MEMORY[0x1E6971ED8];
  while (([objc_msgSend(objc_msgSend(a1 objectAtIndexedSubscript:{v2), "objectForKeyedSubscript:", v3), "isEqual:", v4}] & 1) == 0)
  {
    if (++v2 >= [a1 count])
    {
      return 0;
    }
  }

  v5 = [a1 objectAtIndexedSubscript:v2];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6971F90]];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    v12 = *MEMORY[0x1E6971F48];
    v13 = *MEMORY[0x1E6971F40];
    v14 = *MEMORY[0x1E6971F10];
    v15 = *MEMORY[0x1E6971F80];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v18 = objc_alloc_init(MEMORY[0x1E6988050]);
        [v18 setKeySpace:{objc_msgSend(v17, "objectForKeyedSubscript:", v12)}];
        [v18 setKey:{objc_msgSend(v17, "objectForKeyedSubscript:", v13)}];
        [v18 setDataType:{objc_msgSend(v17, "objectForKeyedSubscript:", v14)}];
        [v18 setValue:{objc_msgSend(v17, "objectForKeyedSubscript:", v15)}];
        [v7 addObject:v18];
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

uint64_t AVCaptureVideoCodecTypeIsProResRaw(void *a1)
{
  if ([a1 isEqualToString:*MEMORY[0x1E6987CE0]])
  {
    return 1;
  }

  result = [a1 isEqualToString:*MEMORY[0x1E6987CD8]];
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t AVCaptureVTRotationFromDegrees(int a1)
{
  result = 0;
  if (a1 > 179)
  {
    if (a1 == 180)
    {
      v3 = MEMORY[0x1E6983FF0];
    }

    else
    {
      if (a1 != 270)
      {
        return result;
      }

      v3 = MEMORY[0x1E6983FF8];
    }
  }

  else if (a1)
  {
    if (a1 != 90)
    {
      return result;
    }

    v3 = MEMORY[0x1E6984000];
  }

  else
  {
    v3 = MEMORY[0x1E6983FE8];
  }

  return *v3;
}

CFTypeRef AVCaptureGetTransformedDetectedObjectsInfo(const void *a1, uint64_t a2, void *a3)
{
  v6 = CMGetAttachment(a1, *MEMORY[0x1E6990D40], 0);
  v7 = *MEMORY[0x1E6990FB8];
  result = [v6 objectForKeyedSubscript:*MEMORY[0x1E6990FB8]];
  if (result || (result = CMGetAttachment(a1, v7, 0)) != 0)
  {
    v9 = result;
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    *v47 = *MEMORY[0x1E695EFD0];
    *&v47[16] = v10;
    *&v47[32] = *(MEMORY[0x1E695EFD0] + 32);
    v46 = 0;
    v45 = 0;
    [a3 getTransform:v47 mirroredOut:&v46 rollAdjustmentOut:&v45 forConnection:a2];
    v11.f64[0] = *&v47[24];
    v11.f64[1] = *v47;
    v12 = vabsq_f64(vbslq_s8(vceqzq_f64(v11), *&v47[8], v11));
    *&v47[8] = vdivq_f64(*&v47[8], v12);
    *&v47[24] = vdivq_f64(*&v47[24], v12);
    *v47 = *v47 / v12.f64[1];
    *&v47[40] = *&v47[40] / v12.f64[0];
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v9, 1uLL);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v23 = DeepCopy;
    obj = [DeepCopy allValues];
    v27 = [obj countByEnumeratingWithState:&v41 objects:v40 count:16];
    if (v27)
    {
      v26 = *v42;
      v25 = *MEMORY[0x1E6990EC0];
      do
      {
        v14 = 0;
        do
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = v14;
          v15 = [*(*(&v41 + 1) + 8 * v14) objectForKeyedSubscript:v25];
          if (v15)
          {
            v16 = v15;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v17 = [v15 countByEnumeratingWithState:&v36 objects:v35 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v37;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v37 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v36 + 1) + 8 * i);
                  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  v29[0] = MEMORY[0x1E69E9820];
                  v29[1] = 3221225472;
                  v30 = *v47;
                  v29[2] = __AVCaptureGetTransformedDetectedObjectsInfo_block_invoke;
                  v29[3] = &unk_1E786F150;
                  v31 = *&v47[16];
                  v32 = *&v47[32];
                  v29[4] = v22;
                  v33 = v45;
                  v34 = v46;
                  [v21 enumerateKeysAndObjectsUsingBlock:v29];
                  [v21 addEntriesFromDictionary:v22];
                }

                v18 = [v16 countByEnumeratingWithState:&v36 objects:v35 count:16];
              }

              while (v18);
            }
          }

          v14 = v28 + 1;
        }

        while (v28 + 1 != v27);
        v27 = [obj countByEnumeratingWithState:&v41 objects:v40 count:16];
      }

      while (v27);
    }

    return v23;
  }

  return result;
}

uint64_t __AVCaptureGetTransformedDetectedObjectsInfo_block_invoke(uint64_t a1, void *a2, const __CFDictionary *a3)
{
  if ([a2 hasSuffix:@"Rect"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(MEMORY[0x1E695F050] + 16);
      rect.origin = *MEMORY[0x1E695F050];
      rect.size = v6;
      if (CGRectMakeWithDictionaryRepresentation(a3, &rect))
      {
        v7 = *(a1 + 56);
        *&v14.a = *(a1 + 40);
        *&v14.c = v7;
        *&v14.tx = *(a1 + 72);
        rect = CGRectApplyAffineTransform(rect, &v14);
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(rect);
        [*(a1 + 32) setObject:DictionaryRepresentation forKeyedSubscript:a2];
      }
    }
  }

  if ([a2 hasSuffix:@"Roll"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(__CFDictionary *)a3 doubleValue];
      v10 = v9 + *(a1 + 88);
      if (*(a1 + 96))
      {
        v10 = -v10;
      }

      v11 = 360.0;
      if (v10 >= 360.0)
      {
        v11 = -360.0;
      }

      else if (v10 >= 0.0)
      {
        goto LABEL_14;
      }

      v10 = v10 + v11;
LABEL_14:
      [*(a1 + 32) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v10), a2}];
    }
  }

  result = [a2 hasSuffix:@"Yaw"];
  if (result)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      [(__CFDictionary *)a3 doubleValue];
      if (*(a1 + 96) == 1)
      {
        if (v13 <= 0.0)
        {
          v13 = -v13;
        }

        else
        {
          v13 = 360.0 - v13;
        }
      }

      return [*(a1 + 32) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v13), a2}];
    }
  }

  return result;
}

__CFString *AVCaptureQOSClassToString(uint64_t a1)
{
  if (a1 > 20)
  {
    if (a1 == 21)
    {
      return @"QOS_CLASS_DEFAULT";
    }

    if (a1 != 33)
    {
      if (a1 == 25)
      {
        return @"QOS_CLASS_USER_INITIATED";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown QoS class %d", a1];
    }

    return @"QOS_CLASS_USER_INTERACTIVE";
  }

  else
  {
    if (!a1)
    {
      return @"QOS_CLASS_UNSPECIFIED";
    }

    if (a1 != 9)
    {
      if (a1 == 17)
      {
        return @"QOS_CLASS_UTILITY";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown QoS class %d", a1];
    }

    return @"QOS_CLASS_BACKGROUND";
  }
}

NSString *__cdecl AVCaptureReactionSystemImageNameForType(AVCaptureReactionType reactionType)
{
  if (AVCaptureReactionSystemImageNameForType_onceToken != -1)
  {
    AVCaptureReactionSystemImageNameForType_cold_1();
  }

  v2 = AVCaptureReactionSystemImageNameForType_nameForType;

  return [v2 objectForKeyedSubscript:reactionType];
}

id __AVCaptureReactionSystemImageNameForType_block_invoke()
{
  v1[0] = AVCaptureReactionTypeThumbsUp;
  v1[1] = AVCaptureReactionTypeThumbsDown;
  v2[0] = @"hand.thumbsup.fill";
  v2[1] = @"hand.thumbsdown.fill";
  v1[2] = AVCaptureReactionTypeBalloons;
  v1[3] = AVCaptureReactionTypeHeart;
  v2[2] = @"balloon.2.fill";
  v2[3] = @"heart.fill";
  v1[4] = AVCaptureReactionTypeFireworks;
  v1[5] = AVCaptureReactionTypeRain;
  v2[4] = @"fireworks";
  v2[5] = @"cloud.rain.fill";
  v1[6] = AVCaptureReactionTypeConfetti;
  v1[7] = AVCaptureReactionTypeLasers;
  v2[6] = @"party.popper.fill";
  v2[7] = @"laser.burst";
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:8];
  AVCaptureReactionSystemImageNameForType_nameForType = result;
  return result;
}

void sub_1A91CDCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

os_log_t __getCameraCaptureLegacyLog_block_invoke_1()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog_1 = result;
  return result;
}

void sub_1A91D081C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t avcc_defaultVideoRetainedBufferCount(void *a1, int a2)
{
  Dimensions = CMVideoFormatDescriptionGetDimensions([a1 formatDescription]);
  CMFormatDescriptionGetMediaSubType([a1 formatDescription]);
  if (FigCapturePixelFormatIsPackedBayerRaw() && a2)
  {
    [objc_msgSend(objc_msgSend(a1 "videoSupportedFrameRateRanges")];
    v6 = v5 <= 60.0;
    v7 = 20;
  }

  else
  {
    v6 = Dimensions.height <= 3023 || Dimensions.width <= 4031;
    v7 = 5;
  }

  if (v6)
  {
    return 12;
  }

  else
  {
    return v7;
  }
}

os_log_t __getCameraCaptureLegacyLog_block_invoke_2()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog_2 = result;
  return result;
}

void sub_1A91E8804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *AVCaptureDeviceTypeToString(void *a1)
{
  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInWideAngleCamera"])
  {
    return @"Wide";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTelephotoCamera"])
  {
    return @"Tele";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInDualCamera"])
  {
    return @"Dual";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInUltraWideCamera"])
  {
    return @"UltraWide";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInDualWideCamera"])
  {
    return @"DualWide";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTripleCamera"])
  {
    return @"Triple";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTimeOfFlightCamera"])
  {
    return @"TimeOfFlight";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInLiDARDepthCamera"])
  {
    return @"LiDARDepth";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeDeskViewCamera"])
  {
    return @"Overhead";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTrueDepthCamera"])
  {
    return @"TrueDepth";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera"])
  {
    return @"WideMetadata";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera"])
  {
    return @"UltraWideMetadata";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInInfraredMetadataCamera"])
  {
    return @"InfraredMetadata";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeMicrophone"])
  {
    return @"Microphone";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeExternal"])
  {
    return @"External";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeContinuityCamera"])
  {
    return @"ContinuityCamera";
  }

  return 0;
}

__CFString *AVCaptureDeviceTypeToShortString(void *a1)
{
  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInWideAngleCamera"])
  {
    return @"W";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTelephotoCamera"])
  {
    return @"T";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInDualCamera"])
  {
    return @"D";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInUltraWideCamera"])
  {
    return @"UW";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInDualWideCamera"])
  {
    return @"DW";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTripleCamera"])
  {
    return @"3";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTimeOfFlightCamera"])
  {
    return @"TOF";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInLiDARDepthCamera"])
  {
    return @"LD";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeDeskViewCamera"])
  {
    return @"OH";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInTrueDepthCamera"])
  {
    return @"TD";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera"])
  {
    return @"WM";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera"])
  {
    return @"UWM";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeBuiltInInfraredMetadataCamera"])
  {
    return @"IRM";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeMicrophone"])
  {
    return @"MIC";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeExternal"])
  {
    return @"EXT";
  }

  if ([a1 isEqualToString:@"AVCaptureDeviceTypeContinuityCamera"])
  {
    return @"CC";
  }

  return 0;
}

__CFString *AVCaptureDevicePositionToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<Unknown>";
  }

  else
  {
    return off_1E786F6F8[a1];
  }
}

__CFString *AVCaptureVideoStabilizationModeToString(uint64_t a1)
{
  if ((a1 + 1) > 7)
  {
    return 0;
  }

  else
  {
    return off_1E786F710[a1 + 1];
  }
}

uint64_t ___registerServerConnectionDiedNotification_block_invoke()
{
  os_unfair_lock_lock(&sRegisterVideoDevicesLock);
  v0 = [sRegisteredVideoDevices copy];
  os_unfair_lock_unlock(&sRegisterVideoDevicesLock);
  os_unfair_lock_lock(&sRegisterAudioDevicesLock);
  v1 = [sRegisteredAudioDevices copy];
  os_unfair_lock_unlock(&sRegisterAudioDevicesLock);
  if ([v0 count])
  {
    [NSClassFromString(&cfstr_Avcapturefigvi.isa) _reconnectDevices:v0];
  }

  if ([v1 count])
  {
    [NSClassFromString(&cfstr_Avcapturefigau.isa) _reconnectDevices:v1];
  }

  +[AVCaptureProprietaryDefaultsSingleton updateProprietaryDefaultsSource];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v2 postNotificationName:@"AVCaptureDeviceServerConnectionDiedNotification" object:0];
}

void ___registerVideoDevicesOnce_block_invoke()
{
  if (dword_1ED806A00)
  {
    v59[0] = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  context = objc_autoreleasePoolPush();
  v69 = 0;
  v70 = 0;
  _refreshRegisteredDevices(@"AVCaptureFigVideoDevice", &v70, &v69);
  if ([v70 count] || objc_msgSend(v69, "count"))
  {
    [NSClassFromString(&cfstr_Avcapturefigvi.isa) _setUpCameraHistoryOnce];
    [NSClassFromString(&cfstr_Avcapturefigvi.isa) _initiateRefreshPreferredCameraProperties:1];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v1 = v70;
  v2 = [v70 countByEnumeratingWithState:&v65 objects:v71 count:{16, v33, v35}];
  if (v2)
  {
    v3 = v2;
    v4 = *v66;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v66 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v65 + 1) + 8 * i);
        [v6 _setConnected:1];
        if (dword_1ED806A00)
        {
          *type = 0;
          v42[0] = OS_LOG_TYPE_DEFAULT;
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
      }

      v3 = [v1 countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v3);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v8 = v69;
  v9 = [v69 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v61;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v61 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v60 + 1) + 8 * j);
        [v13 _setConnected:0];
        if (dword_1ED806A00)
        {
          *v42 = 0;
          v53[0] = OS_LOG_TYPE_DEFAULT;
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, v53[0]);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
      }

      v10 = [v8 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v10);
  }

  v57 = 0;
  v58 = 0;
  _refreshRegisteredDevices(@"AVCaptureFigAudioDevice", &v58, &v57);
  v55 = 0u;
  v56 = 0u;
  *v53 = 0u;
  v54 = 0u;
  v15 = v58;
  v16 = [v58 countByEnumeratingWithState:v53 objects:v59 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v54;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v54 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*&v53[8] + 8 * k);
        if (dword_1ED806A00)
        {
          LODWORD(v48) = 0;
          v38[0] = OS_LOG_TYPE_DEFAULT;
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v22 = v48;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
          }

          else
          {
            v23 = v22 & 0xFFFFFFFE;
          }

          if (v23)
          {
            *v42 = 136315394;
            v43 = "_updateSourceInfoArray";
            v44 = 2112;
            v45 = v20;
            LODWORD(v36) = 22;
            v34 = v42;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
      }

      v17 = [v15 countByEnumeratingWithState:v53 objects:v59 count:16];
    }

    while (v17);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v24 = v57;
  v25 = [v57 countByEnumeratingWithState:&v48 objects:type count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v49;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v48 + 1) + 8 * m);
        if (dword_1ED806A00)
        {
          v47 = 0;
          v46 = OS_LOG_TYPE_DEFAULT;
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v31 = v47;
          if (os_log_type_enabled(v30, v46))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            *v38 = 136315394;
            v39 = "_updateSourceInfoArray";
            v40 = 2112;
            v41 = v29;
            LODWORD(v36) = 22;
            v34 = v38;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
      }

      v26 = [v24 countByEnumeratingWithState:&v48 objects:type count:16];
    }

    while (v26);
  }

  objc_autoreleasePoolPop(context);
}

void ___registerVideoDevicesOnce_block_invoke_1516()
{
  os_unfair_lock_lock(&sRegisterVideoDevicesLock);
  v0 = [sRegisteredVideoDevices copy];
  os_unfair_lock_unlock(&sRegisterVideoDevicesLock);
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v5 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v7;
    do
    {
      v4 = 0;
      do
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v0);
        }

        [*(*(&v6 + 1) + 8 * v4++) _cameraUsageRestrictionsChanged];
      }

      while (v2 != v4);
      v2 = [v0 countByEnumeratingWithState:&v6 objects:v5 count:16];
    }

    while (v2);
  }
}

void _refreshRegisteredDevices(void *a1, void *a2, void *a3)
{
  if ([a1 isEqualToString:@"AVCaptureFigAudioDevice"])
  {
    v31 = a2;
    v32 = a3;
    v6 = &sRegisterAudioDevicesLock;
  }

  else
  {
    if (![a1 isEqualToString:@"AVCaptureFigVideoDevice"])
    {
      return;
    }

    v31 = a2;
    v32 = a3;
    v6 = &sRegisterVideoDevicesLock;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  lock = v6;
  os_unfair_lock_lock(v6);
  v9 = [a1 isEqualToString:@"AVCaptureFigAudioDevice"];
  v10 = &sRegisteredAudioDevices;
  if (!v9)
  {
    v10 = &sRegisteredVideoDevices;
  }

  v11 = *v10;
  v28 = a1;
  v12 = [NSClassFromString(a1) _devicesWithPriorRegisteredDevices:*v10];
  UniqueIDsForDevices = _getUniqueIDsForDevices(v11);
  v14 = _getUniqueIDsForDevices(v12);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = [v12 countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v39 + 1) + 8 * i);
        if (([UniqueIDsForDevices containsObject:{objc_msgSend(v19, "uniqueID", v28, lock)}] & 1) == 0 && objc_msgSend(v19, "isConnected"))
        {
          [v7 addObject:v19];
        }
      }

      v16 = [v12 countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v16);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = [v11 countByEnumeratingWithState:&v34 objects:v33 count:{16, v28}];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v11);
        }

        v24 = *(*(&v34 + 1) + 8 * j);
        if (([v14 containsObject:{objc_msgSend(v24, "uniqueID")}] & 1) == 0)
        {
          [v8 addObject:v24];
        }
      }

      v21 = [v11 countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v21);
  }

  v25 = [v29 isEqualToString:@"AVCaptureFigAudioDevice"];
  v26 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v12];
  v27 = &sRegisteredAudioDevices;
  if (!v25)
  {
    v27 = &sRegisteredVideoDevices;
  }

  *v27 = v26;

  os_unfair_lock_unlock(lock);
  if (v31)
  {
    *v31 = v7;
  }

  if (v32)
  {
    *v32 = v8;
  }
}

void *_getUniqueIDsForDevices(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) uniqueID];
        if (v7)
        {
          [v2 addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v4);
  }

  return v2;
}

Class __getCMContinuityCaptureCapabilitiesClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!CMContinuityCaptureCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CMContinuityCaptureCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E786F6E0;
    v5 = 0;
    CMContinuityCaptureCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CMContinuityCaptureCoreLibraryCore_frameworkLibrary)
  {
    __getCMContinuityCaptureCapabilitiesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CMContinuityCaptureCapabilities");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCMContinuityCaptureCapabilitiesClass_block_invoke_cold_1();
  }

  getCMContinuityCaptureCapabilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CMContinuityCaptureCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CMContinuityCaptureCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A91EE9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91EEDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91EF3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A91EF8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sioNotificationHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __sioNotificationHandler_block_invoke;
  v6[3] = &unk_1E786EFD0;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a5;
  return [a2 performBlockOnSessionNotifyingThread:v6];
}

uint64_t AVCaptureMetadataObjectsOnly()
{
  if (AVCaptureMetadataObjectsOnly_onceToken != -1)
  {
    AVCaptureMetadataObjectsOnly_cold_1();
  }

  return AVCaptureMetadataObjectsOnly_answer;
}

id AVIdentifierForObject(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 initWithFormat:@"<%@: %p %lld>", v4, a1, mach_absolute_time()];

  return v5;
}

uint64_t AVMetadataObjectCreateBoxedMetadataFromObjectAndFormatDescription(void *a1, uint64_t a2, uint64_t *a3)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v9 = 0;
  v6 = AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription(a1, a2, &v9);
  v7 = v6;
  if (a3 && !v6)
  {
    [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0];
    *a3 = AVErrorForClientProgrammingError();
  }

  return v7;
}

uint64_t AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription(void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v8 = [v10 stringWithFormat:@"Metadata value is an instance of %@, but there is no format description", NSStringFromClass(v11)];
    goto LABEL_27;
  }

  if (FigBoxedMetadataCreateForConstruction())
  {
    AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_1();
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = [v6 stringWithFormat:@"Metadata value is an instance of %@, but format description does not properly describe face data", NSStringFromClass(v7)];
    [AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDetectedFaces() objectForKey:*MEMORY[0x1E6962938]];
    LocalIDForMetadataIdentifyingFactors = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
    if (!LocalIDForMetadataIdentifyingFactors)
    {
      AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_10();
      goto LABEL_27;
    }

    if (MEMORY[0x1AC5828D0](0, LocalIDForMetadataIdentifyingFactors, [a1 faceID]))
    {
      AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_2();
    }

    else
    {
      [AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDetectedFaces() objectForKey:*MEMORY[0x1E6962930]];
      if (!FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors())
      {
        AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_9();
        goto LABEL_27;
      }

      [a1 bounds];
      CGRectStandardize(v13);
      if (FigBoxedMetadataAppendValue())
      {
        AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_3();
      }

      else
      {
        if (![a1 hasRollAngle])
        {
          goto LABEL_32;
        }

        [AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDetectedFaces() objectForKey:*MEMORY[0x1E6962940]];
        if (!FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors())
        {
          AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_8();
          goto LABEL_27;
        }

        [a1 rollAngle];
        if (FigBoxedMetadataAppendFloat32())
        {
          AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_4();
        }

        else
        {
          if (![a1 hasYawAngle])
          {
            goto LABEL_33;
          }

LABEL_32:
          if (!AVMetadataItemGetLocalIDForIdentifierInFormatDescription(a2, *MEMORY[0x1E6962948]))
          {
            AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_7();
            goto LABEL_27;
          }

          [a1 yawAngle];
          if (FigBoxedMetadataAppendFloat32())
          {
            AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_5();
          }

          else
          {
LABEL_33:
            if (FigBoxedMetadataEndConstruction())
            {
              AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_6();
            }
          }
        }
      }
    }
  }

  v8 = 0;
LABEL_27:
  if (a3)
  {
    *a3 = v8;
  }

  return 0;
}

uint64_t AVMetadataItemGetLocalIDForIdentifierInFormatDescription(uint64_t a1, uint64_t a2)
{
  [AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDetectedFaces() objectForKey:a2];

  return FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
}

AVMetadataCatHeadObject *AVMetadataMakeMetadataObjectFromBoxedMetadata(uint64_t a1, void *a2, CGPoint *a3, uint64_t a4)
{
  if ([a2 isEqualToString:*MEMORY[0x1E69602D0]])
  {
    v46 = *a3;
    x = a3[1].x;
    v40 = *a4;
    v43 = *(a4 + 16);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v56.origin = *MEMORY[0x1E695F050];
    v56.size = v8;
    FigBoxedMetadataGetFormatDescription();
    if (FigBoxedMetadataGetNumberOfItems() < 1)
    {
LABEL_16:
      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_9();
    }

    else
    {
      v9 = 0;
      v39 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0.0;
      v15 = 0.0;
      do
      {
        AVMetadataItemIdentifierForItemIndex();
        if (FigCFEqual())
        {
          while (1)
          {
            LODWORD(v12) = FigBoxedMetadataGetValueOfItemAtIndexAsSInt32();
            if (++v9 >= FigBoxedMetadataGetNumberOfItems())
            {
              break;
            }

            AVMetadataItemIdentifierForItemIndex();
            if (!FigCFEqual())
            {
              v12 = v12;
              v13 = 1;
              goto LABEL_8;
            }
          }

          v12 = v12;
          goto LABEL_22;
        }

LABEL_8:
        if (FigCFEqual())
        {
          AVMetadataItemBoundsFromBoxedMetadataForItemIndex(a1, v9, &v56);
          v11 = v16;
        }

        else if (FigCFEqual())
        {
          FigBoxedMetadataGetValueOfItemAtIndexAsFloat32();
          v15 = v17;
          v10 = 1;
        }

        else if (FigCFEqual())
        {
          FigBoxedMetadataGetValueOfItemAtIndexAsFloat32();
          v14 = v18;
          v39 = 1;
        }

        ++v9;
      }

      while (v9 < FigBoxedMetadataGetNumberOfItems());
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_22:
      if (v11)
      {
        v27 = [AVMetadataFaceObject alloc];
        v54 = v46;
        v55 = x;
        v52 = v40;
        v53 = v43;
        v28 = [(AVMetadataFaceObject *)v27 initWithFaceID:v12 hasRollAngle:v10 & 1 rollAngle:v39 & 1 hasYawAngle:0 yawAngle:&v54 hasPitchAngle:&v52 pitchAngle:v15 time:v14 duration:0.0 bounds:*&v56.origin, *&v56.size];
        return v28;
      }

      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_10();
    }

    return 0;
  }

  if ([a2 isEqualToString:*MEMORY[0x1E69602D8]])
  {
    v47 = *a3;
    v50 = a3[1].x;
    v41 = *a4;
    v44 = *(a4 + 16);
    v57[0] = -1;
    v19 = *(MEMORY[0x1E695F050] + 16);
    v56.origin = *MEMORY[0x1E695F050];
    v56.size = v19;
    AVMetadataItemIDAndBoundsFromBoxedMetadata(a1, *MEMORY[0x1E6962950], *MEMORY[0x1E6962958], v57, &v56);
    v20 = v57[0];
    y = v56.origin.y;
    v21 = v56.origin.x;
    height = v56.size.height;
    width = v56.size.width;
    IsNull = CGRectIsNull(v56);
    if (v20 < 0)
    {
      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_8();
    }

    else
    {
      if (!IsNull)
      {
        v26 = AVMetadataHumanBodyObject;
LABEL_32:
        v54 = v47;
        v55 = v50;
        v52 = v41;
        v53 = v44;
        v28 = [[v26 alloc] initWithBodyID:v20 time:&v54 duration:&v52 bounds:{v21, y, width, height}];
        return v28;
      }

      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_7();
    }
  }

  else if ([a2 isEqualToString:*MEMORY[0x1E69602C0]])
  {
    v47 = *a3;
    v50 = a3[1].x;
    v41 = *a4;
    v44 = *(a4 + 16);
    v57[0] = -1;
    v29 = *(MEMORY[0x1E695F050] + 16);
    v56.origin = *MEMORY[0x1E695F050];
    v56.size = v29;
    AVMetadataItemIDAndBoundsFromBoxedMetadata(a1, *MEMORY[0x1E6962910], *MEMORY[0x1E6962918], v57, &v56);
    v20 = v57[0];
    y = v56.origin.y;
    v21 = v56.origin.x;
    height = v56.size.height;
    width = v56.size.width;
    v30 = CGRectIsNull(v56);
    if (v20 < 0)
    {
      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_6();
    }

    else
    {
      if (!v30)
      {
        v26 = AVMetadataCatBodyObject;
        goto LABEL_32;
      }

      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_5();
    }
  }

  else if ([a2 isEqualToString:*MEMORY[0x1E69602C8]])
  {
    v47 = *a3;
    v50 = a3[1].x;
    v41 = *a4;
    v44 = *(a4 + 16);
    v57[0] = -1;
    v31 = *(MEMORY[0x1E695F050] + 16);
    v56.origin = *MEMORY[0x1E695F050];
    v56.size = v31;
    AVMetadataItemIDAndBoundsFromBoxedMetadata(a1, *MEMORY[0x1E6962920], *MEMORY[0x1E6962928], v57, &v56);
    v20 = v57[0];
    y = v56.origin.y;
    v21 = v56.origin.x;
    height = v56.size.height;
    width = v56.size.width;
    v32 = CGRectIsNull(v56);
    if (v20 < 0)
    {
      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_4();
    }

    else
    {
      if (!v32)
      {
        v26 = AVMetadataDogBodyObject;
        goto LABEL_32;
      }

      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_3();
    }
  }

  else if ([a2 isEqualToString:*MEMORY[0x1E69602E0]])
  {
    v48 = *a3;
    v51 = a3[1].x;
    v42 = *a4;
    v45 = *(a4 + 16);
    v57[0] = 0;
    v34 = *(MEMORY[0x1E695F050] + 16);
    v56.origin = *MEMORY[0x1E695F050];
    v56.size = v34;
    AVMetadataItemIDAndBoundsFromBoxedMetadata(a1, *MEMORY[0x1E69629D0], *MEMORY[0x1E69629C8], v57, &v56);
    v35 = v57[0];
    origin = v56.origin;
    size = v56.size;
    v38 = CGRectIsNull(v56);
    if (v35 < 0)
    {
      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_2();
    }

    else
    {
      if (!v38)
      {
        v54 = v48;
        v55 = v51;
        v52 = v42;
        v53 = v45;
        v28 = [[AVMetadataSalientObject alloc] initWithObjectID:v35 time:&v54 duration:&v52 bounds:origin, size];
        return v28;
      }

      AVMetadataMakeMetadataObjectFromBoxedMetadata_cold_1();
    }
  }

  else
  {
    if ([a2 isEqualToString:@"mdta/com.apple.quicktime.detected-cat-head"])
    {
      v56.origin = *a3;
      v56.size.width = a3[1].x;
      v54 = *a4;
      v55 = *(a4 + 16);
      return AVMetadataItemMakeCatHeadObjectFromBoxedMetadata(a1, &v56, &v54);
    }

    if ([a2 isEqualToString:@"mdta/com.apple.quicktime.detected-dog-head"])
    {
      v56.origin = *a3;
      v56.size.width = a3[1].x;
      v54 = *a4;
      v55 = *(a4 + 16);
      return AVMetadataItemMakeDogHeadObjectFromBoxedMetadata(a1, &v56, &v54);
    }
  }

  return 0;
}

AVMetadataCatHeadObject *AVMetadataItemMakeCatHeadObjectFromBoxedMetadata(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v17 = -1;
  v5 = *(MEMORY[0x1E695F050] + 16);
  v16.origin = *MEMORY[0x1E695F050];
  v16.size = v5;
  AVMetadataItemIDAndBoundsFromBoxedMetadata(a1, @"fiel/com.apple.quicktime.detected-cat-head.object-id", @"fiel/com.apple.quicktime.detected-cat-head.bounds", &v17, &v16);
  v6 = v17;
  origin = v16.origin;
  size = v16.size;
  IsNull = CGRectIsNull(v16);
  if (v6 < 0)
  {
    AVMetadataItemMakeCatHeadObjectFromBoxedMetadata_cold_2();
  }

  else
  {
    if (!IsNull)
    {
      v10 = [AVMetadataCatHeadObject alloc];
      v14 = *a2;
      v15 = *(a2 + 2);
      v12 = *a3;
      v13 = *(a3 + 2);
      return [(AVMetadataCatHeadObject *)v10 initWithObjectID:v6 time:&v14 duration:&v12 bounds:origin, size];
    }

    AVMetadataItemMakeCatHeadObjectFromBoxedMetadata_cold_1();
  }

  return 0;
}

AVMetadataDogHeadObject *AVMetadataItemMakeDogHeadObjectFromBoxedMetadata(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v17 = -1;
  v5 = *(MEMORY[0x1E695F050] + 16);
  v16.origin = *MEMORY[0x1E695F050];
  v16.size = v5;
  AVMetadataItemIDAndBoundsFromBoxedMetadata(a1, @"fiel/com.apple.quicktime.detected-dog-head.object-id", @"fiel/com.apple.quicktime.detected-dog-head.bounds", &v17, &v16);
  v6 = v17;
  origin = v16.origin;
  size = v16.size;
  IsNull = CGRectIsNull(v16);
  if (v6 < 0)
  {
    AVMetadataItemMakeDogHeadObjectFromBoxedMetadata_cold_2();
  }

  else
  {
    if (!IsNull)
    {
      v10 = [AVMetadataDogHeadObject alloc];
      v14 = *a2;
      v15 = *(a2 + 2);
      v12 = *a3;
      v13 = *(a3 + 2);
      return [(AVMetadataDogHeadObject *)v10 initWithObjectID:v6 time:&v14 duration:&v12 bounds:origin, size];
    }

    AVMetadataItemMakeDogHeadObjectFromBoxedMetadata_cold_1();
  }

  return 0;
}

uint64_t AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDetectedFaces()
{
  v0 = *MEMORY[0x1E6960298];
  v1 = *MEMORY[0x1E6962930];
  v6[0] = *MEMORY[0x1E6962938];
  v6[1] = v1;
  v2 = *MEMORY[0x1E6960248];
  v7[0] = v0;
  v7[1] = v2;
  v3 = *MEMORY[0x1E6960208];
  v4 = *MEMORY[0x1E6962948];
  v6[2] = *MEMORY[0x1E6962940];
  v6[3] = v4;
  v7[2] = v3;
  v7[3] = v3;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

uint64_t AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDogBodyObject()
{
  v0 = *MEMORY[0x1E6960298];
  v1 = *MEMORY[0x1E6962928];
  v4[0] = *MEMORY[0x1E6962920];
  v4[1] = v1;
  v2 = *MEMORY[0x1E6960248];
  v5[0] = v0;
  v5[1] = v2;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
}

uint64_t AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfSalientObject()
{
  v0 = *MEMORY[0x1E6960298];
  v1 = *MEMORY[0x1E69629C8];
  v4[0] = *MEMORY[0x1E69629D0];
  v4[1] = v1;
  v2 = *MEMORY[0x1E6960248];
  v5[0] = v0;
  v5[1] = v2;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
}

uint64_t AVMetadataItemIdentifierForItemIndex()
{
  if (!FigBoxedMetadataGetLocalIDOfItemAtIndex())
  {
    AVMetadataItemIdentifierForItemIndex_cold_2();
    return 0;
  }

  result = FigMetadataFormatDescriptionGetIdentifierForLocalID();
  if (!result)
  {
    AVMetadataItemIdentifierForItemIndex_cold_1();
    return 0;
  }

  return result;
}

__n128 AVMetadataItemBoundsFromBoxedMetadataForItemIndex(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FigBoxedMetadataGetValueOfItemAtIndex();
  result = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 16);
  *a3 = *MEMORY[0x1E695F050];
  a3[1] = v5;
  return result;
}

uint64_t AVMetadataItemIDAndBoundsFromBoxedMetadata(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _OWORD *a5)
{
  FigBoxedMetadataGetFormatDescription();
  result = FigBoxedMetadataGetNumberOfItems();
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      AVMetadataItemIdentifierForItemIndex();
      if (FigCFEqual())
      {
        *a4 = FigBoxedMetadataGetValueOfItemAtIndexAsSInt32();
      }

      else if (FigCFEqual())
      {
        AVMetadataItemBoundsFromBoxedMetadataForItemIndex(a1, i, a5);
      }

      result = FigBoxedMetadataGetNumberOfItems();
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return objc_opt_isKindOfClass();
}

os_log_t __getCameraCaptureLegacyLog_block_invoke_3()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog_3 = result;
  return result;
}

uint64_t AVMetadataObjectAdjustBaseClassProperties(uint64_t a1, CGRect *a2, double a3, double a4, double a5, double a6)
{
  v6 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, *a1), vceqq_f64(*(a1 + 16), *(a1 + 16)))));
  v6.i16[0] = vmaxv_u16(v6);
  v7 = (v6.i32[0] ^ 1) & 1;
  if (v7 == 1)
  {
    v9 = *(a1 + 16);
    *&v11.a = *a1;
    *&v11.c = v9;
    *&v11.tx = *(a1 + 32);
    v12 = CGRectApplyAffineTransform(*&a3, &v11);
    if (a2)
    {
      *a2 = v12;
    }
  }

  return v7;
}

uint64_t __figBarcodeTypeToAVFMachineReadableCodeType_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  result = [v0 initWithObjectsAndKeys:{@"org.gs1.UPC-E", *MEMORY[0x1E69C6940], @"org.iso.Code39", *MEMORY[0x1E69C6880], @"org.iso.Code39Mod43", *MEMORY[0x1E69C6888], @"org.gs1.EAN-13", *MEMORY[0x1E69C68B8], @"org.gs1.EAN-8", *MEMORY[0x1E69C68C0], @"com.intermec.Code93", *MEMORY[0x1E69C68A0], @"org.iso.Code128", *MEMORY[0x1E69C6878], @"org.iso.QRCode", *MEMORY[0x1E69C6938], @"org.iso.Aztec", *MEMORY[0x1E69C6868], @"org.iso.PDF417", *MEMORY[0x1E69C6910], @"org.ansi.Interleaved2of5", *MEMORY[0x1E69C68E0], @"org.gs1.ITF14", *MEMORY[0x1E69C68F0], @"org.iso.DataMatrix", *MEMORY[0x1E69C68B0], @"Codabar", *MEMORY[0x1E69C6870], @"org.gs1.GS1DataBar", *MEMORY[0x1E69C68C8], @"org.gs1.GS1DataBarExpanded", *MEMORY[0x1E69C68D0], @"org.gs1.GS1DataBarLimited", *MEMORY[0x1E69C68D8], @"org.iso.MicroQR", *MEMORY[0x1E69C6908], @"org.iso.MicroPDF417", *MEMORY[0x1E69C6900], 0}];
  figBarcodeTypeToAVFMachineReadableCodeType_sFigBarcodeToAVFMRCTypes = result;
  return result;
}

void sub_1A92050E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A92052FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A92054EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9205E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A9206500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A92068F0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void avpds_proprietaryDefaultsSourceNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __avpds_proprietaryDefaultsSourceNotificationHandler_block_invoke;
  v7[3] = &unk_1E786EAA8;
  v7[4] = a3;
  v7[5] = a5;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], v7);
  v6 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v6);
}

uint64_t __avpds_proprietaryDefaultsSourceNotificationHandler_block_invoke(uint64_t a1)
{
  v2 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 _handleNotification:v3 payload:v4];
}

void *avcmcs_constituentDeviceFormatFromVirtualDeviceFormat(void *a1, void *a2)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a2 formats];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v4)
  {
    return a1;
  }

  v5 = v4;
  v6 = *v13;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v13 != v6)
    {
      objc_enumerationMutation(v3);
    }

    v8 = *(*(&v12 + 1) + 8 * v7);
    v9 = [v8 isVideoBinned];
    if (v9 == [a1 isVideoBinned])
    {
      if (CFEqual([v8 formatDescription], objc_msgSend(a1, "formatDescription")))
      {
        return v8;
      }
    }

    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return a1;
    }
  }
}

__n128 __avcmcs_computeSystemPressureCost_block_invoke()
{
  qword_1EB3851E8 = &unk_1F1CEA4B8;
  qword_1EB3851F0 = 0x457A000000000000;
  qword_1EB3851F8 = 0;
  unk_1EB385200 = 0;
  qword_1EB385208 = &unk_1F1CEA4D0;
  qword_1EB385210 = 0x459C400000000000;
  qword_1EB385218 = 0;
  unk_1EB385220 = 0;
  qword_1EB385228 = &unk_1F1CEA4E8;
  *algn_1EB385230 = xmmword_1A92AB860;
  qword_1EB385240 = 0x45825000BFB9999ALL;
  qword_1EB385248 = &unk_1F1CEA500;
  *algn_1EB385250 = xmmword_1A92AB870;
  qword_1EB385260 = 0x45223666BF67F62BLL;
  qword_1EB385268 = &unk_1F1CEA518;
  *algn_1EB385270 = xmmword_1A92AB880;
  qword_1EB385280 = 0x4569D000BF88F5C3;
  qword_1EB385288 = &unk_1F1CEA530;
  qword_1EB385290 = 0x453B800000000000;
  qword_1EB385298 = 0;
  unk_1EB3852A0 = 0;
  qword_1EB3852A8 = &unk_1F1CEA548;
  result = xmmword_1A92AB880;
  *algn_1EB3852B0 = xmmword_1A92AB880;
  qword_1EB3852C0 = 0x4569D000BF88F5C3;
  return result;
}

void OUTLINED_FUNCTION_6_0()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0;
  *(v0 - 96) = 0;
}

uint64_t fvd_prioritizeUsingCameraHistory(void *a1, void *a2, void *a3, char a4, char a5, int a6, void *a7)
{
  result = [a1 count];
  if (result)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    result = [a3 countByEnumeratingWithState:&v23 objects:v22 count:16];
    v20 = result;
    if (result)
    {
      v19 = *v24;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        if ([a1 count])
        {
          for (i = 0; i < [a1 count]; ++i)
          {
            v15 = [a1 objectAtIndexedSubscript:i];
            v16 = v15;
            if (((a4 & 1) != 0 || ([v15 isSuspended] & 1) == 0) && ((a5 & 1) != 0 || objc_msgSend(v16, "specialDeviceType") != 1) && objc_msgSend(objc_msgSend(v13, "objectForKeyedSubscript:", @"DeviceUID"), "isEqualToString:", v16[9]))
            {
              if ([v16 specialDeviceType] == 2)
              {
                if (!a6)
                {
                  goto LABEL_22;
                }
              }

              else if ([v16 specialDeviceType] != 3 || (a6 & 1) == 0)
              {
LABEL_22:
                [a2 addObject:v16];
                [a1 removeObjectAtIndex:i];
                break;
              }

              if (fvd_deviceIsPresentInCameraList(v16, a7))
              {
                goto LABEL_22;
              }
            }
          }
        }

        result = [a1 count];
        if (!result)
        {
          break;
        }

        if (++v12 == v20)
        {
          result = [a3 countByEnumeratingWithState:&v23 objects:v22 count:16];
          v20 = result;
          if (result)
          {
            goto LABEL_4;
          }

          return result;
        }
      }
    }
  }

  return result;
}

double fvd_validatedRectOfInterestForMinRectOfInterestSize(_BYTE *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  *a1 = 0;
  v9 = (a2 - a6) * 0.5;
  if (a2 <= a6)
  {
    v9 = 0.0;
  }

  v10 = (a3 - a7) * 0.5;
  if (a3 <= a7)
  {
    v10 = 0.0;
  }

  if (v9 != 0.0 || v10 != 0.0)
  {
    a4 = a4 - v9;
    v11 = a5 - v10;
    if (a4 >= 0.0)
    {
      v12 = 0.0;
      if (a2 + a4 > 1.0)
      {
        v12 = 1.0 - (a2 + a4);
      }
    }

    else
    {
      v12 = -a4;
    }

    if (v11 >= 0.0)
    {
      v13 = 0.0;
      if (a3 + v11 > 1.0)
      {
        v13 = 1.0 - (a3 + v11);
      }
    }

    else
    {
      v13 = -v11;
    }

    if (v12 != 0.0 || v13 != 0.0)
    {
      a4 = a4 + v12;
      *a1 = 1;
    }
  }

  return a4;
}

void sub_1A9216360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A92164D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1A9216CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Block_object_dispose((v32 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A9217268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9217B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9218424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose((v64 - 240), 8);
  _Block_object_dispose((v64 - 208), 8);
  _Block_object_dispose((v64 - 176), 8);
  _Block_object_dispose((v64 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A9219950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 184), 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1A921A704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose((v66 - 240), 8);
  _Block_object_dispose((v66 - 208), 8);
  _Block_object_dispose((v66 - 176), 8);
  _Block_object_dispose((v66 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A921B680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_1A921C970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A921D45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A921D818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A921E024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 240), 8);
  _Block_object_dispose((v43 - 176), 8);
  _Block_object_dispose((v43 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A921E900(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A921FD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A92202C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A922065C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A9220A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A9220D3C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A9221550(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A922231C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A922287C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9222A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9222C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A92233E8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A9224638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A9225948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A922688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A92273A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 256), 8);
  _Block_object_dispose((v36 - 224), 8);
  _Block_object_dispose((v36 - 192), 8);
  _Block_object_dispose((v36 - 160), 8);
  _Block_object_dispose((v36 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A9227664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9228288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9228798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Block_object_dispose((v31 - 112), 8);
  _Block_object_dispose((v31 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A9229860(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A9229CCC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A922A0A8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A922A6D4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A922ACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A922BF14(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A922C200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1A922CB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A922CCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A922CE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A922DE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A922E24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A922F808(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A92347D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A923644C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9236B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 224), 8);
  _Block_object_dispose((v36 - 192), 8);
  _Block_object_dispose((v36 - 160), 8);
  _Block_object_dispose((v36 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A9236FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1A9237624(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t fvd_deviceIsPresentInCameraList(uint64_t a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [a2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(a2);
        }

        if ([objc_msgSend(*(*(&v9 + 1) + 8 * v7) objectForKeyedSubscript:{@"DeviceUID", "isEqualToString:", *(a1 + 72)}])
        {
          return 1;
        }

        ++v7;
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

os_log_t __getCameraCaptureLegacyLog_block_invoke_4()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog_4 = result;
  return result;
}

float AVGestaltGetFloatAnswer(uint64_t a1)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v2 = [sAVGestaltFloatDataBase objectForKeyedSubscript:a1];
  if (!v2)
  {
    return NAN;
  }

  [v2 floatValue];
  return result;
}

uint64_t AVGestaltGetStringAnswer(uint64_t a1)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v2 = sAVGestaltStringDataBase;

  return [v2 objectForKeyedSubscript:a1];
}

uint64_t AVGestaltGetBoolAnswerWithError(uint64_t a1, uint64_t *a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v4 = [sAVGestaltBoolDataBase objectForKeyedSubscript:a1];
  v5 = v4;
  if (a2)
  {
    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    }

    *a2 = v6;
  }

  return [v5 BOOLValue];
}

uint64_t AVGestaltGetIntegerAnswerWithError(uint64_t a1, uint64_t *a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v4 = [sAVGestaltIntegerDataBase objectForKeyedSubscript:a1];
  v5 = v4;
  if (a2)
  {
    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    }

    *a2 = v6;
  }

  return [v5 integerValue];
}

uint64_t AVGestaltGetFloatAnswerWithError(uint64_t a1, uint64_t *a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v4 = [sAVGestaltFloatDataBase objectForKeyedSubscript:a1];
  v5 = v4;
  if (a2)
  {
    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    }

    *a2 = v6;
  }

  return [v5 floatValue];
}

uint64_t AVGestaltGetStringAnswerWithError(uint64_t a1, uint64_t *a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v4 = [sAVGestaltStringDataBase objectForKeyedSubscript:a1];
  v5 = v4;
  if (a2)
  {
    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    }

    *a2 = v6;
  }

  return v5;
}

uint64_t AVGestaltGetBoolAnswerWithDefault(uint64_t a1, uint64_t a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v4 = [sAVGestaltBoolDataBase objectForKeyedSubscript:a1];
  if (!v4)
  {
    return a2;
  }

  return [v4 BOOLValue];
}

BOOL AVGestaltIsQuestionValid(uint64_t a1, int *a2)
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  if ([sAVGestaltBoolDataBase objectForKeyedSubscript:a1])
  {
    v4 = 0;
    goto LABEL_7;
  }

  if ([sAVGestaltIntegerDataBase objectForKeyedSubscript:a1])
  {
    v4 = 1;
LABEL_7:
    result = 1;
    if (!a2)
    {
      return result;
    }

    goto LABEL_8;
  }

  if ([sAVGestaltFloatDataBase objectForKeyedSubscript:a1])
  {
    result = 1;
    v4 = 2;
    if (!a2)
    {
      return result;
    }

LABEL_8:
    *a2 = v4;
    return result;
  }

  v6 = [sAVGestaltStringDataBase objectForKeyedSubscript:a1];
  v7 = v6 == 0;
  result = v6 != 0;
  if (v7)
  {
    v4 = -1;
  }

  else
  {
    v4 = 3;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  return result;
}