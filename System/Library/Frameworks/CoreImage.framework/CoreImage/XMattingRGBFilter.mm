@interface XMattingRGBFilter
- (XMattingRGBFilter)initWithDevice:(id)device library:(id)library;
- (int)_compileShadersWithLibrary:(id)library;
- (int)allocateResources:(id *)resources;
- (int)encodeApplyCoefficientsOn:(id)on colorGuide:(id)guide disparityGuide:(id)disparityGuide constraints:(id)constraints destinationAlphaTexture:(id)texture;
- (int)encodeCoefficientsOn:(id)on guideStack:(id)stack alphaStack:(id)alphaStack mean_I:(id)i var_I:(id)var_I coefficients:(id)coefficients;
- (int)encodeStateOn:(id)on colorGuide:(id)guide disparityGuide:(id)disparityGuide initialSegmentation:(id)segmentation constraints:(id)constraints;
- (int)encodeStepOn:(id)on;
- (int)encodeUpsampleOn:(id)on segmentation:(id)segmentation colorGuide:(id)guide disparityGuide:(id)disparityGuide outputMatte:(id)matte;
- (void)dealloc;
- (void)encodeNearestNeighborDownSamplingOn:(id)on inputTexture:(id)texture outputTexture:(id)outputTexture;
- (void)releaseResources;
@end

@implementation XMattingRGBFilter

- (XMattingRGBFilter)initWithDevice:(id)device library:(id)library
{
  deviceCopy = device;
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = XMattingRGBFilter;
  v9 = [(XMattingRGBFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_library, library);
    *&v10->stateComputed = 0;
  }

  return v10;
}

- (int)allocateResources:(id *)resources
{
  v45[2] = *MEMORY[0x1E69E9840];
  v4 = *&resources->var0;
  *&self->config.temporalRadius = *&resources->var3;
  *&self->config.internalWidth = v4;
  if ([(XMattingRGBFilter *)self _compileShadersWithLibrary:self->_library]|| (v5 = [[XMattingBoxTensorFilter alloc] initWithDevice:self->_device library:self->_library], boxTensorFilter = self->boxTensorFilter, self->boxTensorFilter = v5, boxTensorFilter, (v7 = self->boxTensorFilter) == 0) || [(XMattingBoxTensorFilter *)v7 allocateResources:*&self->config.spatialRadius])
  {
    v11 = 0;
    v9 = 0;
LABEL_21:
    [(XMattingRGBFilter *)self releaseResources];
    v43 = -12786;
    goto LABEL_22;
  }

  v8 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:115 width:self->config.internalWidth height:self->config.internalHeight mipmapped:0];
  v9 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_21;
  }

  [v8 setTextureType:3];
  [v9 setArrayLength:self->config.arrayLength];
  [v9 setUsage:19];
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:self->config.internalWidth height:self->config.internalHeight mipmapped:0];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_21;
  }

  [v10 setTextureType:3];
  [v11 setArrayLength:self->config.arrayLength];
  [v11 setUsage:19];
  v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  guideStack = self->_guideStack;
  self->_guideStack = v12;

  v14 = self->_guideStack;
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = [(MTLTexture *)v14 newTextureViewWithPixelFormat:[(MTLTexture *)self->_guideStack pixelFormat] textureType:2 levels:0 slices:1, 0, 1];
  guideStackTexture2DView = self->_guideStackTexture2DView;
  self->_guideStackTexture2DView = v15;

  if (!self->_guideStackTexture2DView)
  {
    goto LABEL_21;
  }

  v17 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  alphaStack = self->_alphaStack;
  self->_alphaStack = v17;

  v19 = self->_alphaStack;
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = [(MTLTexture *)v19 newTextureViewWithPixelFormat:[(MTLTexture *)self->_alphaStack pixelFormat] textureType:2 levels:0 slices:1, 0, 1];
  alphaStackTexture2DView = self->_alphaStackTexture2DView;
  self->_alphaStackTexture2DView = v20;

  if (!self->_alphaStackTexture2DView)
  {
    goto LABEL_21;
  }

  v22 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  mean_I = self->_mean_I;
  self->_mean_I = v22;

  if (!self->_mean_I)
  {
    goto LABEL_21;
  }

  v24 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  mean_alpha = self->_mean_alpha;
  self->_mean_alpha = v24;

  if (!self->_mean_alpha)
  {
    goto LABEL_21;
  }

  v26 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  v45[0] = v26;
  v27 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  v45[1] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  var_I = self->_var_I;
  self->_var_I = v28;

  v30 = [(NSArray *)self->_var_I objectAtIndexedSubscript:0];
  if (!v30)
  {
    goto LABEL_21;
  }

  v31 = v30;
  v32 = [(NSArray *)self->_var_I objectAtIndexedSubscript:1];

  if (!v32)
  {
    goto LABEL_21;
  }

  v33 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  coefficients = self->_coefficients;
  self->_coefficients = v33;

  v35 = self->_coefficients;
  if (!v35)
  {
    goto LABEL_21;
  }

  v36 = [(MTLTexture *)v35 newTextureViewWithPixelFormat:[(MTLTexture *)self->_coefficients pixelFormat] textureType:2 levels:0 slices:1, 0, 1];
  coefficientsTexture2DView = self->_coefficientsTexture2DView;
  self->_coefficientsTexture2DView = v36;

  if (!self->_coefficientsTexture2DView)
  {
    goto LABEL_21;
  }

  v38 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  constraints = self->_constraints;
  self->_constraints = v38;

  v40 = self->_constraints;
  if (!v40)
  {
    goto LABEL_21;
  }

  v41 = [(MTLTexture *)v40 newTextureViewWithPixelFormat:[(MTLTexture *)self->_constraints pixelFormat] textureType:2 levels:0 slices:1, 0, 1];
  constraintsTexture2DView = self->_constraintsTexture2DView;
  self->_constraintsTexture2DView = v41;

  if (!self->_constraintsTexture2DView)
  {
    goto LABEL_21;
  }

  v43 = 0;
LABEL_22:

  return v43;
}

- (void)releaseResources
{
  boxTensorFilter = self->boxTensorFilter;
  self->boxTensorFilter = 0;

  guideStack = self->_guideStack;
  self->_guideStack = 0;

  guideStackTexture2DView = self->_guideStackTexture2DView;
  self->_guideStackTexture2DView = 0;

  alphaStack = self->_alphaStack;
  self->_alphaStack = 0;

  alphaStackTexture2DView = self->_alphaStackTexture2DView;
  self->_alphaStackTexture2DView = 0;

  mean_I = self->_mean_I;
  self->_mean_I = 0;

  mean_alpha = self->_mean_alpha;
  self->_mean_alpha = 0;

  var_I = self->_var_I;
  self->_var_I = 0;

  coefficients = self->_coefficients;
  self->_coefficients = 0;

  coefficientsTexture2DView = self->_coefficientsTexture2DView;
  self->_coefficientsTexture2DView = 0;

  constraints = self->_constraints;
  self->_constraints = 0;

  constraintsTexture2DView = self->_constraintsTexture2DView;
  self->_constraintsTexture2DView = 0;

  nearestNeighborDownsamplingKernel = self->_nearestNeighborDownsamplingKernel;
  self->_nearestNeighborDownsamplingKernel = 0;

  computeInverted3DGuideCovarianceMatrixKernel = self->_computeInverted3DGuideCovarianceMatrixKernel;
  self->_computeInverted3DGuideCovarianceMatrixKernel = 0;

  compute3DCoefficientsKernel = self->_compute3DCoefficientsKernel;
  self->_compute3DCoefficientsKernel = 0;

  applyCoefficientsKernel = self->_applyCoefficientsKernel;
  self->_applyCoefficientsKernel = 0;

  applyCoefficientsSamplingKernel = self->_applyCoefficientsSamplingKernel;
  self->_applyCoefficientsSamplingKernel = 0;
}

- (void)dealloc
{
  [(XMattingRGBFilter *)self releaseResources];
  v3.receiver = self;
  v3.super_class = XMattingRGBFilter;
  [(XMattingRGBFilter *)&v3 dealloc];
}

- (void)encodeNearestNeighborDownSamplingOn:(id)on inputTexture:(id)texture outputTexture:(id)outputTexture
{
  outputTextureCopy = outputTexture;
  textureCopy = texture;
  computeCommandEncoder = [on computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_nearestNeighborDownsamplingKernel];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:outputTextureCopy atIndex:1];
  LODWORD(on) = [(MTLComputePipelineState *)self->_nearestNeighborDownsamplingKernel threadExecutionWidth];
  v11 = [(MTLComputePipelineState *)self->_nearestNeighborDownsamplingKernel maxTotalThreadsPerThreadgroup]/ on;
  v12 = (on + [outputTextureCopy width] - 1) / on;
  LODWORD(self) = [outputTextureCopy height];

  v14[0] = v12;
  v14[1] = (v11 + self - 1) / v11;
  v14[2] = 1;
  v13[0] = on;
  v13[1] = v11;
  v13[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
  [computeCommandEncoder endEncoding];
}

- (int)_compileShadersWithLibrary:(id)library
{
  libraryCopy = library;
  v5 = [libraryCopy newFunctionWithName:@"nearestNeighborDownsampling"];
  v6 = OUTLINED_FUNCTION_2_10();
  nearestNeighborDownsamplingKernel = self->_nearestNeighborDownsamplingKernel;
  self->_nearestNeighborDownsamplingKernel = v6;

  if (!self->_nearestNeighborDownsamplingKernel)
  {
    goto LABEL_8;
  }

  v8 = [libraryCopy newFunctionWithName:@"computeInverted3DGuideCovarianceMatrix"];

  v9 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v8 error:0];
  computeInverted3DGuideCovarianceMatrixKernel = self->_computeInverted3DGuideCovarianceMatrixKernel;
  self->_computeInverted3DGuideCovarianceMatrixKernel = v9;

  if (!self->_computeInverted3DGuideCovarianceMatrixKernel)
  {
    goto LABEL_9;
  }

  v5 = [libraryCopy newFunctionWithName:@"compute3DCoefficients"];

  v11 = OUTLINED_FUNCTION_2_10();
  compute3DCoefficientsKernel = self->_compute3DCoefficientsKernel;
  self->_compute3DCoefficientsKernel = v11;

  if (!self->_compute3DCoefficientsKernel)
  {
LABEL_8:
    v17 = -12786;
    goto LABEL_7;
  }

  v8 = [libraryCopy newFunctionWithName:@"applyCoefficients"];

  v13 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v8 error:0];
  applyCoefficientsKernel = self->_applyCoefficientsKernel;
  self->_applyCoefficientsKernel = v13;

  if (!self->_applyCoefficientsKernel)
  {
LABEL_9:
    v17 = -12786;
    v5 = v8;
    goto LABEL_7;
  }

  v5 = [libraryCopy newFunctionWithName:@"applyCoefficientsSampling"];

  v15 = OUTLINED_FUNCTION_2_10();
  applyCoefficientsSamplingKernel = self->_applyCoefficientsSamplingKernel;
  self->_applyCoefficientsSamplingKernel = v15;

  if (!self->_applyCoefficientsSamplingKernel)
  {
    goto LABEL_8;
  }

  v17 = 0;
LABEL_7:

  return v17;
}

- (int)encodeCoefficientsOn:(id)on guideStack:(id)stack alphaStack:(id)alphaStack mean_I:(id)i var_I:(id)var_I coefficients:(id)coefficients
{
  v51 = *MEMORY[0x1E69E9840];
  onCopy = on;
  stackCopy = stack;
  alphaStackCopy = alphaStack;
  iCopy = i;
  var_ICopy = var_I;
  coefficientsCopy = coefficients;
  v41 = var_ICopy;
  if (!self->stateComputed)
  {
    v39 = -12782;
    goto LABEL_33;
  }

  if ([stackCopy textureType] != 3)
  {
    goto LABEL_34;
  }

  if ([alphaStackCopy textureType] != 3)
  {
    goto LABEL_34;
  }

  if ([iCopy textureType] != 3)
  {
    goto LABEL_34;
  }

  width = [stackCopy width];
  if (width != [alphaStackCopy width])
  {
    goto LABEL_34;
  }

  height = [stackCopy height];
  if (height != [alphaStackCopy height])
  {
    goto LABEL_34;
  }

  arrayLength = [stackCopy arrayLength];
  if (arrayLength != [alphaStackCopy arrayLength])
  {
    goto LABEL_34;
  }

  width2 = [stackCopy width];
  if (width2 != [iCopy width])
  {
    goto LABEL_34;
  }

  height2 = [stackCopy height];
  if (height2 != [iCopy height])
  {
    goto LABEL_34;
  }

  arrayLength2 = [stackCopy arrayLength];
  if (arrayLength2 != [iCopy arrayLength] || objc_msgSend(var_ICopy, "count") != 2)
  {
    goto LABEL_34;
  }

  v42 = coefficientsCopy;
  v43 = onCopy;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v26 = var_ICopy;
  v27 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v46 + 1) + 8 * i);
        [v31 width];
        if (var_ICopy == [OUTLINED_FUNCTION_0_9() width])
        {
          [v31 height];
          if (var_ICopy == [OUTLINED_FUNCTION_0_9() height])
          {
            [v31 arrayLength];
            if (var_ICopy == [OUTLINED_FUNCTION_0_9() arrayLength] && objc_msgSend(v31, "textureType") == 3)
            {
              continue;
            }
          }
        }

        v39 = -12780;
        coefficientsCopy = v42;
        goto LABEL_31;
      }

      v28 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  coefficientsCopy = v42;
  if ([v42 textureType] == 3)
  {
    [v42 width];
    onCopy = v43;
    if (var_ICopy == [OUTLINED_FUNCTION_0_9() width])
    {
      [v42 height];
      if (var_ICopy == [OUTLINED_FUNCTION_0_9() height])
      {
        [v42 arrayLength];
        if (var_ICopy == [OUTLINED_FUNCTION_0_9() arrayLength])
        {
          v32 = [(XMattingBoxTensorFilter *)self->boxTensorFilter encodeOnCommandBuffer:v43 sourceTexture:self->_alphaStack destinationTexture:self->_mean_alpha];
          if (v32)
          {
            v39 = v32;
            goto LABEL_33;
          }

          computeCommandEncoder = [v43 computeCommandEncoder];
          if (!computeCommandEncoder)
          {
            v39 = -1;
            goto LABEL_33;
          }

          v34 = computeCommandEncoder;
          [computeCommandEncoder setLabel:@"compute3DCoefficientsKernel"];
          [v34 setComputePipelineState:self->_compute3DCoefficientsKernel];
          [v34 setTexture:stackCopy atIndex:0];
          [v34 setTexture:alphaStackCopy atIndex:1];
          [v34 setTexture:iCopy atIndex:2];
          [v34 setTexture:self->_mean_alpha atIndex:3];
          v35 = [v26 objectAtIndexedSubscript:0];
          [v34 setTexture:v35 atIndex:4];

          v36 = [v26 objectAtIndexedSubscript:1];
          [v34 setTexture:v36 atIndex:5];

          [v34 setTexture:v42 atIndex:6];
          [v34 setBytes:&self->config.spatialRadius length:4 atIndex:0];
          LODWORD(v36) = [(MTLComputePipelineState *)self->_compute3DCoefficientsKernel threadExecutionWidth];
          v37 = [(MTLComputePipelineState *)self->_compute3DCoefficientsKernel maxTotalThreadsPerThreadgroup]/ v36;
          v45[0] = (v36 + [stackCopy width] - 1) / v36;
          v45[1] = (v37 + [stackCopy height] - 1) / v37;
          v45[2] = 1;
          v38 = v37;
          coefficientsCopy = v42;
          v44[0] = v36;
          v44[1] = v38;
          v44[2] = 1;
          [v34 dispatchThreadgroups:v45 threadsPerThreadgroup:v44];
          [v34 endEncoding];
          [(XMattingBoxTensorFilter *)self->boxTensorFilter encodeOnCommandBuffer:v43 sourceTexture:coefficientsCopy destinationTexture:coefficientsCopy];
          v39 = 0;
          self->coefficientsComputed = 1;
          v26 = v34;
LABEL_31:

          goto LABEL_32;
        }
      }
    }

LABEL_34:
    v39 = -12780;
    goto LABEL_33;
  }

  v39 = -12780;
LABEL_32:
  onCopy = v43;
LABEL_33:

  return v39;
}

- (int)encodeStateOn:(id)on colorGuide:(id)guide disparityGuide:(id)disparityGuide initialSegmentation:(id)segmentation constraints:(id)constraints
{
  v43 = *MEMORY[0x1E69E9840];
  onCopy = on;
  guideCopy = guide;
  segmentationCopy = segmentation;
  constraintsCopy = constraints;
  if ([(MTLTexture *)self->_guideStack textureType]== 3 && [(MTLTexture *)self->_mean_I textureType]== 3 && (v14 = [(MTLTexture *)self->_guideStack width], v14 == [(MTLTexture *)self->_mean_I width]) && (v15 = [(MTLTexture *)self->_guideStack height], v15 == [(MTLTexture *)self->_mean_I height]) && (v16 = [(MTLTexture *)self->_guideStack arrayLength], v16 == [(MTLTexture *)self->_mean_I arrayLength]) && [(NSArray *)self->_var_I count]== 2)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    computeCommandEncoder = self->_var_I;
    v18 = [(NSArray *)computeCommandEncoder countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v39;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(computeCommandEncoder);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          width = [v22 width];
          if (width == [(MTLTexture *)self->_guideStack width])
          {
            height = [v22 height];
            if (height == [(MTLTexture *)self->_guideStack height])
            {
              arrayLength = [v22 arrayLength];
              if (arrayLength == -[MTLTexture arrayLength](self->_guideStack, "arrayLength") && [v22 textureType] == 3)
              {
                continue;
              }
            }
          }

          v26 = -12780;
          goto LABEL_25;
        }

        v19 = [(NSArray *)computeCommandEncoder countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    [(XMattingRGBFilter *)self encodeNearestNeighborDownSamplingOn:onCopy inputTexture:guideCopy outputTexture:self->_guideStackTexture2DView];
    v26 = [(XMattingBoxTensorFilter *)self->boxTensorFilter encodeOnCommandBuffer:onCopy sourceTexture:self->_guideStack destinationTexture:self->_mean_I];
    computeCommandEncoder = [onCopy computeCommandEncoder];
    [(NSArray *)computeCommandEncoder setComputePipelineState:self->_computeInverted3DGuideCovarianceMatrixKernel];
    [(NSArray *)computeCommandEncoder setTexture:self->_guideStack atIndex:0];
    [(NSArray *)computeCommandEncoder setTexture:self->_mean_I atIndex:1];
    v27 = [(NSArray *)self->_var_I objectAtIndexedSubscript:0];
    [(NSArray *)computeCommandEncoder setTexture:v27 atIndex:2];

    v28 = [(NSArray *)self->_var_I objectAtIndexedSubscript:1];
    [(NSArray *)computeCommandEncoder setTexture:v28 atIndex:3];

    [(NSArray *)computeCommandEncoder setBytes:&self->config.epsilon length:4 atIndex:0];
    [(NSArray *)computeCommandEncoder setBytes:&self->config.spatialRadius length:4 atIndex:1];
    LODWORD(v28) = [(MTLComputePipelineState *)self->_computeInverted3DGuideCovarianceMatrixKernel threadExecutionWidth];
    v29 = [(MTLComputePipelineState *)self->_computeInverted3DGuideCovarianceMatrixKernel maxTotalThreadsPerThreadgroup]/ v28;
    v30 = (v28 + [(MTLTexture *)self->_guideStack width]- 1) / v28;
    height2 = [(MTLTexture *)self->_guideStack height];
    v37[0] = v30;
    v37[1] = (v29 + height2 - 1) / v29;
    v37[2] = 1;
    v36[0] = v28;
    v36[1] = v29;
    v36[2] = 1;
    [(NSArray *)computeCommandEncoder dispatchThreadgroups:v37 threadsPerThreadgroup:v36];
    [(NSArray *)computeCommandEncoder endEncoding];
    if (segmentationCopy)
    {
      [(XMattingRGBFilter *)self encodeNearestNeighborDownSamplingOn:onCopy inputTexture:segmentationCopy outputTexture:self->_alphaStackTexture2DView];
    }

    constraintsTexture2DView = self->_constraintsTexture2DView;
    if (constraintsCopy)
    {
      [(XMattingRGBFilter *)self encodeNearestNeighborDownSamplingOn:onCopy inputTexture:constraintsCopy outputTexture:constraintsTexture2DView];
    }

    else
    {
      self->_constraintsTexture2DView = 0;

      constraints = self->_constraints;
      self->_constraints = 0;
    }

    self->stateComputed = 1;
LABEL_25:
  }

  else
  {
    v26 = -12780;
  }

  return v26;
}

- (int)encodeStepOn:(id)on
{
  onCopy = on;
  v5 = [(XMattingRGBFilter *)self encodeCoefficientsOn:onCopy guideStack:self->_guideStack alphaStack:self->_alphaStack mean_I:self->_mean_I var_I:self->_var_I coefficients:self->_coefficients];
  if (!v5)
  {
    v5 = [(XMattingRGBFilter *)self encodeApplyCoefficientsOn:onCopy colorGuide:self->_guideStackTexture2DView disparityGuide:0 constraints:self->_constraintsTexture2DView destinationAlphaTexture:self->_alphaStackTexture2DView];
  }

  v6 = v5;

  return v6;
}

- (int)encodeApplyCoefficientsOn:(id)on colorGuide:(id)guide disparityGuide:(id)disparityGuide constraints:(id)constraints destinationAlphaTexture:(id)texture
{
  onCopy = on;
  guideCopy = guide;
  constraintsCopy = constraints;
  textureCopy = texture;
  v16 = self->_coefficientsTexture2DView;
  v17 = v16;
  if (!self->coefficientsComputed)
  {
    v28 = -12782;
    goto LABEL_17;
  }

  if (-[MTLTexture textureType](v16, "textureType") != 2 || [guideCopy textureType] != 2 || constraintsCopy && objc_msgSend(constraintsCopy, "textureType") != 2 || objc_msgSend(textureCopy, "textureType") != 2)
  {
    v28 = -12780;
    goto LABEL_17;
  }

  width = [guideCopy width];
  if (width != [textureCopy width])
  {
    v20 = 1;
    if (constraintsCopy)
    {
      goto LABEL_9;
    }

LABEL_12:
    v23 = 0;
    goto LABEL_13;
  }

  height = [guideCopy height];
  v20 = height != [textureCopy height];
  if (!constraintsCopy)
  {
    goto LABEL_12;
  }

LABEL_9:
  width2 = [constraintsCopy width];
  if (width2 != [guideCopy width])
  {
    goto LABEL_14;
  }

  height2 = [constraintsCopy height];
  v23 = height2 != [guideCopy height];
LABEL_13:
  if (!v20 && !v23)
  {
    computeCommandEncoder = [onCopy computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:self->_applyCoefficientsKernel];
    [computeCommandEncoder setTexture:v17 atIndex:0];
    OUTLINED_FUNCTION_3_4();
    [computeCommandEncoder setTexture:constraintsCopy atIndex:2];
    [computeCommandEncoder setTexture:textureCopy atIndex:3];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_applyCoefficientsKernel threadExecutionWidth];
    applyCoefficientsKernel = self->_applyCoefficientsKernel;
    goto LABEL_16;
  }

LABEL_14:
  computeCommandEncoder = [onCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_applyCoefficientsSamplingKernel];
  [computeCommandEncoder setTexture:v17 atIndex:0];
  OUTLINED_FUNCTION_3_4();
  [computeCommandEncoder setTexture:constraintsCopy atIndex:2];
  [computeCommandEncoder setTexture:textureCopy atIndex:3];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_applyCoefficientsSamplingKernel threadExecutionWidth];
  applyCoefficientsKernel = self->_applyCoefficientsSamplingKernel;
LABEL_16:
  v27 = [(MTLComputePipelineState *)applyCoefficientsKernel maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v31[0] = (threadExecutionWidth + [textureCopy width] - 1) / threadExecutionWidth;
  v31[1] = (v27 + [textureCopy height] - 1) / v27;
  v31[2] = v7;
  v30[0] = threadExecutionWidth;
  v30[1] = v27;
  v30[2] = v7;
  [computeCommandEncoder dispatchThreadgroups:v31 threadsPerThreadgroup:v30];
  [computeCommandEncoder endEncoding];

  v28 = 0;
LABEL_17:

  return v28;
}

- (int)encodeUpsampleOn:(id)on segmentation:(id)segmentation colorGuide:(id)guide disparityGuide:(id)disparityGuide outputMatte:(id)matte
{
  onCopy = on;
  guideCopy = guide;
  disparityGuideCopy = disparityGuide;
  matteCopy = matte;
  v15 = [OUTLINED_FUNCTION_14_0() encodeStateOn:? colorGuide:? disparityGuide:? initialSegmentation:? constraints:?];
  if (!v15)
  {
    v15 = [(XMattingRGBFilter *)self encodeCoefficientsOn:onCopy guideStack:self->_guideStack alphaStack:self->_alphaStack mean_I:self->_mean_I var_I:self->_var_I coefficients:self->_coefficients];
    if (!v15)
    {
      v15 = [OUTLINED_FUNCTION_14_0() encodeApplyCoefficientsOn:? colorGuide:? disparityGuide:? constraints:? destinationAlphaTexture:?];
    }
  }

  v16 = v15;

  return v16;
}

@end