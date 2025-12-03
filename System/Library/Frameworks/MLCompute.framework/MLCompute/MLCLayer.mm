@interface MLCLayer
+ (BOOL)supportsDataType:(MLCDataType)dataType onDevice:(MLCDevice *)device;
- (BOOL)isFirstLayer;
- (BOOL)isGradientNeededForTensor:(id)tensor;
- (BOOL)isLastLayer;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (BOOL)isTensorSharedAcrossMultipleTrainingLayers:(id)layers;
- (MLCDeviceType)deviceType;
- (MLCLayer)initWithLabel:(id)label;
- (NSString)description;
- (NSString)summarizedDOTDescription;
- (id)getDeviceForInference;
- (id)getDeviceForTraining;
- (id)resultTensorFromSources:(id)sources;
- (id)resultTensorsFromBroadcastableSources:(id)sources resultTensorDataType:(int)type;
- (unint64_t)deviceMemorySizeForForward;
- (unint64_t)deviceMemorySizeWithOptimizer:(id)optimizer device:(id)device;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension;
- (unint64_t)resultSizeFromSourceSizes:(id)sizes dimension:(unint64_t)dimension;
- (void)assignLayerID:(unint64_t)d;
- (void)bindDevice:(id)device deviceOps:(id)ops;
- (void)getDeviceForInference;
- (void)getDeviceForTraining;
- (void)resetLayerID;
- (void)setBatchSize:(unint64_t)size;
- (void)setIsDebuggingEnabled:(BOOL)enabled isPrivate:(BOOL)private;
@end

@implementation MLCLayer

- (MLCLayer)initWithLabel:(id)label
{
  labelCopy = label;
  v28.receiver = self;
  v28.super_class = MLCLayer;
  v6 = [(MLCLayer *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_label, label);
    objc_storeStrong(&v7->_originalLabel, label);
    v8 = vdupq_n_s64(1uLL);
    *&v7->_kernelWidth = v8;
    *&v7->_dilationRateInX = v8;
    *&v7->_strideInX = v8;
    v7->_paddingPolicy = 0;
    v7->_paddingSizeInX = 0;
    v7->_paddingSizeInY = 0;
    v9 = MEMORY[0x277CBEBF8];
    v10 = [MEMORY[0x277CBEBF8] mutableCopy];
    sourceTensors = v7->_sourceTensors;
    v7->_sourceTensors = v10;

    v12 = [v9 mutableCopy];
    resultTensors = v7->_resultTensors;
    v7->_resultTensors = v12;

    v14 = [v9 mutableCopy];
    sourceGradientTensors = v7->_sourceGradientTensors;
    v7->_sourceGradientTensors = v14;

    v16 = [v9 mutableCopy];
    resultGradientTensors = v7->_resultGradientTensors;
    v7->_resultGradientTensors = v16;

    v18 = [v9 mutableCopy];
    fusedLayers = v7->_fusedLayers;
    v7->_fusedLayers = v18;

    intermediateSumLayer = v7->_intermediateSumLayer;
    v7->_intermediateSumLayer = 0;

    v21 = [v9 mutableCopy];
    intermediateGradientTensors = v7->_intermediateGradientTensors;
    v7->_intermediateGradientTensors = v21;

    v7->_intermediateGradientTensorIndex = 0;
    v7->_zeroIntermediateGradientTensors = 0;
    device = v7->_device;
    v7->_device = 0;

    v24 = [v9 mutableCopy];
    deviceOps = v7->_deviceOps;
    v7->_deviceOps = v24;

    *&v7->_isDebuggingEnabled = 0;
    v7->_allocateGradientTensors = 1;
    v7->_compileForInferenceOnly = 0;
    *&v7->_isLastFusedLayer = 0;
    conditionalTreeNode = v7->_conditionalTreeNode;
    v7->_conditionalTreeNode = 0;
  }

  return v7;
}

- (BOOL)isFirstLayer
{
  v17 = *MEMORY[0x277D85DE8];
  [(MLCLayer *)self sourceTensors];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        parentLayers = [*(*(&v12 + 1) + 8 * i) parentLayers];
        v8 = [parentLayers count];

        if (v8)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isLastLayer
{
  v17 = *MEMORY[0x277D85DE8];
  [(MLCLayer *)self resultTensors];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        childLayers = [*(*(&v12 + 1) + 8 * i) childLayers];
        v8 = [childLayers count];

        if (v8)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)bindDevice:(id)device deviceOps:(id)ops
{
  opsCopy = ops;
  [(MLCLayer *)self setDevice:device];
  [(MLCLayer *)self setDeviceOps:opsCopy];
}

- (void)assignLayerID:(unint64_t)d
{
  [(MLCLayer *)self setLayerID:?];
  if (self->_label)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%lu", self->_label, d];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"layer-%lu", d, v5];
  }
  v6 = ;
  [(MLCLayer *)self setLabel:v6];
}

- (void)resetLayerID
{
  [(MLCLayer *)self setLayerID:0];
  originalLabel = [(MLCLayer *)self originalLabel];
  [(MLCLayer *)self setLabel:originalLabel];
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension
{
  if (dimension < 2)
  {
    return size;
  }

  if (dimension == 3)
  {
    kernelWidth = [(MLCLayer *)self kernelWidth];
    dilationRateInX = [(MLCLayer *)self dilationRateInX];
    strideInX = [(MLCLayer *)self strideInX];
    paddingSizeInX = [(MLCLayer *)self paddingSizeInX];
  }

  else
  {
    kernelWidth = [(MLCLayer *)self kernelHeight];
    dilationRateInX = [(MLCLayer *)self dilationRateInY];
    strideInX = [(MLCLayer *)self strideInY];
    paddingSizeInX = [(MLCLayer *)self paddingSizeInY];
  }

  v10 = paddingSizeInX;
  if (![(MLCLayer *)self paddingPolicy])
  {
    if (!strideInX)
    {
      return strideInX;
    }

    if (strideInX == 1)
    {
      return size;
    }

    v12 = size + strideInX;
    return (v12 - 1) / strideInX;
  }

  if ([(MLCLayer *)self paddingPolicy]!= 1)
  {
    return vcvtms_u32_f32(((~(dilationRateInX * (kernelWidth - 1)) + size + 2 * v10) / strideInX) + 1.0);
  }

  if (strideInX)
  {
    v11 = kernelWidth - 1;
    if (strideInX == 1)
    {
      return size - v11 * dilationRateInX;
    }

    v12 = strideInX + ((size - v11 * dilationRateInX) & ~((size - v11 * dilationRateInX) >> 63));
    return (v12 - 1) / strideInX;
  }

  return strideInX;
}

- (unint64_t)resultSizeFromSourceSizes:(id)sizes dimension:(unint64_t)dimension
{
  v6 = [sizes objectAtIndexedSubscript:dimension];
  v7 = -[MLCLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v6 unsignedIntegerValue], dimension);

  return v7;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v7 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor = [v7 descriptor];
    shape = [descriptor shape];
    v10 = [shape count];

    if (i >= v10)
    {
      break;
    }

    v11 = i;
    if (i == 2)
    {
      v12 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor2 = [v12 descriptor];
      shape2 = [descriptor2 shape];
      v15 = [shape2 count];

      if (v15 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }
    }

    v16 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor3 = [v16 descriptor];
    shape3 = [descriptor3 shape];
    v19 = [shape3 objectAtIndexedSubscript:i];
    v20 = -[MLCLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v19 unsignedIntegerValue], v11);

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
    [v5 setObject:v21 atIndexedSubscript:i];
  }

  v22 = [v5 copy];
  v23 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor4 = [v23 descriptor];
  v25 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v22, [descriptor4 dataType]);

  v26 = [MLCTensor tensorWithDescriptor:v25];

  return v26;
}

- (id)resultTensorsFromBroadcastableSources:(id)sources resultTensorDataType:(int)type
{
  sourcesCopy = sources;
  v6 = [MEMORY[0x277CBEBF8] mutableCopy];
  v7 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor = [v7 descriptor];
  shape = [descriptor shape];
  v88 = [shape count];

  if ([sourcesCopy count] >= 2)
  {
    v10 = [sourcesCopy objectAtIndexedSubscript:1];
    descriptor2 = [v10 descriptor];
    shape2 = [descriptor2 shape];
    v13 = [shape2 count];

    if (v13 > v88)
    {
      v14 = [sourcesCopy objectAtIndexedSubscript:1];
      descriptor3 = [v14 descriptor];
      shape3 = [descriptor3 shape];
      v88 = [shape3 count];
    }
  }

  typeCopy = type;
  if ([sourcesCopy count] != 1)
  {
    v24 = MEMORY[0x277CBEBF8];
    v25 = [MEMORY[0x277CBEBF8] mutableCopy];
    v26 = [v24 mutableCopy];
    v27 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor4 = [v27 descriptor];
    shape4 = [descriptor4 shape];
    v30 = [shape4 count];

    v31 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor5 = [v31 descriptor];
    shape5 = [descriptor5 shape];
    v34 = shape5;
    v86 = v6;
    v87 = sourcesCopy;
    if (v88 == v30)
    {
      v35 = [shape5 copy];

      v25 = v35;
    }

    else
    {
      v36 = [shape5 count];

      if (v88)
      {
        v37 = 0;
        v38 = v88 - v36;
        v84 = v36 - v88;
        v39 = 0x277CCA000uLL;
        do
        {
          if (v37 >= v38)
          {
            v41 = [v87 objectAtIndexedSubscript:0];
            descriptor6 = [v41 descriptor];
            [descriptor6 shape];
            v44 = v43 = v39;
            v45 = [v44 objectAtIndexedSubscript:v84 + v37];
            unsignedIntegerValue = [v45 unsignedIntegerValue];

            v39 = v43;
          }

          else
          {
            unsignedIntegerValue = 1;
          }

          v46 = [*(v39 + 2992) numberWithUnsignedInteger:unsignedIntegerValue];
          [v25 setObject:v46 atIndexedSubscript:v37];

          ++v37;
        }

        while (v88 != v37);
        sourcesCopy = v87;
      }
    }

    v47 = [sourcesCopy objectAtIndexedSubscript:1];
    descriptor7 = [v47 descriptor];
    shape6 = [descriptor7 shape];
    v50 = [shape6 count];

    v51 = [sourcesCopy objectAtIndexedSubscript:1];
    descriptor8 = [v51 descriptor];
    shape7 = [descriptor8 shape];
    v54 = shape7;
    if (v88 == v50)
    {
      v55 = [shape7 copy];

      v26 = v55;
      v6 = v86;
      if (!v88)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v56 = [shape7 count];

      v6 = v86;
      if (!v88)
      {
LABEL_33:

        goto LABEL_34;
      }

      v57 = 0;
      v58 = v88 - v56;
      v83 = v26;
      v85 = v56 - v88;
      v59 = 0x277CCA000uLL;
      do
      {
        if (v57 >= v58)
        {
          v61 = [v87 objectAtIndexedSubscript:1];
          descriptor9 = [v61 descriptor];
          [descriptor9 shape];
          v64 = v63 = v59;
          v65 = [v64 objectAtIndexedSubscript:v85 + v57];
          unsignedIntegerValue2 = [v65 unsignedIntegerValue];

          v59 = v63;
          v26 = v83;

          v6 = v86;
        }

        else
        {
          unsignedIntegerValue2 = 1;
        }

        v66 = [*(v59 + 2992) numberWithUnsignedInteger:unsignedIntegerValue2];
        [v26 setObject:v66 atIndexedSubscript:v57];

        ++v57;
      }

      while (v88 != v57);
    }

    v67 = 0;
    v68 = v6;
    do
    {
      v69 = [v25 objectAtIndexedSubscript:v67];
      unsignedIntegerValue3 = [v69 unsignedIntegerValue];
      v71 = [v26 objectAtIndexedSubscript:v67];
      unsignedIntegerValue4 = [v71 unsignedIntegerValue];

      v73 = MEMORY[0x277CCABB0];
      if (unsignedIntegerValue3 >= unsignedIntegerValue4)
      {
        v74 = v25;
      }

      else
      {
        v74 = v26;
      }

      v75 = [v74 objectAtIndexedSubscript:v67];
      v76 = [v73 numberWithUnsignedInteger:{objc_msgSend(v75, "unsignedIntegerValue")}];
      [v68 setObject:v76 atIndexedSubscript:v67];

      ++v67;
    }

    while (v88 != v67);
    sourcesCopy = v87;
    v6 = v68;
    goto LABEL_33;
  }

  if (v88)
  {
    for (i = 0; i != v88; ++i)
    {
      v18 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor10 = [v18 descriptor];
      shape8 = [descriptor10 shape];
      v21 = [shape8 objectAtIndexedSubscript:i];
      unsignedIntegerValue5 = [v21 unsignedIntegerValue];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue5];
      [v6 setObject:v23 atIndexedSubscript:i];
    }
  }

LABEL_34:
  v77 = v6;
  v78 = [v6 copy];
  v79 = [MLCTensorDescriptor descriptorWithShape:v78 dataType:typeCopy];

  v80 = [MLCTensor tensorWithDescriptor:v79];

  return v80;
}

- (unint64_t)deviceMemorySizeWithOptimizer:(id)optimizer device:(id)device
{
  optimizerCopy = optimizer;
  deviceCopy = device;
  if ([(MLCLayer *)self skipLayer])
  {
    v8 = 0;
    v9 = 0;
LABEL_25:
    v42 = 0;
    goto LABEL_26;
  }

  resultTensors = [(MLCLayer *)self resultTensors];
  v11 = [resultTensors count];

  if (v11)
  {
    v12 = 0;
    v8 = 0;
    do
    {
      resultTensors2 = [(MLCLayer *)self resultTensors];
      v14 = [resultTensors2 objectAtIndexedSubscript:v12];
      sharedMemoryTensor = [v14 sharedMemoryTensor];

      if (!sharedMemoryTensor)
      {
        computeEngine = [deviceCopy computeEngine];
        resultTensors3 = [(MLCLayer *)self resultTensors];
        v18 = [resultTensors3 objectAtIndexedSubscript:v12];
        v8 += [computeEngine deviceMemorySizeForTensor:v18];
      }

      ++v12;
      resultTensors4 = [(MLCLayer *)self resultTensors];
      v20 = [resultTensors4 count];
    }

    while (v12 < v20);
  }

  else
  {
    v8 = 0;
  }

  if (![(MLCLayer *)self isTrainable])
  {
    goto LABEL_22;
  }

  intermediateGradientTensors = [(MLCLayer *)self intermediateGradientTensors];
  v22 = [intermediateGradientTensors count];

  if (v22)
  {
    intermediateGradientTensors2 = [(MLCLayer *)self intermediateGradientTensors];
    v24 = [intermediateGradientTensors2 count];

    if (v24)
    {
      v25 = 0;
      v9 = 0;
      do
      {
        computeEngine2 = [deviceCopy computeEngine];
        intermediateGradientTensors3 = [(MLCLayer *)self intermediateGradientTensors];
        v28 = [intermediateGradientTensors3 objectAtIndexedSubscript:v25];
        v9 += [computeEngine2 deviceMemorySizeForTensor:v28];

        ++v25;
        intermediateGradientTensors4 = [(MLCLayer *)self intermediateGradientTensors];
        v30 = [intermediateGradientTensors4 count];
      }

      while (v25 < v30);
      goto LABEL_23;
    }

LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  sourceGradientTensors = [(MLCLayer *)self sourceGradientTensors];
  v32 = [sourceGradientTensors count];

  if (!v32)
  {
    goto LABEL_22;
  }

  v33 = 0;
  v9 = 0;
  do
  {
    sourceGradientTensors2 = [(MLCLayer *)self sourceGradientTensors];
    v35 = [sourceGradientTensors2 objectAtIndexedSubscript:v33];
    sharedMemoryTensor2 = [v35 sharedMemoryTensor];

    if (!sharedMemoryTensor2)
    {
      computeEngine3 = [deviceCopy computeEngine];
      sourceGradientTensors3 = [(MLCLayer *)self sourceGradientTensors];
      v39 = [sourceGradientTensors3 objectAtIndexedSubscript:v33];
      v9 += [computeEngine3 deviceMemorySizeForTensor:v39];
    }

    ++v33;
    sourceGradientTensors4 = [(MLCLayer *)self sourceGradientTensors];
    v41 = [sourceGradientTensors4 count];
  }

  while (v33 < v41);
LABEL_23:
  if (![(MLCLayer *)self isUpdatable])
  {
    goto LABEL_25;
  }

  v42 = [(MLCLayer *)self allocatedDataSizeForTraining:[(MLCLayer *)self isTrainable] optimizer:optimizerCopy];
LABEL_26:

  return v9 + v8 + v42;
}

- (unint64_t)deviceMemorySizeForForward
{
  if ([(MLCLayer *)self skipLayer])
  {
    return 0;
  }

  resultTensors = [(MLCLayer *)self resultTensors];
  v5 = [resultTensors count];

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      resultTensors2 = [(MLCLayer *)self resultTensors];
      v9 = [resultTensors2 objectAtIndexedSubscript:v6];
      sharedMemoryTensor = [v9 sharedMemoryTensor];

      if (!sharedMemoryTensor)
      {
        device = [(MLCLayer *)self device];
        computeEngine = [device computeEngine];
        resultTensors3 = [(MLCLayer *)self resultTensors];
        v14 = [resultTensors3 objectAtIndexedSubscript:v6];
        v7 += [computeEngine deviceMemorySizeForTensor:v14];
      }

      ++v6;
      resultTensors4 = [(MLCLayer *)self resultTensors];
      v16 = [resultTensors4 count];
    }

    while (v6 < v16);
  }

  else
  {
    v7 = 0;
  }

  return [(MLCLayer *)self allocatedDataSizeForTraining:0 optimizer:0]+ v7;
}

- (NSString)description
{
  v16 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  device = [(MLCLayer *)self device];
  sourceTensors = [(MLCLayer *)self sourceTensors];
  layerID = [(MLCLayer *)self layerID];
  label = [(MLCLayer *)self label];
  isFirstLayer = [(MLCLayer *)self isFirstLayer];
  isLastLayer = [(MLCLayer *)self isLastLayer];
  skipLayer = [(MLCLayer *)self skipLayer];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v14 = [v16 stringWithFormat:@"%@: { device=%@ : sourceTensors=%@ : layerID=%lu : label=%@ : isFirstLayer=%d : isLastLayer=%d : skipLayer=%d : conditionalTreeNode=%@ : resultTensor=%@ }", v4, device, sourceTensors, layerID, label, isFirstLayer, isLastLayer, skipLayer, conditionalTreeNode, resultTensors];

  return v14;
}

- (id)getDeviceForTraining
{
  device = [(MLCLayer *)self device];

  if (!device)
  {
    v5 = +[MLCLog framework];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MLCLayer *)a2 getDeviceForTraining];
    }
  }

  device2 = [(MLCLayer *)self device];

  return device2;
}

- (id)getDeviceForInference
{
  device = [(MLCLayer *)self device];

  if (!device)
  {
    v5 = +[MLCLog framework];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MLCLayer *)a2 getDeviceForInference];
    }
  }

  device2 = [(MLCLayer *)self device];

  return device2;
}

- (void)setBatchSize:(unint64_t)size
{
  selfCopy = self;
  sizeCopy = 0xFFFFFFFFLL;
  if (size)
  {
    sizeCopy = size;
  }

  v101 = sizeCopy;
  sourceTensors = [(MLCLayer *)self sourceTensors];
  v6 = [sourceTensors count];

  v103 = selfCopy;
  if (v6 < 2)
  {
    v18 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 1;
    do
    {
      sourceTensors2 = [(MLCLayer *)selfCopy sourceTensors];
      v107 = v7;
      v10 = [sourceTensors2 objectAtIndexedSubscript:v7];
      descriptor = [v10 descriptor];
      shape = [descriptor shape];
      v104 = [shape count];
      sourceTensors3 = [(MLCLayer *)selfCopy sourceTensors];
      v14 = [sourceTensors3 objectAtIndexedSubscript:v8];
      descriptor2 = [v14 descriptor];
      shape2 = [descriptor2 shape];
      v17 = [shape2 count];

      selfCopy = v103;
      v18 = v8;
      if (v104 >= v17)
      {
        sourceTensors4 = [(MLCLayer *)v103 sourceTensors];
        v19 = [sourceTensors4 objectAtIndexedSubscript:v107];
        descriptor3 = [v19 descriptor];
        shape3 = [descriptor3 shape];
        v102 = [shape3 count];
        sourceTensors5 = [(MLCLayer *)v103 sourceTensors];
        v23 = [sourceTensors5 objectAtIndexedSubscript:v8];
        descriptor4 = [v23 descriptor];
        shape4 = [descriptor4 shape];
        v26 = [shape4 count];

        if (v102 == v26)
        {
          selfCopy = v103;
          sourceTensors6 = [(MLCLayer *)v103 sourceTensors];
          v28 = [sourceTensors6 objectAtIndexedSubscript:v107];
          descriptor5 = [v28 descriptor];
          shape5 = [descriptor5 shape];
          v31 = [shape5 objectAtIndexedSubscript:0];
          unsignedIntegerValue = [v31 unsignedIntegerValue];

          sourceTensors7 = [(MLCLayer *)v103 sourceTensors];
          v34 = [sourceTensors7 objectAtIndexedSubscript:v8];
          descriptor6 = [v34 descriptor];
          shape6 = [descriptor6 shape];
          v37 = [shape6 objectAtIndexedSubscript:0];
          unsignedIntegerValue2 = [v37 unsignedIntegerValue];

          if (unsignedIntegerValue >= unsignedIntegerValue2)
          {
            v18 = v107;
          }

          else
          {
            v18 = v8;
          }
        }

        else
        {
          v18 = v107;
          selfCopy = v103;
        }
      }

      ++v8;
      sourceTensors8 = [(MLCLayer *)selfCopy sourceTensors];
      v40 = [sourceTensors8 count];

      v7 = v18;
    }

    while (v8 < v40);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v18 = 0;
  }

  sourceTensors9 = [(MLCLayer *)selfCopy sourceTensors];
  v42 = [sourceTensors9 count];

  v43 = v101;
  v44 = v101;
  if (v42)
  {
    sourceTensors10 = [(MLCLayer *)selfCopy sourceTensors];
    v46 = [sourceTensors10 objectAtIndexedSubscript:v18];
    descriptor7 = [v46 descriptor];
    shape7 = [descriptor7 shape];
    if ([shape7 count] == 1)
    {

      v44 = 1;
    }

    else
    {
      sourceTensors11 = [(MLCLayer *)selfCopy sourceTensors];
      v50 = [sourceTensors11 objectAtIndexedSubscript:v18];
      descriptor8 = [v50 descriptor];
      shape8 = [descriptor8 shape];
      v53 = [shape8 objectAtIndexedSubscript:0];
      unsignedIntegerValue3 = [v53 unsignedIntegerValue];

      if (unsignedIntegerValue3 == 1)
      {
        v44 = 1;
        selfCopy = v103;
        v43 = v101;
      }

      else
      {
        selfCopy = v103;
        sourceTensors12 = [(MLCLayer *)v103 sourceTensors];
        v55 = [sourceTensors12 objectAtIndexedSubscript:v18];
        descriptor9 = [v55 descriptor];
        shape9 = [descriptor9 shape];
        v58 = [shape9 objectAtIndexedSubscript:0];
        unsignedIntegerValue4 = [v58 unsignedIntegerValue];

        v43 = v101;
        if (unsignedIntegerValue4 >= v101)
        {
          v44 = v101;
        }

        else
        {
          v44 = unsignedIntegerValue4;
        }
      }
    }
  }

  device = [(MLCLayer *)selfCopy device];
  computeEngine = [device computeEngine];
  numDevices = [computeEngine numDevices];

  v63 = 1;
  if (v44 != 1)
  {
    v63 = v44 / numDevices;
  }

  if (numDevices >= 2)
  {
    v64 = v63;
  }

  else
  {
    v64 = v44;
  }

  deviceOps = [(MLCLayer *)selfCopy deviceOps];
  v66 = [deviceOps count];

  if (v66)
  {
    v67 = 0;
    do
    {
      deviceOps2 = [(MLCLayer *)selfCopy deviceOps];
      v69 = [deviceOps2 objectAtIndexedSubscript:v67];
      [v69 setBatchSize:v64];

      ++v67;
      deviceOps3 = [(MLCLayer *)selfCopy deviceOps];
      v71 = [deviceOps3 count];
    }

    while (v67 < v71);
  }

  intermediateSumLayer = [(MLCLayer *)selfCopy intermediateSumLayer];

  if (intermediateSumLayer)
  {
    resultTensors = [(MLCLayer *)selfCopy resultTensors];
    v74 = [resultTensors count];

    if (v74)
    {
      v106 = numDevices;
      v75 = 0;
      while (1)
      {
        resultTensors2 = [(MLCLayer *)selfCopy resultTensors];
        v77 = [resultTensors2 objectAtIndexedSubscript:v75];
        descriptor10 = [v77 descriptor];
        shape10 = [descriptor10 shape];
        if ([shape10 count] == 1)
        {
        }

        else
        {
          resultTensors3 = [(MLCLayer *)selfCopy resultTensors];
          v81 = [resultTensors3 objectAtIndexedSubscript:v75];
          descriptor11 = [v81 descriptor];
          shape11 = [descriptor11 shape];
          v84 = [shape11 objectAtIndexedSubscript:0];
          unsignedIntegerValue5 = [v84 unsignedIntegerValue];

          selfCopy = v103;
          if (unsignedIntegerValue5 != 1)
          {
            resultTensors4 = [(MLCLayer *)v103 resultTensors];
            v88 = [resultTensors4 objectAtIndexedSubscript:v75];
            descriptor12 = [v88 descriptor];
            shape12 = [descriptor12 shape];
            v91 = [shape12 objectAtIndexedSubscript:0];
            unsignedIntegerValue6 = [v91 unsignedIntegerValue];

            v43 = v101;
            if (unsignedIntegerValue6 < v101)
            {
              v43 = unsignedIntegerValue6;
            }

            numDevices = v106;
            break;
          }
        }

        ++v75;
        resultTensors5 = [(MLCLayer *)selfCopy resultTensors];
        v86 = [resultTensors5 count];

        if (v75 >= v86)
        {
          v43 = 1;
          goto LABEL_47;
        }
      }
    }

    if (numDevices >= 2 && v43 != 1)
    {
      v43 /= numDevices;
    }

LABEL_47:
    deviceOps4 = [(MLCLayer *)selfCopy deviceOps];
    v94 = [deviceOps4 count];

    if (v94)
    {
      v95 = 0;
      do
      {
        intermediateSumLayer2 = [(MLCLayer *)selfCopy intermediateSumLayer];
        deviceOps5 = [intermediateSumLayer2 deviceOps];
        v98 = [deviceOps5 objectAtIndexedSubscript:v95];
        [v98 setBatchSize:v43];

        ++v95;
        deviceOps6 = [(MLCLayer *)selfCopy deviceOps];
        v100 = [deviceOps6 count];
      }

      while (v95 < v100);
    }
  }
}

- (void)setIsDebuggingEnabled:(BOOL)enabled isPrivate:(BOOL)private
{
  device = [(MLCLayer *)self device];

  if (device)
  {
    if (!private)
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MLCLayer setIsDebuggingEnabled:a2 isPrivate:?];
      }
    }
  }

  else
  {
    self->_isDebuggingEnabled = enabled;
  }
}

- (BOOL)isSupportedShapeForTensorSources:(id)sources
{
  sourcesCopy = sources;
  if ([sourcesCopy count])
  {
    v4 = 0;
    do
    {
      v5 = [sourcesCopy objectAtIndexedSubscript:v4];
      descriptor = [v5 descriptor];
      shape = [descriptor shape];
      v8 = [shape count];

      v9 = v8 > 2;
      if (v8 <= 2)
      {
        break;
      }

      ++v4;
    }

    while (v4 < [sourcesCopy count]);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)isGradientNeededForTensor:(id)tensor
{
  tensorCopy = tensor;
  sourceTensors = [(MLCLayer *)self sourceTensors];
  sourceTensors2 = [sourceTensors count];

  if (sourceTensors2)
  {
    v7 = 0;
    do
    {
      sourceTensors2 = [(MLCLayer *)self sourceTensors];
      v8 = [sourceTensors2 objectAtIndexedSubscript:v7];

      LOBYTE(sourceTensors2) = v8 == tensorCopy;
      if (v8 == tensorCopy)
      {
        break;
      }

      ++v7;
      sourceTensors3 = [(MLCLayer *)self sourceTensors];
      v10 = [sourceTensors3 count];
    }

    while (v7 < v10);
  }

  return sourceTensors2;
}

- (BOOL)isTensorSharedAcrossMultipleTrainingLayers:(id)layers
{
  layersCopy = layers;
  childLayers = [layersCopy childLayers];
  v5 = [childLayers count];

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      childLayers2 = [layersCopy childLayers];
      v9 = [childLayers2 objectAtIndexedSubscript:v6];
      compileForInferenceOnly = [v9 compileForInferenceOnly];

      v7 += compileForInferenceOnly ^ 1u;
      ++v6;
      childLayers3 = [layersCopy childLayers];
      v12 = [childLayers3 count];
    }

    while (v6 < v12);
    v13 = v7 > 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSString)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ (%lu)>", v5, -[MLCLayer layerID](self, "layerID")];

  return v6;
}

+ (BOOL)supportsDataType:(MLCDataType)dataType onDevice:(MLCDevice *)device
{
  v6 = device;
  if ([self isEqual:objc_opt_class()])
  {
    v7 = 0;
  }

  else if ([(MLCDevice *)v6 type]== MLCDeviceTypeANE)
  {
    v7 = ((dataType - 1) & 0xFFFFFFFD) == 0;
  }

  else
  {
    v7 = dataType == MLCDataTypeFloat32;
  }

  return v7;
}

- (MLCDeviceType)deviceType
{
  device = [(MLCLayer *)self device];

  if (!device)
  {
    return 0x7FFFFFFF;
  }

  device2 = [(MLCLayer *)self device];
  actualDeviceType = [device2 actualDeviceType];

  return actualDeviceType;
}

- (void)getDeviceForTraining
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: no device specified.  The training graph that this layer is associated with may not have been compiled", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceForInference
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: no device specified.  The inference graph that this layer is associated with may not have been compiled", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setIsDebuggingEnabled:(const char *)a1 isPrivate:.cold.1(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: isDebuggingEnabled cannot be set once layer has been compiled", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end