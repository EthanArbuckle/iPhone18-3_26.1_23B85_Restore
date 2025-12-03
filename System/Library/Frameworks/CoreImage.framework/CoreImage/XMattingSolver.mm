@interface XMattingSolver
- (XMattingSolver)initWithDevice:(id)device library:(id)library;
- (int)_compileShadersWithLibrary:(id)library;
- (int)allocateResources:(id *)resources;
- (int)encodeApplySolverConstraintsOn:(id)on constraints:(id)constraints filteredSegmentation:(id)segmentation segmentation:(id)a6;
- (int)encodeConstraintsOn:(id)on segmentation:(id)segmentation constraints:(id)constraints;
- (int)enqueueSolveOn:(id)on constraints:(id)constraints colorGuide:(id)guide extraGuide:(id)extraGuide inputTexture:(id)texture outputTexture:(id)outputTexture;
- (void)releaseResources;
@end

@implementation XMattingSolver

- (XMattingSolver)initWithDevice:(id)device library:(id)library
{
  deviceCopy = device;
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = XMattingSolver;
  v9 = [(XMattingSolver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_library, library);
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

- (int)allocateResources:(id *)resources
{
  v5 = *&resources->var0;
  v6 = *&resources->var4;
  *&self->_config.fgThresholdValue = *&resources->var7;
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
    v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:resources->var0 height:resources->var1 mipmapped:0];
    [v9 setUsage:3];
    v10 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
    tmpSegmentation = self->_tmpSegmentation;
    self->_tmpSegmentation = v10;

    if (!self->_tmpSegmentation)
    {
      goto LABEL_15;
    }

    var4 = resources->var4;
    var2 = resources->var2;
    var3 = resources->var3;
    var0 = resources->var0;
    var1 = resources->var1;
    v17 = off_1E75C0BB8;
    if (!resources->var6)
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
      *&v24 = resources->var7;
      LODWORD(v25) = 1.0;
      v26 = [v23 initWithDevice:self->_device thresholdValue:0 maximumValue:v24 linearGrayColorTransform:v25];
      fgThresholdFilter = self->_fgThresholdFilter;
      self->_fgThresholdFilter = v26;

      v28 = objc_alloc(MEMORY[0x1E6974648]);
      *&v29 = resources->var8;
      LODWORD(v30) = 1.0;
      v31 = [v28 initWithDevice:self->_device thresholdValue:0 maximumValue:v29 linearGrayColorTransform:v30];
      bgThresholdFilter = self->_bgThresholdFilter;
      self->_bgThresholdFilter = v31;

      v33 = [objc_alloc(MEMORY[0x1E6974570]) initWithDevice:self->_device kernelWidth:resources->var9 kernelHeight:resources->var9];
      erosionFilter = self->_erosionFilter;
      self->_erosionFilter = v33;

      [(MPSImageAreaMin *)self->_erosionFilter setEdgeMode:0];
      v35 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:resources->var0 height:resources->var1 mipmapped:0];

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

- (int)_compileShadersWithLibrary:(id)library
{
  libraryCopy = library;
  v5 = [libraryCopy newFunctionWithName:@"solverConstraints"];
  v6 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v5 error:0];
  solverConstraintsKernel = self->_solverConstraintsKernel;
  self->_solverConstraintsKernel = v6;

  if (self->_solverConstraintsKernel)
  {
    v8 = [libraryCopy newFunctionWithName:@"applySolverConstraints"];

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

- (int)encodeConstraintsOn:(id)on segmentation:(id)segmentation constraints:(id)constraints
{
  onCopy = on;
  segmentationCopy = segmentation;
  constraintsCopy = constraints;
  width = [constraintsCopy width];
  if (width == [segmentationCopy width] && (v12 = objc_msgSend(constraintsCopy, "height"), v12 == objc_msgSend(segmentationCopy, "height")))
  {
    [(MPSImageThresholdBinary *)self->_fgThresholdFilter encodeToCommandBuffer:onCopy sourceTexture:segmentationCopy destinationTexture:self->_tmpSegmentation];
    [(MPSImageAreaMin *)self->_erosionFilter encodeToCommandBuffer:onCopy sourceTexture:self->_tmpSegmentation destinationTexture:self->_fgErodedSegmentation];
    [(MPSImageThresholdBinaryInverse *)self->_bgThresholdFilter encodeToCommandBuffer:onCopy sourceTexture:segmentationCopy destinationTexture:self->_tmpSegmentation];
    [(MPSImageAreaMin *)self->_erosionFilter encodeToCommandBuffer:onCopy sourceTexture:self->_tmpSegmentation destinationTexture:self->_bgErodedSegmentation];
    computeCommandEncoder = [onCopy computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:self->_solverConstraintsKernel];
    [computeCommandEncoder setTexture:self->_fgErodedSegmentation atIndex:0];
    [computeCommandEncoder setTexture:self->_bgErodedSegmentation atIndex:1];
    [computeCommandEncoder setTexture:constraintsCopy atIndex:2];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_solverConstraintsKernel threadExecutionWidth];
    v15 = [(MTLComputePipelineState *)self->_solverConstraintsKernel maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    v19[0] = (threadExecutionWidth + [constraintsCopy width] - 1) / threadExecutionWidth;
    v19[1] = (v15 + [constraintsCopy height] - 1) / v15;
    v19[2] = 1;
    v18[0] = threadExecutionWidth;
    v18[1] = v15;
    v18[2] = 1;
    [computeCommandEncoder dispatchThreadgroups:v19 threadsPerThreadgroup:v18];
    [computeCommandEncoder endEncoding];

    v16 = 0;
  }

  else
  {
    v16 = -12780;
  }

  return v16;
}

- (int)encodeApplySolverConstraintsOn:(id)on constraints:(id)constraints filteredSegmentation:(id)segmentation segmentation:(id)a6
{
  onCopy = on;
  constraintsCopy = constraints;
  segmentationCopy = segmentation;
  v14 = a6;
  [constraintsCopy width];
  if (v6 == [OUTLINED_FUNCTION_0_10() width] && (objc_msgSend(constraintsCopy, "height"), v6 == objc_msgSend(OUTLINED_FUNCTION_0_10(), "height")) && (objc_msgSend(segmentationCopy, "width"), v6 == objc_msgSend(OUTLINED_FUNCTION_0_10(), "width")) && (objc_msgSend(segmentationCopy, "height"), v6 == objc_msgSend(OUTLINED_FUNCTION_0_10(), "height")))
  {
    computeCommandEncoder = [onCopy computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:self->_applySolverConstraintsKernel];
    [computeCommandEncoder setTexture:constraintsCopy atIndex:0];
    [computeCommandEncoder setTexture:segmentationCopy atIndex:1];
    [computeCommandEncoder setTexture:v14 atIndex:2];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_applySolverConstraintsKernel threadExecutionWidth];
    v17 = [(MTLComputePipelineState *)self->_applySolverConstraintsKernel maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    v21[0] = (threadExecutionWidth + [v14 width] - 1) / threadExecutionWidth;
    v21[1] = (v17 + [v14 height] - 1) / v17;
    v21[2] = 1;
    v20[0] = threadExecutionWidth;
    v20[1] = v17;
    v20[2] = 1;
    [computeCommandEncoder dispatchThreadgroups:v21 threadsPerThreadgroup:v20];
    [computeCommandEncoder endEncoding];

    v18 = 0;
  }

  else
  {
    v18 = -12780;
  }

  return v18;
}

- (int)enqueueSolveOn:(id)on constraints:(id)constraints colorGuide:(id)guide extraGuide:(id)extraGuide inputTexture:(id)texture outputTexture:(id)outputTexture
{
  onCopy = on;
  constraintsCopy = constraints;
  guideCopy = guide;
  extraGuideCopy = extraGuide;
  textureCopy = texture;
  outputTextureCopy = outputTexture;
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
  v37 = guideCopy;
  if (!tmpSegmentation)
  {
    commandBuffer = 0;
    v26 = 0;
    v33 = -12786;
    goto LABEL_17;
  }

  width = [(MTLTexture *)tmpSegmentation width];
  if (width != [textureCopy width] || (v24 = -[MTLTexture height](self->_tmpSegmentation, "height"), v24 != objc_msgSend(textureCopy, "height")))
  {
    commandBuffer = 0;
    v26 = 0;
    v33 = -12780;
    goto LABEL_17;
  }

  commandBuffer = [onCopy commandBuffer];
  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-solver:encodeStateOn", v21];
  if (!commandBuffer)
  {
    v33 = -1;
    goto LABEL_17;
  }

  [commandBuffer setLabel:v26];
  v27 = [(MattingFilter *)self->_mattingFilter encodeStateOn:commandBuffer colorGuide:guideCopy disparityGuide:extraGuideCopy initialSegmentation:textureCopy constraints:constraintsCopy];
  if (v27)
  {
    v33 = v27;
    goto LABEL_17;
  }

  v35 = extraGuideCopy;
  v36 = constraintsCopy;
  [commandBuffer commit];
  commandBuffer2 = [onCopy commandBuffer];

  if (self->_config.iterations)
  {
    v29 = 0;
    while (1)
    {
      v30 = v26;
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-solver:encodeStepOn %i", v21, v29];

      if (!commandBuffer2)
      {
        commandBuffer = 0;
        goto LABEL_19;
      }

      [commandBuffer2 setLabel:v26];
      v31 = [(MattingFilter *)self->_mattingFilter encodeStepOn:commandBuffer2];
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
    commandBuffer = commandBuffer2;
    goto LABEL_21;
  }

LABEL_14:
  v32 = v26;
  [commandBuffer2 commit];
  commandBuffer = [onCopy commandBuffer];

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-solver:encodeApplyCoefficientsOn", v21];

  if (!commandBuffer)
  {
LABEL_19:
    v33 = -1;
LABEL_21:
    extraGuideCopy = v35;
    constraintsCopy = v36;
    goto LABEL_17;
  }

  [commandBuffer setLabel:v26];
  extraGuideCopy = v35;
  constraintsCopy = v36;
  v33 = [(MattingFilter *)self->_mattingFilter encodeApplyCoefficientsOn:commandBuffer colorGuide:v37 disparityGuide:v35 constraints:v36 destinationAlphaTexture:outputTextureCopy];
  if (!v33)
  {
    [commandBuffer commit];
  }

LABEL_17:

  return v33;
}

@end