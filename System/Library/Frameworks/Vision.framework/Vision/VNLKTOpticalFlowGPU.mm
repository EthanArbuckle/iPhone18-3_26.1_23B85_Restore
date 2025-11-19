@interface VNLKTOpticalFlowGPU
- (BOOL)_createImagePyramidWithCommandBuffer:(id)a3 in_pixelbuf:(__CVBuffer *)a4 I_idx:(int)a5 error:(id *)a6;
- (BOOL)_setupBufferAndReturnError:(id *)a3;
- (BOOL)_setupPipelinesReturnError:(id *)a3;
- (BOOL)estimateFlowFromReference:(__CVBuffer *)a3 target:(__CVBuffer *)a4 error:(id *)a5;
- (BOOL)estimateFlowStream:(__CVBuffer *)a3 error:(id *)a4;
- (BOOL)setOutputUV:(__CVBuffer *)a3 error:(id *)a4;
- (VNLKTOpticalFlowGPU)initWithMetalContext:(id)a3 width:(int)a4 height:(int)a5 numScales:(int)a6 error:(id *)a7;
- (void)_computeFeaturesDerivativesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (void)_computeFeaturesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (void)_computeOpticalFlow;
- (void)_doNLRegularizationWithCommandBuffer:(id)a3 in_uv_tex:(id)a4 join_tex:(id)a5 w_tex:(id)a6 out_uv_tex:(id)a7;
- (void)_doSolverWithCommandBuffer:(VNLKTOpticalFlowGPU *)self scale:(SEL)a2 scale_xy_inv:(id)a3 coeff:(int)a4 in_uv_tex:(id)a5 out_uv_tex:(id)a6 out_w_tex:(id)a7;
- (void)_downscale2XWithCommandBuffer:(id)a3 in_u32_alias_tex:(id)a4 out_u32_alias_tex:(id)a5;
- (void)_initMemory:(int)a3 height:(int)a4 numScales:(int)a5;
- (void)_zeroFlowWithCommandBuffer:(id)a3 uv_tex:(id)a4;
- (void)dealloc;
- (void)waitUntilCompleted;
@end

@implementation VNLKTOpticalFlowGPU

- (void)_doNLRegularizationWithCommandBuffer:(id)a3 in_uv_tex:(id)a4 join_tex:(id)a5 w_tex:(id)a6 out_uv_tex:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v36 = 0;
  v34 = [(VNLKTOpticalFlow *)self nlreg_radius];
  v35 = [(VNLKTOpticalFlow *)self nlreg_padding];
  [(VNLKTOpticalFlow *)self nlreg_sigma_l];
  v18 = v17;
  [(VNLKTOpticalFlow *)self nlreg_sigma_c];
  v20 = v19;
  [(VNLKTOpticalFlow *)self nlreg_sigma_c];
  v31 = v21;
  [(VNLKTOpticalFlow *)self nlreg_sigma_w];
  *&v22 = 1.0 / (v18 + v18);
  __asm { FMOV            V3.2S, #1.0 }

  *(&v22 + 1) = 1.0 / (v20 + v20);
  *(&v22 + 1) = vdiv_f32(_D3, vadd_f32(__PAIR64__(v23, v31), __PAIR64__(v23, v31)));
  v37 = v22;
  v29 = [v12 computeCommandEncoder];
  computePipelines = self->_computePipelines;
  [v29 setComputePipelineState:self->_computePipelines[8]];
  [v29 setTexture:v13 atIndex:0];
  [v29 setTexture:v14 atIndex:1];
  [v29 setTexture:v15 atIndex:2];
  [v29 setTexture:v16 atIndex:3];
  [v29 setBytes:&v34 length:32 atIndex:0];
  LODWORD(self) = [(MTLComputePipelineState *)self->_computePipelines[8] threadExecutionWidth];
  LODWORD(computePipelines) = [(MTLComputePipelineState *)computePipelines[8] maxTotalThreadsPerThreadgroup];
  v33[0] = (self + [v13 width] / 2 - 1) / self;
  v33[1] = (computePipelines / self + [v13 height] / 2 - 1) / (computePipelines / self);
  v33[2] = 1;
  v32[0] = self;
  v32[1] = computePipelines / self;
  v32[2] = 1;
  [v29 dispatchThreadgroups:v33 threadsPerThreadgroup:v32];
  [v29 endEncoding];
}

- (void)_doSolverWithCommandBuffer:(VNLKTOpticalFlowGPU *)self scale:(SEL)a2 scale_xy_inv:(id)a3 coeff:(int)a4 in_uv_tex:(id)a5 out_uv_tex:(id)a6 out_w_tex:(id)a7
{
  v12 = v8;
  v13 = v7;
  v16 = a3;
  v17 = a5;
  v32 = a6;
  v31 = a7;
  maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
  v19 = vmovn_s64(vcvtq_s64_f64(self->_pyramid_size[a4]));
  v20 = v19.i32[0] - 1;
  v30 = v19.i32[1];
  v39[0] = v19;
  v39[1] = ((v19.i32[0] - 1 + maxThreadExecutionWidth) / maxThreadExecutionWidth * maxThreadExecutionWidth);
  v39[2] = v13;
  v39[3] = v12;
  v21 = [v16 computeCommandEncoder];
  computePipelines = self->_computePipelines;
  [v21 setComputePipelineState:self->_computePipelines[5]];
  [v21 setTexture:v17 atIndex:0];
  [v21 setTexture:self->_G0_tex[a4] atIndex:1];
  [v21 setTexture:self->_G1_tex[a4] atIndex:2];
  [v21 setTexture:self->_C0_tex[a4] atIndex:3];
  [v21 setTexture:self->_C1_tex[a4] atIndex:4];
  Adiagb_buf = self->_Adiagb_buf;
  [v21 setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  Ixy_buf = self->_Ixy_buf;
  [v21 setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [v21 setBytes:v39 length:32 atIndex:2];
  LODWORD(self) = [(MTLComputePipelineState *)self->_computePipelines[5] threadExecutionWidth];
  v25 = [computePipelines[5] maxTotalThreadsPerThreadgroup];
  v36 = (v20 + self) / self;
  v37 = (v30 - 1 + v25 / self) / (v25 / self);
  v38 = 1;
  v33 = self;
  v34 = v25 / self;
  v35 = 1;
  [v21 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v33];
  [v21 endEncoding];

  v26 = [v16 computeCommandEncoder];
  [v26 setComputePipelineState:computePipelines[6]];
  [v26 setBuffer:*Adiagb_buf offset:0 atIndex:0];
  [v26 setBuffer:*Ixy_buf offset:0 atIndex:1];
  [v26 setBuffer:Adiagb_buf[1] offset:0 atIndex:2];
  [v26 setBuffer:Ixy_buf[1] offset:0 atIndex:3];
  [v26 setBytes:v39 length:32 atIndex:4];
  LODWORD(self) = [computePipelines[6] threadExecutionWidth];
  v27 = [computePipelines[6] maxTotalThreadsPerThreadgroup];
  v36 = (v20 + self) / self;
  v37 = (v30 - 1 + v27 / self) / (v27 / self);
  v38 = 1;
  v33 = self;
  v34 = v27 / self;
  v35 = 1;
  [v26 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v33];
  [v26 endEncoding];

  v28 = [v16 computeCommandEncoder];
  [v28 setComputePipelineState:computePipelines[7]];
  [v28 setBuffer:Adiagb_buf[1] offset:0 atIndex:0];
  [v28 setBuffer:Ixy_buf[1] offset:0 atIndex:1];
  [v28 setTexture:v17 atIndex:0];
  [v28 setTexture:v32 atIndex:1];
  [v28 setTexture:v31 atIndex:2];
  [v28 setBytes:v39 length:32 atIndex:2];
  LODWORD(self) = [computePipelines[7] threadExecutionWidth];
  v29 = [computePipelines[7] maxTotalThreadsPerThreadgroup];
  v36 = (v20 + self) / self;
  v37 = (v30 - 1 + v29 / self) / (v29 / self);
  v38 = 1;
  v33 = self;
  v34 = v29 / self;
  v35 = 1;
  [v28 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v33];
  [v28 endEncoding];
}

- (void)_computeFeaturesDerivativesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  computePipelines = self->_computePipelines;
  [v10 setComputePipelineState:self->_computePipelines[4]];
  [v10 setTexture:v8 atIndex:0];
  [v10 setTexture:v9 atIndex:1];
  LODWORD(self) = [(MTLComputePipelineState *)self->_computePipelines[4] threadExecutionWidth];
  LODWORD(computePipelines) = [(MTLComputePipelineState *)computePipelines[4] maxTotalThreadsPerThreadgroup];
  v13[0] = (self + [v8 width] - 1) / self;
  v13[1] = (computePipelines / self + [v8 height] - 1) / (computePipelines / self);
  v13[2] = 1;
  v12[0] = self;
  v12[1] = computePipelines / self;
  v12[2] = 1;
  [v10 dispatchThreadgroups:v13 threadsPerThreadgroup:v12];
  [v10 endEncoding];
}

- (void)_computeFeaturesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  computePipelines = self->_computePipelines;
  [v10 setComputePipelineState:self->_computePipelines[3]];
  [v10 setTexture:v8 atIndex:0];
  [v10 setTexture:v9 atIndex:1];
  LODWORD(self) = [(MTLComputePipelineState *)self->_computePipelines[3] threadExecutionWidth];
  LODWORD(computePipelines) = [(MTLComputePipelineState *)computePipelines[3] maxTotalThreadsPerThreadgroup];
  v13[0] = (self + [v8 width] - 1) / self;
  v13[1] = (computePipelines / self + [v8 height] - 1) / (computePipelines / self);
  v13[2] = 1;
  v12[0] = self;
  v12[1] = computePipelines / self;
  v12[2] = 1;
  [v10 dispatchThreadgroups:v13 threadsPerThreadgroup:v12];
  [v10 endEncoding];
}

- (void)_downscale2XWithCommandBuffer:(id)a3 in_u32_alias_tex:(id)a4 out_u32_alias_tex:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  computePipelines = self->_computePipelines;
  [v10 setComputePipelineState:self->_computePipelines[2]];
  [v10 setTexture:v8 atIndex:0];
  [v10 setTexture:v9 atIndex:1];
  LODWORD(self) = [(MTLComputePipelineState *)self->_computePipelines[2] threadExecutionWidth];
  LODWORD(computePipelines) = [(MTLComputePipelineState *)computePipelines[2] maxTotalThreadsPerThreadgroup];
  v13[0] = (self + [v9 width] - 1) / self;
  v13[1] = (computePipelines / self + [v9 height] - 1) / (computePipelines / self);
  v13[2] = 1;
  v12[0] = self;
  v12[1] = computePipelines / self;
  v12[2] = 1;
  [v10 dispatchThreadgroups:v13 threadsPerThreadgroup:v12];
  [v10 endEncoding];
}

- (void)_zeroFlowWithCommandBuffer:(id)a3 uv_tex:(id)a4
{
  v6 = a4;
  v7 = [a3 computeCommandEncoder];
  [v7 setComputePipelineState:self->_computePipelines[1]];
  [v7 setTexture:v6 atIndex:0];
  v8 = [(MTLComputePipelineState *)self->_computePipelines[1] threadExecutionWidth];
  v9 = [(MTLComputePipelineState *)self->_computePipelines[1] maxTotalThreadsPerThreadgroup];
  v11[0] = (v8 + [(VNLKTOpticalFlow *)self width]- 1) / v8;
  v11[1] = (v9 / v8 + [(VNLKTOpticalFlow *)self height]- 1) / (v9 / v8);
  v11[2] = 1;
  v10[0] = v8;
  v10[1] = v9 / v8;
  v10[2] = 1;
  [v7 dispatchThreadgroups:v11 threadsPerThreadgroup:v10];
  [v7 endEncoding];
}

- (BOOL)_createImagePyramidWithCommandBuffer:(id)a3 in_pixelbuf:(__CVBuffer *)a4 I_idx:(int)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(VNLKTOpticalFlow *)self width];
  v12 = [(VNLKTOpticalFlow *)self height];
  v13 = [VNMetalContext bindPixelBufferToMTL2DTexture:a4 pixelFormat:80 plane:a6 error:?];
  if (v13)
  {
    v14 = [v10 computeCommandEncoder];
    [v14 setComputePipelineState:self->_computePipelines[0]];
    [v14 setTexture:v13 atIndex:0];
    [v14 setTexture:self->_I_tex[a5][0] atIndex:1];
    v15 = [(MTLComputePipelineState *)self->_computePipelines[0] threadExecutionWidth];
    v16 = [(MTLComputePipelineState *)self->_computePipelines[0] maxTotalThreadsPerThreadgroup];
    v22[0] = (v11 + v15 - 1) / v15;
    v22[1] = (v12 + v16 / v15 - 1) / (v16 / v15);
    v22[2] = 1;
    v21[0] = v15;
    v21[1] = v16 / v15;
    v21[2] = 1;
    [v14 dispatchThreadgroups:v22 threadsPerThreadgroup:v21];
    [v14 endEncoding];

    v17 = [(VNLKTOpticalFlow *)self numScales];
    if (v17 >= 2)
    {
      v18 = v17 - 1;
      v19 = &self->_I_u32_alias_tex[a5][1];
      do
      {
        [(VNLKTOpticalFlowGPU *)self _downscale2XWithCommandBuffer:v10 in_u32_alias_tex:*(v19 - 1) out_u32_alias_tex:*v19];
        ++v19;
        --v18;
      }

      while (v18);
    }
  }

  return v13 != 0;
}

- (void)_computeOpticalFlow
{
  v3 = [(VNLKTOpticalFlow *)self numScales];
  v4 = [(VNLKTOpticalFlow *)self numWarpings];
  v5 = [(VNLKTOpticalFlow *)self useNonLocalRegularization];
  _VF = __OFSUB__(v3, 1);
  v7 = (v3 - 1);
  if (v7 < 0 == _VF)
  {
    v8 = v5;
    v9 = 0;
    v10 = 0;
    I_tex = self->_I_tex;
    v40 = !v5;
    __asm
    {
      FMOV            V10.2S, #1.0
      FMOV            V11.2S, #-1.0
    }

    v15 = v7;
    v16 = v7;
    v36 = v7;
    do
    {
      v39 = I_tex[self->_current_frame_index][v15];
      v38 = I_tex[self->_current_frame_index ^ 1][v15];
      v17 = _D10;
      v18 = _D10;
      if (v15 != v7)
      {
        v19 = &self->_pyramid_size[v15];
        v20 = vcvt_f32_f64(*v19);
        v21 = vcvt_f32_f64(v19[1]);
        v18 = COERCE_DOUBLE(vdiv_f32(v20, v21));
        v17 = COERCE_DOUBLE(vdiv_f32(vadd_f32(v21, _D11), vadd_f32(v20, _D11)));
      }

      v41 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LKT:ComputeFlow level %d", v15];
      [v41 setLabel:v22];

      [VNLKTOpticalFlowGPU _computeFeaturesWithCommandBuffer:"_computeFeaturesWithCommandBuffer:in_tex:out_tex:" in_tex:? out_tex:?];
      [VNLKTOpticalFlowGPU _computeFeaturesWithCommandBuffer:"_computeFeaturesWithCommandBuffer:in_tex:out_tex:" in_tex:? out_tex:?];
      [VNLKTOpticalFlowGPU _computeFeaturesDerivativesWithCommandBuffer:"_computeFeaturesDerivativesWithCommandBuffer:in_tex:out_tex:" in_tex:? out_tex:?];
      [VNLKTOpticalFlowGPU _computeFeaturesDerivativesWithCommandBuffer:"_computeFeaturesDerivativesWithCommandBuffer:in_tex:out_tex:" in_tex:? out_tex:?];
      v23 = v4;
      if (v4 < 1)
      {
        v25 = 0;
        v29 = 0;
      }

      else
      {
        v24 = 0;
        v25 = 0;
        do
        {
          if (v15)
          {
            _ZF = 0;
          }

          else
          {
            _ZF = v23 == 1;
          }

          v27 = !_ZF;
          if ((v27 | v8))
          {
            p_uv_tex_user_ref = &self->_uv_tex[v10 ^ 1][v15];
          }

          else
          {
            p_uv_tex_user_ref = &self->_uv_tex_user_ref;
          }

          v29 = *p_uv_tex_user_ref;

          v30 = v40;
          if (v23 != 1)
          {
            v30 = 1;
          }

          if ((v30 & 1) == 0)
          {
            v31 = self->_w_tex[v15];

            v25 = v31;
          }

          [(VNLKTOpticalFlowGPU *)self _doSolverWithCommandBuffer:v41 scale:v15 scale_xy_inv:self->_uv_tex[v10][v16] coeff:v29 in_uv_tex:v25 out_uv_tex:v17 out_w_tex:v18];
          v10 ^= 1uLL;
          v24 = v29;
          v16 = v15;
          v18 = _D10;
          v17 = _D10;
          --v23;
        }

        while (v23);
        v16 = v15;
      }

      v7 = v36;
      v32 = v41;
      if (v8)
      {
        if (v15)
        {
          v33 = &self->_uv_tex[v10 ^ 1][v15];
        }

        else
        {
          v33 = &self->_uv_tex_user_ref;
        }

        v34 = *v33;

        [(VNLKTOpticalFlowGPU *)self _doNLRegularizationWithCommandBuffer:v41 in_uv_tex:self->_uv_u32_alias_tex[v10][v15] join_tex:self->_I_u32_alias_tex[self->_current_frame_index][v15] w_tex:v25 out_uv_tex:v34];
        v10 ^= 1uLL;
        v32 = v41;
      }

      else
      {
        v34 = v29;
      }

      [v32 commit];

      v9 = v41;
    }

    while (v15-- > 0);
  }
}

- (BOOL)_setupBufferAndReturnError:(id *)a3
{
  maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
  if (!maxThreadExecutionWidth)
  {
    return 0;
  }

  v6 = [(VNLKTOpticalFlow *)self width];
  v7 = [(VNLKTOpticalFlow *)self height];
  v8 = [(VNLKTOpticalFlow *)self numScales];
  v9 = v6;
  v10 = v7;
  v11 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v6 height:v7 pixelFormatType:843264104 error:a3];
  self->_G0_pxbuf = v11;
  if (!v11)
  {
    return 0;
  }

  v71 = v8;
  v12 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v6 height:v7 pixelFormatType:843264104 error:a3];
  self->_G1_pxbuf = v12;
  if (!v12)
  {
    return 0;
  }

  v13 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v6 height:v7 pixelFormatType:1380411457 error:a3];
  self->_C0_pxbuf = v13;
  if (!v13)
  {
    return 0;
  }

  v14 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v6 height:v7 pixelFormatType:1380411457 error:a3];
  self->_C1_pxbuf = v14;
  if (!v14)
  {
    return 0;
  }

  v15 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v6 height:v7 pixelFormatType:1278226536 error:a3];
  self->_w_pxbuf = v15;
  if (!v15)
  {
    return 0;
  }

  v16 = (maxThreadExecutionWidth + v6 - 1) / maxThreadExecutionWidth * maxThreadExecutionWidth;
  mtlContext = self->_mtlContext;
  v69 = v6;
  if (mtlContext)
  {
    mtlContext = mtlContext->_device;
  }

  v72 = mtlContext;
  v18 = 0;
  v67 = v7;
  v19 = 8 * v16 * v7;
  v20 = 2 * v16 * v7;
  v21 = 1;
  do
  {
    v22 = v21;
    v23 = [(VNMetalContext *)v72 newBufferWithLength:v19 options:0];
    v24 = self->_Adiagb_buf[v18];
    self->_Adiagb_buf[v18] = v23;

    if (!self->_Adiagb_buf[v18] || (v25 = [(VNMetalContext *)v72 newBufferWithLength:v20 options:0], v26 = self->_Ixy_buf[v18], self->_Ixy_buf[v18] = v25, v26, !self->_Ixy_buf[v18]))
    {
      if (a3)
      {
        +[VNError errorForMemoryAllocationFailure];
        *a3 = v65 = 0;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v27 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v9 height:v10 pixelFormatType:843264104 error:a3];
    self->_uv_pxbuf[v18] = v27;
    if (!v27)
    {
      goto LABEL_30;
    }

    v21 = 0;
    v18 = 1;
  }

  while ((v22 & 1) != 0);
  v28 = v69;
  if (v71 >= 1)
  {
    v29 = 0;
    pyramid_size = self->_pyramid_size;
    v31 = v67;
LABEL_16:
    v32 = v28;
    v68 = v31;
    v33 = v31;
    p_width = &pyramid_size[v29].width;
    *p_width = v28;
    p_width[1] = v31;
    v35 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:65 pixelFormat:a3 textureSize:v28 plane:v31 error:?];
    v36 = self->_G0_tex[v29];
    self->_G0_tex[v29] = v35;

    if (self->_G0_tex[v29])
    {
      v37 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:65 pixelFormat:a3 textureSize:v28 plane:v31 error:?];
      v38 = self->_G1_tex[v29];
      self->_G1_tex[v29] = v37;

      if (self->_G1_tex[v29])
      {
        v39 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:115 pixelFormat:a3 textureSize:v28 plane:v31 error:?];
        v40 = self->_C0_tex[v29];
        self->_C0_tex[v29] = v39;

        if (self->_C0_tex[v29])
        {
          v41 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:115 pixelFormat:a3 textureSize:v28 plane:v31 error:?];
          v42 = self->_C1_tex[v29];
          self->_C1_tex[v29] = v41;

          if (self->_C1_tex[v29])
          {
            v70 = v28;
            v43 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:25 pixelFormat:a3 textureSize:v28 plane:v31 error:?];
            v44 = self->_w_tex[v29];
            self->_w_tex[v29] = v43;

            if (self->_w_tex[v29])
            {
              v45 = 0;
              v46 = 1;
              while (1)
              {
                v47 = v46;
                v48 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:65 pixelFormat:a3 textureSize:v32 plane:v33 error:?];
                v49 = self->_uv_tex[v45];
                v50 = v49[v29];
                v49[v29] = v48;

                v51 = v49[v29];
                if (!v51)
                {
                  break;
                }

                v52 = [(MTLTexture *)v51 newTextureViewWithPixelFormat:53];
                v53 = self->_uv_u32_alias_tex[v45];
                v54 = v53[v29];
                v53[v29] = v52;

                v46 = 0;
                v45 = 1;
                if ((v47 & 1) == 0)
                {
                  v55 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:70 width:v70 height:v68 mipmapped:0];
                  [v55 setUsage:19];
                  v56 = [(VNMetalContext *)v72 newTextureWithDescriptor:v55];
                  v57 = self->_I_tex[0][v29];
                  self->_I_tex[0][v29] = v56;

                  v58 = [(VNMetalContext *)v72 newTextureWithDescriptor:v55];
                  v59 = self->_I_tex[1][v29];
                  self->_I_tex[1][v29] = v58;

                  v60 = [(MTLTexture *)self->_I_tex[0][v29] newTextureViewWithPixelFormat:53];
                  v61 = self->_I_u32_alias_tex[0][v29];
                  self->_I_u32_alias_tex[0][v29] = v60;

                  v62 = [(MTLTexture *)self->_I_tex[1][v29] newTextureViewWithPixelFormat:53];
                  v63 = self->_I_u32_alias_tex + 8 * v29;
                  v64 = *(v63 + 10);
                  *(v63 + 10) = v62;

                  v28 = (((v70 + 1) / 2) & 1) + (v70 + 1) / 2;
                  v31 = (((v68 + 1) / 2) & 1) + (v68 + 1) / 2;

                  ++v29;
                  v65 = 1;
                  pyramid_size = self->_pyramid_size;
                  if (v29 != v71)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_31;
                }
              }
            }
          }
        }
      }
    }

LABEL_30:
    v65 = 0;
    goto LABEL_31;
  }

  v65 = 1;
LABEL_31:

  return v65;
}

- (BOOL)_setupPipelinesReturnError:(id *)a3
{
  v4 = [(VNMetalContext *)self->_mtlContext libraryReturnError:a3];
  if (v4)
  {
    mtlContext = self->_mtlContext;
    if (mtlContext)
    {
      mtlContext = mtlContext->_device;
    }

    v6 = mtlContext;
    v7 = 0;
    v8 = 0;
    v9 = self;
    do
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:kKernelNames[v7]];
      v11 = [v4 newFunctionWithName:v10];

      v12 = [(VNMetalContext *)v6 newComputePipelineStateWithFunction:v11 error:0];
      objc_storeStrong(v9->_computePipelines, v12);
      v13 = [v12 threadExecutionWidth];
      maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
      if (v13 > maxThreadExecutionWidth)
      {
        maxThreadExecutionWidth = [v12 threadExecutionWidth];
      }

      self->_maxThreadExecutionWidth = maxThreadExecutionWidth;

      ++v7;
      v9 = (v9 + 8);
      v8 = v11;
    }

    while (v7 != 9);
  }

  return v4 != 0;
}

- (void)_initMemory:(int)a3 height:(int)a4 numScales:(int)a5
{
  self->_maxThreadExecutionWidth = 0;
  self->_G0_pxbuf = 0;
  self->_G1_pxbuf = 0;
  self->_C0_pxbuf = 0;
  self->_C1_pxbuf = 0;
  self->_w_pxbuf = 0;
  uv_tex_user_ref = self->_uv_tex_user_ref;
  self->_uv_tex_user_ref = 0;

  self->_uv_pxbuf[0] = 0;
  self->_uv_pxbuf[1] = 0;
}

- (BOOL)estimateFlowStream:(__CVBuffer *)a3 error:(id *)a4
{
  if ([(VNLKTOpticalFlow *)self isValid])
  {
    v7 = [(VNLKTOpticalFlow *)self numScales];
    v8 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [v8 setLabel:@"LKT::Pyramid"];
    [(VNLKTOpticalFlowGPU *)self _zeroFlowWithCommandBuffer:v8 uv_tex:self->_uv_pxbuf[v7 + 1]];
    if ([(VNLKTOpticalFlowGPU *)self _createImagePyramidWithCommandBuffer:v8 in_pixelbuf:a3 I_idx:self->_current_frame_index error:a4])
    {
      [v8 commit];

      self->_current_frame_index ^= 1u;
      [(VNLKTOpticalFlowGPU *)self _computeOpticalFlow];
      return 1;
    }
  }

  else if (a4)
  {
    v10 = [VNError errorForInternalErrorWithLocalizedDescription:@"Optical flow estimation invalid state"];
    v11 = v10;
    result = 0;
    *a4 = v10;
    return result;
  }

  return 0;
}

- (BOOL)estimateFlowFromReference:(__CVBuffer *)a3 target:(__CVBuffer *)a4 error:(id *)a5
{
  if ([(VNLKTOpticalFlow *)self isValid])
  {
    v9 = [(VNLKTOpticalFlow *)self numScales];
    v10 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [v10 setLabel:@"LKT::Pyramid"];
    [(VNLKTOpticalFlowGPU *)self _zeroFlowWithCommandBuffer:v10 uv_tex:self->_uv_pxbuf[v9 + 1]];
    if ([(VNLKTOpticalFlowGPU *)self _createImagePyramidWithCommandBuffer:v10 in_pixelbuf:a3 I_idx:0 error:a5]&& [(VNLKTOpticalFlowGPU *)self _createImagePyramidWithCommandBuffer:v10 in_pixelbuf:a4 I_idx:1 error:a5])
    {
      [v10 commit];

      self->_current_frame_index = 0;
      [(VNLKTOpticalFlowGPU *)self _computeOpticalFlow];
      return 1;
    }
  }

  else if (a5)
  {
    v12 = [VNError errorForInternalErrorWithLocalizedDescription:@"Optical flow estimation invalid state"];
    v13 = v12;
    result = 0;
    *a5 = v12;
    return result;
  }

  return 0;
}

- (BOOL)setOutputUV:(__CVBuffer *)a3 error:(id *)a4
{
  if (!a3)
  {
    uv_tex_user_ref = self->_uv_tex_user_ref;
    self->_uv_tex_user_ref = 0;

    [(VNLKTOpticalFlow *)self setIsValid:0];
    return 1;
  }

  if (![VNLKTOpticalFlow _validateOutputImage:"_validateOutputImage:error:" error:?])
  {
    return 0;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType == 843264104)
  {
    v8 = 65;
    goto LABEL_8;
  }

  if (PixelFormatType != 843264102)
  {
    if (a4)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Unhandled metal pixel format"];
      *a4 = v10 = 0;
      return v10;
    }

    return 0;
  }

  v8 = 105;
LABEL_8:
  v11 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:a3 pixelFormat:v8 textureSize:a4 plane:self->_pyramid_size[0].width error:self->_pyramid_size[0].height];
  v10 = v11 != 0;
  if (v11)
  {
    objc_storeStrong(&self->_uv_tex_user_ref, v11);
    [(VNLKTOpticalFlow *)self setIsValid:1];
  }

  else if (a4)
  {
    *a4 = [VNError errorForInternalErrorWithLocalizedDescription:@"Could not bind pixel buffer to texture"];
  }

  return v10;
}

- (void)waitUntilCompleted
{
  v2 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v2 setLabel:@"LKT:waitUntilCompleted"];
  [v2 commit];
  [v2 waitUntilCompleted];
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_G0_pxbuf);
  CVPixelBufferRelease(self->_G1_pxbuf);
  CVPixelBufferRelease(self->_C0_pxbuf);
  CVPixelBufferRelease(self->_C1_pxbuf);
  CVPixelBufferRelease(self->_w_pxbuf);
  CVPixelBufferRelease(self->_uv_pxbuf[0]);
  CVPixelBufferRelease(self->_uv_pxbuf[1]);
  v3.receiver = self;
  v3.super_class = VNLKTOpticalFlowGPU;
  [(VNLKTOpticalFlowGPU *)&v3 dealloc];
}

- (VNLKTOpticalFlowGPU)initWithMetalContext:(id)a3 width:(int)a4 height:(int)a5 numScales:(int)a6 error:(id *)a7
{
  v8 = *&a6;
  v9 = *&a5;
  v10 = *&a4;
  v13 = a3;
  v20.receiver = self;
  v20.super_class = VNLKTOpticalFlowGPU;
  v14 = [(VNLKTOpticalFlow *)&v20 initWithWidth:v10 height:v9 numScales:v8];
  v15 = v14;
  if (!v14 || (v14->_current_frame_index = 0, objc_storeStrong(&v14->_mtlContext, a3), [(VNMetalContext *)v13 commandQueueReturnError:a7], v16 = objc_claimAutoreleasedReturnValue(), commandQueue = v15->_commandQueue, v15->_commandQueue = v16, commandQueue, v15->_commandQueue) && ([(VNLKTOpticalFlowGPU *)v15 _initMemory:v10 height:v9 numScales:v8], [(VNLKTOpticalFlowGPU *)v15 _setupPipelinesReturnError:a7]) && [(VNLKTOpticalFlowGPU *)v15 _setupBufferAndReturnError:a7])
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end