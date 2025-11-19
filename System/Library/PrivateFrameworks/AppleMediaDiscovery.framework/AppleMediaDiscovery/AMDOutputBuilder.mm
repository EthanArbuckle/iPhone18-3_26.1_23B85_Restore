@interface AMDOutputBuilder
- (AMDOutputBuilder)initWithDictionary:(id)a3 forUseCase:(id)a4;
- (BOOL)isValid;
- (id)convertMultiArray:(id)a3 withShape:(id)a4 atDepth:(unsigned int)a5 withKey:(id)a6 withScoreThreshold:(double)a7 error:(id *)a8;
- (id)createHeapOfType:(int64_t)a3 withCapacity:(unint64_t)a4;
- (id)generateMappingDictionary:(id)a3;
- (id)getAllFeatureIds;
- (id)getOutputfor:(id)a3 FromMLProvider:(id)a4 andModelAssets:(id)a5 withColdstartModelId:(id)a6 topN:(unint64_t)a7 error:(id *)a8;
- (id)getPredictions:(unint64_t)a3 fromMLProvider:(id)a4 andModelAssets:(id)a5 withColdstartModelId:(id)a6 error:(id *)a7;
- (id)getRemapDictFor:(id)a3 withModelAssets:(id)a4;
- (id)getTopN:(unint64_t)a3 idsAndScoresFrom:(id)a4 withMappingDictionary:(id)a5 withType:(int64_t)a6;
- (id)mapInferenceOutputsToIds:(id)a3 withRemapData:(id)a4 error:(id *)a5;
- (id)postProcessInferenceOutput:(id)a3 withOperations:(id)a4 error:(id *)a5;
- (id)process2DMultiArray:(id)a3 shapeLength:(unsigned int)a4 withDataType:(int64_t)a5 withOutputDefinition:(id)a6 andModelAssets:(id)a7 withColdstartModelId:(id)a8 idsOnly:(BOOL)a9 inferenceMode:(id)a10 error:(id *)a11;
- (id)processArrayOutput:(id)a3 withDataType:(int64_t)a4 withOutputDefinition:(id)a5 andModelAssets:(id)a6 withColdstartModelId:(id)a7 idsOnly:(BOOL)a8 error:(id *)a9;
- (id)processMultiArrayModelOutput:(id)a3 withOutputDefinition:(id)a4 FromMLProvider:(id)a5 andModelAssets:(id)a6 withColdstartModelId:(id)a7 withTopN:(unint64_t)a8 error:(id *)a9;
@end

@implementation AMDOutputBuilder

- (AMDOutputBuilder)initWithDictionary:(id)a3 forUseCase:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v4 = v24;
  v24 = 0;
  v21.receiver = v4;
  v21.super_class = AMDOutputBuilder;
  v24 = [(AMDOutputBuilder *)&v21 init];
  objc_storeStrong(&v24, v24);
  [(AMDOutputBuilder *)v24 setUseCaseId:v22];
  v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(location[0], "count")}];
  [(AMDOutputBuilder *)v24 setOutputDefinitions:?];
  MEMORY[0x277D82BD8](v14);
  memset(__b, 0, sizeof(__b));
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = [v15 countByEnumeratingWithState:__b objects:v25 count:16];
  if (v16)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v16;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(__b[1] + 8 * v11);
      v18 = [location[0] objectForKey:v20];
      v5 = [OutputDefinition alloc];
      v17 = [(OutputDefinition *)v5 initWithOutputDefinitionDictionary:v18];
      if ([v17 isValid])
      {
        v8 = [(AMDOutputBuilder *)v24 outputDefinitions];
        [(NSMutableDictionary *)v8 setObject:v17 forKey:v20];
        MEMORY[0x277D82BD8](v8);
      }

      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [v15 countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v15);
  v7 = MEMORY[0x277D82BE0](v24);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v24, 0);
  *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isValid
{
  v3 = [(AMDOutputBuilder *)self outputDefinitions];
  v5 = 0;
  v4 = 0;
  if (v3)
  {
    v6 = [(AMDOutputBuilder *)self outputDefinitions];
    v5 = 1;
    v4 = [(NSMutableDictionary *)v6 count]!= 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (id)getAllFeatureIds
{
  v38 = *MEMORY[0x277D85DE8];
  v34 = self;
  v33[1] = a2;
  v33[0] = objc_alloc_init(MEMORY[0x277CBEB58]);
  memset(__b, 0, sizeof(__b));
  obj = [(AMDOutputBuilder *)v34 outputDefinitions];
  v20 = [(NSMutableDictionary *)obj countByEnumeratingWithState:__b objects:v37 count:16];
  if (v20)
  {
    v16 = *__b[2];
    v17 = 0;
    v18 = v20;
    while (1)
    {
      v15 = v17;
      if (*__b[2] != v16)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(__b[1] + 8 * v17);
      v13 = [(AMDOutputBuilder *)v34 outputDefinitions];
      v30 = [(NSMutableDictionary *)v13 objectForKey:v32];
      MEMORY[0x277D82BD8](v13);
      v14 = [v30 modifiers];
      MEMORY[0x277D82BD8](v14);
      if (v14)
      {
        memset(v27, 0, sizeof(v27));
        v11 = [v30 modifiers];
        v12 = [v11 countByEnumeratingWithState:v27 objects:v36 count:16];
        if (v12)
        {
          v8 = *v27[2];
          v9 = 0;
          v10 = v12;
          while (1)
          {
            v7 = v9;
            if (*v27[2] != v8)
            {
              objc_enumerationMutation(v11);
            }

            v28 = *(v27[1] + 8 * v9);
            v26 = [v28 objectForKey:@"feature_ids"];
            location = [v28 objectForKey:@"js_method_name"];
            if (location)
            {
              if (v26)
              {
                [v33[0] addObjectsFromArray:v26];
                v29 = 0;
              }

              else
              {
                v21 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v4 = v21;
                  __os_log_helper_16_2_1_8_64(v35, location);
                  _os_log_error_impl(&dword_240CB9000, v4, OS_LOG_TYPE_ERROR, "Nil feature ids provided for js method: %@", v35, 0xCu);
                }

                objc_storeStrong(&v21, 0);
                v29 = 5;
              }
            }

            else
            {
              oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              type = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
              {
                log = oslog;
                v6 = type;
                __os_log_helper_16_0_0(v22);
                _os_log_error_impl(&dword_240CB9000, log, v6, "Nil js feature name provided in modifier", v22, 2u);
              }

              objc_storeStrong(&oslog, 0);
              v29 = 5;
            }

            objc_storeStrong(&location, 0);
            objc_storeStrong(&v26, 0);
            ++v9;
            if (v7 + 1 >= v10)
            {
              v9 = 0;
              v10 = [v11 countByEnumeratingWithState:v27 objects:v36 count:16];
              if (!v10)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v11);
        v29 = 0;
      }

      else
      {
        v29 = 3;
      }

      objc_storeStrong(&v30, 0);
      ++v17;
      if (v15 + 1 >= v18)
      {
        v17 = 0;
        v18 = [(NSMutableDictionary *)obj countByEnumeratingWithState:__b objects:v37 count:16];
        if (!v18)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v3 = MEMORY[0x277D82BE0](v33[0]);
  v29 = 1;
  objc_storeStrong(v33, 0);
  *MEMORY[0x277D85DE8];

  return v3;
}

- (id)getPredictions:(unint64_t)a3 fromMLProvider:(id)a4 andModelAssets:(id)a5 withColdstartModelId:(id)a6 error:(id *)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v44 = self;
  v43 = a2;
  v42 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v40 = 0;
  objc_storeStrong(&v40, a5);
  v39 = 0;
  objc_storeStrong(&v39, a6);
  v38 = a7;
  if ([(AMDOutputBuilder *)v44 isValid])
  {
    v22 = MEMORY[0x277CBEB38];
    v23 = [(AMDOutputBuilder *)v44 outputDefinitions];
    v36 = [v22 dictionaryWithCapacity:{-[NSMutableDictionary count](v23, "count")}];
    MEMORY[0x277D82BD8](v23);
    memset(__b, 0, sizeof(__b));
    v24 = [(AMDOutputBuilder *)v44 outputDefinitions];
    v25 = [(NSMutableDictionary *)v24 countByEnumeratingWithState:__b objects:v46 count:16];
    if (v25)
    {
      v19 = *__b[2];
      v20 = 0;
      v21 = v25;
      while (1)
      {
        v18 = v20;
        if (*__b[2] != v19)
        {
          objc_enumerationMutation(v24);
        }

        v35 = *(__b[1] + 8 * v20);
        v17 = [(AMDOutputBuilder *)v44 outputDefinitions];
        v33 = [(NSMutableDictionary *)v17 objectForKey:v35];
        MEMORY[0x277D82BD8](v17);
        v32 = [(AMDOutputBuilder *)v44 getOutputfor:v33 FromMLProvider:location andModelAssets:v40 withColdstartModelId:v39 topN:v42 error:v38];
        if (*v38)
        {
          v45 = 0;
          v37 = 1;
        }

        else
        {
          v15 = [v33 nativePostprocessingOperations];
          v16 = 0;
          if (v15)
          {
            v16 = v32 != 0;
          }

          MEMORY[0x277D82BD8](v15);
          if (!v16)
          {
            goto LABEL_36;
          }

          v13 = v44;
          v12 = v32;
          v14 = [v33 nativePostprocessingOperations];
          v7 = [AMDOutputBuilder postProcessInferenceOutput:v13 withOperations:"postProcessInferenceOutput:withOperations:error:" error:v12];
          v8 = v32;
          v32 = v7;
          MEMORY[0x277D82BD8](v8);
          MEMORY[0x277D82BD8](v14);
          if (*v38)
          {
            v45 = 0;
            v37 = 1;
          }

          else
          {
LABEL_36:
            if (v32 && !*v38)
            {
              [v36 setObject:v32 forKey:v35];
            }

            v37 = 0;
          }
        }

        objc_storeStrong(&v32, 0);
        objc_storeStrong(&v33, 0);
        if (v37)
        {
          break;
        }

        ++v20;
        if (v18 + 1 >= v21)
        {
          v20 = 0;
          v21 = [(NSMutableDictionary *)v24 countByEnumeratingWithState:__b objects:v46 count:16];
          if (!v21)
          {
            goto LABEL_21;
          }
        }
      }
    }

    else
    {
LABEL_21:
      v37 = 0;
    }

    MEMORY[0x277D82BD8](v24);
    if (!v37)
    {
      v31 = [AMDFeatureProvider getProviderForSource:0x2852AB488 WithDomain:0];
      v11 = [(AMDOutputBuilder *)v44 useCaseId];
      v30 = [v31 fetchOutputRemapDictForUsecase:?];
      MEMORY[0x277D82BD8](v11);
      if (v30)
      {
        v29 = [(AMDOutputBuilder *)v44 mapInferenceOutputsToIds:v36 withRemapData:v30 error:v38];
        if (*v38)
        {
          v45 = 0;
        }

        else
        {
          v45 = MEMORY[0x277D82BE0](v29);
        }

        v37 = 1;
        objc_storeStrong(&v29, 0);
      }

      else
      {
        v45 = MEMORY[0x277D82BE0](v36);
        v37 = 1;
      }

      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v36, 0);
  }

  else
  {
    v45 = 0;
    v37 = 1;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v45;

  return v9;
}

- (id)postProcessInferenceOutput:(id)a3 withOperations:(id)a4 error:(id *)a5
{
  v58 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v47 = 0;
  objc_storeStrong(&v47, a4);
  v46 = a5;
  memset(__b, 0, sizeof(__b));
  v32 = MEMORY[0x277D82BE0](v47);
  v33 = [v32 countByEnumeratingWithState:__b objects:v57 count:16];
  if (v33)
  {
    v27 = *__b[2];
    v28 = 0;
    v29 = v33;
    while (1)
    {
      v26 = v28;
      if (*__b[2] != v27)
      {
        objc_enumerationMutation(v32);
      }

      v45 = *(__b[1] + 8 * v28);
      v43 = [v45 objectForKey:@"operation"];
      if (v43)
      {
        if ([v43 isEqualToString:@"vectorSearch"])
        {
          v41 = [v45 objectForKey:@"dbName"];
          if (v41)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = MEMORY[0x277D82BE0](location[0]);
              v21 = [v40 firstObject];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              MEMORY[0x277D82BD8](v21);
              if ((isKindOfClass & 1) == 0)
              {
                v20 = [AMDMiscHelpers logAndCreateError:16 errorMessage:@"vector search can only be applied for post-processing on batched inputs"];
                v8 = v20;
                *v46 = v20;
              }

              v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
              memset(v37, 0, sizeof(v37));
              v18 = MEMORY[0x277D82BE0](v40);
              v19 = [v18 countByEnumeratingWithState:v37 objects:v56 count:16];
              if (v19)
              {
                v15 = *v37[2];
                v16 = 0;
                v17 = v19;
                while (1)
                {
                  v14 = v16;
                  if (*v37[2] != v15)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v38 = *(v37[1] + 8 * v16);
                  v54 = @"queryVector";
                  v55 = v38;
                  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:?];
                  v52[0] = @"vectorDBConfig";
                  v50 = @"dbName";
                  v51 = v41;
                  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
                  v53[0] = v13;
                  v52[1] = @"queryDict";
                  v53[1] = v36;
                  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
                  MEMORY[0x277D82BD8](v13);
                  v34 = [_TtC19AppleMediaDiscovery18AMDVectorDBManager runVectorDBSearchWithSearchPayload:v35 error:v46];
                  if (*v46)
                  {
                    v49 = 0;
                    v42 = 1;
                  }

                  else
                  {
                    [v39 addObject:v34];
                    v42 = 0;
                  }

                  objc_storeStrong(&v34, 0);
                  objc_storeStrong(&v35, 0);
                  objc_storeStrong(&v36, 0);
                  if (v42)
                  {
                    break;
                  }

                  ++v16;
                  if (v14 + 1 >= v17)
                  {
                    v16 = 0;
                    v17 = [v18 countByEnumeratingWithState:v37 objects:v56 count:16];
                    if (!v17)
                    {
                      goto LABEL_24;
                    }
                  }
                }
              }

              else
              {
LABEL_24:
                v42 = 0;
              }

              MEMORY[0x277D82BD8](v18);
              if (!v42)
              {
                objc_storeStrong(location, v39);
                v42 = 0;
              }

              objc_storeStrong(&v39, 0);
              objc_storeStrong(&v40, 0);
            }

            else
            {
              v23 = [AMDMiscHelpers logAndCreateError:16 errorMessage:@"vector search can only run on model outputs of type array"];
              v7 = v23;
              *v46 = v23;
              v49 = 0;
              v42 = 1;
            }
          }

          else
          {
            v24 = [AMDMiscHelpers logAndCreateError:16 errorMessage:@"dbName missing in post processing config for vector search"];
            v6 = v24;
            *v46 = v24;
            v49 = 0;
            v42 = 1;
          }

          objc_storeStrong(&v41, 0);
          if (!v42)
          {
            v42 = 0;
          }
        }

        else
        {
          v12 = [AMDMiscHelpers logAndCreateError:16 errorMessage:@"Unrecognized operation passed for inference post processing. vectorSearch is the only supported operation."];
          v9 = v12;
          *v46 = v12;
          v49 = 0;
          v42 = 1;
        }
      }

      else
      {
        v25 = [AMDMiscHelpers logAndCreateError:16 errorMessage:@"Operation key missing in inference post processing config"];
        v5 = v25;
        *v46 = v25;
        v49 = 0;
        v42 = 1;
      }

      objc_storeStrong(&v43, 0);
      if (v42)
      {
        break;
      }

      ++v28;
      if (v26 + 1 >= v29)
      {
        v28 = 0;
        v29 = [v32 countByEnumeratingWithState:__b objects:v57 count:16];
        if (!v29)
        {
          goto LABEL_34;
        }
      }
    }
  }

  else
  {
LABEL_34:
    v42 = 0;
  }

  MEMORY[0x277D82BD8](v32);
  if (!v42)
  {
    v49 = MEMORY[0x277D82BE0](location[0]);
    v42 = 1;
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v10 = v49;

  return v10;
}

- (id)mapInferenceOutputsToIds:(id)a3 withRemapData:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = a5;
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(__b, 0, sizeof(__b));
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17 = [v16 countByEnumeratingWithState:__b objects:v34 count:16];
  if (v17)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v17;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(v16);
      }

      v28 = *(__b[1] + 8 * v12);
      v26 = [location[0] objectForKey:v28];
      v25 = [v31 objectForKey:v28];
      if (v25)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = MEMORY[0x277D82BE0](v26);
          v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
          for (i = 0; ; ++i)
          {
            v8 = i;
            if (v8 >= [v25 count])
            {
              break;
            }

            v19 = [v22 objectAtIndex:i];
            v18 = [v25 objectAtIndex:i];
            [v21 setObject:v19 forKey:v18];
            objc_storeStrong(&v18, 0);
            objc_storeStrong(&v19, 0);
          }

          [v29 setObject:v21 forKey:v28];
          objc_storeStrong(&v21, 0);
          objc_storeStrong(&v22, 0);
          v24 = 0;
        }

        else
        {
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Output mapping is only supported for arrays"];
          v9 = [AMDError allocError:16 withMessage:v23];
          v5 = v9;
          *v30 = v9;
          v33 = 0;
          v24 = 1;
          objc_storeStrong(&v23, 0);
        }
      }

      else
      {
        [v29 setObject:v26 forKey:v28];
        v24 = 3;
      }

      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
      if (v24)
      {
        if (v24 != 3)
        {
          break;
        }
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [v16 countByEnumeratingWithState:__b objects:v34 count:16];
        if (!v13)
        {
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
LABEL_17:
    v24 = 0;
  }

  MEMORY[0x277D82BD8](v16);
  if (!v24)
  {
    v33 = MEMORY[0x277D82BE0](v29);
    v24 = 1;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v33;

  return v6;
}

- (id)getOutputfor:(id)a3 FromMLProvider:(id)a4 andModelAssets:(id)a5 withColdstartModelId:(id)a6 topN:(unint64_t)a7 error:(id *)a8
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34 = 0;
  objc_storeStrong(&v34, a5);
  v33 = 0;
  objc_storeStrong(&v33, a6);
  v32 = a7;
  v31 = a8;
  v25 = v35;
  v26 = [location[0] modelOutputName];
  v30 = [v25 featureValueForName:?];
  MEMORY[0x277D82BD8](v26);
  if (v30)
  {
    v16 = [v30 type];
    switch(v16)
    {
      case 1:
        v38 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v30, "int64Value")}];
        v28 = 1;
        break;
      case 2:
        v15 = MEMORY[0x277CCABB0];
        [v30 doubleValue];
        v38 = [v15 numberWithDouble:?];
        v28 = 1;
        break;
      case 3:
        v38 = [v30 stringValue];
        v28 = 1;
        break;
      case 5:
        v13 = v37;
        v14 = [v30 multiArrayValue];
        v38 = [AMDOutputBuilder processMultiArrayModelOutput:v13 withOutputDefinition:"processMultiArrayModelOutput:withOutputDefinition:FromMLProvider:andModelAssets:withColdstartModelId:withTopN:error:" FromMLProvider:v31 andModelAssets:? withColdstartModelId:? withTopN:? error:?];
        MEMORY[0x277D82BD8](v14);
        v28 = 1;
        break;
      case 6:
        v38 = [v30 dictionaryValue];
        v28 = 1;
        break;
      default:
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid output type specified for the model"];
        v12 = [AMDError allocError:16 withMessage:v27];
        v9 = v12;
        *v31 = v12;
        v38 = 0;
        v28 = 1;
        objc_storeStrong(&v27, 0);
        break;
    }
  }

  else
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [location[0] modelOutputName];
    v29 = [v17 stringWithFormat:@"Nil model output obtained for: %@", v18];
    MEMORY[0x277D82BD8](v18);
    v19 = [AMDError allocError:15 withMessage:v29];
    v8 = v19;
    *v31 = v19;
    v38 = 0;
    v28 = 1;
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  v10 = v38;

  return v10;
}

- (id)processMultiArrayModelOutput:(id)a3 withOutputDefinition:(id)a4 FromMLProvider:(id)a5 andModelAssets:(id)a6 withColdstartModelId:(id)a7 withTopN:(unint64_t)a8 error:(id *)a9
{
  v46 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = 0;
  objc_storeStrong(&v44, a4);
  v43 = 0;
  objc_storeStrong(&v43, a5);
  v42 = 0;
  objc_storeStrong(&v42, a6);
  v41 = 0;
  objc_storeStrong(&v41, a7);
  v40 = a8;
  v39 = a9;
  v38 = 0.0;
  v32 = [v44 scoreThresholdAsMultipleOfRandomScore];
  MEMORY[0x277D82BD8](v32);
  if (v32)
  {
    v26 = [v44 scoreThresholdAsMultipleOfRandomScore];
    [v26 doubleValue];
    v38 = v9;
    MEMORY[0x277D82BD8](v26);
  }

  v37 = [location[0] shape];
  v24 = v46;
  v23 = location[0];
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = [AMDOutputBuilder convertMultiArray:v24 withShape:"convertMultiArray:withShape:atDepth:withKey:withScoreThreshold:error:" atDepth:v23 withKey:v37 withScoreThreshold:0 error:v38];
  MEMORY[0x277D82BD8](v25);
  v35 = [v44 mode];
  if (!v35)
  {
    objc_storeStrong(&v35, @"values");
  }

  if ([v35 isEqualToString:@"top_n"] & 1) != 0 || (objc_msgSend(v35, "isEqualToString:", @"idsAndScores"))
  {
    v22 = v46;
    v20 = v36;
    v21 = [v37 count];
    v10 = [location[0] dataType];
    LOBYTE(v15) = 0;
    v47 = [(AMDOutputBuilder *)v22 process2DMultiArray:v20 shapeLength:v21 withDataType:v10 withOutputDefinition:v44 andModelAssets:v42 withColdstartModelId:v41 idsOnly:v15 inferenceMode:v35 error:v39];
    v34 = 1;
  }

  else if ([v35 isEqualToString:@"idsOnly"])
  {
    v19 = v46;
    v17 = v36;
    v18 = [v37 count];
    v11 = [location[0] dataType];
    LOBYTE(v15) = 1;
    v47 = [(AMDOutputBuilder *)v19 process2DMultiArray:v17 shapeLength:v18 withDataType:v11 withOutputDefinition:v44 andModelAssets:v42 withColdstartModelId:v41 idsOnly:v15 inferenceMode:v35 error:v39];
    v34 = 1;
  }

  else if ([v35 isEqualToString:@"values"])
  {
    v47 = MEMORY[0x277D82BE0](v36);
    v34 = 1;
  }

  else
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized inference mode: %@ passed in the workflow", v35];
    v16 = [AMDError allocError:16 withMessage:v33];
    v12 = v16;
    *v39 = v16;
    v47 = 0;
    v34 = 1;
    objc_storeStrong(&v33, 0);
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  v13 = v47;

  return v13;
}

- (id)process2DMultiArray:(id)a3 shapeLength:(unsigned int)a4 withDataType:(int64_t)a5 withOutputDefinition:(id)a6 andModelAssets:(id)a7 withColdstartModelId:(id)a8 idsOnly:(BOOL)a9 inferenceMode:(id)a10 error:(id *)a11
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = a4;
  v33[1] = a5;
  v33[0] = 0;
  objc_storeStrong(v33, a6);
  v32 = 0;
  objc_storeStrong(&v32, a7);
  v31 = 0;
  objc_storeStrong(&v31, a8);
  v30 = a9;
  v29 = 0;
  objc_storeStrong(&v29, a10);
  v28 = a11;
  if (v34 == 2)
  {
    v25 = [location[0] count];
    v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v25];
    for (i = 0; i < v25; ++i)
    {
      v14 = v36;
      v15 = [location[0] objectAtIndex:i];
      v22 = [AMDOutputBuilder processArrayOutput:v14 withDataType:"processArrayOutput:withDataType:withOutputDefinition:andModelAssets:withColdstartModelId:idsOnly:error:" withOutputDefinition:v28 andModelAssets:? withColdstartModelId:? idsOnly:? error:?];
      MEMORY[0x277D82BD8](v15);
      [v24 addObject:v22];
      objc_storeStrong(&v22, 0);
    }

    if (v25 == 1)
    {
      v37 = [v24 firstObject];
    }

    else
    {
      v37 = MEMORY[0x277D82BE0](v24);
    }

    v26 = 1;
    objc_storeStrong(&v24, 0);
  }

  else
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid output shape for mode %@: %u", v29, v34];
    v16 = [AMDError allocError:16 withMessage:v27];
    v11 = v16;
    *v28 = v16;
    v37 = 0;
    v26 = 1;
    objc_storeStrong(&v27, 0);
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(v33, 0);
  objc_storeStrong(location, 0);
  v12 = v37;

  return v12;
}

- (id)processArrayOutput:(id)a3 withDataType:(int64_t)a4 withOutputDefinition:(id)a5 andModelAssets:(id)a6 withColdstartModelId:(id)a7 idsOnly:(BOOL)a8 error:(id *)a9
{
  v56 = *MEMORY[0x277D85DE8];
  v53 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v51 = a4;
  v50 = 0;
  objc_storeStrong(&v50, a5);
  v49 = 0;
  objc_storeStrong(&v49, a6);
  v48 = 0;
  objc_storeStrong(&v48, a7);
  v47 = a8;
  v46 = a9;
  v9 = [v50 remapDictionaryId];
  v37 = v9 != 0;
  MEMORY[0x277D82BD8](v9);
  v45 = v37;
  v44 = [(AMDOutputBuilder *)v53 getRemapDictFor:v50 withModelAssets:v49];
  if (!v37 || v44)
  {
    if (v47)
    {
      if (v45)
      {
        v26 = objc_alloc(MEMORY[0x277CBEB18]);
        v41 = [v26 initWithCapacity:{objc_msgSend(location[0], "count")}];
        memset(__b, 0, sizeof(__b));
        v27 = MEMORY[0x277D82BE0](location[0]);
        v28 = [v27 countByEnumeratingWithState:__b objects:v55 count:16];
        if (v28)
        {
          v23 = *__b[2];
          v24 = 0;
          v25 = v28;
          while (1)
          {
            v22 = v24;
            if (*__b[2] != v23)
            {
              objc_enumerationMutation(v27);
            }

            v40 = *(__b[1] + 8 * v24);
            v20 = v41;
            v21 = [v44 objectForKey:v40];
            [v20 addObject:?];
            MEMORY[0x277D82BD8](v21);
            ++v24;
            if (v22 + 1 >= v25)
            {
              v24 = 0;
              v25 = [v27 countByEnumeratingWithState:__b objects:v55 count:16];
              if (!v25)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v27);
        v54 = MEMORY[0x277D82BE0](v41);
        v42 = 1;
        objc_storeStrong(&v41, 0);
      }

      else
      {
        v54 = MEMORY[0x277D82BE0](location[0]);
        v42 = 1;
      }
    }

    else
    {
      v38 = [AMDColdstartOperation computeUpdatedScoresV2:location[0] withModel:v48 andMappingDictionary:v44];
      if (v38)
      {
        v11 = [v38 objectForKey:@"recomputedScores"];
        v12 = location[0];
        location[0] = v11;
        MEMORY[0x277D82BD8](v12);
        v13 = [v38 objectForKey:@"updatedRemapdict"];
        v14 = v44;
        v44 = v13;
        MEMORY[0x277D82BD8](v14);
      }

      v18 = v53;
      v19 = [v50 modelTopN];
      v15 = [v19 unsignedLongValue];
      v54 = [(AMDOutputBuilder *)v18 getTopN:v15 idsAndScoresFrom:location[0] withMappingDictionary:v44 withType:v51];
      MEMORY[0x277D82BD8](v19);
      v42 = 1;
      objc_storeStrong(&v38, 0);
    }
  }

  else
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = [v50 modelOutputName];
    v43 = [v29 stringWithFormat:@"Remap dictionary absent for output: %@", v30];
    MEMORY[0x277D82BD8](v30);
    v31 = [AMDError allocError:15 withMessage:v43];
    v10 = v31;
    *v46 = v31;
    v54 = 0;
    v42 = 1;
    objc_storeStrong(&v43, 0);
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v16 = v54;

  return v16;
}

- (id)getTopN:(unint64_t)a3 idsAndScoresFrom:(id)a4 withMappingDictionary:(id)a5 withType:(int64_t)a6
{
  v58 = *MEMORY[0x277D85DE8];
  v53 = self;
  v52 = a2;
  v51 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v49 = 0;
  objc_storeStrong(&v49, a5);
  v48[1] = a6;
  v48[0] = [(AMDOutputBuilder *)v53 createHeapOfType:a6 withCapacity:v51];
  v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:v51];
  v46 = [MEMORY[0x277CBEB18] arrayWithCapacity:v51];
  for (i = 0; ; ++i)
  {
    v34 = i;
    if (v34 >= [location count])
    {
      break;
    }

    v44 = [location objectAtIndex:i];
    v32 = [MEMORY[0x277CCA980] notANumber];
    v33 = [v32 isEqualToNumber:v44];
    MEMORY[0x277D82BD8](v32);
    if ((v33 & 1) == 0)
    {
      v40 = 0;
      if (v49)
      {
        v28 = v49;
        v29 = [MEMORY[0x277CCABB0] numberWithInt:i];
        v6 = [v28 objectForKey:?];
        v7 = v40;
        v40 = v6;
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v29);
        if (!v40)
        {
          v41 = 4;
LABEL_13:
          objc_storeStrong(&v40, 0);
          goto LABEL_14;
        }
      }

      else
      {
        v8 = [MEMORY[0x277CCABB0] numberWithInt:i];
        v9 = v40;
        v40 = v8;
        MEMORY[0x277D82BD8](v9);
      }

      v10 = [AMDPair alloc];
      v39 = [(AMDPair *)v10 initWith:v40 and:v44];
      [v48[0] add:v39];
      objc_storeStrong(&v39, 0);
      v41 = 0;
      goto LABEL_13;
    }

    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v31 = type;
      __os_log_helper_16_0_1_4_0(v57, i);
      _os_log_error_impl(&dword_240CB9000, log, v31, "nan output produced during inference for logicalId: %d", v57, 8u);
    }

    objc_storeStrong(&oslog, 0);
    v41 = 4;
LABEL_14:
    objc_storeStrong(&v44, 0);
  }

  memset(__b, 0, sizeof(__b));
  v26 = [v48[0] topN];
  v27 = [v26 countByEnumeratingWithState:__b objects:v56 count:16];
  if (v27)
  {
    v23 = *__b[2];
    v24 = 0;
    v25 = v27;
    while (1)
    {
      v22 = v24;
      if (*__b[2] != v23)
      {
        objc_enumerationMutation(v26);
      }

      v38 = *(__b[1] + 8 * v24);
      v20 = [v38 first];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      MEMORY[0x277D82BD8](v20);
      if (isKindOfClass)
      {
        v17 = v47;
        v19 = [v38 first];
        v18 = [v19 stringValue];
        [v17 addObject:?];
        MEMORY[0x277D82BD8](v18);
        MEMORY[0x277D82BD8](v19);
      }

      else
      {
        v15 = v47;
        v16 = [v38 first];
        [v15 addObject:?];
        MEMORY[0x277D82BD8](v16);
      }

      v13 = v46;
      v14 = [v38 second];
      [v13 addObject:?];
      MEMORY[0x277D82BD8](v14);
      ++v24;
      if (v22 + 1 >= v25)
      {
        v24 = 0;
        v25 = [v26 countByEnumeratingWithState:__b objects:v56 count:16];
        if (!v25)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v26);
  v54[0] = @"ids";
  v55[0] = v47;
  v54[1] = @"scores";
  v55[1] = v46;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
  v41 = 1;
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];

  return v12;
}

- (id)createHeapOfType:(int64_t)a3 withCapacity:(unint64_t)a4
{
  v6[4] = self;
  v6[3] = a2;
  v6[2] = a3;
  v6[1] = a4;
  v6[0] = [[AMDMinHeap alloc] initWithCapacity:a4 comparator:?];
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

uint64_t __50__AMDOutputBuilder_createHeapOfType_withCapacity___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = 0;
  objc_storeStrong(&v25, a3);
  v24[1] = a1;
  v24[0] = MEMORY[0x277D82BE0](location[0]);
  v23 = MEMORY[0x277D82BE0](v25);
  v22 = a1[4];
  if (v22 == 65552 || v22 == 65568)
  {
    v8 = [v24[0] second];
    [v8 floatValue];
    v9 = v5;
    MEMORY[0x277D82BD8](v8);
    v10 = [v23 second];
    [v10 floatValue];
    v11 = v6;
    MEMORY[0x277D82BD8](v10);
    if (v9 < v11)
    {
      v27 = -1;
      goto LABEL_20;
    }

    if (v9 > v11)
    {
      v27 = 1;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v22 == 65600)
  {
    v12 = [v24[0] second];
    [v12 doubleValue];
    v13 = v3;
    MEMORY[0x277D82BD8](v12);
    v14 = [v23 second];
    [v14 doubleValue];
    v15 = v4;
    MEMORY[0x277D82BD8](v14);
    if (v13 < v15)
    {
      v27 = -1;
      goto LABEL_20;
    }

    if (v13 > v15)
    {
      v27 = 1;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v22 != 131104)
  {
    goto LABEL_19;
  }

  v16 = [v24[0] second];
  v17 = [v16 intValue];
  MEMORY[0x277D82BD8](v16);
  v18 = [v23 second];
  v19 = [v18 intValue];
  MEMORY[0x277D82BD8](v18);
  if (v17 >= v19)
  {
    if (v17 > v19)
    {
      v27 = 1;
      goto LABEL_20;
    }

LABEL_19:
    v27 = 0;
    goto LABEL_20;
  }

  v27 = -1;
LABEL_20:
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  return v27;
}

- (id)getRemapDictFor:(id)a3 withModelAssets:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  v16 = 0;
  v12 = [location[0] remapDictionaryId];
  v14 = 0;
  v13 = 0;
  if (v12)
  {
    v15 = [location[0] remapDictionaryId];
    v14 = 1;
    v13 = [v15 isEqualToString:0x2852AD308];
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  MEMORY[0x277D82BD8](v12);
  if (v13)
  {
    v4 = [v18 getLogicalToContentMap];
    v5 = v16;
    v16 = v4;
    MEMORY[0x277D82BD8](v5);
  }

  v6 = [(AMDOutputBuilder *)v20 generateMappingDictionary:v16, &v16];
  v7 = v17;
  v17 = v6;
  MEMORY[0x277D82BD8](v7);
  v10 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(v9, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)generateMappingDictionary:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v24 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v23 = 2;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v10 = v24;
      v11 = v23;
      __os_log_helper_16_0_0(v22);
      _os_log_debug_impl(&dword_240CB9000, v10, v11, "Using binary map for output remapping", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v9 = location[0];
    v3 = location[0];
    v21 = [v9 bytes];
    v20 = *v21;
    v19 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v18 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v31, v20);
      _os_log_debug_impl(&dword_240CB9000, v19, v18, "Output map: %d entries", v31, 8u);
    }

    objc_storeStrong(&v19, 0);
    ++v21;
    v4 = objc_alloc(MEMORY[0x277CBEB38]);
    v17 = [v4 initWithCapacity:v20];
    for (i = 0; i < v20; ++i)
    {
      v15 = v21++;
      v14 = v21;
      v21 += 2;
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v14];
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v15];
      [v17 setObject:v8 forKey:?];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
    }

    v30 = MEMORY[0x277D82BE0](v17);
    v25 = 1;
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v28 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v27 = 16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      log = v28;
      type = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_error_impl(&dword_240CB9000, log, type, "Output map not found", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    v30 = 0;
    v25 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v30;

  return v5;
}

- (id)convertMultiArray:(id)a3 withShape:(id)a4 atDepth:(unsigned int)a5 withKey:(id)a6 withScoreThreshold:(double)a7 error:(id *)a8
{
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  v42 = a5;
  v41 = 0;
  objc_storeStrong(&v41, a6);
  v40 = a7;
  v39 = a8;
  v27 = [v43 objectAtIndex:v42];
  v28 = [v27 intValue];
  MEMORY[0x277D82BD8](v27);
  v38 = v28;
  v29 = v42 + 1;
  if (v29 == [v43 count])
  {
    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (i = 0; i < v38; ++i)
    {
      v19 = v41;
      v21 = [MEMORY[0x277CCABB0] numberWithInt:i];
      v20 = [v19 arrayByAddingObject:?];
      v35 = [v20 mutableCopy];
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
      v34 = [location[0] objectForKeyedSubscript:v35];
      [v34 doubleValue];
      if (v8 >= v40)
      {
        [v37 addObject:v34];
      }

      else
      {
        [v37 addObject:&unk_2852BA518];
      }

      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
    }

    v46 = MEMORY[0x277D82BE0](v37);
    v33 = 1;
    objc_storeStrong(&v37, 0);
  }

  else
  {
    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (j = 0; j < v38; ++j)
    {
      v15 = v45;
      v12 = location[0];
      v13 = v43;
      v14 = v42 + 1;
      v11 = v41;
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:j];
      v17 = [v11 arrayByAddingObject:?];
      v16 = [v17 mutableCopy];
      v30 = [AMDOutputBuilder convertMultiArray:v15 withShape:"convertMultiArray:withShape:atDepth:withKey:withScoreThreshold:error:" atDepth:v12 withKey:v13 withScoreThreshold:v14 error:v40];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      [v32 addObject:v30];
      objc_storeStrong(&v30, 0);
    }

    v46 = MEMORY[0x277D82BE0](v32);
    v33 = 1;
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  v9 = v46;

  return v9;
}

@end