@interface VCRateControlMLEnrollment
- (BOOL)checkSupportForPFLOrTrialEnrollment;
- (BOOL)isEnrollmentDisabledByStorebagSwitch;
- (BOOL)setupWithUserDefault;
- (BOOL)validateFilePath:(id)path;
- (BOOL)validatePFLExpirationDateWithPFLJSON:(id)n;
- (VCRateControlMLEnrollment)init;
- (id)checkValidJSONAtPath:(id)path;
- (int)setPFLPath;
- (int)validateTrainingDataJSONPath:(id)path withPFLObject:(id)object;
- (void)cleanupTrainingDataFiles;
- (void)dealloc;
- (void)init;
- (void)removeFileAtPath:(id)path;
- (void)setConfigurationWithPFLJSON:(id)n;
- (void)setPFLPath;
- (void)setTrialPath;
- (void)useTrialPath:(id)path trialGroup:(int64_t)group trialID:(id)d;
@end

@implementation VCRateControlMLEnrollment

- (VCRateControlMLEnrollment)init
{
  v33 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCRateControlMLEnrollment;
  v2 = [(VCObject *)&v14 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  if ([(VCRateControlMLEnrollment *)v2 setupWithUserDefault])
  {
    if ([(VCRateControlMLEnrollment *)v3 isEnrollmentDisabledByStorebagSwitch])
    {
      [VCRateControlMLEnrollment init];
    }

    else if ([(VCRateControlMLEnrollment *)v3 checkSupportForPFLOrTrialEnrollment])
    {
      if ([(VCRateControlMLEnrollment *)v3 setPFLPath])
      {
        if (!v3->_modelPath)
        {
          [(VCRateControlMLEnrollment *)v3 setTrialPath];
          v4 = 1;
          goto LABEL_8;
        }

        [VCRateControlMLEnrollment init];
      }

      else
      {
        [(VCRateControlMLEnrollment *)buf init];
      }
    }

    else
    {
      [VCRateControlMLEnrollment init];
    }
  }

  else
  {
    [VCRateControlMLEnrollment init];
  }

  v4 = buf[0];
LABEL_8:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      modelPath = v3->_modelPath;
      recipeID = v3->_recipeID;
      nIteration = v3->_nIteration;
      reportingGroup = v3->_reportingGroup;
      trialModelID = v3->_trialModelID;
      *buf = 136317186;
      v16 = v5;
      v17 = 2080;
      v18 = "[VCRateControlMLEnrollment init]";
      v19 = 1024;
      v20 = 82;
      v21 = 2112;
      v22 = v3;
      v23 = 2112;
      v24 = modelPath;
      v25 = 2112;
      v26 = recipeID;
      v27 = 1024;
      v28 = nIteration;
      v29 = 1024;
      v30 = reportingGroup;
      v31 = 2112;
      v32 = trialModelID;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Set properties on self=%@ modelPath=%@ recipeID=%@ nIteration=%u reportingGroup=%u trialModelID=%@", buf, 0x50u);
    }
  }

  if ((v4 & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCRateControlMLEnrollment *)v12 init];
      }
    }

    return 0;
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCRateControlMLEnrollment;
  [(VCObject *)&v3 dealloc];
}

- (BOOL)setupWithUserDefault
{
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"disableAllAVCExperiments", 0);
  IntValueForKey = VCDefaults_GetIntValueForKey(@"rateControlMLAlgorithmMode", 0xFFFFFFFFLL);
  if (IntValueForKey < 1)
  {
    result = IntValueForKey != 0 && !BoolValueForKey;
  }

  else
  {
    [(VCRateControlMLEnrollment *)self setDefaultPath];
    result = 0;
  }

  self->_reportingGroup = 0;
  return result;
}

- (BOOL)isEnrollmentDisabledByStorebagSwitch
{
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];

  return [v2 BOOLValue];
}

- (BOOL)checkSupportForPFLOrTrialEnrollment
{
  IntValueForKey = VCDefaults_GetIntValueForKey(@"forceMLEnrollment", 0);
  if (!_os_feature_enabled_impl())
  {
    if (IntValueForKey)
    {
      return 1;
    }

    goto LABEL_7;
  }

  validateHardwareSupport = [(VCRateControlMLEnrollment *)self validateHardwareSupport];
  result = 1;
  if (!validateHardwareSupport && !IntValueForKey)
  {
LABEL_7:
    result = 0;
    self->_reportingGroup = 0;
  }

  return result;
}

- (void)setTrialPath
{
  v3 = [MEMORY[0x1E69DB518] clientWithIdentifier:310];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_msgSend(objc_msgSend(v3 levelForFactor:@"model" withNamespaceName:{@"AVCONFERENCE_NETWORK_VCRCML", "directoryValue"), "path"}];
    v6 = [objc_msgSend(v4 levelForFactor:@"group" withNamespaceName:{@"AVCONFERENCE_NETWORK_VCRCML", "longValue"}];
    v7 = [objc_msgSend(v4 levelForFactor:@"modelID" withNamespaceName:{@"AVCONFERENCE_NETWORK_VCRCML", "stringValue"}];

    [(VCRateControlMLEnrollment *)self useTrialPath:v5 trialGroup:v6 trialID:v7];
  }
}

- (int)setPFLPath
{
  v10 = *MEMORY[0x1E69E9840];
  getCachesDirectoryPath = [MEMORY[0x1E6986628] getCachesDirectoryPath];
  v4 = [getCachesDirectoryPath stringByAppendingString:@"/rc_fl_model/fl_model.json"];
  v5 = [getCachesDirectoryPath stringByAppendingString:@"/rc_fl_data/training_data.json"];
  if (![(VCRateControlMLEnrollment *)self validateFilePath:v4])
  {
    goto LABEL_10;
  }

  v6 = [(VCRateControlMLEnrollment *)self checkValidJSONAtPath:v4];
  if (!v6)
  {
    [VCRateControlMLEnrollment setPFLPath];
    goto LABEL_10;
  }

  v7 = v6;
  if (![(VCRateControlMLEnrollment *)self validatePFLExpirationDateWithPFLJSON:v6])
  {
    [VCRateControlMLEnrollment setPFLPath];
    goto LABEL_10;
  }

  if (!-[VCRateControlMLEnrollment validateFilePath:](self, "validateFilePath:", [v7 objectForKeyedSubscript:@"path"]))
  {
    [(VCRateControlMLEnrollment *)&v9 setPFLPath];
    return v9;
  }

  if (![(VCRateControlMLEnrollment *)self validateFilePath:v5]|| (result = [(VCRateControlMLEnrollment *)self validateTrainingDataJSONPath:v5 withPFLObject:v7], result == 2))
  {
    [(VCRateControlMLEnrollment *)self setConfigurationWithPFLJSON:v7];
    return 2;
  }

  if (result == 3)
  {
LABEL_10:
    [(VCRateControlMLEnrollment *)self cleanupTrainingDataFiles];
    return 1;
  }

  return result;
}

- (void)setConfigurationWithPFLJSON:(id)n
{
  self->_modelPath = [objc_msgSend(n objectForKeyedSubscript:{@"path", "copy"}];
  self->_recipeID = [objc_msgSend(n objectForKeyedSubscript:{@"recipe_id", "copy"}];
  self->_reportingGroup = 1;
  self->_shouldGenerateLocalTrainingData = 1;
  self->_nIteration = [objc_msgSend(n objectForKeyedSubscript:{@"iteration_number", "intValue"}];
}

- (BOOL)validatePFLExpirationDateWithPFLJSON:(id)n
{
  v4 = [MEMORY[0x1E695DF00] now];
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
  v6 = [v5 dateFromString:{objc_msgSend(n, "objectForKeyedSubscript:", @"expiration_time"}];

  v7 = [v4 compare:v6];
  if (v7 != -1)
  {
    [VCRateControlMLEnrollment validatePFLExpirationDateWithPFLJSON:];
  }

  return v7 == -1;
}

- (int)validateTrainingDataJSONPath:(id)path withPFLObject:(id)object
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [(VCRateControlMLEnrollment *)self checkValidJSONAtPath:path];
  if (!v8)
  {
    [VCRateControlMLEnrollment validateTrainingDataJSONPath:path withPFLObject:&v14];
    return v14;
  }

  v9 = v8;
  v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v10 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
  v11 = [v10 dateFromString:{objc_msgSend(v9, "objectForKeyedSubscript:", @"generation_time"}];
  v12 = [v10 dateFromString:{objc_msgSend(object, "objectForKeyedSubscript:", @"download_time"}];

  if ([v11 compare:v7] != -1)
  {
    [(VCRateControlMLEnrollment *)v9 validateTrainingDataJSONPath:v7 withPFLObject:&v14];
    return v14;
  }

  if ([v11 compare:v12] != -1)
  {
    [(VCRateControlMLEnrollment *)v9 validateTrainingDataJSONPath:object withPFLObject:&v14];
    return v14;
  }

  return 2;
}

- (void)useTrialPath:(id)path trialGroup:(int64_t)group trialID:(id)d
{
  self->_reportingGroup = 0;
  if (group == 4)
  {
    v6 = 4;
LABEL_8:
    self->_reportingGroup = v6;
    return;
  }

  if (group != 3)
  {
    if (group != 2)
    {
      return;
    }

    [(VCRateControlMLEnrollment *)self setDefaultPath:path];
    v6 = 2;
    goto LABEL_8;
  }

  v8 = [path stringByAppendingPathComponent:@"rateController.mlmodelc/model.mil"];
  if ([(VCRateControlMLEnrollment *)self validateFilePath:v8])
  {
    self->_modelPath = [v8 copy];
    self->_reportingGroup = 3;
    self->_trialModelID = [d copy];
  }
}

- (void)cleanupTrainingDataFiles
{
  getCachesDirectoryPath = [MEMORY[0x1E6986628] getCachesDirectoryPath];
  v4 = [getCachesDirectoryPath stringByAppendingString:@"/rc_fl_data/training_data.json"];
  v5 = [getCachesDirectoryPath stringByAppendingString:@"/rc_fl_data/training_data.db"];
  [(VCRateControlMLEnrollment *)self removeFileAtPath:v4];

  [(VCRateControlMLEnrollment *)self removeFileAtPath:v5];
}

- (void)removeFileAtPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:path])
  {
    v14 = 0;
    v5 = [defaultManager removeItemAtPath:path error:&v14];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v5)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = v7;
          v17 = 2080;
          v18 = "[VCRateControlMLEnrollment removeFileAtPath:]";
          v19 = 1024;
          v20 = 269;
          v21 = 2112;
          pathCopy3 = path;
          v9 = " [%s] %s:%d Successfully deleted filePath=%@";
LABEL_10:
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x26u);
        }
      }
    }

    else if (ErrorLogLevelForModule >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCRateControlMLEnrollment removeFileAtPath:]";
        v19 = 1024;
        v20 = 271;
        v21 = 2112;
        pathCopy3 = path;
        v23 = 2112;
        v24 = v14;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to delete filePath=%@ error=%@", buf, 0x30u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315906;
      v16 = v10;
      v17 = 2080;
      v18 = "[VCRateControlMLEnrollment removeFileAtPath:]";
      v19 = 1024;
      v20 = 274;
      v21 = 2112;
      pathCopy3 = path;
      v9 = " [%s] %s:%d File does not exist at filePath=%@";
      goto LABEL_10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [VCRateControlMLEnrollment removeFileAtPath:v10];
    }
  }
}

- (id)checkValidJSONAtPath:(id)path
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:path options:0 error:&v8];
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v8];

  if (v5)
  {
    v6 = v8 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    [(VCRateControlMLEnrollment *)path checkValidJSONAtPath:v9];
    return v9[0];
  }

  return v5;
}

- (BOOL)validateFilePath:(id)path
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];

  return [defaultManager fileExistsAtPath:path];
}

- (void)init
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  selfCopy = self;
  OUTLINED_FUNCTION_0();
  v4 = 84;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d init failed", &v2, 0x1Cu);
}

- (void)setPFLPath
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)validatePFLExpirationDateWithPFLJSON:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 199;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d PFL is expired, using hardcoded .mil file.", &v2, 0x1Cu);
    }
  }
}

- (void)validateTrainingDataJSONPath:(_DWORD *)a3 withPFLObject:.cold.1(void *a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [a1 objectForKeyedSubscript:@"generation_time"];
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x30u);
    }
  }

  *a3 = 0;
}

- (void)validateTrainingDataJSONPath:(_DWORD *)a3 withPFLObject:.cold.2(void *a1, void *a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      [a1 objectForKeyedSubscript:@"download_time"];
      [a2 objectForKeyedSubscript:@"download_time"];
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v6, v7, v8, v9, v10, 0x30u);
    }
  }

  *a3 = 1;
}

- (void)validateTrainingDataJSONPath:(uint64_t)a1 withPFLObject:(_DWORD *)a2 .cold.3(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = 2;
}

- (void)removeFileAtPath:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  v5 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d File does not exist at filePath=%@", &v3, 0x26u);
}

- (void)checkValidJSONAtPath:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = 0;
}

@end