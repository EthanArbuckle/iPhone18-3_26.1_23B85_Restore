@interface ARImageRotationTechnique
- (ARImageRotationTechnique)initWithRotation:(int64_t)a3 mirror:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)_fullDescription;
- (id)processData:(id)a3;
- (int)_rotateAccelerate:(__CVBuffer *)a3 pOutputBuffer:(__CVBuffer *)a4;
- (void)dealloc;
@end

@implementation ARImageRotationTechnique

- (ARImageRotationTechnique)initWithRotation:(int64_t)a3 mirror:(int64_t)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = ARImageRotationTechnique;
  v6 = [(ARTechnique *)&v33 init];
  p_isa = &v6->super.super.isa;
  if (!v6)
  {
    goto LABEL_23;
  }

  v6->_vtPixelRotationSession = 0;
  v6->_rotationAngle = a3;
  v6->_mirrorMode = a4;
  v8 = VTPixelRotationSessionCreate(0, &v6->_vtPixelRotationSession);
  if (v8)
  {
    v9 = v8;
    if (ARShouldUseLogTypeError_onceToken_9 != -1)
    {
      [ARImageRotationTechnique initWithRotation:mirror:];
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_9;
    v11 = _ARLogTechnique_4();
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543874;
        v35 = v14;
        v36 = 2048;
        v37 = p_isa;
        v38 = 1024;
        v39 = v9;
        v15 = "%{public}@ <%p>: Creation of VTPixelRotationSession failed with error %d";
        v16 = v12;
        v17 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&dword_1C241C000, v16, v17, v15, buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v14 = NSStringFromClass(v19);
      *buf = 138543874;
      v35 = v14;
      v36 = 2048;
      v37 = p_isa;
      v38 = 1024;
      v39 = v9;
      v15 = "Error: %{public}@ <%p>: Creation of VTPixelRotationSession failed with error %d";
      v16 = v12;
      v17 = OS_LOG_TYPE_INFO;
      goto LABEL_13;
    }

LABEL_28:

    v30 = 0;
    goto LABEL_29;
  }

  v12 = [MEMORY[0x1E695DF90] dictionary];
  [v12 setObject:kVTRotationFromARRotationAngle(a3) forKeyedSubscript:*MEMORY[0x1E6983D98]];
  if (a4 == 1)
  {
    v18 = MEMORY[0x1E6983D78];
    goto LABEL_15;
  }

  if (a4 == 2)
  {
    v18 = MEMORY[0x1E6983D80];
LABEL_15:
    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v18];
  }

  v20 = VTSessionSetProperties(p_isa[7], v12);
  if (v20)
  {
    v21 = v20;
    if (ARShouldUseLogTypeError_onceToken_9 != -1)
    {
      [ARImageRotationTechnique initWithRotation:mirror:];
    }

    v22 = ARShouldUseLogTypeError_internalOSVersion_9;
    v23 = _ARLogTechnique_4();
    v24 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138543874;
        v35 = v26;
        v36 = 2048;
        v37 = p_isa;
        v38 = 1024;
        v39 = v21;
        v27 = "%{public}@ <%p>: Configuration of VTPixelRotationSession failed with error %d";
        v28 = v24;
        v29 = OS_LOG_TYPE_ERROR;
LABEL_26:
        _os_log_impl(&dword_1C241C000, v28, v29, v27, buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v26 = NSStringFromClass(v31);
      *buf = 138543874;
      v35 = v26;
      v36 = 2048;
      v37 = p_isa;
      v38 = 1024;
      v39 = v21;
      v27 = "Error: %{public}@ <%p>: Configuration of VTPixelRotationSession failed with error %d";
      v28 = v24;
      v29 = OS_LOG_TYPE_INFO;
      goto LABEL_26;
    }

    goto LABEL_28;
  }

LABEL_23:
  v30 = p_isa;
LABEL_29:

  return v30;
}

- (void)dealloc
{
  vtPixelRotationSession = self->_vtPixelRotationSession;
  if (vtPixelRotationSession)
  {
    VTPixelRotationSessionInvalidate(vtPixelRotationSession);
    CFRelease(self->_vtPixelRotationSession);
    self->_vtPixelRotationSession = 0;
  }

  bufferPool = self->_bufferPool;
  if (bufferPool)
  {
    CVPixelBufferPoolRelease(bufferPool);
    self->_bufferPool = 0;
  }

  v5.receiver = self;
  v5.super_class = ARImageRotationTechnique;
  [(ARImageRotationTechnique *)&v5 dealloc];
}

- (int)_rotateAccelerate:(__CVBuffer *)a3 pOutputBuffer:(__CVBuffer *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a3 || !a4)
  {
    if (ARShouldUseLogTypeError_onceToken_9 != -1)
    {
      [ARImageRotationTechnique _rotateAccelerate:pOutputBuffer:];
    }

    v11 = ARShouldUseLogTypeError_internalOSVersion_9;
    v12 = _ARLogTechnique_4();
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v15;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = self;
        v16 = "%{public}@ <%p>: Arguments can't be nil";
LABEL_36:
        v25 = v13;
        v26 = OS_LOG_TYPE_ERROR;
LABEL_40:
        _os_log_impl(&dword_1C241C000, v25, v26, v16, &buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v15 = NSStringFromClass(v17);
      LODWORD(buf.data) = 138543618;
      *(&buf.data + 4) = v15;
      WORD2(buf.height) = 2048;
      *(&buf.height + 6) = self;
      v16 = "Error: %{public}@ <%p>: Arguments can't be nil";
      goto LABEL_39;
    }

LABEL_41:

    return -1;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v8 = PixelFormatType;
  v9 = 1;
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType == 32)
      {
        goto LABEL_25;
      }

      v10 = 1094862674;
      goto LABEL_17;
    }

    if (PixelFormatType == 1111970369)
    {
      goto LABEL_25;
    }

    v18 = 1278226488;
    goto LABEL_23;
  }

  if (PixelFormatType > 1380410944)
  {
    if (PixelFormatType != 1380410945)
    {
      v18 = 1717855600;
LABEL_23:
      if (PixelFormatType != v18)
      {
LABEL_54:
        if (ARShouldUseLogTypeError_onceToken_9 != -1)
        {
          [ARImageRotationTechnique _rotateAccelerate:pOutputBuffer:];
        }

        v31 = ARShouldUseLogTypeError_internalOSVersion_9;
        v32 = _ARLogTechnique_4();
        v13 = v32;
        if (v31 == 1)
        {
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          v33 = objc_opt_class();
          v15 = NSStringFromClass(v33);
          LODWORD(buf.data) = 138543618;
          *(&buf.data + 4) = v15;
          WORD2(buf.height) = 2048;
          *(&buf.height + 6) = self;
          v16 = "%{public}@ <%p>: Accelerate currently only supports kCVPixelFormatType_32BGRA, kCVPixelFormatType_32ARGB formats or kCVPixelFormatType_128RGBAFloat, kCVPixelFormatType_DepthFloat32, kCVPixelFormatType_OneComponent32Float and kCVPixelFormatType_OneComponent8";
          goto LABEL_36;
        }

        if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          goto LABEL_41;
        }

        v34 = objc_opt_class();
        v15 = NSStringFromClass(v34);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v15;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = self;
        v16 = "Error: %{public}@ <%p>: Accelerate currently only supports kCVPixelFormatType_32BGRA, kCVPixelFormatType_32ARGB formats or kCVPixelFormatType_128RGBAFloat, kCVPixelFormatType_DepthFloat32, kCVPixelFormatType_OneComponent32Float and kCVPixelFormatType_OneComponent8";
LABEL_39:
        v25 = v13;
        v26 = OS_LOG_TYPE_INFO;
        goto LABEL_40;
      }
    }

LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  if (PixelFormatType == 1278226534)
  {
    goto LABEL_24;
  }

  v10 = 1380401729;
LABEL_17:
  if (PixelFormatType != v10)
  {
    goto LABEL_54;
  }

LABEL_25:
  v19 = CVPixelBufferGetPixelFormatType(a3);
  if (v19 != CVPixelBufferGetPixelFormatType(*a4))
  {
    if (ARShouldUseLogTypeError_onceToken_9 != -1)
    {
      [ARImageRotationTechnique _rotateAccelerate:pOutputBuffer:];
    }

    v22 = ARShouldUseLogTypeError_internalOSVersion_9;
    v23 = _ARLogTechnique_4();
    v13 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v15 = NSStringFromClass(v24);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v15;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = self;
        v16 = "%{public}@ <%p>: Input and output pixel buffer format need to match.";
        goto LABEL_36;
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v15 = NSStringFromClass(v27);
      LODWORD(buf.data) = 138543618;
      *(&buf.data + 4) = v15;
      WORD2(buf.height) = 2048;
      *(&buf.height + 6) = self;
      v16 = "Error: %{public}@ <%p>: Input and output pixel buffer format need to match.";
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  CVPixelBufferLockBaseAddress(a3, 0);
  CVPixelBufferLockBaseAddress(*a4, 0);
  memset(&buf, 0, sizeof(buf));
  ARWrapCVPixelBufferVImage(a3, &buf.data);
  memset(&v35, 0, sizeof(v35));
  ARWrapCVPixelBufferVImage(*a4, &v35.data);
  v20 = [(ARImageRotationTechnique *)self rotationAngle];
  if (v20 == 180)
  {
    v21 = 2;
    if (!v9)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (v20 != 90)
  {
    if (v20 == -90)
    {
      v21 = 1;
      if (!v9)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v21 = 0;
      if (!v9)
      {
        goto LABEL_47;
      }
    }

LABEL_45:
    v29 = vImageRotate90_ARGB8888(&buf, &v35, v21, _rotateAccelerate_pOutputBuffer___bgColor, 0x10u);
LABEL_63:
    v30 = v29;
    goto LABEL_64;
  }

  v21 = 3;
  if (v9)
  {
    goto LABEL_45;
  }

LABEL_47:
  v30 = -21778;
  if (v8 > 1380410944)
  {
    if (v8 != 1717855600)
    {
      if (v8 != 1380410945)
      {
        goto LABEL_64;
      }

      v29 = vImageRotate90_ARGBFFFF(&buf, &v35, v21, _rotateAccelerate_pOutputBuffer___bgColor_3, 0x10u);
      goto LABEL_63;
    }

LABEL_59:
    v29 = vImageRotate90_PlanarF(&buf, &v35, v21, 0.0, 0x10u);
    goto LABEL_63;
  }

  if (v8 == 1278226488)
  {
    v29 = vImageRotate90_Planar8(&buf, &v35, v21, 0, 0x10u);
    goto LABEL_63;
  }

  if (v8 == 1278226534)
  {
    goto LABEL_59;
  }

LABEL_64:
  CVPixelBufferUnlockBaseAddress(*a4, 0);
  CVPixelBufferUnlockBaseAddress(a3, 0);
  if (v30)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (id)processData:(id)a3
{
  v100 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*&self->_rotationAngle == 0)
  {
    v22 = v4;
    goto LABEL_80;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v5;
  v22 = v7;
  if (isKindOfClass)
  {
    Width = CVPixelBufferGetWidth([v7 pixelBuffer]);
    Height = CVPixelBufferGetHeight([v22 pixelBuffer]);
    rotationAngle = self->_rotationAngle;
    v11 = Width;
    if (rotationAngle)
    {
      v11 = Width;
      if (rotationAngle != 180)
      {
        v11 = Height;
      }
    }

    if (rotationAngle == 180)
    {
      v12 = Height;
    }

    else
    {
      v12 = Width;
    }

    if (rotationAngle)
    {
      v13 = v12;
    }

    else
    {
      v13 = Height;
    }

    bufferPool = self->_bufferPool;
    if (bufferPool)
    {
      v15 = self;
      v85 = v22;
      v83 = v5;
      v16 = CVPixelBufferPoolGetPixelBufferAttributes(bufferPool);
      v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6966208]];
      v18 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69660B8]];
      if ([v17 integerValue] == v11 && objc_msgSend(v18, "integerValue") == v13)
      {
        v19 = v13;
        v20 = 0;
      }

      else
      {
        v19 = v13;
        v20 = 1;
      }

      self = v15;
      v21 = v15->_bufferPool;
      if ((v20 & 1) == 0 && v21)
      {
        v13 = v19;
        v5 = v83;
        v22 = v85;
        goto LABEL_30;
      }

      v13 = v19;
      v5 = v83;
      v22 = v85;
      if (v21)
      {
        CVPixelBufferPoolRelease(v15->_bufferPool);
        v15->_bufferPool = 0;
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType([v22 pixelBuffer]);
    New = ar_pixelBufferPoolCreateNew(v11, v13, PixelFormatType, &self->_bufferPool);
    if (New)
    {
      v25 = New;
      if (ARShouldUseLogTypeError_onceToken_9 != -1)
      {
        [ARImageRotationTechnique _rotateAccelerate:pOutputBuffer:];
      }

      v26 = ARShouldUseLogTypeError_internalOSVersion_9;
      v27 = _ARLogTechnique_4();
      v28 = v27;
      if (v26 == 1)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543874;
          v89 = v30;
          v90 = 2048;
          v91 = self;
          v92 = 1024;
          v93 = v25;
          v31 = "%{public}@ <%p>: Creation of CVPixelBufferPool failed with error %d";
LABEL_36:
          v37 = v28;
          v38 = OS_LOG_TYPE_ERROR;
LABEL_45:
          _os_log_impl(&dword_1C241C000, v37, v38, v31, buf, 0x1Cu);
        }

LABEL_46:

        v44 = [(ARTechnique *)self delegate];
        v45 = ARErrorWithCodeAndUserInfo(151, 0);
        [v44 technique:self didFailWithError:v45];

        v46 = v22;
LABEL_79:

        v22 = v46;
        goto LABEL_80;
      }

      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        goto LABEL_46;
      }

      v39 = objc_opt_class();
      v30 = NSStringFromClass(v39);
      *buf = 138543874;
      v89 = v30;
      v90 = 2048;
      v91 = self;
      v92 = 1024;
      v93 = v25;
      v31 = "Error: %{public}@ <%p>: Creation of CVPixelBufferPool failed with error %d";
LABEL_44:
      v37 = v28;
      v38 = OS_LOG_TYPE_INFO;
      goto LABEL_45;
    }

    v21 = self->_bufferPool;
LABEL_30:
    pixelBufferOut = 0;
    v32 = CVPixelBufferPoolCreatePixelBuffer(0, v21, &pixelBufferOut);
    if (v32)
    {
      v33 = v32;
      if (ARShouldUseLogTypeError_onceToken_9 != -1)
      {
        [ARImageRotationTechnique initWithRotation:mirror:];
      }

      v34 = ARShouldUseLogTypeError_internalOSVersion_9;
      v35 = _ARLogTechnique_4();
      v28 = v35;
      if (v34 == 1)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v30 = NSStringFromClass(v36);
          *buf = 138543874;
          v89 = v30;
          v90 = 2048;
          v91 = self;
          v92 = 1024;
          v93 = v33;
          v31 = "%{public}@ <%p>: Could not create pixel buffer for rotation. (%i)";
          goto LABEL_36;
        }

        goto LABEL_46;
      }

      if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        goto LABEL_46;
      }

      v43 = objc_opt_class();
      v30 = NSStringFromClass(v43);
      *buf = 138543874;
      v89 = v30;
      v90 = 2048;
      v91 = self;
      v92 = 1024;
      v93 = v33;
      v31 = "Error: %{public}@ <%p>: Could not create pixel buffer for rotation. (%i)";
      goto LABEL_44;
    }

    v40 = CVPixelBufferGetPixelFormatType([v22 pixelBuffer]);
    v41 = v40;
    if (v40 > 1111970368)
    {
      if (v40 == 1111970369)
      {
        goto LABEL_50;
      }

      v42 = 1380401729;
    }

    else
    {
      if (v40 == 32)
      {
        goto LABEL_50;
      }

      v42 = 1094862674;
    }

    if (v40 != v42)
    {
      v50 = v22;
      if (v41 > 1380410944)
      {
        if (v41 == 1380410945)
        {
          goto LABEL_51;
        }

        v77 = 1717855600;
      }

      else
      {
        if (v41 == 1278226488)
        {
          goto LABEL_51;
        }

        v77 = 1278226534;
      }

      if (v41 != v77)
      {
        v48 = self;
        vtPixelRotationSession = self->_vtPixelRotationSession;
        goto LABEL_53;
      }

LABEL_51:
      if (!-[ARImageRotationTechnique _rotateAccelerate:pOutputBuffer:](self, "_rotateAccelerate:pOutputBuffer:", [v22 pixelBuffer], &pixelBufferOut))
      {
        goto LABEL_59;
      }

      v48 = self;
      vtPixelRotationSession = self->_vtPixelRotationSession;
      v50 = v22;
LABEL_53:
      v51 = [v50 pixelBuffer];
      v52 = VTPixelRotationSessionRotateImage(vtPixelRotationSession, v51, pixelBufferOut);
      self = v48;
      if (v52)
      {
        v53 = v13;
        if (ARShouldUseLogTypeError_onceToken_9 != -1)
        {
          [ARImageRotationTechnique initWithRotation:mirror:];
        }

        v54 = ARShouldUseLogTypeError_internalOSVersion_9;
        v55 = _ARLogTechnique_4();
        v56 = v55;
        if (v54 == 1)
        {
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v57 = v53;
            v58 = objc_opt_class();
            v59 = NSStringFromClass(v58);
            v60 = AROSTypeToString(v41);
            *buf = 138544642;
            v89 = v59;
            v90 = 2048;
            v91 = v48;
            v92 = 1024;
            v93 = v11;
            v94 = 1024;
            v95 = v57;
            v96 = 2112;
            v97 = v60;
            v98 = 1024;
            v99 = v52;
            v61 = "%{public}@ <%p>: Could not transform image with size %ix%i and format %@. (%i)";
            v62 = v56;
            v63 = OS_LOG_TYPE_ERROR;
LABEL_71:
            _os_log_impl(&dword_1C241C000, v62, v63, v61, buf, 0x32u);
          }
        }

        else if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v78 = v53;
          v79 = objc_opt_class();
          v59 = NSStringFromClass(v79);
          v60 = AROSTypeToString(v41);
          *buf = 138544642;
          v89 = v59;
          v90 = 2048;
          v91 = v48;
          v92 = 1024;
          v93 = v11;
          v94 = 1024;
          v95 = v78;
          v96 = 2112;
          v97 = v60;
          v98 = 1024;
          v99 = v52;
          v61 = "Error: %{public}@ <%p>: Could not transform image with size %ix%i and format %@. (%i)";
          v62 = v56;
          v63 = OS_LOG_TYPE_INFO;
          goto LABEL_71;
        }

        v65 = [(ARTechnique *)v48 delegate];
        v68 = ARErrorWithCodeAndUserInfo(151, 0);
        [v65 technique:v48 didFailWithError:v68];
LABEL_77:
        v46 = v22;
        goto LABEL_78;
      }

LABEL_59:
      v64 = [[ARModifiedImageData alloc] initWithImageData:v22];
      v65 = v64;
      if (v64)
      {
        [(ARImageData *)v64 setPixelBuffer:pixelBufferOut];
        [v22 cameraIntrinsics];
        v84 = v67;
        v86 = v66;
        [v22 imageResolution];
        ARAdjustIntrincisForOrientation(self->_rotationAngle, v86, v84);
        [v65 imageResolution];
        ARAdjustIntrincisForMirroring();
        [v65 setCameraIntrinsics:?];
        [v65 setMirrored:self->_mirrorMode != 0];
        v65 = v65;
        v68 = v22;
        v46 = v65;
LABEL_78:

        CVPixelBufferRelease(pixelBufferOut);
        goto LABEL_79;
      }

      if (ARShouldUseLogTypeError_onceToken_9 != -1)
      {
        [ARImageRotationTechnique initWithRotation:mirror:];
      }

      v69 = ARShouldUseLogTypeError_internalOSVersion_9;
      v70 = _ARLogTechnique_4();
      v71 = v70;
      if (v69 == 1)
      {
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v72 = objc_opt_class();
          v73 = NSStringFromClass(v72);
          *buf = 138543618;
          v89 = v73;
          v90 = 2048;
          v91 = self;
          v74 = "%{public}@ <%p>: Could not allocated image.";
          v75 = v71;
          v76 = OS_LOG_TYPE_ERROR;
LABEL_75:
          _os_log_impl(&dword_1C241C000, v75, v76, v74, buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        v80 = objc_opt_class();
        v73 = NSStringFromClass(v80);
        *buf = 138543618;
        v89 = v73;
        v90 = 2048;
        v91 = self;
        v74 = "Error: %{public}@ <%p>: Could not allocated image.";
        v75 = v71;
        v76 = OS_LOG_TYPE_INFO;
        goto LABEL_75;
      }

      v68 = [(ARTechnique *)self delegate];
      v81 = ARErrorWithCodeAndUserInfo(151, 0);
      [v68 technique:self didFailWithError:v81];

      goto LABEL_77;
    }

LABEL_50:
    v47 = v22;
    goto LABEL_51;
  }

LABEL_80:

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4[10] == self->_mirrorMode && v4[9] == self->_rotationAngle;

  return v5;
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = ARImageRotationTechnique;
  v4 = [(ARTechnique *)&v8 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  [v5 appendFormat:@"Rotation (%li)\n", self->_rotationAngle];
  [v5 appendFormat:@"Mirror (%ld)\n", self->_mirrorMode];
  v6 = CVPixelBufferPoolGetPixelBufferAttributes(self->_bufferPool);
  [v5 appendFormat:@"OutputPixelBufferPool attr: %@\n", v6];

  return v5;
}

@end