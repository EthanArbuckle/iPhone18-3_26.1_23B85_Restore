@interface LKTFlowGPU
+ (void)_computeScalingFactor:(id)a1 dst_tex:(SEL)a2 scale_xy_inv:(id)a3 coeff:(id)a4;
- (CGSize)aux_size;
- (CGSize)ref_size;
- (LKTFlowGPU)initWithMetalContext:(id)a3 ICPtransform:(int64_t)a4 width:(int)a5 height:(int)a6 nscales:(int)a7 flowUpperMostScale:(int)a8;
- (LKTFlowGPU)initWithMetalContext:(id)a3 width:(int)a4 height:(int)a5 nscales:(int)a6;
- (__n64)_parametricTransformToMatrix3x3;
- (double)_matrix3x3ToParametricTransform:(__n128)a3;
- (int)_computeActiveThreadgroupsWithCommandBuffer:(id)a3;
- (int)_computeFeaturesAndTGSumWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (int)_computeFeaturesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (int)_computeHomographyWithCommandBuffer:(id)a3 in_tex0:(id)a4 in_tex1:(id)a5 in_tex2:(id)a6 weight_tex:(id)a7 regularizer_term:(float)a8 decimation_factor:(unint64_t)a9 scale:(unint64_t)a10 nwarp:(unint64_t)a11;
- (int)_computeICPResiduals:(id)a3 flow:(id)a4;
- (int)_computeICPWeights:(id)a3 weights:(id)a4 flow:(id)a5;
- (int)_computeOpticalFlow;
- (int)_computeOpticalFlowBidirectional;
- (int)_createImagePyramidWithCommandBuffer:(id)a3 in_pixelbuf:(__CVBuffer *)a4 I_idx:(int)a5;
- (int)_doNLRegularizationWithCommandBuffer:(id)a3 in_uv_tex:(id)a4 join_tex:(id)a5 w_tex:(id)a6 out_uv_tex:(id)a7;
- (int)_doSolverWithCommandBuffer:(id)a3 scale:(int)a4 in_uv_tex:(id)a5 in_G0_tex:(id)a6 in_G1_tex:(id)a7 in_C0_tex:(id)a8 in_C1_tex:(id)a9 out_uv_tex:(id)a10 out_w_tex:(id)a11;
- (int)_downscale2XWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (int)_enqueueFlowConsistencyWithCommandBuffer:(id)a3 in_uv0_tex:(id)a4 in_uv1_tex:(id)a5 out_uv_tex:(id)a6;
- (int)_enqueueKeypointsFromFlowWithCommandBuffer:(id)a3 in_uv_fwd_tex:(id)a4 in_uv_bwd_tex:(id)a5 out_kpt_buf:(id)a6 block_size:(int)a7 bidirectional_error:(float)a8 out_num_keypoints:(unsigned __int16 *)a9;
- (int)_getICPNWarp:(int)a3 scale:(int)a4;
- (int)_initICPWeightsWithCommandBuffer:(id)a3;
- (int)_initMemory:(int)a3 height:(int)a4 nscales:(int)a5;
- (int)_initMemoryICP:(int)a3;
- (int)_resampleTransformWithCommandBuffer:(id)a3 from:(id)a4 to:(id)a5;
- (int)_setupBuffer;
- (int)_setupBufferDerivatives;
- (int)_setupBufferICP;
- (int)_setupBufferLKT;
- (int)_setupBufferPyramids;
- (int)_zeroFlowWithCommandBuffer:(id)a3 uv_tex:(id)a4;
- (int)computeKeypointsFromForwardFlow:(__CVBuffer *)a3 backwardFlow:(__CVBuffer *)a4 bidirectionalError:(float)a5 blockSize:(int)a6 outNumKeypoints:(unsigned __int16 *)a7;
- (int)estimateFlowFromReference:(__CVBuffer *)a3 target:(__CVBuffer *)a4;
- (int)estimateFlowStream:(__CVBuffer *)a3;
- (int)setICPWeights:(id)a3;
- (int)setOutputUVForward:(__CVBuffer *)a3 backward:(__CVBuffer *)a4;
- (parametric_transform)p;
- (uint64_t)_panoRegistration:(double)a3 metadata:(double)a4;
- (uint64_t)_setParametricTransformFromGyro:(uint64_t)a3;
- (uint64_t)estimatePanoRegistration:(double)a3 metadata:(double)a4 initTForm:(uint64_t)a5;
- (void)_computeICPThreadgroupsForActivation:(id *)a3;
- (void)_computeICPThreadgroupsForDecimation:(unint64_t)a3 threadsPerThreadgroupForUniform:(id *)a4 threadsPerThreadgroupForPass1:(id *)a5 threadgroupsPerGridForPass1:(id *)a6;
- (void)_computeICPThreadgroupsWithSize:(CGSize)a3 threadsPerThreadgroupForPass1:(id *)a4 threadgroupsPerGridForPass1:(id *)a5 threadsPerThreadgroupForPass2:(id *)a6 threadgroupsPerGridForPass2:(id *)a7 threadsPerThreadgroupForPass3:(id *)a8 threadgroupsPerGridForPass3:(id *)a9;
- (void)_computeICPThreadgroupsWithSize:(id *)a3 computePipeline:(id)a4 threadsPerThreadgroup:(id *)a5 threadgroupsPerGrid:(id *)a6 debug_string:(char *)a7;
- (void)_copyTransfromFromGPU;
- (void)_copyTransfromToGPU;
- (void)_resampleHomography:(id)a3 to:(id)a4;
- (void)_resampleTransform:(id)a3 to:(id)a4;
- (void)_resetLoss;
- (void)_setDefaultParameters;
- (void)_setICPRegularizerTerms:(id)a3;
- (void)_setupPipelines;
- (void)dealloc;
- (void)setP:(parametric_transform *)a3;
- (void)setPreset:(int64_t)a3;
- (void)setPresetICP:(int64_t)a3 withRegularizerTerms:(id)a4 decimation_factor:(int)a5;
- (void)waitUntilCompleted;
@end

@implementation LKTFlowGPU

- (void)dealloc
{
  CVPixelBufferRelease(self->_G0_pxbuf);
  CVPixelBufferRelease(self->_G1_pxbuf);
  CVPixelBufferRelease(self->_C0_pxbuf);
  CVPixelBufferRelease(self->_C1_pxbuf);
  CVPixelBufferRelease(self->_w_pxbuf);
  CVPixelBufferRelease(self->_uv_fwd_pxbuf[0]);
  CVPixelBufferRelease(self->_uv_fwd_pxbuf[1]);
  v3.receiver = self;
  v3.super_class = LKTFlowGPU;
  [(LKTFlowGPU *)&v3 dealloc];
}

- (void)waitUntilCompleted
{
  v12 = objc_msgSend_commandBuffer(self->_commandQueue, a2, v2, v3);
  objc_msgSend_setLabel_(v12, v4, @"LKT:waitUntilCompleted", v5);
  objc_msgSend_commit(v12, v6, v7, v8);
  objc_msgSend_waitUntilCompleted(v12, v9, v10, v11);
}

- (void)setPreset:(int64_t)a3
{
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2:
        v5 = 3;
        break;
      case 3:
        v5 = 5;
        break;
      case 4:
        self->_nwarpings = 6;
        self->_useNonLocalRegularization = 1;
        *&self->_nlreg_radius = 0x200000004;
        *&self->_nlreg_sigma_l = 0x4040000040C00000;
        self->_nlreg_sigma_w = 0.25;
        return;
      default:
LABEL_15:
        v6 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, @"Invalid parameter", @"Unknown preset", 0);
        objc_exception_throw(v6);
    }

    goto LABEL_11;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_15;
    }

    v5 = 1;
LABEL_11:
    self->_nwarpings = v5;
    self->_useNonLocalRegularization = 0;
    return;
  }

  objc_msgSend__setDefaultParameters(self, a2, 0, v3);
}

- (int)estimateFlowFromReference:(__CVBuffer *)a3 target:(__CVBuffer *)a4
{
  if (!self->_isValid)
  {
    return -12782;
  }

  v30 = v7;
  v31 = v6;
  v32 = v5;
  v33 = v4;
  if (self->_streamFrameCount)
  {
    return -12782;
  }

  v12 = objc_msgSend_commandBuffer(self->_commandQueue, a2, a3, a4);
  objc_msgSend_setLabel_(v12, v13, @"LKT::Pyramid", v14);
  objc_msgSend__zeroFlowWithCommandBuffer_uv_tex_(self, v15, v12, self->_uv_bwd_pxbuf[self->_nscales + 1]);
  if (objc_msgSend_isBidirectional(self, v16, v17, v18))
  {
    objc_msgSend__zeroFlowWithCommandBuffer_uv_tex_(self, v19, v12, self->_uv_fwd_tex[1][self->_nscales + 9]);
  }

  objc_msgSend__createImagePyramidWithCommandBuffer_in_pixelbuf_I_idx_(self, v19, v12, a3, 0, v30, v31, v32, v33);
  objc_msgSend__createImagePyramidWithCommandBuffer_in_pixelbuf_I_idx_(self, v20, v12, a4, 1);
  objc_msgSend_commit(v12, v21, v22, v23);

  *&self->_current_frame_index = 0;
  if (objc_msgSend_isBidirectional(self, v24, v25, v26))
  {
    objc_msgSend__computeOpticalFlowBidirectional(self, v27, v28, v29);
  }

  else
  {
    objc_msgSend__computeOpticalFlow(self, v27, v28, v29);
  }

  return 0;
}

- (int)estimateFlowStream:(__CVBuffer *)a3
{
  if (!self->_isValid)
  {
    return -12782;
  }

  v6 = objc_msgSend_commandBuffer(self->_commandQueue, a2, a3, v3);
  objc_msgSend_setLabel_(v6, v7, @"LKT::Pyramid", v8);
  objc_msgSend__zeroFlowWithCommandBuffer_uv_tex_(self, v9, v6, self->_uv_bwd_pxbuf[self->_nscales + 1]);
  if (objc_msgSend_isBidirectional(self, v10, v11, v12))
  {
    objc_msgSend__zeroFlowWithCommandBuffer_uv_tex_(self, v13, v6, self->_uv_fwd_tex[1][self->_nscales + 9]);
  }

  objc_msgSend__createImagePyramidWithCommandBuffer_in_pixelbuf_I_idx_(self, v13, v6, a3, self->_current_frame_index);
  objc_msgSend_commit(v6, v14, v15, v16);

  self->_current_frame_index ^= 1u;
  if (self->_streamFrameCount >= 1)
  {
    if (objc_msgSend_isBidirectional(self, v17, v18, v19))
    {
      objc_msgSend__computeOpticalFlowBidirectional(self, v20, v21, v22);
    }

    else
    {
      objc_msgSend__computeOpticalFlow(self, v20, v21, v22);
    }
  }

  result = 0;
  ++self->_streamFrameCount;
  return result;
}

- (int)computeKeypointsFromForwardFlow:(__CVBuffer *)a3 backwardFlow:(__CVBuffer *)a4 bidirectionalError:(float)a5 blockSize:(int)a6 outNumKeypoints:(unsigned __int16 *)a7
{
  v8 = *&a6;
  v12 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_mtlContext, a2, a3, 65, 7, 0);
  v14 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_mtlContext, v13, a4, 65, 7, 0);
  v18 = objc_msgSend_commandBuffer(self->_commandQueue, v15, v16, v17);
  objc_msgSend_setLabel_(v18, v19, @"LKT::KeypointsFromFlow", v20);
  *&v21 = a5;
  objc_msgSend__enqueueKeypointsFromFlowWithCommandBuffer_in_uv_fwd_tex_in_uv_bwd_tex_out_kpt_buf_block_size_bidirectional_error_out_num_keypoints_(self, v22, v18, v12, v14, self->_kpt_buf, v8, a7, v21);
  objc_msgSend_commit(v18, v23, v24, v25);

  return 0;
}

- (void)_setDefaultParameters
{
  self->_nwarpings = 3;
  self->_useNonLocalRegularization = 0;
  *&self->_nlreg_radius = 0x200000004;
  *&self->_nlreg_sigma_l = 0x4040000040C00000;
  self->_nlreg_sigma_w = 0.25;
}

- (int)_initMemory:(int)a3 height:(int)a4 nscales:(int)a5
{
  v9 = 0;
  self->_isValid = 0;
  v16 = a4;
  v17 = a3;
  if (a3 >= 8 && a4 >= 8)
  {
    v9 = 0;
    do
    {
      calculateHalfResolution(&v17, &v16);
      ++v9;
      if (v17 >= 8)
      {
        v10 = v16 >= 7;
        v11 = v16 == 7;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    while (!v11 && v10);
  }

  self->_ref_size.width = a3;
  self->_ref_size.height = a4;
  self->_aux_size.width = a3;
  self->_aux_size.height = a4;
  if (a5 >= 0)
  {
    v12 = a5;
  }

  else
  {
    v12 = v9;
  }

  self->_nscales = v12;
  self->_maxThreadExecutionWidth = 0;
  self->_w_pxbuf = 0;
  *&self->_G0_pxbuf = 0u;
  *&self->_C0_pxbuf = 0u;
  uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
  self->_uv_fwd_tex_user_ref = 0;

  result = 0;
  *&self->_current_frame_index = 0;
  *self->_uv_fwd_pxbuf = 0u;
  *self->_uv_bwd_pxbuf = 0u;
  nscales = self->_nscales;
  if (nscales <= v9 && nscales <= 9)
  {
    return -12780;
  }

  return result;
}

- (void)_setupPipelines
{
  v3 = 0;
  computePipelines = self->_computePipelines;
  do
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = objc_msgSend_initWithUTF8String_(v5, v6, off_278BBD848[v3], v7);
    v10 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v9, v8, 0);
    objc_storeStrong(computePipelines, v10);
    v17 = objc_msgSend_threadExecutionWidth(v10, v11, v12, v13);
    maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
    if (v17 > maxThreadExecutionWidth)
    {
      maxThreadExecutionWidth = objc_msgSend_threadExecutionWidth(v10, v14, v15, v16);
    }

    self->_maxThreadExecutionWidth = maxThreadExecutionWidth;

    ++computePipelines;
    ++v3;
  }

  while (v3 != 22);
}

- (int)_computeOpticalFlow
{
  nscales = self->_nscales;
  v3 = (nscales - 1);
  if (nscales >= 1)
  {
    v5 = 0;
    v6 = 0;
    I_tex = self->_I_tex;
    G0_tex = self->_G0_tex;
    C0_tex = self->_C0_tex;
    G1_tex = self->_G1_tex;
    p_uv_fwd_tex_user_ref = &self->_uv_fwd_tex_user_ref;
    C1_tex = self->_C1_tex;
    uv_fwd_tex = self->_uv_fwd_tex;
    w_tex = self->_w_tex;
    I_u32_alias_tex = self->_I_u32_alias_tex;
    uv_fwd_u32_alias_tex = self->_uv_fwd_u32_alias_tex;
    v8 = nscales - 1;
    do
    {
      v9 = v5;
      v10 = I_tex[self->_current_frame_index][v3];
      v11 = I_tex[self->_current_frame_index ^ 1][v3];
      v5 = objc_msgSend_commandBuffer(self->_commandQueue, v12, v13, v14);

      v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"LKT:ComputeFlow level %d", v16, v3);
      objc_msgSend_setLabel_(v5, v18, v17, v19);

      objc_msgSend__computeFeaturesWithCommandBuffer_in_tex_out_tex_(self, v20, v5, v10, G0_tex[v3]);
      objc_msgSend__computeFeaturesWithCommandBuffer_in_tex_out_tex_(self, v21, v5, v11, G1_tex[v3]);
      objc_msgSend__computeFeaturesDerivativesWithCommandBuffer_in_tex_out_tex_(self, v22, v5, G0_tex[v3], C0_tex[v3]);
      objc_msgSend__computeFeaturesDerivativesWithCommandBuffer_in_tex_out_tex_(self, v23, v5, G1_tex[v3], C1_tex[v3]);
      nwarpings = self->_nwarpings;
      if (nwarpings < 1)
      {
        v29 = 0;
      }

      else
      {
        v41 = v11;
        v42 = v10;
        v28 = 0;
        v29 = 0;
        do
        {
          v30 = v28 + 1;
          if (v3 || v30 != nwarpings || (v31 = p_uv_fwd_tex_user_ref, self->_useNonLocalRegularization))
          {
            v31 = &uv_fwd_tex[v6 ^ 1][v3];
          }

          v33 = *v31;
          if (self->_useNonLocalRegularization && v30 == self->_nwarpings)
          {
            v34 = w_tex[v3];

            v29 = v34;
          }

          objc_msgSend__doSolverWithCommandBuffer_scale_in_uv_tex_in_G0_tex_in_G1_tex_in_C0_tex_in_C1_tex_out_uv_tex_out_w_tex_(self, v32, v5, v3, uv_fwd_tex[v6][v8], G0_tex[v3], G1_tex[v3], C0_tex[v3], C1_tex[v3], v33, v29);
          v6 ^= 1uLL;

          nwarpings = self->_nwarpings;
          ++v28;
          v8 = v3;
        }

        while (v28 < nwarpings);
        v8 = v3;
        v11 = v41;
        v10 = v42;
      }

      if (self->_useNonLocalRegularization)
      {
        v35 = &uv_fwd_tex[v6 ^ 1][v3];
        if (!v3)
        {
          v35 = p_uv_fwd_tex_user_ref;
        }

        objc_msgSend__doNLRegularizationWithCommandBuffer_in_uv_tex_join_tex_w_tex_out_uv_tex_(self, v24, v5, uv_fwd_u32_alias_tex[v6][v3], I_u32_alias_tex[self->_current_frame_index][v3], v29, *v35);
        v6 ^= 1uLL;
      }

      objc_msgSend_commit(v5, v24, v25, v26);
    }

    while (v3-- > 0);
  }

  return 0;
}

- (int)_createImagePyramidWithCommandBuffer:(id)a3 in_pixelbuf:(__CVBuffer *)a4 I_idx:(int)a5
{
  v9 = a3;
  inputPixelFormat = self->_inputPixelFormat;
  if (inputPixelFormat)
  {
    if (inputPixelFormat == 2)
    {
      v38 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_mtlContext, v8, a4, 10, 7, 0);
      v39 = self + 80 * a5;
      v40 = *(v39 + 66);
      *(v39 + 66) = v38;
    }

    else if (inputPixelFormat == 1)
    {
      v11 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_mtlContext, v8, a4, 70, 7, 0);
      v15 = objc_msgSend_computeCommandEncoder(v9, v12, v13, v14);
      objc_msgSend_setComputePipelineState_(v15, v16, self->_computePipelines[0], v17);
      objc_msgSend_setTexture_atIndex_(v15, v18, v11, 0);
      objc_msgSend_setTexture_atIndex_(v15, v19, self->_I_tex[a5][0], 1);
      v23 = objc_msgSend_threadExecutionWidth(self->_computePipelines[0], v20, v21, v22);
      v27 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[0], v24, v25, v26) / v23;
      v53 = (v23 + objc_msgSend_width(v11, v28, v29, v30) - 1) / v23;
      v54 = (v27 + objc_msgSend_height(v11, v31, v32, v33) - 1) / v27;
      v55 = 1;
      v59[0] = v23;
      v59[1] = v27;
      v59[2] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v15, v34, &v53, v59);
      objc_msgSend_endEncoding(v15, v35, v36, v37);
    }
  }

  else
  {
    Width = CVPixelBufferGetWidth(a4);
    Height = CVPixelBufferGetHeight(a4);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    CVPixelBufferLockBaseAddress(a4, 0);
    v43 = self->_I_tex[a5][0];
    BaseAddress = CVPixelBufferGetBaseAddress(a4);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
    v56 = Width;
    v57 = Height;
    v58 = 1;
    objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(v43, v46, &v53, 0, BaseAddress, BytesPerRow);
    CVPixelBufferUnlockBaseAddress(a4, 0);
  }

  if (self->_nscales >= 2)
  {
    v47 = &self->_I_tex[a5][1];
    v48 = 1;
    do
    {
      v49 = *v47;
      v50 = *(v47 - 1);
      objc_msgSend__downscale2XWithCommandBuffer_in_tex_out_tex_(self, v51, v9, v50, v49);

      ++v48;
      ++v47;
    }

    while (v48 < self->_nscales);
  }

  return 0;
}

- (int)_zeroFlowWithCommandBuffer:(id)a3 uv_tex:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_computeCommandEncoder(a3, v7, v8, v9);
  objc_msgSend_setComputePipelineState_(v10, v11, self->_computePipelines[1], v12);
  objc_msgSend_setTexture_atIndex_(v10, v13, v6, 0);
  v17 = objc_msgSend_threadExecutionWidth(self->_computePipelines[1], v14, v15, v16);
  v21 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[1], v18, v19, v20) / v17;
  v25 = (v17 + objc_msgSend_width(v6, v22, v23, v24) - 1) / v17;
  LODWORD(self) = objc_msgSend_height(v6, v26, v27, v28);

  v35[0] = v25;
  v35[1] = (v21 + self - 1) / v21;
  v35[2] = 1;
  v34[0] = v17;
  v34[1] = v21;
  v34[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v10, v29, v35, v34);
  objc_msgSend_endEncoding(v10, v30, v31, v32);

  return 0;
}

- (int)_downscale2XWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5
{
  v8 = a5;
  v9 = a4;
  v13 = objc_msgSend_computeCommandEncoder(a3, v10, v11, v12);
  objc_msgSend_setComputePipelineState_(v13, v14, self->_computePipelines[2], v15);
  objc_msgSend_setTexture_atIndex_(v13, v16, v9, 0);

  objc_msgSend_setTexture_atIndex_(v13, v17, v8, 1);
  LODWORD(a3) = objc_msgSend_threadExecutionWidth(self->_computePipelines[2], v18, v19, v20);
  v24 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[2], v21, v22, v23) / a3;
  v28 = (a3 + objc_msgSend_width(v8, v25, v26, v27) - 1) / a3;
  LODWORD(self) = objc_msgSend_height(v8, v29, v30, v31);

  v38[0] = v28;
  v38[1] = (v24 + self - 1) / v24;
  v38[2] = 1;
  v37[0] = a3;
  v37[1] = v24;
  v37[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v13, v32, v38, v37);
  objc_msgSend_endEncoding(v13, v33, v34, v35);

  return 0;
}

- (int)_computeFeaturesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5
{
  v8 = a5;
  v9 = a4;
  v13 = objc_msgSend_computeCommandEncoder(a3, v10, v11, v12);
  objc_msgSend_setComputePipelineState_(v13, v14, self->_computePipelines[3], v15);
  objc_msgSend_setTexture_atIndex_(v13, v16, v9, 0);
  objc_msgSend_setTexture_atIndex_(v13, v17, v8, 1);

  LODWORD(a3) = objc_msgSend_threadExecutionWidth(self->_computePipelines[3], v18, v19, v20);
  LODWORD(v8) = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[3], v21, v22, v23) / a3;
  v27 = (a3 + objc_msgSend_width(v9, v24, v25, v26) - 1) / a3;
  LODWORD(self) = objc_msgSend_height(v9, v28, v29, v30);

  v37[0] = v27;
  v37[1] = (v8 + self - 1) / v8;
  v37[2] = 1;
  v36[0] = a3;
  v36[1] = v8;
  v36[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v13, v31, v37, v36);
  objc_msgSend_endEncoding(v13, v32, v33, v34);

  return 0;
}

- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5
{
  v8 = a5;
  v9 = a4;
  v13 = objc_msgSend_computeCommandEncoder(a3, v10, v11, v12);
  objc_msgSend_setComputePipelineState_(v13, v14, self->_computePipelines[5], v15);
  objc_msgSend_setTexture_atIndex_(v13, v16, v9, 0);
  objc_msgSend_setTexture_atIndex_(v13, v17, v8, 1);

  LODWORD(a3) = objc_msgSend_threadExecutionWidth(self->_computePipelines[5], v18, v19, v20);
  LODWORD(v8) = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[5], v21, v22, v23) / a3;
  v27 = (a3 + objc_msgSend_width(v9, v24, v25, v26) - 1) / a3;
  LODWORD(self) = objc_msgSend_height(v9, v28, v29, v30);

  v37[0] = v27;
  v37[1] = (v8 + self - 1) / v8;
  v37[2] = 1;
  v36[0] = a3;
  v36[1] = v8;
  v36[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v13, v31, v37, v36);
  objc_msgSend_endEncoding(v13, v32, v33, v34);

  return 0;
}

- (int)_doSolverWithCommandBuffer:(id)a3 scale:(int)a4 in_uv_tex:(id)a5 in_G0_tex:(id)a6 in_G1_tex:(id)a7 in_C0_tex:(id)a8 in_C1_tex:(id)a9 out_uv_tex:(id)a10 out_w_tex:(id)a11
{
  v114 = a11;
  v17 = a10;
  v112 = a9;
  v111 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a3;
  LODWORD(a3) = objc_msgSend_width(v17, v22, v23, v24);
  v28 = objc_msgSend_height(v17, v25, v26, v27);
  v113 = a3 - 1;
  LODWORD(a6) = (a3 - 1 + self->_maxThreadExecutionWidth) / self->_maxThreadExecutionWidth * self->_maxThreadExecutionWidth;
  v128[0] = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  v127 = _D0;
  objc_msgSend__computeScalingFactor_dst_tex_scale_xy_inv_coeff_(LKTFlowGPU, v35, v20, v17, &v127, v128);
  v121[0] = a3;
  v121[1] = v28;
  v122 = a6;
  v123 = v127;
  v124 = 0;
  v34 = v128;
  v36 = vld1_dup_f32(v34);
  v125 = v36;
  v126 = 0;
  v40 = objc_msgSend_computeCommandEncoder(v21, v37, v38, v39);
  objc_msgSend_setComputePipelineState_(v40, v41, self->_computePipelines[16], v42);
  objc_msgSend_setTexture_atIndex_(v40, v43, v20, 0);
  objc_msgSend_setTexture_atIndex_(v40, v44, v19, 1);

  objc_msgSend_setTexture_atIndex_(v40, v45, v18, 2);
  objc_msgSend_setTexture_atIndex_(v40, v46, v111, 3);

  objc_msgSend_setTexture_atIndex_(v40, v47, v112, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v40, v48, self->_Adiagb_buf[0], 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v40, v49, self->_Ixy_buf[0], 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v40, v50, self->_idt_buf, 0, 2);
  objc_msgSend_setBytes_length_atIndex_(v40, v51, v121, 48, 3);
  LODWORD(v19) = objc_msgSend_threadExecutionWidth(self->_computePipelines[16], v52, v53, v54);
  v58 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[16], v55, v56, v57);
  v118 = (v113 + v19) / v19;
  v119 = (v28 - 1 + v58 / v19) / (v58 / v19);
  v120 = 1;
  v115 = v19;
  v116 = v58 / v19;
  v117 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v40, v59, &v118, &v115);
  objc_msgSend_endEncoding(v40, v60, v61, v62);

  v63 = v21;
  v67 = objc_msgSend_computeCommandEncoder(v21, v64, v65, v66);
  objc_msgSend_setComputePipelineState_(v67, v68, self->_computePipelines[17], v69);
  objc_msgSend_setBuffer_offset_atIndex_(v67, v70, self->_Adiagb_buf[0], 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v67, v71, self->_Ixy_buf[0], 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v67, v72, self->_Adiagb_buf[1], 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v67, v73, self->_Ixy_buf[1], 0, 3);
  objc_msgSend_setBytes_length_atIndex_(v67, v74, v121, 48, 4);
  LODWORD(v19) = objc_msgSend_threadExecutionWidth(self->_computePipelines[17], v75, v76, v77);
  v81 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[17], v78, v79, v80);
  v118 = (v113 + v19) / v19;
  v119 = (v28 - 1 + v81 / v19) / (v81 / v19);
  v120 = 1;
  v115 = v19;
  v116 = v81 / v19;
  v117 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v67, v82, &v118, &v115);
  objc_msgSend_endEncoding(v67, v83, v84, v85);

  v89 = objc_msgSend_computeCommandEncoder(v63, v86, v87, v88);

  objc_msgSend_setComputePipelineState_(v89, v90, self->_computePipelines[18], v91);
  objc_msgSend_setBuffer_offset_atIndex_(v89, v92, self->_Adiagb_buf[1], 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v89, v93, self->_Ixy_buf[1], 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v89, v94, self->_idt_buf, 0, 2);
  objc_msgSend_setTexture_atIndex_(v89, v95, v20, 0);

  objc_msgSend_setTexture_atIndex_(v89, v96, v17, 1);
  objc_msgSend_setTexture_atIndex_(v89, v97, v114, 2);

  objc_msgSend_setBytes_length_atIndex_(v89, v98, v121, 48, 3);
  LODWORD(v19) = objc_msgSend_threadExecutionWidth(self->_computePipelines[18], v99, v100, v101);
  v105 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[18], v102, v103, v104);
  v118 = (v113 + v19) / v19;
  v119 = (v28 - 1 + v105 / v19) / (v105 / v19);
  v120 = 1;
  v115 = v19;
  v116 = v105 / v19;
  v117 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v89, v106, &v118, &v115);
  objc_msgSend_endEncoding(v89, v107, v108, v109);

  return 0;
}

- (int)_enqueueFlowConsistencyWithCommandBuffer:(id)a3 in_uv0_tex:(id)a4 in_uv1_tex:(id)a5 out_uv_tex:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  LODWORD(a5) = objc_msgSend_width(v10, v14, v15, v16);
  v20 = objc_msgSend_height(v10, v17, v18, v19);
  __asm { FMOV            V0.2S, #1.0 }

  v69 = _D0;
  v70 = _D0;
  v68 = 1065353216;
  v67 = 1065353216;
  objc_msgSend__computeScalingFactor_dst_tex_scale_xy_inv_coeff_(LKTFlowGPU, v27, v12, v10, &v70, &v68);
  objc_msgSend__computeScalingFactor_dst_tex_scale_xy_inv_coeff_(LKTFlowGPU, v28, v11, v10, &v69, &v67);
  v62 = 0;
  v61[0] = a5;
  v61[1] = v20;
  v63 = v70;
  v64 = v69;
  v26 = &v68;
  v29 = vld1_dup_f32(v26);
  v30 = vld1_dup_f32(&v67);
  v65 = v29;
  v66 = v30;
  v34 = objc_msgSend_computeCommandEncoder(v13, v31, v32, v33);

  objc_msgSend_setComputePipelineState_(v34, v35, self->_computePipelines[19], v36);
  objc_msgSend_setTexture_atIndex_(v34, v37, v12, 0);

  objc_msgSend_setTexture_atIndex_(v34, v38, v11, 1);
  objc_msgSend_setTexture_atIndex_(v34, v39, v10, 2);
  objc_msgSend_setBytes_length_atIndex_(v34, v40, v61, 48, 0);
  LODWORD(v11) = objc_msgSend_threadExecutionWidth(self->_computePipelines[19], v41, v42, v43);
  LODWORD(v13) = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[19], v44, v45, v46) / v11;
  v50 = (v11 + objc_msgSend_width(v10, v47, v48, v49) - 1) / v11;
  LODWORD(self) = objc_msgSend_height(v10, v51, v52, v53);

  v60[0] = v50;
  v60[1] = (v13 + self - 1) / v13;
  v60[2] = 1;
  v59[0] = v11;
  v59[1] = v13;
  v59[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v34, v54, v60, v59);
  objc_msgSend_endEncoding(v34, v55, v56, v57);

  return 0;
}

- (int)_doNLRegularizationWithCommandBuffer:(id)a3 in_uv_tex:(id)a4 join_tex:(id)a5 w_tex:(id)a6 out_uv_tex:(id)a7
{
  v12 = self;
  v53[1] = 0;
  v53[0] = *&self->_nlreg_radius;
  v7.i64[0] = *&self->_nlreg_sigma_l;
  v7.i32[3] = LODWORD(self->_nlreg_sigma_w);
  __asm { FMOV            V1.4S, #1.0 }

  v18 = vdivq_f32(_Q1, vaddq_f32(v7, v7));
  v18.i32[2] = v18.i32[1];
  v54 = v18;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v26 = objc_msgSend_computeCommandEncoder(a3, v23, v24, v25);
  objc_msgSend_setComputePipelineState_(v26, v27, v12->_computePipelines[21], v28);
  objc_msgSend_setTexture_atIndex_(v26, v29, v22, 0);
  objc_msgSend_setTexture_atIndex_(v26, v30, v21, 1);

  objc_msgSend_setTexture_atIndex_(v26, v31, v20, 2);
  objc_msgSend_setTexture_atIndex_(v26, v32, v19, 3);

  objc_msgSend_setBytes_length_atIndex_(v26, v33, v53, 32, 0);
  LODWORD(v19) = objc_msgSend_threadExecutionWidth(v12->_computePipelines[21], v34, v35, v36);
  LODWORD(a3) = objc_msgSend_maxTotalThreadsPerThreadgroup(v12->_computePipelines[21], v37, v38, v39) / v19;
  LODWORD(v20) = (v19 + objc_msgSend_width(v22, v40, v41, v42) / 2 - 1) / v19;
  LODWORD(v12) = objc_msgSend_height(v22, v43, v44, v45);

  v52[0] = v20;
  v52[1] = (a3 + v12 / 2 - 1) / a3;
  v52[2] = 1;
  v51[0] = v19;
  v51[1] = a3;
  v51[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v26, v46, v52, v51);
  objc_msgSend_endEncoding(v26, v47, v48, v49);

  return 0;
}

+ (void)_computeScalingFactor:(id)a1 dst_tex:(SEL)a2 scale_xy_inv:(id)a3 coeff:(id)a4
{
  v6 = v5;
  v7 = v4;
  v49 = a3;
  v9 = a4;
  v13 = objc_msgSend_width(v9, v10, v11, v12);
  v17 = v13 / objc_msgSend_width(v49, v14, v15, v16);
  v21 = objc_msgSend_height(v9, v18, v19, v20);
  v25 = objc_msgSend_height(v49, v22, v23, v24);
  LODWORD(v29) = 1.5;
  *&v30 = v21 / v25;
  if (v17 <= 1.5 || *&v30 <= 1.5)
  {
    v32 = objc_msgSend_width(v9, v26, v27, v28, v29, v30);
    if (v32 != objc_msgSend_width(v49, v33, v34, v35) || (v39 = objc_msgSend_height(v9, v36, v37, v38), v39 != objc_msgSend_height(v49, v40, v41, v42)))
    {
      sub_23C473FB4();
    }

    __asm { FMOV            V0.2S, #1.0 }

    v48 = 1.0;
  }

  else
  {
    _D0 = 0x3F0000003F000000;
    v48 = 2.0;
  }

  *v6 = v48;
  *v7 = _D0;
}

- (int)setICPWeights:(id)a3
{
  objc_storeStrong(&self->_w_icp_tex_user_ref, a3);
  if (self->_w_icp_tex_user_ref)
  {
    return 0;
  }

  else
  {
    return -12780;
  }
}

- (void)setPresetICP:(int64_t)a3 withRegularizerTerms:(id)a4 decimation_factor:(int)a5
{
  v8 = a4;
  v20 = v8;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      nscales = self->_nscales;
      v12 = __OFSUB__(nscales, 2);
      v18 = nscales - 2;
      if ((v18 < 0) ^ v12 | (v18 == 0))
      {
        v18 = 0;
      }

      self->_nscales_icp = v18;
      v14 = 1;
      goto LABEL_21;
    }

    if (a3 != 2)
    {
      goto LABEL_25;
    }

    v15 = self->_nscales;
    v12 = __OFSUB__(v15, 2);
    v16 = v15 - 2;
    if ((v16 < 0) ^ v12 | (v16 == 0))
    {
      v16 = 0;
    }

    goto LABEL_15;
  }

  switch(a3)
  {
    case 3:
      v16 = self->_nscales;
LABEL_15:
      self->_nscales_icp = v16;
      v14 = 2;
LABEL_21:
      self->_warping_scheme_icp = v14;
      objc_msgSend__setICPRegularizerTerms_(self, v8, v8, v10);
      goto LABEL_22;
    case 4:
      self->_nscales_icp = self->_nscales;
      v14 = 4;
      goto LABEL_21;
    case 5:
      v11 = self->_nscales;
      v12 = __OFSUB__(v11, 2);
      v13 = v11 - 2;
      if ((v13 < 0) ^ v12 | (v13 == 0))
      {
        v13 = 0;
      }

      self->_nscales_icp = v13;
      v14 = 1000;
      goto LABEL_21;
  }

LABEL_25:
  objc_msgSend__setDefaultParameters(self, v8, v9, v10);
  objc_msgSend__setICPRegularizerTerms_(self, v20, v20, v19);
LABEL_22:
  self->_decimation_factor_icp = a5;
}

- (uint64_t)estimatePanoRegistration:(double)a3 metadata:(double)a4 initTForm:(uint64_t)a5
{
  v12 = a7;
  if (*(a1 + 2168) == 1)
  {
    v13 = objc_msgSend_commandBuffer(*(a1 + 16), v9, v10, v11);
    objc_msgSend_setLabel_(v13, v14, @"LKT::Pyramid", v15);
    objc_msgSend__zeroFlowWithCommandBuffer_uv_tex_(a1, v16, v13, *(a1 + 8 * *(a1 + 2176) + 1352));
    objc_msgSend__createImagePyramidWithCommandBuffer_in_pixelbuf_I_idx_(a1, v17, v13, a6, *(a1 + 2000));
    objc_msgSend_commit(v13, v18, v19, v20);

    *(a1 + 2000) ^= 1u;
    if (*(a1 + 2004) < 1)
    {
      v25 = objc_msgSend_commandBuffer(*(a1 + 16), v21, v22, v23);
      objc_msgSend_setLabel_(v25, v26, @"ICP::Init weights", v27);
      objc_msgSend__initICPWeightsWithCommandBuffer_(a1, v28, v25, v29);
      objc_msgSend_commit(v25, v30, v31, v32);
      objc_msgSend__setParametricTransformFromGyro_(a1, v33, v34, v35, a2, a3, a4);
      objc_msgSend__resetLoss(a1, v36, v37, v38);
    }

    else
    {
      objc_msgSend__panoRegistration_metadata_(a1, v21, v12, v23, a2, a3, a4);
    }

    v24 = 0;
    ++*(a1 + 2004);
  }

  else
  {
    v24 = 4294954514;
  }

  return v24;
}

- (int)_initMemoryICP:(int)a3
{
  self->_flow_upper_most_scale = a3;
  icp_reduc_buf = self->_icp_reduc_buf;
  self->_icp_reduc_buf = 0;

  w_icp_tex_user_ref = self->_w_icp_tex_user_ref;
  self->_w_icp_tex_user_ref = 0;

  *&self->_icp_regularizer_term[8] = 0;
  *self->_icp_regularizer_term = 0u;
  *&self->_icp_regularizer_term[4] = 0u;
  return 0;
}

- (int)_setupBufferPyramids
{
  if (self->_nscales >= 1)
  {
    v3 = 0;
    v41 = vmovn_s64(vcvtq_s64_f64(self->_aux_size));
    v39 = vmovn_s64(vcvtq_s64_f64(self->_ref_size));
    aux_pyr_size = self->_aux_pyr_size;
    I_tex = self->_I_tex;
    do
    {
      v6.i64[0] = v39.i32[0];
      v6.i64[1] = v39.i32[1];
      aux_pyr_size[-10] = vcvtq_f64_s64(v6);
      v6.i64[0] = v41.i32[0];
      v6.i64[1] = v41.i32[1];
      *aux_pyr_size++ = vcvtq_f64_s64(v6);
      v7 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], a2, 70, v39.i32[0], v39.i32[1], 0, *&v39);
      objc_msgSend_setUsage_(v7, v8, 19, v9);
      v13 = objc_msgSend_device(self->_mtlContext, v10, v11, v12);
      v16 = objc_msgSend_newTextureWithDescriptor_(v13, v14, v7, v15);
      v17 = (*I_tex)[0];
      (*I_tex)[0] = v16;

      v20 = objc_msgSend_newTextureViewWithPixelFormat_((*I_tex)[0], v18, 53, v19);
      v21 = (*I_tex)[20];
      (*I_tex)[20] = v20;

      v39 = calculateHalfResolutionWithVector2(v40).n64_u64[0];
      v23 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v22, 70, v41.i32[0], v41.i32[1], 0);
      objc_msgSend_setUsage_(v23, v24, 19, v25);
      v29 = objc_msgSend_device(self->_mtlContext, v26, v27, v28);
      v32 = objc_msgSend_newTextureWithDescriptor_(v29, v30, v23, v31);
      v33 = (*I_tex)[10];
      (*I_tex)[10] = v32;

      v36 = objc_msgSend_newTextureViewWithPixelFormat_((*I_tex)[10], v34, 53, v35);
      v37 = (*I_tex)[30];
      (*I_tex)[30] = v36;

      v41 = calculateHalfResolutionWithVector2(*&v41).n64_u64[0];
      ++v3;
      I_tex = (I_tex + 8);
    }

    while (v3 < self->_nscales);
  }

  return 0;
}

- (void)_setICPRegularizerTerms:(id)a3
{
  v20 = a3;
  if (objc_msgSend_count(v20, v4, v5, v6) > 0xA)
  {
    v10 = 10;
  }

  else
  {
    v10 = objc_msgSend_count(v20, v7, v8, v9);
  }

  nscales_icp = self->_nscales_icp;
  if (v10 < nscales_icp)
  {
    if (objc_msgSend_count(v20, v7, v8, v9) > 0xA)
    {
      v13 = v20;
      if (!v20)
      {
        goto LABEL_15;
      }

      nscales_icp = 10;
      goto LABEL_11;
    }

    nscales_icp = objc_msgSend_count(v20, v7, v12, v9);
  }

  v13 = v20;
  if (!v20)
  {
    goto LABEL_15;
  }

  if (!nscales_icp)
  {
    goto LABEL_14;
  }

LABEL_11:
  for (i = 0; i != nscales_icp; ++i)
  {
    v15 = objc_msgSend_objectAtIndexedSubscript_(v20, v7, i, v9);
    objc_msgSend_floatValue(v15, v16, v17, v18);
    self->_icp_regularizer_term[i] = v19;

    v13 = v20;
  }

  if (nscales_icp <= 9)
  {
LABEL_14:
    bzero(&self->_icp_regularizer_term[nscales_icp], 40 - 4 * nscales_icp);
    v13 = v20;
  }

LABEL_15:
}

- (int)_initICPWeightsWithCommandBuffer:(id)a3
{
  v5 = objc_msgSend_computeCommandEncoder(a3, a2, a3, v3);
  objc_msgSend_setComputePipelineState_(v5, v6, self->_computePipelines[11], v7);
  objc_msgSend_setTexture_atIndex_(v5, v8, self->_w_icp_tex_user_ref, 0);
  v12 = objc_msgSend_threadExecutionWidth(self->_computePipelines[11], v9, v10, v11);
  v16 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[11], v13, v14, v15) / v12;
  v20 = v12 + objc_msgSend_width(self->_w_icp_tex_user_ref, v17, v18, v19) - 1;
  w_icp_tex_user_ref = self->_w_icp_tex_user_ref;
  v31[0] = v20 / v12;
  v31[1] = (v16 + objc_msgSend_height(w_icp_tex_user_ref, v22, v23, v24) - 1) / v16;
  v31[2] = 1;
  v30[0] = v12;
  v30[1] = v16;
  v30[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v5, v25, v31, v30);
  objc_msgSend_endEncoding(v5, v26, v27, v28);

  return 0;
}

- (int)_computeFeaturesAndTGSumWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5
{
  v8 = a5;
  v9 = a4;
  v13 = objc_msgSend_computeCommandEncoder(a3, v10, v11, v12);
  objc_msgSend_setComputePipelineState_(v13, v14, self->_computePipelines[4], v15);
  objc_msgSend_setTexture_atIndex_(v13, v16, v9, 0);
  objc_msgSend_setTexture_atIndex_(v13, v17, v8, 1);

  objc_msgSend_setTexture_atIndex_(v13, v18, self->_w_icp_tex_user_ref, 2);
  objc_msgSend_setTexture_atIndex_(v13, v19, self->_icp_derivatives_tg_sum, 3);
  LODWORD(a3) = objc_msgSend_threadExecutionWidth(self->_computePipelines[4], v20, v21, v22);
  LODWORD(v8) = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[4], v23, v24, v25) / a3;
  v29 = (a3 + objc_msgSend_width(v9, v26, v27, v28) - 1) / a3;
  LODWORD(self) = objc_msgSend_height(v9, v30, v31, v32);

  v39[0] = v29;
  v39[1] = (v8 + self - 1) / v8;
  v39[2] = 1;
  v38[0] = a3;
  v38[1] = v8;
  v38[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v13, v33, v39, v38);
  objc_msgSend_endEncoding(v13, v34, v35, v36);

  return 0;
}

- (int)_resampleTransformWithCommandBuffer:(id)a3 from:(id)a4 to:(id)a5
{
  v8 = a5;
  v9 = a4;
  v13 = objc_msgSend_computeCommandEncoder(a3, v10, v11, v12);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v39[0] = objc_msgSend_width(v9, v14, v15, v16);
  LODWORD(a3) = objc_msgSend_height(v9, v17, v18, v19);

  v39[1] = a3;
  v39[2] = objc_msgSend_width(v8, v20, v21, v22);
  LODWORD(a3) = objc_msgSend_height(v8, v23, v24, v25);

  v39[3] = a3;
  objc_msgSend_setComputePipelineState_(v13, v26, self->_computePipelines[10], v27);
  objc_msgSend_setBuffer_offset_atIndex_(v13, v28, self->_icp_param_tform_buf, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v13, v29, v39, 96, 1);
  v37 = vdupq_n_s64(1uLL);
  v38 = 1;
  v35 = v37;
  v36 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v13, v30, &v37, &v35);
  objc_msgSend_endEncoding(v13, v31, v32, v33);

  return 0;
}

- (void)_computeICPThreadgroupsWithSize:(id *)a3 computePipeline:(id)a4 threadsPerThreadgroup:(id *)a5 threadgroupsPerGrid:(id *)a6 debug_string:(char *)a7
{
  var0 = a3->var0;
  var1 = a3->var1;
  v11 = a4;
  v15 = objc_msgSend_threadExecutionWidth(v11, v12, v13, v14);
  v19 = objc_msgSend_maxTotalThreadsPerThreadgroup(v11, v16, v17, v18);

  v20 = v19 / v15;
  if (a5)
  {
    a5->var0 = v15;
    a5->var1 = v20;
    a5->var2 = 1;
  }

  if (a6)
  {
    a6->var0 = (var0 + v15 - 1) / v15;
    a6->var1 = (var1 + v20 - 1) / v20;
    a6->var2 = 1;
  }
}

- (void)_computeICPThreadgroupsForDecimation:(unint64_t)a3 threadsPerThreadgroupForUniform:(id *)a4 threadsPerThreadgroupForPass1:(id *)a5 threadgroupsPerGridForPass1:(id *)a6
{
  if (a3)
  {
    if (a6)
    {
      a6->var1 /= a3;
    }

    if (a4)
    {
      if (a5)
      {
        *&a4->var0 = *&a5->var0;
      }
    }
  }

  else if (a4)
  {
    a4->var0 = 0;
    a4->var1 = 0;
  }
}

- (void)_computeICPThreadgroupsForActivation:(id *)a3
{
  if (a3)
  {
    a3->var0 = objc_msgSend_width(self->_icp_derivatives_tg_sum, a2, a3, v3) >> 1;
    a3->var1 = objc_msgSend_height(self->_icp_derivatives_tg_sum, v6, v7, v8) >> 1;
    a3->var2 = 1;
  }
}

- (int)_getICPNWarp:(int)a3 scale:(int)a4
{
  if (a4 < 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (a3 == 1000)
  {
    return v4;
  }

  else
  {
    return a3;
  }
}

- (uint64_t)_panoRegistration:(double)a3 metadata:(double)a4
{
  v7 = a6;
  objc_msgSend__setParametricTransformFromGyro_(a1, v8, v9, v10, a2, a3, a4);
  objc_msgSend__copyTransfromToGPU(a1, v11, v12, v13);
  v17 = *(a1 + 2176);
  v18 = (v17 - 1);
  if (v17 >= 1)
  {
    v84 = v7;
    v19 = 0;
    v20 = 0;
    v21 = a1 + 864;
    v22 = a1 + 944;
    v97 = a1 + 1040;
    v88 = a1 + 1120;
    v89 = a1 + 528;
    v95 = (a1 + 2008);
    v101 = a1 + 1360;
    v94 = a1 + 1248;
    v85 = a1 + 688;
    v86 = a1 + 1680;
    v105 = a1;
    v87 = a1 + 2104;
    v103 = v17 - 1;
    v98 = a1 + 864;
    v91 = a1 + 944;
    do
    {
      v23 = *(v89 + 80 * *(v105 + 2000) + 8 * v18);
      v96 = *(v89 + 80 * (*(v105 + 2000) ^ 1) + 8 * v18);
      v27 = objc_msgSend_commandBuffer(*(v105 + 16), v24, v25, v26);

      v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"Panorama:panoRegistration level %d", v29, v18);
      objc_msgSend_setLabel_(v27, v31, v30, v32);

      if (v18 || (v35 = *(v105 + 2192), !v35))
      {
        objc_msgSend__computeFeaturesWithCommandBuffer_in_tex_out_tex_(v105, v33, v27, v23, *(v21 + 8 * v18));
        v90 = 0;
        v35 = 0;
      }

      else
      {
        objc_msgSend__computeFeaturesAndTGSumWithCommandBuffer_in_tex_out_tex_(v105, v33, v27, v23, *(v105 + 864));
        v90 = 1;
      }

      objc_msgSend__computeFeaturesWithCommandBuffer_in_tex_out_tex_(v105, v34, v27, v96, *(v22 + 8 * v18));
      objc_msgSend__computeFeaturesDerivativesWithCommandBuffer_in_tex_out_tex_(v105, v36, v27, *(v21 + 8 * v18), *(v97 + 8 * v18));
      objc_msgSend__computeFeaturesDerivativesWithCommandBuffer_in_tex_out_tex_(v105, v37, v27, *(v22 + 8 * v18), *(v88 + 8 * v18));
      v41 = v105;
      v93 = v23;
      if (v18 >= *(v105 + 2196))
      {
        v43 = *(v105 + 2180);
        if (v43 < 1)
        {
          v99 = 0;
        }

        else
        {
          v44 = 0;
          v99 = 0;
          do
          {
            if (v44 + 1 != v43 || v18 != *(v41 + 2196) || (v45 = v95, *(v41 + 2169) == 1))
            {
              v45 = (v101 + 80 * (v20 ^ 1) + 8 * v18);
            }

            v47 = *v45;
            if (*(v105 + 2169) == 1 && v44 + 1 == *(v105 + 2180))
            {
              v48 = *(v94 + 8 * v18);

              v99 = v48;
            }

            objc_msgSend__doSolverWithCommandBuffer_scale_in_uv_tex_in_G0_tex_in_G1_tex_in_C0_tex_in_C1_tex_out_uv_tex_out_w_tex_(v105, v46, v27, v18, *(v101 + 80 * v20 + 8 * v103), *(v98 + 8 * v18), *(v22 + 8 * v18), *(v97 + 8 * v18), *(v88 + 8 * v18), v47, v99);
            v20 ^= 1uLL;

            v41 = v105;
            v43 = *(v105 + 2180);
            ++v44;
            v103 = v18;
          }

          while (v44 < v43);
          v103 = v18;
        }

        if (*(v41 + 2169))
        {
          v49 = v20 ^ 1;
          v50 = v95;
          if (v18 != *(v41 + 2196))
          {
            v50 = (v101 + 80 * (v20 ^ 1) + 8 * v18);
          }

          v51 = *(v86 + 80 * v20 + 8 * v18);
          v42 = v27;
          objc_msgSend__doNLRegularizationWithCommandBuffer_in_uv_tex_join_tex_w_tex_out_uv_tex_(v105, v38, v27, v51, *(v85 + 80 * *(v41 + 2000) + 8 * v18), v99, *v50);
          v41 = v105;
          v92 = v49;
        }

        else
        {
          v92 = v20;
          v42 = v27;
        }
      }

      else
      {
        v92 = v20;
        v42 = v27;
        v99 = 0;
      }

      v52 = *(v41 + 2184);
      v53 = v98;
      v54 = v91;
      if (v18 < v52)
      {
        if (v18 < v52 - 1)
        {
          v55 = (v89 + 80 * *(v105 + 2000) + 8 * v18);
          objc_msgSend__resampleTransformWithCommandBuffer_from_to_(v105, v38, v42, v55[1], *v55);
        }

        v56 = v90 ^ 1;
        if (v18)
        {
          v56 = 1;
        }

        v57 = v105;
        if ((v56 & 1) == 0)
        {
          objc_msgSend__computeActiveThreadgroupsWithCommandBuffer_(v105, v38, v42, v40);
          v57 = v105;
        }

        ICPNWarp_scale = objc_msgSend__getICPNWarp_scale_(v57, v38, *(v57 + 2188), v18);
        v53 = v98;
        v54 = v91;
        if (ICPNWarp_scale >= 1)
        {
          v60 = (ICPNWarp_scale + 1);
          v61 = 1;
          do
          {
            v62 = *(v54 + 8 * v18);
            LODWORD(v59) = *(v87 + 4 * v18);
            v63 = v54;
            v64 = v53;
            objc_msgSend__computeHomographyWithCommandBuffer_in_tex0_in_tex1_in_tex2_weight_tex_regularizer_term_decimation_factor_scale_nwarp_(v57, v38, v42, *(v53 + 8 * v18), v62, *(v97 + 8 * v18), *(v57 + 2144), v35, v59, v18, v61);
            v53 = v64;
            v54 = v63;
            ++v61;
          }

          while (v60 != v61);
        }
      }

      v21 = v53;
      objc_msgSend_commit(v42, v38, v39, v40);

      v65 = v18-- <= 0;
      v22 = v54;
      v19 = v42;
      v20 = v92;
    }

    while (!v65);

    v7 = v84;
    a1 = v105;
  }

  v66 = objc_msgSend_commandBuffer(*(a1 + 16), v14, v15, v16);
  v69 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v67, @"Fang weights and residuals", v68);
  objc_msgSend_setLabel_(v66, v70, v69, v71);

  objc_msgSend__computeICPWeights_weights_flow_(a1, v72, v66, *(a1 + 2144), *(a1 + 2008));
  objc_msgSend__computeICPResiduals_flow_(a1, v73, v66, *(a1 + 2008));
  objc_msgSend_commit(v66, v74, v75, v76);
  objc_msgSend_waitUntilCompleted(v66, v77, v78, v79);
  objc_msgSend__copyTransfromFromGPU(a1, v80, v81, v82);

  return 0;
}

- (int)_computeICPWeights:(id)a3 weights:(id)a4 flow:(id)a5
{
  v119[1] = *MEMORY[0x277D85DE8];
  v119[0] = 0x4220000041200000;
  if (self->_flow_upper_most_scale >= 1)
  {
    v119[0] = 0x41A0000040A00000;
  }

  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = objc_msgSend_computeCommandEncoder(v10, v11, v12, v13);
  objc_msgSend_setComputePipelineState_(v14, v15, self->_computePipelines[12], v16);
  objc_msgSend_setTexture_atIndex_(v14, v17, v9, 0);
  objc_msgSend_setTexture_atIndex_(v14, v18, v8, 1);

  objc_msgSend_setBuffer_offset_atIndex_(v14, v19, self->_icp_param_tform_extra_buf, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v14, v20, v119, 8, 1);
  LODWORD(v8) = objc_msgSend_threadExecutionWidth(self->_computePipelines[12], v21, v22, v23);
  v27 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[12], v24, v25, v26) / v8;
  v112 = (v8 + objc_msgSend_width(v9, v28, v29, v30) - 1) / v8;
  v113 = (v27 + objc_msgSend_height(v9, v31, v32, v33) - 1) / v27;
  v114 = 1;
  v117.i64[0] = v8;
  v117.i64[1] = v27;
  v118 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v14, v34, &v112, &v117);
  objc_msgSend_endEncoding(v14, v35, v36, v37);
  v112 = 256;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v116 = _Q0;
  v43 = objc_alloc(MEMORY[0x277CD7530]);
  v47 = objc_msgSend_device(self->_mtlContext, v44, v45, v46);
  v49 = objc_msgSend_initWithDevice_histogramInfo_(v43, v48, v47, &v112);

  v53 = objc_msgSend_pixelFormat(v9, v50, v51, v52);
  v56 = objc_msgSend_histogramSizeForSourceFormat_(v49, v54, v53, v55);
  v60 = objc_msgSend_device(self->_mtlContext, v57, v58, v59);
  v62 = objc_msgSend_newBufferWithLength_options_(v60, v61, v56, 0);

  objc_msgSend_encodeToCommandBuffer_sourceTexture_histogram_histogramOffset_(v49, v63, v10, v9, v62, 0);
  v67 = objc_msgSend_device(self->_mtlContext, v64, v65, v66);
  v69 = objc_msgSend_newBufferWithLength_options_(v67, v68, 4, 0);

  v73 = objc_msgSend_computeCommandEncoder(v10, v70, v71, v72);

  objc_msgSend_setComputePipelineState_(v73, v74, self->_computePipelines[13], v75);
  objc_msgSend_setBuffer_offset_atIndex_(v73, v76, v62, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v73, v77, &v112, 8, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v73, v78, v69, 0, 2);
  v117 = vdupq_n_s64(1uLL);
  v118 = 1;
  v110 = v117;
  v111 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v73, v79, &v117, &v110);
  objc_msgSend_endEncoding(v73, v80, v81, v82);
  v86 = objc_msgSend_computeCommandEncoder(v10, v83, v84, v85);

  objc_msgSend_setComputePipelineState_(v86, v87, self->_computePipelines[14], v88);
  objc_msgSend_setTexture_atIndex_(v86, v89, v9, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v86, v90, v69, 0, 0);
  LODWORD(v10) = objc_msgSend_threadExecutionWidth(self->_computePipelines[14], v91, v92, v93);
  LODWORD(v73) = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[14], v94, v95, v96) / v10;
  v100 = (v10 + objc_msgSend_width(v9, v97, v98, v99) - 1) / v10;
  v104 = objc_msgSend_height(v9, v101, v102, v103);

  v117.i64[0] = v100;
  v117.i64[1] = (v73 + v104 - 1) / v73;
  v118 = 1;
  v110.i64[0] = v10;
  v110.i64[1] = v73;
  v111 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v86, v105, &v117, &v110);
  objc_msgSend_endEncoding(v86, v106, v107, v108);

  return 0;
}

- (int)_computeICPResiduals:(id)a3 flow:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_computeCommandEncoder(a3, v7, v8, v9);
  objc_msgSend_setComputePipelineState_(v10, v11, self->_computePipelines[15], v12);
  objc_msgSend_setTexture_atIndex_(v10, v13, v6, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v10, v14, self->_icp_param_tform_extra_buf, 0, 0);
  v18 = objc_msgSend_threadExecutionWidth(self->_computePipelines[15], v15, v16, v17);
  v22 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[15], v19, v20, v21) / v18;
  v26 = (v18 + objc_msgSend_width(v6, v23, v24, v25) - 1) / v18;
  LODWORD(self) = objc_msgSend_height(v6, v27, v28, v29);

  v36[0] = v26;
  v36[1] = (v22 + self - 1) / v22;
  v36[2] = 1;
  v35[0] = v18;
  v35[1] = v22;
  v35[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v10, v30, v36, v35);
  objc_msgSend_endEncoding(v10, v31, v32, v33);

  return 0;
}

- (int)_computeActiveThreadgroupsWithCommandBuffer:(id)a3
{
  v5 = objc_msgSend_computeCommandEncoder(a3, a2, a3, v3);
  v23 = 0uLL;
  v24 = 0;
  objc_msgSend__computeICPThreadgroupsForActivation_(self, v6, &v23, v7);
  memset(v22, 0, sizeof(v22));
  LODWORD(v22[0]) = self->_decimation_factor_icp;
  DWORD2(v22[0]) = v23;
  objc_msgSend_setComputePipelineState_(v5, v8, self->_computePipelines[8], v9);
  objc_msgSend_setTexture_atIndex_(v5, v10, self->_icp_derivatives_tg_sum, 0);
  objc_msgSend_setTexture_atIndex_(v5, v11, self->_icp_active_tg_indices_tex, 1);
  objc_msgSend_setBytes_length_atIndex_(v5, v12, v22, 96, 0);
  v20 = vdupq_n_s64(1uLL);
  v21 = 1;
  v18 = v23;
  v19 = v24;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v5, v13, &v20, &v18);
  objc_msgSend_endEncoding(v5, v14, v15, v16);

  return 0;
}

- (int)_computeHomographyWithCommandBuffer:(id)a3 in_tex0:(id)a4 in_tex1:(id)a5 in_tex2:(id)a6 weight_tex:(id)a7 regularizer_term:(float)a8 decimation_factor:(unint64_t)a9 scale:(unint64_t)a10 nwarp:(unint64_t)a11
{
  v18 = a4;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v25 = objc_msgSend_computeCommandEncoder(a3, v22, v23, v24);
  v123 = 0uLL;
  v124 = 0;
  v121 = 0uLL;
  v122 = 0;
  v119 = 0uLL;
  v120 = 0;
  v117 = 0uLL;
  v118 = 0;
  v115 = 0uLL;
  v116 = 0;
  v113 = 0uLL;
  v114 = 0;
  v29 = objc_msgSend_width(v18, v26, v27, v28);
  v33 = objc_msgSend_height(v18, v30, v31, v32);
  objc_msgSend__computeICPThreadgroupsWithSize_threadsPerThreadgroupForPass1_threadgroupsPerGridForPass1_threadsPerThreadgroupForPass2_threadgroupsPerGridForPass2_threadsPerThreadgroupForPass3_threadgroupsPerGridForPass3_(self, v34, &v123, &v121, &v119, &v117, &v115, &v113, v29, v33);
  v111 = 0uLL;
  v112 = 0;
  objc_msgSend__computeICPThreadgroupsForDecimation_threadsPerThreadgroupForUniform_threadsPerThreadgroupForPass1_threadgroupsPerGridForPass1_(self, v35, a9, &v111, &v123, &v121);
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  *&v106[8] = 0u;
  v105[0] = objc_msgSend_width(v18, v36, v37, v38);
  v105[1] = objc_msgSend_height(v18, v39, v40, v41);
  *v106 = vuzp1q_s32(v121, v111);
  v87 = *(MEMORY[0x277D860B0] + 16);
  v88 = *MEMORY[0x277D860B0];
  v107 = *MEMORY[0x277D860B0];
  v108 = v87;
  v86 = *(MEMORY[0x277D860B0] + 32);
  v109 = v86;
  LODWORD(v110) = 0;
  objc_msgSend_setComputePipelineState_(v25, v42, self->_computePipelines[6], v43);
  objc_msgSend_setTexture_atIndex_(v25, v44, v18, 0);
  objc_msgSend_setTexture_atIndex_(v25, v45, v21, 1);

  objc_msgSend_setTexture_atIndex_(v25, v46, v20, 2);
  objc_msgSend_setTexture_atIndex_(v25, v47, v19, 3);

  objc_msgSend_setTexture_atIndex_(v25, v48, self->_icp_active_tg_indices_tex, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v49, self->_icp_reduc_buf, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v25, v50, v105, 96, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v51, self->_icp_param_tform_buf, 0, 2);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v25, v52, 1024, 0);
  v99 = v121;
  v100.i64[0] = v122;
  v91 = v123;
  *&v92 = v124;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v25, v53, &v99, &v91);
  v57 = 0uLL;
  if (v121.i64[1] * v121.i64[0] >= 2uLL)
  {
    v99 = vuzp1q_s32(v121, v117);
    v100 = 0uLL;
    v100.i32[1] = 0;
    v101 = v88;
    v102 = v87;
    v103 = v86;
    v104 = 0uLL;
    objc_msgSend_setComputePipelineState_(v25, v54, self->_computePipelines[7], v56);
    objc_msgSend_setBuffer_offset_atIndex_(v25, v58, self->_icp_reduc_buf, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v25, v59, &v99, 96, 1);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v25, v60, 5120, 0);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v25, v61, 1024, 1);
    v91 = v117;
    *&v92 = v118;
    v97 = v119;
    v98 = v120;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v25, v62, &v91, &v97);
    if (v117.i64[1] * v117.i64[0] >= 2uLL)
    {
      v91 = vuzp1q_s32(v117, v113);
      v92 = 0u;
      DWORD1(v92) = 0;
      v93 = v88;
      v94 = v87;
      v95 = v86;
      v96 = 0u;
      objc_msgSend_setComputePipelineState_(v25, v54, self->_computePipelines[7], v56);
      objc_msgSend_setBuffer_offset_atIndex_(v25, v63, self->_icp_reduc_buf, 0, 0);
      objc_msgSend_setBytes_length_atIndex_(v25, v64, &v91, 96, 1);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v25, v65, 5120, 0);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v25, v66, 1024, 1);
      v97 = v113;
      v98 = v114;
      v89 = v115;
      v90 = v116;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v25, v67, &v97, &v89);
    }

    v57 = 0uLL;
  }

  v103 = v57;
  v104 = v57;
  v101 = v57;
  v102 = v57;
  v99 = v57;
  v100 = v57;
  v68 = objc_msgSend_width(v18, v54, v55, v56);
  *v104.i32 = (objc_msgSend_height(v18, v69, v70, v71) * v68) * a8;
  LOWORD(v89) = a10;
  WORD1(v89) = a11 - 1;
  objc_msgSend_setComputePipelineState_(v25, v72, self->_computePipelines[9], v73);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v74, self->_icp_reduc_buf, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v75, self->_icp_param_tform_buf, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v76, self->_icp_param_tform_extra_buf, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v77, self->_icp_loss_buf, 0, 3);
  objc_msgSend_setBytes_length_atIndex_(v25, v78, &v99, 96, 4);
  objc_msgSend_setBytes_length_atIndex_(v25, v79, &self->_flow_upper_most_scale, 4, 5);
  objc_msgSend_setBytes_length_atIndex_(v25, v80, &v89, 4, 6);
  v91 = vdupq_n_s64(1uLL);
  *&v92 = 1;
  v97 = v91;
  v98 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v25, v81, &v91, &v97);
  objc_msgSend_endEncoding(v25, v82, v83, v84);

  return 0;
}

- (uint64_t)_setParametricTransformFromGyro:(uint64_t)a3
{
  result = objc_msgSend__matrix3x3ToParametricTransform_(a1, a2, a3, a4);
  if (a1[546] >= 2)
  {
    v7 = 0;
    do
    {
      v8 = &a1[20 * a1[500] + 2 * v7++];
      result = objc_msgSend__resampleTransform_to_(a1, v6, *(v8 + 528), *(v8 + 536));
    }

    while (v7 < a1[546] - 1);
  }

  return result;
}

- (double)_matrix3x3ToParametricTransform:(__n128)a3
{
  v4 = 0;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  do
  {
    v5 = 0;
    v6 = &v12.n128_u64[2 * v4];
    v7 = *v6;
    do
    {
      v11 = v7;
      *(&v11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3))) = *(&v11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3))) / v14.n128_f32[2];
      v7 = v11;
      *(v6 + 2) = DWORD2(v11);
      *v6 = v7;
      ++v5;
    }

    while (v5 != 3);
    ++v4;
  }

  while (v4 != 3);
  if (*(a1 + 2064) == 8)
  {
    v8 = v12;
    v9 = v13;
    *(a1 + 2032) = v12.n128_f32[0] + -1.0;
    *(a1 + 2036) = vext_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL), 4uLL);
    *(a1 + 2044) = v9.n128_u32[0];
    *(a1 + 2048) = v9.n128_f32[1] + -1.0;
    *(a1 + 2052) = v9.n128_u32[2];
    *&v7 = v14.n128_u64[0];
    *(a1 + 2056) = v14.n128_u64[0];
  }

  return *&v7;
}

- (__n64)_parametricTransformToMatrix3x3
{
  if (*(a1 + 2064) == 8)
  {
    result.n64_f32[0] = *(a1 + 2032) + 1.0;
    result.n64_u32[1] = *(a1 + 2036);
    __asm { FMOV            V2.4S, #1.0 }
  }

  else
  {
    return 1065353216;
  }

  return result;
}

- (void)_resampleTransform:(id)a3 to:(id)a4
{
  if (self->_p.length_params == 8)
  {
    MEMORY[0x2821F9670](self, sel__resampleHomography_to_, a3, a4);
  }
}

- (void)_resampleHomography:(id)a3 to:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_width(v6, v8, v9, v10);
  v30 = v11 / objc_msgSend_width(v7, v12, v13, v14);
  v18 = objc_msgSend_height(v6, v15, v16, v17);

  v22 = objc_msgSend_height(v7, v19, v20, v21);
  v23.f32[0] = v22;
  self->_p.params[2] = v30 * self->_p.params[2];
  __asm { FMOV            V1.2S, #1.0 }

  _D1.f32[0] = v18;
  v23.f32[1] = v30;
  v29 = vdiv_f32(_D1, v23);
  *&self->_p.params[5] = vmul_f32(v29, *&self->_p.params[5]);
  self->_p.params[7] = (1.0 / v29.f32[0]) * self->_p.params[7];
}

- (void)_copyTransfromFromGPU
{
  v5 = objc_msgSend_contents(self->_icp_param_tform_buf, a2, v2, v3);
  length_params = self->_p.length_params;
  if (length_params >= 1)
  {
    p_p = &self->_p;
    do
    {
      v8 = *v5++;
      p_p->params[0] = v8;
      p_p = (p_p + 4);
      --length_params;
    }

    while (length_params);
  }
}

- (void)_copyTransfromToGPU
{
  v5 = objc_msgSend_contents(self->_icp_param_tform_buf, a2, v2, v3);
  length_params = self->_p.length_params;
  if (length_params >= 1)
  {
    p_p = &self->_p;
    do
    {
      v8 = p_p->params[0];
      p_p = (p_p + 4);
      *v5++ = v8;
      --length_params;
    }

    while (length_params);
  }
}

- (void)_resetLoss
{
  v4 = objc_msgSend_contents(self->_icp_loss_buf, a2, v2, v3);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;
}

- (CGSize)ref_size
{
  width = self->_ref_size.width;
  height = self->_ref_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)aux_size
{
  width = self->_aux_size.width;
  height = self->_aux_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (parametric_transform)p
{
  v3 = *&self[56].length_params;
  *retstr->params = *&self[56].params[4];
  *&retstr->params[4] = v3;
  retstr->length_params = LODWORD(self[57].params[3]);
  return self;
}

- (void)setP:(parametric_transform *)a3
{
  v3 = *a3->params;
  v4 = *&a3->params[4];
  self->_p.length_params = a3->length_params;
  *&self->_p.params[4] = v4;
  *self->_p.params = v3;
}

- (LKTFlowGPU)initWithMetalContext:(id)a3 width:(int)a4 height:(int)a5 nscales:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a4;
  v11 = a3;
  v31.receiver = self;
  v31.super_class = LKTFlowGPU;
  v12 = [(LKTFlowGPU *)&v31 init];
  v13 = v12;
  if (!v12 || ((v7 | v8) & 1) != 0)
  {
    v29 = 0;
  }

  else
  {
    objc_storeStrong(&v12->_mtlContext, a3);
    v17 = objc_msgSend_commandQueue(v11, v14, v15, v16);
    commandQueue = v13->_commandQueue;
    v13->_commandQueue = v17;

    objc_msgSend__setDefaultParameters(v13, v19, v20, v21);
    objc_msgSend__initMemory_height_nscales_(v13, v22, v8, v7, v6);
    objc_msgSend__setupPipelines(v13, v23, v24, v25);
    objc_msgSend__setupBuffer(v13, v26, v27, v28);
    v29 = v13;
  }

  return v29;
}

- (int)setOutputUVForward:(__CVBuffer *)a3 backward:(__CVBuffer *)a4
{
  if (a3)
  {
    CVPixelBufferGetWidth(a3);
    CVPixelBufferGetHeight(a3);
    v7 = sub_23C45F99C();
    v12 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v8, v9, v10, v11, v7);
    uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
    self->_uv_fwd_tex_user_ref = v12;

    if (!self->_uv_fwd_tex_user_ref)
    {
      return -12786;
    }

    if (a4)
    {
      v14 = sub_23C45F99C();
      v19 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v15, v16, v17, v18, v14);
      uv_bwd_tex_user_ref = self->_uv_bwd_tex_user_ref;
      self->_uv_bwd_tex_user_ref = v19;

      if (!self->_uv_bwd_tex_user_ref)
      {
        return -12786;
      }
    }

    else
    {
      v23 = self->_uv_bwd_tex_user_ref;
      self->_uv_bwd_tex_user_ref = 0;
    }

    result = 0;
    self->_isValid = 1;
  }

  else
  {
    v22 = self->_uv_fwd_tex_user_ref;
    self->_uv_fwd_tex_user_ref = 0;

    return 0;
  }

  return result;
}

- (int)_setupBuffer
{
  v3 = sub_23C45FA30(self);
  v5 = *(v4 + 200);
  v6 = *(v4 + 2232);
  v139 = v3;
  v7 = sub_23C45F9F4(v3, v6);
  *(v2 + 848) = v7;
  if (v7)
  {
    v8 = sub_23C45F9C4();
    *(v2 + 856) = v8;
    if (v8)
    {
      v9 = sub_23C45C4E8(v3, v6, 0x52476841u);
      *(v2 + 1024) = v9;
      if (v9)
      {
        v10 = sub_23C45FA5C();
        *(v2 + 1032) = v10;
        if (v10)
        {
          v11 = sub_23C45C4E8(v3, v6, 0x4C303068u);
          *(v2 + 1240) = v11;
          if (v11)
          {
            v15 = 0;
            v16 = (v3 + v5 - 1) / v5 * v5 * v6;
            v17 = 8 * v16;
            v18 = v2 + 1200;
            v136 = v16;
            v19 = 2 * v16;
            v20 = v2 + 1216;
            v21 = 1;
            while (1)
            {
              v22 = v21;
              v23 = objc_msgSend_device(*(v2 + 8), v12, v13, v14);
              v25 = objc_msgSend_newBufferWithLength_options_(v23, v24, v17, 0);
              v26 = *(v18 + 8 * v15);
              *(v18 + 8 * v15) = v25;

              if (!*(v18 + 8 * v15))
              {
                break;
              }

              v30 = objc_msgSend_device(*(v2 + 8), v27, v28, v29);
              v32 = objc_msgSend_newBufferWithLength_options_(v30, v31, v19, 0);
              v33 = *(v20 + 8 * v15);
              *(v20 + 8 * v15) = v32;

              if (!*(v20 + 8 * v15))
              {
                break;
              }

              v34 = sub_23C45F9F4(v139, v6);
              *(v2 + 1328 + 8 * v15) = v34;
              if (!v34)
              {
                break;
              }

              v21 = 0;
              v15 = 1;
              if ((v22 & 1) == 0)
              {
                v35 = objc_msgSend_device(*(v2 + 8), v12, v13, v14);
                v37 = objc_msgSend_newBufferWithLength_options_(v35, v36, 4 * v136, 0);
                v38 = *(v2 + 1232);
                *(v2 + 1232) = v37;

                if (!*(v2 + 1232))
                {
                  return -12786;
                }

                if (*(v2 + 2176) < 1)
                {
                  return 0;
                }

                v39 = 0;
                v40 = vmovn_s64(vcvtq_s64_f64(*(v2 + 2240)));
                v131 = v2 + 528;
                v132 = v2 + 1248;
                v41 = vmovn_s64(vcvtq_s64_f64(*(v2 + 2224)));
                v129 = v2 + 608;
                v130 = v2 + 688;
                v128 = v2 + 768;
LABEL_14:
                v135 = v41.i32[0];
                v137 = *&v41;
                v140 = *&v40;
                v42 = v41.u32[1];
                v43 = v40.i32[0];
                v44 = v40.i32[1];
                v45 = (v2 + 208 + 16 * v39);
                *v45 = v41.i32[0];
                v45[1] = v41.i32[1];
                v46 = (v2 + 368 + 16 * v39);
                *v46 = v40.i32[0];
                v46[1] = v40.i32[1];
                v47 = sub_23C45F99C();
                v52 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v48, v49, v50, v51, v47);
                sub_23C45FA0C(v52);
                if (*(v2 + 864 + 8 * v39))
                {
                  v53 = sub_23C45F9B0();
                  v58 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v54, v55, v56, v57, v53);
                  sub_23C45FA0C(v58);
                  if (*(v2 + 944 + 8 * v39))
                  {
                    v59 = sub_23C45F99C();
                    v64 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v60, v61, v62, v63, v59);
                    sub_23C45FA0C(v64);
                    if (*(v2 + 1040 + 8 * v39))
                    {
                      v65 = sub_23C45F9B0();
                      v70 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v66, v67, v68, v69, v65);
                      sub_23C45FA0C(v70);
                      if (*(v2 + 1120 + 8 * v39))
                      {
                        v133 = v44;
                        v134 = v43;
                        v71 = sub_23C45F99C();
                        v76 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v72, v73, v74, v75, v71);
                        v77 = *(v132 + 8 * v39);
                        *(v132 + 8 * v39) = v76;

                        v78 = 0;
                        v79 = 1;
                        while (1)
                        {
                          v80 = v79;
                          v81 = sub_23C45F99C();
                          v86 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v82, v83, v84, v85, v81);
                          sub_23C45FA0C(v86);
                          v89 = *(v2 + 1360 + 80 * v78 + 8 * v39);
                          if (!v89)
                          {
                            break;
                          }

                          v90 = objc_msgSend_newTextureViewWithPixelFormat_(v89, v87, 53, v88);
                          v91 = v2 + 1680 + 80 * v78;
                          v92 = *(v91 + 8 * v39);
                          *(v91 + 8 * v39) = v90;

                          v79 = 0;
                          v78 = 1;
                          if ((v80 & 1) == 0)
                          {
                            v94 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v93, 70, v135, v42, 0);
                            objc_msgSend_setUsage_(v94, v95, 19, v96);
                            objc_msgSend_device(*(v2 + 8), v97, v98, v99);
                            objc_claimAutoreleasedReturnValue();
                            sub_23C45FA24();
                            v104 = objc_msgSend_newTextureWithDescriptor_(v100, v101, v102, v103);
                            v105 = *(v131 + 8 * v39);
                            *(v131 + 8 * v39) = v104;

                            v108 = objc_msgSend_newTextureViewWithPixelFormat_(*(v131 + 8 * v39), v106, 53, v107);
                            v109 = *(v130 + 8 * v39);
                            *(v130 + 8 * v39) = v108;

                            v138 = calculateHalfResolutionWithVector2(v137).n64_u64[0];
                            v111 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v110, 70, v134, v133, 0);
                            objc_msgSend_setUsage_(v111, v112, 19, v113);
                            objc_msgSend_device(*(v2 + 8), v114, v115, v116);
                            objc_claimAutoreleasedReturnValue();
                            sub_23C45FA24();
                            v121 = objc_msgSend_newTextureWithDescriptor_(v117, v118, v119, v120);
                            v122 = *(v129 + 8 * v39);
                            *(v129 + 8 * v39) = v121;

                            v125 = objc_msgSend_newTextureViewWithPixelFormat_(*(v129 + 8 * v39), v123, 53, v124);
                            v126 = *(v128 + 8 * v39);
                            *(v128 + 8 * v39) = v125;

                            v141 = calculateHalfResolutionWithVector2(v140).n64_u64[0];
                            v41 = v138;
                            v40 = v141;
                            if (++v39 < *(v2 + 2176))
                            {
                              goto LABEL_14;
                            }

                            return 0;
                          }
                        }
                      }
                    }
                  }
                }

                return -12786;
              }
            }
          }
        }
      }
    }
  }

  return -12786;
}

- (int)_computeOpticalFlowBidirectional
{
  v2 = self;
  v3 = self->_nscales - 1;
  uv_fwd_tex = self->_uv_fwd_tex;
  v71 = self->_uv_fwd_tex[0][v3];
  uv_bwd_tex = v2->_uv_bwd_tex;
  v4 = v2->_uv_bwd_tex[0][v3];
  if (v2->_uv_bwd_tex_user_ref)
  {
    nscales = v2->_nscales;
    if (nscales < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      I_tex = v2->_I_tex;
      G1_tex = v2->_G1_tex;
      G0_tex = v2->_G0_tex;
      C1_tex = v2->_C1_tex;
      C0_tex = v2->_C0_tex;
      p_uv_fwd_tex_user_ref = &v2->_uv_fwd_tex_user_ref;
      p_uv_bwd_tex_user_ref = &v2->_uv_bwd_tex_user_ref;
      v52 = v2->_uv_bwd_tex[1];
      v59 = v3;
      v58 = v3;
      do
      {
        v8 = v6;
        v51 = nscales;
        v9 = nscales - 1;
        v10 = I_tex[v2->_current_frame_index][v9];
        v11 = I_tex[v2->_current_frame_index ^ 1][v9];
        v15 = objc_msgSend_commandBuffer(v2->_commandQueue, v12, v13, v14);

        v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"LKT:ComputeFlow level %d", v17, v9);
        objc_msgSend_setLabel_(v15, v19, v18, v20);

        v50 = v10;
        objc_msgSend__computeFeaturesWithCommandBuffer_in_tex_out_tex_(v2, v21, v15, v10, G0_tex[v9]);
        v49 = v11;
        objc_msgSend__computeFeaturesWithCommandBuffer_in_tex_out_tex_(v2, v22, v15, v11, G1_tex[v9]);
        objc_msgSend__computeFeaturesDerivativesWithCommandBuffer_in_tex_out_tex_(v2, v23, v15, G0_tex[v9], C0_tex[v9]);
        v65 = v15;
        objc_msgSend__computeFeaturesDerivativesWithCommandBuffer_in_tex_out_tex_(v2, v24, v15, G1_tex[v9], C1_tex[v9]);
        v64 = v9;
        if (v2->_nwarpings >= 1)
        {
          v28 = 0;
          v56 = &(*uv_bwd_tex)[v9];
          do
          {
            if ((v28 + 1))
            {
              v29 = v64;
              v69 = G0_tex[v64];
              v68 = G1_tex[v64];
              v67 = C0_tex[v64];
              v30 = C1_tex[v64];
              v41 = uv_fwd_tex[v7];
              v31 = v41[v59];
              v70 = v7 ^ 1;
              v32 = uv_fwd_tex[v7 ^ 1][v64];
              if (v64)
              {
                v42 = 1;
              }

              else
              {
                v42 = v28 + 3 <= v2->_nwarpings;
              }

              v43 = &v41[v64];
              if (!v42)
              {
                v43 = p_uv_fwd_tex_user_ref;
              }

              v44 = *v43;
              v36 = v2;
              v37 = v4;
              v38 = v44;

              v40 = v38;
              v59 = v64;
              v66 = v37;
            }

            else
            {
              v29 = v64;
              v69 = G1_tex[v64];
              v68 = G0_tex[v64];
              v67 = C1_tex[v64];
              v30 = C0_tex[v64];
              v31 = (*uv_bwd_tex)[v58];
              v32 = v52[v64];
              if (v64)
              {
                v33 = 1;
              }

              else
              {
                v33 = v28 + 3 <= v2->_nwarpings;
              }

              v34 = p_uv_bwd_tex_user_ref;
              if (v33)
              {
                v34 = v56;
              }

              v35 = *v34;
              v36 = v2;
              v37 = v71;
              v38 = v35;

              v70 = v7 ^ 1;
              v66 = v38;
              v58 = v64;
              v40 = v37;
            }

            v71 = v40;
            objc_msgSend__enqueueFlowConsistencyWithCommandBuffer_in_uv0_tex_in_uv1_tex_out_uv_tex_(v36, v39, v65, v37, v31, v32);
            objc_msgSend__doSolverWithCommandBuffer_scale_in_uv_tex_in_G0_tex_in_G1_tex_in_C0_tex_in_C1_tex_out_uv_tex_out_w_tex_(v36, v45, v65, v29, v32, v69, v68, v67, v30, v38, 0);

            ++v28;
            v4 = v66;
            v2 = v36;
            v7 = v70;
          }

          while (v28 < v36->_nwarpings);
        }

        v6 = v65;
        objc_msgSend_commit(v65, v25, v26, v27);

        nscales = v64;
      }

      while (v51 > 1);
    }

    v46 = 0;
  }

  else
  {
    v6 = 0;
    v46 = -12780;
  }

  return v46;
}

- (int)_enqueueKeypointsFromFlowWithCommandBuffer:(id)a3 in_uv_fwd_tex:(id)a4 in_uv_bwd_tex:(id)a5 out_kpt_buf:(id)a6 block_size:(int)a7 bidirectional_error:(float)a8 out_num_keypoints:(unsigned __int16 *)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a3;
  v23 = objc_msgSend_width(v16, v20, v21, v22) / a7;
  v27 = objc_msgSend_height(v16, v24, v25, v26) / a7;
  v54 = a7;
  v56 = v27;
  v55 = v23;
  v57 = LODWORD(a8);
  v31 = objc_msgSend_computeCommandEncoder(v19, v28, v29, v30);

  if (v27 * v23 > 0x8000)
  {
    v50 = -12780;
  }

  else
  {
    objc_msgSend_setComputePipelineState_(v31, v32, self->_computePipelines[20], v33);
    objc_msgSend_setTexture_atIndex_(v31, v34, v16, 0);
    objc_msgSend_setTexture_atIndex_(v31, v35, v17, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v31, v36, v18, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v31, v37, &v54, 16, 1);
    v41 = objc_msgSend_threadExecutionWidth(self->_computePipelines[20], v38, v39, v40);
    v45 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[20], v42, v43, v44);
    v53[0] = (v23 + v41 - 1) / v41;
    v53[1] = (v27 + v45 / v41 - 1) / (v45 / v41);
    v53[2] = 1;
    v52[0] = v41;
    v52[1] = v45 / v41;
    v52[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v46, v53, v52);
    objc_msgSend_endEncoding(v31, v47, v48, v49);
    v50 = 0;
    *a9 = v27 * v23;
  }

  return v50;
}

- (LKTFlowGPU)initWithMetalContext:(id)a3 ICPtransform:(int64_t)a4 width:(int)a5 height:(int)a6 nscales:(int)a7 flowUpperMostScale:(int)a8
{
  v8 = *&a8;
  v9 = *&a7;
  v10 = *&a6;
  v11 = *&a5;
  v12 = a4;
  v15 = a3;
  v49.receiver = self;
  v49.super_class = LKTFlowGPU;
  v16 = [(LKTFlowGPU *)&v49 init];
  v17 = v16;
  if (!v16 || ((v10 | v11) & 1) != 0)
  {
    v47 = 0;
  }

  else
  {
    objc_storeStrong(&v16->_mtlContext, a3);
    v21 = objc_msgSend_commandQueue(v15, v18, v19, v20);
    commandQueue = v17->_commandQueue;
    v17->_commandQueue = v21;

    v17->_p.length_params = v12;
    objc_msgSend__setDefaultParameters(v17, v23, v24, v25);
    objc_msgSend__initMemory_height_nscales_(v17, v26, v11, v10, v9);
    objc_msgSend__setDefaultParametersICP(v17, v27, v28, v29);
    objc_msgSend__initMemoryICP_(v17, v30, v8, v31);
    objc_msgSend__setupPipelines(v17, v32, v33, v34);
    objc_msgSend__setupBufferPyramids(v17, v35, v36, v37);
    objc_msgSend__setupBufferDerivatives(v17, v38, v39, v40);
    objc_msgSend__setupBufferLKT(v17, v41, v42, v43);
    objc_msgSend__setupBufferICP(v17, v44, v45, v46);
    v47 = v17;
  }

  return v47;
}

- (int)_setupBufferDerivatives
{
  v4 = sub_23C45FA30(self);
  v5 = *(v3 + 2232);
  v6 = sub_23C45F9F4(v4, v5);
  *(v2 + 848) = v6;
  if (v6)
  {
    v7 = sub_23C45F9C4();
    *(v2 + 856) = v7;
    if (v7)
    {
      v8 = sub_23C45C4E8(v4, v5, 0x52476841u);
      *(v2 + 1024) = v8;
      if (v8)
      {
        v9 = sub_23C45FA5C();
        *(v2 + 1032) = v9;
        if (v9)
        {
          if (*(v2 + 2176) < 1)
          {
            return 0;
          }

          v10 = 0;
          v11 = (v2 + 1120);
          for (i = v2 + 376; ; i += 16)
          {
            v13 = sub_23C45F9B0();
            v18 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v14, v15, v16, v17, v13);
            v19 = *(v11 - 32);
            *(v11 - 32) = v18;

            if (!*(v11 - 32))
            {
              break;
            }

            v20 = sub_23C45F99C();
            v25 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v21, v22, v23, v24, v20);
            v26 = *(v11 - 22);
            *(v11 - 22) = v25;

            if (!*(v11 - 22))
            {
              break;
            }

            v27 = sub_23C45F9B0();
            v32 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v28, v29, v30, v31, v27);
            v33 = *(v11 - 10);
            *(v11 - 10) = v32;

            if (!*(v11 - 10))
            {
              break;
            }

            v34 = sub_23C45F99C();
            v39 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v35, v36, v37, v38, v34);
            v40 = *v11;
            *v11 = v39;

            if (!*v11)
            {
              break;
            }

            ++v10;
            ++v11;
            if (v10 >= *(v2 + 2176))
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return -12786;
}

- (int)_setupBufferLKT
{
  v6 = sub_23C45FA30(self);
  v59 = *(v7 + 2232);
  v60 = v6;
  if (*(v7 + 2196) >= 1)
  {
    calculateHalfResolution(&v60, &v59);
    v6 = v60;
  }

  v8 = *(v2 + 200);
  if (*(v2 + 2169) != 1 || (v9 = sub_23C45C4E8(v6, v59, 0x4C303068u), (*(v2 + 1240) = v9) != 0))
  {
    v10 = 0;
    v11 = (v8 + v6 - 1) / v8 * v8;
    v12 = v2 + 1200;
    v13 = v2 + 1216;
    v14 = v2 + 1328;
    v15 = 1;
    while (1)
    {
      v16 = v15;
      v17 = objc_msgSend_device(*(v2 + 8), v3, v4, v5);
      v19 = objc_msgSend_newBufferWithLength_options_(v17, v18, 8 * v11 * v59, 0);
      v20 = *(v12 + 8 * v10);
      *(v12 + 8 * v10) = v19;

      if (!*(v12 + 8 * v10))
      {
        break;
      }

      v24 = objc_msgSend_device(*(v2 + 8), v21, v22, v23);
      v26 = objc_msgSend_newBufferWithLength_options_(v24, v25, 2 * v11 * v59, 0);
      v27 = *(v13 + 8 * v10);
      *(v13 + 8 * v10) = v26;

      if (!*(v13 + 8 * v10))
      {
        break;
      }

      v28 = sub_23C45F9F4(v60, v59);
      *(v14 + 8 * v10) = v28;
      if (!v28)
      {
        break;
      }

      v15 = 0;
      v10 = 1;
      if ((v16 & 1) == 0)
      {
        v29 = objc_msgSend_device(*(v2 + 8), v3, v4, v5);
        v31 = objc_msgSend_newBufferWithLength_options_(v29, v30, 4 * v11 * v59, 0);
        v32 = *(v2 + 1232);
        *(v2 + 1232) = v31;

        if (!*(v2 + 1232))
        {
          return -12786;
        }

        v34 = *(v2 + 2196);
        if (v34 >= *(v2 + 2176))
        {
          return 0;
        }

        v35 = v2 + 1248;
LABEL_13:
        v36 = (v2 + 208 + 16 * v34);
        v37 = *v36;
        v38 = v36[1];
        if (*(v2 + 2169))
        {
          v39 = sub_23C45F99C();
          v44 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v40, v41, v42, v43, v39);
          v45 = *(v35 + 8 * v34);
          *(v35 + 8 * v34) = v44;
        }

        v46 = 0;
        v47 = 1;
        while (1)
        {
          v48 = v47;
          v49 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(*(v2 + 8), v33, *(v14 + 8 * v46), 65, 23, 0, v37, v38);
          v50 = v2 + 1360 + 80 * v46;
          v51 = *(v50 + 8 * v34);
          *(v50 + 8 * v34) = v49;

          v54 = *(v50 + 8 * v34);
          if (!v54)
          {
            return -12786;
          }

          v55 = objc_msgSend_newTextureViewWithPixelFormat_(v54, v52, 53, v53);
          v56 = v2 + 1680 + 80 * v46;
          v57 = *(v56 + 8 * v34);
          *(v56 + 8 * v34) = v55;

          v47 = 0;
          v46 = 1;
          if ((v48 & 1) == 0)
          {
            if (++v34 < *(v2 + 2176))
            {
              goto LABEL_13;
            }

            return 0;
          }
        }
      }
    }
  }

  return -12786;
}

- (int)_setupBufferICP
{
  v4 = sub_23C45FA30(self);
  v6 = v5[279];
  v67 = 0;
  v68 = 0;
  v69 = 0;
  memset(v66, 0, sizeof(v66));
  objc_msgSend__computeICPThreadgroupsWithSize_threadsPerThreadgroupForPass1_threadgroupsPerGridForPass1_threadsPerThreadgroupForPass2_threadgroupsPerGridForPass2_threadsPerThreadgroupForPass3_threadgroupsPerGridForPass3_(v5, v7, 0, &v67, 0, v66, 0, 0, v4, v6);
  if ((192 * v67 * v68) <= 0x7D0)
  {
    v11 = 2000;
  }

  else
  {
    v11 = 192 * v67 * v68;
  }

  objc_msgSend_device(*(v2 + 8), v8, v9, v10);
  objc_claimAutoreleasedReturnValue();
  sub_23C45FA24();
  v15 = objc_msgSend_newBufferWithLength_options_(v12, v13, v14, 0);
  v16 = *(v2 + 2096);
  *(v2 + 2096) = v15;

  if (!*(v2 + 2096) || (objc_msgSend_device(*(v2 + 8), v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v22 = sub_23C45FA3C(v20, v21), v23 = *(v2 + 2072), *(v2 + 2072) = v22, v23, v11, !*(v2 + 2072)) || (objc_msgSend_device(*(v2 + 8), v24, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), v29 = sub_23C45FA3C(v27, v28), v30 = *(v2 + 2080), *(v2 + 2080) = v29, v30, v11, !*(v2 + 2080)))
  {
    v32 = 0;
    goto LABEL_14;
  }

  v32 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v31, 25, v67, v68, 0);
  objc_msgSend_setUsage_(v32, v33, 3, v34);
  objc_msgSend_device(*(v2 + 8), v35, v36, v37);
  objc_claimAutoreleasedReturnValue();
  sub_23C45FA24();
  v42 = objc_msgSend_newTextureWithDescriptor_(v38, v39, v40, v41);
  v43 = *(v2 + 2152);
  *(v2 + 2152) = v42;

  if (!*(v2 + 2152))
  {
LABEL_14:
    v64 = -12786;
    goto LABEL_12;
  }

  objc_msgSend__computeICPThreadgroupsForDecimation_threadsPerThreadgroupForUniform_threadsPerThreadgroupForPass1_threadgroupsPerGridForPass1_(v2, v44, 2, 0, 0, &v67);
  v46 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v45, 63, v67, v68, 0);

  objc_msgSend_setUsage_(v46, v47, 3, v48);
  v52 = objc_msgSend_device(*(v2 + 8), v49, v50, v51);
  v55 = objc_msgSend_newTextureWithDescriptor_(v52, v53, v46, v54);
  v56 = *(v2 + 2160);
  *(v2 + 2160) = v55;

  if (*(v2 + 2160) && (objc_msgSend_device(*(v2 + 8), v57, v58, v59), v60 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend_newBufferWithLength_options_(v60, v61, 168, 0), v63 = *(v2 + 2088), *(v2 + 2088) = v62, v63, v60, *(v2 + 2088)))
  {
    v64 = 0;
  }

  else
  {
    v64 = -12786;
  }

  v32 = v46;
LABEL_12:

  return v64;
}

- (void)_computeICPThreadgroupsWithSize:(CGSize)a3 threadsPerThreadgroupForPass1:(id *)a4 threadgroupsPerGridForPass1:(id *)a5 threadsPerThreadgroupForPass2:(id *)a6 threadgroupsPerGridForPass2:(id *)a7 threadsPerThreadgroupForPass3:(id *)a8 threadgroupsPerGridForPass3:(id *)a9
{
  v16 = self->_computePipelines[6];
  *&v21 = a3.width;
  *(&v21 + 1) = a3.height;
  var2 = 1;
  objc_msgSend__computeICPThreadgroupsWithSize_computePipeline_threadsPerThreadgroup_threadgroupsPerGrid_debug_string_(self, a2, &v21, v16, a4, a5, "pass1");
  if (!a4 || a4->var0 == 32 && a4->var1 == 32)
  {
    v18 = self->_computePipelines[7];
    v21 = *&a5->var0;
    var2 = a5->var2;
    objc_msgSend__computeICPThreadgroupsWithSize_computePipeline_threadsPerThreadgroup_threadgroupsPerGrid_debug_string_(self, v17, &v21, v18, a6, a7, "pass2");
    v19 = self->_computePipelines[7];
    v21 = *&a7->var0;
    var2 = a7->var2;
    objc_msgSend__computeICPThreadgroupsWithSize_computePipeline_threadsPerThreadgroup_threadgroupsPerGrid_debug_string_(self, v20, &v21, v19, a8, a9, "pass3");
  }
}

@end