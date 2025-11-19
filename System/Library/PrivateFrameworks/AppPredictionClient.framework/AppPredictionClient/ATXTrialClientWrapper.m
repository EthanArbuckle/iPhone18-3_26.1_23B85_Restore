@interface ATXTrialClientWrapper
- (ATXTrialClientWrapper)initWithClientIdentifier:(int)a3 namespaceName:(id)a4;
- (BOOL)refreshEnrollmentInformation;
- (BOOL)refreshRolloutIdentifiers;
- (id)BOOLForFactor:(id)a3;
- (id)dictionaryForTrialResource:(id)a3;
- (id)directoryPathForTrialResource:(id)a3;
- (id)filePathForTrialResource:(id)a3;
- (id)longForFactor:(id)a3;
- (id)stringForFactor:(id)a3;
- (void)updateFactors;
@end

@implementation ATXTrialClientWrapper

- (BOOL)refreshEnrollmentInformation
{
  [(TRIClient *)self->_trialClient refresh];
  v3 = [(TRIClient *)self->_trialClient experimentIdentifiersWithNamespaceName:self->_trialNamespaceName];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 experimentId];
    trialExperimentId = self->_trialExperimentId;
    self->_trialExperimentId = v5;

    self->_trialDeploymentId = [v4 deploymentId];
    v7 = [v4 treatmentId];
    trialTreatmentId = self->_trialTreatmentId;
    self->_trialTreatmentId = v7;
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_INFO, "ATXTrialClientWrapper: Unable to fetch experimentId, deploymentId, treatmentId", v11, 2u);
    }
  }

  return v4 != 0;
}

- (ATXTrialClientWrapper)initWithClientIdentifier:(int)a3 namespaceName:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = ATXTrialClientWrapper;
  v7 = [(ATXTrialClientWrapper *)&v17 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E69DB518] client];
    trialClient = v7->_trialClient;
    v7->_trialClient = v8;

    objc_storeStrong(&v7->_trialNamespaceName, a4);
    objc_initWeak(&location, v7);
    v10 = v7->_trialClient;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__ATXTrialClientWrapper_initWithClientIdentifier_namespaceName___block_invoke;
    v14[3] = &unk_1E80C6200;
    objc_copyWeak(&v15, &location);
    v11 = [(TRIClient *)v10 addUpdateHandlerForNamespaceName:v6 usingBlock:v14];
    token = v7->_token;
    v7->_token = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __64__ATXTrialClientWrapper_initWithClientIdentifier_namespaceName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateFactors];
    WeakRetained = v2;
  }
}

- (BOOL)refreshRolloutIdentifiers
{
  v3 = [(TRIClient *)self->_trialClient rolloutIdentifiersWithNamespaceName:self->_trialNamespaceName];
  if (v3)
  {
    objc_storeStrong(&self->_trialRolloutIdentifiers, v3);
  }

  else
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_INFO, "ATXTrialClientWrapper: Unable to fetch rolloutIdentifiers", v6, 2u);
    }
  }

  return v3 != 0;
}

- (void)updateFactors
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1BF549000, a3, OS_LOG_TYPE_ERROR, "ATXTrialClientWrapper: Method %@ not overriden in %@", &v7, 0x16u);
}

- (id)dictionaryForTrialResource:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ATXTrialClientWrapper *)self filePathForTrialResource:v4];
  if (v5)
  {
    v16 = 0;
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v5 options:1 error:&v16];
    v7 = v16;
    if (v6)
    {
      if ([v6 length] >= 3 && ((v8 = objc_msgSend(v6, "bytes"), *v8 == 19536) ? (v9 = *(v8 + 2) == 80) : (v9 = 0), v9))
      {
        *buf = v7;
        v10 = [MEMORY[0x1E69C5D40] dictionaryWithData:v6 error:buf];
      }

      else
      {
        *buf = 0;
        v10 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:buf];
      }

      v11 = v10;
      v12 = *buf;

      if (v11)
      {
        goto LABEL_19;
      }

      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ATXTrialClientWrapper *)v5 dictionaryForTrialResource:v12, v13];
      }

      v7 = v12;
    }

    else
    {
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v5;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_INFO, "ATXTrialClientWrapper: Error loading plist %@: %@", buf, 0x16u);
      }
    }

    v11 = 0;
    v12 = v7;
LABEL_19:

    goto LABEL_20;
  }

  v14 = __atxlog_handle_default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_INFO, "ATXTrialClientWrapper: Could not get file path for resource: %@", buf, 0xCu);
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (id)filePathForTrialResource:(id)a3
{
  v3 = [(TRIClient *)self->_trialClient levelForFactor:a3 withNamespaceName:self->_trialNamespaceName];
  v4 = [v3 fileValue];
  v5 = [v4 path];

  return v5;
}

- (id)directoryPathForTrialResource:(id)a3
{
  v3 = [(TRIClient *)self->_trialClient levelForFactor:a3 withNamespaceName:self->_trialNamespaceName];
  v4 = [v3 directoryValue];
  v5 = [v4 path];

  return v5;
}

- (id)BOOLForFactor:(id)a3
{
  v3 = [(TRIClient *)self->_trialClient levelForFactor:a3 withNamespaceName:self->_trialNamespaceName];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v3, "BOOLeanValue")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)longForFactor:(id)a3
{
  v3 = [(TRIClient *)self->_trialClient levelForFactor:a3 withNamespaceName:self->_trialNamespaceName];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:{objc_msgSend(v3, "longValue")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stringForFactor:(id)a3
{
  v3 = [(TRIClient *)self->_trialClient levelForFactor:a3 withNamespaceName:self->_trialNamespaceName];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dictionaryForTrialResource:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "ATXTrialClientWrapper: Error parsing plist %@: %@", &v3, 0x16u);
}

@end