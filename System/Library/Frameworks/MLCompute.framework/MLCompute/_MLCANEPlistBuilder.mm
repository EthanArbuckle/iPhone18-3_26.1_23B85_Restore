@interface _MLCANEPlistBuilder
+ (BOOL)createReshapeUnitsWithLayer:(id)a3 reshapeUnits:(id *)a4 reshapeResultTensors:(id *)a5;
+ (id)buildBiasParamsWithBiases:(id)a3;
+ (id)createConstantTensorUnitWithTensor:(id)a3;
+ (id)createReshapeUnitWithSourceTensor:(id)a3 layer:(id)a4 resultShape:(id)a5;
+ (id)createUnitWithLayer:(id)a3 unitParams:(id)a4;
+ (int)createBroadcastUnitWithSourceTensor:(id)a3 targetShape:(id)a4 layer:(id)a5 broadcastUnit:(id *)a6 broadcastResultTensor:(id *)a7;
- (BOOL)addConstantTensor:(id)a3 toNetwork:(id)a4;
- (BOOL)addInputs:(id)a3 ofUnit:(id)a4 ofOperation:(id)a5 toProcedure:(id)a6 toNetwork:(id)a7;
- (BOOL)addOutputs:(id)a3 ofOperation:(id)a4 toProcedure:(id)a5 toNetwork:(id)a6;
- (BOOL)addScalesAndBiasesOfGocUnit:(id)a3 tensorWithBiases:(id)a4 tensorWithScales:(id)a5;
- (BOOL)addUnitsAndInputsAndOutpusOfLayer:(id)a3 toNetwork:(id)a4 toProcedure:(id)a5 operationName:(id)a6 liveInputs:(id)a7 liveOutputs:(id)a8;
- (BOOL)addWeightsOfConvolutionLayer:(id)a3;
- (BOOL)addWeightsOfFullyConnectedLayer:(id)a3 toNetwork:(id)a4;
- (BOOL)addWeightsOfLayer:(id)a3 toNetwork:(id)a4;
- (BOOL)addWeightsOfLayerNormalizationLayer:(id)a3 toNetwork:(id)a4;
- (BOOL)addWeightsOfNormalizationLayer:(id)a3;
- (BOOL)buildProcedureWithLayer:(id)a3;
- (BOOL)buildProcedureWithRootLayer:(id)a3 aneSubgraphLayerList:(id)a4 liveInputs:(id)a5 liveOutputs:(id)a6;
- (BOOL)queryAndAddConstantTensors:(id)a3 ofLayer:(id)a4 toNetwork:(id)a5;
- (_MLCANEPlistBuilder)init;
- (void)releaseWeights;
- (void)unitBottomNamesWithSourceTensor:(id)a3 liveInputs:(id)a4 unitBottomNames:(id)a5 sourceTensorsToLiveUp:(id)a6;
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

+ (id)createUnitWithLayer:(id)a3 unitParams:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:kMLCANENetUnitType[0]];

  if (v8)
  {
    aSelector = a2;
    v9 = [MEMORY[0x277CBEC10] mutableCopy];
    v53 = [v7 objectForKeyedSubscript:kMLCANENetUnitType[0]];
    [NSObject setObject:v9 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    v10 = [v7 mutableCopy];
    [v10 removeObjectForKey:kMLCANENetUnitType[0]];
    v51 = v10;
    v52 = [v10 copy];

    v11 = [v6 label];
    v54 = v9;
    [v9 setObject:v11 forKeyedSubscript:@"Name"];

    v12 = MEMORY[0x277CBEBF8];
    v13 = [MEMORY[0x277CBEBF8] mutableCopy];
    v14 = [v12 mutableCopy];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v15 = [v6 sourceTensors];
    v16 = [v15 countByEnumeratingWithState:&v61 objects:v71 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v61 + 1) + 8 * i);
          v21 = [v20 descriptor];
          v22 = [v21 dataType];

          v23 = ANE_GetANECIRDataTypeWithMLCDataType(v22);
          if (!v23)
          {
            log = +[MLCLog framework];
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              v48 = NSStringFromSelector(aSelector);
              *buf = 138412802;
              *&buf[4] = v48;
              v67 = 1024;
              v68 = v22;
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
          v25 = [v20 label];
          [v14 addObject:v25];
        }

        v17 = [v15 countByEnumeratingWithState:&v61 objects:v71 count:16];
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
    v15 = [MEMORY[0x277CBEBF8] mutableCopy];
    log = [v26 mutableCopy];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = [v6 resultTensors];
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
          v32 = [v31 descriptor];
          v33 = [v32 dataType];

          v34 = ANE_GetANECIRDataTypeWithMLCDataType(v33);
          if (!v34)
          {
            v45 = +[MLCLog framework];
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v49 = NSStringFromSelector(aSelector);
              *buf = 138412802;
              *&buf[4] = v49;
              v67 = 1024;
              v68 = v33;
              v69 = 2112;
              v70 = v31;
              _os_log_error_impl(&dword_238C1D000, v45, OS_LOG_TYPE_ERROR, "%@: unsupported data type=%d for result tensor=%@", buf, 0x1Cu);
            }

            v44 = 0;
            goto LABEL_34;
          }

          v35 = v34;
          [v15 addObject:v34];
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

    v37 = [v15 objectAtIndexedSubscript:0];
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
    v41 = v7;
  }

  v46 = *MEMORY[0x277D85DE8];

  return v44;
}

+ (id)buildBiasParamsWithBiases:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEC10];
  v6 = [MEMORY[0x277CBEC10] mutableCopy];
  v7 = [v5 mutableCopy];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v7 setObject:v8 forKeyedSubscript:@"BiasMutable"];

  v9 = [v4 descriptor];

  v10 = ANE_GetANECIRDataTypeWithMLCDataType([v9 dataType]);
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

  v15 = [v9 shape];
  v16 = [v15 objectAtIndexedSubscript:1];
  v17 = [v16 unsignedIntegerValue];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
  [v7 setObject:v18 forKeyedSubscript:@"BiasCount"];

  [v6 setObject:v7 forKeyedSubscript:@"BiasScaleGroupData"];
  [v6 setObject:@"GOC" forKeyedSubscript:kMLCANENetUnitType[0]];
  v13 = v6;
LABEL_9:

  return v13;
}

+ (id)createReshapeUnitWithSourceTensor:(id)a3 layer:(id)a4 resultShape:(id)a5
{
  v38[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 count] == 4)
  {
    v11 = [MEMORY[0x277CBEC10] mutableCopy];
    [v11 setObject:@"Reshape" forKeyedSubscript:kMLCANENetUnitType[0]];
    v12 = MEMORY[0x277CCABB0];
    v13 = [v10 objectAtIndexedSubscript:0];
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "unsignedIntegerValue")}];
    [v11 setObject:v14 forKeyedSubscript:@"ReshapedBatch"];

    v15 = MEMORY[0x277CCABB0];
    v16 = [v10 objectAtIndexedSubscript:1];
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "unsignedIntegerValue")}];
    [v11 setObject:v17 forKeyedSubscript:@"ReshapedChannel"];

    v18 = MEMORY[0x277CCABB0];
    v19 = [v10 objectAtIndexedSubscript:2];
    v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "unsignedIntegerValue")}];
    [v11 setObject:v20 forKeyedSubscript:@"ReshapedHeight"];

    v21 = MEMORY[0x277CCABB0];
    v22 = [v10 objectAtIndexedSubscript:3];
    v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "unsignedIntegerValue")}];
    [v11 setObject:v23 forKeyedSubscript:@"ReshapedWidth"];

    v24 = [_MLCANEPlistBuilder createUnitWithLayer:v9 unitParams:v11];
    v38[0] = v8;
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
        v37 = v9;
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

+ (BOOL)createReshapeUnitsWithLayer:(id)a3 reshapeUnits:(id *)a4 reshapeResultTensors:(id *)a5
{
  v5 = a3;
  v6 = MEMORY[0x277CBEBF8];
  v34 = [MEMORY[0x277CBEBF8] mutableCopy];
  v33 = [v6 mutableCopy];
  v7 = [v5 sourceTensors];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = [v8 descriptor];
  v10 = [v9 dimensionCount];

  v11 = v8;
  v35 = v5;
  v12 = [v5 resultTensors];
  v13 = [v12 objectAtIndexedSubscript:0];

  v30 = v10;
  v14 = v10 - 1;
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
      v20 = [v11 descriptor];
      v21 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v19, [v20 dataType]);

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
    v24 = [v11 descriptor];
    v25 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v18, [v24 dataType]);

    [v33 addObject:v25];
    v15 = 0;
    if ((v17 & 1) == 0)
    {
      *a4 = [v34 copy];
      *a5 = [v33 copy];
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

+ (int)createBroadcastUnitWithSourceTensor:(id)a3 targetShape:(id)a4 layer:(id)a5 broadcastUnit:(id *)a6 broadcastResultTensor:(id *)a7
{
  v64 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if ([v13 count] == 4)
  {
    v52 = 0;
    ANE_GetTensor4DShapeWithOnePrepended(v12, &v52);
    v15 = v52;
    v51 = [MEMORY[0x277CBEBF8] mutableCopy];
    if ([v15 count])
    {
      v47 = a6;
      v48 = a7;
      v49 = v12;
      v50 = v14;
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = [v15 objectAtIndexedSubscript:v16];
        v19 = [v18 unsignedIntegerValue];

        v20 = [v13 objectAtIndexedSubscript:v16];
        v21 = [v20 unsignedIntegerValue];

        if (v19 != 1 && v19 != v21)
        {
          v37 = +[MLCLog framework];
          v12 = v49;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v43 = NSStringFromSelector(a2);
            v44 = [v49 descriptor];
            v45 = [v44 shape];
            *buf = 138412802;
            v59 = v43;
            v60 = 2112;
            v61 = v45;
            v62 = 2112;
            v63 = v13;
            _os_log_error_impl(&dword_238C1D000, v37, OS_LOG_TYPE_ERROR, "%@: the shape of source tensor is not broadcastable to the target shape. source shape=%@, target shape=%@", buf, 0x20u);
          }

          v32 = 0;
          v25 = 0;
          v17 = 0;
          *v47 = 0;
          *v48 = 0;
          goto LABEL_21;
        }

        if (v19 < v21)
        {
          v22 = [MEMORY[0x277CBEC10] mutableCopy];
          v23 = ANE_GetANECIRDimension(v16);
          [v22 setObject:v23 forKeyedSubscript:@"Dimension"];
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
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
        v12 = v49;
        goto LABEL_21;
      }

      v56[0] = kMLCANENetUnitType[0];
      v56[1] = @"BroadcastInfo";
      v57[0] = @"Broadcast";
      v57[1] = v51;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
      v46 = v14 = v50;
      v25 = [_MLCANEPlistBuilder createUnitWithLayer:v50 unitParams:?];
      v12 = v49;
      v26 = [v49 descriptor];
      v27 = [v26 dataType];

      v28 = ANE_GetANECIRDataTypeWithMLCDataType(v27);
      if (v28)
      {
        v29 = [v49 label];
        v55 = v29;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
        [v25 setObject:v30 forKeyedSubscript:@"Bottom"];

        v54 = v28;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
        [v25 setObject:v31 forKeyedSubscript:@"InputType"];

        [v25 setObject:v28 forKeyedSubscript:@"OutputType"];
        v32 = [MLCTensor tensorWithShape:v13 dataType:v27];
        v53 = v49;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
        LOBYTE(v30) = ANE_ValidateBroadcastUnit(v33, v32, v25, 1);

        if (v30)
        {
          v34 = v25;
          *a6 = v25;
          v35 = v32;
          *v48 = v32;

          v17 = 2;
LABEL_21:
          v14 = v50;
          goto LABEL_22;
        }

        v40 = +[MLCLog framework];
        v41 = v48;
        v42 = v46;
        v14 = v50;
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
        v41 = v48;
        v42 = v46;
      }

      *v47 = 0;
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
    *a6 = 0;
    *a7 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)createConstantTensorUnitWithTensor:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEC10] mutableCopy];
  v6 = [v4 label];
  [v5 setObject:v6 forKeyedSubscript:@"ConstantName"];

  v7 = [v4 descriptor];
  v8 = [v7 dataType];

  v9 = ANE_GetANECIRDataTypeWithMLCDataType(v8);
  if (v9)
  {
    [v5 setObject:v9 forKeyedSubscript:@"ConstantType"];
    v19 = 0;
    ANE_GetTensor4DShapeWithOnePrepended(v4, &v19);
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
      v23 = v8;
      v24 = 2112;
      v25 = v4;
      _os_log_error_impl(&dword_238C1D000, v15, OS_LOG_TYPE_ERROR, "%@: unsupported data type=%d of tensor=%@", buf, 0x1Cu);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)addInputs:(id)a3 ofUnit:(id)a4 ofOperation:(id)a5 toProcedure:(id)a6 toNetwork:(id)a7
{
  v64 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v51 = a4;
  v50 = a5;
  v13 = a6;
  v49 = a7;
  if ([v12 count])
  {
    aSelector = a2;
    v45 = v13;
    v14 = [v13 objectForKeyedSubscript:@"InputList"];
    v15 = [v14 mutableCopy];

    if (!v15)
    {
      v15 = [MEMORY[0x277CBEBF8] mutableCopy];
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v46 = v12;
    v16 = v12;
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
            [(_MLCANEPlistBuilder *)self addConstantTensor:v21 toNetwork:v49];
          }

          else
          {
            [v21 setComputeFlags:{objc_msgSend(v21, "computeFlags") | 4}];
            v22 = [MEMORY[0x277CBEC10] mutableCopy];
            [v22 setObject:v50 forKeyedSubscript:@"OperationName"];
            v23 = [v51 objectForKeyedSubscript:@"Name"];
            [v22 setObject:v23 forKeyedSubscript:@"Name"];

            v24 = [v21 label];
            [v22 setObject:v24 forKeyedSubscript:@"InputName"];

            v25 = [v21 descriptor];
            v26 = ANE_GetANECIRDataTypeWithMLCDataType([v25 dataType]);
            if (!v26)
            {
              v39 = +[MLCLog framework];
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v42 = NSStringFromSelector(aSelector);
                v43 = [v25 dataType];
                *buf = 138412802;
                v58 = v42;
                v59 = 1024;
                v60 = v43;
                v61 = 2112;
                v62 = v21;
                _os_log_error_impl(&dword_238C1D000, v39, OS_LOG_TYPE_ERROR, "%@: unsupported data type=%d for tensor=%@", buf, 0x1Cu);
              }

              v38 = 0;
              v13 = v45;
              v12 = v46;
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
            v34 = [v21 interleave];
            v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34];
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
    v13 = v45;
    [v45 setObject:v37 forKeyedSubscript:@"InputList"];
    v38 = 1;
    v12 = v46;
LABEL_20:
  }

  else
  {
    v38 = 1;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v38;
}

- (BOOL)addOutputs:(id)a3 ofOperation:(id)a4 toProcedure:(id)a5 toNetwork:(id)a6
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v50 = a4;
  v11 = a5;
  v47 = a6;
  if ([v10 count])
  {
    aSelector = a2;
    v12 = [v11 objectForKeyedSubscript:@"OutputList"];
    v13 = [v12 mutableCopy];

    if (!v13)
    {
      v13 = [MEMORY[0x277CBEBF8] mutableCopy];
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v14 = v10;
    v49 = [v14 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v49)
    {
      v48 = *v53;
      *&v15 = 138412802;
      v41 = v15;
      v43 = v11;
      v44 = v10;
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
          [v18 setObject:v50 forKeyedSubscript:@"OperationName"];
          v19 = [v17 parentLayers];
          v20 = [v19 objectAtIndexedSubscript:0];

          if (!ANE_IsAneCompiledLayer(v20))
          {
            v38 = +[MLCLog framework];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              [_MLCANEPlistBuilder addOutputs:ofOperation:toProcedure:toNetwork:];
            }

LABEL_22:
            v37 = 0;
            v11 = v43;
            v10 = v44;
            v36 = obj;
            v13 = v46;
            goto LABEL_23;
          }

          v21 = [v20 deviceOps];
          v22 = [v21 objectAtIndexedSubscript:0];
          v23 = [v22 units];

          v51 = v23;
          v24 = [v23 objectAtIndexedSubscript:{objc_msgSend(v23, "count") - 1}];
          v25 = [v24 objectForKeyedSubscript:@"Name"];

          v26 = [v17 label];
          [v18 setObject:v25 forKeyedSubscript:@"Name"];
          [v18 setObject:v26 forKeyedSubscript:@"OutputName"];
          v27 = [v17 descriptor];
          v28 = ANE_GetANECIRDataTypeWithMLCDataType([v27 dataType]);
          if (v28)
          {
            [v18 setObject:v28 forKeyedSubscript:@"OutputType"];
            v29 = [v17 interleave];
            v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
            [v18 setObject:v30 forKeyedSubscript:@"OutputInterleave"];

            [v46 addObject:v18];
            v31 = [MEMORY[0x277CBEC10] mutableCopy];
            [v31 setObject:v26 forKeyedSubscript:@"OutputName"];
            [v31 setObject:v25 forKeyedSubscript:@"Bottom"];
            [v31 setObject:v28 forKeyedSubscript:@"OutputType"];
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
            [v31 setObject:v32 forKeyedSubscript:@"OutputInterleave"];

            v33 = [v31 copy];
            [v47 setObject:v33 forKeyedSubscript:v26];
          }

          else
          {
            v31 = +[MLCLog framework];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v34 = NSStringFromSelector(aSelector);
              v35 = [v27 dataType];
              *buf = v41;
              v57 = v34;
              v58 = 1024;
              v59 = v35;
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
        v11 = v43;
        v10 = v44;
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
    [v11 setObject:v36 forKeyedSubscript:@"OutputList"];
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

- (void)unitBottomNamesWithSourceTensor:(id)a3 liveInputs:(id)a4 unitBottomNames:(id)a5 sourceTensorsToLiveUp:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 parentLayers];
  if (![v13 count])
  {

    goto LABEL_29;
  }

  v14 = [v10 containsObject:v9];

  if (v14)
  {
LABEL_29:
    v30 = [v9 label];
    [v11 addObject:v30];

    [v12 addObject:v9];
    goto LABEL_33;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v33 = v9;
  obj = [v9 parentLayers];
  v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  v16 = self;
  if (v15)
  {
    v17 = v15;
    v18 = *v38;
    v35 = v12;
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
          v21 = [v20 sourceTensors];
          v22 = [v21 objectAtIndexedSubscript:0];

          [(_MLCANEPlistBuilder *)v16 unitBottomNamesWithSourceTensor:v22 liveInputs:v10 unitBottomNames:v11 sourceTensorsToLiveUp:v12];
        }

        else
        {
          v23 = v10;
          v24 = v20;
          if (ANE_IsAneCompiledLayer(v24))
          {
            v25 = [v24 deviceOps];
            v26 = [v25 objectAtIndexedSubscript:0];
            v27 = [v26 units];

            if (v27 && [v27 count])
            {
              v28 = [v27 objectAtIndexedSubscript:[v27 count]- 1];
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

            v16 = self;
          }

          else
          {
            v27 = +[MLCLog framework];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v43 = "lastUnitNameOfLayer";
              v44 = 2112;
              v45 = v24;
              _os_log_error_impl(&dword_238C1D000, v27, OS_LOG_TYPE_ERROR, "%s: layer=%@ is not compiled with ANE device", buf, 0x16u);
            }

            v22 = 0;
          }

          if (!v22)
          {
            v31 = +[MLCLog framework];
            v10 = v23;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [_MLCANEPlistBuilder unitBottomNamesWithSourceTensor:liveInputs:unitBottomNames:sourceTensorsToLiveUp:];
            }

            v9 = v33;
            v12 = v35;
            goto LABEL_33;
          }

          [v11 addObject:v22];
          v10 = v23;
          v12 = v35;
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

  v9 = v33;
LABEL_33:

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)addUnitsAndInputsAndOutpusOfLayer:(id)a3 toNetwork:(id)a4 toProcedure:(id)a5 operationName:(id)a6 liveInputs:(id)a7 liveOutputs:(id)a8
{
  v103 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v79 = a7;
  v18 = a8;
  if (ANE_IsAneCompiledLayer(v14))
  {
    v19 = [v15 objectForKeyedSubscript:@"Units"];
    v20 = [v19 mutableCopy];

    if (!v20)
    {
      v20 = [MEMORY[0x277CBEBF8] mutableCopy];
    }

    aSelector = a2;
    v21 = [v14 deviceOps];
    v22 = [v21 objectAtIndexedSubscript:0];

    v23 = [v22 units];
    v75 = v23;
    if (v23 && [v23 count])
    {
      v69 = v22;
      v70 = v17;
      v73 = v15;
      v74 = v20;
      v71 = v16;
      v24 = [MEMORY[0x277CBEC10] mutableCopy];
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v25 = [v14 sourceTensors];
      v26 = [v25 countByEnumeratingWithState:&v88 objects:v102 count:16];
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
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v88 + 1) + 8 * i);
            v31 = [v30 label];
            [v24 setObject:v30 forKeyedSubscript:v31];
          }

          v27 = [v25 countByEnumeratingWithState:&v88 objects:v102 count:16];
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
        v68 = v14;
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
                  [(_MLCANEPlistBuilder *)self unitBottomNamesWithSourceTensor:v46 liveInputs:v79 unitBottomNames:v47 sourceTensorsToLiveUp:v77];
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
                    v14 = v68;
                    v15 = v73;
                    v17 = v70;
                    v16 = v71;
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

          v15 = v73;
          v49 = [(_MLCANEPlistBuilder *)self addInputs:v77 ofUnit:v36 ofOperation:v70 toProcedure:v71 toNetwork:v73];
          if (v49)
          {
            [v73 setObject:v36 forKeyedSubscript:v37];
            v14 = v68;
            v20 = v74;
          }

          else
          {
            v50 = +[MLCLog framework];
            v14 = v68;
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

            v15 = v73;
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
        v17 = v70;
        v16 = v71;
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
        v56 = [v14 resultTensors];
        v57 = [v56 countByEnumeratingWithState:&v80 objects:v92 count:16];
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
                objc_enumerationMutation(v56);
              }

              v61 = *(*(&v80 + 1) + 8 * k);
              if ([v18 containsObject:v61])
              {
                [v36 addObject:v61];
              }
            }

            v58 = [v56 countByEnumeratingWithState:&v80 objects:v92 count:16];
          }

          while (v58);
        }

        v17 = v70;
        v16 = v71;
        v15 = v73;
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
            v98 = v14;
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

- (BOOL)addConstantTensor:(id)a3 toNetwork:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 label];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v11 = [objc_opt_class() createConstantTensorUnitWithTensor:v6];
    if (!v11)
    {
      v12 = +[MLCLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_MLCANEPlistBuilder addConstantTensor:toNetwork:];
      }

      v10 = 0;
      goto LABEL_25;
    }

    v12 = [v6 deviceMemory];
    v13 = [v6 deviceIndex];
    if ([v12 count]<= v13)
    {
      goto LABEL_16;
    }

    v14 = [v12 objectAtIndexedSubscript:v13];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v12 objectAtIndexedSubscript:v13];
      if ([v15 count] == 2)
      {
        v37 = [v12 objectAtIndexedSubscript:v13];
        v16 = [v37 objectAtIndexedSubscript:0];
        objc_opt_class();
        v38 = v16;
        if (objc_opt_isKindOfClass())
        {
          v35 = [v12 objectAtIndexedSubscript:v13];
          v17 = [v35 objectAtIndexedSubscript:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v18 = [v12 objectAtIndexedSubscript:v13];
            v19 = [v18 objectAtIndexedSubscript:0];

            v20 = [v12 objectAtIndexedSubscript:v13];
            v21 = [v20 objectAtIndexedSubscript:1];

            v22 = [(_MLCANEPlistBuilder *)self weightOps];
            v23 = [v22 addWeightData:v21 hash:v19];

            v24 = [(_MLCANEPlistBuilder *)self weightTensorsWithDeviceMemory];
            [v24 addObject:v6];
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

              v26 = [v7 objectForKeyedSubscript:@"Constants"];
              v27 = [v26 mutableCopy];

              v28 = [v6 label];
              v29 = v28;
              if (v27)
              {
                [v27 addObject:v28];
              }

              else
              {
                v39[0] = v28;
                v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
                v27 = [v30 mutableCopy];
              }

              v31 = [v6 label];
              [v7 setObject:v11 forKeyedSubscript:v31];

              v32 = [v27 copy];
              [v7 setObject:v32 forKeyedSubscript:@"Constants"];
            }

LABEL_25:
            goto LABEL_26;
          }

LABEL_16:
          v19 = [(_MLCANEPlistBuilder *)self weightOps];
          v21 = [v6 data];
          v24 = [v6 descriptor];
          v23 = [v19 addWeightData:v21 weightDataType:{objc_msgSend(v24, "dataType")}];
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

- (BOOL)queryAndAddConstantTensors:(id)a3 ofLayer:(id)a4 toNetwork:(id)a5
{
  aSelector = a2;
  v73 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (ANE_IsAneCompiledLayer(v9))
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v8;
    v48 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (!v48)
    {
      v35 = 1;
      goto LABEL_43;
    }

    v49 = *v57;
    v11 = @"Bottom";
    v45 = v8;
    v46 = v10;
    v47 = v9;
    v44 = self;
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
      v14 = [(_MLCANEPlistBuilder *)self weightOps];
      v15 = [v14 queryConstantTensor:v13];

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
        v16 = [v9 deviceOps];
        v17 = [v16 objectAtIndexedSubscript:0];
        v18 = [v17 units];

        v43 = v13;
        v19 = [v13 label];
        v51 = v15;
        v20 = [v15 label];
        v21 = v18;
        v22 = v19;
        v23 = v20;
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
            v40 = [v43 label];
            v41 = [v51 label];
            *buf = 138413058;
            v66 = v39;
            v67 = 2112;
            v68 = v40;
            v69 = 2112;
            v70 = v41;
            v71 = 2112;
            v72 = v53;
            _os_log_error_impl(&dword_238C1D000, v36, OS_LOG_TYPE_ERROR, "%@: failed to replace unit bottom name %@ with %@ in units=%@", buf, 0x2Au);

            v34 = v53;
          }

          v10 = v46;
          v9 = v47;
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
        v8 = v45;
        if ((v24 & 1) == 0)
        {
          goto LABEL_38;
        }

        v10 = v46;
        v9 = v47;
        v15 = v51;
        self = v44;
      }

      if (![(_MLCANEPlistBuilder *)self addConstantTensor:v15 toNetwork:v10])
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

- (BOOL)addWeightsOfConvolutionLayer:(id)a3
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 deviceOps];
  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v8 units];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = [v5 weights];
    v11 = [v5 biases];
    v12 = ANE_FindUnitWithType(@"Conv", v9);
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
    v53 = v11;
    v14 = [v12 objectForKeyedSubscript:@"Params"];
    v15 = [v10 descriptor];
    v16 = [v15 dataType];

    v17 = [v10 deviceMemory];
    v18 = [v17 count];
    v19 = [v10 deviceIndex];

    if (v18 <= v19)
    {
      v24 = [v10 data];
    }

    else
    {
      v20 = [v10 deviceMemory];
      v21 = [v20 objectAtIndexedSubscript:{-[NSObject deviceIndex](v10, "deviceIndex")}];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v24 = +[MLCLog framework];
        v11 = v53;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_MLCANEPlistBuilder addWeightsOfConvolutionLayer:];
        }

        v26 = 0;
        v6 = v52;
        goto LABEL_47;
      }

      v23 = [v10 deviceMemory];
      v24 = [v23 objectAtIndexedSubscript:{-[NSObject deviceIndex](v10, "deviceIndex")}];

      v25 = [(_MLCANEPlistBuilder *)self weightTensorsWithDeviceMemory];
      [v25 addObject:v10];
    }

    v55 = 0;
    v56 = 0;
    v54 = 0;
    v27 = ANE_CompressSparseKernel(v24, v16, &v55, &v54, &v56, 0.000060976);
    v51 = v55;
    v50 = v54;
    if (!v56)
    {
      v34 = +[MLCLog framework];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [(_MLCANEPlistBuilder *)v10 addWeightsOfConvolutionLayer:v34, 0.000060976];
      }

      goto LABEL_43;
    }

    if (v27)
    {
      [v14 setObject:@"Sparse" forKeyedSubscript:@"KernelMode"];
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56];
      [v14 setObject:v28 forKeyedSubscript:@"KernelCoeffCount"];

      v29 = [(_MLCANEPlistBuilder *)self weightOps];
      v30 = [v29 addWeightData:v51 weightDataType:6];

      if (v30 == -1)
      {
        v34 = +[MLCLog framework];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [_MLCANEPlistBuilder addWeightsOfConvolutionLayer:v49];
        }

        goto LABEL_43;
      }

      v31 = [(_MLCANEPlistBuilder *)self weightOps];
      v32 = [v31 addWeightData:v50 weightDataType:v16];

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
      v35 = [(_MLCANEPlistBuilder *)self weightOps];
      v32 = [v35 addWeightData:v24 weightDataType:v16];

      if (v32 == -1)
      {
        v34 = +[MLCLog framework];
        v11 = v53;
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
    v11 = v53;
    if (!v53)
    {
      v26 = 1;
      v6 = v52;
LABEL_46:

LABEL_47:
LABEL_48:

      goto LABEL_49;
    }

    v37 = ANE_FindUnitWithType(@"GOC", v9);
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
    v48 = [(_MLCANEPlistBuilder *)self weightOps];
    v38 = [v53 data];
    v39 = [v53 descriptor];
    v40 = [v48 addWeightData:v38 weightDataType:{objc_msgSend(v39, "dataType")}];

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
      v11 = v53;
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

  v10 = +[MLCLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [_MLCANEPlistBuilder addWeightsOfConvolutionLayer:];
  }

  v26 = 0;
LABEL_49:

  objc_autoreleasePoolPop(v6);
  return v26;
}

- (BOOL)addWeightsOfFullyConnectedLayer:(id)a3 toNetwork:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (ANE_IsAneCompiledLayer(v6))
  {
    v8 = [v6 deviceOps];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v9 constantTensors];
    v11 = [(_MLCANEPlistBuilder *)self queryAndAddConstantTensors:v10 ofLayer:v6 toNetwork:v7];
    if (v11)
    {
      [v10 removeAllObjects];
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

- (BOOL)addScalesAndBiasesOfGocUnit:(id)a3 tensorWithBiases:(id)a4 tensorWithScales:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [v9 deviceMemory];
  v13 = [v12 count];
  v14 = [v9 deviceIndex];

  if (v13 <= v14)
  {
    v16 = [v9 data];
  }

  else
  {
    v15 = [v9 deviceMemory];
    v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v9, "deviceIndex")}];

    v17 = [(_MLCANEPlistBuilder *)self weightTensorsWithDeviceMemory];
    [v17 addObject:v9];
  }

  v18 = [(_MLCANEPlistBuilder *)self weightOps];
  v19 = [v9 descriptor];
  v20 = [v18 addWeightData:v16 weightDataType:{objc_msgSend(v19, "dataType")}];

  if (v20 == -1)
  {
    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder addScalesAndBiasesOfGocUnit:tensorWithBiases:tensorWithScales:];
    }

    goto LABEL_15;
  }

  v21 = [v10 deviceMemory];
  v22 = [v21 count];
  v23 = [v10 deviceIndex];

  if (v22 <= v23)
  {
    v25 = [v10 data];
  }

  else
  {
    v24 = [v10 deviceMemory];
    v25 = [v24 objectAtIndexedSubscript:{objc_msgSend(v10, "deviceIndex")}];

    v26 = [(_MLCANEPlistBuilder *)self weightTensorsWithDeviceMemory];
    [v26 addObject:v10];
  }

  v27 = [(_MLCANEPlistBuilder *)self weightOps];
  v28 = [v10 descriptor];
  v29 = [v27 addWeightData:v25 weightDataType:{objc_msgSend(v28, "dataType")}];

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

  v30 = [v8 objectForKeyedSubscript:@"Params"];
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

- (BOOL)addWeightsOfNormalizationLayer:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceOps];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 units];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v4;
      v15 = ANE_FindUnitWithType(@"GOC", v7);
      if (v15)
      {
        v16 = v15;
        v17 = [v14 mean];
        if (v17)
        {
          v18 = v17;
          v19 = [v14 variance];

          if (v19)
          {
            v20 = [v14 mean];
            v21 = [v14 variance];
LABEL_13:
            v23 = v21;
            v13 = [(_MLCANEPlistBuilder *)self addScalesAndBiasesOfGocUnit:v16 tensorWithBiases:v20 tensorWithScales:v21];

            goto LABEL_22;
          }
        }

LABEL_12:
        v20 = [v14 beta];
        v21 = [v14 gamma];
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

      v14 = v4;
      v22 = ANE_FindUnitWithType(@"GOC", v7);
      if (v22)
      {
        v16 = v22;
        goto LABEL_12;
      }
    }

    v13 = 1;
    goto LABEL_22;
  }

  v8 = v4;
  v9 = ANE_FindUnitWithType(@"GOC", v7);
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
  v11 = [v8 mean];
  v12 = [v8 variance];
  v13 = [(_MLCANEPlistBuilder *)self addScalesAndBiasesOfGocUnit:v10 tensorWithBiases:v11 tensorWithScales:v12];

LABEL_22:
  return v13;
}

- (BOOL)addWeightsOfLayerNormalizationLayer:(id)a3 toNetwork:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (ANE_IsAneCompiledLayer(v6))
  {
    v8 = [v6 deviceOps];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v9 constantTensors];
    v11 = [(_MLCANEPlistBuilder *)self queryAndAddConstantTensors:v10 ofLayer:v6 toNetwork:v7];
    if (v11)
    {
      [v10 removeAllObjects];
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

- (BOOL)addWeightsOfLayer:(id)a3 toNetwork:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(_MLCANEPlistBuilder *)self addWeightsOfConvolutionLayer:v6];
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
      v8 = [(_MLCANEPlistBuilder *)self addWeightsOfNormalizationLayer:v6];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = 1;
        goto LABEL_13;
      }

      v8 = [(_MLCANEPlistBuilder *)self addWeightsOfLayerNormalizationLayer:v6 toNetwork:v7];
    }

    goto LABEL_10;
  }

  v9 = [v6 deviceOps];
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v10 units];

  v12 = ANE_FindUnitWithType(@"Conv", v11);

  if (v12)
  {
    v13 = [(_MLCANEPlistBuilder *)self addWeightsOfConvolutionLayer:v6];
  }

  else
  {
    v13 = [(_MLCANEPlistBuilder *)self addWeightsOfFullyConnectedLayer:v6 toNetwork:v7];
  }

  v14 = v13;

LABEL_13:
  return v14;
}

- (BOOL)buildProcedureWithLayer:(id)a3
{
  v45[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!ANE_IsAneCompiledLayer(v4))
  {
    v7 = +[MLCLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEPlistBuilder buildProcedureWithLayer:];
    }

    goto LABEL_7;
  }

  v5 = [v4 fusedLayers];
  v6 = [v5 count];

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
  v13 = [v4 label];
  v14 = [v12 stringWithFormat:@"%@%@", @"procedure_", v13];

  v15 = [v11 mutableCopy];
  v16 = MEMORY[0x277CCACA8];
  v17 = [v4 label];
  v18 = v14;
  v19 = [v16 stringWithFormat:@"%@%@", @"network_", v17];

  [v7 setObject:v14 forKeyedSubscript:@"Name"];
  v44[0] = @"OperationName";
  v44[1] = @"NetworkName";
  v45[0] = @"op0";
  v45[1] = v19;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v43 = v42;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  [v7 setObject:v20 forKeyedSubscript:@"OperationList"];

  if ([(_MLCANEPlistBuilder *)self addWeightsOfLayer:v4 toNetwork:v15])
  {
    v41 = v14;
    v21 = MEMORY[0x277CBEB98];
    v22 = [v4 sourceTensors];
    v23 = [v21 setWithArray:v22];

    v24 = MEMORY[0x277CBEB98];
    v25 = [v4 resultTensors];
    v26 = [v24 setWithArray:v25];

    v40 = v26;
    v8 = [(_MLCANEPlistBuilder *)self addUnitsAndInputsAndOutpusOfLayer:v4 toNetwork:v15 toProcedure:v7 operationName:@"op0" liveInputs:v23 liveOutputs:v26];
    if (v8)
    {
      v27 = [(_MLCANEPlistBuilder *)self weightOps];
      v28 = [v27 weightFiles];
      v29 = [v28 count];

      if (v29)
      {
        v30 = [(_MLCANEPlistBuilder *)self weightOps];
        v31 = [v30 weightFiles];
        v32 = [v31 copy];
        [v15 setObject:v32 forKeyedSubscript:@"Weights"];
      }

      v33 = [(_MLCANEPlistBuilder *)self plist];
      v34 = [v33 objectForKeyedSubscript:@"Networks"];

      [v34 addObject:v19];
      v35 = [(_MLCANEPlistBuilder *)self plist];
      [v35 setObject:v15 forKeyedSubscript:v19];

      v36 = [(_MLCANEPlistBuilder *)self plist];
      v37 = [v36 objectForKeyedSubscript:@"ProcedureList"];

      [v37 addObject:v7];
      v38 = [v4 deviceOps];
      v39 = [v38 objectAtIndexedSubscript:0];

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

- (BOOL)buildProcedureWithRootLayer:(id)a3 aneSubgraphLayerList:(id)a4 liveInputs:(id)a5 liveOutputs:(id)a6
{
  v89[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v71 = a5;
  v69 = a6;
  if (!ANE_IsAneCompiledLayer(v9))
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
  v14 = [v9 label];
  v15 = [v13 stringWithFormat:@"%@%@", @"procedure_", v14];

  v67 = [v11 mutableCopy];
  v16 = MEMORY[0x277CCACA8];
  v63 = v9;
  v17 = [v9 label];
  v18 = v12;
  v19 = [v16 stringWithFormat:@"%@%@", @"network_", v17];

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

  v23 = [v10 count];
  v24 = self;
  v25 = v71;
  if (!v23)
  {
LABEL_26:
    v45 = [(_MLCANEPlistBuilder *)v24 weightOps];
    v46 = [v45 weightFiles];
    v47 = v24;
    v48 = [v46 count];

    v44 = v67;
    if (v48)
    {
      v49 = [(_MLCANEPlistBuilder *)v47 weightOps];
      v50 = [v49 weightFiles];
      v51 = [v50 copy];
      [v67 setObject:v51 forKeyedSubscript:@"Weights"];
    }

    v52 = [(_MLCANEPlistBuilder *)v47 plist];
    v29 = [v52 objectForKeyedSubscript:@"Networks"];

    [v29 addObject:v21];
    v53 = [(_MLCANEPlistBuilder *)v47 plist];
    [v53 setObject:v67 forKeyedSubscript:v21];

    v54 = [(_MLCANEPlistBuilder *)v47 plist];
    v55 = [v54 objectForKeyedSubscript:@"ProcedureList"];

    [v55 addObject:v18];
    v56 = [v63 deviceOps];
    v57 = [v56 objectAtIndexedSubscript:0];

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
  v66 = v10;
  v64 = v21;
  v70 = v23;
  while (1)
  {
    v29 = [v10 objectAtIndexedSubscript:v28];
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
            v32 = [v31 childLayers];
            v33 = [v32 countByEnumeratingWithState:&v77 objects:v85 count:16];
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
                    objc_enumerationMutation(v32);
                  }

                  v37 = [*(*(&v77 + 1) + 8 * i) deviceOps];
                  v38 = [v37 objectAtIndexedSubscript:0];

                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  v40 = @"Pooling";
                  if (isKindOfClass)
                  {
                    v40 = @"Conv";
                  }

                  v41 = v40;
                  v42 = [v38 units];
                  v43 = ANE_FindUnitWithType(v41, v42);

                  ANE_ApplyPaddingSizes(v29, v43);
                }

                v34 = [v32 countByEnumeratingWithState:&v77 objects:v85 count:16];
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
      v10 = v66;
      v26 = v70;
      v25 = v71;
      v21 = v64;
      v24 = self;
      v28 = v72;
      goto LABEL_25;
    }

    v44 = v67;
    if (![(_MLCANEPlistBuilder *)v24 addWeightsOfLayer:v29 toNetwork:v67])
    {
      break;
    }

    v26 = v70;
    if (![(_MLCANEPlistBuilder *)v24 addUnitsAndInputsAndOutpusOfLayer:v29 toNetwork:v67 toProcedure:v18 operationName:@"op0" liveInputs:v25 liveOutputs:v69])
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

  v9 = v63;
LABEL_33:

  v59 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)releaseWeights
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [(_MLCANEPlistBuilder *)self weightOps];
  [v4 reset];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(_MLCANEPlistBuilder *)self weightTensorsWithDeviceMemory];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) deviceMemory];
        [v10 removeAllObjects];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(_MLCANEPlistBuilder *)self weightTensorsWithDeviceMemory];
  [v11 removeAllObjects];

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