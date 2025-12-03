@interface CVAFilterAlphaBlend
- (CVAFilterAlphaBlend)initWithMetalContext:(void *)context;
- (pair<id<MTLTexture>,)getTexturePlanesFromPixelBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage;
- (void)alphaBlendPixelBuffer:(RetainPtr<__CVBuffer *>)buffer inPixelBufferSecond:(RetainPtr<__CVBuffer *>)second outPixelBuffer:(RetainPtr<__CVBuffer *>)pixelBuffer alpha:(float)alpha callbackQueue:(id)queue callback:(id)callback;
- (void)encodeAlphaBlendToCommandBuffer:(id)buffer inTexFirst:(id)first inTexSecond:(id)second outTex:(id)tex alpha:(float)alpha;
@end

@implementation CVAFilterAlphaBlend

- (void)alphaBlendPixelBuffer:(RetainPtr<__CVBuffer *>)buffer inPixelBufferSecond:(RetainPtr<__CVBuffer *>)second outPixelBuffer:(RetainPtr<__CVBuffer *>)pixelBuffer alpha:(float)alpha callbackQueue:(id)queue callback:(id)callback
{
  queueCopy = queue;
  callbackCopy = callback;
  [(CVAFilterAlphaBlend *)self getTexturePlanesFromPixelBuffer:*buffer.m_ptr usage:1];
  v31 = v45;
  v32 = v44;
  v44 = 0;
  v45 = 0;

  [(CVAFilterAlphaBlend *)self getTexturePlanesFromPixelBuffer:*second.m_ptr usage:1];
  v14 = v44;
  v15 = v45;
  v44 = 0;
  v45 = 0;

  [(CVAFilterAlphaBlend *)self getTexturePlanesFromPixelBuffer:*pixelBuffer.m_ptr usage:2];
  v16 = v44;
  v17 = v45;
  v44 = 0;
  v45 = 0;

  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v19 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:commandBuffer];

  [v19 setLabel:@"alpha blend"];
  *&v20 = alpha;
  [(CVAFilterAlphaBlend *)self encodeAlphaBlendToCommandBuffer:v19 inTexFirst:v32 inTexSecond:v14 outTex:v16 alpha:v20];
  *&v21 = alpha;
  [(CVAFilterAlphaBlend *)self encodeAlphaBlendToCommandBuffer:v19 inTexFirst:v31 inTexSecond:v15 outTex:v17 alpha:v21];
  dispatch_semaphore_wait(self->_renderingCallbackSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v44 = 0;
  v45 = &v44;
  v46 = 0x3812000000;
  v47 = sub_1DED45410;
  v48 = sub_1DED45420;
  v49 = &unk_1DED84722;
  v50 = *buffer.m_ptr;
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
  v22 = *second.m_ptr;
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
  v23 = *pixelBuffer.m_ptr;
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
  v24 = queueCopy;
  v34 = v24;
  selfCopy = self;
  v25 = callbackCopy;
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

- (pair<id<MTLTexture>,)getTexturePlanesFromPixelBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage
{
  v8 = v4;
  Width = CVPixelBufferGetWidth(buffer);
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width height:CVPixelBufferGetHeight(buffer) mipmapped:0];
  v21 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v10];

  [v21 setUsage:usage];
  v11 = MEMORY[0x1E69741C0];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 1uLL);
  v13 = [v11 texture2DDescriptorWithPixelFormat:30 width:WidthOfPlane height:CVPixelBufferGetHeightOfPlane(buffer mipmapped:1uLL), 0];
  v14 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v13];

  [v14 setUsage:usage];
  v15 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v21 iosurface:CVPixelBufferGetIOSurface(buffer) plane:0];
  v16 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v15];

  v17 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v14 iosurface:CVPixelBufferGetIOSurface(buffer) plane:1];
  v18 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v17];

  *v8 = v16;
  v8[1] = v18;

  result.var1 = v20;
  result.var0 = v19;
  return result;
}

- (void)encodeAlphaBlendToCommandBuffer:(id)buffer inTexFirst:(id)first inTexSecond:(id)second outTex:(id)tex alpha:(float)alpha
{
  firstCopy = first;
  secondCopy = second;
  texCopy = tex;
  alphaCopy = alpha;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v16 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:computeCommandEncoder];

  threadExecutionWidth = [(MTLComputePipelineState *)self->_alphaBlend_Kernel threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_alphaBlend_Kernel maxTotalThreadsPerThreadgroup];
  [v16 setLabel:@"_alphaBlend_Kernel"];
  [v16 setComputePipelineState:self->_alphaBlend_Kernel];
  [v16 setTexture:firstCopy atIndex:0];
  [v16 setTexture:secondCopy atIndex:1];
  [v16 setTexture:texCopy atIndex:2];
  [v16 setBytes:&alphaCopy length:4 atIndex:0];
  v20[0] = [texCopy width];
  v20[1] = [texCopy height];
  v20[2] = 1;
  v19[0] = threadExecutionWidth;
  v19[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v19[2] = 1;
  [v16 dispatchThreads:v20 threadsPerThreadgroup:v19];
  [v16 endEncoding];
}

- (CVAFilterAlphaBlend)initWithMetalContext:(void *)context
{
  v12.receiver = self;
  v12.super_class = CVAFilterAlphaBlend;
  v4 = [(ImageSaverAndFileConfigRegistrator *)&v12 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_device, *(context + 1));
    objc_storeStrong(&v5->_commandQueue, *(context + 2));
    objc_storeStrong(&v5->_library, *(context + 3));
    objc_storeStrong(&v5->_pipelineLibrary, *(context + 4));
    sub_1DED422A0(&v5->_alphaBlend_Kernel, *context, @"alphaBlendRG", 0);
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