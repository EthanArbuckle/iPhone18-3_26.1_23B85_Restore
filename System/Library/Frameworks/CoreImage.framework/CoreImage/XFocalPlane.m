@interface XFocalPlane
- (XFocalPlane)initWithDevice:(id)a3 library:(id)a4;
- (int)_compileShadersWithLibrary:(id)a3;
- (int)allocateResources;
- (int)encodeDisparityRefinementPreprocessingOn:(id)a3 alphaTexture:(id)a4 inputDisparityTexture:(id)a5 outputDisparityTexture:(id)a6 configuration:(id *)a7;
- (int)encodeFocalPlaneCalcOn:(id)a3 disparityTexture:(id)a4;
- (int)encodeMinMaxOn:(id)a3 inputTexture:(id)a4;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation XFocalPlane

- (XFocalPlane)initWithDevice:(id)a3 library:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = XFocalPlane;
  v9 = [(XFocalPlane *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_library, a4);
  }

  return v10;
}

- (int)allocateResources
{
  v3 = [(XFocalPlane *)self _compileShadersWithLibrary:self->_library];
  v4 = [(MTLDevice *)self->_device newBufferWithLength:8 options:32];
  minMaxAtomic_buf = self->_minMaxAtomic_buf;
  self->_minMaxAtomic_buf = v4;

  if (!self->_minMaxAtomic_buf || (v6 = [(MTLDevice *)self->_device newBufferWithLength:16 options:32], minMaxResult_buf = self->_minMaxResult_buf, self->_minMaxResult_buf = v6, minMaxResult_buf, !self->_minMaxResult_buf) || (v8 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0], zeroShiftResult_buf = self->_zeroShiftResult_buf, self->_zeroShiftResult_buf = v8, zeroShiftResult_buf, !self->_zeroShiftResult_buf))
  {
    v3 = -12786;
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    [(XFocalPlane *)self releaseResources];
  }

  return v3;
}

- (void)dealloc
{
  [(XFocalPlane *)self releaseResources];
  v3.receiver = self;
  v3.super_class = XFocalPlane;
  [(XFocalPlane *)&v3 dealloc];
}

- (void)releaseResources
{
  disparityRefinementPreprocessingKernel = self->_disparityRefinementPreprocessingKernel;
  self->_disparityRefinementPreprocessingKernel = 0;

  minMax0_kernel = self->_minMax0_kernel;
  self->_minMax0_kernel = 0;

  minMax1_kernel = self->_minMax1_kernel;
  self->_minMax1_kernel = 0;

  minMax2_kernel = self->_minMax2_kernel;
  self->_minMax2_kernel = 0;

  calc_kernel = self->_calc_kernel;
  self->_calc_kernel = 0;

  minMaxAtomic_buf = self->_minMaxAtomic_buf;
  self->_minMaxAtomic_buf = 0;

  minMaxResult_buf = self->_minMaxResult_buf;
  self->_minMaxResult_buf = 0;

  zeroShiftResult_buf = self->_zeroShiftResult_buf;
  self->_zeroShiftResult_buf = 0;
}

- (int)_compileShadersWithLibrary:(id)a3
{
  v4 = a3;
  v5 = [v4 newFunctionWithName:@"disparityRefinementPreprocessing"];
  v6 = OUTLINED_FUNCTION_2_10();
  disparityRefinementPreprocessingKernel = self->_disparityRefinementPreprocessingKernel;
  self->_disparityRefinementPreprocessingKernel = v6;

  if (!self->_disparityRefinementPreprocessingKernel)
  {
    goto LABEL_8;
  }

  v8 = [v4 newFunctionWithName:@"fpr_slm_shiftmap_calcminmax0"];

  v9 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v8 error:0];
  minMax0_kernel = self->_minMax0_kernel;
  self->_minMax0_kernel = v9;

  if (!self->_minMax0_kernel)
  {
    goto LABEL_9;
  }

  v5 = [v4 newFunctionWithName:@"fpr_slm_shiftmap_calcminmax1"];

  v11 = OUTLINED_FUNCTION_2_10();
  minMax1_kernel = self->_minMax1_kernel;
  self->_minMax1_kernel = v11;

  if (!self->_minMax1_kernel)
  {
LABEL_8:
    v17 = -12786;
    goto LABEL_7;
  }

  v8 = [v4 newFunctionWithName:@"fpr_slm_shiftmap_calcminmax2"];

  v13 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v8 error:0];
  minMax2_kernel = self->_minMax2_kernel;
  self->_minMax2_kernel = v13;

  if (!self->_minMax2_kernel)
  {
LABEL_9:
    v17 = -12786;
    v5 = v8;
    goto LABEL_7;
  }

  v5 = [v4 newFunctionWithName:@"fpr_slm_calc"];

  v15 = OUTLINED_FUNCTION_2_10();
  calc_kernel = self->_calc_kernel;
  self->_calc_kernel = v15;

  if (!self->_calc_kernel)
  {
    goto LABEL_8;
  }

  v17 = 0;
LABEL_7:

  return v17;
}

- (int)encodeDisparityRefinementPreprocessingOn:(id)a3 alphaTexture:(id)a4 inputDisparityTexture:(id)a5 outputDisparityTexture:(id)a6 configuration:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  self->_config.zeroShiftPercentile = a7->var0;
  v16 = [(XFocalPlane *)self encodeFocalPlaneCalcOn:v12 disparityTexture:v14];
  if (v16)
  {
    v21 = v16;
  }

  else
  {
    v17 = [v12 computeCommandEncoder];
    if (v17)
    {
      v18 = v17;
      [v17 setLabel:@"encoder _disparityRefinementPreprocessingKernel"];
      [v18 setComputePipelineState:self->_disparityRefinementPreprocessingKernel];
      [v18 setTexture:v13 atIndex:0];
      [v18 setTexture:v14 atIndex:1];
      [v18 setTexture:v15 atIndex:2];
      [v18 setBytes:a7 length:44 atIndex:0];
      [v18 setBytes:&self->_config length:20 atIndex:1];
      [v18 setBuffer:self->_zeroShiftResult_buf offset:0 atIndex:2];
      v19 = [(MTLComputePipelineState *)self->_disparityRefinementPreprocessingKernel threadExecutionWidth];
      v20 = [(MTLComputePipelineState *)self->_disparityRefinementPreprocessingKernel maxTotalThreadsPerThreadgroup]/ v19;
      v24[0] = (v19 + [v15 width] - 1) / v19;
      v24[1] = (v20 + [v15 height] - 1) / v20;
      v24[2] = 1;
      v23[0] = v19;
      v23[1] = v20;
      v23[2] = 1;
      [v18 dispatchThreadgroups:v24 threadsPerThreadgroup:v23];
      [v18 endEncoding];

      v21 = 0;
    }

    else
    {
      v21 = -1;
    }
  }

  return v21;
}

- (int)encodeMinMaxOn:(id)a3 inputTexture:(id)a4
{
  v6 = a4;
  v7 = [a3 computeCommandEncoder];
  v8 = v7;
  if (v7)
  {
    [v7 setLabel:@"encoder _minMax_kernels"];
    [v8 setComputePipelineState:self->_minMax0_kernel];
    v9 = OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_1_9(v9, v10);
    [v8 setComputePipelineState:self->_minMax1_kernel];
    [v8 setTexture:v6 atIndex:0];
    OUTLINED_FUNCTION_0_6();
    [(MTLComputePipelineState *)self->_minMax1_kernel threadExecutionWidth];
    [(MTLComputePipelineState *)self->_minMax1_kernel maxTotalThreadsPerThreadgroup];
    [v6 width];
    v11 = [v6 height];
    OUTLINED_FUNCTION_1_9(v11, v12);
    [v8 setComputePipelineState:self->_minMax2_kernel];
    OUTLINED_FUNCTION_0_6();
    v13 = [v8 setBuffer:self->_minMaxResult_buf offset:0 atIndex:1];
    OUTLINED_FUNCTION_1_9(v13, v14);
    [v8 endEncoding];
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

- (int)encodeFocalPlaneCalcOn:(id)a3 disparityTexture:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(XFocalPlane *)self encodeMinMaxOn:v6 inputTexture:v7];
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v9 = [v6 computeCommandEncoder];
    if (v9)
    {
      v10 = v9;
      [v9 setLabel:@"encode slm_calc_kernel"];
      [v10 setComputePipelineState:self->_calc_kernel];
      [v10 setBytes:&self->_config length:20 atIndex:0];
      [v10 setBuffer:self->_minMaxResult_buf offset:0 atIndex:1];
      [v10 setBuffer:self->_zeroShiftResult_buf offset:0 atIndex:2];
      [v10 setTexture:v7 atIndex:0];
      [v10 setThreadgroupMemoryLength:1024 atIndex:0];
      v15 = vdupq_n_s64(1uLL);
      v16 = 1;
      v13 = xmmword_19CF27AE0;
      v14 = 1;
      [v10 dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];
      [v10 endEncoding];

      v11 = 0;
    }

    else
    {
      v11 = -1;
    }
  }

  return v11;
}

@end