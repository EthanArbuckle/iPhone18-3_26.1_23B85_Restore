@interface XMattingRGBDFilter
- (XMattingRGBDFilter)initWithDevice:(id)a3 library:(id)a4;
- (int)_compileShadersWithLibrary:(id)a3;
- (int)allocateResources:(id *)a3;
- (int)encodeApplyCoefficientsOn:(id)a3 colorGuide:(id)a4 disparityGuide:(id)a5 constraints:(id)a6 destinationAlphaTexture:(id)a7;
- (int)encodeCoefficientsOn:(id)a3 guideStack:(id)a4 alphaStack:(id)a5 mean_I:(id)a6 var_I:(id)a7 coefficients:(id)a8;
- (int)encodeDisparityToAlphaOn:(id)a3 disparityTexture:(id)a4 destinationTexture:(id)a5;
- (int)encodeNearestNeighborDownSamplingOn:(id)a3 inputTexture:(id)a4 outputTexture:(id)a5;
- (int)encodeStateOn:(id)a3 colorGuide:(id)a4 disparityGuide:(id)a5 initialSegmentation:(id)a6 constraints:(id)a7;
- (int)encodeStepOn:(id)a3;
- (int)encodeUpsampleOn:(id)a3 segmentation:(id)a4 colorGuide:(id)a5 disparityGuide:(id)a6 outputMatte:(id)a7;
- (void)dealloc;
- (void)encodePushOn:(id)a3 textureArray:(id)a4 texture:(id)a5;
- (void)releaseResources;
@end

@implementation XMattingRGBDFilter

- (XMattingRGBDFilter)initWithDevice:(id)a3 library:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = XMattingRGBDFilter;
  v9 = [(XMattingRGBDFilter *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_library, a4);
    *&v10->stateComputed = 0;
    if (v7)
    {
      v11 = [v7 readWriteTextureSupport] > 1;
    }

    else
    {
      v11 = 0;
    }

    v10->_supportsReadWriteTextures = v11;
  }

  return v10;
}

- (int)allocateResources:(id *)a3
{
  v67[3] = *MEMORY[0x1E69E9840];
  v4 = *&a3->var0;
  *&self->config.temporalRadius = *&a3->var3;
  *&self->config.internalWidth = v4;
  if ([(XMattingRGBDFilter *)self _compileShadersWithLibrary:self->_library]|| (v5 = [[XMattingBoxTensorFilter alloc] initWithDevice:self->_device library:self->_library], boxTensorFilter = self->boxTensorFilter, self->boxTensorFilter = v5, boxTensorFilter, (v7 = self->boxTensorFilter) == 0) || [(XMattingBoxTensorFilter *)v7 allocateResources:*&self->config.spatialRadius])
  {
    v11 = 0;
    v9 = 0;
LABEL_27:
    [(XMattingRGBDFilter *)self releaseResources];
    v63 = -12786;
    goto LABEL_28;
  }

  v8 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:115 width:self->config.internalWidth height:self->config.internalHeight mipmapped:0];
  v9 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_27;
  }

  [v8 setTextureType:3];
  [v9 setArrayLength:self->config.arrayLength];
  [v9 setUsage:19];
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:self->config.internalWidth height:self->config.internalHeight mipmapped:0];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_27;
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
    goto LABEL_27;
  }

  v15 = [(MTLTexture *)v14 newTextureViewWithPixelFormat:[(MTLTexture *)self->_guideStack pixelFormat] textureType:2 levels:0 slices:1, 0, 1];
  guideStackTexture2DView = self->_guideStackTexture2DView;
  self->_guideStackTexture2DView = v15;

  if (!self->_guideStackTexture2DView)
  {
    goto LABEL_27;
  }

  v17 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  alphaStack = self->_alphaStack;
  self->_alphaStack = v17;

  v19 = self->_alphaStack;
  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = [(MTLTexture *)v19 newTextureViewWithPixelFormat:[(MTLTexture *)self->_alphaStack pixelFormat] textureType:2 levels:0 slices:1, 0, 1];
  alphaStackTexture2DView = self->_alphaStackTexture2DView;
  self->_alphaStackTexture2DView = v20;

  if (!self->_alphaStackTexture2DView)
  {
    goto LABEL_27;
  }

  v22 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  mean_I = self->_mean_I;
  self->_mean_I = v22;

  if (!self->_mean_I)
  {
    goto LABEL_27;
  }

  v24 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  mean_alpha = self->_mean_alpha;
  self->_mean_alpha = v24;

  if (!self->_mean_alpha)
  {
    goto LABEL_27;
  }

  v26 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  v67[0] = v26;
  v27 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  v67[1] = v27;
  v28 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  v67[2] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];
  var_I = self->_var_I;
  self->_var_I = v29;

  v31 = [(NSArray *)self->_var_I objectAtIndexedSubscript:0];
  if (!v31)
  {
    goto LABEL_27;
  }

  v32 = v31;
  v33 = [(NSArray *)self->_var_I objectAtIndexedSubscript:1];
  if (!v33)
  {

    goto LABEL_27;
  }

  v34 = v33;
  v35 = [(NSArray *)self->_var_I objectAtIndexedSubscript:2];

  if (!v35)
  {
    goto LABEL_27;
  }

  v36 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  v66[0] = v36;
  v37 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  v66[1] = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
  coefficients = self->_coefficients;
  self->_coefficients = v38;

  v40 = [(NSArray *)self->_coefficients objectAtIndexedSubscript:0];
  if (!v40)
  {
    goto LABEL_27;
  }

  v41 = v40;
  v42 = [(NSArray *)self->_coefficients objectAtIndexedSubscript:1];

  if (!v42)
  {
    goto LABEL_27;
  }

  v43 = [(NSArray *)self->_coefficients objectAtIndexedSubscript:0];
  v44 = [(NSArray *)self->_coefficients objectAtIndexedSubscript:0];
  v45 = [v43 newTextureViewWithPixelFormat:objc_msgSend(v44 textureType:"pixelFormat") levels:2 slices:0, 1, 0, 1];
  v46 = [(NSArray *)self->_coefficients objectAtIndexedSubscript:1, v45];
  v47 = [(NSArray *)self->_coefficients objectAtIndexedSubscript:1];
  v48 = [v46 newTextureViewWithPixelFormat:objc_msgSend(v47 textureType:"pixelFormat") levels:2 slices:0, 1, 0, 1];
  v65[1] = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
  coefficientsTexture2DView = self->_coefficientsTexture2DView;
  self->_coefficientsTexture2DView = v49;

  v51 = [(NSArray *)self->_coefficientsTexture2DView objectAtIndexedSubscript:0];
  if (!v51)
  {
    goto LABEL_27;
  }

  v52 = v51;
  v53 = [(NSArray *)self->_coefficientsTexture2DView objectAtIndexedSubscript:1];

  if (!v53)
  {
    goto LABEL_27;
  }

  v54 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  constraints = self->_constraints;
  self->_constraints = v54;

  v56 = self->_constraints;
  if (!v56)
  {
    goto LABEL_27;
  }

  v57 = [(MTLTexture *)v56 newTextureViewWithPixelFormat:[(MTLTexture *)self->_constraints pixelFormat] textureType:2 levels:0 slices:1, 0, 1];
  constraintsTexture2DView = self->_constraintsTexture2DView;
  self->_constraintsTexture2DView = v57;

  if (!self->_constraintsTexture2DView)
  {
    goto LABEL_27;
  }

  if (!self->_supportsReadWriteTextures)
  {
    v59 = [v9 copy];
    [v59 setTextureType:2];
    [v59 setArrayLength:1];
    v60 = [(MTLDevice *)self->_device newTextureWithDescriptor:v59];
    tmp_RGBA = self->_tmp_RGBA;
    self->_tmp_RGBA = v60;

    v62 = self->_constraintsTexture2DView;
    if (!v62)
    {
      goto LABEL_27;
    }
  }

  v63 = 0;
LABEL_28:

  return v63;
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

  tmp_RGBA = self->_tmp_RGBA;
  self->_tmp_RGBA = 0;

  nearestNeighborDownsamplingKernel = self->_nearestNeighborDownsamplingKernel;
  self->_nearestNeighborDownsamplingKernel = 0;

  halfToAlphaBLKernel = self->_halfToAlphaBLKernel;
  self->_halfToAlphaBLKernel = 0;

  computeInverted4DGuideCovarianceMatrixKernel = self->_computeInverted4DGuideCovarianceMatrixKernel;
  self->_computeInverted4DGuideCovarianceMatrixKernel = 0;

  compute4DCoefficientsKernel = self->_compute4DCoefficientsKernel;
  self->_compute4DCoefficientsKernel = 0;

  applyDepthAwareCoefficientsKernel = self->_applyDepthAwareCoefficientsKernel;
  self->_applyDepthAwareCoefficientsKernel = 0;

  applyDepthAwareCoefficientsNoConstraintsKernel = self->_applyDepthAwareCoefficientsNoConstraintsKernel;
  self->_applyDepthAwareCoefficientsNoConstraintsKernel = 0;

  applyDepthAwareCoefficientsSamplingKernel = self->_applyDepthAwareCoefficientsSamplingKernel;
  self->_applyDepthAwareCoefficientsSamplingKernel = 0;

  applyDepthAwareCoefficientsSamplingNoConstraintsKernel = self->_applyDepthAwareCoefficientsSamplingNoConstraintsKernel;
  self->_applyDepthAwareCoefficientsSamplingNoConstraintsKernel = 0;
}

- (void)dealloc
{
  [(XMattingRGBDFilter *)self releaseResources];
  v3.receiver = self;
  v3.super_class = XMattingRGBDFilter;
  [(XMattingRGBDFilter *)&v3 dealloc];
}

- (void)encodePushOn:(id)a3 textureArray:(id)a4 texture:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 blitCommandEncoder];
  v10 = [v7 width];
  v11 = [v7 height];
  v12 = [v7 depth];
  if ([v7 arrayLength] >= 2)
  {
    v13 = 1;
    do
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v18 = v10;
      v19 = v11;
      v20 = v12;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      [v9 copyFromTexture:v7 sourceSlice:v13 sourceLevel:0 sourceOrigin:&v21 sourceSize:&v18 toTexture:v7 destinationSlice:v13 - 1 destinationLevel:0 destinationOrigin:&v15];
      ++v13;
    }

    while (v13 < [v7 arrayLength]);
  }

  v14 = [v7 arrayLength];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  [v9 copyFromTexture:v8 sourceSlice:0 sourceLevel:0 sourceOrigin:&v21 sourceSize:&v18 toTexture:v7 destinationSlice:v14 - 1 destinationLevel:0 destinationOrigin:&v15];
  [v9 endEncoding];
}

- (int)_compileShadersWithLibrary:(id)a3
{
  v4 = a3;
  v5 = [(MTLLibrary *)self->_library newFunctionWithName:@"nearestNeighborDownsampling"];
  v6 = OUTLINED_FUNCTION_2_10();
  nearestNeighborDownsamplingKernel = self->_nearestNeighborDownsamplingKernel;
  self->_nearestNeighborDownsamplingKernel = v6;

  if (!self->_nearestNeighborDownsamplingKernel)
  {
    goto LABEL_15;
  }

  if (self->_supportsReadWriteTextures)
  {
    v8 = @"halfToAlphaBL_RWS";
  }

  else
  {
    v8 = @"halfToAlphaBL";
  }

  v9 = [v4 newFunctionWithName:v8];

  v10 = OUTLINED_FUNCTION_4_4();
  halfToAlphaBLKernel = self->_halfToAlphaBLKernel;
  self->_halfToAlphaBLKernel = v10;

  if (!self->_halfToAlphaBLKernel)
  {
    goto LABEL_16;
  }

  v5 = [(MTLLibrary *)self->_library newFunctionWithName:@"computeInverted4DGuideCovarianceMatrix"];

  v12 = OUTLINED_FUNCTION_2_10();
  computeInverted4DGuideCovarianceMatrixKernel = self->_computeInverted4DGuideCovarianceMatrixKernel;
  self->_computeInverted4DGuideCovarianceMatrixKernel = v12;

  if (!self->_computeInverted4DGuideCovarianceMatrixKernel)
  {
    goto LABEL_15;
  }

  v9 = [(MTLLibrary *)self->_library newFunctionWithName:@"compute4DCoefficients"];

  v14 = OUTLINED_FUNCTION_4_4();
  compute4DCoefficientsKernel = self->_compute4DCoefficientsKernel;
  self->_compute4DCoefficientsKernel = v14;

  if (!self->_compute4DCoefficientsKernel)
  {
LABEL_16:
    v24 = -12786;
    goto LABEL_13;
  }

  v5 = [(MTLLibrary *)self->_library newFunctionWithName:@"applyDepthAwareCoefficients"];

  v16 = OUTLINED_FUNCTION_2_10();
  applyDepthAwareCoefficientsKernel = self->_applyDepthAwareCoefficientsKernel;
  self->_applyDepthAwareCoefficientsKernel = v16;

  if (!self->_applyDepthAwareCoefficientsKernel)
  {
LABEL_15:
    v24 = -12786;
    goto LABEL_14;
  }

  v9 = [(MTLLibrary *)self->_library newFunctionWithName:@"applyDepthAwareCoefficientsNoConstraints"];

  v18 = OUTLINED_FUNCTION_4_4();
  applyDepthAwareCoefficientsNoConstraintsKernel = self->_applyDepthAwareCoefficientsNoConstraintsKernel;
  self->_applyDepthAwareCoefficientsNoConstraintsKernel = v18;

  if (!self->_applyDepthAwareCoefficientsNoConstraintsKernel)
  {
    goto LABEL_16;
  }

  v5 = [(MTLLibrary *)self->_library newFunctionWithName:@"applyDepthAwareCoefficientsSampling"];

  v20 = OUTLINED_FUNCTION_2_10();
  applyDepthAwareCoefficientsSamplingKernel = self->_applyDepthAwareCoefficientsSamplingKernel;
  self->_applyDepthAwareCoefficientsSamplingKernel = v20;

  if (!self->_applyDepthAwareCoefficientsSamplingKernel)
  {
    goto LABEL_15;
  }

  v9 = [(MTLLibrary *)self->_library newFunctionWithName:@"applyDepthAwareCoefficientsSamplingNoConstraints"];

  v22 = OUTLINED_FUNCTION_4_4();
  applyDepthAwareCoefficientsSamplingNoConstraintsKernel = self->_applyDepthAwareCoefficientsSamplingNoConstraintsKernel;
  self->_applyDepthAwareCoefficientsSamplingNoConstraintsKernel = v22;

  if (!self->_applyDepthAwareCoefficientsSamplingKernel)
  {
    goto LABEL_16;
  }

  v24 = 0;
LABEL_13:
  v5 = v9;
LABEL_14:

  return v24;
}

- (int)encodeDisparityToAlphaOn:(id)a3 disparityTexture:(id)a4 destinationTexture:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_supportsReadWriteTextures)
  {
    v11 = [v8 blitCommandEncoder];
    [v11 copyFromTexture:v10 toTexture:self->_tmp_RGBA];
    [v11 endEncoding];
  }

  v12 = [v8 computeCommandEncoder];
  v13 = v12;
  if (v12)
  {
    [v12 setLabel:@"encodeDisparityToAlphaOn"];
    v14 = [v9 pixelFormat];
    if (v14 == 25 || v14 == 10)
    {
      [v13 setComputePipelineState:self->_halfToAlphaBLKernel];
      [v13 setTexture:v9 atIndex:0];
      if (self->_supportsReadWriteTextures)
      {
        v16 = 1;
      }

      else
      {
        [v13 setTexture:self->_tmp_RGBA atIndex:1];
        v16 = 2;
      }

      [v13 setTexture:v10 atIndex:v16];
      v17 = [(MTLComputePipelineState *)self->_halfToAlphaBLKernel threadExecutionWidth];
      v18 = [(MTLComputePipelineState *)self->_halfToAlphaBLKernel maxTotalThreadsPerThreadgroup]/ v17;
      v22[0] = (v17 + [v10 width] - 1) / v17;
      v22[1] = (v18 + [v10 height] - 1) / v18;
      v22[2] = 1;
      v21[0] = v17;
      v21[1] = v18;
      v21[2] = 1;
      [v13 dispatchThreadgroups:v22 threadsPerThreadgroup:v21];
      [v13 endEncoding];
      v19 = 0;
    }

    else
    {
      v19 = -12780;
    }
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

- (int)encodeNearestNeighborDownSamplingOn:(id)a3 inputTexture:(id)a4 outputTexture:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  v11 = v10;
  if (v10)
  {
    [v10 setLabel:@"nearestNeighborDownsamplingKernel"];
    [v11 setComputePipelineState:self->_nearestNeighborDownsamplingKernel];
    [v11 setTexture:v8 atIndex:0];
    [v11 setTexture:v9 atIndex:1];
    v12 = [(MTLComputePipelineState *)self->_nearestNeighborDownsamplingKernel threadExecutionWidth];
    v13 = [(MTLComputePipelineState *)self->_nearestNeighborDownsamplingKernel maxTotalThreadsPerThreadgroup]/ v12;
    v17[0] = (v12 + [v9 width] - 1) / v12;
    v17[1] = (v13 + [v9 height] - 1) / v13;
    v17[2] = 1;
    v16[0] = v12;
    v16[1] = v13;
    v16[2] = 1;
    [v11 dispatchThreadgroups:v17 threadsPerThreadgroup:v16];
    [v11 endEncoding];
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  return v14;
}

- (int)encodeCoefficientsOn:(id)a3 guideStack:(id)a4 alphaStack:(id)a5 mean_I:(id)a6 var_I:(id)a7 coefficients:(id)a8
{
  OUTLINED_FUNCTION_2_11();
  v14 = v13;
  v77 = *MEMORY[0x1E69E9840];
  v16 = v15;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = a8;
  v22 = [v17 width];
  if (v22 != [v18 width] || (v23 = objc_msgSend(v17, "height"), v23 != objc_msgSend(v18, "height")) || (v24 = objc_msgSend(v17, "arrayLength"), v24 != objc_msgSend(v18, "arrayLength")) || (v25 = objc_msgSend(v17, "width"), v25 != objc_msgSend(v19, "width")) || (v26 = objc_msgSend(v17, "height"), v26 != objc_msgSend(v19, "height")) || (v27 = objc_msgSend(v17, "arrayLength"), v27 != objc_msgSend(v19, "arrayLength")) || objc_msgSend(v20, "count") != 3)
  {
    v54 = -12780;
    goto LABEL_44;
  }

  v58 = v18;
  v59 = v21;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v57 = v20;
  v28 = v20;
  v29 = [v28 countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v29)
  {
    v30 = v29;
    v20 = *v71;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v71 != v20)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v70 + 1) + 8 * i);
        v33 = [v32 width];
        if (v33 == [v17 width])
        {
          v34 = [v32 height];
          if (v34 == [v17 height])
          {
            v35 = [v32 arrayLength];
            if (v35 == [v17 arrayLength])
            {
              continue;
            }
          }
        }

        v54 = -12780;
        v46 = v28;
        v18 = v58;
        goto LABEL_42;
      }

      v30 = [v28 countByEnumeratingWithState:&v70 objects:v76 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  v21 = v59;
  if ([v59 count] != 2)
  {
    v54 = -12780;
    v20 = v57;
    v18 = v58;
    goto LABEL_44;
  }

  v56 = v19;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v36 = v59;
  v37 = [v36 countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v67;
    while (2)
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v67 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v66 + 1) + 8 * j);
        v42 = [v41 width];
        if (v42 == [v17 width])
        {
          v43 = [v41 height];
          if (v43 == [v17 height])
          {
            v20 = [v41 arrayLength];
            if (v20 == [v17 arrayLength])
            {
              continue;
            }
          }
        }

        v54 = -12780;
        v46 = v36;
        goto LABEL_41;
      }

      v38 = [v36 countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v44 = [*(v14 + 200) encodeOnCommandBuffer:v16 sourceTexture:*(v14 + 40) destinationTexture:*(v14 + 64)];
  if (v44)
  {
    v54 = v44;
    v18 = v58;
    v19 = v56;
  }

  else
  {
    v45 = [v16 computeCommandEncoder];
    v18 = v58;
    v19 = v56;
    if (v45)
    {
      v46 = v45;
      [v45 setLabel:@"compute4DCoefficientsKernel"];
      [v46 setComputePipelineState:*(v14 + 136)];
      [v46 setTexture:v17 atIndex:0];
      [v46 setTexture:v58 atIndex:1];
      [v46 setTexture:v56 atIndex:2];
      [v46 setTexture:*(v14 + 64) atIndex:3];
      [v28 objectAtIndexedSubscript:0];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_10() setTexture:? atIndex:?];

      [v28 objectAtIndexedSubscript:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_10() setTexture:? atIndex:?];

      [v28 objectAtIndexedSubscript:2];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_10() setTexture:? atIndex:?];

      [v36 objectAtIndexedSubscript:0];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_10() setTexture:? atIndex:?];

      [v36 objectAtIndexedSubscript:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_10() setTexture:? atIndex:?];

      [v46 setBytes:v14 + 216 length:4 atIndex:0];
      v47 = [*(v14 + 136) threadExecutionWidth];
      v48 = [*(v14 + 136) maxTotalThreadsPerThreadgroup] / v47;
      v65[0] = (v47 + [v17 width] - 1) / v47;
      v65[1] = (v48 + [v17 height] - 1) / v48;
      v65[2] = 1;
      v64[0] = v47;
      v64[1] = v48;
      v64[2] = 1;
      [v46 dispatchThreadgroups:v65 threadsPerThreadgroup:v64];
      [v46 endEncoding];
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v49 = v36;
      v50 = [v49 countByEnumeratingWithState:&v60 objects:v74 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v61;
        do
        {
          for (k = 0; k != v51; ++k)
          {
            if (*v61 != v52)
            {
              objc_enumerationMutation(v49);
            }

            [*(v14 + 200) encodeOnCommandBuffer:v16 sourceTexture:*(*(&v60 + 1) + 8 * k) destinationTexture:{*(*(&v60 + 1) + 8 * k), v56}];
          }

          v51 = [v49 countByEnumeratingWithState:&v60 objects:v74 count:16];
        }

        while (v51);
      }

      v54 = 0;
LABEL_41:
      v18 = v58;
      v19 = v56;
LABEL_42:
      v20 = v57;

      goto LABEL_43;
    }

    v54 = -1;
  }

  v20 = v57;
LABEL_43:
  v21 = v59;
LABEL_44:

  return v54;
}

- (int)encodeStateOn:(id)a3 colorGuide:(id)a4 disparityGuide:(id)a5 initialSegmentation:(id)a6 constraints:(id)a7
{
  OUTLINED_FUNCTION_2_11();
  v13 = v12;
  v51 = *MEMORY[0x1E69E9840];
  v15 = v14;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v43 = v16;
  if ([v16 textureType] == 2 && objc_msgSend(v17, "textureType") == 2 && (!v18 || objc_msgSend(v18, "textureType") == 2) && (!v19 || objc_msgSend(v19, "textureType") == 2) && (v20 = objc_msgSend(*(v13 + 24), "width"), v20 == objc_msgSend(*(v13 + 56), "width")) && (v21 = objc_msgSend(*(v13 + 24), "height"), v21 == objc_msgSend(*(v13 + 56), "height")) && (v22 = objc_msgSend(*(v13 + 24), "arrayLength"), v22 == objc_msgSend(*(v13 + 56), "arrayLength")) && objc_msgSend(*(v13 + 72), "count") == 3)
  {
    v42 = v17;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v23 = *(v13 + 72);
    v24 = [v23 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v24)
    {
      v11 = v24;
      v25 = *v47;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v46 + 1) + 8 * i);
          v28 = [v27 width];
          if (v28 == [*(v13 + 24) width])
          {
            v29 = [v27 height];
            if (v29 == [*(v13 + 24) height])
            {
              v30 = [v27 arrayLength];
              if (v30 == [*(v13 + 24) arrayLength])
              {
                continue;
              }
            }
          }

          v39 = -12780;
          v17 = v42;
          goto LABEL_31;
        }

        v11 = [v23 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v31 = [OUTLINED_FUNCTION_12() encodeNearestNeighborDownSamplingOn:? inputTexture:? outputTexture:?];
    if (v31)
    {
      v39 = v31;
      v17 = v42;
    }

    else
    {
      v17 = v42;
      v32 = [OUTLINED_FUNCTION_12() encodeDisparityToAlphaOn:? disparityTexture:? destinationTexture:?];
      if (v32)
      {
        v39 = v32;
      }

      else
      {
        [*(v13 + 200) encodeOnCommandBuffer:v15 sourceTexture:*(v13 + 24) destinationTexture:*(v13 + 56)];
        v33 = [v15 computeCommandEncoder];
        if (v33)
        {
          v23 = v33;
          [v33 setLabel:@"computeInverted4DGuideCovarianceMatrixKernel"];
          [v23 setComputePipelineState:*(v13 + 128)];
          [v23 setTexture:*(v13 + 24) atIndex:0];
          [v23 setTexture:*(v13 + 56) atIndex:1];
          [*(v13 + 72) objectAtIndexedSubscript:0];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_7_1() setTexture:? atIndex:?];

          [*(v13 + 72) objectAtIndexedSubscript:1];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_7_1() setTexture:? atIndex:?];

          [*(v13 + 72) objectAtIndexedSubscript:2];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_7_1() setTexture:? atIndex:?];

          [v23 setBytes:v13 + 228 length:4 atIndex:0];
          [v23 setBytes:v13 + 216 length:4 atIndex:1];
          v34 = [*(v13 + 128) threadExecutionWidth];
          v35 = [*(v13 + 128) maxTotalThreadsPerThreadgroup] / v34;
          v36 = (v34 + [*(v13 + 24) width] - 1) / v34;
          v37 = [*(v13 + 24) height];
          v45[0] = v36;
          v45[1] = (v35 + v37 - 1) / v35;
          v45[2] = 1;
          v44[0] = v34;
          v44[1] = v35;
          v44[2] = 1;
          [v23 dispatchThreadgroups:v45 threadsPerThreadgroup:v44];
          [v23 endEncoding];
          if (v18)
          {
            [OUTLINED_FUNCTION_12() encodeNearestNeighborDownSamplingOn:? inputTexture:? outputTexture:?];
          }

          v38 = *(v13 + 104);
          if (v19)
          {
            [OUTLINED_FUNCTION_12() encodeNearestNeighborDownSamplingOn:? inputTexture:? outputTexture:?];
          }

          else
          {
            *(v13 + 104) = 0;

            v40 = *(v13 + 96);
            *(v13 + 96) = 0;
          }

          v17 = v42;
          v39 = 0;
          *(v13 + 192) = 1;
LABEL_31:
        }

        else
        {
          v39 = -1;
        }
      }
    }
  }

  else
  {
    v39 = -12780;
  }

  return v39;
}

- (int)encodeStepOn:(id)a3
{
  v4 = a3;
  v5 = [(XMattingRGBDFilter *)self encodeCoefficientsOn:v4 guideStack:self->_guideStack alphaStack:self->_alphaStack mean_I:self->_mean_I var_I:self->_var_I coefficients:self->_coefficients];
  if (!v5)
  {
    v5 = [(XMattingRGBDFilter *)self encodeApplyCoefficientsOn:v4 colorGuide:self->_guideStackTexture2DView disparityGuide:0 constraints:self->_constraintsTexture2DView destinationAlphaTexture:self->_alphaStackTexture2DView];
  }

  v6 = v5;

  return v6;
}

- (int)encodeApplyCoefficientsOn:(id)a3 colorGuide:(id)a4 disparityGuide:(id)a5 constraints:(id)a6 destinationAlphaTexture:(id)a7
{
  OUTLINED_FUNCTION_2_11();
  v13 = v12;
  v15 = v14;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v13[11];
  if ([v16 textureType] != 2 || v17 && objc_msgSend(v17, "textureType") != 2 || v18 && objc_msgSend(v18, "textureType") != 2 || objc_msgSend(v19, "textureType") != 2)
  {
    v40 = -12780;
    goto LABEL_31;
  }

  [v16 width];
  if (v11 == [OUTLINED_FUNCTION_10_1() width])
  {
    [v16 height];
    v21 = v11 != [OUTLINED_FUNCTION_10_1() height];
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_13:
    v22 = 0;
    if (v18)
    {
      goto LABEL_14;
    }

LABEL_20:
    if (v21 || v22)
    {
      goto LABEL_21;
    }

    v39 = [v15 computeCommandEncoder];
    if (!v39)
    {
      goto LABEL_33;
    }

    v27 = v39;
    [v39 setLabel:@"applyDepthAwareCoefficientsNoConstraintsKernel"];
    [v27 setComputePipelineState:v13[19]];
    [OUTLINED_FUNCTION_11_1() objectAtIndexedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_8() setTexture:? atIndex:?];

    [OUTLINED_FUNCTION_13_0() objectAtIndexedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_8() setTexture:? atIndex:?];

    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_5_1();
    [OUTLINED_FUNCTION_9_1() setTexture:? atIndex:?];
    v28 = [v13[19] threadExecutionWidth];
    v29 = v13[19];
LABEL_28:
    v32 = [v29 maxTotalThreadsPerThreadgroup] / v28;
    [v19 width];
    [v19 height];
    goto LABEL_29;
  }

  v21 = 1;
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_9:
  [v17 width];
  if (v11 != [OUTLINED_FUNCTION_10_1() width])
  {
    v22 = 1;
    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  [v17 height];
  v22 = v11 != [OUTLINED_FUNCTION_10_1() height];
  if (!v18)
  {
    goto LABEL_20;
  }

LABEL_14:
  v23 = [v18 width];
  if (v23 == [v16 width])
  {
    v24 = [v18 height];
    v25 = [v16 height];
    if (!v21 && !v22 && v24 == v25)
    {
      v26 = [v15 computeCommandEncoder];
      if (!v26)
      {
        goto LABEL_33;
      }

      v27 = v26;
      [v26 setLabel:@"applyDepthAwareCoefficientsKernel"];
      [v27 setComputePipelineState:v13[18]];
      [OUTLINED_FUNCTION_11_1() objectAtIndexedSubscript:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_8() setTexture:? atIndex:?];

      [OUTLINED_FUNCTION_13_0() objectAtIndexedSubscript:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_8() setTexture:? atIndex:?];

      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_5_1();
      [v27 setTexture:v18 atIndex:4];
      [OUTLINED_FUNCTION_9_1() setTexture:? atIndex:?];
      v28 = [v13[18] threadExecutionWidth];
      v29 = v13[18];
      goto LABEL_28;
    }
  }

LABEL_21:
  v30 = [v15 computeCommandEncoder];
  v27 = v30;
  if (v18)
  {
    if (v30)
    {
      [v30 setLabel:@"applyDepthAwareCoefficientsSamplingKernel"];
      [v27 setComputePipelineState:v13[20]];
      [OUTLINED_FUNCTION_11_1() objectAtIndexedSubscript:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_8() setTexture:? atIndex:?];

      [OUTLINED_FUNCTION_13_0() objectAtIndexedSubscript:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_8() setTexture:? atIndex:?];

      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_5_1();
      [v27 setTexture:v18 atIndex:4];
      [OUTLINED_FUNCTION_9_1() setTexture:? atIndex:?];
      [OUTLINED_FUNCTION_9_1() setTexture:? atIndex:?];
      v31 = [v13[20] threadExecutionWidth];
      v32 = [v13[20] maxTotalThreadsPerThreadgroup] / v31;
      [v19 width];
      [v19 height];
LABEL_29:
      OUTLINED_FUNCTION_8_2();
      v38 = v32;
      goto LABEL_30;
    }

LABEL_33:
    v40 = -1;
    goto LABEL_31;
  }

  if (!v30)
  {
    goto LABEL_33;
  }

  [v30 setLabel:@"applyDepthAwareCoefficientsSamplingNoConstraintsKernel"];
  [v27 setComputePipelineState:v13[21]];
  [OUTLINED_FUNCTION_11_1() objectAtIndexedSubscript:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_8() setTexture:? atIndex:?];

  [OUTLINED_FUNCTION_13_0() objectAtIndexedSubscript:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_8() setTexture:? atIndex:?];

  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_1();
  [OUTLINED_FUNCTION_9_1() setTexture:? atIndex:?];
  v33 = [v13[21] threadExecutionWidth];
  v34 = v15;
  v35 = [v13[21] maxTotalThreadsPerThreadgroup] / v33;
  [v19 width];
  [v19 height];
  OUTLINED_FUNCTION_8_2();
  v38 = v35;
  v15 = v34;
LABEL_30:
  v42[0] = v36;
  v42[1] = v38;
  v42[2] = v37;
  [v27 dispatchThreadgroups:v43 threadsPerThreadgroup:v42];
  [v27 endEncoding];

  v40 = 0;
LABEL_31:

  return v40;
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
    v15 = [(XMattingRGBDFilter *)self encodeCoefficientsOn:v11 guideStack:self->_guideStack alphaStack:self->_alphaStack mean_I:self->_mean_I var_I:self->_var_I coefficients:self->_coefficients];
    if (!v15)
    {
      v15 = [OUTLINED_FUNCTION_14_0() encodeApplyCoefficientsOn:? colorGuide:? disparityGuide:? constraints:? destinationAlphaTexture:?];
    }
  }

  v16 = v15;

  return v16;
}

@end