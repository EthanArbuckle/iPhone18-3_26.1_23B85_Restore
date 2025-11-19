@interface ATXCoreMLUtilities
+ (double)scoreForModelOutputValue:(id)a3 outputIndexedSubscript:(int64_t)a4;
+ (id)loadCoreMLModelWithName:(id)a3;
+ (id)loadCoreMLModelWithName:(id)a3 withConfiguration:(id)a4 error:(id *)a5;
@end

@implementation ATXCoreMLUtilities

+ (id)loadCoreMLModelWithName:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setComputeUnits:0];
  v10 = 0;
  v6 = [a1 loadCoreMLModelWithName:v4 withConfiguration:v5 error:&v10];
  v7 = v10;
  if (!v6)
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXCoreMLUtilities *)v4 loadCoreMLModelWithName:v7, v8];
    }
  }

  return v6;
}

+ (id)loadCoreMLModelWithName:(id)a3 withConfiguration:(id)a4 error:(id *)a5
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
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

  v9 = [MEMORY[0x277CEB3C0] pathForResource:v7 ofType:@"mlmodelc" isDirectory:1];
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
  v13 = [v11 modelWithContentsOfURL:v12 configuration:v8 error:&v23];
  v14 = v23;
LABEL_7:

  if (a5 && !v13)
  {
    v20 = v14;
    *a5 = v14;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (double)scoreForModelOutputValue:(id)a3 outputIndexedSubscript:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 type];
  v7 = v6;
  if (v6 > 4)
  {
    if (v6 == 5)
    {
      v10 = [v5 multiArrayValue];
      v11 = [v10 objectAtIndexedSubscript:a4];
      [v11 doubleValue];
      v9 = v15;
    }

    else
    {
      if (v6 != 6)
      {
        goto LABEL_8;
      }

      v10 = [v5 dictionaryValue];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v12 = [v10 objectForKeyedSubscript:v11];
      [v12 doubleValue];
      v9 = v13;
    }

    goto LABEL_14;
  }

  if (v6 == 1)
  {
    v9 = [v5 int64Value];
    goto LABEL_14;
  }

  if (v6 == 2)
  {
    [v5 doubleValue];
    v9 = v8;
    goto LABEL_14;
  }

LABEL_8:
  v14 = __atxlog_handle_default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ATXCoreMLUtilities scoreForModelOutputValue:v7 outputIndexedSubscript:v14];
  }

  v9 = -31337.0;
LABEL_14:

  return v9;
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