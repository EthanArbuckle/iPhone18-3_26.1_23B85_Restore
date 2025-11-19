@interface MLCLayer
+ (BOOL)supportsDataType:(MLCDataType)dataType onDevice:(MLCDevice *)device;
- (BOOL)isFirstLayer;
- (BOOL)isGradientNeededForTensor:(id)a3;
- (BOOL)isLastLayer;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (BOOL)isTensorSharedAcrossMultipleTrainingLayers:(id)a3;
- (MLCDeviceType)deviceType;
- (MLCLayer)initWithLabel:(id)a3;
- (NSString)description;
- (NSString)summarizedDOTDescription;
- (id)getDeviceForInference;
- (id)getDeviceForTraining;
- (id)resultTensorFromSources:(id)a3;
- (id)resultTensorsFromBroadcastableSources:(id)a3 resultTensorDataType:(int)a4;
- (unint64_t)deviceMemorySizeForForward;
- (unint64_t)deviceMemorySizeWithOptimizer:(id)a3 device:(id)a4;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4;
- (unint64_t)resultSizeFromSourceSizes:(id)a3 dimension:(unint64_t)a4;
- (void)assignLayerID:(unint64_t)a3;
- (void)bindDevice:(id)a3 deviceOps:(id)a4;
- (void)getDeviceForInference;
- (void)getDeviceForTraining;
- (void)resetLayerID;
- (void)setBatchSize:(unint64_t)a3;
- (void)setIsDebuggingEnabled:(BOOL)a3 isPrivate:(BOOL)a4;
@end

@implementation MLCLayer

- (MLCLayer)initWithLabel:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = MLCLayer;
  v6 = [(MLCLayer *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_label, a3);
    objc_storeStrong(&v7->_originalLabel, a3);
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

        v7 = [*(*(&v12 + 1) + 8 * i) parentLayers];
        v8 = [v7 count];

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

        v7 = [*(*(&v12 + 1) + 8 * i) childLayers];
        v8 = [v7 count];

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

- (void)bindDevice:(id)a3 deviceOps:(id)a4
{
  v6 = a4;
  [(MLCLayer *)self setDevice:a3];
  [(MLCLayer *)self setDeviceOps:v6];
}

- (void)assignLayerID:(unint64_t)a3
{
  [(MLCLayer *)self setLayerID:?];
  if (self->_label)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%lu", self->_label, a3];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"layer-%lu", a3, v5];
  }
  v6 = ;
  [(MLCLayer *)self setLabel:v6];
}

- (void)resetLayerID
{
  [(MLCLayer *)self setLayerID:0];
  v3 = [(MLCLayer *)self originalLabel];
  [(MLCLayer *)self setLabel:v3];
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4
{
  if (a4 < 2)
  {
    return a3;
  }

  if (a4 == 3)
  {
    v7 = [(MLCLayer *)self kernelWidth];
    v8 = [(MLCLayer *)self dilationRateInX];
    v5 = [(MLCLayer *)self strideInX];
    v9 = [(MLCLayer *)self paddingSizeInX];
  }

  else
  {
    v7 = [(MLCLayer *)self kernelHeight];
    v8 = [(MLCLayer *)self dilationRateInY];
    v5 = [(MLCLayer *)self strideInY];
    v9 = [(MLCLayer *)self paddingSizeInY];
  }

  v10 = v9;
  if (![(MLCLayer *)self paddingPolicy])
  {
    if (!v5)
    {
      return v5;
    }

    if (v5 == 1)
    {
      return a3;
    }

    v12 = a3 + v5;
    return (v12 - 1) / v5;
  }

  if ([(MLCLayer *)self paddingPolicy]!= 1)
  {
    return vcvtms_u32_f32(((~(v8 * (v7 - 1)) + a3 + 2 * v10) / v5) + 1.0);
  }

  if (v5)
  {
    v11 = v7 - 1;
    if (v5 == 1)
    {
      return a3 - v11 * v8;
    }

    v12 = v5 + ((a3 - v11 * v8) & ~((a3 - v11 * v8) >> 63));
    return (v12 - 1) / v5;
  }

  return v5;
}

- (unint64_t)resultSizeFromSourceSizes:(id)a3 dimension:(unint64_t)a4
{
  v6 = [a3 objectAtIndexedSubscript:a4];
  v7 = -[MLCLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v6 unsignedIntegerValue], a4);

  return v7;
}

- (id)resultTensorFromSources:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v7 descriptor];
    v9 = [v8 shape];
    v10 = [v9 count];

    if (i >= v10)
    {
      break;
    }

    v11 = i;
    if (i == 2)
    {
      v12 = [v4 objectAtIndexedSubscript:0];
      v13 = [v12 descriptor];
      v14 = [v13 shape];
      v15 = [v14 count];

      if (v15 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }
    }

    v16 = [v4 objectAtIndexedSubscript:0];
    v17 = [v16 descriptor];
    v18 = [v17 shape];
    v19 = [v18 objectAtIndexedSubscript:i];
    v20 = -[MLCLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v19 unsignedIntegerValue], v11);

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
    [v5 setObject:v21 atIndexedSubscript:i];
  }

  v22 = [v5 copy];
  v23 = [v4 objectAtIndexedSubscript:0];
  v24 = [v23 descriptor];
  v25 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v22, [v24 dataType]);

  v26 = [MLCTensor tensorWithDescriptor:v25];

  return v26;
}

- (id)resultTensorsFromBroadcastableSources:(id)a3 resultTensorDataType:(int)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEBF8] mutableCopy];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v7 descriptor];
  v9 = [v8 shape];
  v88 = [v9 count];

  if ([v5 count] >= 2)
  {
    v10 = [v5 objectAtIndexedSubscript:1];
    v11 = [v10 descriptor];
    v12 = [v11 shape];
    v13 = [v12 count];

    if (v13 > v88)
    {
      v14 = [v5 objectAtIndexedSubscript:1];
      v15 = [v14 descriptor];
      v16 = [v15 shape];
      v88 = [v16 count];
    }
  }

  v82 = a4;
  if ([v5 count] != 1)
  {
    v24 = MEMORY[0x277CBEBF8];
    v25 = [MEMORY[0x277CBEBF8] mutableCopy];
    v26 = [v24 mutableCopy];
    v27 = [v5 objectAtIndexedSubscript:0];
    v28 = [v27 descriptor];
    v29 = [v28 shape];
    v30 = [v29 count];

    v31 = [v5 objectAtIndexedSubscript:0];
    v32 = [v31 descriptor];
    v33 = [v32 shape];
    v34 = v33;
    v86 = v6;
    v87 = v5;
    if (v88 == v30)
    {
      v35 = [v33 copy];

      v25 = v35;
    }

    else
    {
      v36 = [v33 count];

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
            v42 = [v41 descriptor];
            [v42 shape];
            v44 = v43 = v39;
            v45 = [v44 objectAtIndexedSubscript:v84 + v37];
            v40 = [v45 unsignedIntegerValue];

            v39 = v43;
          }

          else
          {
            v40 = 1;
          }

          v46 = [*(v39 + 2992) numberWithUnsignedInteger:v40];
          [v25 setObject:v46 atIndexedSubscript:v37];

          ++v37;
        }

        while (v88 != v37);
        v5 = v87;
      }
    }

    v47 = [v5 objectAtIndexedSubscript:1];
    v48 = [v47 descriptor];
    v49 = [v48 shape];
    v50 = [v49 count];

    v51 = [v5 objectAtIndexedSubscript:1];
    v52 = [v51 descriptor];
    v53 = [v52 shape];
    v54 = v53;
    if (v88 == v50)
    {
      v55 = [v53 copy];

      v26 = v55;
      v6 = v86;
      if (!v88)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v56 = [v53 count];

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
          v62 = [v61 descriptor];
          [v62 shape];
          v64 = v63 = v59;
          v65 = [v64 objectAtIndexedSubscript:v85 + v57];
          v60 = [v65 unsignedIntegerValue];

          v59 = v63;
          v26 = v83;

          v6 = v86;
        }

        else
        {
          v60 = 1;
        }

        v66 = [*(v59 + 2992) numberWithUnsignedInteger:v60];
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
      v70 = [v69 unsignedIntegerValue];
      v71 = [v26 objectAtIndexedSubscript:v67];
      v72 = [v71 unsignedIntegerValue];

      v73 = MEMORY[0x277CCABB0];
      if (v70 >= v72)
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
    v5 = v87;
    v6 = v68;
    goto LABEL_33;
  }

  if (v88)
  {
    for (i = 0; i != v88; ++i)
    {
      v18 = [v5 objectAtIndexedSubscript:0];
      v19 = [v18 descriptor];
      v20 = [v19 shape];
      v21 = [v20 objectAtIndexedSubscript:i];
      v22 = [v21 unsignedIntegerValue];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
      [v6 setObject:v23 atIndexedSubscript:i];
    }
  }

LABEL_34:
  v77 = v6;
  v78 = [v6 copy];
  v79 = [MLCTensorDescriptor descriptorWithShape:v78 dataType:v82];

  v80 = [MLCTensor tensorWithDescriptor:v79];

  return v80;
}

- (unint64_t)deviceMemorySizeWithOptimizer:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MLCLayer *)self skipLayer])
  {
    v8 = 0;
    v9 = 0;
LABEL_25:
    v42 = 0;
    goto LABEL_26;
  }

  v10 = [(MLCLayer *)self resultTensors];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    v8 = 0;
    do
    {
      v13 = [(MLCLayer *)self resultTensors];
      v14 = [v13 objectAtIndexedSubscript:v12];
      v15 = [v14 sharedMemoryTensor];

      if (!v15)
      {
        v16 = [v7 computeEngine];
        v17 = [(MLCLayer *)self resultTensors];
        v18 = [v17 objectAtIndexedSubscript:v12];
        v8 += [v16 deviceMemorySizeForTensor:v18];
      }

      ++v12;
      v19 = [(MLCLayer *)self resultTensors];
      v20 = [v19 count];
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

  v21 = [(MLCLayer *)self intermediateGradientTensors];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [(MLCLayer *)self intermediateGradientTensors];
    v24 = [v23 count];

    if (v24)
    {
      v25 = 0;
      v9 = 0;
      do
      {
        v26 = [v7 computeEngine];
        v27 = [(MLCLayer *)self intermediateGradientTensors];
        v28 = [v27 objectAtIndexedSubscript:v25];
        v9 += [v26 deviceMemorySizeForTensor:v28];

        ++v25;
        v29 = [(MLCLayer *)self intermediateGradientTensors];
        v30 = [v29 count];
      }

      while (v25 < v30);
      goto LABEL_23;
    }

LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  v31 = [(MLCLayer *)self sourceGradientTensors];
  v32 = [v31 count];

  if (!v32)
  {
    goto LABEL_22;
  }

  v33 = 0;
  v9 = 0;
  do
  {
    v34 = [(MLCLayer *)self sourceGradientTensors];
    v35 = [v34 objectAtIndexedSubscript:v33];
    v36 = [v35 sharedMemoryTensor];

    if (!v36)
    {
      v37 = [v7 computeEngine];
      v38 = [(MLCLayer *)self sourceGradientTensors];
      v39 = [v38 objectAtIndexedSubscript:v33];
      v9 += [v37 deviceMemorySizeForTensor:v39];
    }

    ++v33;
    v40 = [(MLCLayer *)self sourceGradientTensors];
    v41 = [v40 count];
  }

  while (v33 < v41);
LABEL_23:
  if (![(MLCLayer *)self isUpdatable])
  {
    goto LABEL_25;
  }

  v42 = [(MLCLayer *)self allocatedDataSizeForTraining:[(MLCLayer *)self isTrainable] optimizer:v6];
LABEL_26:

  return v9 + v8 + v42;
}

- (unint64_t)deviceMemorySizeForForward
{
  if ([(MLCLayer *)self skipLayer])
  {
    return 0;
  }

  v4 = [(MLCLayer *)self resultTensors];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [(MLCLayer *)self resultTensors];
      v9 = [v8 objectAtIndexedSubscript:v6];
      v10 = [v9 sharedMemoryTensor];

      if (!v10)
      {
        v11 = [(MLCLayer *)self device];
        v12 = [v11 computeEngine];
        v13 = [(MLCLayer *)self resultTensors];
        v14 = [v13 objectAtIndexedSubscript:v6];
        v7 += [v12 deviceMemorySizeForTensor:v14];
      }

      ++v6;
      v15 = [(MLCLayer *)self resultTensors];
      v16 = [v15 count];
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
  v5 = [(MLCLayer *)self device];
  v6 = [(MLCLayer *)self sourceTensors];
  v7 = [(MLCLayer *)self layerID];
  v8 = [(MLCLayer *)self label];
  v9 = [(MLCLayer *)self isFirstLayer];
  v10 = [(MLCLayer *)self isLastLayer];
  v11 = [(MLCLayer *)self skipLayer];
  v12 = [(MLCLayer *)self conditionalTreeNode];
  v13 = [(MLCLayer *)self resultTensors];
  v14 = [v16 stringWithFormat:@"%@: { device=%@ : sourceTensors=%@ : layerID=%lu : label=%@ : isFirstLayer=%d : isLastLayer=%d : skipLayer=%d : conditionalTreeNode=%@ : resultTensor=%@ }", v4, v5, v6, v7, v8, v9, v10, v11, v12, v13];

  return v14;
}

- (id)getDeviceForTraining
{
  v4 = [(MLCLayer *)self device];

  if (!v4)
  {
    v5 = +[MLCLog framework];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MLCLayer *)a2 getDeviceForTraining];
    }
  }

  v6 = [(MLCLayer *)self device];

  return v6;
}

- (id)getDeviceForInference
{
  v4 = [(MLCLayer *)self device];

  if (!v4)
  {
    v5 = +[MLCLog framework];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MLCLayer *)a2 getDeviceForInference];
    }
  }

  v6 = [(MLCLayer *)self device];

  return v6;
}

- (void)setBatchSize:(unint64_t)a3
{
  v3 = self;
  v4 = 0xFFFFFFFFLL;
  if (a3)
  {
    v4 = a3;
  }

  v101 = v4;
  v5 = [(MLCLayer *)self sourceTensors];
  v6 = [v5 count];

  v103 = v3;
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
      v9 = [(MLCLayer *)v3 sourceTensors];
      v107 = v7;
      v10 = [v9 objectAtIndexedSubscript:v7];
      v11 = [v10 descriptor];
      v12 = [v11 shape];
      v104 = [v12 count];
      v13 = [(MLCLayer *)v3 sourceTensors];
      v14 = [v13 objectAtIndexedSubscript:v8];
      v15 = [v14 descriptor];
      v16 = [v15 shape];
      v17 = [v16 count];

      v3 = v103;
      v18 = v8;
      if (v104 >= v17)
      {
        v105 = [(MLCLayer *)v103 sourceTensors];
        v19 = [v105 objectAtIndexedSubscript:v107];
        v20 = [v19 descriptor];
        v21 = [v20 shape];
        v102 = [v21 count];
        v22 = [(MLCLayer *)v103 sourceTensors];
        v23 = [v22 objectAtIndexedSubscript:v8];
        v24 = [v23 descriptor];
        v25 = [v24 shape];
        v26 = [v25 count];

        if (v102 == v26)
        {
          v3 = v103;
          v27 = [(MLCLayer *)v103 sourceTensors];
          v28 = [v27 objectAtIndexedSubscript:v107];
          v29 = [v28 descriptor];
          v30 = [v29 shape];
          v31 = [v30 objectAtIndexedSubscript:0];
          v32 = [v31 unsignedIntegerValue];

          v33 = [(MLCLayer *)v103 sourceTensors];
          v34 = [v33 objectAtIndexedSubscript:v8];
          v35 = [v34 descriptor];
          v36 = [v35 shape];
          v37 = [v36 objectAtIndexedSubscript:0];
          v38 = [v37 unsignedIntegerValue];

          if (v32 >= v38)
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
          v3 = v103;
        }
      }

      ++v8;
      v39 = [(MLCLayer *)v3 sourceTensors];
      v40 = [v39 count];

      v7 = v18;
    }

    while (v8 < v40);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v18 = 0;
  }

  v41 = [(MLCLayer *)v3 sourceTensors];
  v42 = [v41 count];

  v43 = v101;
  v44 = v101;
  if (v42)
  {
    v45 = [(MLCLayer *)v3 sourceTensors];
    v46 = [v45 objectAtIndexedSubscript:v18];
    v47 = [v46 descriptor];
    v48 = [v47 shape];
    if ([v48 count] == 1)
    {

      v44 = 1;
    }

    else
    {
      v49 = [(MLCLayer *)v3 sourceTensors];
      v50 = [v49 objectAtIndexedSubscript:v18];
      v51 = [v50 descriptor];
      v52 = [v51 shape];
      v53 = [v52 objectAtIndexedSubscript:0];
      v108 = [v53 unsignedIntegerValue];

      if (v108 == 1)
      {
        v44 = 1;
        v3 = v103;
        v43 = v101;
      }

      else
      {
        v3 = v103;
        v54 = [(MLCLayer *)v103 sourceTensors];
        v55 = [v54 objectAtIndexedSubscript:v18];
        v56 = [v55 descriptor];
        v57 = [v56 shape];
        v58 = [v57 objectAtIndexedSubscript:0];
        v59 = [v58 unsignedIntegerValue];

        v43 = v101;
        if (v59 >= v101)
        {
          v44 = v101;
        }

        else
        {
          v44 = v59;
        }
      }
    }
  }

  v60 = [(MLCLayer *)v3 device];
  v61 = [v60 computeEngine];
  v62 = [v61 numDevices];

  v63 = 1;
  if (v44 != 1)
  {
    v63 = v44 / v62;
  }

  if (v62 >= 2)
  {
    v64 = v63;
  }

  else
  {
    v64 = v44;
  }

  v65 = [(MLCLayer *)v3 deviceOps];
  v66 = [v65 count];

  if (v66)
  {
    v67 = 0;
    do
    {
      v68 = [(MLCLayer *)v3 deviceOps];
      v69 = [v68 objectAtIndexedSubscript:v67];
      [v69 setBatchSize:v64];

      ++v67;
      v70 = [(MLCLayer *)v3 deviceOps];
      v71 = [v70 count];
    }

    while (v67 < v71);
  }

  v72 = [(MLCLayer *)v3 intermediateSumLayer];

  if (v72)
  {
    v73 = [(MLCLayer *)v3 resultTensors];
    v74 = [v73 count];

    if (v74)
    {
      v106 = v62;
      v75 = 0;
      while (1)
      {
        v76 = [(MLCLayer *)v3 resultTensors];
        v77 = [v76 objectAtIndexedSubscript:v75];
        v78 = [v77 descriptor];
        v79 = [v78 shape];
        if ([v79 count] == 1)
        {
        }

        else
        {
          v80 = [(MLCLayer *)v3 resultTensors];
          v81 = [v80 objectAtIndexedSubscript:v75];
          v82 = [v81 descriptor];
          v83 = [v82 shape];
          v84 = [v83 objectAtIndexedSubscript:0];
          v109 = [v84 unsignedIntegerValue];

          v3 = v103;
          if (v109 != 1)
          {
            v87 = [(MLCLayer *)v103 resultTensors];
            v88 = [v87 objectAtIndexedSubscript:v75];
            v89 = [v88 descriptor];
            v90 = [v89 shape];
            v91 = [v90 objectAtIndexedSubscript:0];
            v92 = [v91 unsignedIntegerValue];

            v43 = v101;
            if (v92 < v101)
            {
              v43 = v92;
            }

            v62 = v106;
            break;
          }
        }

        ++v75;
        v85 = [(MLCLayer *)v3 resultTensors];
        v86 = [v85 count];

        if (v75 >= v86)
        {
          v43 = 1;
          goto LABEL_47;
        }
      }
    }

    if (v62 >= 2 && v43 != 1)
    {
      v43 /= v62;
    }

LABEL_47:
    v93 = [(MLCLayer *)v3 deviceOps];
    v94 = [v93 count];

    if (v94)
    {
      v95 = 0;
      do
      {
        v96 = [(MLCLayer *)v3 intermediateSumLayer];
        v97 = [v96 deviceOps];
        v98 = [v97 objectAtIndexedSubscript:v95];
        [v98 setBatchSize:v43];

        ++v95;
        v99 = [(MLCLayer *)v3 deviceOps];
        v100 = [v99 count];
      }

      while (v95 < v100);
    }
  }
}

- (void)setIsDebuggingEnabled:(BOOL)a3 isPrivate:(BOOL)a4
{
  v8 = [(MLCLayer *)self device];

  if (v8)
  {
    if (!a4)
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
    self->_isDebuggingEnabled = a3;
  }
}

- (BOOL)isSupportedShapeForTensorSources:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndexedSubscript:v4];
      v6 = [v5 descriptor];
      v7 = [v6 shape];
      v8 = [v7 count];

      v9 = v8 > 2;
      if (v8 <= 2)
      {
        break;
      }

      ++v4;
    }

    while (v4 < [v3 count]);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)isGradientNeededForTensor:(id)a3
{
  v4 = a3;
  v5 = [(MLCLayer *)self sourceTensors];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v6 = [(MLCLayer *)self sourceTensors];
      v8 = [v6 objectAtIndexedSubscript:v7];

      LOBYTE(v6) = v8 == v4;
      if (v8 == v4)
      {
        break;
      }

      ++v7;
      v9 = [(MLCLayer *)self sourceTensors];
      v10 = [v9 count];
    }

    while (v7 < v10);
  }

  return v6;
}

- (BOOL)isTensorSharedAcrossMultipleTrainingLayers:(id)a3
{
  v3 = a3;
  v4 = [v3 childLayers];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [v3 childLayers];
      v9 = [v8 objectAtIndexedSubscript:v6];
      v10 = [v9 compileForInferenceOnly];

      v7 += v10 ^ 1u;
      ++v6;
      v11 = [v3 childLayers];
      v12 = [v11 count];
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
  if ([a1 isEqual:objc_opt_class()])
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
  v3 = [(MLCLayer *)self device];

  if (!v3)
  {
    return 0x7FFFFFFF;
  }

  v4 = [(MLCLayer *)self device];
  v5 = [v4 actualDeviceType];

  return v5;
}

- (void)getDeviceForTraining
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: no device specified.  The training graph that this layer is associated with may not have been compiled", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceForInference
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
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