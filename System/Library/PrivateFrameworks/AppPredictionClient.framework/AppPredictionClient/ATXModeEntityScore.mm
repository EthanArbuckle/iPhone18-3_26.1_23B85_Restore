@interface ATXModeEntityScore
- (ATXModeEntityScore)initWithCoder:(id)a3;
- (ATXModeEntityScore)initWithScore:(double)a3 featureVector:(id)a4 uuid:(id)a5;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (id)debugDescription;
- (id)description;
- (id)jsonDict;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXModeEntityScore

- (ATXModeEntityScore)initWithScore:(double)a3 featureVector:(id)a4 uuid:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ATXModeEntityScore;
  v11 = [(ATXModeEntityScore *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uuid, a5);
    v12->_score = a3;
    objc_storeStrong(&v12->_featureVector, a4);
  }

  return v12;
}

- (id)jsonDict
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"uuid";
  v3 = [(ATXModeEntityScore *)self uuid];
  v4 = [v3 UUIDString];
  v12[0] = v4;
  v11[1] = @"score";
  v5 = MEMORY[0x1E696AD98];
  [(ATXModeEntityScore *)self score];
  v6 = [v5 numberWithDouble:?];
  v12[1] = v6;
  v11[2] = @"features";
  v7 = [(ATXModeEntityScore *)self featureVector];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (!v7)
  {
  }

  return v9;
}

- (id)debugDescription
{
  v2 = [(ATXModeEntityScore *)self jsonDict];
  v3 = [v2 debugDescription];

  return v3;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"uuid: %@, score: %.3f", self->_uuid, *&self->_score];

  return v2;
}

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v22[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3 == 0.0)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXModeEntityScore *)self uuid];
  [v4 encodeObject:v5 forKey:@"codingKeyForUUID"];

  [(ATXModeEntityScore *)self score];
  [v4 encodeDouble:@"codingKeyForScore" forKey:?];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v6 = allowedFeatureVectorClasses();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__ATXModeEntityScore_encodeWithCoder___block_invoke;
  v15[3] = &unk_1E80C2250;
  v7 = v6;
  v16 = v7;
  v8 = MEMORY[0x1BFB5BA40](v15);
  v9 = [(ATXModeEntityScore *)self featureVector];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__ATXModeEntityScore_encodeWithCoder___block_invoke_2;
  v12[3] = &unk_1E80C2278;
  v10 = v8;
  v13 = v10;
  v14 = &v17;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];

  if (v18[3])
  {
    v11 = [(ATXModeEntityScore *)self featureVector];
    [v4 encodeObject:v11 forKey:@"codingKeyForFeatures"];
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __38__ATXModeEntityScore_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_opt_isKindOfClass())
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

void __38__ATXModeEntityScore_encodeWithCoder___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    v9 = __atxlog_handle_modes();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __38__ATXModeEntityScore_encodeWithCoder___block_invoke_2_cold_1();
    }

    goto LABEL_7;
  }

  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    v9 = __atxlog_handle_modes();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __38__ATXModeEntityScore_encodeWithCoder___block_invoke_2_cold_2();
    }

LABEL_7:

    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (ATXModeEntityScore)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_management();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForUUID" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.decode.modeEntityScore" errorCode:-1 logHandle:v7];

  v9 = [v4 error];

  if (v9)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  if (!v8)
  {
    v8 = objc_opt_new();
  }

  [v4 decodeDoubleForKey:@"codingKeyForScore"];
  v11 = v10;
  if ([(ATXModeEntityScore *)self checkAndReportDecodingFailureIfNeededFordouble:@"codingKeyForScore" key:v4 coder:@"com.apple.proactive.decode.modeEntityScore" errorDomain:-1 errorCode:?])
  {
    v12 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [ATXModeEntityScore initWithCoder:v12];
    }

    goto LABEL_8;
  }

  v15 = MEMORY[0x1E69C5D78];
  v16 = allowedFeatureVectorClasses();
  v17 = __atxlog_handle_notification_management();
  v18 = [v15 robustDecodeObjectOfClasses:v16 forKey:@"codingKeyForFeatures" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.decode.modeEntityScore" errorCode:-1 logHandle:v17];

  v19 = [v4 error];

  if (v19)
  {
    v13 = 0;
  }

  else
  {
    self = [(ATXModeEntityScore *)self initWithScore:v18 featureVector:v8 uuid:v11];
    v13 = self;
  }

LABEL_9:
  return v13;
}

void __38__ATXModeEntityScore_encodeWithCoder___block_invoke_2_cold_1()
{
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_1BF549000, v1, v2, "ATXModeEntityScore: unexpected key class: %{public}@", v3, v4, v5, v6, 2u);
}

void __38__ATXModeEntityScore_encodeWithCoder___block_invoke_2_cold_2()
{
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_1BF549000, v1, v2, "ATXModeEntityScore: unexpected value class: %{public}@", v3, v4, v5, v6, 2u);
}

@end