@interface PixelBufferConverter
- (PixelBufferConverter)init;
- (__CVBuffer)convertPixelBuffer:(__CVBuffer *)a3 toFormat:(unsigned int)a4;
- (void)dealloc;
@end

@implementation PixelBufferConverter

- (PixelBufferConverter)init
{
  v5.receiver = self;
  v5.super_class = PixelBufferConverter;
  v2 = [(PixelBufferConverter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_pixelBufferPool = 0;
    VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &v2->_pixelTransferSession);
  }

  return v3;
}

- (void)dealloc
{
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CVPixelBufferPoolRelease(pixelBufferPool);
    self->_pixelBufferPool = 0;
  }

  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    self->_pixelTransferSession = 0;
  }

  v5.receiver = self;
  v5.super_class = PixelBufferConverter;
  [(PixelBufferConverter *)&v5 dealloc];
}

- (__CVBuffer)convertPixelBuffer:(__CVBuffer *)a3 toFormat:(unsigned int)a4
{
  v37 = *MEMORY[0x1E69E9840];
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

  if (ARRecreatePixelBufferPoolOnConfigurationChanges(&self->_pixelBufferPool, a4, Width, Height))
  {
    if (ARShouldUseLogTypeError_onceToken_47 != -1)
    {
      [PixelBufferConverter convertPixelBuffer:toFormat:];
    }

    v9 = ARShouldUseLogTypeError_internalOSVersion_47;
    v10 = _ARLogGeneral_42();
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138543618;
        v34 = v13;
        v35 = 2048;
        v36 = self;
        v14 = "%{public}@ <%p>: Could not create pixel buffer pool.";
LABEL_16:
        v18 = v11;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_28:
        _os_log_impl(&dword_1C241C000, v18, v19, v14, buf, 0x16u);

        goto LABEL_29;
      }

      goto LABEL_29;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    v20 = objc_opt_class();
    v13 = NSStringFromClass(v20);
    *buf = 138543618;
    v34 = v13;
    v35 = 2048;
    v36 = self;
    v14 = "Error: %{public}@ <%p>: Could not create pixel buffer pool.";
    goto LABEL_27;
  }

  pixelBufferOut = 0;
  if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], self->_pixelBufferPool, &pixelBufferOut))
  {
    if (ARShouldUseLogTypeError_onceToken_47 != -1)
    {
      [PixelBufferConverter convertPixelBuffer:toFormat:];
    }

    v15 = ARShouldUseLogTypeError_internalOSVersion_47;
    v16 = _ARLogGeneral_42();
    v11 = v16;
    if (v15 == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v13 = NSStringFromClass(v17);
        *buf = 138543618;
        v34 = v13;
        v35 = 2048;
        v36 = self;
        v14 = "%{public}@ <%p>: Could not create pixel buffer from pool.";
        goto LABEL_16;
      }

LABEL_29:

      return 0;
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    v29 = objc_opt_class();
    v13 = NSStringFromClass(v29);
    *buf = 138543618;
    v34 = v13;
    v35 = 2048;
    v36 = self;
    v14 = "Error: %{public}@ <%p>: Could not create pixel buffer from pool.";
LABEL_27:
    v18 = v11;
    v19 = OS_LOG_TYPE_INFO;
    goto LABEL_28;
  }

  if (VTPixelTransferSessionTransferImage(self->_pixelTransferSession, a3, pixelBufferOut))
  {
    if (ARShouldUseLogTypeError_onceToken_47 != -1)
    {
      [PixelBufferConverter convertPixelBuffer:toFormat:];
    }

    v21 = ARShouldUseLogTypeError_internalOSVersion_47;
    v22 = _ARLogGeneral_42();
    v23 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138543618;
        v34 = v25;
        v35 = 2048;
        v36 = self;
        v26 = "%{public}@ <%p>: Could not convert pixel buffer";
        v27 = v23;
        v28 = OS_LOG_TYPE_ERROR;
LABEL_34:
        _os_log_impl(&dword_1C241C000, v27, v28, v26, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v25 = NSStringFromClass(v31);
      *buf = 138543618;
      v34 = v25;
      v35 = 2048;
      v36 = self;
      v26 = "Error: %{public}@ <%p>: Could not convert pixel buffer";
      v27 = v23;
      v28 = OS_LOG_TYPE_INFO;
      goto LABEL_34;
    }

    CVPixelBufferRelease(pixelBufferOut);
    return 0;
  }

  return pixelBufferOut;
}

@end