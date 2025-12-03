@interface ATXModeEntityScore
- (ATXModeEntityScore)initWithCoder:(id)coder;
- (ATXModeEntityScore)initWithScore:(double)score featureVector:(id)vector uuid:(id)uuid;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (id)debugDescription;
- (id)description;
- (id)jsonDict;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXModeEntityScore

- (ATXModeEntityScore)initWithScore:(double)score featureVector:(id)vector uuid:(id)uuid
{
  vectorCopy = vector;
  uuidCopy = uuid;
  v14.receiver = self;
  v14.super_class = ATXModeEntityScore;
  v11 = [(ATXModeEntityScore *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uuid, uuid);
    v12->_score = score;
    objc_storeStrong(&v12->_featureVector, vector);
  }

  return v12;
}

- (id)jsonDict
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"uuid";
  uuid = [(ATXModeEntityScore *)self uuid];
  uUIDString = [uuid UUIDString];
  v12[0] = uUIDString;
  v11[1] = @"score";
  v5 = MEMORY[0x1E696AD98];
  [(ATXModeEntityScore *)self score];
  v6 = [v5 numberWithDouble:?];
  v12[1] = v6;
  v11[2] = @"features";
  featureVector = [(ATXModeEntityScore *)self featureVector];
  null = featureVector;
  if (!featureVector)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = null;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (!featureVector)
  {
  }

  return v9;
}

- (id)debugDescription
{
  jsonDict = [(ATXModeEntityScore *)self jsonDict];
  v3 = [jsonDict debugDescription];

  return v3;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"uuid: %@, score: %.3f", self->_uuid, *&self->_score];

  return v2;
}

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (fordouble == 0.0)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(ATXModeEntityScore *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"codingKeyForUUID"];

  [(ATXModeEntityScore *)self score];
  [coderCopy encodeDouble:@"codingKeyForScore" forKey:?];
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
  featureVector = [(ATXModeEntityScore *)self featureVector];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__ATXModeEntityScore_encodeWithCoder___block_invoke_2;
  v12[3] = &unk_1E80C2278;
  v10 = v8;
  v13 = v10;
  v14 = &v17;
  [featureVector enumerateKeysAndObjectsUsingBlock:v12];

  if (v18[3])
  {
    featureVector2 = [(ATXModeEntityScore *)self featureVector];
    [coderCopy encodeObject:featureVector2 forKey:@"codingKeyForFeatures"];
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

- (ATXModeEntityScore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_management();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForUUID" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.modeEntityScore" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  if (error)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_9;
  }

  if (!v8)
  {
    v8 = objc_opt_new();
  }

  [coderCopy decodeDoubleForKey:@"codingKeyForScore"];
  v11 = v10;
  if ([(ATXModeEntityScore *)self checkAndReportDecodingFailureIfNeededFordouble:@"codingKeyForScore" key:coderCopy coder:@"com.apple.proactive.decode.modeEntityScore" errorDomain:-1 errorCode:?])
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
  v18 = [v15 robustDecodeObjectOfClasses:v16 forKey:@"codingKeyForFeatures" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.modeEntityScore" errorCode:-1 logHandle:v17];

  error2 = [coderCopy error];

  if (error2)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ATXModeEntityScore *)self initWithScore:v18 featureVector:v8 uuid:v11];
    selfCopy = self;
  }

LABEL_9:
  return selfCopy;
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