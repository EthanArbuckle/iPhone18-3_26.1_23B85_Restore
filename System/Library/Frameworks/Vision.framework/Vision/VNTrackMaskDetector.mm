@interface VNTrackMaskDetector
+ (id)computeStagesToBindForConfigurationOptions:(id)options;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options functionName:(id)name error:(id *)error;
+ (id)modelURLForConfigurationOptions:(id)options error:(id *)error;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (void)dealloc;
@end

@implementation VNTrackMaskDetector

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v169 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v153 = optionsCopy;
  v152 = [optionsCopy valueForKey:@"VNTrackMaskDetectorProcessOption_State"];
  if (v152)
  {
    v14 = [optionsCopy objectForKeyedSubscript:@"VNTrackMaskDetectorProcessorOption_GenerateCropRect"];
    bOOLValue = [v14 BOOLValue];

    v16 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
    v149 = v16;
    if (!v16)
    {
      v19 = 0;
LABEL_107:

      goto LABEL_108;
    }

    v147 = [VNValidationUtilities originatingRequestSpecifierInOptions:v153 error:error];
    if (!v147)
    {
      goto LABEL_30;
    }

    [v16 timingInfo];
    value = v159;
    flags = HIDWORD(v160);
    timescale = v160;
    v142 = bOOLValue;
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

    v21 = [v16 bufferWithWidth:objc_msgSend(v16 height:"width") format:objc_msgSend(v16 options:"height") error:{1111970369, v153, error}];
    if (!v21)
    {
LABEL_30:
      v19 = 0;
LABEL_106:

      goto LABEL_107;
    }

    pixelBuffer = v21;
    selfCopy = self;
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
          v24 = [v23 descriptorForOutput:@"update_h" error:error];
          shape = [v24 shape];
          v26 = shape;
          v27 = *[shape sizes];
          v28 = shape;
          v29 = *([shape sizes] + 8);
          v30 = shape;
          v31 = *([shape sizes] + 16);
          time1.value = 0;
          v32 = shape;
          v33 = (v29 * v27 * v31);
          VNCVPixelBufferCreateUsingIOSurface(*([shape sizes] + 24), v33, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:error error:?];
          [v22 setHiddenMaskBuffer:time1.value];
          v34 = shape;
          VNCVPixelBufferCreateUsingIOSurface(*([shape sizes] + 24), v33, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:error error:?];
          [v22 setHiddenMaskBufferOutput:time1.value];
          v35 = [v23 descriptorForOutput:@"update_k" error:error];

          shape2 = [v35 shape];

          v37 = shape2;
          v38 = *[shape2 sizes];
          v39 = shape2;
          v40 = *([shape2 sizes] + 8);
          v41 = shape2;
          v42 = *([shape2 sizes] + 16);
          v43 = shape2;
          v44 = (v40 * v38 * v42);
          VNCVPixelBufferCreateUsingIOSurface(*([shape2 sizes] + 24), v44, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:error error:?];
          [v22 setPreviousKey:time1.value];
          v45 = shape2;
          VNCVPixelBufferCreateUsingIOSurface(*([shape2 sizes] + 24), v44, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:error error:?];
          [v22 setPreviousKeyOutput:time1.value];
          v46 = [v23 descriptorForOutput:@"update_v" error:error];

          shape3 = [v46 shape];

          v48 = shape3;
          v49 = *[shape3 sizes];
          v50 = shape3;
          v51 = *([shape3 sizes] + 8);
          v52 = shape3;
          v53 = *([shape3 sizes] + 16);
          v54 = shape3;
          v55 = (v51 * v49 * v53);
          VNCVPixelBufferCreateUsingIOSurface(*([shape3 sizes] + 24), v55, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:error error:?];
          [v22 setPreviousValue:time1.value];
          v56 = shape3;
          VNCVPixelBufferCreateUsingIOSurface(*([shape3 sizes] + 24), v55, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:error error:?];
          [v22 setPreviousValueOutput:time1.value];
          function = [(VisionCoreE5RTInferenceFunctionDescriptor *)selfCopy->_functionDescriptor_Mask function];

          v58 = [function descriptorForOutput:@"regular_prob" error:error];

          shape4 = [v58 shape];

          v60 = shape4;
          v61 = *[shape4 sizes];
          v62 = shape4;
          v63 = *([shape4 sizes] + 8);
          v64 = shape4;
          v65 = *([shape4 sizes] + 16);
          v66 = shape4;
          v67 = (v63 * v61 * v65);
          VNCVPixelBufferCreateUsingIOSurface(*([shape4 sizes] + 24), v67, 0x4C303066u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:error error:?];
          [v146 setOutputMask:time1.value];
          v68 = shape4;
          VNCVPixelBufferCreateUsingIOSurface(*([shape4 sizes] + 24), v67, 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:error error:?];
          [v146 setOutput:time1.value];
          v144 = [function descriptorForOutput:@"regular_q" error:error];

          shape5 = [v144 shape];

          v70 = shape5;
          v71 = *[shape5 sizes];
          v72 = shape5;
          v73 = *([shape5 sizes] + 8);
          v74 = shape5;
          v75 = *([shape5 sizes] + 16);
          v76 = shape5;
          VNCVPixelBufferCreateUsingIOSurface(*([shape5 sizes] + 24), (v73 * v71 * v75), 0x4C303068u, 0, &time1);
          [VNCVPixelBufferHelper zeroOutPixelBuffer:error error:?];
          [v146 setQuality:time1.value];
          v77 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:5];
          if ([v77 assignPixelBuffer:buffer toName:@"input_image" error:error] & 1) != 0 && (objc_msgSend(v77, "assignPixelBuffer:toName:error:", objc_msgSend(v146, "inititalMask"), @"mask", error) & 1) != 0 && (objc_msgSend(v77, "assignPixelBuffer:toName:error:", objc_msgSend(v146, "hiddenMaskBuffer"), @"hidden_state", error) & 1) != 0 && (objc_msgSend(v77, "assignPixelBuffer:toName:error:", objc_msgSend(v146, "previousKey"), @"prev_key", error) & 1) != 0 && (objc_msgSend(v77, "assignPixelBuffer:toName:error:", objc_msgSend(v146, "previousValue"), @"prev_value", error))
          {
            v78 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:3];
            if ([v78 assignPixelBuffer:objc_msgSend(v146 toName:"previousValueOutput") error:{@"init_v", error}] & 1) != 0 && (objc_msgSend(v78, "assignPixelBuffer:toName:error:", objc_msgSend(v146, "previousKeyOutput"), @"init_k", error) & 1) != 0 && (objc_msgSend(v78, "assignPixelBuffer:toName:error:", objc_msgSend(v146, "hiddenMaskBufferOutput"), @"init_h", error))
            {
              v79 = objc_alloc_init(MEMORY[0x1E69DF8D8]);
              [v79 setBoundInputObjects:v77];
              [v79 setBoundOutputObjects:v78];
              function2 = [(VisionCoreE5RTInferenceFunctionDescriptor *)selfCopy->_functionDescriptor_Memory function];
              v81 = [function2 newExecutionContextWithConfiguration:v79 error:error];

              if ([v81 executeAndReturnError:error])
              {
                +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v146 hiddenMaskBufferOutput], objc_msgSend(v146, "hiddenMaskBuffer"), error);
                +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v146 previousKeyOutput], objc_msgSend(v146, "previousKey"), error);
                +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v146 previousValueOutput], objc_msgSend(v146, "previousValue"), error);
              }

              v82 = *error == 0;
              if (*error)
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
          if (error)
          {
            *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Initial mask missing for processing", v139, v141];
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
            if (!+[VNCVPixelBufferHelper copyCVPixelBufferContentFromFP16ToFP32:target:error:](VNCVPixelBufferHelper, v98, [v146 outputMask], error))
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
          v102 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:Height height:PixelFormatType pixelFormatType:error error:?];
          outputMask = [v152 outputMask];
          if (!selfCopy)
          {
            goto LABEL_89;
          }

          v104 = outputMask;
          highResMaskPixelBuffer = selfCopy->highResMaskPixelBuffer;
          if (!highResMaskPixelBuffer || (v106 = CVPixelBufferGetWidth(highResMaskPixelBuffer), v106 != CVPixelBufferGetWidth(pixelBuffer)) || (v107 = CVPixelBufferGetHeight(selfCopy->highResMaskPixelBuffer), v108 = CVPixelBufferGetHeight(pixelBuffer), v109 = selfCopy, v107 != v108))
          {
            CVPixelBufferRelease(selfCopy->highResMaskPixelBuffer);
            v112 = CVPixelBufferGetWidth(pixelBuffer);
            v113 = CVPixelBufferGetHeight(pixelBuffer);
            v114 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v112 height:v113 pixelFormatType:1278226534 error:error];
            v109 = selfCopy;
            selfCopy->highResMaskPixelBuffer = v114;
          }

          time1.value = MEMORY[0x1E69E9820];
          *&time1.timescale = 3221225472;
          time1.epoch = __59__VNTrackMaskDetector__upsampleLowResMask_reference_error___block_invoke;
          v159 = &unk_1E77B3C50;
          v161 = pixelBuffer;
          v162 = v104;
          v160 = v109;
          v115 = _Block_copy(&time1);
          v116 = VNExecuteBlock(v115, error);
          v117 = selfCopy->highResMaskPixelBuffer;
          if ((v116 & 1) == 0)
          {
            CVPixelBufferRelease(selfCopy->highResMaskPixelBuffer);
            v117 = 0;
            selfCopy->highResMaskPixelBuffer = 0;
          }

          v118 = selfCopy->_postProcessingMetalContext;
          time1.value = MEMORY[0x1E69E9820];
          *&time1.timescale = 3221225472;
          time1.epoch = __93__VNTrackMaskDetector__removeBackgroundFromPixelBuffer_toPixelBuffer_usingMask_offset_error___block_invoke;
          v159 = &unk_1E77B3C78;
          v162 = pixelBuffer;
          v163 = v102;
          v164 = v117;
          v160 = v118;
          v161 = selfCopy;
          v165 = 0;
          v119 = v118;
          v120 = _Block_copy(&time1);
          v121 = VNExecuteBlock(v120, error);

          if (v121)
          {
            v122 = *MEMORY[0x1E6965CE8];
            if (CVBufferHasAttachment(buffer, *MEMORY[0x1E6965CE8]))
            {
              LODWORD(time1.value) = 0;
              v123 = CVBufferCopyAttachment(buffer, v122, &time1);
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
        if (([v84 assignPixelBuffer:buffer toName:@"input_image" error:error] & 1) == 0 || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "inititalMask"), @"mask", error) || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "hiddenMaskBuffer"), @"hidden_state", error) || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "previousKey"), @"prev_key", error) || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "previousValue"), @"prev_value", error))
        {
          goto LABEL_95;
        }

        v85 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:5];
        if (([v85 assignPixelBuffer:objc_msgSend(v83 toName:"previousValueOutput") error:{@"update_v", error}] & 1) != 0 && objc_msgSend(v85, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "previousKeyOutput"), @"update_k", error) && objc_msgSend(v85, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "hiddenMaskBufferOutput"), @"update_h", error) && objc_msgSend(v85, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "output"), @"update_prob", error) && objc_msgSend(v85, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "quality"), @"update_q", error))
        {
          v93 = objc_alloc_init(MEMORY[0x1E69DF8D8]);
          [v93 setBoundInputObjects:v84];
          [v93 setBoundOutputObjects:v85];
          function3 = [(VisionCoreE5RTInferenceFunctionDescriptor *)self->_functionDescriptor_Updated function];
          v95 = [function3 newExecutionContextWithConfiguration:v93 error:error];

          if ([v95 executeAndReturnError:error])
          {
            +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v83 hiddenMaskBufferOutput], objc_msgSend(v83, "hiddenMaskBuffer"), error);
            +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v83 previousKeyOutput], objc_msgSend(v83, "previousKey"), error);
            +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v83 previousValueOutput], objc_msgSend(v83, "previousValue"), error);
            +[VNCVPixelBufferHelper copyCVPixelBufferContentFromFP16ToFP32:target:error:](VNCVPixelBufferHelper, [v83 output], objc_msgSend(v83, "outputMask"), error);
          }

          v96 = *error == 0;

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
      if (([v84 assignPixelBuffer:buffer toName:@"input_image" error:error] & 1) == 0 || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "inititalMask"), @"mask", error) || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "hiddenMaskBuffer"), @"hidden_state", error) || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "previousKey"), @"prev_key", error) || !objc_msgSend(v84, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "previousValue"), @"prev_value", error))
      {
        goto LABEL_95;
      }

      v85 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:3];
      if (([v85 assignPixelBuffer:objc_msgSend(v83 toName:"hiddenMaskBufferOutput") error:{@"regular_h", error}] & 1) != 0 && objc_msgSend(v85, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "output"), @"regular_prob", error) && objc_msgSend(v85, "assignPixelBuffer:toName:error:", objc_msgSend(v83, "quality"), @"regular_q", error))
      {
        v86 = objc_alloc_init(MEMORY[0x1E69DF8D8]);
        [v86 setBoundInputObjects:v84];
        [v86 setBoundOutputObjects:v85];
        function4 = [(VisionCoreE5RTInferenceFunctionDescriptor *)self->_functionDescriptor_Mask function];
        v88 = [function4 newExecutionContextWithConfiguration:v86 error:error];

        if ([v88 executeAndReturnError:error])
        {
          +[VNCVPixelBufferHelper copyCVPixelBufferContent:target:error:](VNCVPixelBufferHelper, [v83 hiddenMaskBufferOutput], objc_msgSend(v83, "hiddenMaskBuffer"), error);
          +[VNCVPixelBufferHelper copyCVPixelBufferContentFromFP16ToFP32:target:error:](VNCVPixelBufferHelper, [v83 output], objc_msgSend(v83, "outputMask"), error);
        }

        v89 = *error == 0;

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

  if (error)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"State missing for processing"];
    *error = v19 = 0;
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

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  recorderCopy = recorder;
  [optionsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
  v19 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v20 = v19;
  if (v19)
  {
    width = [v19 width];
    v22 = width * width;
    height = [v20 height];
    v24 = height * height;
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
      VNRecordImageTooSmallWarningWithImageMinimumShortDimension(recorderCopy, 512);
    }

    configurationOptions = [(VNDetector *)self configurationOptions];
    v27 = [v20 croppedBufferWithWidth:512 height:512 format:1111970369 cropRect:optionsCopy options:error error:{x * width, y * height, v22, v24}];
    *buffer = v27;
    v28 = v27 != 0;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  sessionCopy = session;
  configurationOptions = [(VNDetector *)self configurationOptions];
  v8 = [objc_opt_class() createE5RTFunctionDescriptorForConfigurationOptions:configurationOptions functionName:@"initialFrame" error:error];
  functionDescriptor_Memory = self->_functionDescriptor_Memory;
  self->_functionDescriptor_Memory = v8;

  if (self->_functionDescriptor_Memory && ([objc_opt_class() createE5RTFunctionDescriptorForConfigurationOptions:configurationOptions functionName:@"regularFrame" error:error], v10 = objc_claimAutoreleasedReturnValue(), functionDescriptor_Mask = self->_functionDescriptor_Mask, self->_functionDescriptor_Mask = v10, functionDescriptor_Mask, self->_functionDescriptor_Mask) && (objc_msgSend(objc_opt_class(), "createE5RTFunctionDescriptorForConfigurationOptions:functionName:error:", configurationOptions, @"updateFrame", error), v12 = objc_claimAutoreleasedReturnValue(), functionDescriptor_Updated = self->_functionDescriptor_Updated, self->_functionDescriptor_Updated = v12, functionDescriptor_Updated, self->_functionDescriptor_Updated) && (v14 = self->_functionDescriptor_Memory, v25.receiver = self, v25.super_class = VNTrackMaskDetector, -[VNE5RTBasedDetector completeInitializationForSession:functionDescriptor:error:](&v25, sel_completeInitializationForSession_functionDescriptor_error_, sessionCopy, v14, error)))
  {
    v15 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:error];
    if (v15)
    {
      v16 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStagePostProcessing" error:error];
      if (v16 && ([VNComputeDeviceUtilities metalDeviceForComputeDevice:v16], v17 = objc_claimAutoreleasedReturnValue(), [VNMetalContext metalContextForDevice:v17 error:error], v18 = objc_claimAutoreleasedReturnValue(), postProcessingMetalContext = self->_postProcessingMetalContext, self->_postProcessingMetalContext = v18, postProcessingMetalContext, v17, (v20 = self->_postProcessingMetalContext) != 0))
      {
        v21 = [(VNMetalContext *)v20 computePipelineStateForFunctionWithName:error error:?];
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

+ (id)modelURLForConfigurationOptions:(id)options error:(id *)error
{
  v4 = [VNEspressoHelpers pathForEspressoResourceWithFilename:@"vmtracker_model_v1_6.mlmodelc" error:error];
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
  block[4] = self;
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

+ (id)computeStagesToBindForConfigurationOptions:(id)options
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"VNComputeStageMain";
  v5[1] = @"VNComputeStagePostProcessing";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allNeuralEngineComputeDevices:options];
  v8[1] = @"VNComputeStagePostProcessing";
  v9[0] = v4;
  v5 = +[VNComputeDeviceUtilities allGPUComputeDevices];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options functionName:(id)name error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  nameCopy = name;
  v9 = [self E5RTProgramLibraryForConfigurationOptions:optionsCopy error:error];
  v28 = v9;
  if (v9)
  {
    v10 = [v9 functionNamed:nameCopy error:error];
    if (v10)
    {
      v26 = [v10 descriptorOfClass:objc_opt_class() forInput:@"input_image" error:error];
      v30[0] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      inputs = [v10 inputs];
      for (i = 0; [inputs count] > i; ++i)
      {
        v14 = objc_opt_class();
        v15 = [inputs objectAtIndexedSubscript:i];
        v16 = [v10 descriptorOfClass:v14 forInput:v15 error:error];

        if (!v16)
        {
          v17 = 0;
          goto LABEL_17;
        }

        [v11 addObject:v16];
      }

      outputs = [v10 outputs];
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (j = 0; ; ++j)
      {
        if ([outputs count] <= j)
        {
          v24 = [objc_alloc(MEMORY[0x1E69DF970]) initWithMajor:1];
          v17 = [objc_alloc(MEMORY[0x1E69DF8E0]) initWithFunction:v10 inputDescriptors:v11 inputImageDescriptors:v27 outputDescriptors:v19 confidencesOutputDescriptors:0 networkVersion:v24];

          goto LABEL_16;
        }

        v21 = objc_opt_class();
        v22 = [outputs objectAtIndexedSubscript:j];
        v23 = [v10 descriptorOfClass:v21 forOutput:v22 error:error];

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