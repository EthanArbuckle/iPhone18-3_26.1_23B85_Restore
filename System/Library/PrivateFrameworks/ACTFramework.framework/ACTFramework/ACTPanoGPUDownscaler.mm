@interface ACTPanoGPUDownscaler
- (ACTPanoGPUDownscaler)init;
- (ACTPanoGPUDownscaler)initWithContext:(id)context;
- (int)downsample:(__CVBuffer *)downsample to:(__CVBuffer *)to inputBitDepth:(int)depth outputBitDepth:(int)bitDepth;
- (void)dealloc;
@end

@implementation ACTPanoGPUDownscaler

- (void)dealloc
{
  downsampleState = self->_downsampleState;
  self->_downsampleState = 0;

  queue = self->_queue;
  self->_queue = 0;

  device = self->_device;
  self->_device = 0;

  v6.receiver = self;
  v6.super_class = ACTPanoGPUDownscaler;
  [(ACTPanoGPUDownscaler *)&v6 dealloc];
}

- (int)downsample:(__CVBuffer *)downsample to:(__CVBuffer *)to inputBitDepth:(int)depth outputBitDepth:(int)bitDepth
{
  v9 = 10;
  if (depth == 2)
  {
    v10 = 20;
  }

  else
  {
    v10 = 10;
  }

  if (depth == 2)
  {
    v11 = 60;
  }

  else
  {
    v11 = 30;
  }

  if (bitDepth == 2)
  {
    v9 = 20;
  }

  v91 = v9;
  if (bitDepth == 2)
  {
    v12 = 60;
  }

  else
  {
    v12 = 30;
  }

  v92 = v12;
  IOSurface = CVPixelBufferGetIOSurface(downsample);
  v14 = CVPixelBufferGetIOSurface(to);
  v15 = MEMORY[0x277CD7058];
  Width = CVPixelBufferGetWidth(downsample);
  Height = CVPixelBufferGetHeight(downsample);
  v19 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v15, v18, v10, Width, Height, 0);
  objc_msgSend_setUsage_(v19, v20, 1, v21);
  v93 = objc_msgSend_newTextureWithDescriptor_iosurface_plane_(self->_device, v22, v19, IOSurface, 0);
  v23 = MEMORY[0x277CD7058];
  v24 = CVPixelBufferGetWidth(downsample) >> 1;
  v25 = CVPixelBufferGetHeight(downsample);
  v27 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v23, v26, v11, v24, v25 >> 1, 0);

  objc_msgSend_setUsage_(v27, v28, 1, v29);
  v31 = objc_msgSend_newTextureWithDescriptor_iosurface_plane_(self->_device, v30, v27, IOSurface, 1);
  v32 = MEMORY[0x277CD7058];
  v33 = CVPixelBufferGetWidth(to);
  v34 = CVPixelBufferGetHeight(to);
  v36 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v32, v35, v91, v33, v34, 0);

  objc_msgSend_setUsage_(v36, v37, 2, v38);
  v40 = objc_msgSend_newTextureWithDescriptor_iosurface_plane_(self->_device, v39, v36, v14, 0);
  v41 = MEMORY[0x277CD7058];
  v42 = CVPixelBufferGetWidth(to) >> 1;
  v43 = CVPixelBufferGetHeight(to);
  v45 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v41, v44, v92, v42, v43 >> 1, 0);

  objc_msgSend_setUsage_(v45, v46, 2, v47);
  v49 = objc_msgSend_newTextureWithDescriptor_iosurface_plane_(self->_device, v48, v45, v14, 1);
  v53 = objc_msgSend_threadExecutionWidth(self->_downsampleState, v50, v51, v52);
  v57 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_downsampleState, v54, v55, v56) / v53;
  v61 = objc_msgSend_commandBuffer(self->_queue, v58, v59, v60);
  objc_msgSend_setLabel_(v61, v62, @"Panorama:GPUDownscaler", v63);
  v67 = objc_msgSend_computeCommandEncoder(v61, v64, v65, v66);
  objc_msgSend_setComputePipelineState_(v67, v68, self->_downsampleState, v69);
  objc_msgSend_setTexture_atIndex_(v67, v70, v93, 0);
  objc_msgSend_setTexture_atIndex_(v67, v71, v31, 1);
  objc_msgSend_setTexture_atIndex_(v67, v72, v40, 2);
  objc_msgSend_setTexture_atIndex_(v67, v73, v49, 3);
  v95[0] = objc_msgSend_width(v49, v74, v75, v76);
  v95[1] = objc_msgSend_height(v49, v77, v78, v79);
  v95[2] = 1;
  v94[0] = v53;
  v94[1] = v57;
  v94[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v67, v80, v95, v94);
  objc_msgSend_endEncoding(v67, v81, v82, v83);
  objc_msgSend_commit(v61, v84, v85, v86);
  objc_msgSend_waitUntilCompleted(v61, v87, v88, v89);

  return 0;
}

- (ACTPanoGPUDownscaler)initWithContext:(id)context
{
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = ACTPanoGPUDownscaler;
  v8 = [(ACTPanoGPUDownscaler *)&v22 init];
  if (v8 && (objc_msgSend_device(contextCopy, v5, v6, v7), v9 = objc_claimAutoreleasedReturnValue(), device = v8->_device, v8->_device = v9, device, (v14 = v8->_device) != 0) && (v15 = objc_msgSend_newCommandQueue(v14, v11, v12, v13), queue = v8->_queue, v8->_queue = v15, queue, v8->_queue))
  {
    v18 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v17, @"downsampleYUV", 0);
    downsampleState = v8->_downsampleState;
    v8->_downsampleState = v18;

    v20 = v8;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (ACTPanoGPUDownscaler)init
{
  v27.receiver = self;
  v27.super_class = ACTPanoGPUDownscaler;
  v2 = [(ACTPanoGPUDownscaler *)&v27 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CF6C78]);
    v4 = MEMORY[0x277CCA8D8];
    v5 = objc_opt_class();
    v8 = objc_msgSend_bundleForClass_(v4, v6, v5, v7);
    inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v3, v9, v8, 0);

    v14 = objc_msgSend_device(inited, v11, v12, v13);
    device = v2->_device;
    v2->_device = v14;

    v19 = v2->_device;
    if (v19 && (v20 = objc_msgSend_newCommandQueue(v19, v16, v17, v18), queue = v2->_queue, v2->_queue = v20, queue, v2->_queue))
    {
      v23 = objc_msgSend_computePipelineStateFor_constants_(inited, v22, @"downsampleYUV", 0);
      downsampleState = v2->_downsampleState;
      v2->_downsampleState = v23;

      v25 = v2;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    inited = 0;
  }

  return v25;
}

@end