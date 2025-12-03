@interface VNFaceRegionMapGenerator
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (id).cxx_construct;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (void)dealloc;
@end

@implementation VNFaceRegionMapGenerator

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v176 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v140 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (!v140)
  {
    v97 = 0;
    goto LABEL_109;
  }

  v138 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (!v138)
  {
    v97 = 0;
    goto LABEL_108;
  }

  v139 = VNCloneFaceObservationFromOptions(optionsCopy, error);
  if (!v139)
  {
    v97 = 0;
    goto LABEL_107;
  }

  [v140 width];
  [v140 height];
  [v139 alignedBoundingBox];
  v146 = v17;
  __C = v16;
  __p = 0;
  v152 = 0;
  v153 = 0;
  std::vector<_Geometry2D_point2D_>::resize(&__p);
  v18 = __p;
  landmarkPoints65 = [v139 landmarkPoints65];
  memcpy(v18, [landmarkPoints65 bytes], 0x1F8uLL);

  v20 = v152;
  if (v18 != v152)
  {
    v21 = v18;
    do
    {
      *v21 = vmul_f32(__PAIR64__(LODWORD(__C), LODWORD(v146)), *v21);
      ++v21;
    }

    while (v21 != v20);
  }

  ptr = self->mFaceRegionMapAlgorithmImpl.__ptr_;
  memset(v150, 0, sizeof(v150));
  v159 = 0;
  v160 = 0;
  v161 = 0;
  std::vector<_Geometry2D_point2D_>::__init_with_size[abi:ne200100]<_Geometry2D_point2D_*,_Geometry2D_point2D_*>(&v159, v18, v20, (v20 - v18) >> 3);
  v23 = v159;
  if (v160 - v159 != 504)
  {
    v96 = 5756;
    if (!v159)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  v132 = handlerCopy;
  v133 = recorderCopy;
  v134 = optionsCopy;
  v135 = FaceRegionMap_addForeheadLandmarks(&v159);
  if ((v135 & 0x80) == 0)
  {
    goto LABEL_82;
  }

  *(v150 + 8) = vdupq_n_s64(0x100uLL);
  *(&v150[1] + 1) = 256;
  v24 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  v25 = v24;
  *&v150[0] = v24;
  if (!v24)
  {
    v96 = 5755;
    goto LABEL_83;
  }

  bzero(v24, 0x10000uLL);
  v158 = v146 * 0.0039062;
  v26 = __C * 0.0039062;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  Geometry2D_mallocCart2D(&v155, 256);
  v27 = 0;
  v28 = v155;
  v29 = v155 + 2;
  v30 = xmmword_1A6027770;
  v31 = xmmword_1A6027760;
  v32 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x100uLL), v31)), v30.n128_u64[0]).u8[0])
    {
      *(v29 - 2) = v27;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x100uLL), *&v31)), *&v30).i8[2])
    {
      *(v29 - 1) = (v27 + 1);
    }

    if (vuzp1_s16(*&v30, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x100uLL), *&v30))).i32[1])
    {
      *v29 = (v27 + 2);
      v29[1] = (v27 + 3);
    }

    v27 += 4;
    v30 = vaddq_s64(v30, v32);
    v31 = vaddq_s64(v31, v32);
    v29 += 4;
  }

  while (v27 != 256);
  v129 = v18;
  selfCopy = self;
  errorCopy = error;
  v33 = v28;
  MEMORY[0x1AC5587B0](v30, v31);
  v34 = 0;
  v35 = v157;
  v36 = 4 * v157;
  v37 = v159;
  v142 = v33;
  __Ca = v156;
  if (v33)
  {
    v38 = v156 == 0;
  }

  else
  {
    v38 = 1;
  }

  v40 = v38 || v157 < 1;
  v136 = v40;
  v137 = 4 * v157;
  do
  {
    __A = v26 * v34;
    vDSP_vfill(&__A, __Ca, 1, 0x100uLL);
    v141 = v34;
    v25[14] = 0u;
    v25[15] = 0u;
    v25[12] = 0u;
    v25[13] = 0u;
    v25[10] = 0u;
    v25[11] = 0u;
    v25[8] = 0u;
    v25[9] = 0u;
    v25[6] = 0u;
    v25[7] = 0u;
    v25[4] = 0u;
    v25[5] = 0u;
    v25[2] = 0u;
    v25[3] = 0u;
    *v25 = 0u;
    v25[1] = 0u;
    if (v35 < 1)
    {
      v41 = 0;
LABEL_33:
      free(v41);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      goto LABEL_34;
    }

    v41 = malloc_type_malloc(v36, 0x100004052888210uLL);
    if (!v41)
    {
      goto LABEL_33;
    }

    v42 = malloc_type_malloc(v36, 0x100004052888210uLL);
    v43 = v35;
    if (!v42)
    {
      goto LABEL_33;
    }

LABEL_34:
    v162 = 0;
    v163 = 0;
    v164 = 0;
    Geometry2D_mallocCart2D(&v162, v35);
    v44 = *(ptr + 10);
    v45 = v162;
    v46 = v163;
    if (v44 != *(ptr + 11))
    {
      if (v162)
      {
        v47 = v163 == 0;
      }

      else
      {
        v47 = 1;
      }

      v49 = v47 || v164 < 1;
      v50 = v136;
      if (!v41)
      {
        v50 = 1;
        v49 = 1;
      }

      if (!v42)
      {
        v50 = 1;
        v49 = 1;
      }

      if (v43 < 1)
      {
        v50 = 1;
        v49 = 1;
      }

      v147 = v164;
      if (v35 == v43)
      {
        v51 = v50;
      }

      else
      {
        v51 = 1;
      }

      v145 = v164;
      if (v164 == v43)
      {
        v52 = v49;
      }

      else
      {
        v52 = 1;
      }

      v143 = v52;
      v144 = v51;
      do
      {
        v53 = *v44;
        v54 = &v37[*v44];
        v55 = *v54;
        v173 = *v54;
        v56 = v54[1];
        v170 = v56;
        v57 = v44[1];
        v58 = &v37[v57];
        v59 = *v58;
        v174 = *v58;
        v60 = v58[1];
        v171 = v60;
        v61 = v44[2];
        v62 = &v37[v61];
        v63 = *v62;
        v175 = *v62;
        v64 = v62[1];
        v172 = v64;
        if ((v51 & 1) == 0)
        {
          v65 = v55 - v59;
          v66 = v56 - v64;
          v67 = v55 - v63;
          v68 = v56 - v60;
          v69 = (v65 * (v56 - v64)) - (v67 * v68);
          v70 = v142;
          v71 = -v65;
          v72 = __Ca;
          v73 = v41;
          v74 = v42;
          v75 = v43;
          do
          {
            v76 = *v70++;
            v77 = v76 - v55;
            v78 = *v72++;
            *v73++ = ((v67 * (v78 - v56)) - (v77 * v66)) / v69;
            *v74++ = (((v78 - v56) * v71) + (v77 * v68)) / v69;
            --v75;
          }

          while (v75);
          v53 = *v44;
          v57 = v44[1];
          v61 = v44[2];
        }

        v79 = *(ptr + 3);
        v80 = (v79 + 8 * v53);
        v81 = *v80;
        v173 = *v80;
        v82 = v80[1];
        v170 = v82;
        v83 = (v79 + 8 * v57);
        v84 = *v83;
        v174 = *v83;
        v85 = v83[1];
        v171 = v85;
        v86 = (v79 + 8 * v61);
        v87 = *v86;
        v175 = *v86;
        v88 = v86[1];
        v172 = v88;
        if ((v52 & 1) == 0)
        {
          v167 = v85 - v82;
          v168 = v84 - v81;
          v165 = v88 - v82;
          v166 = v87 - v81;
          MEMORY[0x1AC5587A0](v41, 1, &v168, &v173, v45, 1, v147);
          MEMORY[0x1AC558790](v42, 1, &v166, v45, 1, v45, 1, v145);
          MEMORY[0x1AC5587A0](v41, 1, &v167, &v170, v46, 1, v145);
          MEMORY[0x1AC558790](v42, 1, &v165, v46, 1, v46, 1, v145);
          v52 = v143;
          v51 = v144;
        }

        if (v35 >= 1)
        {
          for (i = 0; i < v35; ++i)
          {
            if (!*(v25 + i))
            {
              v90 = *(v41 + i);
              if (v90 >= 0.0 && v90 <= 1.0)
              {
                v92 = v42[i];
                v93 = v90 + v92;
                v94 = v92 < 0.0 || v92 > 1.0;
                if (!v94 && v93 <= 1.0)
                {
                  *(v25 + i) = *(*(ptr + 6) + *(ptr + 9) * *&v46[4 * i] + v45[i]);
                }
              }
            }
          }
        }

        v44 += 3;
      }

      while (v44 != *(ptr + 11));
    }

    free(v45);
    free(v46);
    free(v41);
    free(v42);
    v25 += 16;
    v34 = v141 + 1;
    v36 = v137;
  }

  while (v141 != 255);
  free(v142);
  free(__Ca);
  self = selfCopy;
  error = errorCopy;
  v18 = v129;
LABEL_82:
  v96 = v135;
LABEL_83:
  v23 = v159;
  recorderCopy = v133;
  optionsCopy = v134;
  handlerCopy = v132;
  if (v159)
  {
LABEL_89:
    operator delete(v23);
  }

LABEL_90:
  if (v96 == 5760)
  {
    v98 = self->mFaceRegionMapAlgorithmImpl.__ptr_;
    v163 = 0;
    v164 = 0;
    v162 = &v163;
    if (*v98 != (v98 + 8))
    {
      if (v162 != &v163)
      {
        v99 = &v163;
        do
        {
          v100 = v99[2];
          v38 = *v100 == v99;
          v99 = v100;
        }

        while (v38);
      }

      operator new();
    }

    v101 = objc_alloc(MEMORY[0x1E695DF90]);
    v102 = [v101 initWithCapacity:v164];
    v103 = v162;
    if (v162 != &v163)
    {
      do
      {
        v104 = v103 + 5;
        if (*(v103 + 63) < 0)
        {
          v104 = *v104;
        }

        v105 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v104];
        v106 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v103 + 32)];
        [v102 setObject:v105 forKey:v106];

        v107 = v103[1];
        if (v107)
        {
          do
          {
            v108 = v107;
            v107 = *v107;
          }

          while (v107);
        }

        else
        {
          do
          {
            v108 = v103[2];
            v38 = *v108 == v103;
            v103 = v108;
          }

          while (!v38);
        }

        v103 = v108;
      }

      while (v108 != &v163);
    }

    v109 = [VNFaceRegionMap alloc];
    requestRevision = [v138 requestRevision];
    [v139 boundingBox];
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v118 = v117;
    [v139 alignedBoundingBox];
    LODWORD(v120) = v119;
    LODWORD(v122) = v121;
    LODWORD(v124) = v123;
    LODWORD(v126) = v125;
    v126 = [(VNFaceRegionMap *)v109 initWithRequestRevision:requestRevision regionMap:v150 deallocateBuffer:1 userBBox:v102 alignedBBox:v112 valueToLabelMap:v114, v116, v118, v120, v122, v124, v126];
    [v139 setFaceRegionMap:v126];
    v169 = v139;
    v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v169 count:1];

    std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(v163);
    v18 = __p;
    if (__p)
    {
LABEL_106:
      operator delete(v18);
    }
  }

  else if (error)
  {
    VNErrorForCVMLStatus(v96);
    *error = v97 = 0;
    if (v18)
    {
      goto LABEL_106;
    }
  }

  else
  {
    v97 = 0;
    if (v18)
    {
      goto LABEL_106;
    }
  }

LABEL_107:

LABEL_108:
LABEL_109:

  return v97;
}

- (void)dealloc
{
  v3 = VNBinModelFilePathFromModelNameAndThrow(@"faceRegionMap-current");
  v4 = +[VNModelFilesCache sharedInstance];
  [v4 unload:v3];

  v5.receiver = self;
  v5.super_class = VNFaceRegionMapGenerator;
  [(VNDetector *)&v5 dealloc];
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v10.receiver = self;
  v10.super_class = VNFaceRegionMapGenerator;
  if (![(VNDetector *)&v10 completeInitializationForSession:session error:?])
  {
    return 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__VNFaceRegionMapGenerator_completeInitializationForSession_error___block_invoke;
  aBlock[3] = &unk_1E77B5998;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = VNExecuteBlock(v6, error);

  return v7;
}

uint64_t __67__VNFaceRegionMapGenerator_completeInitializationForSession_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = VNBinModelFilePathFromModelNameAndThrow(@"faceRegionMap-current");
  v4 = +[VNModelFilesCache sharedInstance];
  v5 = [v4 load:v3];
  if (v5)
  {
    [v5 ptrFile];
    operator new();
  }

  if (a2)
  {
    *a2 = [VNError errorWithCode:9 message:@"Could not read face region map model data"];
  }

  return 0;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

@end