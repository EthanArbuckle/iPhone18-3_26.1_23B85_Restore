@interface VNTrackMaskDetector
+ (id)computeStagesToBindForConfigurationOptions:(id)a3;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)a3 functionName:(id)a4 error:(id *)a5;
+ (id)modelURLForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
- (void)dealloc;
@end

@implementation VNTrackMaskDetector

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v169 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v150 = a7;
  v151 = a9;
  v153 = v13;
  v152 = [v13 valueForKey:@"VNTrackMaskDetectorProcessOption_State"];
  if (v152)
  {
    v14 = [v13 objectForKeyedSubscript:@"VNTrackMaskDetectorProcessorOption_GenerateCropRect"];
    v15 = [v14 BOOLValue];

    v16 = [(VNDetector *)self validatedImageBufferFromOptions:v13 error:a8];
    v149 = v16;
    if (!v16)
    {
      v19 = 0;
LABEL_107:

      goto LABEL_108;
    }

    v147 = [VNValidationUtilities originatingRequestSpecifierInOptions:v153 error:a8];
    if (!v147)
    {
      goto LABEL_30;
    }

    [v16 timingInfo];
    value = v159;
    flags = HIDWORD(v160);
    timescale = v160;
    v142 = v15;
    if (BYTE4(v160))
    {
      epoch = v161;
    }

    else
    {
      [v152 lastProcessedPTS];
      CMTimeMake(&rhs, 1, 30);
      CMTimeAdd(&time1, &lhs, &rhs);
      value = time1.value;
      flags = time1.flags;
      timescale = time1.timescale;
      epoch = time1.epoch;
      [v152 setLastProcessedPTS:&time1];
    }

    memset(&v154, 0, sizeof(v154));
    time1.value = value;
    time1.timescale = timescale;
    time1.flags = flags;
    time1.epoch = epoch;
    [v152 lastUpdatePTS];
    CMTimeSubtract(&v154, &time1, &lhs);
    [v152 frameUpdateSpacing];
    *&lhs.data = *&v154.value;
    lhs.width = v154.epoch;
    v20 = CMTimeCompare(&time1, &lhs);
    if (v20 < 0)
    {
      time1.value = value;
      time1.timescale = timescale;
      time1.flags = flags;
      time1.epoch = epoch;
      [v152 setLastUpdatePTS:&time1];
    }

    v21 = [v16 bufferWithWidth:objc_msgSend(v16 height:"width") format:objc_msgSend(v16 options:"height") error:{1111970369, v153, a8}];
    if (!v21)
    {
LABEL_30:
      v19 = 0;
LABEL_106:

      goto LABEL_107;
    }

    pixelBuffer = v21;
    v143 = self;
    if ([v152 firstFrame])
    {
      v22 = v152;
      v139 = v153;
      v141 = v147;
      if (self)
      {
        v146 = v22;
        if ([v22 inititalMask])
        {
          v23 = [(VisionCoreE5RTInferenceFunctionDescriptor *)self->_functionDescriptor_Updated function:v139];
          v24 = [v23 descriptorForOutput:@"update_h" error:a8];
          v25 = [v24 shape];
          v26 = v25;
          v27 = *[v25 sizes];
          v28 = v25;
          v29 = *([v25 sizes] + 8);
          v30 = v25;
          v31 = *([v25 sizes] + 16);
          time1.value = 0;
          v32 = v25;
          v33 = (v29 * v27 * v31);
          VNCVPixelBufferCreateUsingIOSurface(*([v25 sizes] + 24), v33, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:a8 error:?];
          [v22 setHiddenMaskBuffer:time1.value];
          v34 = v25;
          VNCVPixelBufferCreateUsingIOSurface(*([v25 sizes] + 24), v33, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:a8 error:?];
          [v22 setHiddenMaskBufferOutput:time1.value];
          v35 = [v23 descriptorForOutput:@"update_k" error:a8];

          v36 = [v35 shape];

          v37 = v36;
          v38 = *[v36 sizes];
          v39 = v36;
          v40 = *([v36 sizes] + 8);
          v41 = v36;
          v42 = *([v36 sizes] + 16);
          v43 = v36;
          v44 = (v40 * v38 * v42);
          VNCVPixelBufferCreateUsingIOSurface(*([v36 sizes] + 24), v44, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:a8 error:?];
          [v22 setPreviousKey:time1.value];
          v45 = v36;
          VNCVPixelBufferCreateUsingIOSurface(*([v36 sizes] + 24), v44, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:a8 error:?];
          [v22 setPreviousKeyOutput:time1.value];
          v46 = [v23 descriptorForOutput:@"update_v" error:a8];

          v47 = [v46 shape];

          v48 = v47;
          v49 = *[v47 sizes];
          v50 = v47;
          v51 = *([v47 sizes] + 8);
          v52 = v47;
          v53 = *([v47 sizes] + 16);
          v54 = v47;
          v55 = (v51 * v49 * v53);
          VNCVPixelBufferCreateUsingIOSurface(*([v47 sizes] + 24), v55, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:a8 error:?];
          [v22 setPreviousValue:time1.value];
          v56 = v47;
          VNCVPixelBufferCreateUsingIOSurface(*([v47 sizes] + 24), v55, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:a8 error:?];
          [v22 setPreviousValueOutput:time1.value];
          v57 = [(VisionCoreE5RTInferenceFunctionDescriptor *)v143->_functionDescriptor_Mask function];

          v58 = [v57 descriptorForOutput:@"regular_prob" error:a8];

          v59 = [v58 shape];

          v60 = v59;
          v61 = *[v59 sizes];
          v62 = v59;
          v63 = *([v59 sizes] + 8);
          v64 = v59;
          v65 = *([v59 sizes] + 16);
          v66 = v59;
          v67 = (v63 * v61 * v65);
          VNCVPixelBufferCreateUsingIOSurface(*([v59 sizes] + 24), v67, 0x4C303066u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:a8 error:?];
          [v146 setOutputMask:time1.value];
          v68 = v59;
          VNCVPixelBufferCreateUsingIOSurface(*([v59 sizes] + 24), v67, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:a8 error:?];
          [v146 setOutput:time1.value];
          v144 = [v57 descriptorForOutput:@"regular_q" error:a8];

          v69 = [v144 shape];

          v70 = v69;
          v71 = *[v69 sizes];
          v72 = v69;
          v73 = *([v69 sizes] + 8);
          v74 = v69;
          v75 = *([v69 sizes] + 16);
          v76 = v69;
          VNCVPixelBufferCreateUsingIOSurface(*([v69 sizes] + 24), (v73 * v71 * v75), 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:a8 error:?];
          [v146 setQuality:time1.value];
          v77 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:5];
          if ([v77 assignPixelBuffer:a4 toName:@"input_image" error:a8] & 1) != 0 && (objc_msgSend(v77, "assignPixelBuffer:toName:error:", objc_msgSend(v146, "inititalMask"), @"mask", a8) & 1) != 0 && (objc_msgSend(v77, "assignPixelBuffer:toName:error:", objc_msgSend(v146, "hiddenMaskBuffer"), @"hidden_state", a8) & 1) != 0 && (objc_msgSend(v77, "assignPixelBuffer:toName:error:", objc_msgSend(v146, "previousKey"), @"prev_key", a8) & 1) != 0 && (objc_msgSend(v77, "assignPixelBuffer:toName:error:", objc_msgSend(v146, "previousValue"), @"prev_value", a8))
          {
            v78 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:3];
            if ([v78 assignPixelBuffer:objc_msgSend(v146 toName:"previousValueOutput") error:{@"init_v", a8}] & 1) != 0 && (objc_msgSend(v78, "assignPixelBuffer:toName:error:", objc_msgSend(v146, "previousKeyOutput"), @"init_k", a8) & 1) != 0 && (objc_msgSend(v78, "assignPixelBuffer:toName:error:", objc_msgSend(v146, "hiddenMaskBufferOutput"), @"init_h", a8))
            {
              v79 = objc_alloc_init(MEMORY[0x1E69DF8D8]);
              [v79 setBoundInputObjects:v77];
              [v79 setBoundOutputObjects:v78];
              v80 = [(VisionCoreE5RTInferenceFunctionDescriptor *)v143->_functionDescriptor_Memory function];
              v81 = [v80 newExecutionContextWithConfiguration:v79 error:a8];

              if ([v81 executeAndReturnError:a8])
              {
                +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v146 hiddenMaskBufferOutput], objc_msgSend(v146, "hiddenMaskBuffer"), a8);
                +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v146 previousKeyOutput], objc_msgSend(v146, "previousKey"), a8);
                +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v146 previousValueOutput], objc_msgSend(v146, "previousValue"), a8);
              }

              v82 = *a8 == 0;
              if (*a8)
              {
                LOBYTE(lhs.data) = 0;
              }
            }

            else
            {
              v82 = 0;
              LOBYTE(lhs.data) = 0;
            }
          }

          else
          {
            v82 = 0;
            LOBYTE(lhs.data) = 0;
          }
        }

        else
        {
          if (a8)
          {
            *a8 = [VNError errorForInternalErrorWithLocalizedDescription:@"Initial mask missing for processing", v139, v141];
          }

          v82 = 0;
          LOBYTE(lhs.data) = 0;
        }

        CVPixelBufferUnlockBaseAddress([v146 inititalMask], 1uLL);
        data_low = LOBYTE(lhs.data);

        if ((v82 | data_low))
        {
          v98 = CVPixelBufferRetain([v146 inititalMask]);
          CVPixelBufferLockBaseAddress(v98, 1uLL);
          v90 = 1.0;
          if (v98)
          {
            if (!+[VNCVPixelBufferHelper copyCVPixelBufferContentFromFP16ToFP32:target:error:](VNCVPixelBufferHelper, v98, [v146 outputMask], a8))
            {
              v110 = 0;
              v102 = 0;
              v111 = 0;
              v91 = v98;
LABEL_93:
              CVPixelBufferUnlockBaseAddress(v98, 1uLL);
LABEL_102:
              CVPixelBufferRelease(v91);
              CVPixelBufferRelease(v102);
              CVPixelBufferRelease(pixelBuffer);
              if (v110)
              {
                v166 = v111;
                v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v166 count:1];
              }

              else
              {
                v19 = 0;
              }

              goto LABEL_106;
            }

            v91 = v98;
          }

          else
          {
            v91 = 0;
          }

LABEL_70:
          [v152 setFirstFrame:0];
          Width = CVPixelBufferGetWidth(pixelBuffer);
          Height = CVPixelBufferGetHeight(pixelBuffer);
          PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
          v102 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:Height height:PixelFormatType pixelFormatType:a8 error:?];
          v103 = [v152 outputMask];
          if (!v143)
          {
            goto LABEL_89;
          }

          v104 = v103;
          highResMaskPixelBuffer = v143->highResMaskPixelBuffer;
          if (!highResMaskPixelBuffer || (v106 = CVPixelBufferGetWidth(highResMaskPixelBuffer), v106 != CVPixelBufferGetWidth(pixelBuffer)) || (v107 = CVPixelBufferGetHeight(v143->highResMaskPixelBuffer), v108 = CVPixelBufferGetHeight(pixelBuffer), v109 = v143, v107 != v108))
          {
            CVPixelBufferRelease(v143->highResMaskPixelBuffer);
            v112 = CVPixelBufferGetWidth(pixelBuffer);
            v113 = CVPixelBufferGetHeight(pixelBuffer);
            v114 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v112 height:v113 pixelFormatType:1278226534 error:a8];
            v109 = v143;
            v143->highResMaskPixelBuffer = v114;
          }

          time1.value = MEMORY[0x1E69E9820];
          *&time1.timescale = 3221225472;
          time1.epoch = __59__VNTrackMaskDetector__upsampleLowResMask_reference_error___block_invoke;
          v159 = &unk_1E77B3C50;
          v161 = pixelBuffer;
          v162 = v104;
          v160 = v109;
          v115 = _Block_copy(&time1);
          v116 = VNExecuteBlock(v115, a8);
          v117 = v143->highResMaskPixelBuffer;
          if ((v116 & 1) == 0)
          {
            CVPixelBufferRelease(v143->highResMaskPixelBuffer);
            v117 = 0;
            v143->highResMaskPixelBuffer = 0;
          }

          v118 = v143->_postProcessingMetalContext;
          time1.value = MEMORY[0x1E69E9820];
          *&time1.timescale = 3221225472;
          time1.epoch = __93__VNTrackMaskDetector__removeBackgroundFromPixelBuffer_toPixelBuffer_usingMask_offset_error___block_invoke;
          v159 = &unk_1E77B3C78;
          v162 = pixelBuffer;
          v163 = v102;
          v164 = v117;
          v160 = v118;
          v161 = v143;
          v165 = 0;
          v119 = v118;
          v120 = _Block_copy(&time1);
          v121 = VNExecuteBlock(v120, a8);

          if (v121)
          {
            v122 = *MEMORY[0x1E6965CE8];
            if (CVBufferHasAttachment(a4, *MEMORY[0x1E6965CE8]))
            {
              LODWORD(time1.value) = 0;
              v123 = CVBufferCopyAttachment(a4, v122, &time1);
              CVBufferSetAttachment(v102, v122, v123, time1.value);
              CFRelease(v123);
            }

            v111 = [[VNPixelBufferObservation alloc] initWithOriginatingRequestSpecifier:v147 featureName:0 CVPixelBuffer:v102];
            *&v124 = v90;
            [(VNObservation *)v111 setConfidence:v124];
            if (v142)
            {
              v125 = calculateCropSizeOfPixelBuffer(v117, 0);
              v127 = v126;
              v129 = v128;
              v131 = v130;
              v132 = CVPixelBufferGetWidth(v117);
              v133 = CVPixelBufferGetHeight(v117);
              v134 = 0.0;
              v135 = 0.0;
              v136 = 0.0;
              if (v132)
              {
                v135 = v125 / v132;
                v136 = v129 / v132;
              }

              v137 = 0.0;
              if (v133)
              {
                v134 = v127 / v133;
                v137 = v131 / v133;
              }

              if (v111)
              {
                v111->_croppedBoundingBox.origin.x = v135;
                v111->_croppedBoundingBox.origin.y = v134;
                v111->_croppedBoundingBox.size.width = v136;
                v111->_croppedBoundingBox.size.height = v137;
              }
            }

            v110 = 1;
            if (!v91)
            {
              goto LABEL_102;
            }
          }

          else
          {
LABEL_89:
            v111 = 0;
            v110 = 0;
            if (!v91)
            {
              goto LABEL_102;
            }
          }

          v98 = v91;
          goto LABEL_93;
        }
      }

      else
      {
      }

      v91 = 0;
      CVPixelBufferRelease(pixelBuffer);
      v110 = 0;
      pixelBuffer = 0;
      v102 = 0;
      v111 = 0;
      goto LABEL_102;
    }

    v83 = v152;
    if (v20 < 0)
    {
      if (self)
      {
        v84 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:5];
        if (([v84 assignPixelBuffer:a4 toName:@"input_image" error:a8] & 1) == 0 || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "inititalMask"), @"mask", a8) || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "hiddenMaskBuffer"), @"hidden_state", a8) || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "previousKey"), @"prev_key", a8) || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "previousValue"), @"prev_value", a8))
        {
          goto LABEL_95;
        }

        v85 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:5];
        if (([v85 assignPixelBuffer:objc_msgSend(v83 toName:"previousValueOutput") error:{@"update_v", a8}] & 1) != 0 && objc_msgSend(v85, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "previousKeyOutput"), @"update_k", a8) && objc_msgSend(v85, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "hiddenMaskBufferOutput"), @"update_h", a8) && objc_msgSend(v85, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "output"), @"update_prob", a8) && objc_msgSend(v85, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "quality"), @"update_q", a8))
        {
          v93 = objc_alloc_init(MEMORY[0x1E69DF8D8]);
          [v93 setBoundInputObjects:v84];
          [v93 setBoundOutputObjects:v85];
          v94 = [(VisionCoreE5RTInferenceFunctionDescriptor *)self->_functionDescriptor_Updated function];
          v95 = [v94 newExecutionContextWithConfiguration:v93 error:a8];

          if ([v95 executeAndReturnError:a8])
          {
            +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v83 hiddenMaskBufferOutput], objc_msgSend(v83, "hiddenMaskBuffer"), a8);
            +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v83 previousKeyOutput], objc_msgSend(v83, "previousKey"), a8);
            +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v83 previousValueOutput], objc_msgSend(v83, "previousValue"), a8);
            +[VNCVPixelBufferHelper copyCVPixelBufferContentFromFP16ToFP32:target:error:](VNCVPixelBufferHelper, [v83 output], objc_msgSend(v83, "outputMask"), a8);
          }

          v96 = *a8 == 0;

          if (v96)
          {
            goto LABEL_44;
          }

          goto LABEL_97;
        }

        goto LABEL_94;
      }
    }

    else if (self)
    {
      v84 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:5];
      if (([v84 assignPixelBuffer:a4 toName:@"input_image" error:a8] & 1) == 0 || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "inititalMask"), @"mask", a8) || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "hiddenMaskBuffer"), @"hidden_state", a8) || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "previousKey"), @"prev_key", a8) || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "previousValue"), @"prev_value", a8))
      {
        goto LABEL_95;
      }

      v85 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:3];
      if (([v85 assignPixelBuffer:objc_msgSend(v83 toName:"hiddenMaskBufferOutput") error:{@"regular_h", a8}] & 1) != 0 && objc_msgSend(v85, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "output"), @"regular_prob", a8) && objc_msgSend(v85, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "quality"), @"regular_q", a8))
      {
        v86 = objc_alloc_init(MEMORY[0x1E69DF8D8]);
        [v86 setBoundInputObjects:v84];
        [v86 setBoundOutputObjects:v85];
        v87 = [(VisionCoreE5RTInferenceFunctionDescriptor *)self->_functionDescriptor_Mask function];
        v88 = [v87 newExecutionContextWithConfiguration:v86 error:a8];

        if ([v88 executeAndReturnError:a8])
        {
          +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v83 hiddenMaskBufferOutput], objc_msgSend(v83, "hiddenMaskBuffer"), a8);
          +[VNCVPixelBufferHelper copyCVPixelBufferContentFromFP16ToFP32:target:error:](VNCVPixelBufferHelper, [v83 output], objc_msgSend(v83, "outputMask"), a8);
        }

        v89 = *a8 == 0;

        if (v89)
        {
LABEL_44:
          CVPixelBufferLockBaseAddress([v83 quality], 1uLL);
          lhs.data = CVPixelBufferGetBaseAddress([v83 quality]);
          *&lhs.height = vdupq_n_s64(1uLL);
          lhs.rowBytes = 2;
          v156 = 2143289344;
          rhs.data = &v156;
          *&rhs.height = *&lhs.height;
          rhs.rowBytes = 4;
          vImageConvert_Planar16FtoPlanarF(&lhs, &rhs, 0);
          v90 = *&v156;
          CVPixelBufferUnlockBaseAddress([v83 quality], 1uLL);
          v91 = 0;
          *&v92 = v90;
          [v83 setConfidence:v92];
          goto LABEL_70;
        }

LABEL_97:
        v110 = 0;
        v91 = 0;
        v102 = 0;
        v111 = 0;
        goto LABEL_102;
      }

LABEL_94:

LABEL_95:
    }

    goto LABEL_97;
  }

  if (a8)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"State missing for processing"];
    *a8 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_108:

  return v19;
}

BOOL __93__VNTrackMaskDetector__removeBackgroundFromPixelBuffer_toPixelBuffer_usingMask_offset_error___block_invoke(uint64_t a1, void *a2)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v4 = [VNMetalContext bindPixelBufferToMTL2DTexture:*(a1 + 48) pixelFormat:80 plane:a2 error:?];
  if (v4)
  {
    v5 = [VNMetalContext bindPixelBufferToMTL2DTexture:*(a1 + 56) pixelFormat:80 plane:a2 error:?];
    if (v5)
    {
      v6 = [VNMetalContext bindPixelBufferToMTL2DTexture:*(a1 + 64) pixelFormat:55 plane:a2 error:?];
      if (v6)
      {
        v7 = [(VNMetalContext *)*(a1 + 32) commandQueueReturnError:a2];
        v8 = v7;
        v9 = v7 != 0;
        if (v7)
        {
          v10 = [v7 commandBuffer];
          v16 = *(a1 + 32);
          v15 = *(*(a1 + 40) + 112);
          v11 = [v6 width];
          v12 = [v6 height];
          v19[0] = v6;
          v19[1] = v4;
          v19[2] = v5;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __93__VNTrackMaskDetector__removeBackgroundFromPixelBuffer_toPixelBuffer_usingMask_offset_error___block_invoke_2;
          v17[3] = &__block_descriptor_36_e36_v16__0___MTLComputeCommandEncoder__8l;
          v18 = *(a1 + 72);
          [VNMetalContext encodeCommandsForBuffer:v16 state:v10 label:v15 width:v11 height:v12 textures:v13 buffers:v17 block:?];

          [v10 commit];
          [v10 waitUntilCompleted];
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __59__VNTrackMaskDetector__upsampleLowResMask_reference_error___block_invoke(void *a1, void *a2)
{
  v4 = a1[6];
  v5 = a1[4];
  v17[0] = a1[5];
  v17[2] = v4;
  v17[3] = *(v5 + 88);
  v6 = *(v5 + 96);
  if (v6)
  {
    goto LABEL_5;
  }

  v7 = [VNBGRBilinearUpsampler alloc];
  v8 = *(a1[4] + 104);
  if (v8)
  {
    v8 = v8[1];
  }

  v9 = v8;
  v10 = [(VNBGRBilinearUpsampler *)v7 initWithMetalDevice:v9];
  v11 = a1[4];
  v12 = *(v11 + 96);
  *(v11 + 96) = v10;

  v6 = *(a1[4] + 96);
  if (v6)
  {
LABEL_5:
    if ([v6 handlePostProcessingRequest:v17])
    {
      return 1;
    }

    if (a2)
    {
      v14 = [VNError errorForOperationFailedErrorWithLocalizedDescription:@"image upsampling failed"];
      v15 = v14;
      result = 0;
      *a2 = v14;
      return result;
    }
  }

  else if (a2)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to create upsampler for %@", *(a1[4] + 104)];
    *a2 = [VNError errorForOperationFailedErrorWithLocalizedDescription:v16];
  }

  return 0;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v18 = a6;
  [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
  v19 = [(VNDetector *)self validatedImageBufferFromOptions:v17 error:a8];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 width];
    v22 = width * v21;
    v23 = [v20 height];
    v24 = height * v23;
    if (v22 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v22;
    }

    if (v25 < 512.0)
    {
      VNRecordImageTooSmallWarningWithImageMinimumShortDimension(v18, 512);
    }

    v26 = [(VNDetector *)self configurationOptions];
    v27 = [v20 croppedBufferWithWidth:512 height:512 format:1111970369 cropRect:v17 options:a8 error:{x * v21, y * v23, v22, v24}];
    *a7 = v27;
    v28 = v27 != 0;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNDetector *)self configurationOptions];
  v8 = [objc_opt_class() createE5RTFunctionDescriptorForConfigurationOptions:v7 functionName:@"initialFrame" error:a4];
  functionDescriptor_Memory = self->_functionDescriptor_Memory;
  self->_functionDescriptor_Memory = v8;

  if (self->_functionDescriptor_Memory && ([objc_opt_class() createE5RTFunctionDescriptorForConfigurationOptions:v7 functionName:@"regularFrame" error:a4], v10 = objc_claimAutoreleasedReturnValue(), functionDescriptor_Mask = self->_functionDescriptor_Mask, self->_functionDescriptor_Mask = v10, functionDescriptor_Mask, self->_functionDescriptor_Mask) && (objc_msgSend(objc_opt_class(), "createE5RTFunctionDescriptorForConfigurationOptions:functionName:error:", v7, @"updateFrame", a4), v12 = objc_claimAutoreleasedReturnValue(), functionDescriptor_Updated = self->_functionDescriptor_Updated, self->_functionDescriptor_Updated = v12, functionDescriptor_Updated, self->_functionDescriptor_Updated) && (v14 = self->_functionDescriptor_Memory, v25.receiver = self, v25.super_class = VNTrackMaskDetector, -[VNE5RTBasedDetector completeInitializationForSession:functionDescriptor:error:](&v25, sel_completeInitializationForSession_functionDescriptor_error_, v6, v14, a4)))
  {
    v15 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:a4];
    if (v15)
    {
      v16 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStagePostProcessing" error:a4];
      if (v16 && ([VNComputeDeviceUtilities metalDeviceForComputeDevice:v16], v17 = objc_claimAutoreleasedReturnValue(), [VNMetalContext metalContextForDevice:v17 error:a4], v18 = objc_claimAutoreleasedReturnValue(), postProcessingMetalContext = self->_postProcessingMetalContext, self->_postProcessingMetalContext = v18, postProcessingMetalContext, v17, (v20 = self->_postProcessingMetalContext) != 0))
      {
        v21 = [(VNMetalContext *)v20 computePipelineStateForFunctionWithName:a4 error:?];
        applyMaskComputeState = self->_applyMaskComputeState;
        self->_applyMaskComputeState = v21;

        v23 = self->_applyMaskComputeState != 0;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->highResMaskPixelBuffer);
  self->highResMaskPixelBuffer = 0;
  v3.receiver = self;
  v3.super_class = VNTrackMaskDetector;
  [(VNDetector *)&v3 dealloc];
}

+ (id)modelURLForConfigurationOptions:(id)a3 error:(id *)a4
{
  v4 = [VNEspressoHelpers pathForEspressoResourceWithFilename:@"vmtracker_model_v1_6.mlmodelc" error:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VNTrackMaskDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNTrackMaskDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNTrackMaskDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNTrackMaskDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __60__VNTrackMaskDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNTrackMaskDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNDetectorOption_PreferBackgroundProcessing"];
  v3 = [v2 copy];
  v4 = +[VNTrackMaskDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNTrackMaskDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)computeStagesToBindForConfigurationOptions:(id)a3
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"VNComputeStageMain";
  v5[1] = @"VNComputeStagePostProcessing";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allNeuralEngineComputeDevices:a3];
  v8[1] = @"VNComputeStagePostProcessing";
  v9[0] = v4;
  v5 = +[VNComputeDeviceUtilities allGPUComputeDevices];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)a3 functionName:(id)a4 error:(id *)a5
{
  v30[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v29 = a4;
  v9 = [a1 E5RTProgramLibraryForConfigurationOptions:v8 error:a5];
  v28 = v9;
  if (v9)
  {
    v10 = [v9 functionNamed:v29 error:a5];
    if (v10)
    {
      v26 = [v10 descriptorOfClass:objc_opt_class() forInput:@"input_image" error:a5];
      v30[0] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = [v10 inputs];
      for (i = 0; [v12 count] > i; ++i)
      {
        v14 = objc_opt_class();
        v15 = [v12 objectAtIndexedSubscript:i];
        v16 = [v10 descriptorOfClass:v14 forInput:v15 error:a5];

        if (!v16)
        {
          v17 = 0;
          goto LABEL_17;
        }

        [v11 addObject:v16];
      }

      v18 = [v10 outputs];
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (j = 0; ; ++j)
      {
        if ([v18 count] <= j)
        {
          v24 = [objc_alloc(MEMORY[0x1E69DF970]) initWithMajor:1];
          v17 = [objc_alloc(MEMORY[0x1E69DF8E0]) initWithFunction:v10 inputDescriptors:v11 inputImageDescriptors:v27 outputDescriptors:v19 confidencesOutputDescriptors:0 networkVersion:v24];

          goto LABEL_16;
        }

        v21 = objc_opt_class();
        v22 = [v18 objectAtIndexedSubscript:j];
        v23 = [v10 descriptorOfClass:v21 forOutput:v22 error:a5];

        if (!v23)
        {
          break;
        }

        [v19 addObject:v23];
      }

      v17 = 0;
LABEL_16:

LABEL_17:
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end