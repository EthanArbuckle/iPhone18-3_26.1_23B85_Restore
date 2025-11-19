@interface ARImageCroppingTechnique
- (ARImageCroppingTechnique)initWithCroppedImageSize:(CGSize)a3 centerCropToTargetResolution:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (CGSize)croppedImageSize;
- (id)processData:(id)a3;
- (void)dealloc;
@end

@implementation ARImageCroppingTechnique

- (ARImageCroppingTechnique)initWithCroppedImageSize:(CGSize)a3 centerCropToTargetResolution:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v38 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = ARImageCroppingTechnique;
  v7 = [(ARTechnique *)&v29 init];
  v8 = v7;
  if (v7)
  {
    v9 = (v7 + 112);
    *(v7 + 14) = width;
    *(v7 + 15) = height;
    v7[104] = a4;
    v10 = VTPixelTransferSessionCreate(0, v7 + 7);
    if (v10)
    {
      v11 = v10;
      v12 = v8[7];
      if (v12)
      {
        CFRelease(v12);
      }

      v8[7] = 0;
      if (ARShouldUseLogTypeError_onceToken_8 != -1)
      {
        [ARImageCroppingTechnique initWithCroppedImageSize:centerCropToTargetResolution:];
      }

      v13 = ARShouldUseLogTypeError_internalOSVersion_8;
      v14 = _ARLogTechnique_3();
      v15 = v14;
      if (v13 == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          *buf = 138543874;
          v31 = v17;
          v32 = 2048;
          v33 = v8;
          v34 = 1024;
          LODWORD(v35) = v11;
          v18 = "%{public}@ <%p>: Unable to create pixel transfer session for image cropping: %i";
          v19 = v15;
          v20 = OS_LOG_TYPE_ERROR;
LABEL_16:
          _os_log_impl(&dword_1C241C000, v19, v20, v18, buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v27 = objc_opt_class();
        v17 = NSStringFromClass(v27);
        *buf = 138543874;
        v31 = v17;
        v32 = 2048;
        v33 = v8;
        v34 = 1024;
        LODWORD(v35) = v11;
        v18 = "Error: %{public}@ <%p>: Unable to create pixel transfer session for image cropping: %i";
        v19 = v15;
        v20 = OS_LOG_TYPE_INFO;
        goto LABEL_16;
      }

      v26 = 0;
      goto LABEL_18;
    }

    v21 = _ARLogTechnique_3();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = *v9;
      v25 = v8[15];
      *buf = 138544130;
      v31 = v23;
      v32 = 2048;
      v33 = v8;
      v34 = 2048;
      v35 = v24;
      v36 = 2048;
      v37 = v25;
      _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Initialized with crop image size: %f, %f)", buf, 0x2Au);
    }
  }

  v26 = v8;
LABEL_18:

  return v26;
}

- (void)dealloc
{
  vtPixelTransferSession = self->_vtPixelTransferSession;
  if (vtPixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(vtPixelTransferSession);
    v4 = self->_vtPixelTransferSession;
    if (v4)
    {
      CFRelease(v4);
    }

    self->_vtPixelTransferSession = 0;
  }

  croppedPixelBufferPool = self->_croppedPixelBufferPool;
  if (croppedPixelBufferPool)
  {
    CVPixelBufferPoolRelease(croppedPixelBufferPool);
    self->_croppedPixelBufferPool = 0;
  }

  v6.receiver = self;
  v6.super_class = ARImageCroppingTechnique;
  [(ARImageCroppingTechnique *)&v6 dealloc];
}

- (id)processData:(id)a3
{
  v109 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v4;
  v7 = v6;
  v8 = v6;
  if (isKindOfClass)
  {
    [(ARImageData *)v6 imageResolution];
    v11 = v9;
    v12 = v10;
    width = self->_croppedImageSize.width;
    height = self->_croppedImageSize.height;
    if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
    {
      goto LABEL_50;
    }

    if (width == v9 && height == v10)
    {
      goto LABEL_50;
    }

    pixelBufferOut = 0;
    croppedPixelBufferPool = self->_croppedPixelBufferPool;
    if (!croppedPixelBufferPool)
    {
      p_cropRect = &self->_cropRect;
      if (self->_isCropToTargetResolution)
      {
        v29 = ARGetCroppedRegionCenterCrop(v9, v10, width);
      }

      else
      {
        v57 = width / height;
        if (width / height >= v11 / v10)
        {
          v59 = v10 - v11 / v57;
          v30 = v59 * 0.5;
          v32 = v12 - v59;
          v29 = 0.0;
          v31 = v11;
        }

        else
        {
          v58 = v11 - v10 * v57;
          v29 = v58 * 0.5;
          v31 = v11 - v58;
          v30 = 0.0;
          v32 = v12;
        }
      }

      p_cropRect->origin.x = v29;
      self->_cropRect.origin.y = v30;
      self->_cropRect.size.width = v31;
      self->_cropRect.size.height = v32;
      if (CGRectIsEmpty(*&v29) || ((v60 = self->_cropRect.size.width, v61 = self->_cropRect.size.height, v60 == v11) ? (v62 = v61 == v12) : (v62 = 0), v62))
      {
        if (ARShouldUseLogTypeError_onceToken_8 != -1)
        {
          [ARImageCroppingTechnique processData:];
        }

        v70 = ARShouldUseLogTypeError_internalOSVersion_8;
        v71 = _ARLogTechnique_3();
        v22 = v71;
        if (v70 == 1)
        {
          if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          v72 = objc_opt_class();
          v73 = NSStringFromClass(v72);
          *buf = 138543618;
          v104 = v73;
          v105 = 2048;
          v106 = self;
          v74 = "%{public}@ <%p>: The cropped image size must be less than source image size and not zero";
          v75 = v22;
          v76 = OS_LOG_TYPE_ERROR;
        }

        else
        {
          if (!os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            goto LABEL_49;
          }

          v77 = objc_opt_class();
          v73 = NSStringFromClass(v77);
          *buf = 138543618;
          v104 = v73;
          v105 = 2048;
          v106 = self;
          v74 = "Error: %{public}@ <%p>: The cropped image size must be less than source image size and not zero";
          v75 = v22;
          v76 = OS_LOG_TYPE_INFO;
        }

        _os_log_impl(&dword_1C241C000, v75, v76, v74, buf, 0x16u);

        goto LABEL_49;
      }

      x = p_cropRect->origin.x;
      y = self->_cropRect.origin.y;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(&v60 - 2));
      v66 = VTSessionSetProperty(self->_vtPixelTransferSession, *MEMORY[0x1E6983E40], DictionaryRepresentation);
      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }

      if (v66)
      {
        if (ARShouldUseLogTypeError_onceToken_8 != -1)
        {
          [ARImageCroppingTechnique processData:];
        }

        v67 = ARShouldUseLogTypeError_internalOSVersion_8;
        v68 = _ARLogTechnique_3();
        v22 = v68;
        if (v67 == 1)
        {
          if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          v69 = objc_opt_class();
          v24 = NSStringFromClass(v69);
          *buf = 138543874;
          v104 = v24;
          v105 = 2048;
          v106 = self;
          v107 = 1024;
          v108 = v66;
          v25 = "%{public}@ <%p>: Unable to initialize pixel transfer session for image cropping: %i";
          goto LABEL_17;
        }

        if (!os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          goto LABEL_49;
        }

        v87 = objc_opt_class();
        v24 = NSStringFromClass(v87);
        *buf = 138543874;
        v104 = v24;
        v105 = 2048;
        v106 = self;
        v107 = 1024;
        v108 = v66;
        v25 = "Error: %{public}@ <%p>: Unable to initialize pixel transfer session for image cropping: %i";
        goto LABEL_23;
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType([(ARImageData *)v7 pixelBuffer]);
      v82 = ARRecreatePixelBufferPoolOnConfigurationChanges(&self->_croppedPixelBufferPool, PixelFormatType, self->_cropRect.size.width, self->_cropRect.size.height);
      if (v82)
      {
        v83 = v82;
        if (ARShouldUseLogTypeError_onceToken_8 != -1)
        {
          [ARImageCroppingTechnique processData:];
        }

        v84 = ARShouldUseLogTypeError_internalOSVersion_8;
        v85 = _ARLogTechnique_3();
        v22 = v85;
        if (v84 == 1)
        {
          if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          v86 = objc_opt_class();
          v24 = NSStringFromClass(v86);
          *buf = 138543874;
          v104 = v24;
          v105 = 2048;
          v106 = self;
          v107 = 1024;
          v108 = v83;
          v25 = "%{public}@ <%p>: Unable to create pixel buffer pool for cropping: %i";
          goto LABEL_17;
        }

        if (!os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          goto LABEL_49;
        }

        v88 = objc_opt_class();
        v24 = NSStringFromClass(v88);
        *buf = 138543874;
        v104 = v24;
        v105 = 2048;
        v106 = self;
        v107 = 1024;
        v108 = v83;
        v25 = "Error: %{public}@ <%p>: Unable to create pixel buffer pool for cropping: %i";
        goto LABEL_23;
      }

      croppedPixelBufferPool = self->_croppedPixelBufferPool;
    }

    v18 = CVPixelBufferPoolCreatePixelBuffer(0, croppedPixelBufferPool, &pixelBufferOut);
    if (!v18)
    {
      vtPixelTransferSession = self->_vtPixelTransferSession;
      v34 = [(ARImageData *)v7 pixelBuffer];
      VTPixelTransferSessionTransferImage(vtPixelTransferSession, v34, pixelBufferOut);
      v8 = [[ARModifiedImageData alloc] initWithImageData:v7];
      [(ARImageData *)v8 setPixelBuffer:pixelBufferOut];
      [(ARImageData *)v7 cameraIntrinsics];
      v93 = v36;
      v96 = v35;
      v91 = v37;
      [(ARImageData *)v7 imageResolution];
      v39 = v38;
      v41 = v40;
      [(ARImageData *)v8 imageResolution];
      *&v44 = ARAdjustIntrinsicsForViewportSize(v96, v93, v91, v39, v41, v42, v43);
      [(ARImageData *)v8 setCameraIntrinsics:v44];
      v45 = &self->_cropRect;
      v97 = v45->origin.x;
      [(ARImageData *)v7 imageResolution];
      v92 = v46;
      v47.f64[0] = v97;
      v47.f64[1] = v45->origin.y;
      v98 = v47;
      [(ARImageData *)v7 imageResolution];
      v90 = v48;
      v94 = v45->size.width;
      [(ARImageData *)v7 imageResolution];
      v89 = v49;
      v50.f64[0] = v94;
      v50.f64[1] = v45->size.height;
      v95 = v50;
      [(ARImageData *)v7 imageResolution];
      v51.f64[0] = v92;
      v51.f64[1] = v90;
      v52.f64[0] = v89;
      v52.f64[1] = v53;
      v101 = @"croppedRect";
      v99[0] = vdivq_f64(v98, v51);
      v99[1] = vdivq_f64(v95, v52);
      v54 = [MEMORY[0x1E696B098] valueWithBytes:v99 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v102 = v54;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      [(ARModifiedImageData *)v8 setMetaData:v55];

      CVPixelBufferRelease(pixelBufferOut);
LABEL_51:

      goto LABEL_52;
    }

    v19 = v18;
    if (ARShouldUseLogTypeError_onceToken_8 != -1)
    {
      [ARImageCroppingTechnique initWithCroppedImageSize:centerCropToTargetResolution:];
    }

    v20 = ARShouldUseLogTypeError_internalOSVersion_8;
    v21 = _ARLogTechnique_3();
    v22 = v21;
    if (v20 == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138543874;
        v104 = v24;
        v105 = 2048;
        v106 = self;
        v107 = 1024;
        v108 = v19;
        v25 = "%{public}@ <%p>: Unable to create pixel buffer for cropping: %i";
LABEL_17:
        v26 = v22;
        v27 = OS_LOG_TYPE_ERROR;
LABEL_24:
        _os_log_impl(&dword_1C241C000, v26, v27, v25, buf, 0x1Cu);
      }

LABEL_49:

      v78 = [(ARTechnique *)self delegate];
      v79 = ARErrorWithCodeAndUserInfo(151, 0);
      [v78 technique:self didFailWithError:v79];

LABEL_50:
      v8 = v7;
      goto LABEL_51;
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_49;
    }

    v56 = objc_opt_class();
    v24 = NSStringFromClass(v56);
    *buf = 138543874;
    v104 = v24;
    v105 = 2048;
    v106 = self;
    v107 = 1024;
    v108 = v19;
    v25 = "Error: %{public}@ <%p>: Unable to create pixel buffer for cropping: %i";
LABEL_23:
    v26 = v22;
    v27 = OS_LOG_TYPE_INFO;
    goto LABEL_24;
  }

LABEL_52:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ARImageCroppingTechnique;
  if ([(ARTechnique *)&v16 isEqual:v4])
  {
    v5 = v4;
    [(ARImageCroppingTechnique *)self croppedImageSize];
    v7 = v6;
    v9 = v8;
    [v5 croppedImageSize];
    v11 = v10;
    v13 = v12;

    v14 = v9 == v13 && v7 == v11;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGSize)croppedImageSize
{
  width = self->_croppedImageSize.width;
  height = self->_croppedImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end