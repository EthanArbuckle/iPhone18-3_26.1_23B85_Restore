@interface AMDBaseRecoModel
+ (id)getCurrentDirURLForName:(id)name;
+ (id)getModelforId:(id)id useMinimalMap:(id)map error:(id *)error;
- (AMDBaseRecoModel)initWithId:(id)id;
- (AMDBaseRecoModel)initWithId:(id)id andVersion:(unint64_t)version;
- (BOOL)isValid;
- (BOOL)parseModelInfoFromBuffer:(id)buffer error:(id *)error;
- (id)getPredictions:(unint64_t)predictions andInputBuilder:(id)builder andOutputBuilder:(id)outputBuilder withColdstartModelId:(id)id error:(id *)error;
- (void)loadModelMetadataFromDir:(id)dir error:(id *)error;
@end

@implementation AMDBaseRecoModel

- (AMDBaseRecoModel)initWithId:(id)id
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, id);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AMDBaseRecoModel;
  selfCopy = [(AMDBaseRecoModel *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [(AMDBaseRecoModel *)selfCopy setModelId:location[0]];
  [(AMDBaseRecoModel *)selfCopy setVersion:-1];
  [(AMDBaseRecoModel *)selfCopy setAssetCreationTimestamp:0];
  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AMDBaseRecoModel)initWithId:(id)id andVersion:(unint64_t)version
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, id);
  versionCopy = version;
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AMDBaseRecoModel;
  selfCopy = [(AMDBaseRecoModel *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [(AMDBaseRecoModel *)selfCopy setModelId:location[0]];
  [(AMDBaseRecoModel *)selfCopy setVersion:versionCopy];
  [(AMDBaseRecoModel *)selfCopy setAssetCreationTimestamp:0];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (BOOL)isValid
{
  modelMetadata = [(AMDBaseRecoModel *)self modelMetadata];
  v8 = 0;
  isValid = 0;
  if (modelMetadata)
  {
    modelMetadata2 = [(AMDBaseRecoModel *)self modelMetadata];
    v8 = 1;
    isValid = [(AMDModelMetadata *)modelMetadata2 isValid];
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](modelMetadata2);
  }

  MEMORY[0x277D82BD8](modelMetadata);
  model = [(AMDBaseRecoModel *)self model];
  v4 = model != 0;
  MEMORY[0x277D82BD8](model);
  v5 = 0;
  if (v4)
  {
    v5 = 0;
    if (isValid)
    {
      return [(AMDBaseRecoModel *)self version]!= 0;
    }
  }

  return v5;
}

- (id)getPredictions:(unint64_t)predictions andInputBuilder:(id)builder andOutputBuilder:(id)outputBuilder withColdstartModelId:(id)id error:(id *)error
{
  location[3] = self;
  location[2] = a2;
  location[1] = predictions;
  location[0] = 0;
  objc_storeStrong(location, builder);
  v14 = 0;
  objc_storeStrong(&v14, outputBuilder);
  v13 = 0;
  objc_storeStrong(&v13, id);
  v12 = [AMDError allocError:24 withMessage:@"Programmer error"];
  v7 = v12;
  *error = v12;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return 0;
}

+ (id)getModelforId:(id)id useMinimalMap:(id)map error:(id *)error
{
  v82[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, id);
  v71 = 0;
  objc_storeStrong(&v71, map);
  errorCopy = error;
  v69 = [AMDModel getModelInfo:location[0] error:error];
  v68 = [v69 objectForKey:0x2852B1768];
  v67 = [v69 objectForKey:0x2852ADE08];
  v66 = [v69 objectForKey:0x2852A7108];
  v65 = [v69 objectForKey:0x2852AAF08];
  if (*error)
  {
    v73 = 0;
    v64 = 1;
  }

  else
  {
    v81[0] = 0x2852A7108;
    v82[0] = v66;
    v81[1] = 0x2852A8E08;
    v82[1] = location[0];
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
    [AMDFrameworkMetrics log:v63 withKey:@"inferenceModelInfo" atVerbosity:0];
    if (v69)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v30 = v6;
      MEMORY[0x277D82BD8](date);
      v59 = v30;
      longLongValue = [v68 longLongValue];
      v57[1] = (v30 - longLongValue);
      v57[0] = [location[0] stringByAppendingString:@"_modelAge"];
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30 - longLongValue];
      [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
      MEMORY[0x277D82BD8](v31);
      [AMDPerf sampleForKey:@"InferenceLoadModelAndMetadata"];
      v56 = [v65 stringByAppendingPathComponent:v67];
      v55 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v54 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_3_8_64_8_64_8_64(v79, location[0], v65, v56);
        _os_log_impl(&dword_240CB9000, v55, v54, "Loading model, modelId: %@, dir: %@, path: %@", v79, 0x20u);
      }

      objc_storeStrong(&v55, 0);
      if (v56)
      {
        v50 = [MEMORY[0x277CBEBC0] fileURLWithPath:v56 isDirectory:1];
        v49 = objc_alloc_init(MEMORY[0x277CBFF38]);
        [v49 setComputeUnits:0];
        v48 = -[AMDClassifierRecoModel initWithId:andVersion:]([AMDClassifierRecoModel alloc], "initWithId:andVersion:", location[0], [v66 longLongValue]);
        v27 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v50 configuration:v49 error:errorCopy];
        [v48 setModel:?];
        MEMORY[0x277D82BD8](v27);
        if (*errorCopy)
        {
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v46 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            path = [v50 path];
            localizedDescription = [*errorCopy localizedDescription];
            __os_log_helper_16_2_2_8_64_8_64(v77, path, localizedDescription);
            _os_log_error_impl(&dword_240CB9000, oslog, v46, "Error loading model from %@: %@", v77, 0x16u);
            MEMORY[0x277D82BD8](localizedDescription);
            MEMORY[0x277D82BD8](path);
          }

          objc_storeStrong(&oslog, 0);
          v73 = 0;
          v64 = 1;
        }

        else
        {
          v24 = [v65 stringByAppendingPathComponent:@"model_metadata"];
          v45 = [v24 stringByAppendingPathExtension:@"json"];
          MEMORY[0x277D82BD8](v24);
          v44 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v45];
          if (v44)
          {
            v21 = [[AMDModelMetadata alloc] initWithMetadataJSON:v44 error:errorCopy];
            [v48 setModelMetadata:?];
            MEMORY[0x277D82BD8](v21);
            v9 = *errorCopy;
            v39 = 0;
            v22 = 1;
            if (!v9)
            {
              modelMetadata = [v48 modelMetadata];
              v39 = 1;
              v22 = modelMetadata == 0;
            }

            if (v39)
            {
              MEMORY[0x277D82BD8](modelMetadata);
            }

            if (v22)
            {
              v38 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v37 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v19 = v65;
                localizedDescription2 = [*errorCopy localizedDescription];
                __os_log_helper_16_2_2_8_64_8_64(v75, v19, localizedDescription2);
                _os_log_error_impl(&dword_240CB9000, v38, v37, "error while loading metadata from %@: %@", v75, 0x16u);
                MEMORY[0x277D82BD8](localizedDescription2);
              }

              objc_storeStrong(&v38, 0);
              v73 = 0;
              v64 = 1;
            }

            else
            {
              [AMDPerf sampleForKey:@"InferenceLoadAssets"];
              bOOLValue = 0;
              if (v71)
              {
                bOOLValue = [v71 BOOLValue];
              }

              v15 = [AMDModelAssets alloc];
              v14 = v65;
              modelMetadata2 = [v48 modelMetadata];
              getAssetsMetadata = [modelMetadata2 getAssetsMetadata];
              v16 = [AMDModelAssets initFromDir:v15 andMetadata:"initFromDir:andMetadata:useBinaryInputMap:useBinaryOutputMap:withModelId:isInference:error:" useBinaryInputMap:v14 useBinaryOutputMap:errorCopy withModelId:? isInference:? error:?];
              [v48 setModelAssets:?];
              MEMORY[0x277D82BD8](v16);
              MEMORY[0x277D82BD8](getAssetsMetadata);
              MEMORY[0x277D82BD8](modelMetadata2);
              if (*errorCopy)
              {
                v35 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v12 = v65;
                  localizedDescription3 = [*errorCopy localizedDescription];
                  __os_log_helper_16_2_2_8_64_8_64(v74, v12, localizedDescription3);
                  _os_log_error_impl(&dword_240CB9000, v35, OS_LOG_TYPE_ERROR, "Error loading assets from %@: %@", v74, 0x16u);
                  MEMORY[0x277D82BD8](localizedDescription3);
                }

                objc_storeStrong(&v35, 0);
                v73 = 0;
                v64 = 1;
              }

              else
              {
                [AMDPerf sampleForKey:@"InferencLoadedAssets"];
                v73 = MEMORY[0x277D82BE0](v48);
                v64 = 1;
              }
            }
          }

          else
          {
            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"No metadata for modelId '%@'!", location[0]];
            v42 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v41 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_64(v76, v43);
              _os_log_error_impl(&dword_240CB9000, v42, v41, "%@", v76, 0xCu);
            }

            objc_storeStrong(&v42, 0);
            v23 = [AMDError allocError:16 withMessage:v43];
            v8 = v23;
            *errorCopy = v23;
            v73 = 0;
            v64 = 1;
            objc_storeStrong(&v43, 0);
          }

          objc_storeStrong(&v44, 0);
          objc_storeStrong(&v45, 0);
        }

        objc_storeStrong(&v48, 0);
        objc_storeStrong(&v49, 0);
        objc_storeStrong(&v50, 0);
      }

      else
      {
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Model path for modelId '%@' is nil!", location[0]];
        v52 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v51 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v78, v53);
          _os_log_error_impl(&dword_240CB9000, v52, v51, "%@", v78, 0xCu);
        }

        objc_storeStrong(&v52, 0);
        v28 = [AMDError allocError:16 withMessage:v53];
        v7 = v28;
        *errorCopy = v28;
        v73 = 0;
        v64 = 1;
        objc_storeStrong(&v53, 0);
      }

      objc_storeStrong(&v56, 0);
      objc_storeStrong(v57, 0);
    }

    else
    {
      v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"No model found for modelId '%@'", location[0]];
      v61 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v80, v62);
        _os_log_error_impl(&dword_240CB9000, v61, type, "%@", v80, 0xCu);
      }

      objc_storeStrong(&v61, 0);
      v32 = [AMDError allocError:16 withMessage:v62];
      v5 = v32;
      *errorCopy = v32;
      v73 = 0;
      v64 = 1;
      objc_storeStrong(&v62, 0);
    }

    objc_storeStrong(&v63, 0);
  }

  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v10 = v73;

  return v10;
}

+ (id)getCurrentDirURLForName:(id)name
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager URLsForDirectory:14 inDomains:1];
  lastObject = [v4 lastObject];
  MEMORY[0x277D82BD8](v4);
  v9 = [lastObject URLByAppendingPathComponent:0x2852AD488];
  v8 = [v9 URLByAppendingPathComponent:@"models"];
  v7 = [v8 URLByAppendingPathComponent:location[0]];
  v6 = [v7 URLByAppendingPathComponent:@"current"];
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&lastObject, 0);
  objc_storeStrong(&defaultManager, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)loadModelMetadataFromDir:(id)dir error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dir);
  errorCopy = error;
  v9 = [location[0] URLByAppendingPathComponent:@"model_metadata"];
  v8 = [v9 URLByAppendingPathExtension:@"json"];
  path = [v8 path];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v12 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path];
  if (v12)
  {
    v5 = [[AMDModelMetadata alloc] initWithMetadataJSON:v12 error:errorCopy];
    [(AMDBaseRecoModel *)selfCopy setModelMetadata:?];
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Model metadata could not be loaded from directory %@", location[0]];
    v10 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v17, v11);
      _os_log_error_impl(&dword_240CB9000, v10, OS_LOG_TYPE_ERROR, "%@", v17, 0xCu);
    }

    objc_storeStrong(&v10, 0);
    v6 = [AMDError allocError:15 withMessage:v11];
    v4 = v6;
    *errorCopy = v6;
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&path, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)parseModelInfoFromBuffer:(id)buffer error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buffer);
  errorCopy = error;
  v4 = [location[0] getShortWithError:error];
  [(AMDBaseRecoModel *)selfCopy setVersion:v4];
  if (error && *errorCopy)
  {
    v17 = 0;
    v13 = 1;
  }

  else
  {
    v5 = [location[0] getLongWithError:errorCopy];
    [(AMDBaseRecoModel *)selfCopy setAssetCreationTimestamp:v5];
    if (errorCopy && *errorCopy)
    {
      v17 = 0;
      v13 = 1;
    }

    else if ([(AMDBaseRecoModel *)selfCopy version]&& [(AMDBaseRecoModel *)selfCopy assetCreationTimestamp]> 0)
    {
      v17 = 1;
      v13 = 1;
    }

    else
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v8 = type;
        __os_log_helper_16_0_0(v10);
        _os_log_error_impl(&dword_240CB9000, log, v8, "invalid value for version/timestamp", v10, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v17 = 0;
      v13 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v17 & 1;
}

@end