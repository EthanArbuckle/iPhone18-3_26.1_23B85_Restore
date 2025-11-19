@interface XMattingRGBFilter
- (XMattingRGBFilter)initWithDevice:(id)a3 library:(id)a4;
- (int)_compileShadersWithLibrary:(id)a3;
- (int)allocateResources:(id *)a3;
- (int)encodeApplyCoefficientsOn:(id)a3 colorGuide:(id)a4 disparityGuide:(id)a5 constraints:(id)a6 destinationAlphaTexture:(id)a7;
- (int)encodeCoefficientsOn:(id)a3 guideStack:(id)a4 alphaStack:(id)a5 mean_I:(id)a6 var_I:(id)a7 coefficients:(id)a8;
- (int)encodeStateOn:(id)a3 colorGuide:(id)a4 disparityGuide:(id)a5 initialSegmentation:(id)a6 constraints:(id)a7;
- (int)encodeStepOn:(id)a3;
- (int)encodeUpsampleOn:(id)a3 segmentation:(id)a4 colorGuide:(id)a5 disparityGuide:(id)a6 outputMatte:(id)a7;
- (void)dealloc;
- (void)encodeNearestNeighborDownSamplingOn:(id)a3 inputTexture:(id)a4 outputTexture:(id)a5;
- (void)releaseResources;
@end

@implementation XMattingRGBFilter

- (XMattingRGBFilter)initWithDevice:(id)a3 library:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = XMattingRGBFilter;
  v9 = [(XMattingRGBFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_library, a4);
    *&v10->stateComputed = 0;
  }

  return v10;
}

- (int)allocateResources:(id *)a3
{
  v45[2] = *MEMORY[0x1E69E9840];
  v4 = *&a3->var0;
  *&self->config.temporalRadius = *&a3->var3;
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

- (void)encodeNearestNeighborDownSamplingOn:(id)a3 inputTexture:(id)a4 outputTexture:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_nearestNeighborDownsamplingKernel];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  LODWORD(a3) = [(MTLComputePipelineState *)self->_nearestNeighborDownsamplingKernel threadExecutionWidth];
  v11 = [(MTLComputePipelineState *)self->_nearestNeighborDownsamplingKernel maxTotalThreadsPerThreadgroup]/ a3;
  v12 = (a3 + [v8 width] - 1) / a3;
  LODWORD(self) = [v8 height];

  v14[0] = v12;
  v14[1] = (v11 + self - 1) / v11;
  v14[2] = 1;
  v13[0] = a3;
  v13[1] = v11;
  v13[2] = 1;
  [v10 dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
  [v10 endEncoding];
}

- (int)_compileShadersWithLibrary:(id)a3
{
  v4 = a3;
  v5 = [v4 newFunctionWithName:@"nearestNeighborDownsampling"];
  v6 = OUTLINED_FUNCTION_2_10();
  nearestNeighborDownsamplingKernel = self->_nearestNeighborDownsamplingKernel;
  self->_nearestNeighborDownsamplingKernel = v6;

  if (!self->_nearestNeighborDownsamplingKernel)
  {
    goto LABEL_8;
  }

  v8 = [v4 newFunctionWithName:@"computeInverted3DGuideCovarianceMatrix"];

  v9 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v8 error:0];
  computeInverted3DGuideCovarianceMatrixKernel = self->_computeInverted3DGuideCovarianceMatrixKernel;
  self->_computeInverted3DGuideCovarianceMatrixKernel = v9;

  if (!self->_computeInverted3DGuideCovarianceMatrixKernel)
  {
    goto LABEL_9;
  }

  v5 = [v4 newFunctionWithName:@"compute3DCoefficients"];

  v11 = OUTLINED_FUNCTION_2_10();
  compute3DCoefficientsKernel = self->_compute3DCoefficientsKernel;
  self->_compute3DCoefficientsKernel = v11;

  if (!self->_compute3DCoefficientsKernel)
  {
LABEL_8:
    v17 = -12786;
    goto LABEL_7;
  }

  v8 = [v4 newFunctionWithName:@"applyCoefficients"];

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

  v5 = [v4 newFunctionWithName:@"applyCoefficientsSampling"];

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

- (int)encodeCoefficientsOn:(id)a3 guideStack:(id)a4 alphaStack:(id)a5 mean_I:(id)a6 var_I:(id)a7 coefficients:(id)a8
{
  v51 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v41 = v18;
  if (!self->stateComputed)
  {
    v39 = -12782;
    goto LABEL_33;
  }

  if ([v15 textureType] != 3)
  {
    goto LABEL_34;
  }

  if ([v16 textureType] != 3)
  {
    goto LABEL_34;
  }

  if ([v17 textureType] != 3)
  {
    goto LABEL_34;
  }

  v20 = [v15 width];
  if (v20 != [v16 width])
  {
    goto LABEL_34;
  }

  v21 = [v15 height];
  if (v21 != [v16 height])
  {
    goto LABEL_34;
  }

  v22 = [v15 arrayLength];
  if (v22 != [v16 arrayLength])
  {
    goto LABEL_34;
  }

  v23 = [v15 width];
  if (v23 != [v17 width])
  {
    goto LABEL_34;
  }

  v24 = [v15 height];
  if (v24 != [v17 height])
  {
    goto LABEL_34;
  }

  v25 = [v15 arrayLength];
  if (v25 != [v17 arrayLength] || objc_msgSend(v18, "count") != 2)
  {
    goto LABEL_34;
  }

  v42 = v19;
  v43 = v14;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v26 = v18;
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
        if (v18 == [OUTLINED_FUNCTION_0_9() width])
        {
          [v31 height];
          if (v18 == [OUTLINED_FUNCTION_0_9() height])
          {
            [v31 arrayLength];
            if (v18 == [OUTLINED_FUNCTION_0_9() arrayLength] && objc_msgSend(v31, "textureType") == 3)
            {
              continue;
            }
          }
        }

        v39 = -12780;
        v19 = v42;
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

  v19 = v42;
  if ([v42 textureType] == 3)
  {
    [v42 width];
    v14 = v43;
    if (v18 == [OUTLINED_FUNCTION_0_9() width])
    {
      [v42 height];
      if (v18 == [OUTLINED_FUNCTION_0_9() height])
      {
        [v42 arrayLength];
        if (v18 == [OUTLINED_FUNCTION_0_9() arrayLength])
        {
          v32 = [(XMattingBoxTensorFilter *)self->boxTensorFilter encodeOnCommandBuffer:v43 sourceTexture:self->_alphaStack destinationTexture:self->_mean_alpha];
          if (v32)
          {
            v39 = v32;
            goto LABEL_33;
          }

          v33 = [v43 computeCommandEncoder];
          if (!v33)
          {
            v39 = -1;
            goto LABEL_33;
          }

          v34 = v33;
          [v33 setLabel:@"compute3DCoefficientsKernel"];
          [v34 setComputePipelineState:self->_compute3DCoefficientsKernel];
          [v34 setTexture:v15 atIndex:0];
          [v34 setTexture:v16 atIndex:1];
          [v34 setTexture:v17 atIndex:2];
          [v34 setTexture:self->_mean_alpha atIndex:3];
          v35 = [v26 objectAtIndexedSubscript:0];
          [v34 setTexture:v35 atIndex:4];

          v36 = [v26 objectAtIndexedSubscript:1];
          [v34 setTexture:v36 atIndex:5];

          [v34 setTexture:v42 atIndex:6];
          [v34 setBytes:&self->config.spatialRadius length:4 atIndex:0];
          LODWORD(v36) = [(MTLComputePipelineState *)self->_compute3DCoefficientsKernel threadExecutionWidth];
          v37 = [(MTLComputePipelineState *)self->_compute3DCoefficientsKernel maxTotalThreadsPerThreadgroup]/ v36;
          v45[0] = (v36 + [v15 width] - 1) / v36;
          v45[1] = (v37 + [v15 height] - 1) / v37;
          v45[2] = 1;
          v38 = v37;
          v19 = v42;
          v44[0] = v36;
          v44[1] = v38;
          v44[2] = 1;
          [v34 dispatchThreadgroups:v45 threadsPerThreadgroup:v44];
          [v34 endEncoding];
          [(XMattingBoxTensorFilter *)self->boxTensorFilter encodeOnCommandBuffer:v43 sourceTexture:v19 destinationTexture:v19];
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
  v14 = v43;
LABEL_33:

  return v39;
}

- (int)encodeStateOn:(id)a3 colorGuide:(id)a4 disparityGuide:(id)a5 initialSegmentation:(id)a6 constraints:(id)a7
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v35 = a4;
  v12 = a6;
  v13 = a7;
  if ([(MTLTexture *)self->_guideStack textureType]== 3 && [(MTLTexture *)self->_mean_I textureType]== 3 && (v14 = [(MTLTexture *)self->_guideStack width], v14 == [(MTLTexture *)self->_mean_I width]) && (v15 = [(MTLTexture *)self->_guideStack height], v15 == [(MTLTexture *)self->_mean_I height]) && (v16 = [(MTLTexture *)self->_guideStack arrayLength], v16 == [(MTLTexture *)self->_mean_I arrayLength]) && [(NSArray *)self->_var_I count]== 2)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = self->_var_I;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          v23 = [v22 width];
          if (v23 == [(MTLTexture *)self->_guideStack width])
          {
            v24 = [v22 height];
            if (v24 == [(MTLTexture *)self->_guideStack height])
            {
              v25 = [v22 arrayLength];
              if (v25 == -[MTLTexture arrayLength](self->_guideStack, "arrayLength") && [v22 textureType] == 3)
              {
                continue;
              }
            }
          }

          v26 = -12780;
          goto LABEL_25;
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    [(XMattingRGBFilter *)self encodeNearestNeighborDownSamplingOn:v11 inputTexture:v35 outputTexture:self->_guideStackTexture2DView];
    v26 = [(XMattingBoxTensorFilter *)self->boxTensorFilter encodeOnCommandBuffer:v11 sourceTexture:self->_guideStack destinationTexture:self->_mean_I];
    v17 = [v11 computeCommandEncoder];
    [(NSArray *)v17 setComputePipelineState:self->_computeInverted3DGuideCovarianceMatrixKernel];
    [(NSArray *)v17 setTexture:self->_guideStack atIndex:0];
    [(NSArray *)v17 setTexture:self->_mean_I atIndex:1];
    v27 = [(NSArray *)self->_var_I objectAtIndexedSubscript:0];
    [(NSArray *)v17 setTexture:v27 atIndex:2];

    v28 = [(NSArray *)self->_var_I objectAtIndexedSubscript:1];
    [(NSArray *)v17 setTexture:v28 atIndex:3];

    [(NSArray *)v17 setBytes:&self->config.epsilon length:4 atIndex:0];
    [(NSArray *)v17 setBytes:&self->config.spatialRadius length:4 atIndex:1];
    LODWORD(v28) = [(MTLComputePipelineState *)self->_computeInverted3DGuideCovarianceMatrixKernel threadExecutionWidth];
    v29 = [(MTLComputePipelineState *)self->_computeInverted3DGuideCovarianceMatrixKernel maxTotalThreadsPerThreadgroup]/ v28;
    v30 = (v28 + [(MTLTexture *)self->_guideStack width]- 1) / v28;
    v31 = [(MTLTexture *)self->_guideStack height];
    v37[0] = v30;
    v37[1] = (v29 + v31 - 1) / v29;
    v37[2] = 1;
    v36[0] = v28;
    v36[1] = v29;
    v36[2] = 1;
    [(NSArray *)v17 dispatchThreadgroups:v37 threadsPerThreadgroup:v36];
    [(NSArray *)v17 endEncoding];
    if (v12)
    {
      [(XMattingRGBFilter *)self encodeNearestNeighborDownSamplingOn:v11 inputTexture:v12 outputTexture:self->_alphaStackTexture2DView];
    }

    constraintsTexture2DView = self->_constraintsTexture2DView;
    if (v13)
    {
      [(XMattingRGBFilter *)self encodeNearestNeighborDownSamplingOn:v11 inputTexture:v13 outputTexture:constraintsTexture2DView];
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

- (int)encodeStepOn:(id)a3
{
  v4 = a3;
  v5 = [(XMattingRGBFilter *)self encodeCoefficientsOn:v4 guideStack:self->_guideStack alphaStack:self->_alphaStack mean_I:self->_mean_I var_I:self->_var_I coefficients:self->_coefficients];
  if (!v5)
  {
    v5 = [(XMattingRGBFilter *)self encodeApplyCoefficientsOn:v4 colorGuide:self->_guideStackTexture2DView disparityGuide:0 constraints:self->_constraintsTexture2DView destinationAlphaTexture:self->_alphaStackTexture2DView];
  }

  v6 = v5;

  return v6;
}

- (int)encodeApplyCoefficientsOn:(id)a3 colorGuide:(id)a4 disparityGuide:(id)a5 constraints:(id)a6 destinationAlphaTexture:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = self->_coefficientsTexture2DView;
  v17 = v16;
  if (!self->coefficientsComputed)
  {
    v28 = -12782;
    goto LABEL_17;
  }

  if (-[MTLTexture textureType](v16, "textureType") != 2 || [v13 textureType] != 2 || v14 && objc_msgSend(v14, "textureType") != 2 || objc_msgSend(v15, "textureType") != 2)
  {
    v28 = -12780;
    goto LABEL_17;
  }

  v18 = [v13 width];
  if (v18 != [v15 width])
  {
    v20 = 1;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_12:
    v23 = 0;
    goto LABEL_13;
  }

  v19 = [v13 height];
  v20 = v19 != [v15 height];
  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_9:
  v21 = [v14 width];
  if (v21 != [v13 width])
  {
    goto LABEL_14;
  }

  v22 = [v14 height];
  v23 = v22 != [v13 height];
LABEL_13:
  if (!v20 && !v23)
  {
    v24 = [v12 computeCommandEncoder];
    [v24 setComputePipelineState:self->_applyCoefficientsKernel];
    [v24 setTexture:v17 atIndex:0];
    OUTLINED_FUNCTION_3_4();
    [v24 setTexture:v14 atIndex:2];
    [v24 setTexture:v15 atIndex:3];
    v25 = [(MTLComputePipelineState *)self->_applyCoefficientsKernel threadExecutionWidth];
    applyCoefficientsKernel = self->_applyCoefficientsKernel;
    goto LABEL_16;
  }

LABEL_14:
  v24 = [v12 computeCommandEncoder];
  [v24 setComputePipelineState:self->_applyCoefficientsSamplingKernel];
  [v24 setTexture:v17 atIndex:0];
  OUTLINED_FUNCTION_3_4();
  [v24 setTexture:v14 atIndex:2];
  [v24 setTexture:v15 atIndex:3];
  v25 = [(MTLComputePipelineState *)self->_applyCoefficientsSamplingKernel threadExecutionWidth];
  applyCoefficientsKernel = self->_applyCoefficientsSamplingKernel;
LABEL_16:
  v27 = [(MTLComputePipelineState *)applyCoefficientsKernel maxTotalThreadsPerThreadgroup]/ v25;
  v31[0] = (v25 + [v15 width] - 1) / v25;
  v31[1] = (v27 + [v15 height] - 1) / v27;
  v31[2] = v7;
  v30[0] = v25;
  v30[1] = v27;
  v30[2] = v7;
  [v24 dispatchThreadgroups:v31 threadsPerThreadgroup:v30];
  [v24 endEncoding];

  v28 = 0;
LABEL_17:

  return v28;
}

- (int)encodeUpsampleOn:(id)a3 segmentation:(id)a4 colorGuide:(id)a5 disparityGuide:(id)a6 outputMatte:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [OUTLINED_FUNCTION_14_0() encodeStateOn:? colorGuide:? disparityGuide:? initialSegmentation:? constraints:?];
  if (!v15)
  {
    v15 = [(XMattingRGBFilter *)self encodeCoefficientsOn:v11 guideStack:self->_guideStack alphaStack:self->_alphaStack mean_I:self->_mean_I var_I:self->_var_I coefficients:self->_coefficients];
    if (!v15)
    {
      v15 = [OUTLINED_FUNCTION_14_0() encodeApplyCoefficientsOn:? colorGuide:? disparityGuide:? constraints:? destinationAlphaTexture:?];
    }
  }

  v16 = v15;

  return v16;
}

@end