@interface XMattingSolver
- (XMattingSolver)initWithDevice:(id)a3 library:(id)a4;
- (int)_compileShadersWithLibrary:(id)a3;
- (int)allocateResources:(id *)a3;
- (int)encodeApplySolverConstraintsOn:(id)a3 constraints:(id)a4 filteredSegmentation:(id)a5 segmentation:(id)a6;
- (int)encodeConstraintsOn:(id)a3 segmentation:(id)a4 constraints:(id)a5;
- (int)enqueueSolveOn:(id)a3 constraints:(id)a4 colorGuide:(id)a5 extraGuide:(id)a6 inputTexture:(id)a7 outputTexture:(id)a8;
- (void)releaseResources;
@end

@implementation XMattingSolver

- (XMattingSolver)initWithDevice:(id)a3 library:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = XMattingSolver;
  v9 = [(XMattingSolver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_library, a4);
  }

  return v10;
}

- (void)releaseResources
{
  solverConstraintsKernel = self->_solverConstraintsKernel;
  self->_solverConstraintsKernel = 0;

  applySolverConstraintsKernel = self->_applySolverConstraintsKernel;
  self->_applySolverConstraintsKernel = 0;

  tmpSegmentation = self->_tmpSegmentation;
  self->_tmpSegmentation = 0;

  fgErodedSegmentation = self->_fgErodedSegmentation;
  self->_fgErodedSegmentation = 0;

  bgErodedSegmentation = self->_bgErodedSegmentation;
  self->_bgErodedSegmentation = 0;
}

- (int)allocateResources:(id *)a3
{
  v5 = *&a3->var0;
  v6 = *&a3->var4;
  *&self->_config.fgThresholdValue = *&a3->var7;
  *&self->_config.internalWidth = v5;
  *&self->_config.epsilon = v6;
  v7 = [(XMattingSolver *)self _compileShadersWithLibrary:self->_library];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:a3->var0 height:a3->var1 mipmapped:0];
    [v9 setUsage:3];
    v10 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
    tmpSegmentation = self->_tmpSegmentation;
    self->_tmpSegmentation = v10;

    if (!self->_tmpSegmentation)
    {
      goto LABEL_15;
    }

    var4 = a3->var4;
    var2 = a3->var2;
    var3 = a3->var3;
    var0 = a3->var0;
    var1 = a3->var1;
    v17 = off_1E75C0BB8;
    if (!a3->var6)
    {
      v17 = &off_1E75C0BC0;
    }

    v18 = [objc_alloc(*v17) initWithDevice:self->_device library:self->_library];
    mattingFilter = self->_mattingFilter;
    self->_mattingFilter = v18;

    v20 = self->_mattingFilter;
    if (v20)
    {
      v21 = var1 / var3;
      if (var1 / var3 <= 1)
      {
        v21 = 1;
      }

      v22 = var0 / var3;
      if (var0 / var3 <= 1)
      {
        v22 = 1;
      }

      v41[0] = v22;
      v41[1] = v21;
      v41[2] = var2;
      v42 = 0x100000000;
      v43 = var4;
      v44 = 0;
      v8 = [(MattingFilter *)v20 allocateResources:v41];
      v23 = objc_alloc(MEMORY[0x1E6974640]);
      *&v24 = a3->var7;
      LODWORD(v25) = 1.0;
      v26 = [v23 initWithDevice:self->_device thresholdValue:0 maximumValue:v24 linearGrayColorTransform:v25];
      fgThresholdFilter = self->_fgThresholdFilter;
      self->_fgThresholdFilter = v26;

      v28 = objc_alloc(MEMORY[0x1E6974648]);
      *&v29 = a3->var8;
      LODWORD(v30) = 1.0;
      v31 = [v28 initWithDevice:self->_device thresholdValue:0 maximumValue:v29 linearGrayColorTransform:v30];
      bgThresholdFilter = self->_bgThresholdFilter;
      self->_bgThresholdFilter = v31;

      v33 = [objc_alloc(MEMORY[0x1E6974570]) initWithDevice:self->_device kernelWidth:a3->var9 kernelHeight:a3->var9];
      erosionFilter = self->_erosionFilter;
      self->_erosionFilter = v33;

      [(MPSImageAreaMin *)self->_erosionFilter setEdgeMode:0];
      v35 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:a3->var0 height:a3->var1 mipmapped:0];

      [v35 setUsage:3];
      v36 = [(MTLDevice *)self->_device newTextureWithDescriptor:v35];
      fgErodedSegmentation = self->_fgErodedSegmentation;
      self->_fgErodedSegmentation = v36;

      v38 = [(MTLDevice *)self->_device newTextureWithDescriptor:v35];
      bgErodedSegmentation = self->_bgErodedSegmentation;
      self->_bgErodedSegmentation = v38;

      if (!self->_fgErodedSegmentation || !self->_bgErodedSegmentation)
      {
        v8 = -12786;
      }

      v9 = v35;
    }

    else
    {
LABEL_15:
      v8 = -12786;
    }
  }

  return v8;
}

- (int)_compileShadersWithLibrary:(id)a3
{
  v4 = a3;
  v5 = [v4 newFunctionWithName:@"solverConstraints"];
  v6 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v5 error:0];
  solverConstraintsKernel = self->_solverConstraintsKernel;
  self->_solverConstraintsKernel = v6;

  if (self->_solverConstraintsKernel)
  {
    v8 = [v4 newFunctionWithName:@"applySolverConstraints"];

    v9 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v8 error:0];
    applySolverConstraintsKernel = self->_applySolverConstraintsKernel;
    self->_applySolverConstraintsKernel = v9;

    if (self->_applySolverConstraintsKernel)
    {
      v11 = 0;
    }

    else
    {
      v11 = -12786;
    }

    v5 = v8;
  }

  else
  {
    v11 = -12786;
  }

  return v11;
}

- (int)encodeConstraintsOn:(id)a3 segmentation:(id)a4 constraints:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 width];
  if (v11 == [v9 width] && (v12 = objc_msgSend(v10, "height"), v12 == objc_msgSend(v9, "height")))
  {
    [(MPSImageThresholdBinary *)self->_fgThresholdFilter encodeToCommandBuffer:v8 sourceTexture:v9 destinationTexture:self->_tmpSegmentation];
    [(MPSImageAreaMin *)self->_erosionFilter encodeToCommandBuffer:v8 sourceTexture:self->_tmpSegmentation destinationTexture:self->_fgErodedSegmentation];
    [(MPSImageThresholdBinaryInverse *)self->_bgThresholdFilter encodeToCommandBuffer:v8 sourceTexture:v9 destinationTexture:self->_tmpSegmentation];
    [(MPSImageAreaMin *)self->_erosionFilter encodeToCommandBuffer:v8 sourceTexture:self->_tmpSegmentation destinationTexture:self->_bgErodedSegmentation];
    v13 = [v8 computeCommandEncoder];
    [v13 setComputePipelineState:self->_solverConstraintsKernel];
    [v13 setTexture:self->_fgErodedSegmentation atIndex:0];
    [v13 setTexture:self->_bgErodedSegmentation atIndex:1];
    [v13 setTexture:v10 atIndex:2];
    v14 = [(MTLComputePipelineState *)self->_solverConstraintsKernel threadExecutionWidth];
    v15 = [(MTLComputePipelineState *)self->_solverConstraintsKernel maxTotalThreadsPerThreadgroup]/ v14;
    v19[0] = (v14 + [v10 width] - 1) / v14;
    v19[1] = (v15 + [v10 height] - 1) / v15;
    v19[2] = 1;
    v18[0] = v14;
    v18[1] = v15;
    v18[2] = 1;
    [v13 dispatchThreadgroups:v19 threadsPerThreadgroup:v18];
    [v13 endEncoding];

    v16 = 0;
  }

  else
  {
    v16 = -12780;
  }

  return v16;
}

- (int)encodeApplySolverConstraintsOn:(id)a3 constraints:(id)a4 filteredSegmentation:(id)a5 segmentation:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  [v12 width];
  if (v6 == [OUTLINED_FUNCTION_0_10() width] && (objc_msgSend(v12, "height"), v6 == objc_msgSend(OUTLINED_FUNCTION_0_10(), "height")) && (objc_msgSend(v13, "width"), v6 == objc_msgSend(OUTLINED_FUNCTION_0_10(), "width")) && (objc_msgSend(v13, "height"), v6 == objc_msgSend(OUTLINED_FUNCTION_0_10(), "height")))
  {
    v15 = [v11 computeCommandEncoder];
    [v15 setComputePipelineState:self->_applySolverConstraintsKernel];
    [v15 setTexture:v12 atIndex:0];
    [v15 setTexture:v13 atIndex:1];
    [v15 setTexture:v14 atIndex:2];
    v16 = [(MTLComputePipelineState *)self->_applySolverConstraintsKernel threadExecutionWidth];
    v17 = [(MTLComputePipelineState *)self->_applySolverConstraintsKernel maxTotalThreadsPerThreadgroup]/ v16;
    v21[0] = (v16 + [v14 width] - 1) / v16;
    v21[1] = (v17 + [v14 height] - 1) / v17;
    v21[2] = 1;
    v20[0] = v16;
    v20[1] = v17;
    v20[2] = 1;
    [v15 dispatchThreadgroups:v21 threadsPerThreadgroup:v20];
    [v15 endEncoding];

    v18 = 0;
  }

  else
  {
    v18 = -12780;
  }

  return v18;
}

- (int)enqueueSolveOn:(id)a3 constraints:(id)a4 colorGuide:(id)a5 extraGuide:(id)a6 inputTexture:(id)a7 outputTexture:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (self->_config.useDepthFilter)
  {
    v20 = @"RGBD";
  }

  else
  {
    v20 = @"RGB";
  }

  v21 = v20;
  tmpSegmentation = self->_tmpSegmentation;
  v37 = v16;
  if (!tmpSegmentation)
  {
    v25 = 0;
    v26 = 0;
    v33 = -12786;
    goto LABEL_17;
  }

  v23 = [(MTLTexture *)tmpSegmentation width];
  if (v23 != [v18 width] || (v24 = -[MTLTexture height](self->_tmpSegmentation, "height"), v24 != objc_msgSend(v18, "height")))
  {
    v25 = 0;
    v26 = 0;
    v33 = -12780;
    goto LABEL_17;
  }

  v25 = [v14 commandBuffer];
  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-solver:encodeStateOn", v21];
  if (!v25)
  {
    v33 = -1;
    goto LABEL_17;
  }

  [v25 setLabel:v26];
  v27 = [(MattingFilter *)self->_mattingFilter encodeStateOn:v25 colorGuide:v16 disparityGuide:v17 initialSegmentation:v18 constraints:v15];
  if (v27)
  {
    v33 = v27;
    goto LABEL_17;
  }

  v35 = v17;
  v36 = v15;
  [v25 commit];
  v28 = [v14 commandBuffer];

  if (self->_config.iterations)
  {
    v29 = 0;
    while (1)
    {
      v30 = v26;
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-solver:encodeStepOn %i", v21, v29];

      if (!v28)
      {
        v25 = 0;
        goto LABEL_19;
      }

      [v28 setLabel:v26];
      v31 = [(MattingFilter *)self->_mattingFilter encodeStepOn:v28];
      if (v31)
      {
        break;
      }

      v29 = (v29 + 1);
      if (v29 >= self->_config.iterations)
      {
        goto LABEL_14;
      }
    }

    v33 = v31;
    v25 = v28;
    goto LABEL_21;
  }

LABEL_14:
  v32 = v26;
  [v28 commit];
  v25 = [v14 commandBuffer];

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-solver:encodeApplyCoefficientsOn", v21];

  if (!v25)
  {
LABEL_19:
    v33 = -1;
LABEL_21:
    v17 = v35;
    v15 = v36;
    goto LABEL_17;
  }

  [v25 setLabel:v26];
  v17 = v35;
  v15 = v36;
  v33 = [(MattingFilter *)self->_mattingFilter encodeApplyCoefficientsOn:v25 colorGuide:v37 disparityGuide:v35 constraints:v36 destinationAlphaTexture:v19];
  if (!v33)
  {
    [v25 commit];
  }

LABEL_17:

  return v33;
}

@end