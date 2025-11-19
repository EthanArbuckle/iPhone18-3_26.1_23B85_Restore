@interface VNFaceBBoxAligner
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id).cxx_construct;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
- (void)dealloc;
@end

@implementation VNFaceBBoxAligner

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__VNFaceBBoxAligner_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNFaceBBoxAligner configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceBBoxAligner configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNFaceBBoxAligner configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __58__VNFaceBBoxAligner_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNFaceBBoxAligner;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNDetectorInitOption_ModelBackingStore"];
  v3 = [v2 copy];
  v4 = +[VNFaceBBoxAligner configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNFaceBBoxAligner configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v187 = *MEMORY[0x1E69E9840];
  __p = 0;
  v171 = 0;
  v172 = 0;
  v142 = a5;
  BaseAddress = CVPixelBufferGetBaseAddress(a4);
  Height = CVPixelBufferGetHeight(a4);
  Width = CVPixelBufferGetWidth(a4);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
  v14 = [v142 objectForKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinates_X"];
  [v14 doubleValue];
  v15 = [v142 objectForKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinates_Y"];
  [v15 doubleValue];
  v16 = [v142 objectForKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinates_Width"];
  [v16 doubleValue];
  v164 = v17;
  v18 = [v142 objectForKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinates_Height"];
  [v18 doubleValue];
  v160 = v19;

  v20 = [v142 objectForKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinatesMagnified_X"];
  [v20 doubleValue];
  v22 = v21;
  v23 = [v142 objectForKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinatesMagnified_Y"];
  [v23 doubleValue];
  v25 = v24;
  v26 = [v142 objectForKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinatesMagnified_Width"];
  [v26 doubleValue];
  v158 = v27;
  v28 = [v142 objectForKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinatesMagnified_Height"];
  [v28 doubleValue];
  v155 = v29;
  v140 = v25;
  v141 = v22;

  v30.f64[0] = v158;
  v30.f64[1] = v155;
  v31.f64[0] = v164;
  v31.f64[1] = v160;
  v32 = vsubq_f64(v30, v31);
  *&v38 = v164;
  v33 = v160;
  __asm { FMOV            V3.2D, #0.5 }

  *&v40 = vcvt_f32_f64(vmulq_f64(v32, _Q3));
  *(&v38 + 1) = v33;
  ptr = self->mFaceBoxPoseAlignerImpl.__ptr_;
  LODWORD(v176) = v40;
  *(&v176 + 1) = (Height - v33) - *(&v40 + 1);
  *(&v176 + 1) = v38;
  v177 = 0;
  v178 = 0;
  *(&v40 + 1) = v38;
  v174 = v176;
  v175 = 0uLL;
  v41 = *ptr;
  v42 = *&v40;
  if (*ptr)
  {
    v43 = 0;
    v44 = *(ptr + 8);
    v45 = *(ptr + 1);
    v46 = Width + -1.0;
    v47 = Height + -1.0;
    v48 = *&v175;
    v49 = *(&v174 + 3);
    v50 = *(&v174 + 2);
    v51 = *(&v174 + 1);
    *&v40 = *(&v175 + 4);
    v153 = v40;
    v152 = *(&v175 + 3);
    v52 = v45;
    v145 = *ptr;
    v146 = v45;
    do
    {
      v53 = 0;
      v180 = 0;
      v181 = 0;
      v179 = 0;
      v182 = 0.0;
      do
      {
        *(&v179 + v53) = *(v44 + v53) + *(&v179 + v53);
        v53 += 4;
      }

      while (v53 != 28);
      v159 = v52;
      v165 = v49;
      v54 = v45 * v43;
      v151 = v43 + 1;
      v156 = v48;
      if (v45 * v43 >= (v45 * (v43 + 1)))
      {
        v86 = __sincosf_stret(v48);
        cosval = v86.__cosval;
        sinval = v86.__sinval;
        v85 = v156;
        v59 = -v86.__sinval;
        v60 = v165;
      }

      else
      {
        v161 = *(ptr + 11);
        v55 = *(ptr + 4);
        v58 = __sincosf_stret(v48);
        cosval = v58.__cosval;
        sinval = v58.__sinval;
        v59 = -v58.__sinval;
        v60 = v165;
        do
        {
          if (v55 > 0)
          {
            v61 = 0;
            while (1)
            {
              v62 = *(v161 + 24 * v54) + 48 * v61;
              if (*(v62 + 44) == 1)
              {
                break;
              }

              v63 = (*(ptr + 5) + 16 * *(v62 + 8));
              v64 = *v63 + -0.5;
              v65 = v63[1] + -0.5;
              v66 = v42 + (((((v65 * v59) + (v58.__cosval * v64)) + 0.0) + 0.5) * v50);
              v67 = ptr[33];
              if (v66 < 0.0)
              {
                v71 = ptr[33];
              }

              else
              {
                v68 = v51 + (((((v65 * v58.__cosval) + (v58.__sinval * v64)) + 0.0) + 0.5) * v165);
                v70 = v68 < 0.0 || v46 < v66 || v47 < v68;
                v71 = ptr[33];
                if (!v70)
                {
                  v72 = BaseAddress[BytesPerRow * vcvtas_u32_f32(v68) + vcvtas_u32_f32(v66)];
                  v71 = v72 - (v72 == v67);
                }
              }

              v73 = v63[2] + -0.5;
              v74 = v63[3] + -0.5;
              v75 = v42 + (((((v74 * v59) + (v58.__cosval * v73)) + 0.0) + 0.5) * v50);
              if (v75 < 0.0)
              {
                goto LABEL_40;
              }

              v76 = v51 + (((((v74 * v58.__cosval) + (v58.__sinval * v73)) + 0.0) + 0.5) * v165);
              v77 = v76 < 0.0 || v46 < v75;
              if (v77 || v47 < v76)
              {
                goto LABEL_40;
              }

              v79 = BaseAddress[BytesPerRow * vcvtas_u32_f32(v76) + vcvtas_u32_f32(v75)];
              if (v67 == v71)
              {
                goto LABEL_40;
              }

              v80 = v79 - (v79 == v67);
              if (v67 == v80)
              {
                goto LABEL_40;
              }

              v81 = v71 - v80;
              if (v81 >= 127)
              {
                v81 = 127;
              }

              if (v81 <= -127)
              {
                LOBYTE(v81) = -127;
              }

              if (ptr[32] == v81)
              {
LABEL_40:
                v183 = 0;
                v184 = 0;
                v186 = 0;
                v185 = 0;
                goto LABEL_43;
              }

              v82 = 2 * v61;
              if (*v62 >= v81)
              {
                v61 = v82 + 1;
              }

              else
              {
                v61 = v82 + 2;
              }

              if (v61 >= v55)
              {
                goto LABEL_43;
              }
            }

            for (i = 0; i != 28; i += 4)
            {
              *(&v183 + i) = *(v62 + 16 + i);
            }
          }

LABEL_43:
          for (j = 0; j != 28; j += 4)
          {
            *(&v179 + j) = *(&v183 + j) + *(&v179 + j);
          }

          ++v54;
        }

        while (v54 != v159);
        v85 = v156;
        v41 = v145;
      }

      v87 = ((*(&v179 + 1) * cosval) + (sinval * *&v179)) + 0.0;
      *&v179 = ((*(&v179 + 1) * v59) + (cosval * *&v179)) + 0.0;
      *(&v179 + 1) = v87;
      v150 = ((cosval * *(&v180 + 1)) + (sinval * *&v180)) + 0.0;
      *&v180 = ((*(&v180 + 1) * v59) + (cosval * *&v180)) + 0.0;
      *(&v180 + 1) = v150;
      v148 = *&v180;
      v149 = (v42 + (v50 * 0.5)) + (*&v179 * v50);
      v147 = v60 * 0.5;
      v162 = (v51 + (v60 * 0.5)) + (v87 * v60);
      v88 = __sincosf_stret(v85 + -1.5708);
      v89 = ((v42 + ((v50 * 0.5) * (v88.__cosval + 1.0))) + (v148 * v50)) - v149;
      v90 = ((v51 + (v147 * (v88.__sinval + 1.0))) + (v150 * v165)) - v162;
      v48 = atan2f(v90, v89) + 1.5708;
      v91 = sqrtf((v90 * v90) + (v89 * v89));
      v42 = v149 - v91;
      v51 = v162 - v91;
      v49 = v91 + v91;
      *(&v38 + 1) = *(&v153 + 1);
      *&v38 = vmla_f32(*&v153, 0x4100000041200000, v181);
      v153 = v38;
      v152 = v152 + (v182 * 8.0);
      v45 = v146;
      v52 = v159 + v146;
      v44 += 28;
      v50 = v91 + v91;
      v43 = v151;
    }

    while (v151 != v41);
    v157 = v48;
    *(&v174 + 3) = v91 + v91;
    v92 = v91 + v91;
    v93 = v91 + v91;
  }

  else
  {
    v93 = *(&v174 + 2);
    v51 = *(&v174 + 1);
    v92 = *(&v174 + 3);
    LODWORD(v38) = DWORD1(v175);
    v157 = *&v175;
    v152 = *(&v175 + 3);
  }

  v183 = 0;
  v184 = 0;
  v185 = 0;
  v154 = *&v38;
  v94 = *&v38 + 3.0;
  if ((*&v38 + 3.0) > 6.0)
  {
    v94 = 6.0;
  }

  if (v94 >= 0.0)
  {
    v95 = v94;
  }

  else
  {
    v95 = 0.0;
  }

  v96 = floorf(v95);
  if (v96 <= 5.0)
  {
    v97 = v96;
  }

  else
  {
    v97 = 5.0;
  }

  std::vector<_Geometry2D_point2D_>::resize(&v183);
  v98 = v93 * 0.5;
  v99 = v42 + (v93 * 0.5);
  v100 = v92;
  v101 = v92 * 0.5;
  v166 = ((v93 * 0.5) - (v51 + v101)) + (Height - v100);
  v102 = v97;
  v103 = v97;
  v104 = v97 + 1;
  v163 = v99 - (v93 * 0.5);
  v105 = v104 - v95;
  v106 = v95 - v102;
  v107 = v98 - v98;
  v108 = __sincosf_stret(v157);
  v109 = 0;
  v110 = v183;
  v111 = *(&v174 + 3);
  v112 = (&vision::mod::landmarksInPoses + 1008 * v104 + 8);
  v113 = (&vision::mod::landmarksInPoses + 1008 * v103 + 8);
  do
  {
    v114 = *(v113 - 1);
    v115 = *(v112 - 1);
    v116 = (v106 * v115) + (v114 * v105);
    v117 = *v113;
    v118 = *v112;
    v119 = (v107 + (v116 * v93)) - v98;
    v120 = (v107 + (((v106 * v118) + (v117 * v105)) * v111)) - v101;
    v121 = &v110[v109];
    *v121 = v98 + (((v120 * -v108.__sinval) + (v108.__cosval * v119)) + 0.0);
    v121[1] = v100 - (v101 + (((v108.__cosval * v120) + (v108.__sinval * v119)) + 0.0));
    v109 += 8;
    v112 += 2;
    v113 += 2;
  }

  while (v109 != 504);
  v168 = 0;
  v169 = 0;
  v167 = 0;
  std::vector<_Geometry2D_point2D_>::__init_with_size[abi:ne200100]<_Geometry2D_point2D_*,_Geometry2D_point2D_*>(&v167, v110, v184, (v184 - v110) >> 3);
  operator delete(v110);
  v122 = v167;
  std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&__p, v167, v168, (v168 - v167) >> 3);
  v123 = VNCloneFaceObservationFromOptions(v142, a8);
  if (v123)
  {
    v124 = objc_alloc(MEMORY[0x1E695DEF0]);
    v125 = [v124 initWithBytes:__p length:v171 - __p];
    [v123 setAlignedMeanShape:v125];

    v126 = [(VNDetector *)self validatedImageBufferFromOptions:v142 error:a8];
    v127 = v126;
    if (v126)
    {
      v128 = [v126 width];
      v129 = [v127 height];
      HIDWORD(v131) = HIDWORD(v140);
      HIDWORD(v130) = HIDWORD(v141);
      v132 = v141;
      *&v130 = (v163 + v132) / v128;
      v133 = v140;
      *&v131 = (v166 + v133) / v129;
      *&v134 = v93 / v128;
      *&v135 = v100 / v129;
      [v123 setAlignedBoundingBox:{v130, v131, v135, v134}];
      *&v136 = v157;
      [v123 setAlignedRotationAngle:v136];
      [v123 setBoundingBoxAligned:1];
      [v123 setFaceOrientationIndex:v154];
      *&v137 = v152;
      [v123 setFaceJunkinessIndex:v137];
      v173 = v123;
      v138 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v173 count:1];
    }

    else
    {
      v138 = 0;
    }
  }

  else
  {
    v138 = 0;
  }

  if (v122)
  {
    operator delete(v122);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v138;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  v12 = a4;
  v13 = [(VNDetector *)self validatedImageBufferFromOptions:v12 error:a8];
  if (v13)
  {
    v14 = [VNValidationUtilities requiredFaceObservationInOptions:v12 error:a8];
    v15 = v14;
    if (v14 && ([v14 boundingBox], v17 = v16, v19 = v18, v21 = v20, v23 = v22, v24 = objc_msgSend(v13, "width"), v25 = objc_msgSend(v13, "height"), v26 = v17 * v24, v27 = v21 * v24, v28 = v19 * v25, v29 = v23 * v25, v47.origin.x = v26, v47.origin.y = v28, v47.size.width = v27, v47.size.height = v29, v48 = CGRectInset(v47, v27 * -0.5, v29 * -0.5), x = v48.origin.x, y = v48.origin.y, width = v48.size.width, height = v48.size.height, v46 = -1, (objc_msgSend(v15, "getFaceEXIFOrientation:error:", &v46, a8) & 1) != 0) && (objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v46), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "setObject:forKeyedSubscript:", v34, @"VNImageBufferOption_FeatureOrientationRelativeToUpRight"), v34, v35 = objc_msgSend(v13, "croppedBufferWithWidth:height:format:cropRect:options:error:", width, height, 1278226488, v12, a8, x, y, width, height), (*a7 = v35) != 0))
    {
      v36 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
      [v12 setObject:v36 forKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinates_X"];

      v37 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
      [v12 setObject:v37 forKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinates_Y"];

      v38 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
      [v12 setObject:v38 forKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinates_Width"];

      v39 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
      [v12 setObject:v39 forKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinates_Height"];

      v40 = [MEMORY[0x1E696AD98] numberWithDouble:x];
      [v12 setObject:v40 forKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinatesMagnified_X"];

      v41 = [MEMORY[0x1E696AD98] numberWithDouble:y];
      [v12 setObject:v41 forKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinatesMagnified_Y"];

      v42 = [MEMORY[0x1E696AD98] numberWithDouble:width];
      [v12 setObject:v42 forKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinatesMagnified_Width"];

      v43 = [MEMORY[0x1E696AD98] numberWithDouble:height];
      [v12 setObject:v43 forKeyedSubscript:@"VNFaceBBoxAlignerProcessOption_FaceRawBoxInImageCoordinatesMagnified_Height"];

      v44 = 1;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = *&a3;
  v27[1] = *MEMORY[0x1E69E9840];
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v20 = [VNValidationUtilities requiredFaceObservationInOptions:v17 error:a7];
  v21 = v20;
  if (v20)
  {
    if ([v20 isBoundingBoxAligned])
    {
      v22 = VNCloneFaceObservationFromOptions(v17, a7);
      v23 = v22;
      if (v22)
      {
        v27[0] = v22;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v26.receiver = self;
      v26.super_class = VNFaceBBoxAligner;
      v24 = [(VNDetector *)&v26 internalProcessUsingQualityOfServiceClass:v15 options:v17 regionOfInterest:v18 warningRecorder:a7 error:v19 progressHandler:x, y, width, height];
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)dealloc
{
  if (self->_modelFilesWereMemmapped)
  {
    v3 = VNBinModelFilePathFromModelNameAndThrow(@"faceBoxPoseAligner-current");
    v4 = +[VNModelFilesCache sharedInstance];
    [v4 unload:v3];
  }

  v5.receiver = self;
  v5.super_class = VNFaceBBoxAligner;
  [(VNDetector *)&v5 dealloc];
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v13.receiver = self;
  v13.super_class = VNFaceBBoxAligner;
  if (![(VNDetector *)&v13 completeInitializationForSession:a3 error:?])
  {
    return 0;
  }

  self->_modelFilesWereMemmapped = [(VNDetector *)self backingStore]< 2;
  v6 = VNBinModelFilePathFromModelNameAndThrow(@"faceBoxPoseAligner-current");
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__VNFaceBBoxAligner_completeInitializationForSession_error___block_invoke;
  v11[3] = &unk_1E77B6430;
  v11[4] = self;
  v12 = v6;
  v7 = v6;
  v8 = _Block_copy(v11);
  v9 = VNExecuteBlock(v8, a4);

  return v9;
}

uint64_t __60__VNFaceBBoxAligner_completeInitializationForSession_error___block_invoke(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 72) != 1)
  {
    [*(a1 + 40) UTF8String];
    operator new();
  }

  v4 = +[VNModelFilesCache sharedInstance];
  v5 = [v4 load:*(a1 + 40)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 80);
  *(v6 + 80) = v5;

  v8 = *(*(a1 + 32) + 80);
  if (v8)
  {
    v9 = [v8 baseAddress];
    v10 = [*(*(a1 + 32) + 80) length];
    memset(v16, 0, sizeof(v16));
    v17 = 1065353216;
    cvml::util::binserialized_table_of_contents::init(v16, v9, v10);
    memset(v14, 0, sizeof(v14));
    v15 = 1065353216;
    cvml::util::binserialized_contents::init_model_values(v14, v16, 0, vision::mod::FaceBoxPoseAligner<signed char>::modelFileInfo(void)::fileInfo);
    operator new();
  }

  if (!a2)
  {
    return 0;
  }

  v11 = [VNError errorForInternalErrorWithLocalizedDescription:@"Could not map face box aligner model"];
  v12 = v11;
  result = 0;
  *a2 = v11;
  return result;
}

@end