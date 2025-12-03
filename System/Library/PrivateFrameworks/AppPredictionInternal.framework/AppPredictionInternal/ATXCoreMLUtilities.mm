@interface ATXCoreMLUtilities
+ (double)scoreForModelOutputValue:(id)value outputIndexedSubscript:(int64_t)subscript;
+ (id)loadCoreMLModelWithName:(id)name;
+ (id)loadCoreMLModelWithName:(id)name withConfiguration:(id)configuration error:(id *)error;
@end

@implementation ATXCoreMLUtilities

+ (id)loadCoreMLModelWithName:(id)name
{
  nameCopy = name;
  v5 = objc_opt_new();
  [v5 setComputeUnits:0];
  v10 = 0;
  v6 = [self loadCoreMLModelWithName:nameCopy withConfiguration:v5 error:&v10];
  v7 = v10;
  if (!v6)
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXCoreMLUtilities *)nameCopy loadCoreMLModelWithName:v7, v8];
    }
  }

  return v6;
}

+ (id)loadCoreMLModelWithName:(id)name withConfiguration:(id)configuration error:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  configurationCopy = configuration;
  if (!nameCopy)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CEB260];
    v26 = *MEMORY[0x277CCA068];
    v27[0] = @"ATXCoreMLUtilities: Missing model name";
    v17 = MEMORY[0x277CBEAC0];
    v18 = v27;
    v19 = &v26;
LABEL_6:
    v12 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
    v14 = [v15 errorWithDomain:v16 code:3 userInfo:v12];
    v13 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v9 = [MEMORY[0x277CEB3C0] pathForResource:nameCopy ofType:@"mlmodelc" isDirectory:1];
  if (!v9)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CEB260];
    v24 = *MEMORY[0x277CCA068];
    v25 = @"ATXCoreMLUtilities: No valid path for model";
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v25;
    v19 = &v24;
    goto LABEL_6;
  }

  v10 = v9;
  v11 = MEMORY[0x277CBFF20];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
  v23 = 0;
  v13 = [v11 modelWithContentsOfURL:v12 configuration:configurationCopy error:&v23];
  v14 = v23;
LABEL_7:

  if (error && !v13)
  {
    v20 = v14;
    *error = v14;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (double)scoreForModelOutputValue:(id)value outputIndexedSubscript:(int64_t)subscript
{
  valueCopy = value;
  type = [valueCopy type];
  v7 = type;
  if (type > 4)
  {
    if (type == 5)
    {
      multiArrayValue = [valueCopy multiArrayValue];
      v11 = [multiArrayValue objectAtIndexedSubscript:subscript];
      [v11 doubleValue];
      int64Value = v15;
    }

    else
    {
      if (type != 6)
      {
        goto LABEL_8;
      }

      multiArrayValue = [valueCopy dictionaryValue];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:subscript];
      v12 = [multiArrayValue objectForKeyedSubscript:v11];
      [v12 doubleValue];
      int64Value = v13;
    }

    goto LABEL_14;
  }

  if (type == 1)
  {
    int64Value = [valueCopy int64Value];
    goto LABEL_14;
  }

  if (type == 2)
  {
    [valueCopy doubleValue];
    int64Value = v8;
    goto LABEL_14;
  }

LABEL_8:
  v14 = __atxlog_handle_default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ATXCoreMLUtilities scoreForModelOutputValue:v7 outputIndexedSubscript:v14];
  }

  int64Value = -31337.0;
LABEL_14:

  return int64Value;
}

+ (void)loadCoreMLModelWithName:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXCoreMLUtilities: Error initializing %@ model: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)scoreForModelOutputValue:(uint64_t)a1 outputIndexedSubscript:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXCoreMLUtilities - CoreMLModel: No valid outputType found for %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end