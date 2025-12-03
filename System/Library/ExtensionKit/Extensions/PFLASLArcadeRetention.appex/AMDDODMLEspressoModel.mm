@interface AMDDODMLEspressoModel
- (AMDDODMLEspressoModel)initWithModelMetadata:(id)metadata withAttachmentProcessor:(id)processor error:(id *)error errorDomain:(id)domain;
- (id)_flattenedWeightsBeforeTraining;
- (id)createBufferDictionary:(id)dictionary;
- (id)finishInitializeManually:(id *)manually errorDomain:(id)domain;
- (id)getNewDeltasContainer:(id)container withError:(id *)error errorDomain:(id)domain;
- (id)trainOnData:(id)data numLocalIterations:(int64_t)iterations error:(id *)error errorDomain:(id)domain;
- (int64_t)_bindBuffers:(id *)buffers errorDomain:(id)domain;
- (int64_t)_buildPlan:(id *)plan errorDomain:(id)domain;
- (int64_t)initializeManually:(id *)manually errorDomain:(id)domain;
- (void)dealloc;
@end

@implementation AMDDODMLEspressoModel

- (AMDDODMLEspressoModel)initWithModelMetadata:(id)metadata withAttachmentProcessor:(id)processor error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, metadata);
  v65 = 0;
  objc_storeStrong(&v65, processor);
  errorCopy = error;
  v63 = 0;
  objc_storeStrong(&v63, domain);
  v6 = selfCopy;
  selfCopy = 0;
  v62.receiver = v6;
  v62.super_class = AMDDODMLEspressoModel;
  v61 = [(AMDDODMLEspressoModel *)&v62 init];
  selfCopy = v61;
  objc_storeStrong(&selfCopy, v61);
  if (!v61)
  {
    v68 = 0;
    goto LABEL_16;
  }

  modelPath = [location[0] modelPath];
  v8 = *(selfCopy + 1);
  *(selfCopy + 1) = modelPath;

  batchSize = [location[0] batchSize];
  *(selfCopy + 7) = batchSize;
  inputNames = [location[0] inputNames];
  v11 = *(selfCopy + 2);
  *(selfCopy + 2) = inputNames;

  weightNames = [location[0] weightNames];
  v13 = *(selfCopy + 5);
  *(selfCopy + 5) = weightNames;

  v14 = [selfCopy createBufferDictionary:*(selfCopy + 2)];
  v15 = *(selfCopy + 3);
  *(selfCopy + 3) = v14;

  v56 = selfCopy;
  outputNames = [location[0] outputNames];
  v16 = [v56 createBufferDictionary:?];
  v17 = *(selfCopy + 4);
  *(selfCopy + 4) = v16;

  v18 = [selfCopy createBufferDictionary:*(selfCopy + 5)];
  v19 = *(selfCopy + 6);
  *(selfCopy + 6) = v18;

  learningRate = [location[0] learningRate];
  v21 = *(selfCopy + 8);
  *(selfCopy + 8) = learningRate;

  trainingModeBufferName = [location[0] trainingModeBufferName];
  v23 = *(selfCopy + 14);
  *(selfCopy + 14) = trainingModeBufferName;

  learningRateBufferName = [location[0] learningRateBufferName];
  v25 = *(selfCopy + 36);
  *(selfCopy + 36) = learningRateBufferName;

  lossName = [location[0] lossName];
  v27 = *(selfCopy + 58);
  *(selfCopy + 58) = lossName;

  metricsNames = [location[0] metricsNames];
  v29 = *(selfCopy + 9);
  *(selfCopy + 9) = metricsNames;

  shortenedEmbeddingNames = [location[0] shortenedEmbeddingNames];
  v31 = *(selfCopy + 59);
  *(selfCopy + 59) = shortenedEmbeddingNames;

  shortenedEmbeddingMappingKeys = [location[0] shortenedEmbeddingMappingKeys];
  v33 = *(selfCopy + 63);
  *(selfCopy + 63) = shortenedEmbeddingMappingKeys;

  shortenedEmbeddingNumberVectorsBefore = [location[0] shortenedEmbeddingNumberVectorsBefore];
  v35 = *(selfCopy + 60);
  *(selfCopy + 60) = shortenedEmbeddingNumberVectorsBefore;

  shortenedEmbeddingNumberVectorsAfter = [location[0] shortenedEmbeddingNumberVectorsAfter];
  v37 = *(selfCopy + 61);
  *(selfCopy + 61) = shortenedEmbeddingNumberVectorsAfter;

  shortenedEmbeddingSize = [location[0] shortenedEmbeddingSize];
  v39 = *(selfCopy + 62);
  *(selfCopy + 62) = shortenedEmbeddingSize;

  objc_storeStrong(selfCopy + 64, v65);
  initializeManually = [location[0] initializeManually];
  v41 = *(selfCopy + 65);
  *(selfCopy + 65) = initializeManually;

  if ([selfCopy _buildPlan:errorCopy errorDomain:v63])
  {
    if ([selfCopy _bindBuffers:errorCopy errorDomain:v63])
    {
      if ([*(selfCopy + 65) longValue])
      {
        if (![selfCopy initializeManually:errorCopy errorDomain:v63])
        {
          v68 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        v53 = selfCopy;
        initializationFunctionName = [location[0] initializationFunctionName];
        v42 = initializationFunctionName;
        [initializationFunctionName UTF8String];
        v43 = v53[12];
        v44 = v53[13];
        v55 = espresso_network_set_function_name();

        if (v55)
        {
          v45 = [NSError alloc];
          v52 = [v45 initWithDomain:v63 code:77 userInfo:0];
          v46 = v52;
          *errorCopy = v52;
          v68 = 0;
          goto LABEL_16;
        }

        v47 = *(selfCopy + 11);
        if (espresso_plan_execute_sync())
        {
          v48 = [NSError alloc];
          v51 = [v48 initWithDomain:v63 code:77 userInfo:0];
          v49 = v51;
          *errorCopy = v51;
          v68 = 0;
          goto LABEL_16;
        }
      }

      v68 = selfCopy;
      goto LABEL_16;
    }

    v68 = 0;
  }

  else
  {
    v68 = 0;
  }

LABEL_16:
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v68;
}

- (id)createBufferDictionary:(id)dictionary
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v15 = +[NSMutableDictionary dictionary];
  memset(__b, 0, sizeof(__b));
  obj = location[0];
  v10 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v7);
      memset(v12, 0, sizeof(v12));
      v11 = [NSMutableData dataWithBytes:v12 length:168];
      [v15 setObject:v11 forKey:v14];
      objc_storeStrong(&v11, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  v4 = v15;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (int64_t)_buildPlan:(id *)plan errorDomain:(id)domain
{
  selfCopy = self;
  v41 = a2;
  planCopy = plan;
  location = 0;
  objc_storeStrong(&location, domain);
  selfCopy->_ctx = espresso_create_context();
  if (selfCopy->_ctx)
  {
    ctx = selfCopy->_ctx;
    selfCopy->_plan = espresso_create_plan();
    if (selfCopy->_plan)
    {
      plan = selfCopy->_plan;
      [(NSString *)selfCopy->_modelPath UTF8String];
      v9 = espresso_plan_add_network();
      v37 = v9;
      if (v9)
      {
        v10 = [NSError alloc];
        v31 = [v10 initWithDomain:location code:67 userInfo:0];
        v11 = v31;
        *planCopy = v31;
        v43 = 0;
        v38 = 1;
      }

      else
      {
        memset(__b, 0, sizeof(__b));
        obj = selfCopy->_outputNameBufferMap;
        v30 = [(NSDictionary *)obj countByEnumeratingWithState:__b objects:v44 count:16];
        if (v30)
        {
          v26 = *__b[2];
          v27 = 0;
          v28 = v30;
          while (1)
          {
            v25 = v27;
            if (*__b[2] != v26)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(__b[1] + 8 * v27);
            v24 = selfCopy;
            v23 = v36;
            v12 = v36;
            [v23 UTF8String];
            v13 = v24->_net.plan;
            v14 = *&v24->_net.network_index;
            if (espresso_network_declare_output())
            {
              break;
            }

            ++v27;
            if (v25 + 1 >= v28)
            {
              v27 = 0;
              v28 = [(NSDictionary *)obj countByEnumeratingWithState:__b objects:v44 count:16];
              if (!v28)
              {
                goto LABEL_15;
              }
            }
          }

          v15 = [NSError alloc];
          v22 = [v15 initWithDomain:location code:70 userInfo:0];
          v16 = v22;
          *planCopy = v22;
          v43 = 0;
          v38 = 1;
        }

        else
        {
LABEL_15:
          v38 = 0;
        }

        if (!v38)
        {
          v17 = selfCopy->_plan;
          if (espresso_plan_build())
          {
            v18 = [NSError alloc];
            v21 = [v18 initWithDomain:location code:71 userInfo:0];
            v19 = v21;
            *planCopy = v21;
            v43 = 0;
          }

          else
          {
            v43 = 1;
          }

          v38 = 1;
        }
      }
    }

    else
    {
      v7 = [NSError alloc];
      v33 = [v7 initWithDomain:location code:69 userInfo:0];
      v8 = v33;
      *planCopy = v33;
      v43 = 0;
      v38 = 1;
    }
  }

  else
  {
    v4 = [NSError alloc];
    v34 = [v4 initWithDomain:location code:68 userInfo:0];
    v5 = v34;
    *planCopy = v34;
    v43 = 0;
    v38 = 1;
  }

  objc_storeStrong(&location, 0);
  return v43;
}

- (int64_t)_bindBuffers:(id *)buffers errorDomain:(id)domain
{
  selfCopy = self;
  v96 = a2;
  buffersCopy = buffers;
  location = 0;
  objc_storeStrong(&location, domain);
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_inputNameBufferMap;
  v79 = [(NSDictionary *)obj countByEnumeratingWithState:__b objects:v101 count:16];
  if (v79)
  {
    v75 = *__b[2];
    v76 = 0;
    v77 = v79;
    while (1)
    {
      v74 = v76;
      if (*__b[2] != v75)
      {
        objc_enumerationMutation(obj);
      }

      v93 = *(__b[1] + 8 * v76);
      v91 = [(NSDictionary *)selfCopy->_inputNameBufferMap objectForKeyedSubscript:v93];
      v73 = selfCopy;
      v71 = v93;
      v4 = v93;
      [v71 UTF8String];
      v72 = v91;
      v5 = v91;
      [v72 mutableBytes];
      plan = v73->_net.plan;
      v7 = *&v73->_net.network_index;
      v8 = espresso_network_bind_buffer();
      v90 = v8;
      if (v8)
      {
        v9 = [NSError alloc];
        v70 = [v9 initWithDomain:location code:72 userInfo:0];
        v10 = v70;
        *buffersCopy = v70;
        v98 = 0;
        v89 = 1;
      }

      else
      {
        v89 = 0;
      }

      objc_storeStrong(&v91, 0);
      if (v89)
      {
        break;
      }

      ++v76;
      if (v74 + 1 >= v77)
      {
        v76 = 0;
        v77 = [(NSDictionary *)obj countByEnumeratingWithState:__b objects:v101 count:16];
        if (!v77)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
LABEL_11:
    v89 = 0;
  }

  if (!v89)
  {
    memset(v87, 0, sizeof(v87));
    v68 = selfCopy->_outputNameBufferMap;
    v69 = [(NSDictionary *)v68 countByEnumeratingWithState:v87 objects:v100 count:16];
    if (v69)
    {
      v65 = *v87[2];
      v66 = 0;
      v67 = v69;
      while (1)
      {
        v64 = v66;
        if (*v87[2] != v65)
        {
          objc_enumerationMutation(v68);
        }

        v88 = *(v87[1] + 8 * v66);
        v86 = [(NSDictionary *)selfCopy->_outputNameBufferMap objectForKeyedSubscript:v88];
        v63 = selfCopy;
        v61 = v88;
        v11 = v88;
        [v61 UTF8String];
        v62 = v86;
        v12 = v86;
        [v62 mutableBytes];
        v13 = v63->_net.plan;
        v14 = *&v63->_net.network_index;
        v15 = espresso_network_bind_buffer();
        v85 = v15;
        if (v15)
        {
          v16 = [NSError alloc];
          v60 = [v16 initWithDomain:location code:73 userInfo:0];
          v17 = v60;
          *buffersCopy = v60;
          v98 = 0;
          v89 = 1;
        }

        else
        {
          v89 = 0;
        }

        objc_storeStrong(&v86, 0);
        if (v89)
        {
          break;
        }

        ++v66;
        if (v64 + 1 >= v67)
        {
          v66 = 0;
          v67 = [(NSDictionary *)v68 countByEnumeratingWithState:v87 objects:v100 count:16];
          if (!v67)
          {
            goto LABEL_23;
          }
        }
      }
    }

    else
    {
LABEL_23:
      v89 = 0;
    }

    if (!v89)
    {
      v59 = selfCopy;
      [(NSString *)selfCopy->_trainingModeBufferName UTF8String];
      v18 = v59->_net.plan;
      v19 = *&v59->_net.network_index;
      v20 = espresso_network_bind_buffer_to_global();
      v84 = v20;
      if (v20)
      {
        v21 = [NSError alloc];
        v58 = [v21 initWithDomain:location code:75 userInfo:0];
        v22 = v58;
        *buffersCopy = v58;
        v98 = 0;
        v89 = 1;
        goto LABEL_46;
      }

      v57 = selfCopy;
      [(NSString *)selfCopy->_learningRateBufferName UTF8String];
      v23 = v57->_net.plan;
      v24 = *&v57->_net.network_index;
      v25 = espresso_network_bind_buffer_to_global();
      v83 = v25;
      if (v25)
      {
        v26 = [NSError alloc];
        v56 = [v26 initWithDomain:location code:76 userInfo:0];
        v27 = v56;
        *buffersCopy = v56;
        v98 = 0;
        v89 = 1;
        goto LABEL_46;
      }

      *selfCopy->_bufIsTraining.data = 1.0;
      [(NSNumber *)selfCopy->_learningRate floatValue];
      *selfCopy->_bufLR.data = v28;
      memset(v81, 0, sizeof(v81));
      v54 = selfCopy->_weightNameBufferMap;
      v55 = [(NSDictionary *)v54 countByEnumeratingWithState:v81 objects:v99 count:16];
      if (v55)
      {
        v51 = *v81[2];
        v52 = 0;
        v53 = v55;
        while (1)
        {
          v50 = v52;
          if (*v81[2] != v51)
          {
            objc_enumerationMutation(v54);
          }

          v82 = *(v81[1] + 8 * v52);
          v80 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v82];
          if ([(NSNumber *)selfCopy->_initializeManually longValue])
          {
            v45 = selfCopy;
            v43 = v82;
            v35 = v82;
            [v43 UTF8String];
            v44 = v80;
            v36 = v80;
            [v44 mutableBytes];
            v37 = v45->_net.plan;
            v38 = *&v45->_net.network_index;
            if (!espresso_network_bind_buffer_to_global())
            {
LABEL_39:
              v89 = 0;
              goto LABEL_40;
            }

            v39 = [NSError alloc];
            v42 = [v39 initWithDomain:location code:74 userInfo:0];
            v40 = v42;
            *buffersCopy = v42;
            v98 = 0;
            v89 = 1;
          }

          else
          {
            v49 = selfCopy;
            v47 = v82;
            v29 = v82;
            [v47 UTF8String];
            v48 = v80;
            v30 = v80;
            [v48 mutableBytes];
            v31 = v49->_net.plan;
            v32 = *&v49->_net.network_index;
            if (!espresso_network_bind_buffer_to_global())
            {
              goto LABEL_39;
            }

            v33 = [NSError alloc];
            v46 = [v33 initWithDomain:location code:74 userInfo:0];
            v34 = v46;
            *buffersCopy = v46;
            v98 = 0;
            v89 = 1;
          }

LABEL_40:
          objc_storeStrong(&v80, 0);
          if (v89)
          {
            goto LABEL_44;
          }

          ++v52;
          if (v50 + 1 >= v53)
          {
            v52 = 0;
            v53 = [(NSDictionary *)v54 countByEnumeratingWithState:v81 objects:v99 count:16];
            if (!v53)
            {
              break;
            }
          }
        }
      }

      v89 = 0;
LABEL_44:

      if (!v89)
      {
        v98 = 1;
        v89 = 1;
      }
    }
  }

LABEL_46:
  objc_storeStrong(&location, 0);
  return v98;
}

- (id)_flattenedWeightsBeforeTraining
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = objc_alloc_init(NSMutableData);
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_weightNames;
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v6);
      v11 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v13];
      memset(v10, 0, sizeof(v10));
      [v11 getBytes:v10 length:168];
      [v14[0] appendBytes:v10[0] length:4 * v10[2] * v10[3] * v10[4] * v10[5]];
      objc_storeStrong(&v11, 0);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  v3 = v14[0];
  objc_storeStrong(v14, 0);

  return v3;
}

- (id)trainOnData:(id)data numLocalIterations:(int64_t)iterations error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  iterationsCopy = iterations;
  errorCopy = error;
  v80 = 0;
  objc_storeStrong(&v80, domain);
  v49 = selfCopy;
  get_main_function_name();
  plan = v49->_net.plan;
  v7 = *&v49->_net.network_index;
  v8 = espresso_network_set_function_name();
  v79 = v8;
  if (v8)
  {
    v9 = [NSError alloc];
    v45 = [v9 initWithDomain:v80 code:75 userInfo:0];
    v10 = v45;
    *errorCopy = v45;
    v85 = 0;
    v78 = 1;
  }

  else
  {
    _flattenedWeightsBeforeTraining = [(AMDDODMLEspressoModel *)selfCopy _flattenedWeightsBeforeTraining];
    v76 = [[NSMutableArray alloc] initWithCapacity:?];
    v75 = [[NSMutableDictionary alloc] initWithCapacity:0];
    for (i = 0; i < iterationsCopy; ++i)
    {
      v73 = [location[0] bindDataToInputsDirectly:selfCopy->_inputNameBufferMap batchSize:selfCopy->_batchSize error:errorCopy errorDomain:v80];
      if (v73)
      {
        v11 = selfCopy->_plan;
        v12 = espresso_plan_execute_sync();
        v72 = v12;
        if (v12)
        {
          v13 = [NSError alloc];
          v44 = [v13 initWithDomain:v80 code:79 userInfo:0];
          v14 = v44;
          *errorCopy = v44;
          v85 = 0;
          v78 = 1;
        }

        else
        {
          v38 = [(NSDictionary *)selfCopy->_outputNameBufferMap objectForKeyedSubscript:selfCopy->_lossName];
          v15 = v38;
          mutableBytes = [v38 mutableBytes];

          v71 = mutableBytes;
          v70 = **mutableBytes;
          v40 = v76;
          *&v16 = v70;
          v41 = [NSNumber numberWithFloat:v16];
          [v40 addObject:?];

          NSLog(@"Loss: %.4f", v70);
          memset(__b, 0, sizeof(__b));
          v42 = selfCopy->_metricNames;
          v43 = [(NSArray *)v42 countByEnumeratingWithState:__b objects:v95 count:16];
          if (v43)
          {
            v35 = *__b[2];
            v36 = 0;
            v37 = v43;
            while (1)
            {
              v34 = v36;
              if (*__b[2] != v35)
              {
                objc_enumerationMutation(v42);
              }

              v69 = *(__b[1] + 8 * v36);
              v32 = [(NSDictionary *)selfCopy->_outputNameBufferMap objectForKeyedSubscript:v69];
              v17 = v32;
              mutableBytes2 = [v32 mutableBytes];

              v67 = mutableBytes2;
              v66 = **mutableBytes2;
              v65 = [v75 valueForKey:v69];
              if (!v65)
              {
                v19 = [[NSMutableArray alloc] initWithCapacity:0];
                v20 = v65;
                v65 = v19;

                [v75 setValue:v65 forKey:v69];
              }

              v30 = v65;
              LODWORD(v18) = v66;
              v31 = [NSNumber numberWithFloat:v18];
              [v30 addObject:?];

              objc_storeStrong(&v65, 0);
              ++v36;
              if (v34 + 1 >= v37)
              {
                v36 = 0;
                v37 = [(NSArray *)v42 countByEnumeratingWithState:__b objects:v95 count:16];
                if (!v37)
                {
                  break;
                }
              }
            }
          }

          if (!i && [(NSNumber *)selfCopy->_initializeManually longValue]== 1)
          {
            v21 = [(AMDDODMLEspressoModel *)selfCopy finishInitializeManually:errorCopy errorDomain:v80];
          }

          v78 = 0;
        }
      }

      else
      {
        v85 = 0;
        v78 = 1;
      }

      objc_storeStrong(&v73, 0);
      if (v78)
      {
        goto LABEL_38;
      }
    }

    v64 = 0;
    memset(v62, 0, sizeof(v62));
    v28 = selfCopy->_weightNames;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:v62 objects:v94 count:16];
    if (v29)
    {
      v25 = *v62[2];
      v26 = 0;
      v27 = v29;
      while (1)
      {
        v24 = v26;
        if (*v62[2] != v25)
        {
          objc_enumerationMutation(v28);
        }

        v63 = *(v62[1] + 8 * v26);
        v61 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v63];
        memset(v60, 0, sizeof(v60));
        [v61 getBytes:v60 length:168];
        v59 = v60[2] * v60[3] * v60[4] * v60[5];
        v58 = 0.0;
        v57 = 0.0;
        for (j = 0; j < v59; ++j)
        {
          v91 = v64;
          v90 = 4;
          v92 = v64;
          v93 = 4;
          v54 = v64;
          v55 = 4;
          [_flattenedWeightsBeforeTraining getBytes:&v58 range:{v64, 4}];
          v57 = *(v60[0] + 4 * j);
          v53 = v57 - v58;
          v87 = v64;
          v86 = 4;
          v88 = v64;
          v89 = 4;
          v52[1] = v64;
          v52[2] = 4;
          [_flattenedWeightsBeforeTraining replaceBytesInRange:v64 withBytes:{4, &v53}];
          v64 += 4;
        }

        objc_storeStrong(&v61, 0);
        ++v26;
        if (v24 + 1 >= v27)
        {
          v26 = 0;
          v27 = [(NSArray *)v28 countByEnumeratingWithState:v62 objects:v94 count:16];
          if (!v27)
          {
            break;
          }
        }
      }
    }

    if ([(NSNumber *)selfCopy->_initializeManually longValue])
    {
      v51 = [(AMDDODMLEspressoModel *)selfCopy getNewDeltasContainer:_flattenedWeightsBeforeTraining withError:errorCopy errorDomain:v80];
      if (v51)
      {
        v50 = objc_alloc_init(NSMutableDictionary);
        [v50 setObject:v51 forKey:ModelDeltas];
        [v50 setObject:selfCopy->_weightNames forKey:WeightNamesKeyInResponse];
        [v50 setObject:v76 forKey:LossesKeyInResponse];
        [v50 setObject:v75 forKey:ModelMetrics];
        v85 = v50;
        v78 = 1;
        objc_storeStrong(&v50, 0);
      }

      else
      {
        v85 = 0;
        v78 = 1;
      }

      objc_storeStrong(&v51, 0);
    }

    else
    {
      v52[0] = +[NSMutableDictionary dictionary];
      [v52[0] setObject:_flattenedWeightsBeforeTraining forKey:ModelDeltas];
      [v52[0] setObject:selfCopy->_weightNames forKey:WeightNamesKeyInResponse];
      [v52[0] setObject:v76 forKey:LossesKeyInResponse];
      [v52[0] setObject:v75 forKey:ModelMetrics];
      v85 = v52[0];
      v78 = 1;
      objc_storeStrong(v52, 0);
    }

LABEL_38:
    objc_storeStrong(&v75, 0);
    objc_storeStrong(&v76, 0);
    objc_storeStrong(&_flattenedWeightsBeforeTraining, 0);
  }

  objc_storeStrong(&v80, 0);
  objc_storeStrong(location, 0);
  v22 = v85;

  return v22;
}

- (int64_t)initializeManually:(id *)manually errorDomain:(id)domain
{
  selfCopy = self;
  v120 = a2;
  manuallyCopy = manually;
  location = 0;
  objc_storeStrong(&location, domain);
  if (selfCopy->_attachmentProcessor)
  {
    weightsArray = [(AMDDODMLAttachmentProcessor *)selfCopy->_attachmentProcessor weightsArray];
    if (weightsArray)
    {
      v115 = 0;
      memset(__b, 0, sizeof(__b));
      obj = selfCopy->_weightNames;
      v72 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v133 count:16];
      if (v72)
      {
        v68 = *__b[2];
        v69 = 0;
        v70 = v72;
        while (1)
        {
          v67 = v69;
          if (*__b[2] != v68)
          {
            objc_enumerationMutation(obj);
          }

          v114 = *(__b[1] + 8 * v69);
          v66 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNames objectForKey:v114];

          if (v66)
          {
            v112 = [(NSDictionary *)selfCopy->_shortenedEmbeddingSize objectForKey:v114];
            v111 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNumberVectorsBefore objectForKey:v114];
            v110 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNumberVectorsAfter objectForKey:v114];
            v109 = [(NSDictionary *)selfCopy->_shortenedEmbeddingMappingKeys objectForKey:v114];
            if (v112 && v111 && v110 && v109)
            {
              longValue = [v112 longValue];
              longValue2 = [v111 longValue];
              v115 += longValue * longValue2;
              v108 = [(AMDDODMLAttachmentProcessor *)selfCopy->_attachmentProcessor hashMapForKey:v109];
              if (v108)
              {
                v62 = [v108 count];
                if (v62 > [v110 longValue])
                {
                  v13 = [NSError alloc];
                  v61 = [v13 initWithDomain:location code:119 userInfo:0];
                  v14 = v61;
                  *manuallyCopy = v61;
                  v122 = 0;
                  v117 = 1;
                }

                else
                {
                  v117 = 0;
                }
              }

              else
              {
                v11 = [NSError alloc];
                v63 = [v11 initWithDomain:location code:118 userInfo:0];
                v12 = v63;
                *manuallyCopy = v63;
                v122 = 0;
                v117 = 1;
              }

              objc_storeStrong(&v108, 0);
            }

            else
            {
              v8 = [NSError alloc];
              v65 = [v8 initWithDomain:location code:117 userInfo:0];
              v9 = v65;
              *manuallyCopy = v65;
              v122 = 0;
              v117 = 1;
            }

            objc_storeStrong(&v109, 0);
            objc_storeStrong(&v110, 0);
            objc_storeStrong(&v111, 0);
            objc_storeStrong(&v112, 0);
            if (v117)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v107 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v114];
            memset(v106, 0, sizeof(v106));
            [v107 getBytes:v106 length:168];
            v105 = v106[2] * v106[3] * v106[4] * v106[5];
            v115 += v105;
            objc_storeStrong(&v107, 0);
          }

          ++v69;
          if (v67 + 1 >= v70)
          {
            v69 = 0;
            v70 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v133 count:16];
            if (!v70)
            {
              break;
            }
          }
        }
      }

      v117 = 0;
LABEL_27:

      if (!v117)
      {
        v15 = [weightsArray length];
        if (v15 / 4 == v115)
        {
          v104 = 0;
          memset(v102, 0, sizeof(v102));
          v58 = selfCopy->_weightNames;
          v59 = [(NSArray *)v58 countByEnumeratingWithState:v102 objects:v132 count:16];
          if (v59)
          {
            v55 = *v102[2];
            v56 = 0;
            v57 = v59;
            while (1)
            {
              v54 = v56;
              if (*v102[2] != v55)
              {
                objc_enumerationMutation(v58);
              }

              v103 = *(v102[1] + 8 * v56);
              v53 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNames objectForKey:v103];

              if (v53)
              {
                v101 = [(NSDictionary *)selfCopy->_shortenedEmbeddingSize objectForKey:v103];
                v100 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNumberVectorsBefore objectForKey:v103];
                v99 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNumberVectorsAfter objectForKey:v103];
                v98 = [(NSDictionary *)selfCopy->_shortenedEmbeddingMappingKeys objectForKey:v103];
                if (v101 && v100 && v99 && v98)
                {
                  v97 = [(AMDDODMLAttachmentProcessor *)selfCopy->_attachmentProcessor hashMapForKey:v98];
                  if (v97)
                  {
                    v96 = objc_alloc_init(NSMutableDictionary);
                    memset(v94, 0, sizeof(v94));
                    v49 = v97;
                    v50 = [v49 countByEnumeratingWithState:v94 objects:v131 count:16];
                    if (v50)
                    {
                      v46 = *v94[2];
                      v47 = 0;
                      v48 = v50;
                      while (1)
                      {
                        v45 = v47;
                        if (*v94[2] != v46)
                        {
                          objc_enumerationMutation(v49);
                        }

                        v95 = *(v94[1] + 8 * v47);
                        v43 = v96;
                        v42 = v95;
                        v44 = [v97 objectForKey:v95];
                        [v43 setObject:v42 forKey:?];

                        ++v47;
                        if (v45 + 1 >= v48)
                        {
                          v47 = 0;
                          v48 = [v49 countByEnumeratingWithState:v94 objects:v131 count:16];
                          if (!v48)
                          {
                            break;
                          }
                        }
                      }
                    }

                    v93 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v103];
                    memset(v92, 0, sizeof(v92));
                    [v93 getBytes:v92 length:168];
                    v91 = v92[2];
                    v90 = v92[3];
                    longValue3 = [v101 longValue];
                    if (longValue3 == v91 && (v23 = [v99 longValue], v23 == v90))
                    {
                      v89 = v92[0];
                      for (i = 0; ; ++i)
                      {
                        v40 = i;
                        if (v40 >= [v99 longValue])
                        {
                          break;
                        }

                        v38 = v96;
                        v39 = [NSNumber numberWithInt:i];
                        v87 = [v38 objectForKey:?];

                        if (v87)
                        {
                          for (j = 0; ; ++j)
                          {
                            v37 = j;
                            if (v37 >= [v101 longValue])
                            {
                              break;
                            }

                            v34 = i;
                            longValue4 = [v101 longValue];
                            v85 = v34 * longValue4 + j;
                            v35 = v104;
                            longValue5 = [v87 longValue];
                            longValue6 = [v101 longValue];
                            v84 = v35 + longValue5 * longValue6 + j;
                            v128 = 4 * v84;
                            v127 = 4;
                            v129 = 4 * v84;
                            v130 = 4;
                            v82 = 4 * v84;
                            v83 = 4;
                            [weightsArray getBytes:v89 + 4 * v85 range:{4 * v84, 4}];
                          }
                        }

                        else
                        {
                          for (k = 0; ; ++k)
                          {
                            v33 = k;
                            if (v33 >= [v101 longValue])
                            {
                              break;
                            }

                            v32 = i;
                            longValue7 = [v101 longValue];
                            v80 = v32 * longValue7 + k;
                            *(v89 + 4 * v80) = 0;
                          }
                        }

                        objc_storeStrong(&v87, 0);
                      }

                      longValue8 = [v100 longValue];
                      longValue9 = [v101 longValue];
                      v104 += longValue8 * longValue9;
                      v117 = 0;
                    }

                    else
                    {
                      v24 = [NSError alloc];
                      v41 = [v24 initWithDomain:location code:121 userInfo:0];
                      v25 = v41;
                      *manuallyCopy = v41;
                      v122 = 0;
                      v117 = 1;
                    }

                    objc_storeStrong(&v93, 0);
                    objc_storeStrong(&v96, 0);
                  }

                  else
                  {
                    v20 = [NSError alloc];
                    v51 = [v20 initWithDomain:location code:118 userInfo:0];
                    v21 = v51;
                    *manuallyCopy = v51;
                    v122 = 0;
                    v117 = 1;
                  }

                  objc_storeStrong(&v97, 0);
                }

                else
                {
                  v18 = [NSError alloc];
                  v52 = [v18 initWithDomain:location code:117 userInfo:0];
                  v19 = v52;
                  *manuallyCopy = v52;
                  v122 = 0;
                  v117 = 1;
                }

                objc_storeStrong(&v98, 0);
                objc_storeStrong(&v99, 0);
                objc_storeStrong(&v100, 0);
                objc_storeStrong(&v101, 0);
                if (v117)
                {
                  goto LABEL_74;
                }
              }

              else
              {
                v79 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v103];
                memset(v78, 0, sizeof(v78));
                [v79 getBytes:v78 length:168];
                v77 = v78[2] * v78[3] * v78[4] * v78[5];
                for (m = 0; m < v77; ++m)
                {
                  v75 = 0;
                  v124 = 4 * (v104 + m);
                  v123 = 4;
                  v125 = v124;
                  v126 = 4;
                  [weightsArray getBytes:&v75 range:{v124, 4}];
                  *(v78[0] + 4 * m) = v75;
                }

                v104 += v77;
                objc_storeStrong(&v79, 0);
              }

              ++v56;
              if (v54 + 1 >= v57)
              {
                v56 = 0;
                v57 = [(NSArray *)v58 countByEnumeratingWithState:v102 objects:v132 count:16];
                if (!v57)
                {
                  break;
                }
              }
            }
          }

          v117 = 0;
LABEL_74:

          if (!v117)
          {
            v122 = 1;
            v117 = 1;
          }
        }

        else
        {
          v16 = [NSError alloc];
          v60 = [v16 initWithDomain:location code:120 userInfo:0];
          v17 = v60;
          *manuallyCopy = v60;
          v122 = 0;
          v117 = 1;
        }
      }
    }

    else
    {
      v6 = [NSError alloc];
      v73 = [v6 initWithDomain:location code:116 userInfo:0];
      v7 = v73;
      *manuallyCopy = v73;
      v122 = 0;
      v117 = 1;
    }

    objc_storeStrong(&weightsArray, 0);
  }

  else
  {
    v4 = [NSError alloc];
    v74 = [v4 initWithDomain:location code:116 userInfo:0];
    v5 = v74;
    *manuallyCopy = v74;
    v122 = 0;
    v117 = 1;
  }

  objc_storeStrong(&location, 0);
  return v122;
}

- (id)finishInitializeManually:(id *)manually errorDomain:(id)domain
{
  selfCopy = self;
  v38 = a2;
  manuallyCopy = manually;
  location = 0;
  objc_storeStrong(&location, domain);
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_weightNameBufferMap;
  v30 = [(NSDictionary *)obj countByEnumeratingWithState:__b objects:v41 count:16];
  if (v30)
  {
    v26 = *__b[2];
    v27 = 0;
    v28 = v30;
    while (1)
    {
      v25 = v27;
      if (*__b[2] != v26)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(__b[1] + 8 * v27);
      v24 = selfCopy;
      v23 = v35;
      v4 = v35;
      [v23 UTF8String];
      plan = v24->_net.plan;
      v6 = *&v24->_net.network_index;
      v7 = espresso_network_unbind_buffer_to_global();
      v33 = v7;
      if (v7)
      {
        break;
      }

      v31 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v35];
      v21 = selfCopy;
      v19 = v35;
      v10 = v35;
      [v19 UTF8String];
      v20 = v31;
      v11 = v31;
      [v20 mutableBytes];
      v12 = v21->_net.plan;
      v13 = *&v21->_net.network_index;
      if (espresso_network_bind_buffer_to_global())
      {
        v14 = [NSError alloc];
        v18 = [v14 initWithDomain:location code:74 userInfo:0];
        v15 = v18;
        *manuallyCopy = v18;
        v40 = 0;
        v32 = 1;
      }

      else
      {
        v32 = 0;
      }

      objc_storeStrong(&v31, 0);
      if (v32)
      {
        goto LABEL_14;
      }

      ++v27;
      if (v25 + 1 >= v28)
      {
        v27 = 0;
        v28 = [(NSDictionary *)obj countByEnumeratingWithState:__b objects:v41 count:16];
        if (!v28)
        {
          goto LABEL_13;
        }
      }
    }

    v8 = [NSError alloc];
    v22 = [v8 initWithDomain:location code:74 userInfo:0];
    v9 = v22;
    *manuallyCopy = v22;
    v40 = 0;
    v32 = 1;
  }

  else
  {
LABEL_13:
    v32 = 0;
  }

LABEL_14:

  if (!v32)
  {
    v40 = [NSNumber numberWithLong:1];
    v32 = 1;
  }

  objc_storeStrong(&location, 0);
  v16 = v40;

  return v16;
}

- (id)getNewDeltasContainer:(id)container withError:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, container);
  errorCopy = error;
  v56 = 0;
  objc_storeStrong(&v56, domain);
  v55 = objc_alloc_init(NSMutableData);
  v54 = 0;
  memset(__b, 0, sizeof(__b));
  v30 = selfCopy->_weightNames;
  v31 = [(NSArray *)v30 countByEnumeratingWithState:__b objects:v69 count:16];
  if (v31)
  {
    v25 = *__b[2];
    v26 = 0;
    v27 = v31;
    while (1)
    {
      v24 = v26;
      if (*__b[2] != v25)
      {
        objc_enumerationMutation(v30);
      }

      v53 = *(__b[1] + 8 * v26);
      v23 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNames objectForKey:v53];

      if (v23)
      {
        v51 = [(NSDictionary *)selfCopy->_shortenedEmbeddingSize objectForKey:v53];
        v50 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNumberVectorsBefore objectForKey:v53];
        v49 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNumberVectorsAfter objectForKey:v53];
        v48 = [(NSDictionary *)selfCopy->_shortenedEmbeddingMappingKeys objectForKey:v53];
        if (v51 && v50 && v49 && v48)
        {
          v46 = [(AMDDODMLAttachmentProcessor *)selfCopy->_attachmentProcessor hashMapForKey:v48];
          if (v46)
          {
            for (i = 0; ; ++i)
            {
              v20 = i;
              if (v20 >= [v50 longValue])
              {
                break;
              }

              v18 = v46;
              v19 = [NSNumber numberWithLong:i];
              v44 = [v18 objectForKey:?];

              if (v44)
              {
                for (j = 0; ; ++j)
                {
                  v17 = j;
                  if (v17 >= [v51 longValue])
                  {
                    break;
                  }

                  v15 = v54;
                  longValue = [v44 longValue];
                  longValue2 = [v51 longValue];
                  v42 = v15 + 4 * longValue * longValue2 + 4 * j;
                  v41 = 0;
                  v66 = v42;
                  v65 = 4;
                  v67 = v42;
                  v68 = 4;
                  v39 = v42;
                  v40 = 4;
                  [location[0] getBytes:? range:?];
                  [v55 appendBytes:&v41 length:4];
                }
              }

              else
              {
                for (k = 0; ; ++k)
                {
                  v14 = k;
                  if (v14 >= [v51 longValue])
                  {
                    break;
                  }

                  v37 = 0;
                  [v55 appendBytes:&v37 length:4];
                }
              }

              objc_storeStrong(&v44, 0);
            }

            longValue3 = [v51 longValue];
            longValue4 = [v49 longValue];
            v54 += 4 * longValue3 * longValue4;
            v47 = 0;
          }

          else
          {
            v7 = [NSError alloc];
            v21 = [v7 initWithDomain:v56 code:124 userInfo:0];
            v8 = v21;
            *errorCopy = v21;
            v60 = 0;
            v47 = 1;
          }

          objc_storeStrong(&v46, 0);
        }

        else
        {
          v5 = [NSError alloc];
          v22 = [v5 initWithDomain:v56 code:123 userInfo:0];
          v6 = v22;
          *errorCopy = v22;
          v60 = 0;
          v47 = 1;
        }

        objc_storeStrong(&v48, 0);
        objc_storeStrong(&v49, 0);
        objc_storeStrong(&v50, 0);
        objc_storeStrong(&v51, 0);
        if (v47)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v36 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v53];
        memset(v35, 0, sizeof(v35));
        [v36 getBytes:v35 length:168];
        v34 = v35[2] * v35[3] * v35[4] * v35[5];
        for (m = 0; m < v34; ++m)
        {
          v32 = 0;
          v62 = v54;
          v61 = 4;
          v63 = v54;
          v64 = 4;
          [location[0] getBytes:? range:?];
          [v55 appendBytes:&v32 length:4];
          v54 += 4;
        }

        objc_storeStrong(&v36, 0);
      }

      ++v26;
      if (v24 + 1 >= v27)
      {
        v26 = 0;
        v27 = [(NSArray *)v30 countByEnumeratingWithState:__b objects:v69 count:16];
        if (!v27)
        {
          break;
        }
      }
    }
  }

  v47 = 0;
LABEL_35:

  if (!v47)
  {
    v60 = v55;
    v47 = 1;
  }

  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(location, 0);
  v11 = v60;

  return v11;
}

- (void)dealloc
{
  selfCopy = self;
  v7 = a2;
  if (self->_plan)
  {
    plan = selfCopy->_plan;
    v6 = espresso_plan_destroy();
    ctx = selfCopy->_ctx;
    v5 = espresso_context_destroy();
  }

  v4.receiver = selfCopy;
  v4.super_class = AMDDODMLEspressoModel;
  [(AMDDODMLEspressoModel *)&v4 dealloc];
}

@end