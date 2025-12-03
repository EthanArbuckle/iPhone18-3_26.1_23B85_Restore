@interface VNPersonSegmentationGeneratorLearnedMattingTiled
+ (id)computeStagesToBindForConfigurationOptions:(id)options;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BufferSize)_calculateNumberOfTilesForNetworkInputImageSize:(BufferSize)size networkInputMaskSize:(BufferSize)maskSize networkOutputMaskSize:(BufferSize)outputMaskSize rotated:(BOOL)rotated;
- (BufferSize)outputMaskSize;
- (id)_bindPixelBufferToTexture:(__CVBuffer *)texture error:(id *)error;
- (optional<std::tuple<std::unordered_map<NSString)_processTiledImageBuffer:(std:(espresso_buffer_t>>> *__return_ptr)retstr :(VNPersonSegmentationGeneratorLearnedMattingTiled *)self unordered_map<NSString *) inputMaskObservation:(SEL)observation options:(id)options qosClass:(id)class error:(id)error;
- (optional<std::tuple<std::unordered_map<NSString)processLockedImageBuffer:(std:(espresso_buffer_t>>> *__return_ptr)retstr :(VNPersonSegmentationGeneratorLearnedMattingTiled *)self unordered_map<NSString *) inputMaskObservation:(SEL)observation options:(__CVBuffer *)options qosClass:(id)class error:(id)error;
- (uint64_t)_processTiledImageBuffer:(uint64_t)buffer inputMaskObservation:options:qosClass:error:;
- (void)_processTiledImageBuffer:(void *)result inputMaskObservation:(void *)observation options:qosClass:error:;
@end

@implementation VNPersonSegmentationGeneratorLearnedMattingTiled

+ (id)computeStagesToBindForConfigurationOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___VNPersonSegmentationGeneratorLearnedMattingTiled;
  v3 = objc_msgSendSuper2(&v6, sel_computeStagesToBindForConfigurationOptions_, options);
  v4 = [v3 arrayByAddingObject:@"VNComputeStagePostProcessing"];

  return v4;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___VNPersonSegmentationGeneratorLearnedMattingTiled;
  v4 = objc_msgSendSuper2(&v9, sel_supportedComputeStageDevicesForOptions_error_, options, error);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
    v7 = +[VNComputeDeviceUtilities allGPUComputeDevices];
    [v6 setObject:v7 forKeyedSubscript:@"VNComputeStagePostProcessing"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_bindPixelBufferToTexture:(__CVBuffer *)texture error:(id *)error
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(texture);
  switch(PixelFormatType)
  {
    case 0x42475241u:
      v8 = 80;
      goto LABEL_7;
    case 0x4C303066u:
      v8 = 55;
      goto LABEL_7;
    case 0x4C303068u:
      v8 = 25;
LABEL_7:
      v9 = [VNMetalContext bindPixelBufferToMTL2DTexture:texture pixelFormat:v8 plane:error error:?];
      goto LABEL_8;
  }

  if (error)
  {
    v11 = [VNError errorForUnimplementedFunctionWithLocalizedDescription:@"pixel format unimplemented"];
    v12 = v11;
    v9 = 0;
    *error = v11;
  }

  else
  {
    v9 = 0;
  }

LABEL_8:

  return v9;
}

- (optional<std::tuple<std::unordered_map<NSString)_processTiledImageBuffer:(std:(espresso_buffer_t>>> *__return_ptr)retstr :(VNPersonSegmentationGeneratorLearnedMattingTiled *)self unordered_map<NSString *) inputMaskObservation:(SEL)observation options:(id)options qosClass:(id)class error:(id)error
{
  v186[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  classCopy = class;
  errorCopy = error;
  v15 = [VNValidationUtilities requiredSessionInOptions:errorCopy error:a8];
  if (v15)
  {
    v90 = v15;
    v16 = [errorCopy objectForKeyedSubscript:@"VNSegmentationGeneratorProcessOption_ImageRotated"];
    if ([v16 BOOLValue])
    {
      rotateImageToMatchNetworkOrientation = [objc_opt_class() rotateImageToMatchNetworkOrientation];
    }

    else
    {
      rotateImageToMatchNetworkOrientation = 0;
    }

    v18 = *(MEMORY[0x1E695F058] + 16);
    v184 = *MEMORY[0x1E695F058];
    v185 = v18;
    v19 = [errorCopy objectForKeyedSubscript:@"VNSegmentationGeneratorProcessOption_ImageROI"];
    qos_class = a7;
    [v19 getValue:&v184 size:32];

    espressoInputImageSize = [(VNSegmentationGenerator *)self espressoInputImageSize];
    width = espressoInputImageSize->width;
    height = espressoInputImageSize->height;
    espressoInputMaskSize = [(VNSegmentationGenerator *)self espressoInputMaskSize];
    v24 = espressoInputMaskSize->width;
    v25 = espressoInputMaskSize->height;
    outputMaskSize = [(VNPersonSegmentationGeneratorLearnedMattingTiled *)self outputMaskSize];
    LOBYTE(v68) = rotateImageToMatchNetworkOrientation;
    v28 = [(VNPersonSegmentationGeneratorLearnedMattingTiled *)self _calculateNumberOfTilesForNetworkInputImageSize:width networkInputMaskSize:height networkOutputMaskSize:v24 rotated:v25, outputMaskSize, v27, v68];
    v30 = v29;
    v31 = [(VNMetalContext *)self->_postProcessingMetalContext commandQueueReturnError:a8];
    if (!v31)
    {
      retstr->var0.var0 = 0;
      retstr->var1 = 0;
LABEL_49:

      v15 = v90;
      goto LABEL_50;
    }

    v86 = v31;
    v32 = objc_opt_class();
    inputImageBlobName = [v32 inputImageBlobName];
    inputMaskBlobName = [v32 inputMaskBlobName];
    width = [optionsCopy width];
    height = [optionsCopy height];
    v77 = width;
    v79 = v30;
    v80 = v28;
    v88 = v185;
    outputMaskSize2 = [(VNPersonSegmentationGeneratorLearnedMattingTiled *)self outputMaskSize];
    if (rotateImageToMatchNetworkOrientation)
    {
      v36 = v35;
    }

    else
    {
      v36 = outputMaskSize2;
    }

    if (rotateImageToMatchNetworkOrientation)
    {
      v37 = outputMaskSize2;
    }

    else
    {
      v37 = v35;
    }

    v183[0] = 0;
    v183[1] = v183;
    v183[2] = 0x2020000000;
    v183[3] = 0;
    v182[0] = 0;
    v182[1] = v182;
    v182[2] = 0x2020000000;
    v182[3] = 0;
    v178 = 0;
    v179 = &v178;
    v180 = 0x2020000000;
    v181 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke;
    aBlock[3] = &unk_1E77B4328;
    aBlock[4] = v183;
    aBlock[5] = v182;
    aBlock[6] = &v178;
    v87 = _Block_copy(aBlock);
    v164[0] = MEMORY[0x1E69E9820];
    v164[1] = 3221225472;
    v164[2] = __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_2;
    v164[3] = &unk_1E77B4350;
    v169 = v183;
    v38 = optionsCopy;
    v172 = vcvtq_u64_f64(v88);
    v173 = v184;
    v174 = v185;
    v165 = v38;
    v170 = v182;
    v166 = classCopy;
    selfCopy = self;
    v168 = v90;
    v171 = &v178;
    v175 = v36;
    v176 = v37;
    v89 = _Block_copy(v164);
    if ((VNExecuteBlock(v89, a8) & 1) == 0)
    {
      v87[2]();
      retstr->var0.var0 = 0;
      retstr->var1 = 0;
LABEL_48:

      _Block_object_dispose(&v178, 8);
      _Block_object_dispose(v182, 8);
      _Block_object_dispose(v183, 8);

      v31 = v86;
      goto LABEL_49;
    }

    v162[0] = 0;
    v162[1] = v162;
    v162[2] = 0x3032000000;
    v162[3] = __Block_byref_object_copy__19611;
    v162[4] = __Block_byref_object_dispose__19612;
    v163 = 0;
    v160[0] = 0;
    v160[1] = v160;
    v160[2] = 0x3032000000;
    v160[3] = __Block_byref_object_copy__19611;
    v160[4] = __Block_byref_object_dispose__19612;
    v161 = 0;
    v158[0] = 0;
    v158[1] = v158;
    v158[2] = 0x3032000000;
    v158[3] = __Block_byref_object_copy__19611;
    v158[4] = __Block_byref_object_dispose__19612;
    v159 = 0;
    v157[0] = MEMORY[0x1E69E9820];
    v157[1] = 3221225472;
    v157[2] = __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_45;
    v157[3] = &unk_1E77B4378;
    v157[5] = v162;
    v157[4] = self;
    v157[6] = v183;
    v157[7] = v160;
    v157[8] = v182;
    v157[9] = v158;
    v157[10] = &v178;
    v78 = _Block_copy(v157);
    if ((VNExecuteBlock(v78, a8) & 1) == 0)
    {
      v87[2]();
      retstr->var0.var0 = 0;
      retstr->var1 = 0;
LABEL_47:

      _Block_object_dispose(v158, 8);
      _Block_object_dispose(v160, 8);

      _Block_object_dispose(v162, 8);
      goto LABEL_48;
    }

    v39 = *([(VNSegmentationGenerator *)self espressoMaskOutputBufferSizes]+ 16);
    v40 = v184;
    v41 = *(v39 + 24);
    v42 = *(v39 + 32);
    v155[0] = 0;
    v155[1] = v155;
    v155[2] = 0x6012000000;
    v155[3] = __Block_byref_object_copy__46;
    v155[4] = __Block_byref_object_dispose__47;
    v155[5] = "";
    memset(v156, 0, sizeof(v156));
    v153[0] = 0;
    v153[1] = v153;
    v153[2] = 0x3812000000;
    v153[3] = __Block_byref_object_copy__48_19614;
    v153[4] = __Block_byref_object_dispose__49_19615;
    v153[5] = "";
    v154 = 0;
    v43 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v73 = dispatch_queue_create(0, v43);

    v44 = (v36 - v41) / (v80 - 1);
    v45 = v41;
    v46 = (v37 - v42) / (v79 - 1);
    v47 = v42;
    LODWORD(v48) = (v41 - v44);
    HIDWORD(v48) = (v42 - v46);
    dsemaa = v48;
    v49 = dispatch_semaphore_create(0);
    v147 = 0;
    v148 = &v147;
    v149 = 0x3032000000;
    v150 = __Block_byref_object_copy__19611;
    v151 = __Block_byref_object_dispose__19612;
    v152 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_51;
    block[3] = &unk_1E77B43E8;
    v137 = v153;
    block[4] = self;
    v138 = v155;
    v139 = &v147;
    v141 = v44;
    v142 = v46;
    v146 = WORD2(dsemaa);
    v145 = dsemaa;
    v50 = v86;
    v135 = v50;
    v140 = v158;
    v143 = v80;
    v144 = v79;
    dsema = v49;
    v136 = dsema;
    v72 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qos_class, 0, block);
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 3221225472;
    v133[2] = __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_4;
    v133[3] = &unk_1E77B4430;
    v133[4] = self;
    qos_classa = _Block_copy(v133);
    v127 = 0;
    v128 = &v127;
    v129 = 0x3032000000;
    v130 = __Block_byref_object_copy__19611;
    v131 = __Block_byref_object_dispose__19612;
    v132 = 0;
    v51 = *([(VNSegmentationGenerator *)self espressoMaskOutputBuffers]+ 16) + 24;
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_6;
    v113[3] = &unk_1E77B44A8;
    v114 = v50;
    v71 = qos_classa;
    v119 = v71;
    selfCopy2 = self;
    v121 = v162;
    v122 = v160;
    v116 = inputImageBlobName;
    v126 = v51;
    v117 = inputMaskBlobName;
    v123 = &v127;
    v124 = v153;
    v125 = v155;
    v69 = v73;
    v118 = v69;
    v70 = v72;
    v120 = v70;
    v52 = _Block_copy(v113);
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_9;
    v103[3] = &unk_1E77B44D0;
    v105 = v80;
    v106 = v79;
    v107 = *(&v40 + 1) / height;
    v108 = v44 / v36;
    v109 = v46 / v37;
    v110 = *&v40 / v77;
    v111 = v45 / v36;
    v112 = v47 / v37;
    v81 = v52;
    v104 = v81;
    v53 = _Block_copy(v103);
    v54 = objc_autoreleasePoolPush();
    v102 = 0;
    v55 = v53[2](v53, &v102);
    v56 = v102;
    if ((v55 & 1) == 0)
    {
      retstr->var0.var0 = 0;
      retstr->var1 = 0;
    }

    objc_autoreleasePoolPop(v54);
    if (!v55)
    {
      v58 = 0;
      v59 = 0;
      goto LABEL_29;
    }

    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
    v57 = v148[5];
    if (v57)
    {
      if (a8)
      {
LABEL_27:
        *a8 = v57;
      }
    }

    else
    {
      v57 = v128[5];
      if (!v57)
      {
        v58 = v179[3];
        v179[3] = 0;
        v59 = 1;
LABEL_29:
        v87[2]();
        if (a8 && v56)
        {
          v60 = v56;
          *a8 = v56;
        }

        if (v59)
        {
          v186[0] = *(*([(VNSegmentationGenerator *)self espressoMaskOutputBufferSizes]+ 16) + 16);
          v186[1] = v58;
          *v93 = 0u;
          v94 = 0u;
          v95 = 1065353216;
          std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},__CVBuffer *> const&>(v93, v186);
          v61 = v93[0];
          v62 = v93[1];
          v93[0] = 0;
          v93[1] = 0;
          v96[0] = v61;
          v96[1] = v62;
          v97 = v94;
          v98 = v95;
          if (*(&v94 + 1))
          {
            v63 = *(v94 + 8);
            if ((v62 & (v62 - 1)) != 0)
            {
              if (v63 >= v62)
              {
                v63 %= v62;
              }
            }

            else
            {
              v63 &= v62 - 1;
            }

            *(v61 + v63) = &v97;
            v94 = 0uLL;
          }

          v100 = 0u;
          __p = 0u;
          v101 = 1065353216;
          std::__hash_table<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>>>::__hash_table(retstr, v96);
          std::__hash_table<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>>>::__hash_table(&retstr->var0.var1.var0.var1, &__p);
          retstr->var1 = 1;
          std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v100);
          v64 = __p;
          *&__p = 0;
          if (v64)
          {
            operator delete(v64);
          }

          std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v97);
          v65 = v96[0];
          v96[0] = 0;
          if (v65)
          {
            operator delete(v65);
          }

          std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(0);
          std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v94);
          v66 = v93[0];
          v93[0] = 0;
          if (v66)
          {
            operator delete(v66);
          }
        }

        _Block_object_dispose(&v127, 8);
        _Block_object_dispose(&v147, 8);

        _Block_object_dispose(v153, 8);
        _Block_object_dispose(v155, 8);
        std::deque<-[VNPersonSegmentationGeneratorLearnedMattingTiled _processTiledImageBuffer:inputMaskObservation:options:qosClass:error:]::OutputTileData>::~deque[abi:ne200100](v156);
        goto LABEL_47;
      }

      if (a8)
      {
        goto LABEL_27;
      }
    }

    v58 = 0;
    v59 = 0;
    retstr->var0.var0 = 0;
    retstr->var1 = 0;
    goto LABEL_29;
  }

  retstr->var0.var0 = 0;
  retstr->var1 = 0;
LABEL_50:

  return result;
}

void __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke(void *a1)
{
  CVPixelBufferRelease(*(*(a1[4] + 8) + 24));
  *(*(a1[4] + 8) + 24) = 0;
  CVPixelBufferRelease(*(*(a1[5] + 8) + 24));
  *(*(a1[5] + 8) + 24) = 0;
  CVPixelBufferRelease(*(*(a1[6] + 8) + 24));
  *(*(a1[6] + 8) + 24) = 0;
}

BOOL __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_2(uint64_t a1, void *a2)
{
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) croppedBufferWithWidth:*(a1 + 88) height:*(a1 + 96) format:1111970369 cropRect:0 options:a2 error:{*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    *(*(*(a1 + 72) + 8) + 24) = CVPixelBufferRetain([*(a1 + 40) pixelBuffer]);
    Width = CVPixelBufferGetWidth(*(*(*(a1 + 72) + 8) + 24));
    v5 = Width / CVPixelBufferGetHeight(*(*(*(a1 + 72) + 8) + 24));
    v6 = *(a1 + 120) / *(a1 + 128);
    if ((v5 >= 1.0 || v6 < 1.0) && (v5 < 1.0 || v6 >= 1.0))
    {
      goto LABEL_14;
    }

    v9 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:*(*(*(a1 + 72) + 8) + 24)];
    v10 = [v9 imageByApplyingCGOrientation:6];

    CVPixelBufferRelease(*(*(*(a1 + 72) + 8) + 24));
    v11 = [*(a1 + 48) boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:a2];
    if (v11)
    {
      v12 = *(a1 + 48);
      Height = CVPixelBufferGetHeight(*(*(*(a1 + 72) + 8) + 24));
      *(*(*(a1 + 72) + 8) + 24) = [v12 renderCIImage:v10 width:Height height:CVPixelBufferGetWidth(*(*(*(a1 + 72) + 8) + 24)) format:1278226534 computeDevice:v11 session:*(a1 + 56) error:a2];
      v14 = *(*(*(a1 + 72) + 8) + 24);

      if (v14)
      {
LABEL_14:
        *(*(*(a1 + 80) + 8) + 24) = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:*(a1 + 144) height:1278226536 pixelFormatType:a2 error:?];
        return *(*(*(a1 + 80) + 8) + 24) != 0;
      }
    }

    else
    {
    }
  }

  return 0;
}

BOOL __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_45(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) _bindPixelBufferToTexture:*(*(*(a1 + 48) + 8) + 24) error:a2];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return 0;
  }

  v7 = [*(a1 + 32) _bindPixelBufferToTexture:*(*(*(a1 + 64) + 8) + 24) error:a2];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    return 0;
  }

  v10 = [(VNMetalContext *)*(*(a1 + 32) + 216) bindPixelBufferToMTL2DTexture:a2 error:?];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  return *(*(*(a1 + 72) + 8) + 40) != 0;
}

void __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_51(uint64_t a1)
{
  v47[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(*(a1 + 56) + 8) + 48));
  [VNError VNAssert:*(*(*(a1 + 64) + 8) + 88) != 0 log:@"VNSegmentationGenerator - output tiles queue is empty"];
  v2 = *(*(a1 + 64) + 8);
  v3 = v2[3].i64[1];
  v4 = vaddq_s64(v2[5], xmmword_1A6038C90);
  v5 = v3[v2[5].i64[0] / 0xAAuLL] + 24 * v2[5].i64[0] + -4080 * (v2[5].i64[0] / 0xAAuLL);
  v36 = *v5;
  v6 = *(v5 + 16);
  v2[5] = v4;
  if (v4.i64[0] >= 0x154uLL)
  {
    operator delete(*v3);
    v2[3].i64[1] += 8;
    v2[5].i64[0] -= 170;
  }

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 48));
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v46 = 0;
  v9 = [v8 _bindPixelBufferToTexture:v6 error:&v46];
  v10 = v46;
  v11 = v46;
  v12 = v11;
  if (v9)
  {
    v13 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(*(a1 + 88), vcvtq_f64_u64(v36)))));
    v34 = 0.0;
    HIWORD(v14) = 0;
    v35 = 0.0;
    if (v13.i32[0])
    {
      LOWORD(v14) = *(a1 + 120);
      v14 = LODWORD(v14);
      v35 = v14;
    }

    v32 = v13;
    if (v13.i32[1])
    {
      LOWORD(v14) = *(a1 + 122);
      v34 = LODWORD(v14);
    }

    v31 = v10;
    v15 = v7;
    v33 = v11;
    v16 = [*(a1 + 40) commandBuffer];
    v17 = *(a1 + 32);
    v18 = *(v17 + 216);
    v19 = *(v17 + 232);
    v20 = [v9 width];
    v21 = [v9 height];
    v22 = *(*(*(a1 + 80) + 8) + 40);
    v47[0] = v9;
    v47[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_2_60;
    v43[3] = &__block_descriptor_44_e36_v16__0___MTLComputeCommandEncoder__8l;
    v45 = v32.i16[2];
    v44 = v32.i16[0];
    v43[4] = __PAIR64__(LODWORD(v34), LODWORD(v35));
    [VNMetalContext encodeCommandsForBuffer:v18 state:v16 label:v19 width:v20 height:v21 textures:v23 buffers:v43 block:?];

    v12 = v33;
    v7 = v15;
    v10 = v31;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_3;
    v37[3] = &unk_1E77B43C0;
    v39 = v6;
    v40 = v36;
    v41 = v6;
    v42 = *(a1 + 104);
    v38 = *(a1 + 48);
    [v16 addCompletedHandler:v37];
    [v16 commit];
  }

  else
  {
    v24 = *(*(a1 + 72) + 8);
    v26 = *(v24 + 40);
    v25 = (v24 + 40);
    if (!v26)
    {
      objc_storeStrong(v25, v10);
    }

    CVPixelBufferRelease(v6);
  }

  objc_autoreleasePoolPop(v7);
  if (v9)
  {
    v27 = v12 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    v28 = *(*(a1 + 72) + 8);
    v30 = *(v28 + 40);
    v29 = (v28 + 40);
    if (!v30)
    {
      objc_storeStrong(v29, v10);
    }

    dispatch_semaphore_signal(*(a1 + 48));
  }
}

__CVBuffer *__121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_4(uint64_t a1, void *a2, void *a3, size_t a4, size_t a5, uint64_t a6, void *a7, double a8, double a9, double a10, double a11)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v21 = a2;
  v22 = a3;
  v23 = [v22 width];
  v24 = [v22 height];
  v25 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:a4 height:a5 pixelFormatType:a6 error:a7];
  if (v25)
  {
    v26 = [*(a1 + 32) _bindPixelBufferToTexture:v25 error:a7];
    v27 = v26;
    if (v26)
    {
      v28 = *(a1 + 32);
      v37 = *(v28 + 224);
      v38 = *(v28 + 216);
      v36 = [v26 width];
      v29 = [v27 height];
      v40[0] = v22;
      v40[1] = v27;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
      *&v31 = a8 * v23;
      v32 = a9 * v24;
      *(&v31 + 1) = v32;
      *&v33 = a10 * v23 / a4;
      v34 = a11 * v24 / a5;
      *(&v33 + 1) = v34;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_5;
      v39[3] = &__block_descriptor_48_e36_v16__0___MTLComputeCommandEncoder__8l;
      v39[4] = v31;
      v39[5] = v33;
      [VNMetalContext encodeCommandsForBuffer:v38 state:v21 label:v37 width:v36 height:v29 textures:v30 buffers:v39 block:?];
    }

    else
    {
      CVPixelBufferRelease(v25);
      v25 = 0;
    }
  }

  return v25;
}

BOOL __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v23 = [*(a1 + 32) commandBuffer];
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v24 = *(a1 + 72);
  v25 = *(*(*(a1 + 88) + 8) + 40);
  v26 = [*(a1 + 40) espressoInputImageSize];
  v57 = (*(v24 + 16))(v24, v23, v25, *v26, v26[1], 1111970369, a4, a5, a6, a7, a8);
  if (v55[3])
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v27 = *(a1 + 72);
    v28 = *(*(*(a1 + 96) + 8) + 40);
    v29 = [*(a1 + 40) espressoInputMaskSize];
    v53 = (*(v27 + 16))(v27, v23, v28, *v29, v29[1], 1278226536, a4, a9, a10, a11, a12);
    v30 = v51[3];
    v31 = v30 != 0;
    if (v30)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_7;
      v40[3] = &unk_1E77B4480;
      v44 = &v54;
      v39 = *(a1 + 40);
      v32 = *(&v39 + 1);
      v45 = &v50;
      v33 = *(a1 + 56);
      v48 = a2;
      v49 = a3;
      v34 = *(a1 + 120);
      v46 = *(a1 + 104);
      v47 = v34;
      v35 = *(a1 + 64);
      *&v36 = v33;
      *(&v36 + 1) = v35;
      v41 = v39;
      v42 = v36;
      v43 = *(a1 + 80);
      [v23 addCompletedHandler:v40];
      [v23 commit];
    }

    else
    {
      CVPixelBufferRelease(v55[3]);
      v55[3] = 0;
    }

    _Block_object_dispose(&v50, 8);
  }

  else
  {
    v31 = 0;
  }

  _Block_object_dispose(&v54, 8);

  return v31;
}

uint64_t __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 40);
  while (!v4)
  {
LABEL_8:
    if (++v3 >= v1)
    {
      return 1;
    }
  }

  v5 = 0;
  v6 = *(a1 + 72);
  v7 = *(a1 + 56) + v6 * v3;
  v8 = v6 * v3;
  while (((*(*(a1 + 32) + 16))(*(a1 + 80) + *(a1 + 64) * v5, v7, *(a1 + 88), *(a1 + 96), *(a1 + 64) * v5, v8, *(a1 + 88), *(a1 + 96)) & 1) != 0)
  {
    ++v5;
    v4 = *(a1 + 40);
    if (v5 >= v4)
    {
      v1 = *(a1 + 48);
      goto LABEL_8;
    }
  }

  return 0;
}

- (uint64_t)_processTiledImageBuffer:(uint64_t)buffer inputMaskObservation:options:qosClass:error:
{
  v2 = *(buffer + 8);
  v3 = *(buffer + 16);
  *(buffer + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(buffer + 16);
      v2 = (*(buffer + 8) + 8);
      *(buffer + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 170;
LABEL_7:
    *(buffer + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(buffer + 8);
    v7 = *(buffer + 16);
    if (v7 != v8)
    {
      *(buffer + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*buffer)
  {
    operator delete(*buffer);
  }

  return buffer;
}

void __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  *__p = 0u;
  v40 = 0u;
  v41 = 1065353216;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_8;
  aBlock[3] = &unk_1E77B4458;
  v4 = *(a1 + 72);
  v5 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v35 = v4;
  v6 = v5;
  v7 = *(a1 + 80);
  v33 = v6;
  v36 = v7;
  v34 = *(a1 + 48);
  v8 = *(a1 + 112);
  v37 = &v42;
  v38 = v8;
  v9 = _Block_copy(aBlock);
  v31 = 0;
  v10 = VNExecuteBlock(v9, &v31);
  v11 = v31;
  v30 = v31;
  if ((v10 & 1) == 0)
  {
    v12 = *(*(a1 + 88) + 8);
    v14 = *(v12 + 40);
    v13 = (v12 + 40);
    if (!v14)
    {
      objc_storeStrong(v13, v11);
    }
  }

  v28 = *(a1 + 128);
  v29 = *(a1 + 120);
  v27 = v43[3];
  os_unfair_lock_lock((*(*(a1 + 96) + 8) + 48));
  v15 = *(*(a1 + 104) + 8);
  v17 = v15[7];
  v16 = v15[8];
  if (v16 == v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 170 * ((v16 - v17) >> 3) - 1;
  }

  v19 = v15[10];
  if (v18 == v15[11] + v19)
  {
    v20 = v19 >= 0xAA;
    v21 = v19 - 170;
    if (!v20)
    {
      v22 = v15[9];
      v23 = v15[6];
      if (v16 - v17 < (v22 - v23))
      {
        operator new();
      }

      if (v22 == v23)
      {
        v24 = 1;
      }

      else
      {
        v24 = (v22 - v23) >> 2;
      }

      if (!(v24 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15[10] = v21;
    v46 = *v17;
    v15[7] = v17 + 8;
    std::__split_buffer<[VNPersonSegmentationGeneratorLearnedMattingTiled _processTiledImageBuffer:inputMaskObservation:options:qosClass:error:]::OutputTileData *>::emplace_back<[VNPersonSegmentationGeneratorLearnedMattingTiled _processTiledImageBuffer:inputMaskObservation:options:qosClass:error:]::OutputTileData *&>(v15 + 6, &v46);
  }

  v25 = v15[11] + v15[10];
  v26 = (*(v15[7] + 8 * (v25 / 0xAA)) - 4080 * (v25 / 0xAA) + 24 * v25);
  *v26 = v29;
  v26[1] = v28;
  v26[2] = v27;
  ++v15[11];
  os_unfair_lock_unlock((*(*(a1 + 96) + 8) + 48));
  dispatch_async(*(a1 + 56), *(a1 + 64));

  std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v40);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  _Block_object_dispose(&v42, 8);
}

BOOL __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_8(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) bindPixelBuffer:*(*(*(a1 + 56) + 8) + 24) toNetworkBlobName:*(a1 + 40) error:a2] & 1) != 0 && objc_msgSend(*(a1 + 32), "bindPixelBuffer:toNetworkBlobName:error:", *(*(*(a1 + 64) + 8) + 24), *(a1 + 48), a2) && (objc_msgSend(*(a1 + 32), "executePlanAndReturnError:", a2))
  {
    *(*(*(a1 + 72) + 8) + 24) = [VNEspressoHelpers createCVPixelBufferWithPixelFormat:1278226534 fromImageInEspressoBuffer:*(a1 + 80) error:a2];
    v4 = *(*(*(a1 + 72) + 8) + 24) != 0;
  }

  else
  {
    v4 = 0;
  }

  CVPixelBufferRelease(*(*(*(a1 + 56) + 8) + 24));
  *(*(*(a1 + 56) + 8) + 24) = 0;
  CVPixelBufferRelease(*(*(*(a1 + 64) + 8) + 24));
  *(*(*(a1 + 64) + 8) + 24) = 0;
  return v4;
}

- (void)_processTiledImageBuffer:(void *)result inputMaskObservation:(void *)observation options:qosClass:error:
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *observation;
  v3[2] += 8;
  return result;
}

void __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setBytes:a1 + 32 length:8 atIndex:0];
  [v3 setBytes:a1 + 40 length:8 atIndex:1];
}

void __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_2_60(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setBytes:a1 + 40 length:4 atIndex:0];
  [v3 setBytes:a1 + 32 length:8 atIndex:1];
}

void __121__VNPersonSegmentationGeneratorLearnedMattingTiled__processTiledImageBuffer_inputMaskObservation_options_qosClass_error___block_invoke_3(uint64_t a1)
{
  CVPixelBufferRelease(*(a1 + 40));
  if (*(a1 + 48) + 1 == *(a1 + 72) && *(a1 + 56) + 1 == *(a1 + 80))
  {
    v2 = *(a1 + 32);

    dispatch_semaphore_signal(v2);
  }
}

- (optional<std::tuple<std::unordered_map<NSString)processLockedImageBuffer:(std:(espresso_buffer_t>>> *__return_ptr)retstr :(VNPersonSegmentationGeneratorLearnedMattingTiled *)self unordered_map<NSString *) inputMaskObservation:(SEL)observation options:(__CVBuffer *)options qosClass:(id)class error:(id)error
{
  v9 = *&a7;
  classCopy = class;
  errorCopy = error;
  v15 = [(VNDetector *)self validatedImageBufferFromOptions:errorCopy error:a8];
  if (v15)
  {
    LOBYTE(__p) = 0;
    v66 = 0;
    v16 = objc_autoreleasePoolPush();
    v44 = 0;
    [(VNPersonSegmentationGeneratorLearnedMattingTiled *)self _processTiledImageBuffer:v15 inputMaskObservation:classCopy options:errorCopy qosClass:v9 error:&v44];
    v17 = v44;
    if (v66 == v55)
    {
      if (v66)
      {
        if (v59)
        {
          std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v58);
          v58 = 0;
          v18 = v57;
          if (v57)
          {
            v19 = 0;
            do
            {
              *(__p + v19++) = 0;
            }

            while (v18 != v19);
          }

          v59 = 0;
        }

        v20 = v45;
        v45 = 0;
        v21 = __p;
        __p = v20;
        if (v21)
        {
          operator delete(v21);
        }

        v22 = v46;
        v46 = 0;
        v58 = v47;
        v59 = v48;
        v60 = v49;
        v57 = v22;
        if (v48)
        {
          v23 = v47[1];
          if ((v22 & (v22 - 1)) != 0)
          {
            if (v23 >= v22)
            {
              v23 %= v22;
            }
          }

          else
          {
            v23 &= v22 - 1;
          }

          *(__p + v23) = &v58;
          v47 = 0;
          v48 = 0;
        }

        if (v64)
        {
          std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v63);
          v63 = 0;
          v29 = v62;
          if (v62)
          {
            v30 = 0;
            do
            {
              *(v61 + v30++) = 0;
            }

            while (v29 != v30);
          }

          v64 = 0;
        }

        v31 = v50;
        v50 = 0;
        v32 = v61;
        v61 = v31;
        if (v32)
        {
          operator delete(v32);
        }

        v33 = v51;
        v51 = 0;
        v63 = v52;
        v64 = v53;
        v65 = v54;
        v62 = v33;
        if (v53)
        {
          v34 = v52[1];
          if ((v33 & (v33 - 1)) != 0)
          {
            if (v34 >= v33)
            {
              v34 %= v33;
            }
          }

          else
          {
            v34 &= v33 - 1;
          }

          *(v61 + v34) = &v63;
          v52 = 0;
          v53 = 0;
        }
      }
    }

    else if (v66)
    {
      std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v63);
      v24 = v61;
      v61 = 0;
      if (v24)
      {
        operator delete(v24);
      }

      std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v58);
      v25 = __p;
      __p = 0;
      if (v25)
      {
        operator delete(v25);
      }

      v66 = 0;
    }

    else
    {
      v26 = v45;
      v27 = v46;
      v45 = 0;
      v46 = 0;
      __p = v26;
      v57 = v27;
      v58 = v47;
      v59 = v48;
      v60 = v49;
      if (v48)
      {
        v28 = v47[1];
        if ((v27 & (v27 - 1)) != 0)
        {
          if (v28 >= v27)
          {
            v28 %= v27;
          }
        }

        else
        {
          v28 &= v27 - 1;
        }

        *(v26 + v28) = &v58;
        v47 = 0;
        v48 = 0;
      }

      v35 = v50;
      v36 = v51;
      v50 = 0;
      v51 = 0;
      v61 = v35;
      v62 = v36;
      v63 = v52;
      v64 = v53;
      v65 = v54;
      if (v53)
      {
        v37 = v52[1];
        if ((v36 & (v36 - 1)) != 0)
        {
          if (v37 >= v36)
          {
            v37 %= v36;
          }
        }

        else
        {
          v37 &= v36 - 1;
        }

        *(v35 + v37) = &v63;
        v52 = 0;
        v53 = 0;
      }

      v66 = 1;
    }

    if (v55 == 1)
    {
      std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v52);
      v38 = v50;
      v50 = 0;
      if (v38)
      {
        operator delete(v38);
      }

      std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v47);
      v39 = v45;
      v45 = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    objc_autoreleasePoolPop(v16);
    if (v66)
    {
      retstr->var0.var0 = 0;
      retstr->var1 = 0;
      std::__hash_table<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>>>::__hash_table(retstr, &__p);
      std::__hash_table<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>>>::__hash_table(&retstr->var0.var1.var0.var1, &v61);
      retstr->var1 = 1;
    }

    else
    {
      if (a8)
      {
        v40 = v17;
        *a8 = v17;
      }

      retstr->var0.var0 = 0;
      retstr->var1 = 0;
    }

    if (v66 == 1)
    {
      std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v63);
      v41 = v61;
      v61 = 0;
      if (v41)
      {
        operator delete(v41);
      }

      std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v58);
      v42 = __p;
      __p = 0;
      if (v42)
      {
        operator delete(v42);
      }
    }
  }

  else
  {
    retstr->var0.var0 = 0;
    retstr->var1 = 0;
  }

  return result;
}

- (BufferSize)_calculateNumberOfTilesForNetworkInputImageSize:(BufferSize)size networkInputMaskSize:(BufferSize)maskSize networkOutputMaskSize:(BufferSize)outputMaskSize rotated:(BOOL)rotated
{
  height = size.height;
  width = size.width;
  v8 = [(VNPersonSegmentationGeneratorLearnedMattingTiled *)self outputMaskSize:size.width];
  if (rotated)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (rotated)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  v12 = vcvtps_u32_f32(v10 / width);
  v13 = vcvtps_u32_f32(v11 / height);
  result.height = v13;
  result.width = v12;
  return result;
}

- (BufferSize)outputMaskSize
{
  v2 = 2016;
  v3 = 1512;
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v17.receiver = self;
  v17.super_class = VNPersonSegmentationGeneratorLearnedMattingTiled;
  if (![(VNSegmentationGenerator *)&v17 completeInitializationForSession:session error:?])
  {
    return 0;
  }

  v6 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStagePostProcessing" error:error];
  if (v6 && ([VNComputeDeviceUtilities metalDeviceForComputeDevice:v6], v7 = objc_claimAutoreleasedReturnValue(), [VNMetalContext metalContextForDevice:v7 error:error], v8 = objc_claimAutoreleasedReturnValue(), postProcessingMetalContext = self->_postProcessingMetalContext, self->_postProcessingMetalContext = v8, postProcessingMetalContext, v7, (v10 = self->_postProcessingMetalContext) != 0) && ([(VNMetalContext *)v10 computePipelineStateForFunctionWithName:error error:?], v11 = objc_claimAutoreleasedReturnValue(), createTileWithScaleComputePipelineState = self->_createTileWithScaleComputePipelineState, self->_createTileWithScaleComputePipelineState = v11, createTileWithScaleComputePipelineState, self->_createTileWithScaleComputePipelineState))
  {
    v13 = [(VNMetalContext *)self->_postProcessingMetalContext computePipelineStateForFunctionWithName:error error:?];
    pasteTileComputePipelineState = self->_pasteTileComputePipelineState;
    self->_pasteTileComputePipelineState = v13;

    v15 = self->_pasteTileComputePipelineState != 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end