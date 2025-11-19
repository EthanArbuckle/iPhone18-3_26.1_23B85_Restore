@interface ARMPSImageFilter
- (ARMPSImageFilter)initWithImageKernel:(id)a3 device:(id)a4;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 format:(unint64_t)a4;
- (void)dealloc;
@end

@implementation ARMPSImageFilter

- (ARMPSImageFilter)initWithImageKernel:(id)a3 device:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ARMPSImageFilter;
  v9 = [(ARMPSImageFilter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a4);
    v11 = [(MTLDevice *)v10->_device newCommandQueue];
    commandQueue = v10->_commandQueue;
    v10->_commandQueue = v11;

    objc_storeStrong(&v10->_kernel, a3);
    v10->_pixelBufferPool = 0;
  }

  return v10;
}

- (void)dealloc
{
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CVPixelBufferPoolRelease(pixelBufferPool);
    self->_pixelBufferPool = 0;
  }

  v4.receiver = self;
  v4.super_class = ARMPSImageFilter;
  [(ARMPSImageFilter *)&v4 dealloc];
}

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 format:(unint64_t)a4
{
  v42 = *MEMORY[0x1E69E9840];
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

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  ARRecreatePixelBufferPoolOnConfigurationChanges(&self->_pixelBufferPool, PixelFormatType, Width, Height);
  pixelBufferOut = 0;
  if (!CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], self->_pixelBufferPool, &pixelBufferOut))
  {
    v18 = MEMORY[0x1E69741C0];
    v19 = CVPixelBufferGetWidth(a3);
    v20 = [v18 texture2DDescriptorWithPixelFormat:a4 width:v19 height:CVPixelBufferGetHeight(a3) mipmapped:0];
    v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v20 iosurface:CVPixelBufferGetIOSurface(a3) plane:0];

    v21 = MEMORY[0x1E69741C0];
    v22 = CVPixelBufferGetWidth(pixelBufferOut);
    v23 = [v21 texture2DDescriptorWithPixelFormat:a4 width:v22 height:CVPixelBufferGetHeight(pixelBufferOut) mipmapped:0];
    [v23 setUsage:{objc_msgSend(v23, "usage") | 2}];
    v24 = [(MTLDevice *)self->_device newTextureWithDescriptor:v23 iosurface:CVPixelBufferGetIOSurface(pixelBufferOut) plane:0];

    if (v12 && v24)
    {
      v25 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
      [(MPSUnaryImageKernel *)self->_kernel encodeToCommandBuffer:v25 sourceTexture:v12 destinationTexture:v24];
      [v25 commit];
      [v25 waitUntilCompleted];
      v26 = pixelBufferOut;
LABEL_26:

      goto LABEL_27;
    }

    if (ARShouldUseLogTypeError_onceToken_20 != -1)
    {
      [ARMPSImageFilter processPixelBuffer:format:];
    }

    v28 = ARShouldUseLogTypeError_internalOSVersion_20;
    v29 = _ARLogGeneral_8();
    v25 = v29;
    if (v28 == 1)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138543618;
        v39 = v31;
        v40 = 2048;
        v41 = self;
        v32 = "%{public}@ <%p>: Could not allocate create textures for processing";
        v33 = v25;
        v34 = OS_LOG_TYPE_ERROR;
LABEL_24:
        _os_log_impl(&dword_1C241C000, v33, v34, v32, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v31 = NSStringFromClass(v35);
      *buf = 138543618;
      v39 = v31;
      v40 = 2048;
      v41 = self;
      v32 = "Error: %{public}@ <%p>: Could not allocate create textures for processing";
      v33 = v25;
      v34 = OS_LOG_TYPE_INFO;
      goto LABEL_24;
    }

    v26 = 0;
    goto LABEL_26;
  }

  if (ARShouldUseLogTypeError_onceToken_20 != -1)
  {
    [ARMPSImageFilter processPixelBuffer:format:];
  }

  v10 = ARShouldUseLogTypeError_internalOSVersion_20;
  v11 = _ARLogGeneral_8();
  v12 = v11;
  if (v10 == 1)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543618;
      v39 = v14;
      v40 = 2048;
      v41 = self;
      v15 = "%{public}@ <%p>: Could not allocate pixel buffer";
      v16 = v12;
      v17 = OS_LOG_TYPE_ERROR;
LABEL_15:
      _os_log_impl(&dword_1C241C000, v16, v17, v15, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v27 = objc_opt_class();
    v14 = NSStringFromClass(v27);
    *buf = 138543618;
    v39 = v14;
    v40 = 2048;
    v41 = self;
    v15 = "Error: %{public}@ <%p>: Could not allocate pixel buffer";
    v16 = v12;
    v17 = OS_LOG_TYPE_INFO;
    goto LABEL_15;
  }

  v26 = 0;
LABEL_27:

  return v26;
}

@end