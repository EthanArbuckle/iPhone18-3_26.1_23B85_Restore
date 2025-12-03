@interface _MLCANEPlistBuilder
+ (BOOL)createReshapeUnitsWithLayer:(id)layer reshapeUnits:(id *)units reshapeResultTensors:(id *)tensors;
+ (id)buildBiasParamsWithBiases:(id)biases;
+ (id)createConstantTensorUnitWithTensor:(id)tensor;
+ (id)createReshapeUnitWithSourceTensor:(id)tensor layer:(id)layer resultShape:(id)shape;
+ (id)createUnitWithLayer:(id)layer unitParams:(id)params;
+ (int)createBroadcastUnitWithSourceTensor:(id)tensor targetShape:(id)shape layer:(id)layer broadcastUnit:(id *)unit broadcastResultTensor:(id *)resultTensor;
- (BOOL)addConstantTensor:(id)tensor toNetwork:(id)network;
- (BOOL)addInputs:(id)inputs ofUnit:(id)unit ofOperation:(id)operation toProcedure:(id)procedure toNetwork:(id)network;
- (BOOL)addOutputs:(id)outputs ofOperation:(id)operation toProcedure:(id)procedure toNetwork:(id)network;
- (BOOL)addScalesAndBiasesOfGocUnit:(id)unit tensorWithBiases:(id)biases tensorWithScales:(id)scales;
- (BOOL)addUnitsAndInputsAndOutpusOfLayer:(id)layer toNetwork:(id)network toProcedure:(id)procedure operationName:(id)name liveInputs:(id)inputs liveOutputs:(id)outputs;
- (BOOL)addWeightsOfConvolutionLayer:(id)layer;
- (BOOL)addWeightsOfFullyConnectedLayer:(id)layer toNetwork:(id)network;
- (BOOL)addWeightsOfLayer:(id)layer toNetwork:(id)network;
- (BOOL)addWeightsOfLayerNormalizationLayer:(id)layer toNetwork:(id)network;
- (BOOL)addWeightsOfNormalizationLayer:(id)layer;
- (BOOL)buildProcedureWithLayer:(id)layer;
- (BOOL)buildProcedureWithRootLayer:(id)layer aneSubgraphLayerList:(id)list liveInputs:(id)inputs liveOutputs:(id)outputs;
- (BOOL)queryAndAddConstantTensors:(id)tensors ofLayer:(id)layer toNetwork:(id)network;
- (_MLCANEPlistBuilder)init;
- (void)releaseWeights;
- (void)unitBottomNamesWithSourceTensor:(id)tensor liveInputs:(id)inputs unitBottomNames:(id)names sourceTensorsToLiveUp:(id)up;
@end

@implementation _MLCANEPlistBuilder

- (_MLCANEPlistBuilder)init
{
  v17[3] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = _MLCANEPlistBuilder;
  v2 = [(_MLCANEPlistBuilder *)&v15 init];
  if (v2)
  {
    v17[0] = kMLCCurrentANEIRVersion[0];
    v16[0] = @"Version";
    v16[1] = @"Networks";
    v3 = MEMORY[0x277CBEBF8];
    v4 = [MEMORY[0x277CBEBF8] mutableCopy];
    v17[1] = v4;
    v16[2] = @"ProcedureList";
    v5 = [v3 mutableCopy];
    v17[2] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v7 = [v6 mutableCopy];
    plist = v2->_plist;
    v2->_plist = v7;

    v9 = objc_opt_new();
    weightOps = v2->_weightOps;
    v2->_weightOps = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    weightTensorsWithDeviceMemory = v2->_weightTensorsWithDeviceMemory;
    v2->_weightTensorsWithDeviceMemory = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)createUnitWithLayer:(id)layer unitParams:(id)params
{
  v72 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  paramsCopy = params;
  v8 = [paramsCopy objectForKeyedSubscript:kMLCANENetUnitType[0]];

  if (v8)
  {
    aSelector = a2;
    v9 = [MEMORY[0x277CBEC10] mutableCopy];
    v53 = [paramsCopy objectForKeyedSubscript:kMLCANENetUnitType[0]];
    [NSObject setObject:v9 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    v10 = [paramsCopy mutableCopy];
    [v10 removeObjectForKey:kMLCANENetUnitType[0]];
    v51 = v10;
    v52 = [v10 copy];

    label = [layerCopy label];
    v54 = v9;
    [v9 setObject:label forKeyedSubscript:@"Name"];

    v12 = MEMORY[0x277CBEBF8];
    v13 = [MEMORY[0x277CBEBF8] mutableCopy];
    v14 = [v12 mutableCopy];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    sourceTensors = [layerCopy sourceTensors];
    v16 = [sourceTensors countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v62;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v62 != v18)
          {
            objc_enumerationMutation(sourceTensors);
          }

          v20 = *(*(&v61 + 1) + 8 * i);
          descriptor = [v20 descriptor];
          dataType = [descriptor dataType];

          v23 = ANE_GetANECIRDataTypeWithMLCDataType(dataType);
          if (!v23)
          {
            log = +[MLCLog framework];
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              v48 = NSStringFromSelector(aSelector);
              *buf = 138412802;
              *&buf[4] = v48;
              v67 = 1024;
              v68 = dataType;
              v69 = 2112;
              v70 = v20;
              _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%@: unsupported data type=%d for source tensor=%@", buf, 0x1Cu);
            }

            v44 = 0;
LABEL_34:
            v39 = v53;
            v38 = v54;
            v42 = v51;
            v41 = v52;
            goto LABEL_35;
          }

          v24 = v23;
          [v13 addObject:v23];
          label2 = [v20 label];
          [v14 addObject:label2];
        }

        v17 = [sourceTensors countByEnumeratingWithState:&v61 objects:v71 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    [v54 setObject:v13 forKeyedSubscript:@"InputType"];
    [v54 setObject:v14 forKeyedSubscript:@"Bottom"];
    v26 = MEMORY[0x277CBEBF8];
    sourceTensors = [MEMORY[0x277CBEBF8] mutableCopy];
    log = [v26 mutableCopy];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = [layerCopy resultTensors];
    v27 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v58;
      while (2)
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v58 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v57 + 1) + 8 * j);
          descriptor2 = [v31 descriptor];
          dataType2 = [descriptor2 dataType];

          v34 = ANE_GetANECIRDataTypeWithMLCDataType(dataType2);
          if (!v34)
          {
            v45 = +[MLCLog framework];
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v49 = NSStringFromSelector(aSelector);
              *buf = 138412802;
              *&buf[4] = v49;
              v67 = 1024;
              v68 = dataType2;
              v69 = 2112;
              v70 = v31;
              _os_log_error_impl(&dword_238C1D000, v45, OS_LOG_TYPE_ERROR, "%@: unsupported data type=%d for result tensor=%@", buf, 0x1Cu);
            }

            v44 = 0;
            goto LABEL_34;
          }

          v35 = v34;
          [sourceTensors addObject:v34];
          *buf = 1;
          ANE_GetTensorFeatureChannelsWithOnePrepended(v31, buf);
          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*buf];
          [log addObject:v36];
        }

        v28 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    v37 = [sourceTensors objectAtIndexedSubscript:0];
    v38 = v54;
    [v54 setObject:v37 forKeyedSubscript:@"OutputType"];

    v39 = v53;
    if (([v53 isEqualToString:@"Broadcast"] & 1) == 0 && (objc_msgSend(v53, "isEqualToString:", @"Reshape") & 1) == 0 && (objc_msgSend(v53, "isEqualToString:", @"InputView") & 1) == 0)
    {
      v40 = [log objectAtIndexedSubscript:0];
      [v54 setObject:v40 forKeyedSubscript:@"OutputChannels"];
    }

    v41 = v52;
    v42 = v51;
    if ([v52 count])
    {
      v43 = [v52 mutableCopy];
      [v54 setObject:v43 forKeyedSubscript:@"Params"];
    }

    v44 = v54;
LABEL_35:
  }

  else
  {
    v38 = +[MLCLog framework];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      +[_MLCANEPlistBuilder createUnitWithLayer:unitParams:];
    }

    v44 = 0;
    v41 = paramsCopy;
  }

  v46 = *MEMORY[0x277D85DE8];

  return v44;
}

+ (id)buildBiasParamsWithBiases:(id)biases
{
  biasesCopy = biases;
  v5 = MEMORY[0x277CBEC10];
  v6 = [MEMORY[0x277CBEC10] mutableCopy];
  v7 = [v5 mutableCopy];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v7 setObject:v8 forKeyedSubscript:@"BiasMutable"];

  descriptor = [biasesCopy descriptor];

  v10 = ANE_GetANECIRDataTypeWithMLCDataType([descriptor dataType]);
  v11 = v10;
  if (!v10)
  {
    v12 = +[MLCLog framework];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[_MLCANEPlistBuilder buildBiasParamsWithBiases:];
    }

    goto LABEL_8;
  }

  if (([v10 isEqualToString:@"UInt8"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"Int8"))
  {
    v12 = +[MLCLog framework];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder buildBiasParamsWithBiases:a2];
    }

LABEL_8:

    v13 = 0;
    goto LABEL_9;
  }

  shape = [descriptor shape];
  v16 = [shape objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
  [v7 setObject:v18 forKeyedSubscript:@"BiasCount"];

  [v6 setObject:v7 forKeyedSubscript:@"BiasScaleGroupData"];
  [v6 setObject:@"GOC" forKeyedSubscript:kMLCANENetUnitType[0]];
  v13 = v6;
LABEL_9:

  return v13;
}

+ (id)createReshapeUnitWithSourceTensor:(id)tensor layer:(id)layer resultShape:(id)shape
{
  v38[1] = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  layerCopy = layer;
  shapeCopy = shape;
  if ([shapeCopy count] == 4)
  {
    v11 = [MEMORY[0x277CBEC10] mutableCopy];
    [v11 setObject:@"Reshape" forKeyedSubscript:kMLCANENetUnitType[0]];
    v12 = MEMORY[0x277CCABB0];
    v13 = [shapeCopy objectAtIndexedSubscript:0];
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "unsignedIntegerValue")}];
    [v11 setObject:v14 forKeyedSubscript:@"ReshapedBatch"];

    v15 = MEMORY[0x277CCABB0];
    v16 = [shapeCopy objectAtIndexedSubscript:1];
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "unsignedIntegerValue")}];
    [v11 setObject:v17 forKeyedSubscript:@"ReshapedChannel"];

    v18 = MEMORY[0x277CCABB0];
    v19 = [shapeCopy objectAtIndexedSubscript:2];
    v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "unsignedIntegerValue")}];
    [v11 setObject:v20 forKeyedSubscript:@"ReshapedHeight"];

    v21 = MEMORY[0x277CCABB0];
    v22 = [shapeCopy objectAtIndexedSubscript:3];
    v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "unsignedIntegerValue")}];
    [v11 setObject:v23 forKeyedSubscript:@"ReshapedWidth"];

    v24 = [_MLCANEPlistBuilder createUnitWithLayer:layerCopy unitParams:v11];
    v38[0] = tensorCopy;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v26 = ANE_ValidateReshapeUnit(v25, v24, 1);

    if (v26)
    {
      v27 = v24;
    }

    else
    {
      v28 = +[MLCLog framework];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v31 = NSStringFromSelector(a2);
        v32 = 138412802;
        v33 = v31;
        v34 = 2112;
        v35 = v24;
        v36 = 2112;
        v37 = layerCopy;
        _os_log_error_impl(&dword_238C1D000, v28, OS_LOG_TYPE_ERROR, "%@: the reshape unit=%@ of layer=%@ failed validation", &v32, 0x20u);
      }

      v27 = 0;
    }
  }

  else
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder createReshapeUnitWithSourceTensor:a2 layer:? resultShape:?];
    }

    v27 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (BOOL)createReshapeUnitsWithLayer:(id)layer reshapeUnits:(id *)units reshapeResultTensors:(id *)tensors
{
  layerCopy = layer;
  v6 = MEMORY[0x277CBEBF8];
  v34 = [MEMORY[0x277CBEBF8] mutableCopy];
  v33 = [v6 mutableCopy];
  sourceTensors = [layerCopy sourceTensors];
  v8 = [sourceTensors objectAtIndexedSubscript:0];

  descriptor = [v8 descriptor];
  dimensionCount = [descriptor dimensionCount];

  v11 = v8;
  v35 = layerCopy;
  resultTensors = [layerCopy resultTensors];
  v13 = [resultTensors objectAtIndexedSubscript:0];

  v30 = dimensionCount;
  v14 = dimensionCount - 1;
  v15 = 1;
  v16 = v11;
  while (v14 <= 2)
  {
    v17 = v15;
    if (v15)
    {
      v38 = 0;
      ANE_GetTensor4DShapeWithBatchFirst(v11, &v38);
      v18 = v38;
    }

    else
    {
      v37 = 0;
      ANE_GetTensor4DShapeWithBatchFirst(v13, &v37);
      v19 = v37;
      descriptor2 = [v11 descriptor];
      v21 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v19, [descriptor2 dataType]);

      v36 = 0;
      ANE_GetTensor4DShapeWithOnePrepended(v13, &v36);
      v18 = v36;

      v16 = v21;
    }

    v22 = [_MLCANEPlistBuilder createReshapeUnitWithSourceTensor:v16 layer:v35 resultShape:v18];
    if (!v22)
    {
      v28 = +[MLCLog framework];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        +[_MLCANEPlistBuilder createReshapeUnitsWithLayer:reshapeUnits:reshapeResultTensors:];
      }

      v26 = 0;
      goto LABEL_15;
    }

    v23 = v22;
    [v34 addObject:v22];
    descriptor3 = [v11 descriptor];
    v25 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v18, [descriptor3 dataType]);

    [v33 addObject:v25];
    v15 = 0;
    if ((v17 & 1) == 0)
    {
      *units = [v34 copy];
      *tensors = [v33 copy];
      v26 = 1;
      goto LABEL_15;
    }
  }

  v27 = +[MLCLog framework];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [_MLCANEPlistBuilder createReshapeUnitsWithLayer:v30 reshapeUnits:v27 reshapeResultTensors:?];
  }

  v26 = 0;
  v16 = v11;
LABEL_15:

  return v26;
}

+ (int)createBroadcastUnitWithSourceTensor:(id)tensor targetShape:(id)shape layer:(id)layer broadcastUnit:(id *)unit broadcastResultTensor:(id *)resultTensor
{
  v64 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  shapeCopy = shape;
  layerCopy = layer;
  if ([shapeCopy count] == 4)
  {
    v52 = 0;
    ANE_GetTensor4DShapeWithOnePrepended(tensorCopy, &v52);
    v15 = v52;
    v51 = [MEMORY[0x277CBEBF8] mutableCopy];
    if ([v15 count])
    {
      unitCopy = unit;
      resultTensorCopy = resultTensor;
      v49 = tensorCopy;
      v50 = layerCopy;
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = [v15 objectAtIndexedSubscript:v16];
        unsignedIntegerValue = [v18 unsignedIntegerValue];

        v20 = [shapeCopy objectAtIndexedSubscript:v16];
        unsignedIntegerValue2 = [v20 unsignedIntegerValue];

        if (unsignedIntegerValue != 1 && unsignedIntegerValue != unsignedIntegerValue2)
        {
          v37 = +[MLCLog framework];
          tensorCopy = v49;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v43 = NSStringFromSelector(a2);
            descriptor = [v49 descriptor];
            shape = [descriptor shape];
            *buf = 138412802;
            v59 = v43;
            v60 = 2112;
            v61 = shape;
            v62 = 2112;
            v63 = shapeCopy;
            _os_log_error_impl(&dword_238C1D000, v37, OS_LOG_TYPE_ERROR, "%@: the shape of source tensor is not broadcastable to the target shape. source shape=%@, target shape=%@", buf, 0x20u);
          }

          v32 = 0;
          v25 = 0;
          v17 = 0;
          *unitCopy = 0;
          *resultTensorCopy = 0;
          goto LABEL_21;
        }

        if (unsignedIntegerValue < unsignedIntegerValue2)
        {
          v22 = [MEMORY[0x277CBEC10] mutableCopy];
          v23 = ANE_GetANECIRDimension(v16);
          [v22 setObject:v23 forKeyedSubscript:@"Dimension"];
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
          [v22 setObject:v24 forKeyedSubscript:@"Size"];

          [v51 addObject:v22];
          v17 = 2;
        }

        ++v16;
      }

      while (v16 < [v15 count]);
      if (v17 != 2)
      {
        v32 = 0;
        v25 = 0;
        tensorCopy = v49;
        goto LABEL_21;
      }

      v56[0] = kMLCANENetUnitType[0];
      v56[1] = @"BroadcastInfo";
      v57[0] = @"Broadcast";
      v57[1] = v51;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
      v46 = layerCopy = v50;
      v25 = [_MLCANEPlistBuilder createUnitWithLayer:v50 unitParams:?];
      tensorCopy = v49;
      descriptor2 = [v49 descriptor];
      dataType = [descriptor2 dataType];

      v28 = ANE_GetANECIRDataTypeWithMLCDataType(dataType);
      if (v28)
      {
        label = [v49 label];
        v55 = label;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
        [v25 setObject:v30 forKeyedSubscript:@"Bottom"];

        v54 = v28;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
        [v25 setObject:v31 forKeyedSubscript:@"InputType"];

        [v25 setObject:v28 forKeyedSubscript:@"OutputType"];
        v32 = [MLCTensor tensorWithShape:shapeCopy dataType:dataType];
        v53 = v49;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
        LOBYTE(v30) = ANE_ValidateBroadcastUnit(v33, v32, v25, 1);

        if (v30)
        {
          v34 = v25;
          *unit = v25;
          v35 = v32;
          *resultTensorCopy = v32;

          v17 = 2;
LABEL_21:
          layerCopy = v50;
          goto LABEL_22;
        }

        v40 = +[MLCLog framework];
        v41 = resultTensorCopy;
        v42 = v46;
        layerCopy = v50;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          +[_MLCANEPlistBuilder createBroadcastUnitWithSourceTensor:targetShape:layer:broadcastUnit:broadcastResultTensor:];
        }
      }

      else
      {
        v40 = +[MLCLog framework];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [_MLCANEPlistBuilder createBroadcastUnitWithSourceTensor:a2 targetShape:? layer:? broadcastUnit:? broadcastResultTensor:?];
        }

        v32 = 0;
        v41 = resultTensorCopy;
        v42 = v46;
      }

      *unitCopy = 0;
      *v41 = 0;

      v17 = 2;
    }

    else
    {
      v32 = 0;
      v25 = 0;
      v17 = 1;
    }

LABEL_22:
  }

  else
  {
    v36 = +[MLCLog framework];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder createBroadcastUnitWithSourceTensor:a2 targetShape:? layer:? broadcastUnit:? broadcastResultTensor:?];
    }

    v17 = 0;
    *unit = 0;
    *resultTensor = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)createConstantTensorUnitWithTensor:(id)tensor
{
  v26 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  v5 = [MEMORY[0x277CBEC10] mutableCopy];
  label = [tensorCopy label];
  [v5 setObject:label forKeyedSubscript:@"ConstantName"];

  descriptor = [tensorCopy descriptor];
  dataType = [descriptor dataType];

  v9 = ANE_GetANECIRDataTypeWithMLCDataType(dataType);
  if (v9)
  {
    [v5 setObject:v9 forKeyedSubscript:@"ConstantType"];
    v19 = 0;
    ANE_GetTensor4DShapeWithOnePrepended(tensorCopy, &v19);
    v10 = v19;
    v11 = [v10 objectAtIndexedSubscript:3];
    [v5 setObject:v11 forKeyedSubscript:@"ConstantWidth"];

    v12 = [v10 objectAtIndexedSubscript:2];
    [v5 setObject:v12 forKeyedSubscript:@"ConstantHeight"];

    v13 = [v10 objectAtIndexedSubscript:1];

    [v5 setObject:v13 forKeyedSubscript:@"ConstantChannels"];
    [v5 setObject:&unk_284BA5A38 forKeyedSubscript:@"ConstantDepth"];
    [v5 setObject:&unk_284BA5A38 forKeyedSubscript:@"ConstantInterleave"];
    v14 = v5;
  }

  else
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412802;
      v21 = v18;
      v22 = 1024;
      v23 = dataType;
      v24 = 2112;
      v25 = tensorCopy;
      _os_log_error_impl(&dword_238C1D000, v15, OS_LOG_TYPE_ERROR, "%@: unsupported data type=%d of tensor=%@", buf, 0x1Cu);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)addInputs:(id)inputs ofUnit:(id)unit ofOperation:(id)operation toProcedure:(id)procedure toNetwork:(id)network
{
  v64 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  unitCopy = unit;
  operationCopy = operation;
  procedureCopy = procedure;
  networkCopy = network;
  if ([inputsCopy count])
  {
    aSelector = a2;
    v45 = procedureCopy;
    v14 = [procedureCopy objectForKeyedSubscript:@"InputList"];
    v15 = [v14 mutableCopy];

    if (!v15)
    {
      v15 = [MEMORY[0x277CBEBF8] mutableCopy];
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v46 = inputsCopy;
    v16 = inputsCopy;
    v17 = [v16 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v54;
      v47 = v16;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v53 + 1) + 8 * i);
          if (ANE_CanProgramANECConstantTensorUnit(v21))
          {
            [(_MLCANEPlistBuilder *)self addConstantTensor:v21 toNetwork:networkCopy];
          }

          else
          {
            [v21 setComputeFlags:{objc_msgSend(v21, "computeFlags") | 4}];
            v22 = [MEMORY[0x277CBEC10] mutableCopy];
            [v22 setObject:operationCopy forKeyedSubscript:@"OperationName"];
            v23 = [unitCopy objectForKeyedSubscript:@"Name"];
            [v22 setObject:v23 forKeyedSubscript:@"Name"];

            label = [v21 label];
            [v22 setObject:label forKeyedSubscript:@"InputName"];

            descriptor = [v21 descriptor];
            v26 = ANE_GetANECIRDataTypeWithMLCDataType([descriptor dataType]);
            if (!v26)
            {
              v39 = +[MLCLog framework];
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v42 = NSStringFromSelector(aSelector);
                dataType = [descriptor dataType];
                *buf = 138412802;
                v58 = v42;
                v59 = 1024;
                v60 = dataType;
                v61 = 2112;
                v62 = v21;
                _os_log_error_impl(&dword_238C1D000, v39, OS_LOG_TYPE_ERROR, "%@: unsupported data type=%d for tensor=%@", buf, 0x1Cu);
              }

              v38 = 0;
              procedureCopy = v45;
              inputsCopy = v46;
              v37 = v47;
              goto LABEL_20;
            }

            v27 = v26;
            [v22 setObject:v26 forKeyedSubscript:@"InputType"];
            v52 = 0;
            ANE_GetTensor4DShapeWithOnePrepended(v21, &v52);
            v28 = v19;
            v29 = v52;
            [v29 objectAtIndexedSubscript:3];
            v31 = v30 = v15;
            [v22 setObject:v31 forKeyedSubscript:@"InputWidth"];

            v32 = [v29 objectAtIndexedSubscript:2];
            [v22 setObject:v32 forKeyedSubscript:@"InputHeight"];

            [v22 setObject:&unk_284BA5A38 forKeyedSubscript:@"InputDepth"];
            v33 = [v29 objectAtIndexedSubscript:1];
            [v22 setObject:v33 forKeyedSubscript:@"InputChannels"];

            v15 = v30;
            interleave = [v21 interleave];
            v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:interleave];
            [v22 setObject:v35 forKeyedSubscript:@"InputInterleave"];

            v36 = [v29 objectAtIndexedSubscript:0];

            v19 = v28;
            [v22 setObject:v36 forKeyedSubscript:@"BatchSize"];

            [v30 addObject:v22];
            v16 = v47;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v53 objects:v63 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v37 = [v15 copy];
    procedureCopy = v45;
    [v45 setObject:v37 forKeyedSubscript:@"InputList"];
    v38 = 1;
    inputsCopy = v46;
LABEL_20:
  }

  else
  {
    v38 = 1;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v38;
}

- (BOOL)addOutputs:(id)outputs ofOperation:(id)operation toProcedure:(id)procedure toNetwork:(id)network
{
  v63 = *MEMORY[0x277D85DE8];
  outputsCopy = outputs;
  operationCopy = operation;
  procedureCopy = procedure;
  networkCopy = network;
  if ([outputsCopy count])
  {
    aSelector = a2;
    v12 = [procedureCopy objectForKeyedSubscript:@"OutputList"];
    v13 = [v12 mutableCopy];

    if (!v13)
    {
      v13 = [MEMORY[0x277CBEBF8] mutableCopy];
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v14 = outputsCopy;
    v49 = [v14 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v49)
    {
      v48 = *v53;
      *&v15 = 138412802;
      v41 = v15;
      v43 = procedureCopy;
      v44 = outputsCopy;
      obj = v14;
      v46 = v13;
      while (2)
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v53 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v52 + 1) + 8 * i);
          [v17 setComputeFlags:{objc_msgSend(v17, "computeFlags", v41) | 4}];
          v18 = [MEMORY[0x277CBEC10] mutableCopy];
          [v18 setObject:operationCopy forKeyedSubscript:@"OperationName"];
          parentLayers = [v17 parentLayers];
          v20 = [parentLayers objectAtIndexedSubscript:0];

          if (!ANE_IsAneCompiledLayer(v20))
          {
            v38 = +[MLCLog framework];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              [_MLCANEPlistBuilder addOutputs:ofOperation:toProcedure:toNetwork:];
            }

LABEL_22:
            v37 = 0;
            procedureCopy = v43;
            outputsCopy = v44;
            v36 = obj;
            v13 = v46;
            goto LABEL_23;
          }

          deviceOps = [v20 deviceOps];
          v22 = [deviceOps objectAtIndexedSubscript:0];
          units = [v22 units];

          v51 = units;
          v24 = [units objectAtIndexedSubscript:{objc_msgSend(units, "count") - 1}];
          v25 = [v24 objectForKeyedSubscript:@"Name"];

          label = [v17 label];
          [v18 setObject:v25 forKeyedSubscript:@"Name"];
          [v18 setObject:label forKeyedSubscript:@"OutputName"];
          descriptor = [v17 descriptor];
          v28 = ANE_GetANECIRDataTypeWithMLCDataType([descriptor dataType]);
          if (v28)
          {
            [v18 setObject:v28 forKeyedSubscript:@"OutputType"];
            interleave = [v17 interleave];
            v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:interleave];
            [v18 setObject:v30 forKeyedSubscript:@"OutputInterleave"];

            [v46 addObject:v18];
            v31 = [MEMORY[0x277CBEC10] mutableCopy];
            [v31 setObject:label forKeyedSubscript:@"OutputName"];
            [v31 setObject:v25 forKeyedSubscript:@"Bottom"];
            [v31 setObject:v28 forKeyedSubscript:@"OutputType"];
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:interleave];
            [v31 setObject:v32 forKeyedSubscript:@"OutputInterleave"];

            v33 = [v31 copy];
            [networkCopy setObject:v33 forKeyedSubscript:label];
          }

          else
          {
            v31 = +[MLCLog framework];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v34 = NSStringFromSelector(aSelector);
              dataType = [descriptor dataType];
              *buf = v41;
              v57 = v34;
              v58 = 1024;
              v59 = dataType;
              v60 = 2112;
              v61 = v17;
              _os_log_error_impl(&dword_238C1D000, v31, OS_LOG_TYPE_ERROR, "%@: unsupported data type=%d for tensor=%@", buf, 0x1Cu);
            }
          }

          if (!v28)
          {
            goto LABEL_22;
          }
        }

        v14 = obj;
        procedureCopy = v43;
        outputsCopy = v44;
        v13 = v46;
        v49 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v49)
        {
          continue;
        }

        break;
      }
    }

    v36 = [v13 copy];
    [procedureCopy setObject:v36 forKeyedSubscript:@"OutputList"];
    v37 = 1;
LABEL_23:
  }

  else
  {
    v37 = 1;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)unitBottomNamesWithSourceTensor:(id)tensor liveInputs:(id)inputs unitBottomNames:(id)names sourceTensorsToLiveUp:(id)up
{
  v46 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  inputsCopy = inputs;
  namesCopy = names;
  upCopy = up;
  parentLayers = [tensorCopy parentLayers];
  if (![parentLayers count])
  {

    goto LABEL_29;
  }

  v14 = [inputsCopy containsObject:tensorCopy];

  if (v14)
  {
LABEL_29:
    label = [tensorCopy label];
    [namesCopy addObject:label];

    [upCopy addObject:tensorCopy];
    goto LABEL_33;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v33 = tensorCopy;
  obj = [tensorCopy parentLayers];
  v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  selfCopy2 = self;
  if (v15)
  {
    v17 = v15;
    v18 = *v38;
    v35 = upCopy;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v37 + 1) + 8 * v19);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && !ANE_IsAneCompiledLayer(v20) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          sourceTensors = [v20 sourceTensors];
          v22 = [sourceTensors objectAtIndexedSubscript:0];

          [(_MLCANEPlistBuilder *)selfCopy2 unitBottomNamesWithSourceTensor:v22 liveInputs:inputsCopy unitBottomNames:namesCopy sourceTensorsToLiveUp:upCopy];
        }

        else
        {
          v23 = inputsCopy;
          v24 = v20;
          if (ANE_IsAneCompiledLayer(v24))
          {
            deviceOps = [v24 deviceOps];
            v26 = [deviceOps objectAtIndexedSubscript:0];
            units = [v26 units];

            if (units && [units count])
            {
              v28 = [units objectAtIndexedSubscript:[units count]- 1];
              v22 = [v28 objectForKeyedSubscript:@"Name"];
            }

            else
            {
              v29 = +[MLCLog framework];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v43 = "lastUnitNameOfLayer";
                v44 = 2112;
                v45 = v24;
                _os_log_error_impl(&dword_238C1D000, v29, OS_LOG_TYPE_ERROR, "%s: layer=%@ does not have any unit compiled", buf, 0x16u);
              }

              v22 = 0;
            }

            selfCopy2 = self;
          }

          else
          {
            units = +[MLCLog framework];
            if (os_log_type_enabled(units, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v43 = "lastUnitNameOfLayer";
              v44 = 2112;
              v45 = v24;
              _os_log_error_impl(&dword_238C1D000, units, OS_LOG_TYPE_ERROR, "%s: layer=%@ is not compiled with ANE device", buf, 0x16u);
            }

            v22 = 0;
          }

          if (!v22)
          {
            v31 = +[MLCLog framework];
            inputsCopy = v23;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [_MLCANEPlistBuilder unitBottomNamesWithSourceTensor:liveInputs:unitBottomNames:sourceTensorsToLiveUp:];
            }

            tensorCopy = v33;
            upCopy = v35;
            goto LABEL_33;
          }

          [namesCopy addObject:v22];
          inputsCopy = v23;
          upCopy = v35;
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  tensorCopy = v33;
LABEL_33:

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)addUnitsAndInputsAndOutpusOfLayer:(id)layer toNetwork:(id)network toProcedure:(id)procedure operationName:(id)name liveInputs:(id)inputs liveOutputs:(id)outputs
{
  v103 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  networkCopy = network;
  procedureCopy = procedure;
  nameCopy = name;
  inputsCopy = inputs;
  outputsCopy = outputs;
  if (ANE_IsAneCompiledLayer(layerCopy))
  {
    v19 = [networkCopy objectForKeyedSubscript:@"Units"];
    v20 = [v19 mutableCopy];

    if (!v20)
    {
      v20 = [MEMORY[0x277CBEBF8] mutableCopy];
    }

    aSelector = a2;
    deviceOps = [layerCopy deviceOps];
    v22 = [deviceOps objectAtIndexedSubscript:0];

    units = [v22 units];
    v75 = units;
    if (units && [units count])
    {
      v69 = v22;
      v70 = nameCopy;
      v73 = networkCopy;
      v74 = v20;
      v71 = procedureCopy;
      v24 = [MEMORY[0x277CBEC10] mutableCopy];
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      sourceTensors = [layerCopy sourceTensors];
      v26 = [sourceTensors countByEnumeratingWithState:&v88 objects:v102 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v89;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v89 != v28)
            {
              objc_enumerationMutation(sourceTensors);
            }

            v30 = *(*(&v88 + 1) + 8 * i);
            label = [v30 label];
            [v24 setObject:v30 forKeyedSubscript:label];
          }

          v27 = [sourceTensors countByEnumeratingWithState:&v88 objects:v102 count:16];
        }

        while (v27);
      }

      v32 = v75;
      v20 = v74;
      if ([v75 count])
      {
        v34 = 0;
        v35 = MEMORY[0x277CBEBF8];
        *&v33 = 138413058;
        v66 = v33;
        v68 = layerCopy;
        while (1)
        {
          v67 = v34;
          v36 = [v32 objectAtIndexedSubscript:{v34, v66}];
          v37 = [v36 objectForKeyedSubscript:@"Name"];
          [v20 addObject:v37];
          v38 = [v36 objectForKeyedSubscript:@"Bottom"];
          v39 = [v35 mutableCopy];
          v77 = [v35 mutableCopy];
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          obj = v38;
          v40 = [obj countByEnumeratingWithState:&v84 objects:v101 count:16];
          v41 = v37;
          if (v40)
          {
            v42 = v40;
            v43 = *v85;
            while (2)
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v85 != v43)
                {
                  objc_enumerationMutation(obj);
                }

                v45 = *(*(&v84 + 1) + 8 * j);
                v46 = [v24 objectForKeyedSubscript:v45];
                if (v46)
                {
                  v47 = [MEMORY[0x277CBEBF8] mutableCopy];
                  [(_MLCANEPlistBuilder *)self unitBottomNamesWithSourceTensor:v46 liveInputs:inputsCopy unitBottomNames:v47 sourceTensorsToLiveUp:v77];
                  if (![v47 count])
                  {
                    v54 = +[MLCLog framework];
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                    {
                      v64 = NSStringFromSelector(aSelector);
                      *buf = 138412802;
                      v94 = v64;
                      v95 = 2112;
                      v96 = v36;
                      v97 = 2112;
                      v98 = v68;
                      _os_log_error_impl(&dword_238C1D000, v54, OS_LOG_TYPE_ERROR, "%@: failed to get the unit bottom names for the unit=%@ of layer=%@", buf, 0x20u);
                    }

                    v53 = 0;
                    layerCopy = v68;
                    networkCopy = v73;
                    nameCopy = v70;
                    procedureCopy = v71;
                    goto LABEL_56;
                  }

                  [v39 addObjectsFromArray:v47];
                }

                else
                {
                  [v39 addObject:v45];
                }
              }

              v37 = v41;
              v42 = [obj countByEnumeratingWithState:&v84 objects:v101 count:16];
              if (v42)
              {
                continue;
              }

              break;
            }
          }

          v48 = [v39 copy];
          [v36 setObject:v48 forKeyedSubscript:@"Bottom"];

          networkCopy = v73;
          v49 = [(_MLCANEPlistBuilder *)self addInputs:v77 ofUnit:v36 ofOperation:v70 toProcedure:v71 toNetwork:v73];
          if (v49)
          {
            [v73 setObject:v36 forKeyedSubscript:v37];
            layerCopy = v68;
            v20 = v74;
          }

          else
          {
            v50 = +[MLCLog framework];
            layerCopy = v68;
            v20 = v74;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v52 = NSStringFromSelector(aSelector);
              *buf = v66;
              v94 = v52;
              v95 = 2112;
              v96 = v77;
              v97 = 2112;
              v98 = v36;
              v99 = 2112;
              v100 = v68;
              _os_log_error_impl(&dword_238C1D000, v50, OS_LOG_TYPE_ERROR, "%@: failed to add live inputs=%@ of the unit=%@ of layer=%@", buf, 0x2Au);

              v37 = v41;
            }

            networkCopy = v73;
          }

          if (!v49)
          {
            break;
          }

          v34 = v67 + 1;
          v32 = v75;
          v51 = [v75 count];
          v35 = MEMORY[0x277CBEBF8];
          if (v67 + 1 >= v51)
          {
            goto LABEL_43;
          }
        }

        v53 = 0;
        nameCopy = v70;
        procedureCopy = v71;
      }

      else
      {
LABEL_43:
        v55 = [v20 copy];
        [v73 setObject:v55 forKeyedSubscript:@"Units"];

        v36 = [MEMORY[0x277CBEBF8] mutableCopy];
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        resultTensors = [layerCopy resultTensors];
        v57 = [resultTensors countByEnumeratingWithState:&v80 objects:v92 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v81;
          do
          {
            for (k = 0; k != v58; ++k)
            {
              if (*v81 != v59)
              {
                objc_enumerationMutation(resultTensors);
              }

              v61 = *(*(&v80 + 1) + 8 * k);
              if ([outputsCopy containsObject:v61])
              {
                [v36 addObject:v61];
              }
            }

            v58 = [resultTensors countByEnumeratingWithState:&v80 objects:v92 count:16];
          }

          while (v58);
        }

        nameCopy = v70;
        procedureCopy = v71;
        networkCopy = v73;
        v53 = [(_MLCANEPlistBuilder *)self addOutputs:v36 ofOperation:v70 toProcedure:v71 toNetwork:v73];
        if (v53)
        {
          v20 = v74;
        }

        else
        {
          v41 = +[MLCLog framework];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v65 = NSStringFromSelector(aSelector);
            *buf = 138412802;
            v94 = v65;
            v95 = 2112;
            v96 = v36;
            v97 = 2112;
            v98 = layerCopy;
            _os_log_error_impl(&dword_238C1D000, v41, OS_LOG_TYPE_ERROR, "%@: failed to add live outputs=%@ of layer=%@", buf, 0x20u);
          }

LABEL_56:
          v20 = v74;
        }
      }

      v22 = v69;
    }

    else
    {
      v24 = +[MLCLog framework];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [_MLCANEPlistBuilder addUnitsAndInputsAndOutpusOfLayer:toNetwork:toProcedure:operationName:liveInputs:liveOutputs:];
      }

      v53 = 0;
    }
  }

  else
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder addOutputs:ofOperation:toProcedure:toNetwork:];
    }

    v53 = 0;
  }

  v62 = *MEMORY[0x277D85DE8];
  return v53;
}

- (BOOL)addConstantTensor:(id)tensor toNetwork:(id)network
{
  v39[1] = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  networkCopy = network;
  label = [tensorCopy label];
  v9 = [networkCopy objectForKeyedSubscript:label];

  if (!v9)
  {
    v11 = [objc_opt_class() createConstantTensorUnitWithTensor:tensorCopy];
    if (!v11)
    {
      deviceMemory = +[MLCLog framework];
      if (os_log_type_enabled(deviceMemory, OS_LOG_TYPE_ERROR))
      {
        [_MLCANEPlistBuilder addConstantTensor:toNetwork:];
      }

      v10 = 0;
      goto LABEL_25;
    }

    deviceMemory = [tensorCopy deviceMemory];
    deviceIndex = [tensorCopy deviceIndex];
    if ([deviceMemory count]<= deviceIndex)
    {
      goto LABEL_16;
    }

    v14 = [deviceMemory objectAtIndexedSubscript:deviceIndex];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [deviceMemory objectAtIndexedSubscript:deviceIndex];
      if ([v15 count] == 2)
      {
        v37 = [deviceMemory objectAtIndexedSubscript:deviceIndex];
        v16 = [v37 objectAtIndexedSubscript:0];
        objc_opt_class();
        v38 = v16;
        if (objc_opt_isKindOfClass())
        {
          v35 = [deviceMemory objectAtIndexedSubscript:deviceIndex];
          v17 = [v35 objectAtIndexedSubscript:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v18 = [deviceMemory objectAtIndexedSubscript:deviceIndex];
            weightOps2 = [v18 objectAtIndexedSubscript:0];

            v20 = [deviceMemory objectAtIndexedSubscript:deviceIndex];
            data = [v20 objectAtIndexedSubscript:1];

            weightOps = [(_MLCANEPlistBuilder *)self weightOps];
            v23 = [weightOps addWeightData:data hash:weightOps2];

            weightTensorsWithDeviceMemory = [(_MLCANEPlistBuilder *)self weightTensorsWithDeviceMemory];
            [weightTensorsWithDeviceMemory addObject:tensorCopy];
LABEL_17:

            v10 = v23 != -1;
            if (v23 == -1)
            {
              v27 = +[MLCLog framework];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                [_MLCANEPlistBuilder addConstantTensor:toNetwork:];
              }
            }

            else
            {
              [v11 setObject:&unk_284BA5A50 forKeyedSubscript:@"ConstantByteOffset"];
              v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
              [v11 setObject:v25 forKeyedSubscript:@"ConstantIndex"];

              v26 = [networkCopy objectForKeyedSubscript:@"Constants"];
              v27 = [v26 mutableCopy];

              label2 = [tensorCopy label];
              v29 = label2;
              if (v27)
              {
                [v27 addObject:label2];
              }

              else
              {
                v39[0] = label2;
                v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
                v27 = [v30 mutableCopy];
              }

              label3 = [tensorCopy label];
              [networkCopy setObject:v11 forKeyedSubscript:label3];

              v32 = [v27 copy];
              [networkCopy setObject:v32 forKeyedSubscript:@"Constants"];
            }

LABEL_25:
            goto LABEL_26;
          }

LABEL_16:
          weightOps2 = [(_MLCANEPlistBuilder *)self weightOps];
          data = [tensorCopy data];
          weightTensorsWithDeviceMemory = [tensorCopy descriptor];
          v23 = [weightOps2 addWeightData:data weightDataType:{objc_msgSend(weightTensorsWithDeviceMemory, "dataType")}];
          goto LABEL_17;
        }
      }
    }

    goto LABEL_16;
  }

  v10 = 1;
LABEL_26:

  v33 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)queryAndAddConstantTensors:(id)tensors ofLayer:(id)layer toNetwork:(id)network
{
  aSelector = a2;
  v73 = *MEMORY[0x277D85DE8];
  tensorsCopy = tensors;
  layerCopy = layer;
  networkCopy = network;
  if (ANE_IsAneCompiledLayer(layerCopy))
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = tensorsCopy;
    v48 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (!v48)
    {
      v35 = 1;
      goto LABEL_43;
    }

    v49 = *v57;
    v11 = @"Bottom";
    v45 = tensorsCopy;
    v46 = networkCopy;
    v47 = layerCopy;
    selfCopy = self;
LABEL_4:
    v12 = 0;
    while (1)
    {
      if (*v57 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v52 = v12;
      v13 = *(*(&v56 + 1) + 8 * v12);
      weightOps = [(_MLCANEPlistBuilder *)self weightOps];
      v15 = [weightOps queryConstantTensor:v13];

      if (!v15)
      {
        v34 = +[MLCLog framework];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [_MLCANEPlistBuilder queryAndAddConstantTensors:ofLayer:toNetwork:];
        }

        goto LABEL_41;
      }

      if (v15 != v13)
      {
        deviceOps = [layerCopy deviceOps];
        v17 = [deviceOps objectAtIndexedSubscript:0];
        units = [v17 units];

        v43 = v13;
        label = [v13 label];
        v51 = v15;
        label2 = [v15 label];
        v21 = units;
        v22 = label;
        v23 = label2;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v53 = v21;
        v55 = [v21 countByEnumeratingWithState:&v60 objects:buf count:16];
        if (!v55)
        {

          v34 = v21;
LABEL_38:
          v36 = +[MLCLog framework];
          v15 = v51;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v39 = NSStringFromSelector(aSelector);
            label3 = [v43 label];
            label4 = [v51 label];
            *buf = 138413058;
            v66 = v39;
            v67 = 2112;
            v68 = label3;
            v69 = 2112;
            v70 = label4;
            v71 = 2112;
            v72 = v53;
            _os_log_error_impl(&dword_238C1D000, v36, OS_LOG_TYPE_ERROR, "%@: failed to replace unit bottom name %@ with %@ in units=%@", buf, 0x2Au);

            v34 = v53;
          }

          networkCopy = v46;
          layerCopy = v47;
LABEL_41:

          goto LABEL_42;
        }

        v24 = 0;
        v54 = *v61;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v61 != v54)
            {
              objc_enumerationMutation(v53);
            }

            v26 = *(*(&v60 + 1) + 8 * i);
            v27 = [v26 objectForKeyedSubscript:v11];
            v28 = [v27 mutableCopy];

            if ([v28 count])
            {
              v29 = v11;
              v30 = 0;
              v31 = 0;
              do
              {
                v32 = [v28 objectAtIndexedSubscript:v30];
                if ([v32 isEqualToString:v22])
                {
                  [v28 replaceObjectAtIndex:v30 withObject:v23];
                  v31 = 1;
                  v24 = 1;
                }

                ++v30;
              }

              while (v30 < [v28 count]);
              if (v31)
              {
                v33 = [v28 copy];
                v11 = v29;
                [v26 setObject:v33 forKeyedSubscript:v29];
              }

              else
              {
                v11 = v29;
              }
            }
          }

          v55 = [v53 countByEnumeratingWithState:&v60 objects:buf count:16];
        }

        while (v55);

        v34 = v53;
        tensorsCopy = v45;
        if ((v24 & 1) == 0)
        {
          goto LABEL_38;
        }

        networkCopy = v46;
        layerCopy = v47;
        v15 = v51;
        self = selfCopy;
      }

      if (![(_MLCANEPlistBuilder *)self addConstantTensor:v15 toNetwork:networkCopy])
      {
        v34 = +[MLCLog framework];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [_MLCANEPlistBuilder addConstantTensor:toNetwork:];
        }

        goto LABEL_41;
      }

      v12 = v52 + 1;
      if (v52 + 1 == v48)
      {
        v35 = 1;
        v48 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
        if (v48)
        {
          goto LABEL_4;
        }

        goto LABEL_43;
      }
    }
  }

  obj = +[MLCLog framework];
  if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
  {
    [_MLCANEPlistBuilder addOutputs:ofOperation:toProcedure:toNetwork:];
  }

LABEL_42:
  v35 = 0;
LABEL_43:

  v37 = *MEMORY[0x277D85DE8];
  return v35;
}

- (BOOL)addWeightsOfConvolutionLayer:(id)layer
{
  layerCopy = layer;
  v6 = objc_autoreleasePoolPush();
  deviceOps = [layerCopy deviceOps];
  v8 = [deviceOps objectAtIndexedSubscript:0];
  units = [v8 units];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    weights = [layerCopy weights];
    biases = [layerCopy biases];
    v12 = ANE_FindUnitWithType(@"Conv", units);
    v13 = v12;
    if (!v12)
    {
      v14 = +[MLCLog framework];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [_MLCANEPlistBuilder addWeightsOfConvolutionLayer:];
      }

      v26 = 0;
      goto LABEL_48;
    }

    v49 = a2;
    v52 = v6;
    v53 = biases;
    v14 = [v12 objectForKeyedSubscript:@"Params"];
    descriptor = [weights descriptor];
    dataType = [descriptor dataType];

    deviceMemory = [weights deviceMemory];
    v18 = [deviceMemory count];
    deviceIndex = [weights deviceIndex];

    if (v18 <= deviceIndex)
    {
      data = [weights data];
    }

    else
    {
      deviceMemory2 = [weights deviceMemory];
      v21 = [deviceMemory2 objectAtIndexedSubscript:{-[NSObject deviceIndex](weights, "deviceIndex")}];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        data = +[MLCLog framework];
        biases = v53;
        if (os_log_type_enabled(data, OS_LOG_TYPE_ERROR))
        {
          [_MLCANEPlistBuilder addWeightsOfConvolutionLayer:];
        }

        v26 = 0;
        v6 = v52;
        goto LABEL_47;
      }

      deviceMemory3 = [weights deviceMemory];
      data = [deviceMemory3 objectAtIndexedSubscript:{-[NSObject deviceIndex](weights, "deviceIndex")}];

      weightTensorsWithDeviceMemory = [(_MLCANEPlistBuilder *)self weightTensorsWithDeviceMemory];
      [weightTensorsWithDeviceMemory addObject:weights];
    }

    v55 = 0;
    v56 = 0;
    v54 = 0;
    v27 = ANE_CompressSparseKernel(data, dataType, &v55, &v54, &v56, 0.000060976);
    v51 = v55;
    v50 = v54;
    if (!v56)
    {
      v34 = +[MLCLog framework];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [(_MLCANEPlistBuilder *)weights addWeightsOfConvolutionLayer:v34, 0.000060976];
      }

      goto LABEL_43;
    }

    if (v27)
    {
      [v14 setObject:@"Sparse" forKeyedSubscript:@"KernelMode"];
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56];
      [v14 setObject:v28 forKeyedSubscript:@"KernelCoeffCount"];

      weightOps = [(_MLCANEPlistBuilder *)self weightOps];
      v30 = [weightOps addWeightData:v51 weightDataType:6];

      if (v30 == -1)
      {
        v34 = +[MLCLog framework];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [_MLCANEPlistBuilder addWeightsOfConvolutionLayer:v49];
        }

        goto LABEL_43;
      }

      weightOps2 = [(_MLCANEPlistBuilder *)self weightOps];
      v32 = [weightOps2 addWeightData:v50 weightDataType:dataType];

      if (v32 == -1)
      {
        v34 = +[MLCLog framework];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [_MLCANEPlistBuilder addWeightsOfConvolutionLayer:v49];
        }

        goto LABEL_43;
      }

      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
      [v14 setObject:v33 forKeyedSubscript:@"KernelMaskIndex"];

      [v14 setObject:&unk_284BA5A50 forKeyedSubscript:@"KernelMaskByteOffset"];
    }

    else
    {
      [v14 setObject:@"Dense" forKeyedSubscript:@"KernelMode"];
      weightOps3 = [(_MLCANEPlistBuilder *)self weightOps];
      v32 = [weightOps3 addWeightData:data weightDataType:dataType];

      if (v32 == -1)
      {
        v34 = +[MLCLog framework];
        biases = v53;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [_MLCANEPlistBuilder addWeightsOfConvolutionLayer:];
        }

        v26 = 0;
        v6 = v52;
        goto LABEL_45;
      }
    }

    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
    [v14 setObject:v36 forKeyedSubscript:@"KernelIndex"];

    [v14 setObject:&unk_284BA5A50 forKeyedSubscript:@"KernelOffset"];
    biases = v53;
    if (!v53)
    {
      v26 = 1;
      v6 = v52;
LABEL_46:

LABEL_47:
LABEL_48:

      goto LABEL_49;
    }

    v37 = ANE_FindUnitWithType(@"GOC", units);
    if (!v37)
    {
      v34 = +[MLCLog framework];
      v6 = v52;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [_MLCANEPlistBuilder addWeightsOfConvolutionLayer:];
      }

      v26 = 0;
      goto LABEL_45;
    }

    v34 = v37;
    weightOps4 = [(_MLCANEPlistBuilder *)self weightOps];
    data2 = [v53 data];
    descriptor2 = [v53 descriptor];
    v40 = [weightOps4 addWeightData:data2 weightDataType:{objc_msgSend(descriptor2, "dataType")}];

    v41 = v40;
    if (v40 != -1)
    {
      v42 = [v34 objectForKeyedSubscript:@"Params"];
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v41];
      v44 = [v42 objectForKeyedSubscript:@"BiasScaleGroupData"];
      [v44 setObject:v43 forKeyedSubscript:@"BiasIndex"];

      v45 = [v42 objectForKeyedSubscript:@"BiasScaleGroupData"];
      [v45 setObject:&unk_284BA5A50 forKeyedSubscript:@"BiasOffset"];

      v26 = 1;
LABEL_44:
      v6 = v52;
      biases = v53;
LABEL_45:

      goto LABEL_46;
    }

    v46 = +[MLCLog framework];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder addWeightsOfConvolutionLayer:];
    }

LABEL_43:
    v26 = 0;
    goto LABEL_44;
  }

  weights = +[MLCLog framework];
  if (os_log_type_enabled(weights, OS_LOG_TYPE_ERROR))
  {
    [_MLCANEPlistBuilder addWeightsOfConvolutionLayer:];
  }

  v26 = 0;
LABEL_49:

  objc_autoreleasePoolPop(v6);
  return v26;
}

- (BOOL)addWeightsOfFullyConnectedLayer:(id)layer toNetwork:(id)network
{
  layerCopy = layer;
  networkCopy = network;
  if (ANE_IsAneCompiledLayer(layerCopy))
  {
    deviceOps = [layerCopy deviceOps];
    v9 = [deviceOps objectAtIndexedSubscript:0];

    constantTensors = [v9 constantTensors];
    v11 = [(_MLCANEPlistBuilder *)self queryAndAddConstantTensors:constantTensors ofLayer:layerCopy toNetwork:networkCopy];
    if (v11)
    {
      [constantTensors removeAllObjects];
    }

    else
    {
      v12 = +[MLCLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_MLCANEPlistBuilder addWeightsOfFullyConnectedLayer:toNetwork:];
      }
    }
  }

  else
  {
    v9 = +[MLCLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder addOutputs:ofOperation:toProcedure:toNetwork:];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)addScalesAndBiasesOfGocUnit:(id)unit tensorWithBiases:(id)biases tensorWithScales:(id)scales
{
  unitCopy = unit;
  biasesCopy = biases;
  scalesCopy = scales;
  v11 = objc_autoreleasePoolPush();
  deviceMemory = [biasesCopy deviceMemory];
  v13 = [deviceMemory count];
  deviceIndex = [biasesCopy deviceIndex];

  if (v13 <= deviceIndex)
  {
    data = [biasesCopy data];
  }

  else
  {
    deviceMemory2 = [biasesCopy deviceMemory];
    data = [deviceMemory2 objectAtIndexedSubscript:{objc_msgSend(biasesCopy, "deviceIndex")}];

    weightTensorsWithDeviceMemory = [(_MLCANEPlistBuilder *)self weightTensorsWithDeviceMemory];
    [weightTensorsWithDeviceMemory addObject:biasesCopy];
  }

  weightOps = [(_MLCANEPlistBuilder *)self weightOps];
  descriptor = [biasesCopy descriptor];
  v20 = [weightOps addWeightData:data weightDataType:{objc_msgSend(descriptor, "dataType")}];

  if (v20 == -1)
  {
    data2 = +[MLCLog framework];
    if (os_log_type_enabled(data2, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder addScalesAndBiasesOfGocUnit:tensorWithBiases:tensorWithScales:];
    }

    goto LABEL_15;
  }

  deviceMemory3 = [scalesCopy deviceMemory];
  v22 = [deviceMemory3 count];
  deviceIndex2 = [scalesCopy deviceIndex];

  if (v22 <= deviceIndex2)
  {
    data2 = [scalesCopy data];
  }

  else
  {
    deviceMemory4 = [scalesCopy deviceMemory];
    data2 = [deviceMemory4 objectAtIndexedSubscript:{objc_msgSend(scalesCopy, "deviceIndex")}];

    weightTensorsWithDeviceMemory2 = [(_MLCANEPlistBuilder *)self weightTensorsWithDeviceMemory];
    [weightTensorsWithDeviceMemory2 addObject:scalesCopy];
  }

  weightOps2 = [(_MLCANEPlistBuilder *)self weightOps];
  descriptor2 = [scalesCopy descriptor];
  v29 = [weightOps2 addWeightData:data2 weightDataType:{objc_msgSend(descriptor2, "dataType")}];

  if (v29 == -1)
  {
    v38 = +[MLCLog framework];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder addScalesAndBiasesOfGocUnit:tensorWithBiases:tensorWithScales:];
    }

LABEL_15:
    v37 = 0;
    goto LABEL_16;
  }

  v30 = [unitCopy objectForKeyedSubscript:@"Params"];
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
  [v30 objectForKeyedSubscript:@"BiasScaleGroupData"];
  v32 = v40 = v11;
  [v32 setObject:v31 forKeyedSubscript:@"BiasIndex"];

  v33 = [v30 objectForKeyedSubscript:@"BiasScaleGroupData"];
  [v33 setObject:&unk_284BA5A50 forKeyedSubscript:@"BiasOffset"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
  v35 = [v30 objectForKeyedSubscript:@"BiasScaleGroupData"];
  [v35 setObject:v34 forKeyedSubscript:@"ScaleIndex"];

  v36 = [v30 objectForKeyedSubscript:@"BiasScaleGroupData"];
  [v36 setObject:&unk_284BA5A50 forKeyedSubscript:@"ScaleOffset"];

  v11 = v40;
  v37 = 1;
LABEL_16:

  objc_autoreleasePoolPop(v11);
  return v37;
}

- (BOOL)addWeightsOfNormalizationLayer:(id)layer
{
  layerCopy = layer;
  deviceOps = [layerCopy deviceOps];
  v6 = [deviceOps objectAtIndexedSubscript:0];
  units = [v6 units];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = layerCopy;
      v15 = ANE_FindUnitWithType(@"GOC", units);
      if (v15)
      {
        v16 = v15;
        mean = [v14 mean];
        if (mean)
        {
          v18 = mean;
          variance = [v14 variance];

          if (variance)
          {
            mean2 = [v14 mean];
            variance2 = [v14 variance];
LABEL_13:
            v23 = variance2;
            v13 = [(_MLCANEPlistBuilder *)self addScalesAndBiasesOfGocUnit:v16 tensorWithBiases:mean2 tensorWithScales:variance2];

            goto LABEL_22;
          }
        }

LABEL_12:
        mean2 = [v14 beta];
        variance2 = [v14 gamma];
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = +[MLCLog framework];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [_MLCANEPlistBuilder addWeightsOfConvolutionLayer:];
        }

        goto LABEL_21;
      }

      v14 = layerCopy;
      v22 = ANE_FindUnitWithType(@"GOC", units);
      if (v22)
      {
        v16 = v22;
        goto LABEL_12;
      }
    }

    v13 = 1;
    goto LABEL_22;
  }

  v8 = layerCopy;
  v9 = ANE_FindUnitWithType(@"GOC", units);
  if (!v9)
  {
    v24 = +[MLCLog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder addWeightsOfNormalizationLayer:];
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v10 = v9;
  mean3 = [v8 mean];
  variance3 = [v8 variance];
  v13 = [(_MLCANEPlistBuilder *)self addScalesAndBiasesOfGocUnit:v10 tensorWithBiases:mean3 tensorWithScales:variance3];

LABEL_22:
  return v13;
}

- (BOOL)addWeightsOfLayerNormalizationLayer:(id)layer toNetwork:(id)network
{
  layerCopy = layer;
  networkCopy = network;
  if (ANE_IsAneCompiledLayer(layerCopy))
  {
    deviceOps = [layerCopy deviceOps];
    v9 = [deviceOps objectAtIndexedSubscript:0];

    constantTensors = [v9 constantTensors];
    v11 = [(_MLCANEPlistBuilder *)self queryAndAddConstantTensors:constantTensors ofLayer:layerCopy toNetwork:networkCopy];
    if (v11)
    {
      [constantTensors removeAllObjects];
    }

    else
    {
      v12 = +[MLCLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_MLCANEPlistBuilder addWeightsOfFullyConnectedLayer:toNetwork:];
      }
    }
  }

  else
  {
    v9 = +[MLCLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder addOutputs:ofOperation:toProcedure:toNetwork:];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)addWeightsOfLayer:(id)layer toNetwork:(id)network
{
  layerCopy = layer;
  networkCopy = network;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(_MLCANEPlistBuilder *)self addWeightsOfConvolutionLayer:layerCopy];
LABEL_10:
    v14 = v8;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = [(_MLCANEPlistBuilder *)self addWeightsOfNormalizationLayer:layerCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = 1;
        goto LABEL_13;
      }

      v8 = [(_MLCANEPlistBuilder *)self addWeightsOfLayerNormalizationLayer:layerCopy toNetwork:networkCopy];
    }

    goto LABEL_10;
  }

  deviceOps = [layerCopy deviceOps];
  v10 = [deviceOps objectAtIndexedSubscript:0];
  units = [v10 units];

  v12 = ANE_FindUnitWithType(@"Conv", units);

  if (v12)
  {
    v13 = [(_MLCANEPlistBuilder *)self addWeightsOfConvolutionLayer:layerCopy];
  }

  else
  {
    v13 = [(_MLCANEPlistBuilder *)self addWeightsOfFullyConnectedLayer:layerCopy toNetwork:networkCopy];
  }

  v14 = v13;

LABEL_13:
  return v14;
}

- (BOOL)buildProcedureWithLayer:(id)layer
{
  v45[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  if (!ANE_IsAneCompiledLayer(layerCopy))
  {
    v7 = +[MLCLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder buildProcedureWithLayer:];
    }

    goto LABEL_7;
  }

  fusedLayers = [layerCopy fusedLayers];
  v6 = [fusedLayers count];

  if (v6)
  {
    v7 = +[MLCLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder buildProcedureWithLayer:];
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v11 = MEMORY[0x277CBEC10];
  v7 = [MEMORY[0x277CBEC10] mutableCopy];
  v12 = MEMORY[0x277CCACA8];
  label = [layerCopy label];
  v14 = [v12 stringWithFormat:@"%@%@", @"procedure_", label];

  v15 = [v11 mutableCopy];
  v16 = MEMORY[0x277CCACA8];
  label2 = [layerCopy label];
  v18 = v14;
  v19 = [v16 stringWithFormat:@"%@%@", @"network_", label2];

  [v7 setObject:v14 forKeyedSubscript:@"Name"];
  v44[0] = @"OperationName";
  v44[1] = @"NetworkName";
  v45[0] = @"op0";
  v45[1] = v19;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v43 = v42;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  [v7 setObject:v20 forKeyedSubscript:@"OperationList"];

  if ([(_MLCANEPlistBuilder *)self addWeightsOfLayer:layerCopy toNetwork:v15])
  {
    v41 = v14;
    v21 = MEMORY[0x277CBEB98];
    sourceTensors = [layerCopy sourceTensors];
    v23 = [v21 setWithArray:sourceTensors];

    v24 = MEMORY[0x277CBEB98];
    resultTensors = [layerCopy resultTensors];
    v26 = [v24 setWithArray:resultTensors];

    v40 = v26;
    v8 = [(_MLCANEPlistBuilder *)self addUnitsAndInputsAndOutpusOfLayer:layerCopy toNetwork:v15 toProcedure:v7 operationName:@"op0" liveInputs:v23 liveOutputs:v26];
    if (v8)
    {
      weightOps = [(_MLCANEPlistBuilder *)self weightOps];
      weightFiles = [weightOps weightFiles];
      v29 = [weightFiles count];

      if (v29)
      {
        weightOps2 = [(_MLCANEPlistBuilder *)self weightOps];
        weightFiles2 = [weightOps2 weightFiles];
        v32 = [weightFiles2 copy];
        [v15 setObject:v32 forKeyedSubscript:@"Weights"];
      }

      plist = [(_MLCANEPlistBuilder *)self plist];
      v34 = [plist objectForKeyedSubscript:@"Networks"];

      [v34 addObject:v19];
      plist2 = [(_MLCANEPlistBuilder *)self plist];
      [plist2 setObject:v15 forKeyedSubscript:v19];

      plist3 = [(_MLCANEPlistBuilder *)self plist];
      v37 = [plist3 objectForKeyedSubscript:@"ProcedureList"];

      [v37 addObject:v7];
      deviceOps = [layerCopy deviceOps];
      v39 = [deviceOps objectAtIndexedSubscript:0];

      v18 = v41;
      [v39 setProcedureName:v41];
      [v39 setProcedureIndex:{objc_msgSend(v37, "count") - 1}];
    }

    else
    {
      v34 = +[MLCLog framework];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [_MLCANEPlistBuilder buildProcedureWithLayer:];
      }

      v18 = v41;
    }
  }

  else
  {
    v23 = +[MLCLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder buildProcedureWithLayer:];
    }

    v8 = 0;
  }

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)buildProcedureWithRootLayer:(id)layer aneSubgraphLayerList:(id)list liveInputs:(id)inputs liveOutputs:(id)outputs
{
  v89[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  listCopy = list;
  inputsCopy = inputs;
  outputsCopy = outputs;
  if (!ANE_IsAneCompiledLayer(layerCopy))
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder buildProcedureWithRootLayer:aneSubgraphLayerList:liveInputs:liveOutputs:];
    }

    v27 = 0;
    goto LABEL_33;
  }

  v11 = MEMORY[0x277CBEC10];
  v12 = [MEMORY[0x277CBEC10] mutableCopy];
  v13 = MEMORY[0x277CCACA8];
  label = [layerCopy label];
  v15 = [v13 stringWithFormat:@"%@%@", @"procedure_", label];

  v67 = [v11 mutableCopy];
  v16 = MEMORY[0x277CCACA8];
  v63 = layerCopy;
  label2 = [layerCopy label];
  v18 = v12;
  v19 = [v16 stringWithFormat:@"%@%@", @"network_", label2];

  v61 = v15;
  v20 = v15;
  v21 = v19;
  [v12 setObject:v20 forKeyedSubscript:@"Name"];
  v88[0] = @"OperationName";
  v88[1] = @"NetworkName";
  v89[0] = @"op0";
  v89[1] = v19;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
  v87 = v62;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
  [v12 setObject:v22 forKeyedSubscript:@"OperationList"];

  v23 = [listCopy count];
  selfCopy2 = self;
  v25 = inputsCopy;
  if (!v23)
  {
LABEL_26:
    weightOps = [(_MLCANEPlistBuilder *)selfCopy2 weightOps];
    weightFiles = [weightOps weightFiles];
    v47 = selfCopy2;
    v48 = [weightFiles count];

    v44 = v67;
    if (v48)
    {
      weightOps2 = [(_MLCANEPlistBuilder *)v47 weightOps];
      weightFiles2 = [weightOps2 weightFiles];
      v51 = [weightFiles2 copy];
      [v67 setObject:v51 forKeyedSubscript:@"Weights"];
    }

    plist = [(_MLCANEPlistBuilder *)v47 plist];
    v29 = [plist objectForKeyedSubscript:@"Networks"];

    [v29 addObject:v21];
    plist2 = [(_MLCANEPlistBuilder *)v47 plist];
    [plist2 setObject:v67 forKeyedSubscript:v21];

    plist3 = [(_MLCANEPlistBuilder *)v47 plist];
    v55 = [plist3 objectForKeyedSubscript:@"ProcedureList"];

    [v55 addObject:v18];
    deviceOps = [v63 deviceOps];
    v57 = [deviceOps objectAtIndexedSubscript:0];

    v58 = v61;
    [v57 setProcedureName:v61];
    [v57 setProcedureIndex:{-[NSObject count](v55, "count") - 1}];

    v27 = 1;
    goto LABEL_29;
  }

  v26 = v23;
  v27 = 0;
  v28 = 0;
  v65 = v12;
  v66 = listCopy;
  v64 = v21;
  v70 = v23;
  while (1)
  {
    v29 = [listCopy objectAtIndexedSubscript:v28];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_25;
    }

    v72 = v28;
    if (ANE_IsPaddingLayerAndNotCompiledForANE(v29))
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      obj = [v29 resultTensors];
      v75 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
      if (v75)
      {
        v74 = *v82;
        do
        {
          v30 = 0;
          do
          {
            if (*v82 != v74)
            {
              objc_enumerationMutation(obj);
            }

            v76 = v30;
            v31 = *(*(&v81 + 1) + 8 * v30);
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            childLayers = [v31 childLayers];
            v33 = [childLayers countByEnumeratingWithState:&v77 objects:v85 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v78;
              do
              {
                for (i = 0; i != v34; ++i)
                {
                  if (*v78 != v35)
                  {
                    objc_enumerationMutation(childLayers);
                  }

                  deviceOps2 = [*(*(&v77 + 1) + 8 * i) deviceOps];
                  v38 = [deviceOps2 objectAtIndexedSubscript:0];

                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  v40 = @"Pooling";
                  if (isKindOfClass)
                  {
                    v40 = @"Conv";
                  }

                  v41 = v40;
                  units = [v38 units];
                  v43 = ANE_FindUnitWithType(v41, units);

                  ANE_ApplyPaddingSizes(v29, v43);
                }

                v34 = [childLayers countByEnumeratingWithState:&v77 objects:v85 count:16];
              }

              while (v34);
            }

            v30 = v76 + 1;
          }

          while (v76 + 1 != v75);
          v75 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
        }

        while (v75);
      }

      v18 = v65;
      listCopy = v66;
      v26 = v70;
      v25 = inputsCopy;
      v21 = v64;
      selfCopy2 = self;
      v28 = v72;
      goto LABEL_25;
    }

    v44 = v67;
    if (![(_MLCANEPlistBuilder *)selfCopy2 addWeightsOfLayer:v29 toNetwork:v67])
    {
      break;
    }

    v26 = v70;
    if (![(_MLCANEPlistBuilder *)selfCopy2 addUnitsAndInputsAndOutpusOfLayer:v29 toNetwork:v67 toProcedure:v18 operationName:@"op0" liveInputs:v25 liveOutputs:outputsCopy])
    {
      v55 = +[MLCLog framework];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [_MLCANEPlistBuilder buildProcedureWithLayer:];
      }

      v58 = v61;
      v44 = v67;
      goto LABEL_29;
    }

LABEL_25:

    v27 = ++v28 >= v26;
    if (v28 == v26)
    {
      goto LABEL_26;
    }
  }

  v55 = +[MLCLog framework];
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    [_MLCANEPlistBuilder buildProcedureWithLayer:];
  }

  v58 = v61;
LABEL_29:

  layerCopy = v63;
LABEL_33:

  v59 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)releaseWeights
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  weightOps = [(_MLCANEPlistBuilder *)self weightOps];
  [weightOps reset];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  weightTensorsWithDeviceMemory = [(_MLCANEPlistBuilder *)self weightTensorsWithDeviceMemory];
  v6 = [weightTensorsWithDeviceMemory countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(weightTensorsWithDeviceMemory);
        }

        deviceMemory = [*(*(&v13 + 1) + 8 * v9) deviceMemory];
        [deviceMemory removeAllObjects];

        ++v9;
      }

      while (v7 != v9);
      v7 = [weightTensorsWithDeviceMemory countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  weightTensorsWithDeviceMemory2 = [(_MLCANEPlistBuilder *)self weightTensorsWithDeviceMemory];
  [weightTensorsWithDeviceMemory2 removeAllObjects];

  objc_autoreleasePoolPop(v3);
  v12 = *MEMORY[0x277D85DE8];
}

+ (void)createUnitWithLayer:unitParams:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)buildBiasParamsWithBiases:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)buildBiasParamsWithBiases:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v9 = *MEMORY[0x277D85DE8];
  v8 = NSStringFromSelector(v1);
  [v0 dataType];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)createReshapeUnitWithSourceTensor:(const char *)a1 layer:resultShape:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)createReshapeUnitsWithLayer:(uint64_t)a1 reshapeUnits:(NSObject *)a2 reshapeResultTensors:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "+[_MLCANEPlistBuilder createReshapeUnitsWithLayer:reshapeUnits:reshapeResultTensors:]";
  v5 = 2048;
  v6 = a1;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%s: unsupported source shape count=%lu", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)createReshapeUnitsWithLayer:reshapeUnits:reshapeResultTensors:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_238C1D000, v0, OS_LOG_TYPE_ERROR, "%s: failed to create the reshape unit for layer=%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)createBroadcastUnitWithSourceTensor:(const char *)a1 targetShape:layer:broadcastUnit:broadcastResultTensor:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)createBroadcastUnitWithSourceTensor:targetShape:layer:broadcastUnit:broadcastResultTensor:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_1();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_238C1D000, v2, OS_LOG_TYPE_ERROR, "%s: the broadcast unit=%@ for layer=%@ failed validation", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)createBroadcastUnitWithSourceTensor:(const char *)a1 targetShape:layer:broadcastUnit:broadcastResultTensor:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addOutputs:ofOperation:toProcedure:toNetwork:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unitBottomNamesWithSourceTensor:liveInputs:unitBottomNames:sourceTensorsToLiveUp:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addUnitsAndInputsAndOutpusOfLayer:toNetwork:toProcedure:operationName:liveInputs:liveOutputs:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addConstantTensor:toNetwork:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addConstantTensor:toNetwork:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)queryAndAddConstantTensors:ofLayer:toNetwork:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addWeightsOfConvolutionLayer:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addWeightsOfConvolutionLayer:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addWeightsOfConvolutionLayer:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addWeightsOfConvolutionLayer:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addWeightsOfConvolutionLayer:.cold.5()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addWeightsOfConvolutionLayer:(const char *)a1 .cold.6(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addWeightsOfConvolutionLayer:(const char *)a1 .cold.7(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addWeightsOfConvolutionLayer:(float)a3 .cold.8(uint64_t a1, NSObject *a2, float a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[_MLCANEPlistBuilder addWeightsOfConvolutionLayer:]";
  v6 = 2048;
  v7 = a3;
  v8 = 2112;
  v9 = a1;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%s: the absolute values of all weights are below %.8f and considered to be all 0's. weight tensor=%@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)addWeightsOfConvolutionLayer:.cold.9()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addWeightsOfFullyConnectedLayer:toNetwork:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addScalesAndBiasesOfGocUnit:tensorWithBiases:tensorWithScales:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addScalesAndBiasesOfGocUnit:tensorWithBiases:tensorWithScales:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addWeightsOfNormalizationLayer:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)buildProcedureWithLayer:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)buildProcedureWithLayer:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)buildProcedureWithLayer:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)buildProcedureWithLayer:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)buildProcedureWithRootLayer:aneSubgraphLayerList:liveInputs:liveOutputs:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end