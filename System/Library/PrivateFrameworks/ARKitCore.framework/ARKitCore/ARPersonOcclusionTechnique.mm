@interface ARPersonOcclusionTechnique
- (ARPersonOcclusionTechnique)init;
- (id).cxx_construct;
- (id)_fullDescription;
- (int)_minFilterDepthMap:(__CVBuffer *)a3 kernelSize:(unint64_t)a4 pResultBuffer:(__CVBuffer *)a5;
- (int)postProcessSegmentation:(__CVBuffer *)a3 depthData:(id)a4 depthDataSource:(int64_t)a5 detectionData:(id)a6 pResultingDepthBuffer:(__CVBuffer *)a7;
- (void)dealloc;
- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4;
@end

@implementation ARPersonOcclusionTechnique

- (ARPersonOcclusionTechnique)init
{
  v3.receiver = self;
  v3.super_class = ARPersonOcclusionTechnique;
  if ([(ARTechnique *)&v3 init])
  {
    std::allocate_shared[abi:ne200100]<arkit::RobustExpFilter<float>,std::allocator<arkit::RobustExpFilter<float>>,double,double,double,double,double,double,double,double,0>();
  }

  return 0;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_depthPixelBufferPool);
  minFilterIntermediatePooledBuffer = self->_minFilterIntermediatePooledBuffer;
  if (minFilterIntermediatePooledBuffer)
  {
    free(minFilterIntermediatePooledBuffer);
  }

  v4.receiver = self;
  v4.super_class = ARPersonOcclusionTechnique;
  [(ARPersonOcclusionTechnique *)&v4 dealloc];
}

- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4
{
  v111 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 resultDataOfClass:objc_opt_class()];
  v8 = [v7 firstObject];

  v9 = [v6 resultDataOfClass:objc_opt_class()];
  v10 = [v9 firstObject];

  v11 = [v6 resultDataOfClass:objc_opt_class()];
  v96 = [v11 firstObject];

  v12 = [v6 resultDataOfClass:objc_opt_class()];
  v13 = [v12 firstObject];

  if ([v8 segmentationBuffer] && objc_msgSend(v10, "depthBuffer") && v96 && !v13)
  {
    [v8 timestamp];
    v15 = v14;
    [v10 timestamp];
    if (v15 != v16)
    {
      [v10 timestamp];
      v18 = v17;
      [v96 timestamp];
      if (v18 != v19)
      {
        [v8 timestamp];
        [v10 timestamp];
        [v96 timestamp];
        kdebug_trace();
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
        }

        v20 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v21 = _ARLogTechnique();
        v22 = v21;
        if (v20 == 1)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            [v8 timestamp];
            v26 = v25;
            [v10 timestamp];
            v28 = v27;
            [v96 timestamp];
            *buf = 138544386;
            v102 = v24;
            v103 = 2048;
            v104 = self;
            v105 = 2048;
            v106 = v26;
            v107 = 2048;
            v108 = v28;
            v109 = 2048;
            v110 = v29;
            _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Mismatched timestamps. (Segmentation data: %f, Depth data: %f, Detection data: %f) ", buf, 0x34u);
          }
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v66 = objc_opt_class();
          v67 = NSStringFromClass(v66);
          [v8 timestamp];
          v69 = v68;
          [v10 timestamp];
          v71 = v70;
          [v96 timestamp];
          *buf = 138544386;
          v102 = v67;
          v103 = 2048;
          v104 = self;
          v105 = 2048;
          v106 = v69;
          v107 = 2048;
          v108 = v71;
          v109 = 2048;
          v110 = v72;
          _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Mismatched timestamps. (Segmentation data: %f, Depth data: %f, Detection data: %f) ", buf, 0x34u);
        }

        v73 = [(ARTechnique *)self delegate];
        [v73 technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:v6 context:a3];

        goto LABEL_70;
      }
    }

    [v8 timestamp];
    kdebug_trace();
    v37 = [v8 segmentationBuffer];
    v38 = v37;
    if (v37)
    {
      Width = CVPixelBufferGetWidth(v37);
      Height = CVPixelBufferGetHeight(v38);
      v41 = Width;
      v42 = Height;
    }

    else
    {
      v41 = *MEMORY[0x1E695F060];
      v42 = *(MEMORY[0x1E695F060] + 8);
    }

    v98 = ARCreateCVPixelBufferFromPool(&self->_depthPixelBufferPool, 1717855600, self, @"Result Depth Map", v41, v42);
    if (v98)
    {
      v95 = [v6 imageData];
      if ([v95 deviceOrientation] != self->_lastDeviceOrientation)
      {
        v50 = _ARLogTechnique();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v51 = objc_opt_class();
          v52 = NSStringFromClass(v51);
          *buf = 138543618;
          v102 = v52;
          v103 = 2048;
          v104 = self;
          _os_log_impl(&dword_1C241C000, v50, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Resetting exponential filter due to device rotation.", buf, 0x16u);
        }

        ptr = self->_varExpFilter.__ptr_;
        ptr[1] = *ptr;
        ptr[4] = ptr[3];
      }

      self->_lastDeviceOrientation = [v95 deviceOrientation];
      v54 = [v10 singleFrameDepthBuffer];
      if ([v10 source] == 2)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v96 timestamp];
          kdebug_trace();
          texture = 0;
          v55 = [(ARPersonOcclusionTechnique *)self _minFilterDepthMap:v54 kernelSize:3 pResultBuffer:&texture];
          [v96 timestamp];
          kdebug_trace();
          if (v55)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
            }

            v56 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v57 = _ARLogTechnique();
            v58 = v57;
            if (v56 == 1)
            {
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                v59 = objc_opt_class();
                v60 = NSStringFromClass(v59);
                *buf = 138543618;
                v102 = v60;
                v103 = 2048;
                v104 = self;
                _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error creating result depth buffer", buf, 0x16u);
              }
            }

            else if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              v92 = objc_opt_class();
              v93 = NSStringFromClass(v92);
              *buf = 138543618;
              v102 = v93;
              v103 = 2048;
              v104 = self;
              _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error creating result depth buffer", buf, 0x16u);
            }

            v94 = [(ARTechnique *)self delegate];
            [v94 technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:v6 context:a3];

            [v8 timestamp];
            kdebug_trace();
            CVPixelBufferRelease(v98);
LABEL_69:

            goto LABEL_70;
          }

          v77 = [ARMLDepthData alloc];
          [v10 timestamp];
          v79 = -[ARMLDepthData initWithTimestamp:depthBuffer:confidenceBuffer:source:](v77, "initWithTimestamp:depthBuffer:confidenceBuffer:source:", texture, [v10 singleFrameConfidenceBuffer], 2, v78);

          CVPixelBufferRelease(texture);
          v10 = v79;
        }
      }

      if (-[ARPersonOcclusionTechnique postProcessSegmentation:depthData:depthDataSource:detectionData:pResultingDepthBuffer:](self, "postProcessSegmentation:depthData:depthDataSource:detectionData:pResultingDepthBuffer:", [v8 segmentationBuffer], v10, objc_msgSend(v10, "source"), v96, &v98))
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
        }

        v80 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v81 = _ARLogTechnique();
        v82 = v81;
        if (v80 == 1)
        {
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v83 = objc_opt_class();
            v84 = NSStringFromClass(v83);
            *buf = 138543618;
            v102 = v84;
            v103 = 2048;
            v104 = self;
            _os_log_impl(&dword_1C241C000, v82, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Processing segmentation and depth buffer failed", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          v89 = objc_opt_class();
          v90 = NSStringFromClass(v89);
          *buf = 138543618;
          v102 = v90;
          v103 = 2048;
          v104 = self;
          _os_log_impl(&dword_1C241C000, v82, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Processing segmentation and depth buffer failed", buf, 0x16u);
        }

        v87 = [(ARTechnique *)self delegate];
        [v87 technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:v6 context:a3];
      }

      else
      {
        v85 = [ARFilteredMLDepthData alloc];
        v86 = -[ARMLDepthData initWithTimestamp:depthBuffer:source:](v85, "initWithTimestamp:depthBuffer:source:", v98, [v10 source], a3);
        v87 = v86;
        if (v86)
        {
          v100 = v86;
          v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
        }

        else
        {
          v88 = MEMORY[0x1E695E0F0];
        }

        v91 = [(ARTechnique *)self delegate];
        [v91 technique:self didOutputResultData:v88 timestamp:v6 context:a3];
      }

      CVPixelBufferRelease(v98);
      [v8 timestamp];
      kdebug_trace();
      goto LABEL_69;
    }

    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v61 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v62 = _ARLogTechnique();
    v63 = v62;
    if (v61 == 1)
    {
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v64 = objc_opt_class();
        v65 = NSStringFromClass(v64);
        *buf = 138543618;
        v102 = v65;
        v103 = 2048;
        v104 = self;
        _os_log_impl(&dword_1C241C000, v63, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error creating result depth buffer", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v74 = objc_opt_class();
      v75 = NSStringFromClass(v74);
      *buf = 138543618;
      v102 = v75;
      v103 = 2048;
      v104 = self;
      _os_log_impl(&dword_1C241C000, v63, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error creating result depth buffer", buf, 0x16u);
    }

    v76 = [(ARTechnique *)self delegate];
    [v76 technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:v6 context:a3];

    [v8 timestamp];
    kdebug_trace();
  }

  else if ([v8 segmentationBuffer] && v13)
  {
    v30 = [v8 segmentationBuffer];
    v31 = v30;
    if (v30)
    {
      v32 = CVPixelBufferGetWidth(v30);
      v33 = CVPixelBufferGetHeight(v31);
      v34 = v32;
      v35 = v33;
    }

    else
    {
      v34 = *MEMORY[0x1E695F060];
      v35 = *(MEMORY[0x1E695F060] + 8);
    }

    v43 = ARCreateCVPixelBufferFromPool(&self->_depthPixelBufferPool, 1717855600, self, @"Result Depth Map", v34, v35);
    v44 = v43;
    if (v43)
    {
      CVPixelBufferLockBaseAddress(v43, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(v44);
      BytesPerRow = CVPixelBufferGetBytesPerRow(v44);
      bzero(BaseAddress, (v35 * BytesPerRow));
      CVPixelBufferUnlockBaseAddress(v44, 0);
      v47 = -[ARMLDepthData initWithTimestamp:depthBuffer:source:]([ARFilteredMLDepthData alloc], "initWithTimestamp:depthBuffer:source:", v44, [v13 source], a3);
      CVPixelBufferRelease(v44);
    }

    else
    {
      v47 = 0;
    }

    v48 = [(ARTechnique *)self delegate];
    if (v47)
    {
      v99 = v47;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
    }

    else
    {
      v49 = MEMORY[0x1E695E0F0];
    }

    [v48 technique:self didOutputResultData:v49 timestamp:v6 context:a3];
    if (v47)
    {
    }
  }

  else
  {
    kdebug_trace();
    v36 = [(ARTechnique *)self delegate];
    [v36 technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:v6 context:a3];

    kdebug_trace();
  }

LABEL_70:
}

- (int)postProcessSegmentation:(__CVBuffer *)a3 depthData:(id)a4 depthDataSource:(int64_t)a5 detectionData:(id)a6 pResultingDepthBuffer:(__CVBuffer *)a7
{
  buf[5] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v14 = v13;
  pixelBuffer = a3;
  if (!a3)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v18 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v19 = _ARLogTechnique();
    v20 = v19;
    if (v18 == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v22;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = self;
        _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Missing segmentation buffer", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      LODWORD(buf[0]) = 138543618;
      *(buf + 4) = v28;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = self;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Missing segmentation buffer", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (!v12)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v23 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v24 = _ARLogTechnique();
    v20 = v24;
    if (v23 == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v26;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = self;
        _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Missing depth data", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      LODWORD(buf[0]) = 138543618;
      *(buf + 4) = v39;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = self;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Missing depth data", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (!v13)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v34 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v35 = _ARLogTechnique();
    v20 = v35;
    if (v34 == 1)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v37;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = self;
        _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Missing detection data", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      LODWORD(buf[0]) = 138543618;
      *(buf + 4) = v44;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = self;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Missing detection data", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (!a7 || !*a7)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v29 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v30 = _ARLogTechnique();
    v31 = v30;
    if (v29 == 1)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v33;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = self;
        _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Missing resulting depth buffer", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      LODWORD(buf[0]) = 138543618;
      *(buf + 4) = v41;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = self;
      _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Missing resulting depth buffer", buf, 0x16u);
    }

    v42 = -6662;
    goto LABEL_45;
  }

  v15 = [v12 singleFrameDepthBuffer];
  if (!v15)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v46 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v47 = _ARLogTechnique();
    v20 = v47;
    if (v46 == 1)
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v49;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = self;
        _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Missing depth buffer", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      LODWORD(buf[0]) = 138543618;
      *(buf + 4) = v62;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = self;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Missing depth buffer", buf, 0x16u);
    }

LABEL_44:

    v42 = -6661;
    goto LABEL_45;
  }

  v218 = v15;
  if (self->_useBoundingBoxes)
  {
    v206 = v14;
    v16 = [v14 detectedObjects];
    v17 = [v16 count] != 0;

    v14 = v206;
  }

  else
  {
    v17 = 0;
  }

  v50 = a5 != 2 && self->_doExpFiltering;
  v209 = *a7;
  CVPixelBufferLockBaseAddress(*a7, 0);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(v218, (v50 & 1) == 0);
  memset(buf, 0, 32);
  ARWrapCVPixelBufferVImage(v218, buf);
  memset(v228, 0, sizeof(v228));
  ARWrapCVPixelBufferVImage(pixelBuffer, v228);
  memset(v227, 0, sizeof(v227));
  ARWrapCVPixelBufferVImage(v209, v227);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*&buf[1], *(v228 + 8)), vceqq_s64(*&buf[1], *&v227[1])))) & 1) == 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v51 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v52 = _ARLogTechnique();
    v53 = v52;
    if (v51 == 1)
    {
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        *v229 = 138543618;
        *&v229[4] = v55;
        *&v229[12] = 2048;
        *&v229[14] = self;
        _os_log_impl(&dword_1C241C000, v53, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Dimensions of depth buffer, segmentation buffer and resulting depth buffer are not equal", v229, 0x16u);
      }
    }

    else if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      *v229 = 138543618;
      *&v229[4] = v60;
      *&v229[12] = 2048;
      *&v229[14] = self;
      _os_log_impl(&dword_1C241C000, v53, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Dimensions of depth buffer, segmentation buffer and resulting depth buffer are not equal", v229, 0x16u);
    }

    v42 = -6681;
    goto LABEL_45;
  }

  if (v50)
  {
    [v14 timestamp];
    kdebug_trace();
    v56 = 4 * buf[2] * buf[1];
    v57 = arkit::RobustExpFilter<float>::filter(self->_varExpFilter.__ptr_, buf[0], v56);
    memcpy(buf[0], v57, v56);
    [v14 timestamp];
    kdebug_trace();
    v58 = v227[1];
  }

  else
  {
    v58 = buf[1];
  }

  bzero(v227[0], v58 * v227[3]);
  if (v17)
  {
    __p = 0;
    v225 = 0;
    v226 = 0;
    v221 = 0;
    v222 = 0;
    v223 = 0;
    *&v63 = -1;
    *(&v63 + 1) = -1;
    *v229 = v63;
    *&v229[16] = 0uLL;
    v207 = v14;
    arkit::computeBoundingBoxes(v228, v14, &__p, &v221, v229);
    arkit::fillInstanceDepthBufferOutsideAllDetections(buf, v228, v227, v229);
    v202 = ~v50;
    v205 = [v12 singleFrameConfidenceBuffer];
    if (v205)
    {
      CVPixelBufferLockBaseAddress(v205, 1uLL);
      ARWrapCVPixelBufferVImage(v205, v220);
      v64 = v220[0];
      v65 = v220[3];
    }

    else
    {
      v65 = 0;
      v64 = 0;
    }

    v79 = v218;
    v80 = v225;
    v203 = __p;
    v208 = v225;
    if (__p == v225)
    {
      goto LABEL_119;
    }

    v81 = v228[0].i64[0];
    v82 = v228[1].i64[1];
    v83 = buf[0];
    v84 = buf[3];
    v85 = v227[0];
    v86 = v227[3];
    v87 = __p;
    do
    {
      v89 = *v87;
      v88 = v87[1];
      v90 = *(v87 + 1);
      v91 = *(v87 + 3);
      if (v90 >= v91)
      {
        goto LABEL_118;
      }

      v92 = v14;
      v93 = 0;
      v94 = 0;
      v95 = v88 - v89;
      v96 = &v64[4 * v89 + v65 * v90];
      v97 = (v83 + v84 * v90 + 4 * v89);
      v98 = (v81 + v89 + v82 * v90);
      v99 = 0.0;
      v100 = *(v87 + 1);
      v101 = 0.0;
      do
      {
        if (v88 > *v87)
        {
          v102 = v98;
          v103 = v97;
          v104 = v96;
          for (i = v95; i; --i)
          {
            if (*v102++)
            {
              v99 = v99 + *v103;
              if (v64)
              {
                ++v93;
                if (*v104 <= 0.4)
                {
                  goto LABEL_97;
                }
              }

              else
              {
                ++v93;
              }

              v101 = v101 + *v103;
              ++v94;
            }

LABEL_97:
            ++v104;
            ++v103;
          }
        }

        ++v100;
        v96 = (v65 + v96);
        v97 = (v97 + v84);
        v98 += v82;
      }

      while (v100 != v91);
      if (v93)
      {
        v107 = v93;
        v14 = v92;
        v79 = v218;
        if ((v93 * 0.75) >= v94 || (v99 = v101, v107 = v94, v94))
        {
          v108 = v99 / v107;
        }

        else
        {
          v108 = 3.4028e38;
        }
      }

      else
      {
        v108 = 0.0;
        v14 = v92;
        v79 = v218;
      }

      v80 = v208;
      v109 = buf[3];
      v110 = &v85[v86 * v90];
      v111 = v81 + v82 * v90;
      v112 = buf[0] + v90 * buf[3];
      do
      {
        if (v93)
        {
          v113 = *v87;
          v114 = v88 - *v87;
          if (v88 > *v87)
          {
            v115 = &v110[4 * v113];
            v116 = (v111 + v113);
            do
            {
              if (*v116++)
              {
                *v115 = v108;
              }

              ++v115;
              --v114;
            }

            while (v114);
          }
        }

        else
        {
          v118 = *v87;
          if (*v87 < v88)
          {
            do
            {
              if (*(v111 + v118))
              {
                *&v110[4 * v118] = *(v112 + 4 * v118);
              }

              ++v118;
            }

            while (v88 != v118);
          }
        }

        ++v90;
        v88 = v87[1];
        v110 = v86 + v110;
        v111 += v82;
        v112 += v109;
      }

      while (v90 < *(v87 + 3));
LABEL_118:
      v87 += 2;
    }

    while (v87 != v80);
LABEL_119:
    v204 = v221;
    v217 = v222;
    if (v221 == v222)
    {
      goto LABEL_212;
    }

    v214 = v228[1].i64[1];
    v215 = v228[0].i64[0];
    v212 = v227[3];
    v213 = v227[0];
    v119 = v221;
    v216 = v12;
    v210 = buf[3];
    v211 = buf[0];
LABEL_121:
    v120 = *v119;
    v121 = *(v119 + 8);
    if (*v119 == v121)
    {
      goto LABEL_161;
    }

    v122 = 0;
    v123 = v228[0].i64[0];
    v124 = v228[1].i64[1];
    v125 = buf[0];
    v126 = buf[3];
    v127 = *v119;
    v128 = v227[0];
    v129 = v227[3];
LABEL_123:
    v130 = v127->u64[1];
    v131 = v127[1];
    if (v130 >= v127[1].i64[1])
    {
      goto LABEL_144;
    }

LABEL_124:
    v132 = v127->i64[0];
    v133 = v131.i64[0];
    if (v127->i64[0] >= v131.i64[0])
    {
      goto LABEL_143;
    }

    v134 = &v128[v129 * v130];
    while (!*(v123 + v124 * v130 + v132))
    {
LABEL_141:
      if (++v132 == v133)
      {
        v131 = v127[1];
LABEL_143:
        if (++v130 >= v131.i64[1])
        {
LABEL_144:
          v142 = v127[2].u64[1];
          if (v142)
          {
            v143 = v127[3].u64[1];
            v144 = v143;
            v145 = v142;
            if ((v142 * 0.75) >= v143)
            {
              i32 = v127[2].i32;
LABEL_149:
              v147 = *i32 / v145;
            }

            else
            {
              if (v143)
              {
                i32 = v127[3].i32;
                v145 = v144;
                goto LABEL_149;
              }

              v147 = 3.4028e38;
            }

            *v127[4].i32 = v147;
          }

          v148 = v127[6].u64[0];
          v149 = v148;
          v150 = v127[5].u64[0];
          if ((v150 * 0.75) >= v148)
          {
            if (!v150)
            {
              goto LABEL_157;
            }

            v151 = &v127[4].i32[2];
            v149 = v150;
LABEL_156:
            v152 = *v151 / v149;
          }

          else
          {
            if (v148)
            {
              v151 = &v127[5].i32[2];
              goto LABEL_156;
            }

LABEL_157:
            v152 = 3.4028e38;
          }

          *&v127[6].i32[2] = v152;
          v127 += 7;
          ++v122;
          if (v127 == v121)
          {
LABEL_161:
            v153 = *(v119 + 40);
            v154 = *(v119 + 48);
            if (v153 >= *(v119 + 56))
            {
              goto LABEL_191;
            }

            while (2)
            {
              v155 = *(v119 + 32);
              v156 = v154;
              if (v155 >= v154)
              {
                goto LABEL_190;
              }

              v157 = &v213[v212 * v153];
              while (2)
              {
                if (*(v215 + v214 * v153 + v155) && *&v157[4 * v155] == -3.4028e38)
                {
                  if (v64)
                  {
                    v158 = *&v64[4 * v155 + v153 * v65] > 0.4;
                  }

                  else
                  {
                    v158 = 1;
                  }

                  v159 = *(v211 + v210 * v153 + 4 * v155);
                  v160 = v120;
                  if (v120 != v121)
                  {
                    v161.i64[0] = v155;
                    v161.i64[1] = v153;
                    v162 = 3.4028e38;
                    v160 = v120;
                    v163 = v120;
                    do
                    {
                      v164 = vandq_s8(vcgtq_u64(v163[1], v161), vcgeq_u64(v161, *v163));
                      if ((vandq_s8(vdupq_laneq_s64(v164, 1), v164).u64[0] & 0x8000000000000000) != 0)
                      {
                        v165 = v163[2].i64[1] ? 32 : 72;
                        v166 = vabds_f32(v159, *(v163[2].i32 + v165));
                        if (v166 <= v162)
                        {
                          v160 = v163;
                          v162 = v166;
                        }
                      }

                      v163 += 7;
                    }

                    while (v163 != v121);
                  }

                  v167 = v159 + *v160[2].i32;
                  *v160[2].i32 = v167;
                  v168 = v160[2].i64[1] + 1;
                  v160[2].i64[1] = v168;
                  if (v158)
                  {
                    *v160[3].i32 = v159 + *v160[3].i32;
                    v169 = v160[3].i64[1] + 1;
                    v160[3].i64[1] = v169;
                  }

                  else
                  {
                    v169 = v160[3].i64[1];
                  }

                  v170 = v168;
                  if ((v168 * 0.75) >= v169)
                  {
                    if (!v168)
                    {
                      goto LABEL_186;
                    }

LABEL_185:
                    v171 = v167 / v170;
                  }

                  else
                  {
                    if (v169)
                    {
                      v167 = *v160[3].i32;
                      v170 = v169;
                      goto LABEL_185;
                    }

LABEL_186:
                    v171 = 3.4028e38;
                  }

                  *v160[4].i32 = v171;
                  *&v157[4 * v155] = -1.0 - (0x6DB6DB6DB6DB6DB7 * (v160 - v120));
                }

                if (++v155 != v156)
                {
                  continue;
                }

                break;
              }

              v154 = *(v119 + 48);
LABEL_190:
              if (++v153 < *(&v154 + 1))
              {
                continue;
              }

              break;
            }

LABEL_191:
            v12 = v216;
            v79 = v218;
            if (v120 == v121)
            {
              goto LABEL_201;
            }

            v172 = v120 + 2;
            v173 = v120;
            while (2)
            {
              v174 = v172[1].u64[1];
              v175 = v174;
              v176 = v172->u64[1];
              v177 = v176;
              if ((v176 * 0.75) >= v174)
              {
                v178 = v172;
                if (!v176)
                {
                  goto LABEL_198;
                }

LABEL_197:
                v179 = *v178 / v177;
              }

              else
              {
                if (v174)
                {
                  v178 = v173[3].i32;
                  v177 = v175;
                  goto LABEL_197;
                }

LABEL_198:
                v179 = 3.4028e38;
              }

              *v172[2].i32 = v179;
              v173 += 7;
              v180 = v172 + 5;
              v172 += 7;
              if (v180 != v121)
              {
                continue;
              }

              break;
            }

            v154 = *(v119 + 48);
LABEL_201:
            v181 = *(v119 + 40);
            if (v181 < *(&v154 + 1))
            {
              v182 = &v213[v212 * v181];
              v183 = v215 + v214 * v181;
              do
              {
                v184 = *(v119 + 32);
                v185 = v154 - v184;
                if (v154 > v184)
                {
                  v186 = &v182[4 * v184];
                  v187 = (v183 + v184);
                  do
                  {
                    v188 = *v187++;
                    if (v188 && *v186 != 0.0)
                    {
                      *v186 = *v120[7 * fabs(*v186 + 1.0) + 4].i32;
                    }

                    ++v186;
                    --v185;
                  }

                  while (v185);
                  v154 = *(v119 + 48);
                }

                ++v181;
                v182 = v212 + v182;
                v183 += v214;
              }

              while (v181 < *(&v154 + 1));
            }

            v119 += 64;
            if (v119 == v217)
            {
LABEL_212:
              v14 = v207;
              if (v217 != v204 || (v208 - v203) > 0x20)
              {
                v189 = *&v229[8];
                v190 = *&v229[16];
                if (*&v229[8] < *&v229[24])
                {
                  v191 = v228[1].i64[1];
                  v192 = buf[3];
                  v193 = v227[3];
                  v194 = buf[0] + *&v229[8] * buf[3];
                  v195 = v227[0] + *&v229[8] * v227[3];
                  v196 = v228[0].i64[0] + *&v229[8] * v228[1].i64[1];
                  do
                  {
                    v197 = v190 - *v229;
                    if (v190 > *v229)
                    {
                      v198 = (v194 + 4 * *v229);
                      v199 = (v196 + *v229);
                      v200 = &v195[4 * *v229];
                      do
                      {
                        v201 = *v199++;
                        if (v201 && *v200 == 0.0)
                        {
                          *v200 = *v198;
                        }

                        ++v198;
                        ++v200;
                        --v197;
                      }

                      while (v197);
                      v190 = *&v229[16];
                    }

                    ++v189;
                    v194 += v192;
                    v195 = &v193[v195];
                    v196 += v191;
                  }

                  while (v189 < *(&v190 + 1));
                }
              }

              if (v205)
              {
                CVPixelBufferUnlockBaseAddress(v205, 1uLL);
              }

              CVPixelBufferUnlockBaseAddress(v79, v202 & 1);
              CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
              CVPixelBufferUnlockBaseAddress(v209, 0);
              *v229 = &v221;
              std::vector<arkit::BoundingBoxGroup>::__destroy_vector::operator()[abi:ne200100](v229);
              if (__p)
              {
                v225 = __p;
                operator delete(__p);
              }

              goto LABEL_228;
            }

            goto LABEL_121;
          }

          goto LABEL_123;
        }

        goto LABEL_124;
      }
    }

    v135 = *(v125 + v126 * v130 + 4 * v132);
    if (v64)
    {
      v136 = *&v64[4 * v132 + v130 * v65];
      *&v127[4].i32[2] = v135 + *&v127[4].i32[2];
      ++v127[5].i64[0];
      if (v136 <= 0.4)
      {
        v137 = 0;
        goto LABEL_132;
      }
    }

    else
    {
      *&v127[4].i32[2] = v135 + *&v127[4].i32[2];
      ++v127[5].i64[0];
    }

    *&v127[5].i32[2] = v135 + *&v127[5].i32[2];
    ++v127[6].i64[0];
    v137 = 1;
LABEL_132:
    if (*&v134[4 * v132] != -3.4028e38)
    {
      if (&v127[7] == v121)
      {
LABEL_137:
        *v127[2].i32 = v135 + *v127[2].i32;
        ++v127[2].i64[1];
        v141 = -1.0 - v122;
        if (v137)
        {
          *v127[3].i32 = v135 + *v127[3].i32;
          ++v127[3].i64[1];
          v141 = -1.0 - v122;
        }
      }

      else
      {
        v138.i64[0] = v132;
        v138.i64[1] = v130;
        v139 = v127 + 7;
        while (1)
        {
          v140 = vandq_s8(vcgtq_u64(v139[1], v138), vcgeq_u64(v138, *v139));
          if ((vandq_s8(vdupq_laneq_s64(v140, 1), v140).u64[0] & 0x8000000000000000) != 0)
          {
            break;
          }

          v139 += 7;
          if (v139 == v121)
          {
            goto LABEL_137;
          }
        }

        v141 = -3.4028e38;
      }

      *&v134[4 * v132] = v141;
    }

    goto LABEL_141;
  }

  v66 = v228[0].i64[1];
  if (v228[0].i64[1])
  {
    v67 = 0;
    v68 = v228[1];
    v69 = buf[0];
    v70 = buf[3];
    v71 = v227[0];
    v72 = v227[3];
    v73 = v228[0].i64[0];
    do
    {
      if (v68.i64[0])
      {
        v74 = v73;
        v75 = v69;
        v76 = v71;
        v77 = v68.i64[0];
        do
        {
          if (*v74++)
          {
            *v76 = *v75;
          }

          v76 += 4;
          ++v75;
          --v77;
        }

        while (v77);
      }

      ++v67;
      v71 = &v72[v71];
      v69 = (v69 + v70);
      v73 += v68.i64[1];
    }

    while (v67 != v66);
  }

  CVPixelBufferUnlockBaseAddress(v218, (v50 & 1) == 0);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(v209, 0);
LABEL_228:
  v42 = 0;
LABEL_45:

  return v42;
}

- (int)_minFilterDepthMap:(__CVBuffer *)a3 kernelSize:(unint64_t)a4 pResultBuffer:(__CVBuffer *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  v11 = ARCreateCVPixelBufferFromPool(&self->_depthPixelBufferPool, 1717855600, self, @"Result Depth Map", Width, Height);
  if (!v11)
  {
    return -6662;
  }

  v12 = v11;
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  CVPixelBufferLockBaseAddress(v12, 0);
  memset(&src, 0, sizeof(src));
  ARWrapCVPixelBufferVImage(a3, &src.data);
  memset(&v22, 0, sizeof(v22));
  ARWrapCVPixelBufferVImage(v12, &v22.data);
  kdebug_trace();
  v13 = vImageMin_PlanarF(&src, &v22, 0, 0, 0, a4, a4, 0x80u);
  if (v13 == self->_minFilterIntermediateBufferSize)
  {
    minFilterIntermediatePooledBuffer = self->_minFilterIntermediatePooledBuffer;
  }

  else
  {
    v16 = _ARLogTechnique();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      minFilterIntermediateBufferSize = self->_minFilterIntermediateBufferSize;
      *buf = 138544130;
      v25 = v18;
      v26 = 2048;
      v27 = self;
      v28 = 2048;
      v29 = minFilterIntermediateBufferSize;
      v30 = 2048;
      v31 = v13;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Changing minFilter buffer from size (%ti) to size (%ti)", buf, 0x2Au);
    }

    v20 = self->_minFilterIntermediatePooledBuffer;
    if (v20)
    {
      free(v20);
    }

    self->_minFilterIntermediateBufferSize = v13;
    minFilterIntermediatePooledBuffer = malloc_type_malloc(v13, 0x100004077774924uLL);
    self->_minFilterIntermediatePooledBuffer = minFilterIntermediatePooledBuffer;
  }

  v21 = vImageMin_PlanarF(&src, &v22, minFilterIntermediatePooledBuffer, 0, 0, a4, a4, 0x10u);
  kdebug_trace();
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  CVPixelBufferUnlockBaseAddress(v12, 0);
  if (v21)
  {
    CVPixelBufferRelease(v12);
    return -6660;
  }

  else
  {
    result = 0;
    *a5 = v12;
  }

  return result;
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v11.receiver = self;
  v11.super_class = ARPersonOcclusionTechnique;
  v4 = [(ARTechnique *)&v11 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  v6 = CVPixelBufferPoolGetPixelBufferAttributes(self->_depthPixelBufferPool);
  v7 = [v6 description];
  v8 = [v7 description];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  [v5 appendFormat:@"\tDepthPixelBufferPool attr: %@\n", v9];

  return v5;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  return self;
}

@end