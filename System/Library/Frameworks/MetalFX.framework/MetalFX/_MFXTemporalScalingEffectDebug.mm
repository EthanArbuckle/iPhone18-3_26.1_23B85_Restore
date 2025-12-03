@interface _MFXTemporalScalingEffectDebug
- (CGPoint)jitterOffset;
- (CGPoint)motionVectorScale;
- (CGPoint)previousJitterOffset;
- (_MFXTemporalScalingEffectDebug)initWithDevice:(id)device descriptor:(id)descriptor mode:(unint64_t)mode enableJitterViz:(BOOL)viz;
- (__n128)currentViewToClipMatrix;
- (__n128)currentWorldToViewMatrix;
- (__n128)previousViewToClipMatrix;
- (__n128)previousWorldToViewMatrix;
- (__n128)setCurrentViewToClipMatrix:(__n128)matrix;
- (__n128)setCurrentWorldToViewMatrix:(__n128)matrix;
- (__n128)setPreviousViewToClipMatrix:(__n128)matrix;
- (__n128)setPreviousWorldToViewMatrix:(__n128)matrix;
- (float)jitterOffsetX;
- (float)motionVectorScaleX;
- (void)encodeToCommandBuffer:(id)buffer;
- (void)encodeToCommandQueue:(id)queue;
@end

@implementation _MFXTemporalScalingEffectDebug

- (_MFXTemporalScalingEffectDebug)initWithDevice:(id)device descriptor:(id)descriptor mode:(unint64_t)mode enableJitterViz:(BOOL)viz
{
  device;
  descriptorCopy = descriptor;
  v13.receiver = self;
  v13.super_class = _MFXTemporalScalingEffectDebug;
  v11 = [(_MTLFXEffectBase *)&v13 init];
  v11->_mode = mode;
  v11->_jitterVizEnabled = viz;
  *(&v11->_preExposure + 1) = 1065353216;
  v14 = 0;
  findEnvVarNum<int>();
}

- (float)jitterOffsetX
{
  v2 = *self->_jitterOffset;
  LODWORD(result) = v2;
  return result;
}

- (float)motionVectorScaleX
{
  v2 = *self->_motionVectorScale;
  LODWORD(result) = v2;
  return result;
}

- (CGPoint)jitterOffset
{
  v2 = vcvtq_f64_f32(*self->_jitterOffset);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (CGPoint)motionVectorScale
{
  v2 = vcvtq_f64_f32(*self->_motionVectorScale);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(_MTLFXEffectBase *)self _beginEncode];
  if (MTLReportFailureTypeEnabled())
  {
    checkInputOutputTextures(self->_colorTexture, self->_depthTexture, self->_motionTexture, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
    inputContentWidth = self->_inputContentWidth;
    inputContentHeight = self->_inputContentHeight;
    inputContentMaxScale = self->_inputContentMaxScale;
    preExposure = self->_preExposure;
    outputWidth = self->_outputWidth;
    outputHeight = self->_outputHeight;
    v10 = fminf(outputWidth / inputContentWidth, outputHeight / inputContentHeight);
    if (v10 < inputContentMaxScale)
    {
      v35 = v10;
      v36 = inputContentMaxScale;
      MTLReportFailure();
    }

    v11 = fmaxf(outputWidth / (inputContentWidth + 1), outputHeight / (inputContentHeight + 1));
    if (v11 > preExposure)
    {
      v35 = v11;
      v36 = preExposure;
      MTLReportFailure();
    }

    if ([(MTLTexture *)self->_outputTexture storageMode:*&v35]!= 2)
    {
      MTLReportFailure();
    }
  }

  MetalFxScopedSignpost::MetalFxScopedSignpost(v50, 0, self, 0, self->super.super.super._encodeID, 0);
  if (MTLTraceEnabled())
  {
    [bufferCopy globalTraceObjectID];
    kdebug_trace();
  }

  v12 = objc_alloc_init(MEMORY[0x277CD6F50]);
  colorAttachments = [v12 colorAttachments];
  v14 = [colorAttachments objectAtIndexedSubscript:0];
  [v14 setLoadAction:2];

  colorAttachments2 = [v12 colorAttachments];
  v16 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v16 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  colorAttachments3 = [v12 colorAttachments];
  v18 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v18 setStoreAction:1];

  outputTexture = self->_outputTexture;
  colorAttachments4 = [v12 colorAttachments];
  v21 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v21 setTexture:outputTexture];

  v37 = [bufferCopy renderCommandEncoderWithDescriptor:v12];
  [v37 endEncoding];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [(_MTLFXEffect *)self _didCreateComputeCommandEncoder:computeCommandEncoder forEncode:self->super.super.super._encodeID];
  if (self->_fence)
  {
    [computeCommandEncoder waitForFence:?];
  }

  inputWidth = self->_inputWidth;
  inputHeight = self->_inputHeight;
  v48 = inputWidth;
  v24 = *self->_motionVectorScale;
  *&v25 = (self->_outputWidth * v24.f32[0]) / self->_inputContentWidth;
  *(&v25 + 1) = vmuls_lane_f32(self->_outputHeight, v24, 1) / self->_inputContentHeight;
  v46 = *self->_jitterOffset;
  v47 = v25;
  v26 = -1.0;
  if (BYTE1(self->_inputContentMinScale))
  {
    v26 = 1.0;
  }

  v45 = v26;
  [computeCommandEncoder setComputePipelineState:self->_dilateFlowPSO];
  [computeCommandEncoder setTexture:self->_depthTexture atIndex:0];
  [computeCommandEncoder setTexture:self->_motionTexture atIndex:1];
  [computeCommandEncoder setTexture:self->_dilatedFlow atIndex:2];
  [computeCommandEncoder setBytes:&v45 length:4 atIndex:0];
  [computeCommandEncoder setBytes:&v48 length:4 atIndex:1];
  v42 = v48 + 2;
  v43 = inputHeight + 2;
  v44 = 1;
  v40 = vdupq_n_s64(8uLL);
  v41 = 1;
  [computeCommandEncoder dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  inputContentMinScale_low = LOBYTE(self->_inputContentMinScale);
  if (self->_mode == 2)
  {
    [computeCommandEncoder setComputePipelineState:self->_copyHistoryToCurrent];
    [computeCommandEncoder setTexture:self->_outputTexture atIndex:0];
    [computeCommandEncoder setTexture:self->_history[0] atIndex:1];
    [computeCommandEncoder setBytes:&v46 length:8 atIndex:0];
    v27 = self->_outputHeight;
    v42 = self->_outputWidth;
    v43 = v27;
    v44 = 1;
    v40 = vdupq_n_s64(8uLL);
    v41 = 1;
    [computeCommandEncoder dispatchThreads:&v42 threadsPerThreadgroup:&v40];
    v28 = self->_outputWidth;
    inputHeight = self->_outputHeight;
    v48 = v28;
    [computeCommandEncoder setComputePipelineState:self->_unjitterCurrent];
    [computeCommandEncoder setTexture:self->_colorTexture atIndex:0];
    [computeCommandEncoder setTexture:self->_outputTexture atIndex:1];
    [computeCommandEncoder setTexture:self->_history[0] atIndex:2];
    [computeCommandEncoder setBytes:&v46 length:8 atIndex:0];
    [computeCommandEncoder setBytes:&v48 length:4 atIndex:1];
    v29 = self->_inputHeight;
    v42 = self->_inputWidth;
    v43 = v29;
    v44 = 1;
    v40 = vdupq_n_s64(8uLL);
    v41 = 1;
    [computeCommandEncoder dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  }

  else
  {
    [computeCommandEncoder setComputePipelineState:self->_blendUnjitterCurrAndPrev];
    [computeCommandEncoder setTexture:self->_dilatedFlow atIndex:0];
    [computeCommandEncoder setTexture:self->_history[self->_currHistoryIdx == 0] atIndex:1];
    [computeCommandEncoder setTexture:self->_colorTexture atIndex:2];
    [computeCommandEncoder setTexture:self->_outputTexture atIndex:3];
    [computeCommandEncoder setTexture:self->_history[self->_currHistoryIdx] atIndex:4];
    [computeCommandEncoder setBytes:&v46 length:8 atIndex:0];
    [computeCommandEncoder setBytes:&v48 length:4 atIndex:1];
    [computeCommandEncoder setBytes:&v47 length:8 atIndex:2];
    [computeCommandEncoder setBytes:&inputContentMinScale_low length:1 atIndex:3];
    v30 = self->_outputHeight;
    v42 = self->_outputWidth;
    v43 = v30;
    v44 = 1;
    v40 = vdupq_n_s64(8uLL);
    v41 = 1;
    [computeCommandEncoder dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  }

  if (self->_jitterVizEnabled)
  {
    [computeCommandEncoder setComputePipelineState:self->_jitterViz];
    [computeCommandEncoder setTexture:self->_history[self->_currHistoryIdx == 0] atIndex:0];
    [computeCommandEncoder setTexture:self->_outputTexture atIndex:1];
    [computeCommandEncoder setTexture:self->_history[self->_currHistoryIdx] atIndex:2];
    [computeCommandEncoder setBytes:&v46 length:8 atIndex:0];
    [computeCommandEncoder setBytes:&self->_jitterVizOffset[3] length:4 atIndex:1];
    [computeCommandEncoder setBytes:&self->_preExposure + 1 length:4 atIndex:2];
    LOWORD(v31) = v48;
    *&v32 = v31 * 0.2;
    LODWORD(v33) = *&v32;
    LOWORD(v32) = inputHeight;
    v34 = (v32 * 0.2);
    if (v33 >= v34)
    {
      v33 = v34;
    }

    else
    {
      v33 = v33;
    }

    v42 = v33;
    v43 = v33;
    v44 = 1;
    v40 = vdupq_n_s64(8uLL);
    v41 = 1;
    [computeCommandEncoder dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  }

  if (self->_fence)
  {
    [computeCommandEncoder updateFence:?];
  }

  [computeCommandEncoder endEncoding];

  self->_currHistoryIdx = self->_currHistoryIdx == 0;
  LOBYTE(self->_inputContentMinScale) = 0;

  MetalFxScopedSignpost::~MetalFxScopedSignpost(v50);
}

- (void)encodeToCommandQueue:(id)queue
{
  commandBuffer = [queue commandBuffer];
  [(_MFXTemporalScalingEffectDebug *)self encodeToCommandBuffer:?];
  [commandBuffer commit];
}

- (CGPoint)previousJitterOffset
{
  x = self->_previousJitterOffset.x;
  y = self->_previousJitterOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (__n128)currentWorldToViewMatrix
{
  result = *(self + 368);
  v2 = *(self + 384);
  v3 = *(self + 400);
  v4 = *(self + 416);
  return result;
}

- (__n128)setCurrentWorldToViewMatrix:(__n128)matrix
{
  result[23] = a2;
  result[24] = matrix;
  result[25] = a4;
  result[26] = a5;
  return result;
}

- (__n128)currentViewToClipMatrix
{
  result = *(self + 432);
  v2 = *(self + 448);
  v3 = *(self + 464);
  v4 = *(self + 480);
  return result;
}

- (__n128)setCurrentViewToClipMatrix:(__n128)matrix
{
  result[27] = a2;
  result[28] = matrix;
  result[29] = a4;
  result[30] = a5;
  return result;
}

- (__n128)previousWorldToViewMatrix
{
  result = *(self + 496);
  v2 = *(self + 512);
  v3 = *(self + 528);
  v4 = *(self + 544);
  return result;
}

- (__n128)setPreviousWorldToViewMatrix:(__n128)matrix
{
  result[31] = a2;
  result[32] = matrix;
  result[33] = a4;
  result[34] = a5;
  return result;
}

- (__n128)previousViewToClipMatrix
{
  result = *(self + 560);
  v2 = *(self + 576);
  v3 = *(self + 592);
  v4 = *(self + 608);
  return result;
}

- (__n128)setPreviousViewToClipMatrix:(__n128)matrix
{
  result[35] = a2;
  result[36] = matrix;
  result[37] = a4;
  result[38] = a5;
  return result;
}

@end