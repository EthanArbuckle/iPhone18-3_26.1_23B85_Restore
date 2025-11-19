@interface ARMatteGenerator
- (ARMatteGenerator)initWithDevice:(id)a3 matteResolution:(int64_t)a4 useSmoothing:(BOOL)a5;
- (ARMatteGenerator)initWithDevice:(id)device matteResolution:(ARMatteResolution)matteResolution;
- (id)generateDilatedDepthFromFrame:(ARFrame *)frame commandBuffer:(id)commandBuffer;
- (id)generateMatteFromFrame:(ARFrame *)frame commandBuffer:(id)commandBuffer;
- (void)_commonInitWithDevice:(id)a3 matteResolution:(int64_t)a4 useSmoothing:(BOOL)a5;
- (void)encodeCoefficients:(id)a3 frame:(id)a4 coefficientsForeground:(id)a5 coefficientsBackground:(id)a6;
- (void)setupAlphaBufferForFrame:(id)a3;
- (void)setupBuffersForFrame:(id)a3;
- (void)setupDepthBufferForFrame:(id)a3;
@end

@implementation ARMatteGenerator

- (ARMatteGenerator)initWithDevice:(id)a3 matteResolution:(int64_t)a4 useSmoothing:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = ARMatteGenerator;
  v9 = [(ARMatteGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(ARMatteGenerator *)v9 _commonInitWithDevice:v8 matteResolution:a4 useSmoothing:v5];
  }

  return v10;
}

- (ARMatteGenerator)initWithDevice:(id)device matteResolution:(ARMatteResolution)matteResolution
{
  v6 = device;
  v10.receiver = self;
  v10.super_class = ARMatteGenerator;
  v7 = [(ARMatteGenerator *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ARMatteGenerator *)v7 _commonInitWithDevice:v6 matteResolution:matteResolution useSmoothing:0];
  }

  return v8;
}

- (void)_commonInitWithDevice:(id)a3 matteResolution:(int64_t)a4 useSmoothing:(BOOL)a5
{
  v5 = a5;
  v26 = a3;
  objc_storeStrong(&self->_device, a3);
  v9 = ARKitCoreBundle();
  v10 = [v9 URLForResource:@"default" withExtension:@"metallib"];

  v11 = [(MTLDevice *)self->_device newLibraryWithURL:v10 error:0];
  mattingLibrary = self->_mattingLibrary;
  self->_mattingLibrary = v11;

  self->_dilationRadius = [ARKitUserDefaults integerForKey:@"com.apple.arkit.matting.dilationRadius"];
  [ARKitUserDefaults floatForKey:@"com.apple.arkit.matting.depthScale"];
  self->_depthScale = v13;
  v14 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.matting.doubleMLResolutionForIPad"];
  self->_enableDoubleMLResolutionMatting = v14;
  if (v14)
  {
    LOBYTE(v14) = ARDeviceIsiPad();
  }

  self->_enableDoubleMLResolutionMatting = v14;
  v15 = [[ARDualGuidedFilter alloc] initWithDevice:self->_device useSmoothing:v5];
  dualGuidedFilter = self->_dualGuidedFilter;
  self->_dualGuidedFilter = v15;

  v17 = [(MTLLibrary *)self->_mattingLibrary newFunctionWithName:@"matting_dual"];
  v18 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v17 error:0];
  mattingDual = self->_mattingDual;
  self->_mattingDual = v18;

  v20 = [(MTLLibrary *)self->_mattingLibrary newFunctionWithName:@"resample_alpha_linear"];
  v21 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v20 error:0];
  resampleAlpha = self->_resampleAlpha;
  self->_resampleAlpha = v21;

  v23 = [(MTLLibrary *)self->_mattingLibrary newFunctionWithName:@"dilated_mask_with_depth_k"];
  v24 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v23 error:0];
  depthDilation = self->_depthDilation;
  self->_depthDilation = v24;

  self->_matteResolution = a4;
}

- (void)setupAlphaBufferForFrame:(id)a3
{
  v4 = a3;
  matteResolution = self->_matteResolution;
  v12 = v4;
  if (matteResolution == 1)
  {
    Width = CVPixelBufferGetWidth([v4 capturedImage]) >> 1;
    Height = CVPixelBufferGetHeight([v12 capturedImage]) >> 1;
  }

  else if (matteResolution)
  {
    Height = 0;
    Width = 0;
  }

  else
  {
    Width = CVPixelBufferGetWidth([v4 capturedImage]);
    Height = CVPixelBufferGetHeight([v12 capturedImage]);
  }

  alphaTexture = self->_alphaTexture;
  if (!alphaTexture || [(MTLTexture *)alphaTexture width]!= Width || [(MTLTexture *)self->_alphaTexture height]!= Height)
  {
    v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width height:Height mipmapped:0];
    [v9 setUsage:7];
    v10 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
    v11 = self->_alphaTexture;
    self->_alphaTexture = v10;
  }
}

- (void)setupDepthBufferForFrame:(id)a3
{
  v9 = a3;
  if ([v9 estimatedDepthData])
  {
    Width = CVPixelBufferGetWidth([v9 estimatedDepthData]);
    Height = CVPixelBufferGetHeight([v9 estimatedDepthData]);
  }

  else
  {
    Width = 256;
    Height = 192;
  }

  if (!self->_occluderDepthDilatedTexture || [v9 estimatedDepthData] && (-[MTLTexture width](self->_occluderDepthDilatedTexture, "width") != Width || -[MTLTexture height](self->_occluderDepthDilatedTexture, "height") != Height))
  {
    v6 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:Width height:Height mipmapped:0];
    [v6 setUsage:7];
    v7 = [(MTLDevice *)self->_device newTextureWithDescriptor:v6];
    occluderDepthDilatedTexture = self->_occluderDepthDilatedTexture;
    self->_occluderDepthDilatedTexture = v7;
  }
}

- (void)setupBuffersForFrame:(id)a3
{
  v4 = a3;
  Width = CVPixelBufferGetWidth([v4 mattingScaleImagePixelBuffer]);
  v6 = [v4 mattingScaleImagePixelBuffer];

  Height = CVPixelBufferGetHeight(v6);
  if (Width != [(MTLTexture *)self->_overlayCoefficientsFG width]|| Height != [(MTLTexture *)self->_overlayCoefficientsFG height])
  {
    v16 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:115 width:Width height:Height mipmapped:0];
    [v16 setUsage:3];
    v8 = [(MTLDevice *)self->_device newTextureWithDescriptor:v16];
    overlayCoefficientsFG = self->_overlayCoefficientsFG;
    self->_overlayCoefficientsFG = v8;

    v10 = [(MTLDevice *)self->_device newTextureWithDescriptor:v16];
    overlayCoefficientsBG = self->_overlayCoefficientsBG;
    self->_overlayCoefficientsBG = v10;

    if (self->_enableDoubleMLResolutionMatting)
    {
      v12 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width height:Height mipmapped:0];

      [v12 setUsage:3];
      v13 = [(MTLDevice *)self->_device newTextureWithDescriptor:v12];
      stencilTexture = self->_stencilTexture;
      self->_stencilTexture = v13;

      v15 = v12;
    }

    else
    {
      v15 = v16;
    }
  }
}

- (void)encodeCoefficients:(id)a3 frame:(id)a4 coefficientsForeground:(id)a5 coefficientsBackground:(id)a6
{
  v42 = a3;
  v10 = a4;
  v41 = a6;
  v40 = a5;
  v11 = [v10 mattingScaleImagePixelBuffer];
  v12 = [v10 segmentationBuffer];
  v13 = [v10 capturedImage];
  PixelFormatType = CVPixelBufferGetPixelFormatType(v13);
  IOSurface = CVPixelBufferGetIOSurface(v12);
  v16 = CVPixelBufferGetIOSurface(v11);
  v17 = CVPixelBufferGetIOSurface(v13);
  v18 = MEMORY[0x1E69741C0];
  Width = IOSurfaceGetWidth(v16);
  v20 = [v18 texture2DDescriptorWithPixelFormat:80 width:Width height:IOSurfaceGetHeight(v16) mipmapped:0];
  v21 = [(MTLDevice *)self->_device newTextureWithDescriptor:v20 iosurface:v16 plane:0];
  if (PixelFormatType == 2016686640)
  {
    v22 = 505;
  }

  else
  {
    v22 = 500;
  }

  v23 = MEMORY[0x1E69741C0];
  v24 = IOSurfaceGetWidth(v17);
  v25 = [v23 texture2DDescriptorWithPixelFormat:v22 width:v24 height:IOSurfaceGetHeight(v17) mipmapped:0];

  v26 = [(MTLDevice *)self->_device newTextureWithDescriptor:v25 iosurface:v17 plane:0];
  cameraImageTexture = self->_cameraImageTexture;
  self->_cameraImageTexture = v26;

  v28 = MEMORY[0x1E69741C0];
  v29 = IOSurfaceGetWidth(IOSurface);
  v30 = [v28 texture2DDescriptorWithPixelFormat:10 width:v29 height:IOSurfaceGetHeight(IOSurface) mipmapped:0];

  if (![v10 segmentationBuffer])
  {
    v37 = [(MTLDevice *)self->_device newTextureWithDescriptor:v30];
LABEL_9:
    stencilTexture = self->_stencilTexture;
    self->_stencilTexture = v37;

    goto LABEL_10;
  }

  if (!self->_enableDoubleMLResolutionMatting)
  {
    v37 = [(MTLDevice *)self->_device newTextureWithDescriptor:v30 iosurface:IOSurface plane:0];
    goto LABEL_9;
  }

  v39 = [(MTLTexture *)self->_stencilTexture width];
  v31 = [(MTLTexture *)self->_stencilTexture height];
  v32 = [(MTLDevice *)self->_device newTextureWithDescriptor:v30 iosurface:IOSurface plane:0];
  v33 = [v42 computeCommandEncoder];
  [v33 setComputePipelineState:self->_resampleAlpha];
  [v33 setTexture:v32 atIndex:0];
  [v33 setTexture:self->_stencilTexture atIndex:1];
  v34 = [(MTLComputePipelineState *)self->_resampleAlpha threadExecutionWidth];
  v35 = [(MTLComputePipelineState *)self->_resampleAlpha maxTotalThreadsPerThreadgroup];
  v36 = [(MTLComputePipelineState *)self->_resampleAlpha threadExecutionWidth];
  v44[0] = (v34 + v39 - 1) / v34;
  v44[1] = (v35 / v36 + v31 - 1) / (v35 / v36);
  v44[2] = 1;
  v43[0] = v34;
  v43[1] = v35 / v36;
  v43[2] = 1;
  [v33 dispatchThreadgroups:v44 threadsPerThreadgroup:v43];
  [v33 endEncoding];

LABEL_10:
  [(ARMatteGenerator *)self setupBuffersForFrame:v10];
  [(ARDualGuidedFilter *)self->_dualGuidedFilter encodeDualCoefficients:v42 guide:v21 stencil:self->_stencilTexture coefficientsTextureFG:v40 coefficientsTextureBG:v41];
}

- (id)generateMatteFromFrame:(ARFrame *)frame commandBuffer:(id)commandBuffer
{
  v6 = frame;
  v7 = commandBuffer;
  [(ARMatteGenerator *)self setupAlphaBufferForFrame:v6];
  if ([(ARFrame *)v6 mattingScaleImagePixelBuffer]&& [(ARFrame *)v6 segmentationBuffer])
  {
    [(ARMatteGenerator *)self setupBuffersForFrame:v6];
    [(ARMatteGenerator *)self encodeCoefficients:v7 frame:v6 coefficientsForeground:self->_overlayCoefficientsFG coefficientsBackground:self->_overlayCoefficientsBG];
    v8 = [(MTLTexture *)self->_alphaTexture width];
    v9 = [(MTLTexture *)self->_alphaTexture height];
    v10 = [v7 computeCommandEncoder];
    [v10 setComputePipelineState:self->_mattingDual];
    [v10 setTexture:self->_cameraImageTexture atIndex:0];
    [v10 setTexture:self->_overlayCoefficientsFG atIndex:1];
    [v10 setTexture:self->_overlayCoefficientsBG atIndex:2];
    [v10 setTexture:self->_alphaTexture atIndex:3];
    v11 = [(MTLComputePipelineState *)self->_mattingDual threadExecutionWidth];
    v12 = [(MTLComputePipelineState *)self->_mattingDual maxTotalThreadsPerThreadgroup];
    v13 = [(MTLComputePipelineState *)self->_mattingDual threadExecutionWidth];
    v17[0] = (v11 + v8 - 1) / v11;
    v17[1] = (v12 / v13 + v9 - 1) / (v12 / v13);
    v17[2] = 1;
    v16[0] = v11;
    v16[1] = v12 / v13;
    v16[2] = 1;
    [v10 dispatchThreadgroups:v17 threadsPerThreadgroup:v16];
    [v10 endEncoding];
    v14 = self->_alphaTexture;
  }

  else
  {
    v14 = self->_alphaTexture;
  }

  return v14;
}

- (id)generateDilatedDepthFromFrame:(ARFrame *)frame commandBuffer:(id)commandBuffer
{
  v6 = frame;
  v7 = commandBuffer;
  [(ARMatteGenerator *)self setupDepthBufferForFrame:v6];
  if ([(ARFrame *)v6 estimatedDepthData])
  {
    IOSurface = CVPixelBufferGetIOSurface([(ARFrame *)v6 estimatedDepthData]);
    v9 = MEMORY[0x1E69741C0];
    Width = IOSurfaceGetWidth(IOSurface);
    v11 = [v9 texture2DDescriptorWithPixelFormat:55 width:Width height:IOSurfaceGetHeight(IOSurface) mipmapped:0];
    v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11 iosurface:IOSurface plane:0];
    v13 = [v7 computeCommandEncoder];
    [v13 setLabel:@"Compute depth stencil dilation"];
    dilationRadius = self->_dilationRadius;
    v15 = 16 - 2 * dilationRadius;
    v16 = [v12 width];
    v17 = [v12 height];
    v18 = (v16 - 2 * dilationRadius + 15) / v15;
    *&v19 = 0;
    v26[0] = 0u;
    v26[2] = 0u;
    LODWORD(v26[0]) = self->_dilationRadius;
    *(&v19 + 1) = LODWORD(self->_depthScale);
    v26[1] = v19;
    v20 = (v17 - 2 * dilationRadius + 15) / v15;
    [v13 setComputePipelineState:self->_depthDilation];
    [v13 setTexture:v12 atIndex:0];
    [v13 setTexture:self->_occluderDepthDilatedTexture atIndex:1];
    [v13 setBytes:v26 length:48 atIndex:0];
    v25[0] = v18;
    v25[1] = v20;
    v25[2] = 1;
    v23 = vdupq_n_s64(0x10uLL);
    v24 = 1;
    [v13 dispatchThreadgroups:v25 threadsPerThreadgroup:&v23];
    [v13 endEncoding];
    v21 = self->_occluderDepthDilatedTexture;
  }

  else
  {
    v21 = self->_occluderDepthDilatedTexture;
  }

  return v21;
}

@end