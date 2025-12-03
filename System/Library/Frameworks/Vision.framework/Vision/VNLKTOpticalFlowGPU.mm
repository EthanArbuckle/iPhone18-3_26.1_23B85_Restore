@interface VNLKTOpticalFlowGPU
- (BOOL)_createImagePyramidWithCommandBuffer:(id)buffer in_pixelbuf:(__CVBuffer *)in_pixelbuf I_idx:(int)i_idx error:(id *)error;
- (BOOL)_setupBufferAndReturnError:(id *)error;
- (BOOL)_setupPipelinesReturnError:(id *)error;
- (BOOL)estimateFlowFromReference:(__CVBuffer *)reference target:(__CVBuffer *)target error:(id *)error;
- (BOOL)estimateFlowStream:(__CVBuffer *)stream error:(id *)error;
- (BOOL)setOutputUV:(__CVBuffer *)v error:(id *)error;
- (VNLKTOpticalFlowGPU)initWithMetalContext:(id)context width:(int)width height:(int)height numScales:(int)scales error:(id *)error;
- (void)_computeFeaturesDerivativesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (void)_computeFeaturesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (void)_computeOpticalFlow;
- (void)_doNLRegularizationWithCommandBuffer:(id)buffer in_uv_tex:(id)in_uv_tex join_tex:(id)join_tex w_tex:(id)w_tex out_uv_tex:(id)out_uv_tex;
- (void)_doSolverWithCommandBuffer:(VNLKTOpticalFlowGPU *)self scale:(SEL)scale scale_xy_inv:(id)scale_xy_inv coeff:(int)coeff in_uv_tex:(id)in_uv_tex out_uv_tex:(id)out_uv_tex out_w_tex:(id)out_w_tex;
- (void)_downscale2XWithCommandBuffer:(id)buffer in_u32_alias_tex:(id)in_u32_alias_tex out_u32_alias_tex:(id)out_u32_alias_tex;
- (void)_initMemory:(int)memory height:(int)height numScales:(int)scales;
- (void)_zeroFlowWithCommandBuffer:(id)buffer uv_tex:(id)uv_tex;
- (void)dealloc;
- (void)waitUntilCompleted;
@end

@implementation VNLKTOpticalFlowGPU

- (void)_doNLRegularizationWithCommandBuffer:(id)buffer in_uv_tex:(id)in_uv_tex join_tex:(id)join_tex w_tex:(id)w_tex out_uv_tex:(id)out_uv_tex
{
  bufferCopy = buffer;
  in_uv_texCopy = in_uv_tex;
  join_texCopy = join_tex;
  w_texCopy = w_tex;
  out_uv_texCopy = out_uv_tex;
  v36 = 0;
  nlreg_radius = [(VNLKTOpticalFlow *)self nlreg_radius];
  nlreg_padding = [(VNLKTOpticalFlow *)self nlreg_padding];
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
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  computePipelines = self->_computePipelines;
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[8]];
  [computeCommandEncoder setTexture:in_uv_texCopy atIndex:0];
  [computeCommandEncoder setTexture:join_texCopy atIndex:1];
  [computeCommandEncoder setTexture:w_texCopy atIndex:2];
  [computeCommandEncoder setTexture:out_uv_texCopy atIndex:3];
  [computeCommandEncoder setBytes:&nlreg_radius length:32 atIndex:0];
  LODWORD(self) = [(MTLComputePipelineState *)self->_computePipelines[8] threadExecutionWidth];
  LODWORD(computePipelines) = [(MTLComputePipelineState *)computePipelines[8] maxTotalThreadsPerThreadgroup];
  v33[0] = (self + [in_uv_texCopy width] / 2 - 1) / self;
  v33[1] = (computePipelines / self + [in_uv_texCopy height] / 2 - 1) / (computePipelines / self);
  v33[2] = 1;
  v32[0] = self;
  v32[1] = computePipelines / self;
  v32[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v33 threadsPerThreadgroup:v32];
  [computeCommandEncoder endEncoding];
}

- (void)_doSolverWithCommandBuffer:(VNLKTOpticalFlowGPU *)self scale:(SEL)scale scale_xy_inv:(id)scale_xy_inv coeff:(int)coeff in_uv_tex:(id)in_uv_tex out_uv_tex:(id)out_uv_tex out_w_tex:(id)out_w_tex
{
  v12 = v8;
  v13 = v7;
  scale_xy_invCopy = scale_xy_inv;
  in_uv_texCopy = in_uv_tex;
  out_uv_texCopy = out_uv_tex;
  out_w_texCopy = out_w_tex;
  maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
  v19 = vmovn_s64(vcvtq_s64_f64(self->_pyramid_size[coeff]));
  v20 = v19.i32[0] - 1;
  v30 = v19.i32[1];
  v39[0] = v19;
  v39[1] = ((v19.i32[0] - 1 + maxThreadExecutionWidth) / maxThreadExecutionWidth * maxThreadExecutionWidth);
  v39[2] = v13;
  v39[3] = v12;
  computeCommandEncoder = [scale_xy_invCopy computeCommandEncoder];
  computePipelines = self->_computePipelines;
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[5]];
  [computeCommandEncoder setTexture:in_uv_texCopy atIndex:0];
  [computeCommandEncoder setTexture:self->_G0_tex[coeff] atIndex:1];
  [computeCommandEncoder setTexture:self->_G1_tex[coeff] atIndex:2];
  [computeCommandEncoder setTexture:self->_C0_tex[coeff] atIndex:3];
  [computeCommandEncoder setTexture:self->_C1_tex[coeff] atIndex:4];
  Adiagb_buf = self->_Adiagb_buf;
  [computeCommandEncoder setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  Ixy_buf = self->_Ixy_buf;
  [computeCommandEncoder setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [computeCommandEncoder setBytes:v39 length:32 atIndex:2];
  LODWORD(self) = [(MTLComputePipelineState *)self->_computePipelines[5] threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [computePipelines[5] maxTotalThreadsPerThreadgroup];
  v36 = (v20 + self) / self;
  v37 = (v30 - 1 + maxTotalThreadsPerThreadgroup / self) / (maxTotalThreadsPerThreadgroup / self);
  v38 = 1;
  selfCopy3 = self;
  v34 = maxTotalThreadsPerThreadgroup / self;
  v35 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v36 threadsPerThreadgroup:&selfCopy3];
  [computeCommandEncoder endEncoding];

  computeCommandEncoder2 = [scale_xy_invCopy computeCommandEncoder];
  [computeCommandEncoder2 setComputePipelineState:computePipelines[6]];
  [computeCommandEncoder2 setBuffer:*Adiagb_buf offset:0 atIndex:0];
  [computeCommandEncoder2 setBuffer:*Ixy_buf offset:0 atIndex:1];
  [computeCommandEncoder2 setBuffer:Adiagb_buf[1] offset:0 atIndex:2];
  [computeCommandEncoder2 setBuffer:Ixy_buf[1] offset:0 atIndex:3];
  [computeCommandEncoder2 setBytes:v39 length:32 atIndex:4];
  LODWORD(self) = [computePipelines[6] threadExecutionWidth];
  maxTotalThreadsPerThreadgroup2 = [computePipelines[6] maxTotalThreadsPerThreadgroup];
  v36 = (v20 + self) / self;
  v37 = (v30 - 1 + maxTotalThreadsPerThreadgroup2 / self) / (maxTotalThreadsPerThreadgroup2 / self);
  v38 = 1;
  selfCopy3 = self;
  v34 = maxTotalThreadsPerThreadgroup2 / self;
  v35 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v36 threadsPerThreadgroup:&selfCopy3];
  [computeCommandEncoder2 endEncoding];

  computeCommandEncoder3 = [scale_xy_invCopy computeCommandEncoder];
  [computeCommandEncoder3 setComputePipelineState:computePipelines[7]];
  [computeCommandEncoder3 setBuffer:Adiagb_buf[1] offset:0 atIndex:0];
  [computeCommandEncoder3 setBuffer:Ixy_buf[1] offset:0 atIndex:1];
  [computeCommandEncoder3 setTexture:in_uv_texCopy atIndex:0];
  [computeCommandEncoder3 setTexture:out_uv_texCopy atIndex:1];
  [computeCommandEncoder3 setTexture:out_w_texCopy atIndex:2];
  [computeCommandEncoder3 setBytes:v39 length:32 atIndex:2];
  LODWORD(self) = [computePipelines[7] threadExecutionWidth];
  maxTotalThreadsPerThreadgroup3 = [computePipelines[7] maxTotalThreadsPerThreadgroup];
  v36 = (v20 + self) / self;
  v37 = (v30 - 1 + maxTotalThreadsPerThreadgroup3 / self) / (maxTotalThreadsPerThreadgroup3 / self);
  v38 = 1;
  selfCopy3 = self;
  v34 = maxTotalThreadsPerThreadgroup3 / self;
  v35 = 1;
  [computeCommandEncoder3 dispatchThreadgroups:&v36 threadsPerThreadgroup:&selfCopy3];
  [computeCommandEncoder3 endEncoding];
}

- (void)_computeFeaturesDerivativesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  in_texCopy = in_tex;
  out_texCopy = out_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  computePipelines = self->_computePipelines;
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[4]];
  [computeCommandEncoder setTexture:in_texCopy atIndex:0];
  [computeCommandEncoder setTexture:out_texCopy atIndex:1];
  LODWORD(self) = [(MTLComputePipelineState *)self->_computePipelines[4] threadExecutionWidth];
  LODWORD(computePipelines) = [(MTLComputePipelineState *)computePipelines[4] maxTotalThreadsPerThreadgroup];
  v13[0] = (self + [in_texCopy width] - 1) / self;
  v13[1] = (computePipelines / self + [in_texCopy height] - 1) / (computePipelines / self);
  v13[2] = 1;
  v12[0] = self;
  v12[1] = computePipelines / self;
  v12[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v13 threadsPerThreadgroup:v12];
  [computeCommandEncoder endEncoding];
}

- (void)_computeFeaturesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  in_texCopy = in_tex;
  out_texCopy = out_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  computePipelines = self->_computePipelines;
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[3]];
  [computeCommandEncoder setTexture:in_texCopy atIndex:0];
  [computeCommandEncoder setTexture:out_texCopy atIndex:1];
  LODWORD(self) = [(MTLComputePipelineState *)self->_computePipelines[3] threadExecutionWidth];
  LODWORD(computePipelines) = [(MTLComputePipelineState *)computePipelines[3] maxTotalThreadsPerThreadgroup];
  v13[0] = (self + [in_texCopy width] - 1) / self;
  v13[1] = (computePipelines / self + [in_texCopy height] - 1) / (computePipelines / self);
  v13[2] = 1;
  v12[0] = self;
  v12[1] = computePipelines / self;
  v12[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v13 threadsPerThreadgroup:v12];
  [computeCommandEncoder endEncoding];
}

- (void)_downscale2XWithCommandBuffer:(id)buffer in_u32_alias_tex:(id)in_u32_alias_tex out_u32_alias_tex:(id)out_u32_alias_tex
{
  in_u32_alias_texCopy = in_u32_alias_tex;
  out_u32_alias_texCopy = out_u32_alias_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  computePipelines = self->_computePipelines;
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[2]];
  [computeCommandEncoder setTexture:in_u32_alias_texCopy atIndex:0];
  [computeCommandEncoder setTexture:out_u32_alias_texCopy atIndex:1];
  LODWORD(self) = [(MTLComputePipelineState *)self->_computePipelines[2] threadExecutionWidth];
  LODWORD(computePipelines) = [(MTLComputePipelineState *)computePipelines[2] maxTotalThreadsPerThreadgroup];
  v13[0] = (self + [out_u32_alias_texCopy width] - 1) / self;
  v13[1] = (computePipelines / self + [out_u32_alias_texCopy height] - 1) / (computePipelines / self);
  v13[2] = 1;
  v12[0] = self;
  v12[1] = computePipelines / self;
  v12[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v13 threadsPerThreadgroup:v12];
  [computeCommandEncoder endEncoding];
}

- (void)_zeroFlowWithCommandBuffer:(id)buffer uv_tex:(id)uv_tex
{
  uv_texCopy = uv_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[1]];
  [computeCommandEncoder setTexture:uv_texCopy atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_computePipelines[1] threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_computePipelines[1] maxTotalThreadsPerThreadgroup];
  v11[0] = (threadExecutionWidth + [(VNLKTOpticalFlow *)self width]- 1) / threadExecutionWidth;
  v11[1] = (maxTotalThreadsPerThreadgroup / threadExecutionWidth + [(VNLKTOpticalFlow *)self height]- 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth);
  v11[2] = 1;
  v10[0] = threadExecutionWidth;
  v10[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v10[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v11 threadsPerThreadgroup:v10];
  [computeCommandEncoder endEncoding];
}

- (BOOL)_createImagePyramidWithCommandBuffer:(id)buffer in_pixelbuf:(__CVBuffer *)in_pixelbuf I_idx:(int)i_idx error:(id *)error
{
  bufferCopy = buffer;
  width = [(VNLKTOpticalFlow *)self width];
  height = [(VNLKTOpticalFlow *)self height];
  v13 = [VNMetalContext bindPixelBufferToMTL2DTexture:in_pixelbuf pixelFormat:80 plane:error error:?];
  if (v13)
  {
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:self->_computePipelines[0]];
    [computeCommandEncoder setTexture:v13 atIndex:0];
    [computeCommandEncoder setTexture:self->_I_tex[i_idx][0] atIndex:1];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_computePipelines[0] threadExecutionWidth];
    maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_computePipelines[0] maxTotalThreadsPerThreadgroup];
    v22[0] = (width + threadExecutionWidth - 1) / threadExecutionWidth;
    v22[1] = (height + maxTotalThreadsPerThreadgroup / threadExecutionWidth - 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth);
    v22[2] = 1;
    v21[0] = threadExecutionWidth;
    v21[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    v21[2] = 1;
    [computeCommandEncoder dispatchThreadgroups:v22 threadsPerThreadgroup:v21];
    [computeCommandEncoder endEncoding];

    numScales = [(VNLKTOpticalFlow *)self numScales];
    if (numScales >= 2)
    {
      v18 = numScales - 1;
      v19 = &self->_I_u32_alias_tex[i_idx][1];
      do
      {
        [(VNLKTOpticalFlowGPU *)self _downscale2XWithCommandBuffer:bufferCopy in_u32_alias_tex:*(v19 - 1) out_u32_alias_tex:*v19];
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
  numScales = [(VNLKTOpticalFlow *)self numScales];
  numWarpings = [(VNLKTOpticalFlow *)self numWarpings];
  useNonLocalRegularization = [(VNLKTOpticalFlow *)self useNonLocalRegularization];
  _VF = __OFSUB__(numScales, 1);
  v7 = (numScales - 1);
  if (v7 < 0 == _VF)
  {
    v8 = useNonLocalRegularization;
    v9 = 0;
    v10 = 0;
    I_tex = self->_I_tex;
    v40 = !useNonLocalRegularization;
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

      commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LKT:ComputeFlow level %d", v15];
      [commandBuffer setLabel:v22];

      [VNLKTOpticalFlowGPU _computeFeaturesWithCommandBuffer:"_computeFeaturesWithCommandBuffer:in_tex:out_tex:" in_tex:? out_tex:?];
      [VNLKTOpticalFlowGPU _computeFeaturesWithCommandBuffer:"_computeFeaturesWithCommandBuffer:in_tex:out_tex:" in_tex:? out_tex:?];
      [VNLKTOpticalFlowGPU _computeFeaturesDerivativesWithCommandBuffer:"_computeFeaturesDerivativesWithCommandBuffer:in_tex:out_tex:" in_tex:? out_tex:?];
      [VNLKTOpticalFlowGPU _computeFeaturesDerivativesWithCommandBuffer:"_computeFeaturesDerivativesWithCommandBuffer:in_tex:out_tex:" in_tex:? out_tex:?];
      v23 = numWarpings;
      if (numWarpings < 1)
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

          [(VNLKTOpticalFlowGPU *)self _doSolverWithCommandBuffer:commandBuffer scale:v15 scale_xy_inv:self->_uv_tex[v10][v16] coeff:v29 in_uv_tex:v25 out_uv_tex:v17 out_w_tex:v18];
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
      v32 = commandBuffer;
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

        [(VNLKTOpticalFlowGPU *)self _doNLRegularizationWithCommandBuffer:commandBuffer in_uv_tex:self->_uv_u32_alias_tex[v10][v15] join_tex:self->_I_u32_alias_tex[self->_current_frame_index][v15] w_tex:v25 out_uv_tex:v34];
        v10 ^= 1uLL;
        v32 = commandBuffer;
      }

      else
      {
        v34 = v29;
      }

      [v32 commit];

      v9 = commandBuffer;
    }

    while (v15-- > 0);
  }
}

- (BOOL)_setupBufferAndReturnError:(id *)error
{
  maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
  if (!maxThreadExecutionWidth)
  {
    return 0;
  }

  width = [(VNLKTOpticalFlow *)self width];
  height = [(VNLKTOpticalFlow *)self height];
  numScales = [(VNLKTOpticalFlow *)self numScales];
  v9 = width;
  v10 = height;
  v11 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:843264104 error:error];
  self->_G0_pxbuf = v11;
  if (!v11)
  {
    return 0;
  }

  v71 = numScales;
  v12 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:843264104 error:error];
  self->_G1_pxbuf = v12;
  if (!v12)
  {
    return 0;
  }

  v13 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:1380411457 error:error];
  self->_C0_pxbuf = v13;
  if (!v13)
  {
    return 0;
  }

  v14 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:1380411457 error:error];
  self->_C1_pxbuf = v14;
  if (!v14)
  {
    return 0;
  }

  v15 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:1278226536 error:error];
  self->_w_pxbuf = v15;
  if (!v15)
  {
    return 0;
  }

  v16 = (maxThreadExecutionWidth + width - 1) / maxThreadExecutionWidth * maxThreadExecutionWidth;
  mtlContext = self->_mtlContext;
  v69 = width;
  if (mtlContext)
  {
    mtlContext = mtlContext->_device;
  }

  v72 = mtlContext;
  v18 = 0;
  v67 = height;
  v19 = 8 * v16 * height;
  v20 = 2 * v16 * height;
  v21 = 1;
  do
  {
    v22 = v21;
    v23 = [(VNMetalContext *)v72 newBufferWithLength:v19 options:0];
    v24 = self->_Adiagb_buf[v18];
    self->_Adiagb_buf[v18] = v23;

    if (!self->_Adiagb_buf[v18] || (v25 = [(VNMetalContext *)v72 newBufferWithLength:v20 options:0], v26 = self->_Ixy_buf[v18], self->_Ixy_buf[v18] = v25, v26, !self->_Ixy_buf[v18]))
    {
      if (error)
      {
        +[VNError errorForMemoryAllocationFailure];
        *error = v65 = 0;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v27 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v9 height:v10 pixelFormatType:843264104 error:error];
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
    v35 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:65 pixelFormat:error textureSize:v28 plane:v31 error:?];
    v36 = self->_G0_tex[v29];
    self->_G0_tex[v29] = v35;

    if (self->_G0_tex[v29])
    {
      v37 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:65 pixelFormat:error textureSize:v28 plane:v31 error:?];
      v38 = self->_G1_tex[v29];
      self->_G1_tex[v29] = v37;

      if (self->_G1_tex[v29])
      {
        v39 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:115 pixelFormat:error textureSize:v28 plane:v31 error:?];
        v40 = self->_C0_tex[v29];
        self->_C0_tex[v29] = v39;

        if (self->_C0_tex[v29])
        {
          v41 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:115 pixelFormat:error textureSize:v28 plane:v31 error:?];
          v42 = self->_C1_tex[v29];
          self->_C1_tex[v29] = v41;

          if (self->_C1_tex[v29])
          {
            v70 = v28;
            v43 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:25 pixelFormat:error textureSize:v28 plane:v31 error:?];
            v44 = self->_w_tex[v29];
            self->_w_tex[v29] = v43;

            if (self->_w_tex[v29])
            {
              v45 = 0;
              v46 = 1;
              while (1)
              {
                v47 = v46;
                v48 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:65 pixelFormat:error textureSize:v32 plane:v33 error:?];
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

- (BOOL)_setupPipelinesReturnError:(id *)error
{
  v4 = [(VNMetalContext *)self->_mtlContext libraryReturnError:error];
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
    selfCopy = self;
    do
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:kKernelNames[v7]];
      v11 = [v4 newFunctionWithName:v10];

      v12 = [(VNMetalContext *)v6 newComputePipelineStateWithFunction:v11 error:0];
      objc_storeStrong(selfCopy->_computePipelines, v12);
      threadExecutionWidth = [v12 threadExecutionWidth];
      maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
      if (threadExecutionWidth > maxThreadExecutionWidth)
      {
        maxThreadExecutionWidth = [v12 threadExecutionWidth];
      }

      self->_maxThreadExecutionWidth = maxThreadExecutionWidth;

      ++v7;
      selfCopy = (selfCopy + 8);
      v8 = v11;
    }

    while (v7 != 9);
  }

  return v4 != 0;
}

- (void)_initMemory:(int)memory height:(int)height numScales:(int)scales
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

- (BOOL)estimateFlowStream:(__CVBuffer *)stream error:(id *)error
{
  if ([(VNLKTOpticalFlow *)self isValid])
  {
    numScales = [(VNLKTOpticalFlow *)self numScales];
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [commandBuffer setLabel:@"LKT::Pyramid"];
    [(VNLKTOpticalFlowGPU *)self _zeroFlowWithCommandBuffer:commandBuffer uv_tex:self->_uv_pxbuf[numScales + 1]];
    if ([(VNLKTOpticalFlowGPU *)self _createImagePyramidWithCommandBuffer:commandBuffer in_pixelbuf:stream I_idx:self->_current_frame_index error:error])
    {
      [commandBuffer commit];

      self->_current_frame_index ^= 1u;
      [(VNLKTOpticalFlowGPU *)self _computeOpticalFlow];
      return 1;
    }
  }

  else if (error)
  {
    v10 = [VNError errorForInternalErrorWithLocalizedDescription:@"Optical flow estimation invalid state"];
    v11 = v10;
    result = 0;
    *error = v10;
    return result;
  }

  return 0;
}

- (BOOL)estimateFlowFromReference:(__CVBuffer *)reference target:(__CVBuffer *)target error:(id *)error
{
  if ([(VNLKTOpticalFlow *)self isValid])
  {
    numScales = [(VNLKTOpticalFlow *)self numScales];
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [commandBuffer setLabel:@"LKT::Pyramid"];
    [(VNLKTOpticalFlowGPU *)self _zeroFlowWithCommandBuffer:commandBuffer uv_tex:self->_uv_pxbuf[numScales + 1]];
    if ([(VNLKTOpticalFlowGPU *)self _createImagePyramidWithCommandBuffer:commandBuffer in_pixelbuf:reference I_idx:0 error:error]&& [(VNLKTOpticalFlowGPU *)self _createImagePyramidWithCommandBuffer:commandBuffer in_pixelbuf:target I_idx:1 error:error])
    {
      [commandBuffer commit];

      self->_current_frame_index = 0;
      [(VNLKTOpticalFlowGPU *)self _computeOpticalFlow];
      return 1;
    }
  }

  else if (error)
  {
    v12 = [VNError errorForInternalErrorWithLocalizedDescription:@"Optical flow estimation invalid state"];
    v13 = v12;
    result = 0;
    *error = v12;
    return result;
  }

  return 0;
}

- (BOOL)setOutputUV:(__CVBuffer *)v error:(id *)error
{
  if (!v)
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

  PixelFormatType = CVPixelBufferGetPixelFormatType(v);
  if (PixelFormatType == 843264104)
  {
    v8 = 65;
    goto LABEL_8;
  }

  if (PixelFormatType != 843264102)
  {
    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Unhandled metal pixel format"];
      *error = v10 = 0;
      return v10;
    }

    return 0;
  }

  v8 = 105;
LABEL_8:
  v11 = [(VNMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:v pixelFormat:v8 textureSize:error plane:self->_pyramid_size[0].width error:self->_pyramid_size[0].height];
  v10 = v11 != 0;
  if (v11)
  {
    objc_storeStrong(&self->_uv_tex_user_ref, v11);
    [(VNLKTOpticalFlow *)self setIsValid:1];
  }

  else if (error)
  {
    *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Could not bind pixel buffer to texture"];
  }

  return v10;
}

- (void)waitUntilCompleted
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"LKT:waitUntilCompleted"];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
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

- (VNLKTOpticalFlowGPU)initWithMetalContext:(id)context width:(int)width height:(int)height numScales:(int)scales error:(id *)error
{
  v8 = *&scales;
  v9 = *&height;
  v10 = *&width;
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = VNLKTOpticalFlowGPU;
  v14 = [(VNLKTOpticalFlow *)&v20 initWithWidth:v10 height:v9 numScales:v8];
  v15 = v14;
  if (!v14 || (v14->_current_frame_index = 0, objc_storeStrong(&v14->_mtlContext, context), [(VNMetalContext *)contextCopy commandQueueReturnError:error], v16 = objc_claimAutoreleasedReturnValue(), commandQueue = v15->_commandQueue, v15->_commandQueue = v16, commandQueue, v15->_commandQueue) && ([(VNLKTOpticalFlowGPU *)v15 _initMemory:v10 height:v9 numScales:v8], [(VNLKTOpticalFlowGPU *)v15 _setupPipelinesReturnError:error]) && [(VNLKTOpticalFlowGPU *)v15 _setupBufferAndReturnError:error])
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