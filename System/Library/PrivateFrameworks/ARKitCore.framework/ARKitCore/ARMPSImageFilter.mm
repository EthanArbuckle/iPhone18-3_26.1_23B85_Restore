@interface ARMPSImageFilter
- (ARMPSImageFilter)initWithImageKernel:(id)kernel device:(id)device;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer format:(unint64_t)format;
- (void)dealloc;
@end

@implementation ARMPSImageFilter

- (ARMPSImageFilter)initWithImageKernel:(id)kernel device:(id)device
{
  kernelCopy = kernel;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = ARMPSImageFilter;
  v9 = [(ARMPSImageFilter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    newCommandQueue = [(MTLDevice *)v10->_device newCommandQueue];
    commandQueue = v10->_commandQueue;
    v10->_commandQueue = newCommandQueue;

    objc_storeStrong(&v10->_kernel, kernel);
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

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer format:(unint64_t)format
{
  v42 = *MEMORY[0x1E69E9840];
  if (buffer)
  {
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  ARRecreatePixelBufferPoolOnConfigurationChanges(&self->_pixelBufferPool, PixelFormatType, Width, Height);
  pixelBufferOut = 0;
  if (!CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], self->_pixelBufferPool, &pixelBufferOut))
  {
    v18 = MEMORY[0x1E69741C0];
    v19 = CVPixelBufferGetWidth(buffer);
    v20 = [v18 texture2DDescriptorWithPixelFormat:format width:v19 height:CVPixelBufferGetHeight(buffer) mipmapped:0];
    v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v20 iosurface:CVPixelBufferGetIOSurface(buffer) plane:0];

    v21 = MEMORY[0x1E69741C0];
    v22 = CVPixelBufferGetWidth(pixelBufferOut);
    v23 = [v21 texture2DDescriptorWithPixelFormat:format width:v22 height:CVPixelBufferGetHeight(pixelBufferOut) mipmapped:0];
    [v23 setUsage:{objc_msgSend(v23, "usage") | 2}];
    v24 = [(MTLDevice *)self->_device newTextureWithDescriptor:v23 iosurface:CVPixelBufferGetIOSurface(pixelBufferOut) plane:0];

    if (v12 && v24)
    {
      commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
      [(MPSUnaryImageKernel *)self->_kernel encodeToCommandBuffer:commandBuffer sourceTexture:v12 destinationTexture:v24];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
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
    commandBuffer = v29;
    if (v28 == 1)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138543618;
        v39 = v31;
        v40 = 2048;
        selfCopy4 = self;
        v32 = "%{public}@ <%p>: Could not allocate create textures for processing";
        v33 = commandBuffer;
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
      selfCopy4 = self;
      v32 = "Error: %{public}@ <%p>: Could not allocate create textures for processing";
      v33 = commandBuffer;
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
      selfCopy4 = self;
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
    selfCopy4 = self;
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