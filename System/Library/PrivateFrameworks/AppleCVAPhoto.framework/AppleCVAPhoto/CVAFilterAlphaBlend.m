@interface CVAFilterAlphaBlend
- (CVAFilterAlphaBlend)initWithMetalContext:(void *)a3;
- (pair<id<MTLTexture>,)getTexturePlanesFromPixelBuffer:(__CVBuffer *)a3 usage:(unint64_t)a4;
- (void)alphaBlendPixelBuffer:(RetainPtr<__CVBuffer *>)a3 inPixelBufferSecond:(RetainPtr<__CVBuffer *>)a4 outPixelBuffer:(RetainPtr<__CVBuffer *>)a5 alpha:(float)a6 callbackQueue:(id)a7 callback:(id)a8;
- (void)encodeAlphaBlendToCommandBuffer:(id)a3 inTexFirst:(id)a4 inTexSecond:(id)a5 outTex:(id)a6 alpha:(float)a7;
@end

@implementation CVAFilterAlphaBlend

- (void)alphaBlendPixelBuffer:(RetainPtr<__CVBuffer *>)a3 inPixelBufferSecond:(RetainPtr<__CVBuffer *>)a4 outPixelBuffer:(RetainPtr<__CVBuffer *>)a5 alpha:(float)a6 callbackQueue:(id)a7 callback:(id)a8
{
  v30 = a7;
  v29 = a8;
  [(CVAFilterAlphaBlend *)self getTexturePlanesFromPixelBuffer:*a3.m_ptr usage:1];
  v31 = v45;
  v32 = v44;
  v44 = 0;
  v45 = 0;

  [(CVAFilterAlphaBlend *)self getTexturePlanesFromPixelBuffer:*a4.m_ptr usage:1];
  v14 = v44;
  v15 = v45;
  v44 = 0;
  v45 = 0;

  [(CVAFilterAlphaBlend *)self getTexturePlanesFromPixelBuffer:*a5.m_ptr usage:2];
  v16 = v44;
  v17 = v45;
  v44 = 0;
  v45 = 0;

  v18 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v19 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v18];

  [v19 setLabel:@"alpha blend"];
  *&v20 = a6;
  [(CVAFilterAlphaBlend *)self encodeAlphaBlendToCommandBuffer:v19 inTexFirst:v32 inTexSecond:v14 outTex:v16 alpha:v20];
  *&v21 = a6;
  [(CVAFilterAlphaBlend *)self encodeAlphaBlendToCommandBuffer:v19 inTexFirst:v31 inTexSecond:v15 outTex:v17 alpha:v21];
  dispatch_semaphore_wait(self->_renderingCallbackSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v44 = 0;
  v45 = &v44;
  v46 = 0x3812000000;
  v47 = sub_1DED45410;
  v48 = sub_1DED45420;
  v49 = &unk_1DED84722;
  v50 = *a3.m_ptr;
  if (v50)
  {
    CFRetain(v50);
  }

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3812000000;
  v42[3] = sub_1DED45410;
  v42[4] = sub_1DED45420;
  v42[5] = &unk_1DED84722;
  v22 = *a4.m_ptr;
  v43 = v22;
  if (v22)
  {
    CFRetain(v22);
  }

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3812000000;
  v40[3] = sub_1DED45410;
  v40[4] = sub_1DED45420;
  v40[5] = &unk_1DED84722;
  v23 = *a5.m_ptr;
  cf = v23;
  if (v23)
  {
    CFRetain(v23);
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1DED45438;
  v33[3] = &unk_1E869ABF8;
  v37 = &v44;
  v38 = v42;
  v24 = v30;
  v34 = v24;
  v35 = self;
  v25 = v29;
  v36 = v25;
  v39 = v40;
  [v19 addCompletedHandler:v33];
  [v19 commit];

  _Block_object_dispose(v40, 8);
  v26 = cf;
  cf = 0;
  if (v26)
  {
    CFRelease(v26);
  }

  _Block_object_dispose(v42, 8);
  v27 = v43;
  v43 = 0;
  if (v27)
  {
    CFRelease(v27);
  }

  _Block_object_dispose(&v44, 8);
  v28 = v50;
  v50 = 0;
  if (v28)
  {
    CFRelease(v28);
  }
}

- (pair<id<MTLTexture>,)getTexturePlanesFromPixelBuffer:(__CVBuffer *)a3 usage:(unint64_t)a4
{
  v8 = v4;
  Width = CVPixelBufferGetWidth(a3);
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width height:CVPixelBufferGetHeight(a3) mipmapped:0];
  v21 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v10];

  [v21 setUsage:a4];
  v11 = MEMORY[0x1E69741C0];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 1uLL);
  v13 = [v11 texture2DDescriptorWithPixelFormat:30 width:WidthOfPlane height:CVPixelBufferGetHeightOfPlane(a3 mipmapped:1uLL), 0];
  v14 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v13];

  [v14 setUsage:a4];
  v15 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v21 iosurface:CVPixelBufferGetIOSurface(a3) plane:0];
  v16 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v15];

  v17 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v14 iosurface:CVPixelBufferGetIOSurface(a3) plane:1];
  v18 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v17];

  *v8 = v16;
  v8[1] = v18;

  result.var1 = v20;
  result.var0 = v19;
  return result;
}

- (void)encodeAlphaBlendToCommandBuffer:(id)a3 inTexFirst:(id)a4 inTexSecond:(id)a5 outTex:(id)a6 alpha:(float)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21 = a7;
  v15 = [a3 computeCommandEncoder];
  v16 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v15];

  v17 = [(MTLComputePipelineState *)self->_alphaBlend_Kernel threadExecutionWidth];
  v18 = [(MTLComputePipelineState *)self->_alphaBlend_Kernel maxTotalThreadsPerThreadgroup];
  [v16 setLabel:@"_alphaBlend_Kernel"];
  [v16 setComputePipelineState:self->_alphaBlend_Kernel];
  [v16 setTexture:v12 atIndex:0];
  [v16 setTexture:v13 atIndex:1];
  [v16 setTexture:v14 atIndex:2];
  [v16 setBytes:&v21 length:4 atIndex:0];
  v20[0] = [v14 width];
  v20[1] = [v14 height];
  v20[2] = 1;
  v19[0] = v17;
  v19[1] = v18 / v17;
  v19[2] = 1;
  [v16 dispatchThreads:v20 threadsPerThreadgroup:v19];
  [v16 endEncoding];
}

- (CVAFilterAlphaBlend)initWithMetalContext:(void *)a3
{
  v12.receiver = self;
  v12.super_class = CVAFilterAlphaBlend;
  v4 = [(ImageSaverAndFileConfigRegistrator *)&v12 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_device, *(a3 + 1));
    objc_storeStrong(&v5->_commandQueue, *(a3 + 2));
    objc_storeStrong(&v5->_library, *(a3 + 3));
    objc_storeStrong(&v5->_pipelineLibrary, *(a3 + 4));
    sub_1DED422A0(&v5->_alphaBlend_Kernel, *a3, @"alphaBlendRG", 0);
    [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v5->_alphaBlend_Kernel];

    v6 = dispatch_semaphore_create(5);
    renderingCallbackSemaphore = v5->_renderingCallbackSemaphore;
    v5->_renderingCallbackSemaphore = v6;

    v8 = dispatch_queue_create("_synchronousAlphaBlendCallbackQueue", 0);
    synchronousRenderingCallbackQueue = v5->_synchronousRenderingCallbackQueue;
    v5->_synchronousRenderingCallbackQueue = v8;

    v10 = v5;
  }

  return v5;
}

@end