@interface PanoramaProcessor
+ (void)prewarm;
- (CGRect)getCropRect;
- (float)getCurrentPanningSpeed;
- (id)encodedFinalAsset;
- (id)init:(id *)a3;
- (int)_addLastSlice;
- (int)_commonInitWithContext:(id)a3 sliceWidth:(unint64_t)a4 sliceHeight:(unint64_t)a5 bitDepth:(int)a6;
- (int)_createDummyOutputWidth:(unint64_t)a3 height:(unint64_t)a4;
- (int)addFrame:(opaqueCMSampleBuffer *)a3 registrationCallback:(id)a4;
- (int)finishProcessing;
- (int)prepareToProcess:(unsigned int)a3;
- (int)resetState;
- (int)setDirection:(int)a3;
- (int)setParameters:(id *)a3;
- (uint64_t)addFrameForStitching:(double)a3 withInitialHomography:(double)a4 registrationCallback:(uint64_t)a5;
- (void)_setPreviousFrameDroppedFlag:(opaqueCMSampleBuffer *)a3 dropped:(BOOL)a4;
- (void)dealloc;
@end

@implementation PanoramaProcessor

- (void)dealloc
{
  toACTFramework = self->_toACTFramework;
  if (toACTFramework)
  {
    CVPixelBufferRelease(toACTFramework);
    self->_toACTFramework = 0;
  }

  vtTransferSession = self->_vtTransferSession;
  if (vtTransferSession)
  {
    VTPixelTransferSessionInvalidate(vtTransferSession);
    CFRelease(self->_vtTransferSession);
    self->_vtTransferSession = 0;
  }

  vtRotationSession = self->_vtRotationSession;
  if (vtRotationSession)
  {
    VTPixelRotationSessionInvalidate(vtRotationSession);
    CFRelease(self->_vtRotationSession);
    self->_vtRotationSession = 0;
  }

  downsampledRegistrationPool = self->_downsampledRegistrationPool;
  if (downsampledRegistrationPool)
  {
    CVPixelBufferPoolRelease(downsampledRegistrationPool);
    self->_downsampledRegistrationPool = 0;
  }

  inputSlicePool = self->_inputSlicePool;
  if (inputSlicePool)
  {
    CVPixelBufferPoolRelease(inputSlicePool);
    self->_inputSlicePool = 0;
  }

  v8.receiver = self;
  v8.super_class = PanoramaProcessor;
  [(PanoramaProcessor *)&v8 dealloc];
}

- (void)_setPreviousFrameDroppedFlag:(opaqueCMSampleBuffer *)a3 dropped:(BOOL)a4
{
  v4 = a4;
  v6 = CMGetAttachment(a3, @"MetadataDictionary", 0);
  if (v6)
  {
    v10 = v6;
    value = objc_msgSend_mutableCopy(v6, v7, v8, v9);
  }

  else
  {
    value = objc_opt_new();
  }

  if (v4)
  {
    objc_msgSend_setObject_forKeyedSubscript_(value, v11, MEMORY[0x277CBEC38], @"PreviousFrameDropped");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(value, v11, MEMORY[0x277CBEC28], @"PreviousFrameDropped");
  }

  CMSetAttachment(a3, @"MetadataDictionary", value, 1u);
}

- (int)addFrame:(opaqueCMSampleBuffer *)a3 registrationCallback:(id)a4
{
  v97 = a4;
  pixelBufferOut = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  CVPixelBufferGetWidth(ImageBuffer);
  CVPixelBufferGetHeight(ImageBuffer);
  v9 = CMGetAttachment(a3, @"MetadataDictionary", 0);
  if (!v9)
  {
    v9 = objc_opt_new();
  }

  v10 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v7, self->_nbFramesReceived, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v11, v10, @"SliceNumber");

  if (self->_nbFramesReceived)
  {
    v13 = &unk_284F106E8;
  }

  else
  {
    v13 = &unk_284F10718;
  }

  objc_msgSend_setObject_forKeyedSubscript_(v9, v12, v13, @"SliceType");
  if (self->_nbFramesReceived)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v14, MEMORY[0x277CBEC38], @"SkipFrame");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v14, MEMORY[0x277CBEC28], @"SkipFrame");
  }

  ++self->_nbFramesReceived;
  v15 = CMGetAttachment(a3, @"ClientSpecifiedMetadata", 0);
  v19 = objc_msgSend_mutableCopy(v15, v16, v17, v18);

  v20 = CMGetAttachment(ImageBuffer, @"MetadataDictionary", 0);
  v24 = v20;
  if (v20 && objc_msgSend_count(v20, v21, v22, v23))
  {
    v26 = objc_msgSend_mutableCopy(v24, v21, v25, v23);
    v27 = v26;
    if (v19)
    {
      objc_msgSend_addEntriesFromDictionary_(v26, v21, v19, v23);
    }
  }

  else
  {
    v27 = v19;
  }

  v96 = v24;
  v30 = objc_msgSend_objectForKeyedSubscript_(v27, v21, *MEMORY[0x277CF5C30], v23);
  if (!v30)
  {
    v30 = *MEMORY[0x277CF3CD8];
  }

  v103 = -559038737;
  v31 = MEMORY[0x277CCAC80];
  v32 = objc_msgSend_objectForKeyedSubscript_(self->tuningParameters, v28, @"DefaultSensorIDs", v29);
  v95 = v30;
  v35 = objc_msgSend_objectForKeyedSubscript_(v32, v33, v30, v34);
  v38 = objc_msgSend_scannerWithString_(v31, v36, v35, v37);
  objc_msgSend_scanHexInt_(v38, v39, &v103, v40);

  v43 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v41, v103, v42);
  v44 = *MEMORY[0x277CF5168];
  objc_msgSend_setObject_forKeyedSubscript_(v27, v45, v43, *MEMORY[0x277CF5168]);

  v48 = objc_msgSend_objectForKey_(v27, v46, v44, v47);
  self->_sensorID = objc_msgSend_unsignedIntValue(v48, v49, v50, v51);

  v54 = objc_msgSend_objectForKey_(v9, v52, @"SkipFrame", v53);
  v58 = v54;
  if (v54 && objc_msgSend_BOOLValue(v54, v55, v56, v57))
  {
    ++self->_nbFramesSkipped;
    v61 = objc_msgSend_objectForKeyedSubscript_(v9, v59, @"SliceNumber", v60);
    v65 = objc_msgSend_intValue(v61, v62, v63, v64);
    HostTime = ACT_getHostTime();
    CMSampleBufferGetPresentationTimeStamp(&time, a3);
    Seconds = CMTimeGetSeconds(&time);
    panoLog(32, "FrameID:%04d time %.3f: frame skipped PTS:%.3f , total frames skipped %zu\n", v65, HostTime, Seconds, self->_nbFramesSkipped);
    SampleBuffer = 0;
    v69 = 1;
  }

  else
  {
    CVPixelBufferPoolCreatePixelBuffer(0, self->_inputSlicePool, &pixelBufferOut);
    scalePixelBuffer(self->_vtTransferSession, ImageBuffer, pixelBufferOut);
    ++self->_poolOccupancy;
    SampleBuffer = CreateSampleBuffer();
    CVPixelBufferRelease(pixelBufferOut);
    v73 = objc_msgSend_copy(v9, v70, v71, v72);
    CMSetAttachment(SampleBuffer, @"MetadataDictionary", v73, 1u);

    v74 = pixelBufferOut;
    v61 = objc_msgSend_copy(v27, v75, v76, v77);
    CMSetAttachment(v74, @"MetadataDictionary", v61, 1u);
    v69 = 0;
  }

  if (a3)
  {
    CFRelease(a3);
  }

  v80 = objc_msgSend_objectForKeyedSubscript_(v9, v78, @"SliceType", v79);
  v84 = objc_msgSend_intValue(v80, v81, v82, v83);

  v87 = objc_msgSend_objectForKeyedSubscript_(v9, v85, @"SliceNumber", v86);
  v91 = objc_msgSend_intValue(v87, v88, v89, v90);

  objc_msgSend_update_sliceType_sliceID_(self->_gyroStage, v92, v27, v84, v91);
  if ((v69 & 1) == 0)
  {
    processingQueue = self->_processingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23C463530;
    block[3] = &unk_278BBD968;
    block[4] = self;
    v99 = v9;
    v101 = SampleBuffer;
    v100 = v97;
    dispatch_async(processingQueue, block);
  }

  return 0;
}

- (int)finishProcessing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23C475548;
  v5[3] = &unk_278BBD990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)_createDummyOutputWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = *MEMORY[0x277CC4DE8];
  v17[0] = MEMORY[0x277CBEC10];
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v17, &v16, 1);
  v8 = objc_opt_new();
  CVPixelFormat = self->_CVPixelFormat;
  v10 = v7;
  CVPixelBufferCreate(0, a3, a4, CVPixelFormat, v10, &v15);
  objc_msgSend_setPixelBuffer_(v8, v11, v15, v12);
  output = self->_output;
  self->_output = v8;

  return 0;
}

- (int)prepareToProcess:(unsigned int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23C475640;
  block[3] = &unk_278BBD9B8;
  v7 = a3;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(processingQueue, block);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (id)encodedFinalAsset
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_23C463B38;
  v11 = sub_23C463B48;
  v12 = objc_opt_new();
  processingQueue = self->_processingQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23C47585C;
  v6[3] = &unk_278BBD990;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(processingQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (int)resetState
{
  objc_msgSend_resetState(self->_registrationStage, a2, v2, v3);
  objc_msgSend_resetState(self->_parallaxStage, v5, v6, v7);
  objc_msgSend_resetState(self->_stitchingStage, v8, v9, v10);
  objc_msgSend_resetState(self->_assemblyStage, v11, v12, v13);
  objc_msgSend_resetState(self->_gyroStage, v14, v15, v16);
  objc_msgSend_resetState(self->_rectanglingStage, v17, v18, v19);
  self->_poolOccupancy = 0;
  self->_prevFrameDropped = 0;
  self->_hasStitchedSlicesWithNoError = 0;
  self->_curPixbufToStitch = 0;
  self->_nbFramesSkipped = 0;
  self->_nbFramesDropped = 0;
  self->_nbFramesReceived = 0;
  return 0;
}

- (int)setDirection:(int)a3
{
  v4 = *&a3;
  self->_direction = a3;
  objc_msgSend_setDirection_(self->_registrationStage, a2, *&a3, v3);
  objc_msgSend_setDirection_(self->_parallaxStage, v6, v4, v7);
  objc_msgSend_setDirection_(self->_stitchingStage, v8, v4, v9);
  objc_msgSend_setDirection_(self->_assemblyStage, v10, v4, v11);
  objc_msgSend_setDirection_(self->_rectanglingStage, v12, v4, v13);
  return 0;
}

- (int)setParameters:(id *)a3
{
  *&self->_params.sliceWidth = *&a3->var0;
  v3 = *&a3->var2;
  v4 = *&a3->var4;
  v5 = *&a3->var8;
  *&self->_params.bitDepth = *&a3->var13;
  *&self->_params.enableTranslationCorrection = v4;
  *&self->_params.atlasTranslationShiftHighThreshold = v5;
  *&self->_params.panoWidth = v3;
  return 0;
}

- (CGRect)getCropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (float)getCurrentPanningSpeed
{
  v3 = -1.0;
  if (FigCapturePlatformIdentifier() >= 11)
  {
    PanningSpeedScalingFactorFromSensorID = getPanningSpeedScalingFactorFromSensorID(self->_sensorID);
    if (PanningSpeedScalingFactorFromSensorID > 0.0)
    {
      v8 = PanningSpeedScalingFactorFromSensorID;
      objc_msgSend_currentRotationRate(self->_gyroStage, v4, v5, v6);
      *&v9 = v9;
      return v8 * *&v9;
    }
  }

  return v3;
}

+ (void)prewarm
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v2, v4, v3, v5);
  v7 = objc_alloc(MEMORY[0x277CF6C78]);
  inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v7, v8, v6, 0);
  if (!inited)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v10 = [PanoramaRegistrationStage alloc];
  v13 = objc_msgSend_initWithContext_(v10, v11, inited, v12);
  if (!v13)
  {
LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v14 = [PanoramaParallaxStage alloc];
  v16 = objc_msgSend_initWithContext_bitDepth_(v14, v15, inited, 0);
  if (!v16)
  {
LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v17 = [PanoramaStitchingStage alloc];
  v19 = objc_msgSend_initWithContext_bitDepth_(v17, v18, inited, 0);
  if (!v19)
  {
LABEL_12:
    v22 = 0;
    goto LABEL_8;
  }

  v20 = [PanoramaAssemblyStage alloc];
  *v30 = xmmword_23C47A9B0;
  memset(&v30[4], 0, 44);
  v31 = 1;
  v32[0] = 0;
  *(v32 + 7) = 0;
  v22 = objc_msgSend_initWithContext_robustPanoParams_(v20, v21, inited, v30);
  if (v22)
  {
    v23 = [ACTPanoGPUDownscaler alloc];
    v26 = objc_msgSend_initWithContext_(v23, v24, inited, v25);
    if (v26)
    {
      v27 = v26;
      v28 = [LKTFlowGPU alloc];
    }
  }

LABEL_8:
}

- (id)init:(id *)a3
{
  v20.receiver = self;
  v20.super_class = PanoramaProcessor;
  v4 = [(PanoramaProcessor *)&v20 init];
  if (v4)
  {
    v5 = MEMORY[0x277CCA8D8];
    v6 = objc_opt_class();
    v9 = objc_msgSend_bundleForClass_(v5, v7, v6, v8);
    memcpy(__dst, a3, sizeof(__dst));
    objc_msgSend_setParameters_(v4, v10, __dst, v11);
    v12 = objc_alloc(MEMORY[0x277CF6C78]);
    inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v12, v13, v9, 0);
    var13 = a3->var13;
    v4->_bitDepth = var13;
    v4->_CVPixelFormat = getCVPixelFormat(var13);
    if (objc_msgSend__commonInitWithContext_sliceWidth_sliceHeight_bitDepth_(v4, v16, inited, a3->var0, a3->var1, a3->var13))
    {
      v17 = 0;
    }

    else
    {
      fig_note_initialize_category_with_default_work();
      v17 = v4;
    }
  }

  else
  {
    v17 = 0;
    v9 = 0;
    inited = 0;
  }

  return v17;
}

- (int)_commonInitWithContext:(id)a3 sliceWidth:(unint64_t)a4 sliceHeight:(unint64_t)a5 bitDepth:(int)a6
{
  v176[5] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v165 = 0;
  v166 = 0;
  objc_storeStrong(&self->_metal, a3);
  v13 = objc_msgSend_sharedInstance(MEMORY[0x277CF3B80], v10, v11, v12);
  v17 = objc_msgSend_cameraParameters(v13, v14, v15, v16);
  cameraSetupPlist = self->_cameraSetupPlist;
  self->_cameraSetupPlist = v17;

  v19 = [PanoramaRegistrationStage alloc];
  v22 = objc_msgSend_initWithContext_(v19, v20, self->_metal, v21);
  registrationStage = self->_registrationStage;
  self->_registrationStage = v22;

  if (!self->_registrationStage || (v24 = [PanoramaParallaxStage alloc], v26 = objc_msgSend_initWithContext_bitDepth_(v24, v25, self->_metal, self->_bitDepth), parallaxStage = self->_parallaxStage, self->_parallaxStage = v26, parallaxStage, !self->_parallaxStage) || (v28 = [PanoramaStitchingStage alloc], v30 = objc_msgSend_initWithContext_bitDepth_(v28, v29, self->_metal, self->_bitDepth), stitchingStage = self->_stitchingStage, self->_stitchingStage = v30, stitchingStage, !self->_stitchingStage) || (v32 = [PanoramaAssemblyStage alloc], metal = self->_metal, memcpy(__dst, &self->_params, sizeof(__dst)), v35 = objc_msgSend_initWithContext_robustPanoParams_(v32, v34, metal, __dst), assemblyStage = self->_assemblyStage, self->_assemblyStage = v35, assemblyStage, !self->_assemblyStage) || (objc_msgSend_setRegistrationProvider_(self, v37, self->_registrationStage, v38), v39 = [ACTPanoGPUDownscaler alloc], v42 = objc_msgSend_initWithContext_(v39, v40, self->_metal, v41), downscaler = self->_downscaler, self->_downscaler = v42, downscaler, !self->_downscaler) || (v44 = dispatch_queue_create("PanoramaProcessing", 0), processingQueue = self->_processingQueue, self->_processingQueue = v44, processingQueue, !self->_processingQueue) || (v46 = [PanoramaRectanglingStage alloc], v49 = objc_msgSend_initWithContext_(v46, v47, self->_metal, v48), rectanglingStage = self->_rectanglingStage, self->_rectanglingStage = v49, rectanglingStage, !self->_rectanglingStage) || (v51 = objc_alloc_init(PanoramaGyroStage), gyroStage = self->_gyroStage, self->_gyroStage = v51, gyroStage, !self->_gyroStage))
  {
    v79 = 0;
    v76 = 0;
    goto LABEL_26;
  }

  v53 = VTPixelTransferSessionCreate(0, &self->_vtTransferSession);
  if (v53 || (v53 = VTPixelRotationSessionCreate(0, &self->_vtRotationSession)) != 0)
  {
    v140 = v53;
    v79 = 0;
    v76 = 0;
    goto LABEL_23;
  }

  self->_doParallaxCorrection = 1;
  self->_direction = 1;
  v56 = objc_msgSend_objectForKeyedSubscript_(self->_cameraSetupPlist, v54, @"TuningParameters", v55);
  v59 = objc_msgSend_objectForKey_(v56, v57, @"Common", v58);
  v62 = objc_msgSend_objectForKey_(v59, v60, @"NRFParameters", v61);
  v65 = objc_msgSend_objectForKey_(v62, v63, @"Version", v64);
  v69 = objc_msgSend_intValue(v65, v66, v67, v68);

  v70 = MEMORY[0x277CCA8D8];
  v73 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v71, @"/System/Library/VideoProcessors/NRFV%d.bundle", v72, v69);
  v76 = objc_msgSend_bundleWithPath_(v70, v74, v73, v75);

  if (!v76)
  {
    goto LABEL_28;
  }

  v163 = 0;
  objc_msgSend_loadAndReturnError_(v76, v77, &v163, v78);
  v79 = v163;
  if (v79)
  {
LABEL_26:
    v140 = 2;
    goto LABEL_23;
  }

  v82 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v80, @"NRFProcessorV%d", v81, v69);
  v85 = objc_msgSend_classNamed_(v76, v83, v82, v84);

  if (!v85)
  {
LABEL_28:
    v79 = 0;
    goto LABEL_26;
  }

  v161 = v9;
  v86 = [v85 alloc];
  v89 = objc_msgSend_initWithCommandQueue_(v86, v87, 0, v88);
  nrfProcessor = self->_nrfProcessor;
  self->_nrfProcessor = v89;

  v93 = objc_msgSend_objectForKeyedSubscript_(self->_cameraSetupPlist, v91, @"TuningParameters", v92);
  objc_msgSend_setTuningParameters_(self, v94, v93, v95);
  v99 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v96, v97, v98);
  v100 = objc_alloc_init(NSClassFromString(&cfstr_Nrfpreparedesc.isa));
  objc_msgSend_setWidth_(v100, v101, LODWORD(self->_params.panoWidth), v102);
  objc_msgSend_setHeight_(v100, v103, a5, v104);
  objc_msgSend_setPixelFormat_(v100, v105, 875704422, v106);
  if (self->_params.useNRFTypePano)
  {
    objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v107, 8, v108);
  }

  else
  {
    objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v107, 0, v108);
  }
  v109 = ;
  objc_msgSend_setObject_forKeyedSubscript_(v99, v110, v100, v109);

  v111 = *MEMORY[0x277CF6950];
  v175[0] = *MEMORY[0x277CF4088];
  v175[1] = v111;
  v176[0] = v93;
  v176[1] = &unk_284F106B8;
  v112 = *MEMORY[0x277CF6958];
  v175[2] = *MEMORY[0x277CF6948];
  v175[3] = v112;
  v176[2] = &unk_284F106D0;
  v176[3] = &unk_284F106E8;
  v175[4] = *MEMORY[0x277CF6970];
  v176[4] = v99;
  v114 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v113, v176, v175, 5);
  v117 = objc_msgSend_setupWithOptions_(self->_nrfProcessor, v115, v114, v116);
  if (v117)
  {
    v140 = v117;

LABEL_31:
    v79 = 0;
    goto LABEL_23;
  }

  objc_msgSend_setFusionMode_(self->_nrfProcessor, v118, 1, v119);
  objc_msgSend_setNrfProcessor_(self->_assemblyStage, v120, self->_nrfProcessor, v121);

  v165 = a5;
  v166 = a4;
  v122 = setDownscaledResolution(&v166, &v165, 3uLL, 0x3E8uLL, 0xBDuLL);
  if (v122)
  {
    v140 = v122;
    goto LABEL_31;
  }

  v159 = a5;
  v160 = v76;
  v158 = *MEMORY[0x277CC4E50];
  v173 = *MEMORY[0x277CC4E50];
  v174 = &unk_284F10700;
  v124 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v123, &v174, &v173, 1);
  v125 = *MEMORY[0x277CC4DE8];
  v172[0] = MEMORY[0x277CBEC10];
  v126 = *MEMORY[0x277CC4EC8];
  v171[0] = v125;
  v171[1] = v126;
  v129 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v127, v166, v128);
  v172[1] = v129;
  v130 = *MEMORY[0x277CC4DD8];
  v171[2] = *MEMORY[0x277CC4DD8];
  v133 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v131, v165, v132);
  v172[2] = v133;
  v134 = *MEMORY[0x277CC4E30];
  v171[3] = *MEMORY[0x277CC4E30];
  v137 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v135, self->_CVPixelFormat, v136);
  v172[3] = v137;
  v139 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v138, v172, v171, 4);

  v140 = CVPixelBufferPoolCreate(0, v124, v139, &self->_downsampledRegistrationPool);
  if (v140 || (v169 = v158, v170 = &unk_284F10700, objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v141, &v170, &v169, 1), v142 = objc_claimAutoreleasedReturnValue(), v168[0] = MEMORY[0x277CBEC10], v167[0] = v125, v167[1] = v126, objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v143, a4, v144), v145 = objc_claimAutoreleasedReturnValue(), v168[1] = v145, v167[2] = v130, objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v146, v159, v147), v148 = objc_claimAutoreleasedReturnValue(), v168[2] = v148, v167[3] = v134, objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v149, self->_CVPixelFormat, v150), v151 = objc_claimAutoreleasedReturnValue(), v168[3] = v151, objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v152, v168, v167, 4), v153 = objc_claimAutoreleasedReturnValue(), v151, v148, v145, v154 = v142, v155 = v153, v140 = CVPixelBufferPoolCreate(0, v154, v155, &self->_inputSlicePool), v155, v154, v140))
  {
    v79 = 0;
  }

  else
  {
    self->_poolOccupancy = 0;
    self->_prevFrameDropped = 0;
    self->_hasStitchedSlicesWithNoError = 0;
    self->_toACTFramework = 0;
    self->_curPixbufToStitch = 0;
    self->_nbFramesSkipped = 0;
    self->_nbFramesDropped = 0;
    self->_nbFramesReceived = 0;
    portType = self->_portType;
    self->_portType = 0;

    v79 = 0;
    self->_sensorID = 0;
  }

  v76 = v160;
  v9 = v161;
LABEL_23:

  return v140;
}

- (uint64_t)addFrameForStitching:(double)a3 withInitialHomography:(double)a4 registrationCallback:(uint64_t)a5
{
  v130 = *MEMORY[0x277D85DE8];
  v9 = a7;
  pixelBufferOut = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(a6);
  v11 = CMGetAttachment(a6, @"MetadataDictionary", 0);
  v12 = CMGetAttachment(ImageBuffer, @"MetadataDictionary", 0);
  v15 = objc_msgSend_objectForKeyedSubscript_(v11, v13, @"SliceNumber", v14);
  v19 = objc_msgSend_intValue(v15, v16, v17, v18);

  HostTime = ACT_getHostTime();
  CMSampleBufferGetPresentationTimeStamp(&time, a6);
  Seconds = CMTimeGetSeconds(&time);
  panoLog(32, "FrameID:%04d time %.3f: starting processing PTS:%.3f\n", v19, HostTime, Seconds);
  if (!v19)
  {
    v24 = objc_msgSend_objectForKeyedSubscript_(v12, v22, *MEMORY[0x277CF5C30], v23);
    v25 = *(a1 + 296);
    *(a1 + 296) = v24;
  }

  CVPixelBufferPoolCreatePixelBuffer(0, *(a1 + 88), &pixelBufferOut);
  if (pixelBufferOut)
  {
    SampleBuffer = CreateSampleBuffer();
    CVPixelBufferRelease(pixelBufferOut);
    if (SampleBuffer)
    {
      v28 = 1;
      objc_msgSend_downsample_to_inputBitDepth_outputBitDepth_(*(a1 + 72), v27, ImageBuffer, pixelBufferOut, *(a1 + 308), 1);
      v32 = objc_msgSend_copy(v11, v29, v30, v31);
      CMSetAttachment(SampleBuffer, @"MetadataDictionary", v32, 1u);

      *(a1 + 120) = CVPixelBufferGetWidth(ImageBuffer);
      *(a1 + 128) = CVPixelBufferGetHeight(ImageBuffer);
      ACT_getHostTime();
      sub_23C463FBC();
      panoLog(32, "FrameID:%04d time %.3f: starting registration\n", v112, *&v115);
      v34 = *(a1 + 368);
      if (v34)
      {
        objc_msgSend_registerNewSlice_withHFromGyro_registrationCallback_(v34, v33, SampleBuffer, v9, a2, a3, a4);
        *v123 = v36;
        v125 = v35;
        *v121 = v37;
        if (objc_msgSend_hasHomographyFailureFlag(*(a1 + 16), v38, v39, v40))
        {
          sub_23C463FFC();
          v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (sub_23C4640B4(v44, v45, v46, v47, v48, v49, v50, v51, v113, v116, v118, v119, v121[0], v121[1], v123[0], v123[1], v125, *(&v125 + 1), v126, SBYTE2(v126), BYTE3(v126), SHIDWORD(v126)))
          {
            v52 = @"MetadataDictionary";
          }

          else
          {
            v52 = @"MetadataDictionary" & 0xFFFFFFFE;
          }

          if (v52)
          {
            ACT_getHostTime();
            v128 = 136315650;
            sub_23C463FCC();
            sub_23C46404C();
          }

          sub_23C46401C();

          ACT_getHostTime();
          sub_23C463FBC();
          panoLog(4, "FrameID:%04d time %.3f: registration has FAILURE flag\n");
LABEL_28:
          v97 = 0;
          v28 = 0;
LABEL_32:
          CFRelease(SampleBuffer);

          goto LABEL_33;
        }

        if (objc_msgSend_hasRetrogradeMotionFlag(*(a1 + 16), v41, v42, v43))
        {
          sub_23C463FFC();
          v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (sub_23C4640B4(v53, v54, v55, v56, v57, v58, v59, v60, v113, v116, v118, v119, v121[0], v121[1], v123[0], v123[1], v125, *(&v125 + 1), v126, SBYTE2(v126), BYTE3(v126), SHIDWORD(v126)))
          {
            v61 = @"MetadataDictionary";
          }

          else
          {
            v61 = @"MetadataDictionary" & 0xFFFFFFFE;
          }

          if (v61)
          {
            ACT_getHostTime();
            v128 = 136315650;
            sub_23C463FCC();
            sub_23C46404C();
          }

          sub_23C46401C();

          ACT_getHostTime();
          sub_23C463FBC();
          panoLog(4, "FrameID:%04d time %.3f: registration detected possible retrograde motion\n");
          goto LABEL_28;
        }

        ACT_getHostTime();
        sub_23C463FBC();
        panoLog(32, "FrameID:%04d time %.3f: starting stitching\n", v113, *&v116);
        v64 = objc_msgSend_objectForKeyedSubscript_(v11, v62, @"SliceType", v63);
        v68 = objc_msgSend_intValue(v64, v65, v66, v67);

        v70 = objc_msgSend_addSlice_sliceHomography_sliceType_(*(a1 + 32), v69, ImageBuffer, v68, *&v125, *v123, *v121);
        if (v70)
        {
          v28 = v70;
        }

        else
        {
          v74 = objc_msgSend_registrationWeights(*(a1 + 16), v71, v72, v73);
          objc_msgSend_setMotionMask_(*(a1 + 32), v75, v74, v76);

          if (*(a1 + 328) != 1 || !v68)
          {
            *(a1 + 272) = ImageBuffer;
            v96 = objc_msgSend_stitchingMask(*(a1 + 32), v77, v78, v79);
LABEL_25:
            v97 = v96;
            ACT_getHostTime();
            sub_23C463FBC();
            panoLog(32, "FrameID:%04d time %.3f: starting assembly\n", v114, *&v117);
            objc_msgSend_roi(*(a1 + 32), v98, v99, v100);
            sub_23C4640A0();
            sub_23C46408C();
            v28 = objc_msgSend_addSlice_metadata_sliceHomography_stitchingMask_roi_sliceType_(v101, v102, v103, v104);
            if (!v28)
            {
              v108 = objc_msgSend_copy(v12, v105, v106, v107);
              v109 = *(a1 + 288);
              *(a1 + 288) = v108;

              *(a1 + 264) = v19 > 0;
            }

            goto LABEL_32;
          }

          ACT_getHostTime();
          sub_23C463FBC();
          panoLog(32, "FrameID:%04d time %.3f: starting parallax correction\n", v114, *&v117);
          v80 = *(a1 + 24);
          v84 = objc_msgSend_stitchingMask(*(a1 + 32), v81, v82, v83);
          v88 = objc_msgSend_residualFlow(*(a1 + 368), v85, v86, v87);
          v28 = objc_msgSend_addSlice_mask_homography_residualFlow_(v80, v89, ImageBuffer, v84, v88, *&v125, *v123, *v121);

          if (!v28)
          {
            *(a1 + 272) = objc_msgSend_warpedFrame(*(a1 + 24), v90, v91, v92);
            v96 = objc_msgSend_warpedMask(*(a1 + 24), v93, v94, v95);
            goto LABEL_25;
          }
        }
      }

      v97 = 0;
      goto LABEL_32;
    }
  }

  v28 = 2;
LABEL_33:
  v110 = ACT_getHostTime();
  panoLog(32, "FrameID:%04d time %.3f: processing done\n\n", v19, v110);

  return v28;
}

- (int)_addLastSlice
{
  result = objc_msgSend_addSlice_sliceHomography_sliceType_(self->_stitchingStage, a2, self->_curPixbufToStitch, 2);
  if (!result)
  {
    v7 = objc_msgSend_stitchingMask(self->_stitchingStage, v4, v5, v6);
    objc_msgSend_roi(self->_stitchingStage, v8, v9, v10);
    sub_23C4640A0();
    sub_23C46408C();
    v15 = objc_msgSend_addSlice_metadata_sliceHomography_stitchingMask_roi_sliceType_(v11, v12, v13, v14);

    return v15;
  }

  return result;
}

@end