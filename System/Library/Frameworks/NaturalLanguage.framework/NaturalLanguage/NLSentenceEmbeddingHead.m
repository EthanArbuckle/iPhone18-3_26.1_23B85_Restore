@interface NLSentenceEmbeddingHead
- (BOOL)isLoaded;
- (BOOL)load;
- (NLSentenceEmbeddingHead)initWithModelURL:(id)a3;
- (id)getSentenceEmbeddingFromPooledTokenEmbeddings:(id)a3 error:(id *)a4;
@end

@implementation NLSentenceEmbeddingHead

- (NLSentenceEmbeddingHead)initWithModelURL:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = NLSentenceEmbeddingHead;
  v6 = [(NLSentenceEmbeddingHead *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelURL, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695FEB0]);
    configuration = v7->_configuration;
    v7->_configuration = v8;

    [(MLModelConfiguration *)v7->_configuration setComputeUnits:0];
    [(MLModelConfiguration *)v7->_configuration setExperimentalMLE5EngineUsage:0];
    model = v7->_model;
    v7->_model = 0;

    v7->_inputDimension = 0;
    v7->_outputDimension = 0;
  }

  return v7;
}

- (BOOL)load
{
  v49 = *MEMORY[0x1E69E9840];
  if ([(NLSentenceEmbeddingHead *)self isLoaded])
  {
    v3 = 1;
  }

  else
  {
    modelURL = self->_modelURL;
    configuration = self->_configuration;
    v44 = 0;
    v6 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:modelURL configuration:configuration error:&v44];
    v7 = v44;
    model = self->_model;
    self->_model = v6;

    if (self->_model)
    {
      v9 = [(NLSentenceEmbeddingHead *)self model];
      v10 = [v9 modelDescription];
      v11 = [v10 inputDescriptionsByName];
      v12 = [v11 objectForKeyedSubscript:@"input"];
      v13 = [v12 multiArrayConstraint];
      v14 = [v13 shape];

      if ([v14 count] == 3 && (objc_msgSend(v14, "objectAtIndexedSubscript:", 2), v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v16 = objc_opt_isKindOfClass(), v15, (v16 & 1) != 0))
      {
        v17 = [v14 objectAtIndexedSubscript:2];
        self->_inputDimension = [v17 unsignedIntValue];

        v18 = [(NLSentenceEmbeddingHead *)self model];
        v19 = [v18 modelDescription];
        v20 = [v19 outputDescriptionsByName];
        v21 = [v20 objectForKeyedSubscript:@"output"];
        v22 = [v21 multiArrayConstraint];
        v23 = [v22 shape];

        if ([v23 count] == 3 && (objc_msgSend(v23, "objectAtIndexedSubscript:", 2), v24 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v24, (isKindOfClass & 1) != 0))
        {
          v26 = [v23 objectAtIndexedSubscript:2];
          self->_outputDimension = [v26 unsignedIntValue];
          v3 = 1;
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          v38 = NLGetLogCategory(self);
          v39 = [v38 internal];

          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = NLGetLogIdentifier(self);
            v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Model load failed: unexpected output shape"];
            *buf = 138543618;
            v46 = v40;
            v47 = 2114;
            v48 = v41;
            _os_log_impl(&dword_19D48F000, v39, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v37);
          v3 = 0;
          v26 = self->_model;
          self->_model = 0;
        }
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        v28 = NLGetLogCategory(self);
        v29 = [v28 internal];

        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = NLGetLogIdentifier(self);
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Model load failed: unexpected input shape"];
          *buf = 138543618;
          v46 = v30;
          v47 = 2114;
          v48 = v31;
          _os_log_impl(&dword_19D48F000, v29, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v27);
        v3 = 0;
        v23 = self->_model;
        self->_model = 0;
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = NLGetLogCategory(self);
      v34 = [v33 internal];

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = NLGetLogIdentifier(self);
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Model load failed: %@", v7];
        *buf = 138543618;
        v46 = v35;
        v47 = 2114;
        v48 = v36;
        _os_log_impl(&dword_19D48F000, v34, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v3 = 0;
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isLoaded
{
  v2 = [(NLSentenceEmbeddingHead *)self model];
  v3 = v2 != 0;

  return v3;
}

- (id)getSentenceEmbeddingFromPooledTokenEmbeddings:(id)a3 error:(id *)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E695FE48]);
  v36 = @"input";
  v8 = [MEMORY[0x1E695FE60] featureValueWithMultiArray:v6];
  v37[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v31 = 0;
  v10 = [v7 initWithDictionary:v9 error:&v31];
  v11 = v31;

  if (v11 || !v10)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = NLGetLogCategory(self);
    v23 = [v22 internal];

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = NLGetLogIdentifier(self);
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create modelInput: %@", v11];
      *buf = 138543618;
      v33 = v24;
      v34 = 2114;
      v35 = v25;
      _os_log_impl(&dword_19D48F000, v23, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    if (a4)
    {
      v26 = v11;
      v20 = 0;
      *a4 = v11;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    model = self->_model;
    v30 = 0;
    v13 = [(MLModel *)model predictionFromFeatures:v10 error:&v30];
    v11 = v30;
    if (v11)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = NLGetLogCategory(self);
      v16 = [v15 internal];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = NLGetLogIdentifier(self);
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Model prediction failed: %@", v11];
        *buf = 138543618;
        v33 = v17;
        v34 = 2114;
        v35 = v18;
        _os_log_impl(&dword_19D48F000, v16, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      if (a4)
      {
        v19 = v11;
        v20 = 0;
        *a4 = v11;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v27 = [v13 featureValueForName:@"output"];
      v20 = [v27 multiArrayValue];
    }
  }

  v28 = *MEMORY[0x1E69E9840];

  return v20;
}

@end