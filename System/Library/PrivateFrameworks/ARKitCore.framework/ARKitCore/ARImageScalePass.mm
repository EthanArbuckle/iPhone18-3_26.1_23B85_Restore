@interface ARImageScalePass
- (ARImageScalePass)initWithDescription:(id)description;
- (CGSize)scaledSize;
- (__CVBuffer)scalePixelBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
- (void)setConversionPixelFormatType:(unsigned int)type;
@end

@implementation ARImageScalePass

- (ARImageScalePass)initWithDescription:(id)description
{
  v30 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v25.receiver = self;
  v25.super_class = ARImageScalePass;
  v5 = [(ARImageScalePass *)&v25 init];
  if (v5)
  {
    [descriptionCopy size];
    v5->_scaledSize.width = v6;
    v5->_scaledSize.height = v7;
    v5->_conversionPixelFormatType = [descriptionCopy pixelBufferFormat];
    if (VTPixelTransferSessionCreate(0, &v5->_vtPixelTransferSession))
    {
      vtPixelTransferSession = v5->_vtPixelTransferSession;
      if (vtPixelTransferSession)
      {
        CFRelease(vtPixelTransferSession);
      }

      if (ARShouldUseLogTypeError_onceToken_10 != -1)
      {
        [ARImageScalePass initWithDescription:];
      }

      v9 = ARShouldUseLogTypeError_internalOSVersion_10;
      v10 = _ARLogTechnique_5();
      v11 = v10;
      if (v9 == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          *buf = 138543618;
          v27 = v13;
          v28 = 2048;
          v29 = v5;
          v14 = "%{public}@ <%p>: Unable to create pixel transfer session for image downscaling";
LABEL_10:
          v15 = v11;
          v16 = OS_LOG_TYPE_ERROR;
LABEL_24:
          _os_log_impl(&dword_1C241C000, v15, v16, v14, buf, 0x16u);

          goto LABEL_25;
        }

        goto LABEL_25;
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      v22 = objc_opt_class();
      v13 = NSStringFromClass(v22);
      *buf = 138543618;
      v27 = v13;
      v28 = 2048;
      v29 = v5;
      v14 = "Error: %{public}@ <%p>: Unable to create pixel transfer session for image downscaling";
      goto LABEL_23;
    }

    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.scaling.useOptimalMSRCoeficients"]&& VTSessionSetProperty(v5->_vtPixelTransferSession, *MEMORY[0x1E6983E50], *MEMORY[0x1E695E4D0]))
    {
      v17 = v5->_vtPixelTransferSession;
      if (v17)
      {
        CFRelease(v17);
      }

      if (ARShouldUseLogTypeError_onceToken_10 != -1)
      {
        [ARImageScalePass initWithDescription:];
      }

      v18 = ARShouldUseLogTypeError_internalOSVersion_10;
      v19 = _ARLogTechnique_5();
      v11 = v19;
      if (v18 == 1)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          v13 = NSStringFromClass(v20);
          *buf = 138543618;
          v27 = v13;
          v28 = 2048;
          v29 = v5;
          v14 = "%{public}@ <%p>: Unable to set pixel transfer session properties";
          goto LABEL_10;
        }

LABEL_25:

        v21 = 0;
        goto LABEL_26;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      v24 = objc_opt_class();
      v13 = NSStringFromClass(v24);
      *buf = 138543618;
      v27 = v13;
      v28 = 2048;
      v29 = v5;
      v14 = "Error: %{public}@ <%p>: Unable to set pixel transfer session properties";
LABEL_23:
      v15 = v11;
      v16 = OS_LOG_TYPE_INFO;
      goto LABEL_24;
    }
  }

  v21 = v5;
LABEL_26:

  return v21;
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

  scaledPixelBufferPool = self->_scaledPixelBufferPool;
  if (scaledPixelBufferPool)
  {
    CVPixelBufferPoolRelease(scaledPixelBufferPool);
    self->_scaledPixelBufferPool = 0;
  }

  v6.receiver = self;
  v6.super_class = ARImageScalePass;
  [(ARImageScalePass *)&v6 dealloc];
}

- (void)setConversionPixelFormatType:(unsigned int)type
{
  if ([(ARImageScalePass *)self conversionPixelFormatType]!= type)
  {
    self->_conversionPixelFormatType = type;
    CVPixelBufferPoolRelease(self->_scaledPixelBufferPool);
    self->_scaledPixelBufferPool = 0;
  }
}

- (__CVBuffer)scalePixelBuffer:(__CVBuffer *)buffer
{
  v26 = *MEMORY[0x1E69E9840];
  conversionPixelFormatType = self->_conversionPixelFormatType;
  if (!conversionPixelFormatType)
  {
    conversionPixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  }

  [(ARImageScalePass *)self scaledSize];
  v8 = ARCreateCVPixelBufferFromPool(&self->_scaledPixelBufferPool, conversionPixelFormatType, self, @"scaling pass pool", v6, v7);
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  CVPixelBufferLockBaseAddress(v8, 0);
  v9 = VTPixelTransferSessionTransferImage(self->_vtPixelTransferSession, buffer, v8);
  CVPixelBufferUnlockBaseAddress(v8, 0);
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  if (v9)
  {
    CVPixelBufferRelease(v8);
    if (ARShouldUseLogTypeError_onceToken_10 != -1)
    {
      [ARImageScalePass scalePixelBuffer:];
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_10;
    v11 = _ARLogTechnique_5();
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v20 = 138543874;
        v21 = v14;
        v22 = 2048;
        selfCopy2 = self;
        v24 = 1024;
        v25 = v9;
        v15 = "%{public}@ <%p>: Unable to scale image with error %d";
        v16 = v12;
        v17 = OS_LOG_TYPE_ERROR;
LABEL_11:
        _os_log_impl(&dword_1C241C000, v16, v17, v15, &v20, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v14 = NSStringFromClass(v18);
      v20 = 138543874;
      v21 = v14;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 1024;
      v25 = v9;
      v15 = "Error: %{public}@ <%p>: Unable to scale image with error %d";
      v16 = v12;
      v17 = OS_LOG_TYPE_INFO;
      goto LABEL_11;
    }

    return 0;
  }

  return v8;
}

- (CGSize)scaledSize
{
  width = self->_scaledSize.width;
  height = self->_scaledSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end