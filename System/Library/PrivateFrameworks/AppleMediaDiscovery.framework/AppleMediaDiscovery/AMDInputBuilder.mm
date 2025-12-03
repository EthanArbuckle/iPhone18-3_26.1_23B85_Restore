@interface AMDInputBuilder
+ (unsigned)getSizeOfDataType:(int64_t)type;
- (AMDInputBuilder)initWithDictionary:(id)dictionary andModelId:(id)id;
- (BOOL)isMatchingShape:(id)shape with:(id)with;
- (BOOL)isValid;
- (id)getGeneralMultiArrayForInput:(id)input withDataType:(int64_t)type andShape:(id)shape withPaddingValue:(id)value usingMetadata:(id)metadata andModelAssets:(id)assets error:(id *)error;
- (id)getHyperParameterInput:(id)input usingMetadata:(id)metadata withInputFeatureDefinition:(id)definition;
- (id)getInputsWithMetadata:(id)metadata andModelAssets:(id)assets error:(id *)error;
- (id)getMinimalCToLMapping;
- (id)getModelInput:(id)input usingMetadata:(id)metadata andModelAssets:(id)assets error:(id *)error;
- (id)getRemapInfoFrom:(id)from andModelAssets:(id)assets;
- (id)getSimpleMultiArrayForInput:(id)input OfSize:(id)size withDataType:(int64_t)type withPaddingValue:(id)value usingMetadata:(id)metadata andModelAssets:(id)assets error:(id *)error;
@end

@implementation AMDInputBuilder

- (AMDInputBuilder)initWithDictionary:(id)dictionary andModelId:(id)id
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v29 = 0;
  objc_storeStrong(&v29, id);
  [(AMDInputBuilder *)selfCopy setModelId:v29];
  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(location[0], "count")}];
  [(AMDInputBuilder *)selfCopy setInputsDefinitions:?];
  MEMORY[0x277D82BD8](v19);
  memset(__b, 0, sizeof(__b));
  v20 = MEMORY[0x277D82BE0](location[0]);
  v21 = [v20 countByEnumeratingWithState:__b objects:v33 count:16];
  if (v21)
  {
    v15 = *__b[2];
    v16 = 0;
    v17 = v21;
    while (1)
    {
      v14 = v16;
      if (*__b[2] != v15)
      {
        objc_enumerationMutation(v20);
      }

      v28 = *(__b[1] + 8 * v16);
      v26 = [location[0] objectForKey:v28];
      v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v26, "count")}];
      memset(v23, 0, sizeof(v23));
      v12 = MEMORY[0x277D82BE0](v26);
      v13 = [v12 countByEnumeratingWithState:v23 objects:v32 count:16];
      if (v13)
      {
        v9 = *v23[2];
        v10 = 0;
        v11 = v13;
        while (1)
        {
          v8 = v10;
          if (*v23[2] != v9)
          {
            objc_enumerationMutation(v12);
          }

          v24 = *(v23[1] + 8 * v10);
          v4 = [InputFeatureDefinition alloc];
          v22 = [(InputFeatureDefinition *)v4 initWithDictionary:v24];
          if ([v22 isValid])
          {
            [v25 addObject:v22];
          }

          objc_storeStrong(&v22, 0);
          ++v10;
          if (v8 + 1 >= v11)
          {
            v10 = 0;
            v11 = [v12 countByEnumeratingWithState:v23 objects:v32 count:16];
            if (!v11)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v12);
      if ([v25 count])
      {
        inputsDefinitions = [(AMDInputBuilder *)selfCopy inputsDefinitions];
        [(NSMutableDictionary *)inputsDefinitions setObject:v25 forKey:v28];
        MEMORY[0x277D82BD8](inputsDefinitions);
      }

      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
      ++v16;
      if (v14 + 1 >= v17)
      {
        v16 = 0;
        v17 = [v20 countByEnumeratingWithState:__b objects:v33 count:16];
        if (!v17)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v20);
  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isValid
{
  inputsDefinitions = [(AMDInputBuilder *)self inputsDefinitions];
  v5 = 0;
  v4 = 0;
  if (inputsDefinitions)
  {
    inputsDefinitions2 = [(AMDInputBuilder *)self inputsDefinitions];
    v5 = 1;
    v4 = [(NSMutableDictionary *)inputsDefinitions2 count]!= 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](inputsDefinitions2);
  }

  MEMORY[0x277D82BD8](inputsDefinitions);
  return v4;
}

- (id)getInputsWithMetadata:(id)metadata andModelAssets:(id)assets error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, metadata);
  v41 = 0;
  objc_storeStrong(&v41, assets);
  errorCopy = error;
  v39 = MEMORY[0x277D82BE0](@"getInputs");
  [AMDPerf startMonitoringEvent:v39];
  v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(location[0], "count")}];
  inputsDefinitions = [(AMDInputBuilder *)selfCopy inputsDefinitions];
  v37 = [(NSMutableDictionary *)inputsDefinitions objectForKey:@"hyperparameters"];
  MEMORY[0x277D82BD8](inputsDefinitions);
  v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
  memset(__b, 0, sizeof(__b));
  v22 = MEMORY[0x277D82BE0](v37);
  v23 = [v22 countByEnumeratingWithState:__b objects:v47 count:16];
  if (v23)
  {
    v16 = *__b[2];
    v17 = 0;
    v18 = v23;
    while (1)
    {
      v15 = v17;
      if (*__b[2] != v16)
      {
        objc_enumerationMutation(v22);
      }

      v35 = *(__b[1] + 8 * v17);
      featureId = [v35 featureId];
      [v36 addObject:featureId];
      v32 = [location[0] objectForKey:featureId];
      v31 = [(AMDInputBuilder *)selfCopy getHyperParameterInput:featureId usingMetadata:v32 withInputFeatureDefinition:v35];
      if (v31)
      {
        [v38 setObject:v31 forKey:featureId];
        v28 = 0;
      }

      else
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          __os_log_helper_16_2_1_8_64(v46, featureId);
          _os_log_error_impl(&dword_240CB9000, log, type, "could not build input array for hyperparameter %@", v46, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v28 = 3;
      }

      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&featureId, 0);
      ++v17;
      if (v15 + 1 >= v18)
      {
        v17 = 0;
        v18 = [v22 countByEnumeratingWithState:__b objects:v47 count:16];
        if (!v18)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v22);
  memset(v26, 0, sizeof(v26));
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = [v12 countByEnumeratingWithState:v26 objects:v45 count:16];
  if (v13)
  {
    v9 = *v26[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*v26[2] != v9)
      {
        objc_enumerationMutation(v12);
      }

      v27 = *(v26[1] + 8 * v10);
      if (([v36 containsObject:v27] & 1) == 0)
      {
        v25 = [location[0] objectForKey:v27];
        v24 = [(AMDInputBuilder *)selfCopy getModelInput:v27 usingMetadata:v25 andModelAssets:v41 error:errorCopy];
        if (!*errorCopy && v24)
        {
          [v38 setObject:v24 forKey:v27];
          v28 = 0;
        }

        else
        {
          v44 = 0;
          v28 = 1;
        }

        objc_storeStrong(&v24, 0);
        objc_storeStrong(&v25, 0);
        if (v28)
        {
          break;
        }
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [v12 countByEnumeratingWithState:v26 objects:v45 count:16];
        if (!v11)
        {
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
LABEL_24:
    v28 = 0;
  }

  MEMORY[0x277D82BD8](v12);
  if (!v28)
  {
    [AMDPerf endMonitoringEvent:v39];
    v5 = objc_alloc(MEMORY[0x277CBFED0]);
    v44 = [v5 initWithDictionary:v38 error:errorCopy];
    v28 = 1;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v44;

  return v6;
}

- (id)getHyperParameterInput:(id)input usingMetadata:(id)metadata withInputFeatureDefinition:(id)definition
{
  v54[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v50 = 0;
  objc_storeStrong(&v50, metadata);
  v49 = 0;
  objc_storeStrong(&v49, definition);
  getSize = [v50 getSize];
  getDataType = [v50 getDataType];
  getPaddingValue = [v50 getPaddingValue];
  featureValues = [v49 featureValues];
  if (getSize && getDataType)
  {
    v54[0] = &unk_2852BB1A8;
    v54[1] = getSize;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    v42 = MEMORY[0x277D82BE0](&unk_2852BC600);
    v41 = [MEMORY[0x277CBEB28] dataWithLength:{+[AMDInputBuilder getSizeOfDataType:](AMDInputBuilder, "getSizeOfDataType:", getDataType) * objc_msgSend(getSize, "intValue")}];
    v40 = 0;
    switch(getDataType)
    {
      case 65568:
        if (getPaddingValue)
        {
          [getPaddingValue floatValue];
          v27 = v7;
        }

        else
        {
          v27 = 0.0;
        }

        v8 = v27;
        v38 = v8;
        intValue = [getSize intValue];
        v9 = v41;
        mutableBytes = [v41 mutableBytes];
        *&v11 = v38;
        [AMDFeature copyFloat32Values:intValue fromArray:featureValues toBuffer:mutableBytes withDefaultValue:0 withRemapDictionary:v11 andPostRemapOperation:?];
        break;
      case 65600:
        if (getPaddingValue)
        {
          [getPaddingValue doubleValue];
          v29 = v5;
        }

        else
        {
          v29 = 0.0;
        }

        v39 = v29;
        intValue2 = [getSize intValue];
        v6 = v41;
        +[AMDFeature copyDoubleValues:fromArray:toBuffer:withDefaultValue:withRemapDictionary:andPostRemapOperation:](AMDFeature, "copyDoubleValues:fromArray:toBuffer:withDefaultValue:withRemapDictionary:andPostRemapOperation:", intValue2, featureValues, [v41 mutableBytes], 0, v29);
        break;
      case 131104:
        if (getPaddingValue)
        {
          intValue3 = [getPaddingValue intValue];
        }

        else
        {
          intValue3 = 0;
        }

        v37 = intValue3;
        intValue4 = [getSize intValue];
        v12 = v41;
        +[AMDFeature copyInt32Values:fromArray:toBuffer:withDefaultValue:withRemapDictionary:andPostRemapOperation:](AMDFeature, "copyInt32Values:fromArray:toBuffer:withDefaultValue:withRemapDictionary:andPostRemapOperation:", intValue4, featureValues, [v41 mutableBytes], intValue3, 0);
        break;
      default:
        v13 = [AMDError allocError:16 withMessage:@"invalid data type for hyperparameter"];
        v14 = v40;
        v40 = v13;
        MEMORY[0x277D82BD8](v14);
        break;
    }

    if (v40)
    {
      v52 = 0;
      v44 = 1;
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x277CBFF48]);
      v15 = v41;
      v35 = 0;
      v23 = [v22 initWithDataPointer:objc_msgSend(v41 shape:"mutableBytes") dataType:v43 strides:getDataType deallocator:v42 error:{0, &v35}];
      objc_storeStrong(&v40, v35);
      v36 = v23;
      if (v40)
      {
        v34 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v33 = 16;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          log = v34;
          type = v33;
          v18 = location[0];
          localizedDescription = [v40 localizedDescription];
          v32 = MEMORY[0x277D82BE0](localizedDescription);
          __os_log_helper_16_2_2_8_64_8_64(v53, v18, v32);
          _os_log_error_impl(&dword_240CB9000, log, type, "Error while initialising for feature %@ input array: %@", v53, 0x16u);
          MEMORY[0x277D82BD8](localizedDescription);
          objc_storeStrong(&v32, 0);
        }

        objc_storeStrong(&v34, 0);
        v52 = 0;
        v44 = 1;
      }

      else
      {
        v52 = MEMORY[0x277D82BE0](v36);
        v44 = 1;
      }

      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v43, 0);
  }

  else
  {
    v52 = 0;
    v44 = 1;
  }

  objc_storeStrong(&featureValues, 0);
  objc_storeStrong(&getPaddingValue, 0);
  objc_storeStrong(&getSize, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v16 = v52;

  return v16;
}

- (id)getModelInput:(id)input usingMetadata:(id)metadata andModelAssets:(id)assets error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v28 = 0;
  objc_storeStrong(&v28, metadata);
  v27 = 0;
  objc_storeStrong(&v27, assets);
  errorCopy = error;
  if (v28)
  {
    getDataType = [v28 getDataType];
    if (getDataType)
    {
      getPaddingValue = [v28 getPaddingValue];
      getShape = [v28 getShape];
      if (getShape)
      {
        v31 = [(AMDInputBuilder *)selfCopy getGeneralMultiArrayForInput:location[0] withDataType:getDataType andShape:getShape withPaddingValue:getPaddingValue usingMetadata:v28 andModelAssets:v27 error:errorCopy];
        v22 = 1;
      }

      else
      {
        getSize = [v28 getSize];
        v31 = [(AMDInputBuilder *)selfCopy getSimpleMultiArrayForInput:location[0] OfSize:getSize withDataType:getDataType withPaddingValue:getPaddingValue usingMetadata:v28 andModelAssets:v27 error:errorCopy];
        v22 = 1;
        objc_storeStrong(&getSize, 0);
      }

      objc_storeStrong(&getShape, 0);
      objc_storeStrong(&getPaddingValue, 0);
    }

    else
    {
      v20 = MEMORY[0x277D82BE0](@"No datatype available, check model metadata");
      v19 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v18 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v32, v20);
        _os_log_error_impl(&dword_240CB9000, v19, v18, "%@", v32, 0xCu);
      }

      objc_storeStrong(&v19, 0);
      v10 = [AMDError allocError:16 withMessage:v20];
      v7 = v10;
      *errorCopy = v10;
      v31 = 0;
      v22 = 1;
      objc_storeStrong(&v20, 0);
    }
  }

  else
  {
    v25 = MEMORY[0x277D82BE0](@"No model metadata available");
    v24 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v33, v25);
      _os_log_error_impl(&dword_240CB9000, v24, v23, "%@", v33, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    v11 = [AMDError allocError:16 withMessage:v25];
    v6 = v11;
    *errorCopy = v11;
    v31 = 0;
    v22 = 1;
    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v8 = v31;

  return v8;
}

- (BOOL)isMatchingShape:(id)shape with:(id)with
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, shape);
  v12 = 0;
  objc_storeStrong(&v12, with);
  v10 = [location[0] count];
  if (v10 == [v12 count])
  {
    for (i = 0; i < [location[0] count]; ++i)
    {
      v6 = [location[0] objectAtIndexedSubscript:i];
      intValue = [v6 intValue];
      v5 = [v12 objectAtIndexedSubscript:i];
      intValue2 = [v5 intValue];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      if (intValue != intValue2)
      {
        v14 = 0;
        goto LABEL_9;
      }
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

LABEL_9:
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v14 & 1;
}

- (id)getGeneralMultiArrayForInput:(id)input withDataType:(int64_t)type andShape:(id)shape withPaddingValue:(id)value usingMetadata:(id)metadata andModelAssets:(id)assets error:(id *)error
{
  v84 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  typeCopy = type;
  v74 = 0;
  objc_storeStrong(&v74, shape);
  v73 = 0;
  objc_storeStrong(&v73, value);
  v72 = 0;
  objc_storeStrong(&v72, metadata);
  v71 = 0;
  objc_storeStrong(&v71, assets);
  errorCopy = error;
  inputsDefinitions = [(AMDInputBuilder *)selfCopy inputsDefinitions];
  v69 = [(NSMutableDictionary *)inputsDefinitions objectForKey:location[0]];
  MEMORY[0x277D82BD8](inputsDefinitions);
  if (v69 && [v69 count] == 1)
  {
    firstObject = [v69 firstObject];
    shape = [firstObject shape];
    v62 = 0;
    v40 = 1;
    if (shape)
    {
      shape2 = [firstObject shape];
      v62 = 1;
      v40 = [shape2 count] == 0;
    }

    if (v62)
    {
      MEMORY[0x277D82BD8](shape2);
    }

    MEMORY[0x277D82BD8](shape);
    if (v40)
    {
      v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty input definition for feature '%@'", location[0]];
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v59 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v82, v61);
        _os_log_error_impl(&dword_240CB9000, oslog, v59, "%@", v82, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v38 = [AMDError allocError:16 withMessage:v61];
      v10 = v38;
      *errorCopy = v38;
      v78 = 0;
      v65 = 1;
      objc_storeStrong(&v61, 0);
    }

    else
    {
      v35 = selfCopy;
      v34 = v74;
      shape3 = [firstObject shape];
      v37 = [(AMDInputBuilder *)v35 isMatchingShape:v34 with:?];
      MEMORY[0x277D82BD8](shape3);
      if (v37)
      {
        featureType = [firstObject featureType];
        v54 = 0;
        v27 = 0;
        if ([featureType isEqual:@"RowSet"])
        {
          columnName = [firstObject columnName];
          v54 = 1;
          v27 = columnName == 0;
        }

        if (v54)
        {
          MEMORY[0x277D82BD8](columnName);
        }

        MEMORY[0x277D82BD8](featureType);
        if (v27)
        {
          v24 = MEMORY[0x277CCACA8];
          featureId = [firstObject featureId];
          v53 = [v24 stringWithFormat:@"Error %@: No column name specified for a feature of type RowSet", featureId];
          MEMORY[0x277D82BD8](featureId);
          v52 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v51 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v80, v53);
            _os_log_error_impl(&dword_240CB9000, v52, v51, "%@", v80, 0xCu);
          }

          objc_storeStrong(&v52, 0);
          v23 = [AMDError allocError:16 withMessage:v53];
          v12 = v23;
          *errorCopy = v23;
          v78 = 0;
          v65 = 1;
          objc_storeStrong(&v53, 0);
        }

        else
        {
          featureProvider = [firstObject featureProvider];
          featureId2 = [firstObject featureId];
          columnName2 = [firstObject columnName];
          v50 = [featureProvider getFeatureWithName:featureId2 withColumn:? error:?];
          MEMORY[0x277D82BD8](columnName2);
          MEMORY[0x277D82BD8](featureId2);
          MEMORY[0x277D82BD8](featureProvider);
          if (!*errorCopy && v50)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v50 setDataType:typeCopy];
              [v50 setShape:v74];
              v16 = [(AMDInputBuilder *)selfCopy getRemapInfoFrom:firstObject andModelAssets:v71];
              [v50 setRemapInfo:?];
              MEMORY[0x277D82BD8](v16);
              v78 = [v50 getMultiArray:errorCopy];
              v65 = 1;
            }

            else
            {
              v18 = MEMORY[0x277CCACA8];
              featureId3 = [firstObject featureId];
              v49 = [v18 stringWithFormat:@"Feature '%@' is not a multi-array, check!", featureId3];
              MEMORY[0x277D82BD8](featureId3);
              v48 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_1_8_64(v79, v49);
                _os_log_error_impl(&dword_240CB9000, v48, OS_LOG_TYPE_ERROR, "%@", v79, 0xCu);
              }

              objc_storeStrong(&v48, 0);
              v17 = [AMDError allocError:16 withMessage:v49];
              v13 = v17;
              *errorCopy = v17;
              v78 = 0;
              v65 = 1;
              objc_storeStrong(&v49, 0);
            }
          }

          else
          {
            v78 = 0;
            v65 = 1;
          }

          objc_storeStrong(&v50, 0);
        }
      }

      else
      {
        v31 = MEMORY[0x277CCACA8];
        v29 = location[0];
        v30 = v74;
        shape4 = [firstObject shape];
        v32 = [v31 stringWithFormat:@"Unexpected shapes of data for feature '%@', expected: %@, got: %@", v29, v30, shape4];
        v58 = [v32 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2852A6E28];
        MEMORY[0x277D82BD8](v32);
        MEMORY[0x277D82BD8](shape4);
        v57 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v56 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v81, v58);
          _os_log_error_impl(&dword_240CB9000, v57, v56, "%@", v81, 0xCu);
        }

        objc_storeStrong(&v57, 0);
        v28 = [AMDError allocError:16 withMessage:v58];
        v11 = v28;
        *errorCopy = v28;
        v78 = 0;
        v65 = 1;
        objc_storeStrong(&v58, 0);
      }
    }

    objc_storeStrong(&firstObject, 0);
  }

  else
  {
    v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing or invalid input definition for feature '%@'", location[0]];
    v67 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v66 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v83, v68);
      _os_log_error_impl(&dword_240CB9000, v67, v66, "%@", v83, 0xCu);
    }

    objc_storeStrong(&v67, 0);
    v41 = [AMDError allocError:16 withMessage:v68];
    v9 = v41;
    *errorCopy = v41;
    v78 = 0;
    v65 = 1;
    objc_storeStrong(&v68, 0);
  }

  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v14 = v78;

  return v14;
}

- (id)getSimpleMultiArrayForInput:(id)input OfSize:(id)size withDataType:(int64_t)type withPaddingValue:(id)value usingMetadata:(id)metadata andModelAssets:(id)assets error:(id *)error
{
  v102 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v94 = 0;
  objc_storeStrong(&v94, size);
  typeCopy = type;
  v92 = 0;
  objc_storeStrong(&v92, value);
  v91 = 0;
  objc_storeStrong(&v91, metadata);
  v90 = 0;
  objc_storeStrong(&v90, assets);
  errorCopy = error;
  inputsDefinitions = [(AMDInputBuilder *)selfCopy inputsDefinitions];
  v88 = [(NSMutableDictionary *)inputsDefinitions objectForKey:location[0]];
  MEMORY[0x277D82BD8](inputsDefinitions);
  if (v88)
  {
    v58 = MEMORY[0x277CBEB28];
    v57 = [AMDInputBuilder getSizeOfDataType:typeCopy];
    v83 = [v58 dataWithLength:{v57 * objc_msgSend(v94, "intValue")}];
    v10 = v83;
    mutableBytes = [v83 mutableBytes];
    memset(__b, 0, sizeof(__b));
    v59 = MEMORY[0x277D82BE0](v88);
    v60 = [v59 countByEnumeratingWithState:__b objects:v100 count:16];
    if (v60)
    {
      v54 = *__b[2];
      v55 = 0;
      v56 = v60;
      while (1)
      {
        v53 = v55;
        if (*__b[2] != v54)
        {
          objc_enumerationMutation(v59);
        }

        v81 = *(__b[1] + 8 * v55);
        columnName = [v81 columnName];
        v78 = 0;
        LOBYTE(v52) = 0;
        if (columnName)
        {
          featureType = [v81 featureType];
          v78 = 1;
          v52 = [featureType isEqual:@"RowSet"] ^ 1;
        }

        if (v78)
        {
          MEMORY[0x277D82BD8](featureType);
        }

        MEMORY[0x277D82BD8](columnName);
        if (v52)
        {
          break;
        }

        featureProvider = [v81 featureProvider];
        featureId = [v81 featureId];
        columnName2 = [v81 columnName];
        v74 = [featureProvider getFeatureWithName:featureId withColumn:? error:?];
        MEMORY[0x277D82BD8](columnName2);
        MEMORY[0x277D82BD8](featureId);
        MEMORY[0x277D82BD8](featureProvider);
        if (!*errorCopy && v74)
        {
          v73 = [(AMDInputBuilder *)selfCopy getRemapInfoFrom:v81 andModelAssets:v90];
          v41 = [v81 size];
          intValue = [v41 intValue];
          MEMORY[0x277D82BD8](v41);
          v72 = intValue;
          if (typeCopy == 65552)
          {
            v97 = 0;
            v84 = 1;
          }

          else
          {
            switch(typeCopy)
            {
              case 65568:
                if (v92)
                {
                  [v92 floatValue];
                  v36 = v13;
                }

                else
                {
                  v36 = 0.0;
                }

                v14 = v36;
                v70 = v14;
                v34 = v74;
                v32 = mutableBytes;
                v33 = v14;
                mapOp = [v81 mapOp];
                *&v16 = v33;
                v35 = mapOp;
                [v34 copyFloat32Values:v72 toBuffer:v32 withDefaultValue:v16 withMapOp:? withRemapDictionary:? andPostRemapOperation:?];
                MEMORY[0x277D82BD8](v35);
                mutableBytes += 4 * v72;
                break;
              case 65600:
                if (v92)
                {
                  [v92 doubleValue];
                  v40 = v12;
                }

                else
                {
                  v40 = 0.0;
                }

                v71 = v40;
                v38 = v74;
                v37 = mutableBytes;
                mapOp2 = [v81 mapOp];
                [v38 copyDoubleValues:v72 toBuffer:v37 withDefaultValue:v40 withMapOp:? withRemapDictionary:? andPostRemapOperation:?];
                MEMORY[0x277D82BD8](mapOp2);
                mutableBytes += 8 * v72;
                break;
              case 131104:
                if (v92)
                {
                  intValue2 = [v92 intValue];
                }

                else
                {
                  intValue2 = 0;
                }

                v69 = intValue2;
                v29 = v74;
                v28 = mutableBytes;
                mapOp3 = [v81 mapOp];
                [v29 copyInt32Values:v72 toBuffer:v28 withDefaultValue:intValue2 withMapOp:? withRemapInfo:? andPostRemapOperation:?];
                MEMORY[0x277D82BD8](mapOp3);
                mutableBytes += 4 * v72;
                break;
            }

            v84 = 0;
          }

          objc_storeStrong(&v73, 0);
        }

        else
        {
          v97 = 0;
          v84 = 1;
        }

        objc_storeStrong(&v74, 0);
        if (v84)
        {
          goto LABEL_44;
        }

        ++v55;
        if (v53 + 1 >= v56)
        {
          v55 = 0;
          v56 = [v59 countByEnumeratingWithState:__b objects:v100 count:16];
          if (!v56)
          {
            goto LABEL_43;
          }
        }
      }

      v49 = MEMORY[0x277CCACA8];
      featureId2 = [v81 featureId];
      v77 = [v49 stringWithFormat:@"Error %@: Column name can only be specified for a feature of type RowSet", featureId2];
      MEMORY[0x277D82BD8](featureId2);
      v76 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v75 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v47 = v76;
        v48 = v75;
        __os_log_helper_16_2_1_8_64(v99, v77);
        _os_log_error_impl(&dword_240CB9000, v47, v48, "%@", v99, 0xCu);
      }

      objc_storeStrong(&v76, 0);
      v46 = [AMDError allocError:16 withMessage:v77];
      v11 = v46;
      *errorCopy = v46;
      v97 = 0;
      v84 = 1;
      objc_storeStrong(&v77, 0);
    }

    else
    {
LABEL_43:
      v84 = 0;
    }

LABEL_44:
    MEMORY[0x277D82BD8](v59);
    if (!v84)
    {
      v22 = location[0];
      v21 = v83;
      v17 = v83;
      mutableBytes2 = [v21 mutableBytes];
      +[AMDMiscHelpers printInput:withRawData:withType:andSize:](AMDMiscHelpers, "printInput:withRawData:withType:andSize:", v22, mutableBytes2, typeCopy, [v94 intValue]);
      v26 = objc_alloc(MEMORY[0x277CBFF48]);
      v24 = v83;
      v18 = v83;
      mutableBytes3 = [v24 mutableBytes];
      v98[0] = &unk_2852BB1A8;
      v98[1] = v94;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:2];
      v68 = [v26 initWithDataPointer:mutableBytes3 shape:? dataType:? strides:? deallocator:? error:?];
      MEMORY[0x277D82BD8](v27);
      if (*errorCopy)
      {
        v97 = 0;
      }

      else
      {
        v97 = MEMORY[0x277D82BE0](v68);
      }

      v84 = 1;
      objc_storeStrong(&v68, 0);
    }

    objc_storeStrong(&v83, 0);
  }

  else
  {
    v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"No input definition for feature '%@'", location[0]];
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v101, v87);
      _os_log_error_impl(&dword_240CB9000, oslog, type, "%@", v101, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v61 = [AMDError allocError:16 withMessage:v87];
    v9 = v61;
    *errorCopy = v61;
    v97 = 0;
    v84 = 1;
    objc_storeStrong(&v87, 0);
  }

  objc_storeStrong(&v88, 0);
  objc_storeStrong(&v90, 0);
  objc_storeStrong(&v91, 0);
  objc_storeStrong(&v92, 0);
  objc_storeStrong(&v94, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v19 = v97;

  return v19;
}

- (id)getRemapInfoFrom:(id)from andModelAssets:(id)assets
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  v13 = 0;
  objc_storeStrong(&v13, assets);
  remapDictionaryId = [location[0] remapDictionaryId];
  v11 = 0;
  LOBYTE(v8) = 1;
  if (remapDictionaryId)
  {
    remapDictionaryId2 = [location[0] remapDictionaryId];
    v11 = 1;
    v8 = [remapDictionaryId2 isEqualToString:0x2852AD2E8] ^ 1;
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](remapDictionaryId2);
  }

  MEMORY[0x277D82BD8](remapDictionaryId);
  if (v8)
  {
    getContentToLogicalMap = 0;
    v10 = 1;
  }

  else if (([v13 getMinimalMapPresent] & 1) == 0 || ((v9 = -[AMDInputBuilder getMinimalCToLMapping](selfCopy, "getMinimalCToLMapping")) == 0 ? (v10 = 0) : (getContentToLogicalMap = MEMORY[0x277D82BE0](v9), v10 = 1), objc_storeStrong(&v9, 0), !v10))
  {
    getContentToLogicalMap = [v13 getContentToLogicalMap];
    v10 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  v4 = getContentToLogicalMap;

  return v4;
}

+ (unsigned)getSizeOfDataType:(int64_t)type
{
  switch(type)
  {
    case 65552:
      return 2;
    case 65568:
      return 4;
    case 65600:
      return 8;
    case 131104:
      return 4;
  }

  return 0;
}

- (id)getMinimalCToLMapping
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v13[1] = a2;
  modelId = [(AMDInputBuilder *)self modelId];
  MEMORY[0x277D82BD8](modelId);
  if (modelId)
  {
    v13[0] = 0;
    v5 = MEMORY[0x277CCACA8];
    modelId2 = [(AMDInputBuilder *)selfCopy modelId];
    v12 = [v5 stringWithFormat:@"%@%@", 0x2852B10E8, modelId2];
    MEMORY[0x277D82BD8](modelId2);
    v10 = v13[0];
    v7 = [AMDTasteProfile getFeatureValueWithName:v12 inDomain:@"apps" error:&v10];
    objc_storeStrong(v13, v10);
    v11 = v7;
    if (v7)
    {
      v9 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        modelId3 = [(AMDInputBuilder *)selfCopy modelId];
        __os_log_helper_16_2_1_8_64(v16, modelId3);
        _os_log_debug_impl(&dword_240CB9000, v9, OS_LOG_TYPE_DEBUG, "Content to logical id map for model '%@' found", v16, 0xCu);
        MEMORY[0x277D82BD8](modelId3);
      }

      objc_storeStrong(&v9, 0);
    }

    v15 = MEMORY[0x277D82BE0](v11);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(v13, 0);
  }

  else
  {
    v15 = 0;
  }

  *MEMORY[0x277D85DE8];
  v2 = v15;

  return v2;
}

@end