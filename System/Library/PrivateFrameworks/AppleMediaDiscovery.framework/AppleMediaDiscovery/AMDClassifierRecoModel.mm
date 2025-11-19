@interface AMDClassifierRecoModel
- (AMDClassifierRecoModel)initWithId:(id)a3 andVersion:(unint64_t)a4;
- (id)getPredictions:(unint64_t)a3 andInputBuilder:(id)a4 andOutputBuilder:(id)a5 withColdstartModelId:(id)a6 error:(id *)a7;
@end

@implementation AMDClassifierRecoModel

- (AMDClassifierRecoModel)initWithId:(id)a3 andVersion:(unint64_t)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AMDClassifierRecoModel;
  v11 = [(AMDBaseRecoModel *)&v8 initWithId:location[0] andVersion:a4];
  objc_storeStrong(&v11, v11);
  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (id)getPredictions:(unint64_t)a3 andInputBuilder:(id)a4 andOutputBuilder:(id)a5 withColdstartModelId:(id)a6 error:(id *)a7
{
  v70 = *MEMORY[0x277D85DE8];
  v61 = self;
  v60 = a2;
  v59 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v57 = 0;
  objc_storeStrong(&v57, a5);
  v56 = 0;
  objc_storeStrong(&v56, a6);
  v55 = a7;
  if ([(AMDBaseRecoModel *)v61 isValid])
  {
    v25 = location;
    v28 = [(AMDBaseRecoModel *)v61 modelMetadata];
    v27 = [(AMDModelMetadata *)v28 getInputsMetadata];
    v26 = [(AMDBaseRecoModel *)v61 modelAssets];
    v50 = [v25 getInputsWithMetadata:v27 andModelAssets:? error:?];
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    if (*v55)
    {
      v49 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v48 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v24 = [*v55 localizedDescription];
        __os_log_helper_16_2_1_8_64(v68, v24);
        _os_log_error_impl(&dword_240CB9000, v49, v48, "could not build the inputs provider, %@", v68, 0xCu);
        MEMORY[0x277D82BD8](v24);
      }

      objc_storeStrong(&v49, 0);
      v62 = 0;
      v51 = 1;
    }

    else if (v50)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = [(AMDBaseRecoModel *)v61 getId];
      v44 = [v20 stringWithFormat:@"CoreMLCall__%@", v21];
      MEMORY[0x277D82BD8](v21);
      [AMDPerf startMonitoringEvent:v44];
      v22 = [(AMDBaseRecoModel *)v61 model];
      v43 = [(MLModel *)v22 predictionFromFeatures:v50 error:v55];
      MEMORY[0x277D82BD8](v22);
      if (*v55)
      {
        v42 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v41 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v19 = [*v55 localizedDescription];
          __os_log_helper_16_2_1_8_64(v66, v19);
          _os_log_error_impl(&dword_240CB9000, v42, v41, "error running inference, %@", v66, 0xCu);
          MEMORY[0x277D82BD8](v19);
        }

        objc_storeStrong(&v42, 0);
        v62 = 0;
        v51 = 1;
      }

      else if (v43)
      {
        [AMDPerf endMonitoringEvent:v44];
        v16 = v57;
        v15 = v59;
        v17 = [(AMDBaseRecoModel *)v61 modelAssets];
        v37 = [v16 getPredictions:v15 fromMLProvider:v43 andModelAssets:? withColdstartModelId:? error:?];
        MEMORY[0x277D82BD8](v17);
        if (*v55)
        {
          v36 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v35 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v14 = [*v55 localizedDescription];
            __os_log_helper_16_2_1_8_64(v64, v14);
            _os_log_error_impl(&dword_240CB9000, v36, v35, "error building output, %@", v64, 0xCu);
            MEMORY[0x277D82BD8](v14);
          }

          objc_storeStrong(&v36, 0);
          v62 = 0;
          v51 = 1;
        }

        else if (v37)
        {
          v62 = MEMORY[0x277D82BE0](v37);
          v51 = 1;
        }

        else
        {
          v34 = MEMORY[0x277D82BE0](@"nil inference builder result");
          v33 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_1_8_64(v63, v34);
            _os_log_debug_impl(&dword_240CB9000, v33, OS_LOG_TYPE_DEBUG, "%@", v63, 0xCu);
          }

          objc_storeStrong(&v33, 0);
          v13 = [AMDError allocError:24 withMessage:v34];
          v10 = v13;
          *v55 = v13;
          v62 = 0;
          v51 = 1;
          objc_storeStrong(&v34, 0);
        }

        objc_storeStrong(&v37, 0);
      }

      else
      {
        v40 = MEMORY[0x277D82BE0](@"nil inference result");
        v39 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v38 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_1_8_64(v65, v40);
          _os_log_debug_impl(&dword_240CB9000, v39, v38, "%@", v65, 0xCu);
        }

        objc_storeStrong(&v39, 0);
        v18 = [AMDError allocError:24 withMessage:v40];
        v9 = v18;
        *v55 = v18;
        v62 = 0;
        v51 = 1;
        objc_storeStrong(&v40, 0);
      }

      objc_storeStrong(&v43, 0);
      objc_storeStrong(&v44, 0);
    }

    else
    {
      v47 = MEMORY[0x277D82BE0](@"nil inputs provider");
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v45 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v67, v47);
        _os_log_debug_impl(&dword_240CB9000, oslog, v45, "%@", v67, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v23 = [AMDError allocError:24 withMessage:v47];
      v8 = v23;
      *v55 = v23;
      v62 = 0;
      v51 = 1;
      objc_storeStrong(&v47, 0);
    }

    objc_storeStrong(&v50, 0);
  }

  else
  {
    v54 = MEMORY[0x277D82BE0](@"model is not ready for predictions");
    v53 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v52 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v69, v54);
      _os_log_debug_impl(&dword_240CB9000, v53, v52, "%@", v69, 0xCu);
    }

    objc_storeStrong(&v53, 0);
    v29 = [AMDError allocError:24 withMessage:v54];
    v7 = v29;
    *v55 = v29;
    v62 = 0;
    v51 = 1;
    objc_storeStrong(&v54, 0);
  }

  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  v11 = v62;

  return v11;
}

@end