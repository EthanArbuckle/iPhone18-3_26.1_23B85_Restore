@interface AMDClassifierRecoModel
- (AMDClassifierRecoModel)initWithId:(id)id andVersion:(unint64_t)version;
- (id)getPredictions:(unint64_t)predictions andInputBuilder:(id)builder andOutputBuilder:(id)outputBuilder withColdstartModelId:(id)id error:(id *)error;
@end

@implementation AMDClassifierRecoModel

- (AMDClassifierRecoModel)initWithId:(id)id andVersion:(unint64_t)version
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, id);
  versionCopy = version;
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AMDClassifierRecoModel;
  selfCopy = [(AMDBaseRecoModel *)&v8 initWithId:location[0] andVersion:version];
  objc_storeStrong(&selfCopy, selfCopy);
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)getPredictions:(unint64_t)predictions andInputBuilder:(id)builder andOutputBuilder:(id)outputBuilder withColdstartModelId:(id)id error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v60 = a2;
  predictionsCopy = predictions;
  location = 0;
  objc_storeStrong(&location, builder);
  v57 = 0;
  objc_storeStrong(&v57, outputBuilder);
  v56 = 0;
  objc_storeStrong(&v56, id);
  errorCopy = error;
  if ([(AMDBaseRecoModel *)selfCopy isValid])
  {
    v25 = location;
    modelMetadata = [(AMDBaseRecoModel *)selfCopy modelMetadata];
    getInputsMetadata = [(AMDModelMetadata *)modelMetadata getInputsMetadata];
    modelAssets = [(AMDBaseRecoModel *)selfCopy modelAssets];
    v50 = [v25 getInputsWithMetadata:getInputsMetadata andModelAssets:? error:?];
    MEMORY[0x277D82BD8](modelAssets);
    MEMORY[0x277D82BD8](getInputsMetadata);
    MEMORY[0x277D82BD8](modelMetadata);
    if (*errorCopy)
    {
      v49 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v48 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [*errorCopy localizedDescription];
        __os_log_helper_16_2_1_8_64(v68, localizedDescription);
        _os_log_error_impl(&dword_240CB9000, v49, v48, "could not build the inputs provider, %@", v68, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription);
      }

      objc_storeStrong(&v49, 0);
      v62 = 0;
      v51 = 1;
    }

    else if (v50)
    {
      v20 = MEMORY[0x277CCACA8];
      getId = [(AMDBaseRecoModel *)selfCopy getId];
      v44 = [v20 stringWithFormat:@"CoreMLCall__%@", getId];
      MEMORY[0x277D82BD8](getId);
      [AMDPerf startMonitoringEvent:v44];
      model = [(AMDBaseRecoModel *)selfCopy model];
      v43 = [(MLModel *)model predictionFromFeatures:v50 error:errorCopy];
      MEMORY[0x277D82BD8](model);
      if (*errorCopy)
      {
        v42 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v41 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          localizedDescription2 = [*errorCopy localizedDescription];
          __os_log_helper_16_2_1_8_64(v66, localizedDescription2);
          _os_log_error_impl(&dword_240CB9000, v42, v41, "error running inference, %@", v66, 0xCu);
          MEMORY[0x277D82BD8](localizedDescription2);
        }

        objc_storeStrong(&v42, 0);
        v62 = 0;
        v51 = 1;
      }

      else if (v43)
      {
        [AMDPerf endMonitoringEvent:v44];
        v16 = v57;
        v15 = predictionsCopy;
        modelAssets2 = [(AMDBaseRecoModel *)selfCopy modelAssets];
        v37 = [v16 getPredictions:v15 fromMLProvider:v43 andModelAssets:? withColdstartModelId:? error:?];
        MEMORY[0x277D82BD8](modelAssets2);
        if (*errorCopy)
        {
          v36 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v35 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            localizedDescription3 = [*errorCopy localizedDescription];
            __os_log_helper_16_2_1_8_64(v64, localizedDescription3);
            _os_log_error_impl(&dword_240CB9000, v36, v35, "error building output, %@", v64, 0xCu);
            MEMORY[0x277D82BD8](localizedDescription3);
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
          *errorCopy = v13;
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
        *errorCopy = v18;
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
      *errorCopy = v23;
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
    *errorCopy = v29;
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