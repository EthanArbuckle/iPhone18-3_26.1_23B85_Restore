@interface VNFaceDetector
+ (BOOL)calculateTilesForRegionOfInterest:(CGRect)interest imageWidth:(unint64_t)width imageHeight:(unint64_t)height tileSizeInPixels:(unint64_t)pixels overlapFraction:(float)fraction aspectRatioThreshold:(float)threshold columns:(unint64_t *)columns rows:(unint64_t *)self0 tiles:(void *)self1 error:(id *)self2;
+ (BOOL)shouldDumpDebugIntermediates;
+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error;
+ (id)configurationOptionKeysForDetectorKey;
+ (void)fullyPopulateConfigurationOptions:(id)options;
+ (void)printDebugInfo:(id)info facesDataRaw:(void *)raw faceDetectorBGRAImage:(__CVBuffer *)image tempImage:(vImage_Buffer *)tempImage session:(id)session;
+ (void)recordDefaultConfigurationOptionsInDictionary:(id)dictionary;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNFaceDetector

+ (BOOL)calculateTilesForRegionOfInterest:(CGRect)interest imageWidth:(unint64_t)width imageHeight:(unint64_t)height tileSizeInPixels:(unint64_t)pixels overlapFraction:(float)fraction aspectRatioThreshold:(float)threshold columns:(unint64_t *)columns rows:(unint64_t *)self0 tiles:(void *)self1 error:(id *)self2
{
  v62.origin.x = interest.origin.x * width;
  v62.size.width = interest.size.width * width;
  v62.origin.y = interest.origin.y * height;
  v62.size.height = interest.size.height * height;
  v63 = CGRectIntegral(v62);
  x = v63.origin.x;
  y = v63.origin.y;
  *&v59 = v63.origin.x;
  *(&v59 + 1) = *&v63.origin.y;
  width = v63.size.width;
  height = v63.size.height;
  v22 = width / height;
  if (v22 < threshold && v22 > (1.0 / threshold))
  {
    std::vector<CGRect>::push_back[abi:ne200100](tiles, &v59);
    return 1;
  }

  errorCopy2 = error;
  if (v63.size.width < 1.0 || v63.size.height < 1.0)
  {
    if (!error)
    {
      return 0;
    }

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid ROI size of %f x %f", *&v63.size.width, *&v63.size.height];
    v27 = [VNError errorWithCode:3 message:v26];
LABEL_34:
    *errorCopy2 = v27;

    return 0;
  }

  v29 = v63.size.height;
  v30 = vcvtq_u64_f64(v63.size);
  v31 = vcvtq_f64_u64(v30);
  v32 = v30;
  if (v30.i64[0] * v30.i64[1] > pixels)
  {
    v33 = vdivq_f64(v31, vdupq_laneq_s64(v31, 1)).f64[0];
    v34 = sqrt(pixels / v33);
    v31.f64[0] = v34 * v33;
    v31.f64[1] = v34;
  }

  v35 = vdupq_n_s64(0x20uLL);
  v36 = vcvtq_u64_f64(vcvtq_f64_f32(vadd_f32(vcvt_f32_f64(v31), 0x3F0000003F000000)));
  v37 = vandq_s8(vaddq_s64(vbslq_s8(vcgtq_u64(v36, v35), v36, v35), vdupq_n_s64(0xFuLL)), vdupq_n_s64(0xFFFFFFFFFFFFFFF0));
  v38 = vcgtq_u64(v30, v37);
  v39 = vbslq_s8(v38, v37, v30);
  v40 = v39.i64[0];
  if (v39.i64[0])
  {
    v41 = v39.i64[1] == 0;
  }

  else
  {
    v41 = 1;
  }

  if (v41)
  {
    if (!error)
    {
      return 0;
    }

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid tile size of %ld x %ld", *&v39];
    v27 = [VNError errorWithCode:3 message:v26];
    goto LABEL_34;
  }

  v42 = (((fraction * v39.u64[0]) + 0.5) + 8) & 0xFFFFFFFFFFFFFFF0;
  v43 = (((fraction * v39.u64[1]) + 0.5) + 8) & 0xFFFFFFFFFFFFFFF0;
  if (v42 >= v39.i64[0])
  {
    v42 = 0;
  }

  if (v43 >= v39.i64[1])
  {
    v43 = 0;
  }

  v44 = v39.i64[1] - v43;
  v45 = v39.i64[0] - v42;
  if (v39.i64[0] == v42 || v39.i64[1] == v43)
  {
    if (error)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid tile increment of %lu x %lu", v45, v39.i64[1] - v43];
      v27 = [VNError errorForInvalidOperationWithLocalizedDescription:v26];
      goto LABEL_34;
    }

    return 0;
  }

  v47 = vcvtq_f64_u64(v39);
  v58[1] = v47;
  v48 = vmovn_s64(v38);
  if ((v48.i32[0] | v48.i32[1]))
  {
    v49 = y;
    if (v32.i64[1] <= y)
    {
      if (!columns)
      {
        v50 = 0;
LABEL_58:
        if (rows)
        {
          *rows = v50;
        }

        return 1;
      }
    }

    else
    {
      v50 = 0;
      v51 = (v32.i64[1] - v39.i64[1]);
      v52 = v47.f64[1];
      v53 = (v32.i64[0] - v40);
      v57 = v47.f64[0];
      do
      {
        v54 = v49;
        if (v52 + v49 > v32.u64[1])
        {
          v54 = v51;
        }

        *(v58 + 1) = v54;
        for (i = x; i < v32.i64[0]; i += v45)
        {
          v56 = i;
          if (v47.f64[0] + i > v32.u64[0])
          {
            v56 = v53;
          }

          *v58 = v56;
          std::vector<CGRect>::push_back[abi:ne200100](tiles, v58);
          v47.f64[0] = v57;
        }

        ++v50;
        v49 += v44;
      }

      while (v49 < v32.i64[1]);
      if (!columns)
      {
        goto LABEL_58;
      }

      errorCopy2 = error;
      if (v50)
      {
        *columns = ((*(tiles + 1) - *tiles) >> 5) / v50;
        goto LABEL_58;
      }
    }

    if (!errorCopy2)
    {
      return 0;
    }

    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unexpected ROI origin causing %lui rows of %f x %f", 0, *&x, *&y];
    v27 = [VNError errorForInternalErrorWithLocalizedDescription:v26];
    goto LABEL_34;
  }

  v58[0] = v59;
  std::vector<CGRect>::push_back[abi:ne200100](tiles, v58);
  if (columns)
  {
    *columns = 1;
  }

  if (!rows)
  {
    return 1;
  }

  result = 1;
  *rows = 1;
  return result;
}

+ (void)printDebugInfo:(id)info facesDataRaw:(void *)raw faceDetectorBGRAImage:(__CVBuffer *)image tempImage:(vImage_Buffer *)tempImage session:(id)session
{
  v70[2] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  sessionCopy = session;
  if (+[VNFaceDetector shouldDumpDebugIntermediates])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = NSTemporaryDirectory();
    v11 = [v10 stringByAppendingString:@"VN_facedetector_debug_intermediates/"];

    v55 = v11;
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
    LODWORD(v11) = [defaultManager createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:0];

    if (v11)
    {
      fileURL = [infoCopy fileURL];
      path = [fileURL path];

      v51 = path;
      if (path)
      {
        lastPathComponent = [(__CFString *)path lastPathComponent];
        stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
        v17 = [stringByDeletingPathExtension stringByAppendingString:@"_"];

        v18 = v17;
      }

      else
      {
        v18 = &stru_1F1976900;
      }

      v20 = *raw;
      v19 = *(raw + 1);
      v50 = v18;
      v21 = [v55 stringByAppendingString:?];
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:+[VNFaceDetector printDebugInfo:facesDataRaw:faceDetectorBGRAImage:tempImage:session:]::image_name_offset];
      stringValue = [v22 stringValue];
      v24 = [v21 stringByAppendingString:stringValue];

      v62 = v24;
      v53 = [v24 stringByAppendingString:@"_fd_image.vdump"];
      v54 = [v24 stringByAppendingString:@"_fd_image.png"];
      v52 = [v24 stringByAppendingString:@"_raw_bboxes.json"];
      v25 = [VNImageBuffer alloc];
      v61 = [(VNImageBuffer *)v25 initWithCVPixelBuffer:image orientation:1 options:MEMORY[0x1E695E0F8] session:sessionCopy];
      v26 = objc_autoreleasePoolPush();
      ImageProcessing_save([v53 UTF8String], tempImage, 4);
      saveCVPixelBuffer([v54 UTF8String], image);
      objc_autoreleasePoolPop(v26);
      v63 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (v19 != v20)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - v20) >> 4);
        v30 = @"<binary-data>";
        if (v51)
        {
          v30 = v51;
        }

        if (v29 <= 1)
        {
          v29 = 1;
        }

        v59 = v29;
        v60 = v30;
        do
        {
          v31 = *raw;
          v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_face_%d", v62, v28];
          v66 = [v65 stringByAppendingString:@"_raw_bbox_crop.png"];
          v32 = (v31 + v27);
          v33 = [(VNImageBuffer *)v61 croppedBufferWithWidth:*(v31 + v27 + 36) height:*(v31 + v27 + 32) format:1111970369 cropRect:MEMORY[0x1E695E0F8] options:0 error:*(v31 + v27 + 24), *(v31 + v27 + 28), *(v31 + v27 + 36), *(v31 + v27 + 32)];
          v34 = objc_autoreleasePoolPush();
          v35 = v66;
          saveCVPixelBuffer([v66 UTF8String], v33);
          v69[0] = @"imageURL";
          v69[1] = @"rect";
          v70[0] = v60;
          v67[0] = @"x";
          LODWORD(v36) = *(v31 + v27 + 24);
          v37 = [MEMORY[0x1E696AD98] numberWithFloat:v36];
          v68[0] = v37;
          v67[1] = @"y";
          LODWORD(v38) = v32[7];
          v39 = [MEMORY[0x1E696AD98] numberWithFloat:v38];
          v68[1] = v39;
          v67[2] = @"width";
          LODWORD(v40) = v32[9];
          v41 = [MEMORY[0x1E696AD98] numberWithFloat:v40];
          v68[2] = v41;
          v67[3] = @"height";
          LODWORD(v42) = v32[8];
          v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
          v68[3] = v43;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:4];
          v70[1] = v44;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];

          v46 = [MEMORY[0x1E696AD98] numberWithInt:v28];
          stringValue2 = [v46 stringValue];
          [v63 setObject:v45 forKey:stringValue2];

          objc_autoreleasePoolPop(v34);
          CVPixelBufferRelease(v33);

          ++v28;
          v27 += 80;
        }

        while (v59 != v28);
      }

      v48 = objc_autoreleasePoolPush();
      v49 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v63 options:1 error:0];
      [v49 writeToFile:v52 atomically:1];

      objc_autoreleasePoolPop(v48);
      NSLog(&cfstr_VnFaceDetector.isa, v55);
      +++[VNFaceDetector printDebugInfo:facesDataRaw:faceDetectorBGRAImage:tempImage:session:]::image_name_offset;
    }
  }
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v121 = optionsCopy;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v18 = v17;
  if (!v17)
  {
    v106 = 0;
    goto LABEL_39;
  }

  v182 = 0;
  v183[0] = 0;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  width = [v17 width];
  height = [v18 height];
  LODWORD(v21) = 1050253722;
  LODWORD(v22) = 2.0;
  if (![VNFaceDetector calculateTilesForRegionOfInterest:width imageWidth:height imageHeight:3145728 tileSizeInPixels:v183 overlapFraction:&v182 aspectRatioThreshold:&v179 columns:x rows:y tiles:width error:height, v21, v22, error])
  {
    v106 = 0;
    goto LABEL_37;
  }

  VNRecordImageTilingWarning(recorderCopy, v183[0], v182);
  v24 = v179;
  v23 = v180;
  v119 = (v180 - v179) >> 5;
  v115 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
  v173 = 0;
  v174 = &v173;
  v175 = 0x3032000000;
  v176 = __Block_byref_object_copy__21180;
  v177 = __Block_byref_object_dispose__21181;
  v178 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v171[0] = 0;
  v171[1] = v171;
  v171[2] = 0x3812000000;
  v171[3] = __Block_byref_object_copy__46_21182;
  v171[4] = __Block_byref_object_dispose__47_21183;
  v171[5] = "";
  v172 = 0;
  objc_initWeak(&location, self);
  v25 = objc_opt_class();
  vNClassCode = [v25 VNClassCode];
  detectorCropCreationAsyncTasksQueue = [v25 detectorCropCreationAsyncTasksQueue];
  v118 = dispatch_group_create();
  detectorCropProcessingAsyncTasksQueue = [v25 detectorCropProcessingAsyncTasksQueue];
  errorCopy = error;
  v110 = v18;
  v117 = dispatch_group_create();
  kdebug_trace();
  VNValidatedLog(1, @"Start processing tilesProcessingGroup. currentDetector: %@", v26, v27, v28, v29, v30, v31, self);
  selfCopy = self;
  if (v23 != v24)
  {
    v38 = 0;
    v39 = 0;
    v40 = v119;
    if (v119 <= 1)
    {
      v40 = 1;
    }

    v111 = v40;
    do
    {
      v126 = v38;
      v41 = *&v179[v38 + 16];
      v168 = *&v179[v38];
      v169 = v41;
      v166[0] = 0;
      v166[1] = v166;
      v166[2] = 0x3032000000;
      v166[3] = __Block_byref_object_copy__21180;
      v166[4] = __Block_byref_object_dispose__21181;
      v167 = 0;
      v164[0] = 0;
      v164[1] = v164;
      v164[2] = 0x3032000000;
      v164[3] = __Block_byref_object_copy__21180;
      v164[4] = __Block_byref_object_dispose__21181;
      v165 = 0;
      v163[0] = 0;
      v163[1] = v163;
      v163[2] = 0x2020000000;
      v163[3] = 0;
      v42 = [v121 mutableCopy];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __123__VNFaceDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke;
      block[3] = &unk_1E77B65D8;
      objc_copyWeak(v157, &location);
      v161 = vNClassCode;
      v155 = v166;
      v157[1] = v39;
      v124 = v118;
      v150 = v124;
      v158 = v168;
      v159 = v169;
      v43 = v42;
      v151 = v43;
      classCopy = class;
      v44 = recorderCopy;
      v152 = v44;
      v156 = v163;
      v45 = handlerCopy;
      v154 = v45;
      v160 = v119;
      v123 = detectorCropCreationAsyncTasksQueue;
      v153 = v123;
      v46 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, class, 0, block);
      v130[0] = MEMORY[0x1E69E9820];
      v130[1] = 3221225472;
      v130[2] = __123__VNFaceDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_3;
      v130[3] = &unk_1E77B5A90;
      objc_copyWeak(v143, &location);
      v138 = v166;
      v47 = v46;
      v147 = vNClassCode;
      v48 = v47;
      v136 = v47;
      v125 = v39;
      v143[1] = v39;
      v49 = v117;
      v131 = v49;
      v139 = v164;
      v144 = v168;
      v145 = v169;
      v140 = v163;
      v50 = v43;
      v132 = v50;
      classCopy2 = class;
      v133 = v44;
      v137 = v45;
      v141 = v171;
      v142 = &v173;
      v134 = v115;
      v146 = v119;
      v51 = detectorCropProcessingAsyncTasksQueue;
      v135 = v51;
      v58 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, class, 0, v130);
      if (v119 < 2)
      {
        VNValidatedLog(1, @"Performing createRegionOfInterestCropForProcessingBlock. currentDetector: %@", v52, v53, v54, v55, v56, v57, selfCopy);
        v48[2](v48);
        VNValidatedLog(1, @"Performing processRegionOfInterestBlock. currentDetector: %@", v65, v66, v67, v68, v69, v70, selfCopy);
        v58[2](v58);
        VNValidatedLog(1, @"Finish processing createRegionOfInterestCropForProcessingBlock and processRegionOfInterestBlock. currentDetector: %@", v71, v72, v73, v74, v75, v76, selfCopy);
      }

      else
      {
        VNValidatedLog(1, @"Scheduling createRegionOfInterestCropForProcessingBlock. currentDetector: %@; group: %@", v52, v53, v54, v55, v56, v57, selfCopy);
        [v123 dispatchGroupAsyncByPreservingQueueCapacity:v124 block:v48];
        VNValidatedLog(1, @"Scheduling processRegionOfInterestBlock. currentDetector: %@; group: %@", v59, v60, v61, v62, v63, v64, selfCopy);
        [v51 dispatchGroupAsyncByPreservingQueueCapacity:v49 block:v58];
      }

      objc_destroyWeak(v143);
      objc_destroyWeak(v157);

      _Block_object_dispose(v163, 8);
      _Block_object_dispose(v164, 8);

      _Block_object_dispose(v166, 8);
      ++v39;
      v38 = v126 + 32;
    }

    while (v111 != v125 + 1);
  }

  v18 = v110;
  if (v119 > 1)
  {
    VNValidatedLog(1, @"Waiting for tilesCropCreationGroup. currentDetector: %@; group: %@", v32, v33, v34, v35, v36, v37, selfCopy);
    if ([detectorCropCreationAsyncTasksQueue dispatchGroupWait:v118 error:errorCopy])
    {
      VNValidatedLog(1, @"Waiting for tilesCropProcessingGroup. currentDetector: %@; group: %@", v77, v78, v79, v80, v81, v82, selfCopy);
      if ([detectorCropProcessingAsyncTasksQueue dispatchGroupWait:v117 error:errorCopy])
      {
        VNValidatedLog(1, @"Finish processing tilesCropCreationGroup and tilesCropProcessingGroup. currentDetector: %@; cropCreationGroup: %@; cropProcessingGroup: %@", v77, v78, v79, v80, v81, v82, selfCopy);
        goto LABEL_15;
      }

      v107 = @"Timed out waiting for face detector tilesCropProcessingGroup when processing %lu tiles. currentDetector: %@; group: %@";
    }

    else
    {
      v107 = @"Timed out waiting for face detector tilesCropCreationGroup when processing %lu tiles. currentDetector: %@; group: %@";
    }

    VNValidatedLog(4, v107, v77, v78, v79, v80, v81, v82, v119);
    goto LABEL_35;
  }

LABEL_15:
  kdebug_trace();
  if ([VNValidationUtilities validateAsyncStatusResults:v115 error:errorCopy])
  {
    v83 = v174[5];
    v84 = &__block_literal_global_21197;
    for (i = 0; [v83 count] > i; ++i)
    {
      v86 = [v83 objectAtIndexedSubscript:i];
      v87 = __123__VNFaceDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_6(&__block_literal_global_21197, v86);
      v127 = v88;
      v129 = v87;
      v90 = v89;
      v92 = v91;

      v94 = i + 1;
      while (v94 < [v83 count])
      {
        v95 = [v83 objectAtIndexedSubscript:v94];
        v96 = __123__VNFaceDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_6(&__block_literal_global_21197, v95);
        v98 = v97;
        v100 = v99;
        v102 = v101;

        v185.origin.y = v127;
        v185.origin.x = v129;
        v185.size.width = v90;
        v185.size.height = v92;
        v187.origin.x = v96;
        v187.origin.y = v98;
        v187.size.width = v100;
        v187.size.height = v102;
        v186 = CGRectIntersection(v185, v187);
        if (v186.size.width * v186.size.height / (v90 * v92 + v100 * v102 - v186.size.width * v186.size.height) < 0.5)
        {
          ++v94;
        }

        else
        {
          v103 = v100 * v102;
          v93 = v90 * v92;
          if (v93 > v103)
          {
            v104 = v94;
          }

          else
          {
            v104 = i;
          }

          if (i == v104)
          {
            v105 = [v83 objectAtIndexedSubscript:v94];
            [v83 setObject:v105 atIndexedSubscript:i];
          }

          [v83 removeObjectAtIndex:v94];
        }
      }
    }

    v106 = v174[5];
    goto LABEL_36;
  }

LABEL_35:
  v106 = 0;
LABEL_36:

  objc_destroyWeak(&location);
  _Block_object_dispose(v171, 8);
  _Block_object_dispose(&v173, 8);

LABEL_37:
  if (v179)
  {
    v180 = v179;
    operator delete(v179);
  }

LABEL_39:

  return v106;
}

void __123__VNFaceDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    kdebug_trace();
    VNValidatedLog(1, @"createRegionOfInterestCropForProcessingBlock: start processing; currentDetector: %@", v3, v4, v5, v6, v7, v8, WeakRetained);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __123__VNFaceDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_2;
    aBlock[3] = &unk_1E77B65B0;
    v9 = WeakRetained;
    v34 = v9;
    v39 = *(a1 + 104);
    v40 = *(a1 + 120);
    v35 = *(a1 + 40);
    v41 = *(a1 + 148);
    v10 = *(a1 + 48);
    v11 = *(a1 + 80);
    v36 = v10;
    v38 = v11;
    v37 = *(a1 + 64);
    v12 = _Block_copy(aBlock);
    v13 = *(a1 + 104);
    v14 = *(a1 + 112);
    v15 = *(a1 + 120);
    v16 = *(a1 + 128);
    v32 = 0;
    v17 = v12[2](v12, &v32, v13, v14, v15, v16);
    v18 = v32;
    v19 = [[VNAsyncStatus alloc] initWithStatus:v17 error:v18];
    v20 = *(*(a1 + 72) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    VNValidatedLog(1, @"createRegionOfInterestCropForProcessingBlock: finish processing; currentDetector: %@", v22, v23, v24, v25, v26, v27, v9);
    kdebug_trace();
    if (*(a1 + 136) >= 2uLL)
    {
      [*(a1 + 56) dispatchReportBlockCompletion];
    }
  }

  else
  {
    v28 = [VNError errorForInternalErrorWithLocalizedDescription:@"Currently executed Detector should not be nil"];
    v29 = [[VNAsyncStatus alloc] initWithStatus:0 error:v28];
    v30 = *(*(a1 + 72) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;
  }
}

void __123__VNFaceDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 128));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    VNValidatedLog(1, @"processRegionOfInterestBlock: start processing; currentDetector: %@", v3, v4, v5, v6, v7, v8, WeakRetained);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __123__VNFaceDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_4;
    aBlock[3] = &unk_1E77B5A68;
    v35 = *(a1 + 72);
    v10 = v9;
    v42 = *(a1 + 184);
    v11 = *(a1 + 136);
    v31 = v10;
    v39 = v11;
    v32 = *(a1 + 32);
    v37 = *(a1 + 88);
    v12 = *(a1 + 160);
    v40 = *(a1 + 144);
    v41 = v12;
    v38 = *(a1 + 104);
    v33 = *(a1 + 40);
    v43 = *(a1 + 188);
    v34 = *(a1 + 48);
    v36 = *(a1 + 80);
    v13 = _Block_copy(aBlock);
    v29 = 0;
    v14 = VNExecuteBlock(v13, &v29);
    v15 = v29;
    v16 = [[VNAsyncStatus alloc] initWithStatus:v14 error:v15];
    v17 = *(*(a1 + 88) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    os_unfair_lock_lock((*(*(a1 + 112) + 8) + 48));
    [*(*(*(a1 + 120) + 8) + 40) addObjectsFromArray:*(*(*(a1 + 96) + 8) + 40)];
    [*(a1 + 56) addObject:*(*(*(a1 + 88) + 8) + 40)];
    os_unfair_lock_unlock((*(*(a1 + 112) + 8) + 48));
    VNValidatedLog(1, @"processRegionOfInterestBlock: finish processing; currentDetector: %@", v19, v20, v21, v22, v23, v24, v10);
    kdebug_trace();
    if (*(a1 + 176) >= 2uLL)
    {
      [*(a1 + 64) dispatchReportBlockCompletion];
    }
  }

  else
  {
    v25 = [VNError errorForInternalErrorWithLocalizedDescription:@"Currently executed Detector should not be nil"];
    v26 = [[VNAsyncStatus alloc] initWithStatus:0 error:v25];
    v27 = *(*(a1 + 88) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
  }

  CVPixelBufferRelease(*(*(*(a1 + 104) + 8) + 24));
  *(*(*(a1 + 104) + 8) + 24) = 0;
}

double __123__VNFaceDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 alignedBoundingBox];
    v4 = v3;
  }

  else
  {
    v4 = *MEMORY[0x1E695F050];
  }

  return v4;
}

BOOL __123__VNFaceDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_4(uint64_t a1, void *a2)
{
  if (dispatch_block_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL))
  {
    if (a2)
    {
      v4 = [VNError errorForExecutionTimeoutWithLocalizedDescription:@"Timed out waiting for dependent task execution"];
LABEL_8:
      v19 = 0;
      *a2 = v4;
      return v19;
    }

    return 0;
  }

  kdebug_trace();
  VNValidatedLog(1, @"processRegionOfInterestBlock: start processing (crop is ready); currentDetector: %@", v5, v6, v7, v8, v9, v10, *(a1 + 32));
  if (([*(*(*(a1 + 80) + 8) + 40) completed] & 1) == 0)
  {
    if (a2)
    {
      v4 = [*(*(*(a1 + 80) + 8) + 40) error];
      goto LABEL_8;
    }

    return 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __123__VNFaceDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_5;
  aBlock[3] = &unk_1E77B51F8;
  v11 = *(a1 + 32);
  v28 = *(a1 + 144);
  v12 = *(a1 + 40);
  v13 = *(a1 + 128);
  v26 = *(a1 + 112);
  v27 = v13;
  v25 = *(a1 + 88);
  v14 = *(a1 + 48);
  v29 = *(a1 + 148);
  v15 = *(a1 + 56);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v22 = v17;
  v23 = v16;
  v24 = *(a1 + 72);
  v18 = _Block_copy(aBlock);
  CVPixelBufferLockBaseAddress(*(*(*(a1 + 96) + 8) + 24), 1uLL);
  [objc_opt_class() runSuccessReportingBlockSynchronously:v18 detector:*(a1 + 32) qosClass:*(a1 + 148) error:a2];
  CVPixelBufferUnlockBaseAddress(*(*(*(a1 + 96) + 8) + 24), 1uLL);
  v19 = *(*(*(a1 + 88) + 8) + 40) != 0;

  return v19;
}

BOOL __123__VNFaceDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  kdebug_trace();
  VNValidatedLog(1, @"processRegionOfInterest Netto: start processing; currentDetector: %@", v4, v5, v6, v7, v8, v9, *(a1 + 32));
  v10 = [*(a1 + 32) processRegionOfInterest:*(*(*(a1 + 80) + 8) + 24) croppedPixelBuffer:*(a1 + 48) options:*(a1 + 124) qosClass:*(a1 + 56) warningRecorder:a2 error:*(a1 + 64) progressHandler:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  VNValidatedLog(1, @"processRegionOfInterest Netto: finish processing; currentDetector: %@", v13, v14, v15, v16, v17, v18, *(a1 + 32));
  kdebug_trace();
  return *(*(*(a1 + 72) + 8) + 40) != 0;
}

+ (BOOL)shouldDumpDebugIntermediates
{
  if (+[VNFaceDetector shouldDumpDebugIntermediates]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceDetector shouldDumpDebugIntermediates]::onceToken, &__block_literal_global_115);
  }

  return +[VNFaceDetector shouldDumpDebugIntermediates]::dumpDebug;
}

void __46__VNFaceDetector_shouldDumpDebugIntermediates__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"VN_DEBUG_DUMP_FACE_DETECT_INTERMEDIATES"];

  if (v1)
  {
    +[VNFaceDetector shouldDumpDebugIntermediates]::dumpDebug = 1;
  }
}

+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (!v6)
  {
    goto LABEL_8;
  }

  if ([v6 specifiesRequestClass:objc_opt_class()])
  {
    requestRevision = [v6 requestRevision];
    if ((requestRevision - 1) < 2 || requestRevision == 3737841665)
    {
      v8 = objc_opt_class();
      goto LABEL_9;
    }
  }

  if (error)
  {
    [VNError errorForUnsupportedRequestSpecifier:v6];
    *error = v8 = 0;
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

LABEL_9:

  return v8;
}

+ (void)fullyPopulateConfigurationOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___VNFaceDetector;
  objc_msgSendSuper2(&v10, sel_fullyPopulateConfigurationOptions_, optionsCopy);
  v5 = [optionsCopy objectForKeyedSubscript:@"VNFaceDetectorInitOption_MinFaceSize"];

  if (!v5)
  {
    v6 = [optionsCopy objectForKeyedSubscript:@"VNDetectorOption_RequestDetectionLevel"];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    v8 = &unk_1F19C2498;
    if (unsignedIntegerValue == 1)
    {
      v8 = &unk_1F19C24A8;
    }

    if (unsignedIntegerValue == 2)
    {
      v9 = &unk_1F19C24B8;
    }

    else
    {
      v9 = v8;
    }

    [optionsCopy setObject:v9 forKeyedSubscript:@"VNFaceDetectorInitOption_MinFaceSize"];
  }
}

+ (void)recordDefaultConfigurationOptionsInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___VNFaceDetector;
  objc_msgSendSuper2(&v5, sel_recordDefaultConfigurationOptionsInDictionary_, dictionaryCopy);
  [dictionaryCopy setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"VNFaceDetectorInitOption_EnableLowMemoryMode"];
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VNFaceDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNFaceDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNFaceDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __55__VNFaceDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNFaceDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNDetectorOption_RequestDetectionLevel"];
  [v2 addObject:@"VNFaceDetectorInitOption_MinFaceSize"];
  v3 = [v2 copy];
  v4 = +[VNFaceDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNFaceDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

@end