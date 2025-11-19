@interface ARImageDistortionCorrectionTechnique
- (ARImageDistortionCorrectionTechnique)initWithImageSize:(CGSize)a3;
- (CGPoint)lensDistortionPointForPoint:(CGPoint)a3 lookupTable:(id)a4 distortionOpticalCenter:(CGPoint)a5 imageSize:(CGSize)a6;
- (CGSize)imageSize;
- (id).cxx_construct;
- (id)processData:(id)a3;
- (void)buildUVMapFromHardcodedCalibrationParameters;
- (void)buildUVMapWithCameraCalibrationData:(id)a3;
- (void)buildUVMapWithDistortedPixelProviderBlock:(id)a3;
- (void)dealloc;
- (void)undistortImage:(__CVBuffer *)a3 toTargetImage:(__CVBuffer *)a4 imageRotationAngle:(int64_t)a5;
@end

@implementation ARImageDistortionCorrectionTechnique

- (ARImageDistortionCorrectionTechnique)initWithImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v17.receiver = self;
  v17.super_class = ARImageDistortionCorrectionTechnique;
  v5 = [(ARTechnique *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_imageSize.width = width;
    v5->_imageSize.height = height;
    v7 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.distortionCorrection.computeCoefficientsForEveryFrame"];
    v6->_computeUndistortionCoefficientsForEveryFrame = v7;
    if (v7)
    {
      v12 = vcvtq_u64_f64(v6->_imageSize);
      std::vector<float>::vector[abi:ne200100](__p, v12.i64[1] * v12.i64[0]);
      std::vector<float>::vector[abi:ne200100](&v15, v12.i64[1] * v12.i64[0]);
      engaged = v6->_undistorter.__engaged_;
      *&v6->_undistorter.var0.__null_state_ = v12;
      if (engaged)
      {
        begin = v6->_undistorter.var0.__val_.m_mappingU.__begin_;
        if (begin)
        {
          v6->_undistorter.var0.__val_.m_mappingU.__end_ = begin;
          operator delete(begin);
          v6->_undistorter.var0.__val_.m_mappingU.__begin_ = 0;
          v6->_undistorter.var0.__val_.m_mappingU.__end_ = 0;
          v6->_undistorter.var0.__val_.m_mappingU.__cap_ = 0;
        }

        *&v6->_undistorter.var0.__val_.m_mappingU.__begin_ = *__p;
        v6->_undistorter.var0.__val_.m_mappingU.__cap_ = v14;
        __p[0] = 0;
        __p[1] = 0;
        v14 = 0;
        v10 = v6->_undistorter.var0.__val_.m_mappingV.__begin_;
        if (v10)
        {
          v6->_undistorter.var0.__val_.m_mappingV.__end_ = v10;
          operator delete(v10);
          v6->_undistorter.var0.__val_.m_mappingV.__begin_ = 0;
          v6->_undistorter.var0.__val_.m_mappingV.__end_ = 0;
          v6->_undistorter.var0.__val_.m_mappingV.__cap_ = 0;
          v10 = __p[0];
        }

        *&v6->_undistorter.var0.__val_.m_mappingV.__begin_ = v15;
        v6->_undistorter.var0.__val_.m_mappingV.__cap_ = v16;
        v15 = 0uLL;
        v16 = 0;
        if (v10)
        {
          __p[1] = v10;
          operator delete(v10);
        }
      }

      else
      {
        *&v6->_undistorter.var0.__val_.m_mappingU.__begin_ = *__p;
        v6->_undistorter.var0.__val_.m_mappingU.__cap_ = v14;
        __p[1] = 0;
        v14 = 0;
        __p[0] = 0;
        *&v6->_undistorter.var0.__val_.m_mappingV.__begin_ = v15;
        v6->_undistorter.var0.__val_.m_mappingV.__cap_ = v16;
        v6->_undistorter.__engaged_ = 1;
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_undistortedImageBufferPool);
  v3.receiver = self;
  v3.super_class = ARImageDistortionCorrectionTechnique;
  [(ARImageDistortionCorrectionTechnique *)&v3 dealloc];
}

- (id)processData:(id)a3
{
  v186 = *MEMORY[0x1E69E9840];
  v178.receiver = self;
  v178.super_class = ARImageDistortionCorrectionTechnique;
  v168 = a3;
  v4 = [(ARTechnique *)&v178 processData:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v168 latestResizedUltraWideImageData];
    if (!v5)
    {
      v10 = [v168 originalImageData];
      v11 = [v10 cameraType];
      v12 = [v11 isEqualToString:*MEMORY[0x1E6986948]];

      if ((v12 & 1) == 0 || (v5 = v168) == 0)
      {
        v13 = 0;
LABEL_119:

        goto LABEL_120;
      }
    }

    v6 = [v5 downScalingResults];
    v160 = v5;
    v7 = [v6 count] == 0;

    if (v7)
    {
LABEL_118:
      v13 = v160;
      goto LABEL_119;
    }

    v8 = [v160 rotationOfResultTensor];
    v9 = v8;
    if (v8 > 89)
    {
      if (v8 == 90)
      {
        v9 = -90;
      }

      else if (v8 == 180)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v8 != -90)
      {
        if (v8)
        {
          goto LABEL_16;
        }

LABEL_13:
        p_imageSize = &self->_imageSize;
        p_height = &self->_imageSize.height;
LABEL_17:
        width = p_height->width;
        v17 = p_imageSize->width;
        v174 = 0u;
        v175 = 0u;
        v176 = 0u;
        v177 = 0u;
        v18 = [v160 downScalingResults];
        v19 = [v18 countByEnumeratingWithState:&v174 objects:v183 count:16];
        if (!v19)
        {
LABEL_117:

          goto LABEL_118;
        }

        v20 = 0;
        v21 = *v175;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v175 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v174 + 1) + 8 * i);
            [v23 imageResolution];
            if (v25 == v17 && v24 == width)
            {
              v27 = v23;

              v20 = v27;
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v174 objects:v183 count:16];
        }

        while (v19);

        if (!v20)
        {
          goto LABEL_118;
        }

        v28 = MEMORY[0x1E6986948];
        if (!self->_computeUndistortionCoefficientsForEveryFrame && !self->_undistortionMappingsForRotations)
        {
          v172 = [v160 originalImageData];
          [v160 timestamp];
          v29 = [v172 cameraType];
          [v29 isEqualToString:*v28];
          v30 = [v172 calibrationData];
          [v30 isEqual:0];
          kdebug_trace();

          v31 = [v172 calibrationData];
          v32 = v31 == 0;

          if (v32)
          {
            [(ARImageDistortionCorrectionTechnique *)self buildUVMapFromHardcodedCalibrationParameters];
          }

          else
          {
            v33 = [v172 calibrationData];
            [(ARImageDistortionCorrectionTechnique *)self buildUVMapWithCameraCalibrationData:v33];
          }

          kdebug_trace();
        }

        PixelFormatType = CVPixelBufferGetPixelFormatType([v20 pixelBuffer]);
        v35 = ARCreateCVPixelBufferFromPool(&self->_undistortedImageBufferPool, PixelFormatType, self, @"undistorted image", v17, width);
        [v160 timestamp];
        v36 = [v160 originalImageData];
        v37 = [v36 cameraType];
        [v37 isEqualToString:*v28];
        [v20 imageResolution];
        [v20 imageResolution];
        kdebug_trace();

        if (!self->_computeUndistortionCoefficientsForEveryFrame)
        {
          -[ARImageDistortionCorrectionTechnique undistortImage:toTargetImage:imageRotationAngle:](self, "undistortImage:toTargetImage:imageRotationAngle:", [v20 pixelBuffer], v35, v9);
          goto LABEL_116;
        }

        v38 = [v160 originalImageData];
        v39 = [v38 calibrationData];
        kdebug_trace();
        p_undistorter = &self->_undistorter;
        if (v39)
        {
          [v39 lensDistortionCenter];
          v42 = v41;
          v44 = v43;
          v46 = *MEMORY[0x1E695EFF8];
          v45 = *(MEMORY[0x1E695EFF8] + 8);
          v47 = _ARLogTechnique();
          v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG);
          if (v42 == v46 && v44 == v45)
          {
            if (v48)
            {
              *buf = 0;
              _os_log_impl(&dword_1C241C000, v47, OS_LOG_TYPE_DEBUG, "lensDistortionCenter is set to CGPointZero, skipping creating UV map for distortion correction", buf, 2u);
            }

            goto LABEL_115;
          }

          if (v48)
          {
            *buf = 0;
            _os_log_impl(&dword_1C241C000, v47, OS_LOG_TYPE_DEBUG, "Building distortion correction UV map from calibration data", buf, 2u);
          }

          m_unrotatedImageWidth = p_undistorter->var0.__val_.m_unrotatedImageWidth;
          [v39 intrinsicMatrixReferenceDimensions];
          v94 = v93;
          m_unrotatedImageHeight = p_undistorter->var0.__val_.m_unrotatedImageHeight;
          [v39 intrinsicMatrixReferenceDimensions];
          v97 = v96;
          kdebug_trace();
          v98 = [v39 lensDistortionLookupTable];
          v99 = v98;
          v100 = [v98 bytes];
          v101 = [v98 length];
          v102 = p_undistorter->var0.__val_.m_unrotatedImageWidth;
          if (p_undistorter->var0.__val_.m_unrotatedImageWidth)
          {
            v103 = 0;
            v104 = v94;
            v105 = m_unrotatedImageWidth / v104;
            v106 = v97;
            v107 = v42;
            v109.f32[0] = v105 * v107;
            v108 = v44;
            v109.f32[1] = (m_unrotatedImageHeight / v106) * v108;
            v110 = v102;
            v111 = p_undistorter->var0.__val_.m_unrotatedImageHeight;
            v112 = v111;
            v113.f32[0] = v102;
            v113.f32[1] = v111;
            v114 = v100 + 4 * (v101 >> 2);
            v115 = ((v101 >> 2) - 1);
            v116 = 4 * v111;
            v117 = vmaxnm_f32(v109, vsub_f32(v113, v109));
            v118 = vmul_f32(v117, v117);
            while (!v111)
            {
              v124 = v103 + 1;
LABEL_91:
              v103 = v124;
              if (v124 == v102)
              {
                goto LABEL_92;
              }
            }

            v119 = 0;
            v120 = v103;
            v121 = ~v103;
            v122 = v102 + ~v103;
            v123 = v122 * v111;
            v124 = v103 + 1;
            v125 = (v103 + 1) * v111;
            v126 = v116 * (v103 + 1) - 4;
            v127 = v111 * v102 - 1 - v103;
            v128 = v116 * v122;
            v129 = v111;
            v130 = sqrtf(vaddv_f32(v118));
            while (1)
            {
              v131.f32[0] = v120;
              v131.f32[1] = v119;
              v132 = vsub_f32(v131, v109);
              v133 = sqrtf(vaddv_f32(vmul_f32(v132, v132)));
              if (v133 >= v130)
              {
                v135 = *(v114 - 4);
              }

              else
              {
                v134 = (v133 * v115) / v130;
                v135 = ((v134 - v134) * *(v100 + 4 * v134 + 4)) + ((1.0 - (v134 - v134)) * *(v100 + 4 * v134));
              }

              v136 = vadd_f32(v109, vmla_n_f32(v132, v132, v135));
              if (v9 > 89)
              {
                if (v9 == 90)
                {
                  v137 = v125 + ~v119;
                  *(p_undistorter->var0.__val_.m_mappingU.__begin_ + v126) = v112 - v136.f32[1];
                  goto LABEL_87;
                }

                if (v9 == 180)
                {
                  v137 = v121 + (v111 - v119) * v102;
                  p_undistorter->var0.__val_.m_mappingU.__begin_[v127] = v110 - v136.f32[0];
                  v136.f32[0] = v112 - v136.f32[1];
                  goto LABEL_87;
                }
              }

              else
              {
                if (v9 == -90)
                {
                  v137 = v119 + v123;
                  *(p_undistorter->var0.__val_.m_mappingU.__begin_ + v128) = v136.i32[1];
                  v136.f32[0] = v110 - v136.f32[0];
                  goto LABEL_87;
                }

                if (!v9)
                {
                  LODWORD(p_undistorter->var0.__val_.m_mappingU.__begin_[v103]) = v136.i32[0];
                  v136.i32[0] = v136.i32[1];
                  v137 = v103;
LABEL_87:
                  LODWORD(p_undistorter->var0.__val_.m_mappingV.__begin_[v137]) = v136.i32[0];
                }
              }

              ++v119;
              v103 += v102;
              v126 -= 4;
              v127 -= v102;
              v128 += 4;
              if (!--v129)
              {
                goto LABEL_91;
              }
            }
          }

LABEL_92:

LABEL_93:
          kdebug_trace();

          v138 = [v20 pixelBuffer];
          CVPixelBufferLockBaseAddress(v138, 1uLL);
          *buf = 0u;
          v182 = 0u;
          ARWrapCVPixelBufferVImage(v138, buf);
          CVPixelBufferLockBaseAddress(v35, 0);
          memset(v180, 0, sizeof(v180));
          ARWrapCVPixelBufferVImage(v35, v180);
          kdebug_trace();
          v179 = 0;
          v139 = vImageMapping_CreateFromMap_Image8U();
          kdebug_trace();
          if (v139)
          {
            kdebug_trace();
            v179 = vImageRemap_Image8U();
            if (!v179)
            {
LABEL_109:
              kdebug_trace();
              vImageMapping_Release();
              goto LABEL_114;
            }

            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARImageDistortionCorrectionTechnique processData:];
            }

            v140 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v141 = _ARLogTechnique();
            v142 = v141;
            if (v140 == 1)
            {
              if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
              {
                *v184 = 134217984;
                v185 = v179;
                v143 = "Image undistortion failed with error code : %ld";
                v144 = v142;
                v145 = OS_LOG_TYPE_ERROR;
LABEL_107:
                _os_log_impl(&dword_1C241C000, v144, v145, v143, v184, 0xCu);
              }
            }

            else if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
            {
              *v184 = 134217984;
              v185 = v179;
              v143 = "Error: Image undistortion failed with error code : %ld";
              v144 = v142;
              v145 = OS_LOG_TYPE_INFO;
              goto LABEL_107;
            }

            goto LABEL_109;
          }

          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            [ARImageDistortionCorrectionTechnique processData:];
          }

          v146 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v147 = _ARLogTechnique();
          v148 = v147;
          if (v146 == 1)
          {
            if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
            {
              *v184 = 134217984;
              v185 = v179;
              v149 = "Image mapping creation failed with error code : %ld";
              v150 = v148;
              v151 = OS_LOG_TYPE_ERROR;
LABEL_112:
              _os_log_impl(&dword_1C241C000, v150, v151, v149, v184, 0xCu);
            }
          }

          else if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
          {
            *v184 = 134217984;
            v185 = v179;
            v149 = "Error: Image mapping creation failed with error code : %ld";
            v150 = v148;
            v151 = OS_LOG_TYPE_INFO;
            goto LABEL_112;
          }

LABEL_114:
          CVPixelBufferUnlockBaseAddress(v35, 0);
          CVPixelBufferUnlockBaseAddress(v138, 1uLL);
          v152 = v179 == 0;

          if (!v152)
          {
LABEL_115:
            CVPixelBufferRelease(v35);
            v35 = CVPixelBufferRetain([v20 pixelBuffer]);
          }

LABEL_116:
          [v20 setUndistortedPixelBuffer:v35];
          [v160 timestamp];
          CVPixelBufferGetWidth(v35);
          CVPixelBufferGetHeight(v35);
          kdebug_trace();
          CVPixelBufferRelease(v35);
          v18 = v20;
          goto LABEL_117;
        }

        v49 = _ARLogTechnique();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C241C000, v49, OS_LOG_TYPE_DEBUG, "Building distortion correction UV map from hardcoded parameters", buf, 2u);
        }

        v50 = ARFixedIntrinsicsForBackUltraWideCamera640x480();
        v53 = ARAdjustIntrinsicsForViewportSize(*&v50, v51, v52, 640.0, 480.0, p_undistorter->var0.__val_.m_unrotatedImageWidth, p_undistorter->var0.__val_.m_unrotatedImageHeight);
        v170 = v54;
        v171 = v53;
        v173 = v55;
        *v56.i64 = ARRadialDistortionForUltraWideCamera();
        v57 = p_undistorter->var0.__val_.m_unrotatedImageWidth;
        if (!p_undistorter->var0.__val_.m_unrotatedImageWidth)
        {
          goto LABEL_93;
        }

        v154 = v38;
        v58 = 0;
        v59 = v57;
        v60 = p_undistorter->var0.__val_.m_unrotatedImageHeight;
        v61 = v60;
        _S11 = v170;
        v165 = vcvtq_f64_f32(*v56.f32);
        v166 = vcvt_hight_f64_f32(v56);
        v156 = v60 * v57 - 1;
        v157 = 4 * v60;
        __asm { FMOV            V0.4S, #1.0 }

        v155 = _Q0;
        v158 = v35;
        v164 = v60;
        while (!v60)
        {
          v91 = v58 + 1;
LABEL_67:
          v58 = v91;
          if (v91 == v57)
          {
            v39 = 0;
            v38 = v154;
            goto LABEL_93;
          }
        }

        v67 = 0;
        v163 = ~v58;
        v68 = v57 + ~v58;
        v69 = v155;
        v69.f32[0] = (v58 - *&v173) / v171;
        v161 = (v58 + 1) * v60;
        v162 = v68 * v60;
        v159 = v58 + 1;
        v70 = v157 * (v58 + 1) - 4;
        v71 = v60;
        v72 = v156 - v58;
        v73 = v157 * v68;
        v167 = v69;
        while (1)
        {
          v74 = v69;
          v74.f32[1] = (v67 - *(&v173 + 1)) / _S11;
          *&v75 = *&vcvt_hight_f64_f32(v74);
          _Q2 = vcvtq_f64_f32(*v74.f32);
          v77 = vmuld_lane_f64(_Q2.f64[1], _Q2, 1) + _Q2.f64[0] * _Q2.f64[0];
          if (v77 >= 0.00000001)
          {
            v79 = sqrt(v77);
            v169 = _Q2;
            v80 = atan2(v79, v75);
            v81 = v80 * (v80 * v80);
            v82 = v80 * v80 * v81;
            v83 = v80 * v80 * v82;
            v84 = v80 * v80 * v83;
            v85 = v80 + v165.f64[0] * v81 + v165.f64[1] * v82;
            v69 = v167;
            _Q2 = v169;
            *&v85 = v85 + v166.f64[0] * v83 + v166.f64[1] * v84;
            v78 = *&v85 / v79;
          }

          else
          {
            v78 = 1.0 / v75;
          }

          *&_Q2.f64[1] = vextq_s8(_Q2, _Q2, 8uLL).u64[0];
          *&_Q2.f64[0] = vcvt_f32_f64(vmulq_n_f64(_Q2, v78));
          v87 = *&v173 + (v171 * *_Q2.f64);
          __asm { FMLA            S0, S11, V2.S[1] }

          if (v9 > 89)
          {
            if (v9 == 90)
            {
              v90 = v161 + ~v67;
              v89 = p_undistorter;
              *(p_undistorter->var0.__val_.m_mappingU.__begin_ + v70) = v61 - _S0;
              _S0 = *&v173 + (v171 * *_Q2.f64);
              goto LABEL_63;
            }

            if (v9 == 180)
            {
              v90 = v163 + (v164 - v67) * v57;
              v89 = p_undistorter;
              p_undistorter->var0.__val_.m_mappingU.__begin_[v72] = v59 - v87;
              _S0 = v61 - _S0;
              goto LABEL_63;
            }
          }

          else
          {
            if (v9 == -90)
            {
              v90 = v67 + v162;
              v89 = p_undistorter;
              *(p_undistorter->var0.__val_.m_mappingU.__begin_ + v73) = _S0;
              _S0 = v59 - v87;
              goto LABEL_63;
            }

            if (!v9)
            {
              v89 = p_undistorter;
              p_undistorter->var0.__val_.m_mappingU.__begin_[v58] = v87;
              v90 = v58;
LABEL_63:
              v89->var0.__val_.m_mappingV.__begin_[v90] = _S0;
            }
          }

          ++v67;
          v58 += v57;
          v70 -= 4;
          v72 -= v57;
          v73 += 4;
          if (!--v71)
          {
            v35 = v158;
            v91 = v159;
            v60 = v164;
            goto LABEL_67;
          }
        }
      }

      v9 = 90;
    }

LABEL_16:
    p_height = &self->_imageSize;
    p_imageSize = &self->_imageSize.height;
    goto LABEL_17;
  }

LABEL_120:

  return v168;
}

- (void)buildUVMapWithDistortedPixelProviderBlock:(id)a3
{
  v35[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  p_imageSize = &self->_imageSize;
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  v8 = [[ARUndistortionMapping alloc] initWithImageSize:width, height];
  v9 = [[ARUndistortionMapping alloc] initWithImageSize:height, width];
  v10 = [[ARUndistortionMapping alloc] initWithImageSize:self->_imageSize.width, self->_imageSize.height];
  v32 = self;
  v11 = [[ARUndistortionMapping alloc] initWithImageSize:height, width];
  v12 = p_imageSize->width;
  if (p_imageSize->width > 0.0)
  {
    v13 = 0;
    v14 = width + -1.0;
    v15 = p_imageSize->height;
    v16 = 0.0;
    do
    {
      if (v15 > 0.0)
      {
        v17 = 0.0;
        v18 = 1;
        do
        {
          v19 = objc_autoreleasePoolPush();
          v20 = v4[2](v4, v16, v17);
          v21 = p_imageSize->width;
          v22 = p_imageSize->height;
          v23 = (v16 + v17 * p_imageSize->width);
          v24 = v20;
          v8->_mappingU.__begin_[v23] = v24;
          v25 = (height + v16 * height + -1.0 - v17);
          v27 = v26;
          v8->_mappingV.__begin_[v23] = v27;
          *&v26 = v22 - v26;
          v9->_mappingU.__begin_[v25] = *&v26;
          v9->_mappingV.__begin_[v25] = v24;
          v28 = (v21 + (v22 + -1.0 - v17) * v21 + -1.0 - v16);
          *&v20 = v21 - v20;
          v10->_mappingU.__begin_[v28] = *&v20;
          v10->_mappingV.__begin_[v28] = *&v26;
          v29 = (v17 + (v14 - v16) * height);
          v11->_mappingU.__begin_[v29] = v27;
          v11->_mappingV.__begin_[v29] = *&v20;
          objc_autoreleasePoolPop(v19);
          v17 = v18;
          v15 = p_imageSize->height;
          ++v18;
        }

        while (v15 > v17);
        v12 = p_imageSize->width;
      }

      v16 = ++v13;
    }

    while (v12 > v13);
  }

  v34[0] = &unk_1F4256E38;
  v34[1] = &unk_1F4256E50;
  v35[0] = v8;
  v35[1] = v9;
  v34[2] = &unk_1F4256E68;
  v34[3] = &unk_1F4256E80;
  v35[2] = v10;
  v35[3] = v11;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:{4, v12, v32}];
  v31 = *(v33 + 64);
  *(v33 + 64) = v30;
}

- (void)buildUVMapWithCameraCalibrationData:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 lensDistortionCenter];
  v6 = v5;
  v8 = v7;
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  v11 = _ARLogTechnique();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v6 == v9 && v8 == v10)
  {
    if (v12)
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138543618;
      v33 = v27;
      v34 = 2048;
      v35 = self;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: lensDistortionCenter is set to CGPointZero, skipping creating UV map for distortion correction", buf, 0x16u);
    }
  }

  else
  {
    if (v12)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543618;
      v33 = v15;
      v34 = 2048;
      v35 = self;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Building distortion correction UV map from calibration data", buf, 0x16u);
    }

    width = self->_imageSize.width;
    [v4 intrinsicMatrixReferenceDimensions];
    v18 = v17;
    height = self->_imageSize.height;
    [v4 intrinsicMatrixReferenceDimensions];
    v21 = v20;
    [v4 lensDistortionCenter];
    v23 = v22;
    [v4 lensDistortionCenter];
    v25 = height / v21 * v24;
    kdebug_trace();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __76__ARImageDistortionCorrectionTechnique_buildUVMapWithCameraCalibrationData___block_invoke;
    v28[3] = &unk_1E817C420;
    v28[4] = self;
    v29 = v4;
    v30 = width / v18 * v23;
    v31 = v25;
    [(ARImageDistortionCorrectionTechnique *)self buildUVMapWithDistortedPixelProviderBlock:v28];
  }
}

double __76__ARImageDistortionCorrectionTechnique_buildUVMapWithCameraCalibrationData___block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) lensDistortionLookupTable];
  [v6 lensDistortionPointForPoint:v7 lookupTable:a2 distortionOpticalCenter:a3 imageSize:{*(a1 + 48), *(a1 + 56), *(*(a1 + 32) + 152), *(*(a1 + 32) + 160)}];
  v9 = v8;

  return v9;
}

- (void)buildUVMapFromHardcodedCalibrationParameters
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v27 = v5;
    v28 = 2048;
    v29 = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Building distortion correction UV map from hardcoded parameters", buf, 0x16u);
  }

  v6 = ARFixedIntrinsicsForBackUltraWideCamera640x480();
  *&v9 = ARAdjustIntrinsicsForViewportSize(*&v6, v7, v8, 640.0, 480.0, self->_imageSize.width, self->_imageSize.height);
  v13 = v9;
  v14 = v10;
  v15 = v11;
  *&v12 = ARRadialDistortionForUltraWideCamera();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__ARImageDistortionCorrectionTechnique_buildUVMapFromHardcodedCalibrationParameters__block_invoke;
  v16[3] = &__block_descriptor_96_e30__CGPoint_dd_24__0_CGPoint_dd_8l;
  v17 = DWORD2(v13);
  v16[4] = v13;
  v18 = 0;
  v20 = DWORD2(v14);
  v19 = v14;
  v21 = 0;
  v23 = DWORD2(v15);
  v22 = v15;
  v24 = 0;
  v25 = v12;
  [(ARImageDistortionCorrectionTechnique *)self buildUVMapWithDistortedPixelProviderBlock:v16];
}

double __84__ARImageDistortionCorrectionTechnique_buildUVMapFromHardcodedCalibrationParameters__block_invoke(uint64_t a1, float64x2_t a2, float64_t a3)
{
  v3 = (a1 + 32);
  v5.i32[0] = vld2_f32(v3).val[0].u32[0];
  a2.f64[1] = a3;
  v4 = *(a1 + 64);
  v5.i32[1] = *(a1 + 52);
  v6 = vcvtq_f64_f32(vdiv_f32(vsub_f32(vcvt_f32_u32(vmovn_s64(vcvtq_u64_f64(a2))), v4), v5));
  v7 = COERCE_DOUBLE(*&vmulq_f64(v6, v6).f64[1]) + v6.f64[0] * v6.f64[0];
  v8 = 1.0;
  if (v7 >= 0.00000001)
  {
    v9 = *(a1 + 80);
    v23 = vcvtq_f64_f32(*v9.f32);
    v24 = vcvt_hight_f64_f32(v9);
    v10 = sqrt(v7);
    v26 = v5;
    v25 = v6;
    v11 = atan2(v10, 1.0);
    _D3 = v11 * v11 * (v11 * (v11 * v11));
    _D1 = v11 * v11 * (v11 * v11 * _D3);
    _V6.D[1] = v23.f64[1];
    __asm { FMLA            D0, D3, V6.D[1] }

    _V2.D[1] = v24.f64[1];
    v6 = v25;
    v5 = v26;
    __asm { FMLA            D0, D1, V2.D[1] }

    *&_D0 = _D0;
    v8 = *&_D0 / v10;
  }

  *&result = *&vmlaq_f64(vcvtq_f64_f32(v4), vmulq_n_f64(v6, v8), vcvtq_f64_f32(v5));
  return result;
}

- (void)undistortImage:(__CVBuffer *)a3 toTargetImage:(__CVBuffer *)a4 imageRotationAngle:(int64_t)a5
{
  v24 = *MEMORY[0x1E69E9840];
  CVPixelBufferLockBaseAddress(a3, 0);
  v21 = 0u;
  v22 = 0u;
  ARWrapCVPixelBufferVImage(a3, &v21);
  CVPixelBufferLockBaseAddress(a4, 0);
  memset(v20, 0, sizeof(v20));
  ARWrapCVPixelBufferVImage(a4, v20);
  undistortionMappingsForRotations = self->_undistortionMappingsForRotations;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v11 = [(NSDictionary *)undistortionMappingsForRotations objectForKeyedSubscript:v10];

  *buf = v21;
  *&buf[16] = v22;
  [v11 createVImageMappingIfNeededForImage:buf];
  kdebug_trace();
  v12 = vImageRemap_Image8U();
  if (v12)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARImageDistortionCorrectionTechnique processData:];
    }

    v13 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v14 = _ARLogTechnique();
    v15 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2048;
        *&buf[24] = v12;
        _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Image undistortion failed with error code : %ld", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138543874;
      *&buf[4] = v19;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2048;
      *&buf[24] = v12;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Image undistortion failed with error code : %ld", buf, 0x20u);
    }
  }

  kdebug_trace();
  CVPixelBufferUnlockBaseAddress(a3, 0);
  CVPixelBufferUnlockBaseAddress(a4, 0);
}

- (CGPoint)lensDistortionPointForPoint:(CGPoint)a3 lookupTable:(id)a4 distortionOpticalCenter:(CGPoint)a5 imageSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  x = a5.x;
  y = a5.y;
  v6 = a3.y;
  v7 = a3.x;
  v8 = a4;
  v9 = [v8 bytes];
  v10 = [v8 length];
  v11.f64[0] = width;
  v11.f64[1] = height;
  v12.f64[0] = x;
  v12.f64[1] = y;
  v13 = vsubq_f64(v11, v12);
  *&v12.f64[0] = vcvt_f32_f64(vbslq_s8(vcgtq_f64(v13, v12), v13, v12));
  v14 = vaddv_f32(vmul_f32(*&v12.f64[0], *&v12.f64[0]));
  v15 = v7 - x;
  v16 = v6 - y;
  v17 = sqrtf(v14);
  v18 = sqrtf(vaddv_f32(vmul_f32(__PAIR64__(LODWORD(v16), LODWORD(v15)), __PAIR64__(LODWORD(v16), LODWORD(v15)))));
  v19 = v10 >> 2;
  if (v18 >= v17)
  {
    v21 = *(v9 + 4 * v19 - 4);
  }

  else
  {
    v20 = (v18 * (v19 - 1)) / v17;
    v21 = ((v20 - v20) * *(v9 + 4 * v20 + 4)) + ((1.0 - (v20 - v20)) * *(v9 + 4 * v20));
  }

  v22 = x + (v15 + (v21 * v15));
  v23 = y + (v16 + (v21 * v16));

  v24 = v22;
  v25 = v23;
  result.y = v25;
  result.x = v24;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 80) = 0;
  *(self + 144) = 0;
  return self;
}

@end