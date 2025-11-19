@interface VNFaceDetector
+ (BOOL)calculateTilesForRegionOfInterest:(CGRect)a3 imageWidth:(unint64_t)a4 imageHeight:(unint64_t)a5 tileSizeInPixels:(unint64_t)a6 overlapFraction:(float)a7 aspectRatioThreshold:(float)a8 columns:(unint64_t *)a9 rows:(unint64_t *)a10 tiles:(void *)a11 error:(id *)a12;
+ (BOOL)shouldDumpDebugIntermediates;
+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)configurationOptionKeysForDetectorKey;
+ (void)fullyPopulateConfigurationOptions:(id)a3;
+ (void)printDebugInfo:(id)a3 facesDataRaw:(void *)a4 faceDetectorBGRAImage:(__CVBuffer *)a5 tempImage:(vImage_Buffer *)a6 session:(id)a7;
+ (void)recordDefaultConfigurationOptionsInDictionary:(id)a3;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8;
@end

@implementation VNFaceDetector

+ (BOOL)calculateTilesForRegionOfInterest:(CGRect)a3 imageWidth:(unint64_t)a4 imageHeight:(unint64_t)a5 tileSizeInPixels:(unint64_t)a6 overlapFraction:(float)a7 aspectRatioThreshold:(float)a8 columns:(unint64_t *)a9 rows:(unint64_t *)a10 tiles:(void *)a11 error:(id *)a12
{
  v62.origin.x = a3.origin.x * a4;
  v62.size.width = a3.size.width * a4;
  v62.origin.y = a3.origin.y * a5;
  v62.size.height = a3.size.height * a5;
  v63 = CGRectIntegral(v62);
  x = v63.origin.x;
  y = v63.origin.y;
  *&v59 = v63.origin.x;
  *(&v59 + 1) = *&v63.origin.y;
  width = v63.size.width;
  height = v63.size.height;
  v22 = a4 / a5;
  if (v22 < a8 && v22 > (1.0 / a8))
  {
    std::vector<CGRect>::push_back[abi:ne200100](a11, &v59);
    return 1;
  }

  v24 = a12;
  if (v63.size.width < 1.0 || v63.size.height < 1.0)
  {
    if (!a12)
    {
      return 0;
    }

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid ROI size of %f x %f", *&v63.size.width, *&v63.size.height];
    v27 = [VNError errorWithCode:3 message:v26];
LABEL_34:
    *v24 = v27;

    return 0;
  }

  v29 = v63.size.height;
  v30 = vcvtq_u64_f64(v63.size);
  v31 = vcvtq_f64_u64(v30);
  v32 = v30;
  if (v30.i64[0] * v30.i64[1] > a6)
  {
    v33 = vdivq_f64(v31, vdupq_laneq_s64(v31, 1)).f64[0];
    v34 = sqrt(a6 / v33);
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
    if (!a12)
    {
      return 0;
    }

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid tile size of %ld x %ld", *&v39];
    v27 = [VNError errorWithCode:3 message:v26];
    goto LABEL_34;
  }

  v42 = (((a7 * v39.u64[0]) + 0.5) + 8) & 0xFFFFFFFFFFFFFFF0;
  v43 = (((a7 * v39.u64[1]) + 0.5) + 8) & 0xFFFFFFFFFFFFFFF0;
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
    if (a12)
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
      if (!a9)
      {
        v50 = 0;
LABEL_58:
        if (a10)
        {
          *a10 = v50;
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
          std::vector<CGRect>::push_back[abi:ne200100](a11, v58);
          v47.f64[0] = v57;
        }

        ++v50;
        v49 += v44;
      }

      while (v49 < v32.i64[1]);
      if (!a9)
      {
        goto LABEL_58;
      }

      v24 = a12;
      if (v50)
      {
        *a9 = ((*(a11 + 1) - *a11) >> 5) / v50;
        goto LABEL_58;
      }
    }

    if (!v24)
    {
      return 0;
    }

    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unexpected ROI origin causing %lui rows of %f x %f", 0, *&x, *&y];
    v27 = [VNError errorForInternalErrorWithLocalizedDescription:v26];
    goto LABEL_34;
  }

  v58[0] = v59;
  std::vector<CGRect>::push_back[abi:ne200100](a11, v58);
  if (a9)
  {
    *a9 = 1;
  }

  if (!a10)
  {
    return 1;
  }

  result = 1;
  *a10 = 1;
  return result;
}

+ (void)printDebugInfo:(id)a3 facesDataRaw:(void *)a4 faceDetectorBGRAImage:(__CVBuffer *)a5 tempImage:(vImage_Buffer *)a6 session:(id)a7
{
  v70[2] = *MEMORY[0x1E69E9840];
  v58 = a3;
  v57 = a7;
  if (+[VNFaceDetector shouldDumpDebugIntermediates])
  {
    v56 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = NSTemporaryDirectory();
    v11 = [v10 stringByAppendingString:@"VN_facedetector_debug_intermediates/"];

    v55 = v11;
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
    LODWORD(v11) = [v56 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:0];

    if (v11)
    {
      v13 = [v58 fileURL];
      v14 = [v13 path];

      v51 = v14;
      if (v14)
      {
        v15 = [(__CFString *)v14 lastPathComponent];
        v16 = [v15 stringByDeletingPathExtension];
        v17 = [v16 stringByAppendingString:@"_"];

        v18 = v17;
      }

      else
      {
        v18 = &stru_1F1976900;
      }

      v20 = *a4;
      v19 = *(a4 + 1);
      v50 = v18;
      v21 = [v55 stringByAppendingString:?];
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:+[VNFaceDetector printDebugInfo:facesDataRaw:faceDetectorBGRAImage:tempImage:session:]::image_name_offset];
      v23 = [v22 stringValue];
      v24 = [v21 stringByAppendingString:v23];

      v62 = v24;
      v53 = [v24 stringByAppendingString:@"_fd_image.vdump"];
      v54 = [v24 stringByAppendingString:@"_fd_image.png"];
      v52 = [v24 stringByAppendingString:@"_raw_bboxes.json"];
      v25 = [VNImageBuffer alloc];
      v61 = [(VNImageBuffer *)v25 initWithCVPixelBuffer:a5 orientation:1 options:MEMORY[0x1E695E0F8] session:v57];
      v26 = objc_autoreleasePoolPush();
      ImageProcessing_save([v53 UTF8String], a6, 4);
      saveCVPixelBuffer([v54 UTF8String], a5);
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
          v31 = *a4;
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
          v47 = [v46 stringValue];
          [v63 setObject:v45 forKey:v47];

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

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = a4;
  v122 = a6;
  v120 = a8;
  v121 = v16;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:v16 error:a7];
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
  v19 = [v17 width];
  v20 = [v18 height];
  LODWORD(v21) = 1050253722;
  LODWORD(v22) = 2.0;
  if (![VNFaceDetector calculateTilesForRegionOfInterest:v19 imageWidth:v20 imageHeight:3145728 tileSizeInPixels:v183 overlapFraction:&v182 aspectRatioThreshold:&v179 columns:x rows:y tiles:width error:height, v21, v22, a7])
  {
    v106 = 0;
    goto LABEL_37;
  }

  VNRecordImageTilingWarning(v122, v183[0], v182);
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
  v112 = [v25 VNClassCode];
  v114 = [v25 detectorCropCreationAsyncTasksQueue];
  v118 = dispatch_group_create();
  v113 = [v25 detectorCropProcessingAsyncTasksQueue];
  v109 = a7;
  v110 = v18;
  v117 = dispatch_group_create();
  kdebug_trace();
  VNValidatedLog(1, @"Start processing tilesProcessingGroup. currentDetector: %@", v26, v27, v28, v29, v30, v31, self);
  v128 = self;
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
      v161 = v112;
      v155 = v166;
      v157[1] = v39;
      v124 = v118;
      v150 = v124;
      v158 = v168;
      v159 = v169;
      v43 = v42;
      v151 = v43;
      v162 = a3;
      v44 = v122;
      v152 = v44;
      v156 = v163;
      v45 = v120;
      v154 = v45;
      v160 = v119;
      v123 = v114;
      v153 = v123;
      v46 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, 0, block);
      v130[0] = MEMORY[0x1E69E9820];
      v130[1] = 3221225472;
      v130[2] = __123__VNFaceDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_3;
      v130[3] = &unk_1E77B5A90;
      objc_copyWeak(v143, &location);
      v138 = v166;
      v47 = v46;
      v147 = v112;
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
      v148 = a3;
      v133 = v44;
      v137 = v45;
      v141 = v171;
      v142 = &v173;
      v134 = v115;
      v146 = v119;
      v51 = v113;
      v135 = v51;
      v58 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, 0, v130);
      if (v119 < 2)
      {
        VNValidatedLog(1, @"Performing createRegionOfInterestCropForProcessingBlock. currentDetector: %@", v52, v53, v54, v55, v56, v57, v128);
        v48[2](v48);
        VNValidatedLog(1, @"Performing processRegionOfInterestBlock. currentDetector: %@", v65, v66, v67, v68, v69, v70, v128);
        v58[2](v58);
        VNValidatedLog(1, @"Finish processing createRegionOfInterestCropForProcessingBlock and processRegionOfInterestBlock. currentDetector: %@", v71, v72, v73, v74, v75, v76, v128);
      }

      else
      {
        VNValidatedLog(1, @"Scheduling createRegionOfInterestCropForProcessingBlock. currentDetector: %@; group: %@", v52, v53, v54, v55, v56, v57, v128);
        [v123 dispatchGroupAsyncByPreservingQueueCapacity:v124 block:v48];
        VNValidatedLog(1, @"Scheduling processRegionOfInterestBlock. currentDetector: %@; group: %@", v59, v60, v61, v62, v63, v64, v128);
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
    VNValidatedLog(1, @"Waiting for tilesCropCreationGroup. currentDetector: %@; group: %@", v32, v33, v34, v35, v36, v37, v128);
    if ([v114 dispatchGroupWait:v118 error:v109])
    {
      VNValidatedLog(1, @"Waiting for tilesCropProcessingGroup. currentDetector: %@; group: %@", v77, v78, v79, v80, v81, v82, v128);
      if ([v113 dispatchGroupWait:v117 error:v109])
      {
        VNValidatedLog(1, @"Finish processing tilesCropCreationGroup and tilesCropProcessingGroup. currentDetector: %@; cropCreationGroup: %@; cropProcessingGroup: %@", v77, v78, v79, v80, v81, v82, v128);
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
  if ([VNValidationUtilities validateAsyncStatusResults:v115 error:v109])
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

+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:v5 error:a4];
  if (!v6)
  {
    goto LABEL_8;
  }

  if ([v6 specifiesRequestClass:objc_opt_class()])
  {
    v7 = [v6 requestRevision];
    if ((v7 - 1) < 2 || v7 == 3737841665)
    {
      v8 = objc_opt_class();
      goto LABEL_9;
    }
  }

  if (a4)
  {
    [VNError errorForUnsupportedRequestSpecifier:v6];
    *a4 = v8 = 0;
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

LABEL_9:

  return v8;
}

+ (void)fullyPopulateConfigurationOptions:(id)a3
{
  v4 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___VNFaceDetector;
  objc_msgSendSuper2(&v10, sel_fullyPopulateConfigurationOptions_, v4);
  v5 = [v4 objectForKeyedSubscript:@"VNFaceDetectorInitOption_MinFaceSize"];

  if (!v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"VNDetectorOption_RequestDetectionLevel"];
    v7 = [v6 unsignedIntegerValue];

    v8 = &unk_1F19C2498;
    if (v7 == 1)
    {
      v8 = &unk_1F19C24A8;
    }

    if (v7 == 2)
    {
      v9 = &unk_1F19C24B8;
    }

    else
    {
      v9 = v8;
    }

    [v4 setObject:v9 forKeyedSubscript:@"VNFaceDetectorInitOption_MinFaceSize"];
  }
}

+ (void)recordDefaultConfigurationOptionsInDictionary:(id)a3
{
  v4 = a3;
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___VNFaceDetector;
  objc_msgSendSuper2(&v5, sel_recordDefaultConfigurationOptionsInDictionary_, v4);
  [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"VNFaceDetectorInitOption_EnableLowMemoryMode"];
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VNFaceDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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