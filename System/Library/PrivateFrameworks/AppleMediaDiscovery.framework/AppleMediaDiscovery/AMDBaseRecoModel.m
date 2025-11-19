@interface AMDBaseRecoModel
+ (id)getCurrentDirURLForName:(id)a3;
+ (id)getModelforId:(id)a3 useMinimalMap:(id)a4 error:(id *)a5;
- (AMDBaseRecoModel)initWithId:(id)a3;
- (AMDBaseRecoModel)initWithId:(id)a3 andVersion:(unint64_t)a4;
- (BOOL)isValid;
- (BOOL)parseModelInfoFromBuffer:(id)a3 error:(id *)a4;
- (id)getPredictions:(unint64_t)a3 andInputBuilder:(id)a4 andOutputBuilder:(id)a5 withColdstartModelId:(id)a6 error:(id *)a7;
- (void)loadModelMetadataFromDir:(id)a3 error:(id *)a4;
@end

@implementation AMDBaseRecoModel

- (AMDBaseRecoModel)initWithId:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AMDBaseRecoModel;
  v8 = [(AMDBaseRecoModel *)&v6 init];
  objc_storeStrong(&v8, v8);
  [(AMDBaseRecoModel *)v8 setModelId:location[0]];
  [(AMDBaseRecoModel *)v8 setVersion:-1];
  [(AMDBaseRecoModel *)v8 setAssetCreationTimestamp:0];
  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (AMDBaseRecoModel)initWithId:(id)a3 andVersion:(unint64_t)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AMDBaseRecoModel;
  v11 = [(AMDBaseRecoModel *)&v8 init];
  objc_storeStrong(&v11, v11);
  [(AMDBaseRecoModel *)v11 setModelId:location[0]];
  [(AMDBaseRecoModel *)v11 setVersion:v9];
  [(AMDBaseRecoModel *)v11 setAssetCreationTimestamp:0];
  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (BOOL)isValid
{
  v6 = [(AMDBaseRecoModel *)self modelMetadata];
  v8 = 0;
  v7 = 0;
  if (v6)
  {
    v9 = [(AMDBaseRecoModel *)self modelMetadata];
    v8 = 1;
    v7 = [(AMDModelMetadata *)v9 isValid];
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BD8](v6);
  v2 = [(AMDBaseRecoModel *)self model];
  v4 = v2 != 0;
  MEMORY[0x277D82BD8](v2);
  v5 = 0;
  if (v4)
  {
    v5 = 0;
    if (v7)
    {
      return [(AMDBaseRecoModel *)self version]!= 0;
    }
  }

  return v5;
}

- (id)getPredictions:(unint64_t)a3 andInputBuilder:(id)a4 andOutputBuilder:(id)a5 withColdstartModelId:(id)a6 error:(id *)a7
{
  location[3] = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v12 = [AMDError allocError:24 withMessage:@"Programmer error"];
  v7 = v12;
  *a7 = v12;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return 0;
}

+ (id)getModelforId:(id)a3 useMinimalMap:(id)a4 error:(id *)a5
{
  v82[2] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v71 = 0;
  objc_storeStrong(&v71, a4);
  v70 = a5;
  v69 = [AMDModel getModelInfo:location[0] error:a5];
  v68 = [v69 objectForKey:0x2852B1768];
  v67 = [v69 objectForKey:0x2852ADE08];
  v66 = [v69 objectForKey:0x2852A7108];
  v65 = [v69 objectForKey:0x2852AAF08];
  if (*a5)
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
      v29 = [MEMORY[0x277CBEAA8] date];
      [v29 timeIntervalSince1970];
      v30 = v6;
      MEMORY[0x277D82BD8](v29);
      v59 = v30;
      v58 = [v68 longLongValue];
      v57[1] = (v30 - v58);
      v57[0] = [location[0] stringByAppendingString:@"_modelAge"];
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30 - v58];
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
        v27 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v50 configuration:v49 error:v70];
        [v48 setModel:?];
        MEMORY[0x277D82BD8](v27);
        if (*v70)
        {
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v46 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v26 = [v50 path];
            v25 = [*v70 localizedDescription];
            __os_log_helper_16_2_2_8_64_8_64(v77, v26, v25);
            _os_log_error_impl(&dword_240CB9000, oslog, v46, "Error loading model from %@: %@", v77, 0x16u);
            MEMORY[0x277D82BD8](v25);
            MEMORY[0x277D82BD8](v26);
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
            v21 = [[AMDModelMetadata alloc] initWithMetadataJSON:v44 error:v70];
            [v48 setModelMetadata:?];
            MEMORY[0x277D82BD8](v21);
            v9 = *v70;
            v39 = 0;
            v22 = 1;
            if (!v9)
            {
              v40 = [v48 modelMetadata];
              v39 = 1;
              v22 = v40 == 0;
            }

            if (v39)
            {
              MEMORY[0x277D82BD8](v40);
            }

            if (v22)
            {
              v38 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v37 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v19 = v65;
                v20 = [*v70 localizedDescription];
                __os_log_helper_16_2_2_8_64_8_64(v75, v19, v20);
                _os_log_error_impl(&dword_240CB9000, v38, v37, "error while loading metadata from %@: %@", v75, 0x16u);
                MEMORY[0x277D82BD8](v20);
              }

              objc_storeStrong(&v38, 0);
              v73 = 0;
              v64 = 1;
            }

            else
            {
              [AMDPerf sampleForKey:@"InferenceLoadAssets"];
              v36 = 0;
              if (v71)
              {
                v36 = [v71 BOOLValue];
              }

              v15 = [AMDModelAssets alloc];
              v14 = v65;
              v18 = [v48 modelMetadata];
              v17 = [v18 getAssetsMetadata];
              v16 = [AMDModelAssets initFromDir:v15 andMetadata:"initFromDir:andMetadata:useBinaryInputMap:useBinaryOutputMap:withModelId:isInference:error:" useBinaryInputMap:v14 useBinaryOutputMap:v70 withModelId:? isInference:? error:?];
              [v48 setModelAssets:?];
              MEMORY[0x277D82BD8](v16);
              MEMORY[0x277D82BD8](v17);
              MEMORY[0x277D82BD8](v18);
              if (*v70)
              {
                v35 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v12 = v65;
                  v13 = [*v70 localizedDescription];
                  __os_log_helper_16_2_2_8_64_8_64(v74, v12, v13);
                  _os_log_error_impl(&dword_240CB9000, v35, OS_LOG_TYPE_ERROR, "Error loading assets from %@: %@", v74, 0x16u);
                  MEMORY[0x277D82BD8](v13);
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
            *v70 = v23;
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
        *v70 = v28;
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
      *v70 = v32;
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

+ (id)getCurrentDirURLForName:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v11 URLsForDirectory:14 inDomains:1];
  v10 = [v4 lastObject];
  MEMORY[0x277D82BD8](v4);
  v9 = [v10 URLByAppendingPathComponent:0x2852AD488];
  v8 = [v9 URLByAppendingPathComponent:@"models"];
  v7 = [v8 URLByAppendingPathComponent:location[0]];
  v6 = [v7 URLByAppendingPathComponent:@"current"];
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)loadModelMetadataFromDir:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  v9 = [location[0] URLByAppendingPathComponent:@"model_metadata"];
  v8 = [v9 URLByAppendingPathExtension:@"json"];
  v13 = [v8 path];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v12 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v13];
  if (v12)
  {
    v5 = [[AMDModelMetadata alloc] initWithMetadataJSON:v12 error:v14];
    [(AMDBaseRecoModel *)v16 setModelMetadata:?];
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
    *v14 = v6;
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)parseModelInfoFromBuffer:(id)a3 error:(id *)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  v4 = [location[0] getShortWithError:a4];
  [(AMDBaseRecoModel *)v16 setVersion:v4];
  if (a4 && *v14)
  {
    v17 = 0;
    v13 = 1;
  }

  else
  {
    v5 = [location[0] getLongWithError:v14];
    [(AMDBaseRecoModel *)v16 setAssetCreationTimestamp:v5];
    if (v14 && *v14)
    {
      v17 = 0;
      v13 = 1;
    }

    else if ([(AMDBaseRecoModel *)v16 version]&& [(AMDBaseRecoModel *)v16 assetCreationTimestamp]> 0)
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