@interface SmsFilterTrialModelManager
- (BOOL)updateAvailable;
- (MLModel)basicModel;
- (MLModel)mainModel;
- (MLModel)subClassificationModel;
- (SmsFilterTrialModelManager)init;
- (double)loadPromotionalThreshold;
- (double)loadTransactionalThreshold;
- (id)getModelVersion;
- (id)getRegexFilePath;
- (id)getThresholdMapFilePath;
- (int64_t)loadTransitionTimer;
- (void)cleanupModels;
- (void)initializeWithNamespace:(id)namespace;
@end

@implementation SmsFilterTrialModelManager

- (SmsFilterTrialModelManager)init
{
  v12.receiver = self;
  v12.super_class = SmsFilterTrialModelManager;
  v2 = [(SmsFilterTrialModelManager *)&v12 init];
  if (!v2)
  {
    [SmsFilterTrialModelManager init];
  }

  v3 = v2;
  v4 = trialLogHandle();
  log = v3->_log;
  v3->_log = v4;

  v3->_newModelUpdateAvailable = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *&v3->_thresholdTrans = _Q0;
  v3->_transitionTimer = 1440;
  return v3;
}

- (void)initializeWithNamespace:(id)namespace
{
  namespaceCopy = namespace;
  objc_initWeak(&location, self);
  v5 = [[SmsFilterTrialManager alloc] initWithNamespace:namespaceCopy];
  trialManager = self->_trialManager;
  self->_trialManager = v5;

  v7 = self->_trialManager;
  if (v7)
  {
    trialClient = [(SmsFilterTrialManager *)v7 trialClient];
    trialNamespaceName = [(SmsFilterTrialManager *)self->_trialManager trialNamespaceName];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __54__SmsFilterTrialModelManager_initializeWithNamespace___block_invoke;
    v12[3] = &unk_10002CB88;
    objc_copyWeak(&v13, &location);
    v10 = [trialClient addUpdateHandlerForNamespaceName:trialNamespaceName usingBlock:v12];

    objc_destroyWeak(&v13);
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "_trialManager is nil", buf, 2u);
    }
  }

  objc_destroyWeak(&location);
}

void __54__SmsFilterTrialModelManager_initializeWithNamespace___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = objc_loadWeakRetained(&to);
    v6 = [v5 trialManager];
    [v6 loadTrialUpdates];

    v7 = objc_loadWeakRetained(&to);
    [v7 cleanupModels];

    v8 = objc_loadWeakRetained(&to);
    [v8 setNewModelUpdateAvailable:1];
  }

  objc_destroyWeak(&to);
}

- (MLModel)mainModel
{
  os_unfair_lock_lock(&self->_loadModelLock);
  if (!self->_mainModel)
  {
    v3 = [(SmsFilterTrialManager *)self->_trialManager loadTrialMainModelByDeletingExistingModel:1];
    mainModel = self->_mainModel;
    self->_mainModel = v3;

    if (!self->_mainModel)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Trial main model Not found!", v8, 2u);
      }
    }
  }

  os_unfair_lock_unlock(&self->_loadModelLock);
  v6 = self->_mainModel;

  return v6;
}

- (MLModel)basicModel
{
  os_unfair_lock_lock(&self->_loadModelLock);
  if (!self->_basicModel)
  {
    v3 = [(SmsFilterTrialManager *)self->_trialManager loadTrialBasicModelByDeletingExistingModel:1];
    basicModel = self->_basicModel;
    self->_basicModel = v3;

    if (!self->_basicModel)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Trial basic model Not found!", v8, 2u);
      }
    }
  }

  os_unfair_lock_unlock(&self->_loadModelLock);
  v6 = self->_basicModel;

  return v6;
}

- (MLModel)subClassificationModel
{
  os_unfair_lock_lock(&self->_loadModelLock);
  if (!self->_subClassificationModel)
  {
    v3 = [(SmsFilterTrialManager *)self->_trialManager loadTrialSubClassificationModelByDeletingExistingModel:1];
    subClassificationModel = self->_subClassificationModel;
    self->_subClassificationModel = v3;

    if (!self->_subClassificationModel)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Trial sub-classification model Not found!", v8, 2u);
      }
    }
  }

  os_unfair_lock_unlock(&self->_loadModelLock);
  v6 = self->_subClassificationModel;

  return v6;
}

- (void)cleanupModels
{
  os_unfair_lock_lock(&self->_loadModelLock);
  mainModel = self->_mainModel;
  self->_mainModel = 0;

  basicModel = self->_basicModel;
  self->_basicModel = 0;

  subClassificationModel = self->_subClassificationModel;
  self->_subClassificationModel = 0;

  regexFilePath = self->_regexFilePath;
  self->_regexFilePath = 0;

  os_unfair_lock_unlock(&self->_loadModelLock);
}

- (id)getRegexFilePath
{
  getRegexFileNameWithPath = [(SmsFilterTrialManager *)self->_trialManager getRegexFileNameWithPath];
  if (getRegexFileNameWithPath)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = getRegexFileNameWithPath;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "regex filepath: %@", &v6, 0xCu);
    }
  }

  return getRegexFileNameWithPath;
}

- (double)loadTransactionalThreshold
{
  if (!self->_mainModel)
  {
    return self->_thresholdTrans;
  }

  [(SmsFilterTrialManager *)self->_trialManager loadTrialTransThreshold];
  v4 = v3;
  if (v3 <= 0.0 || v3 >= 1.0)
  {
    log = self->_log;
    v4 = 0.5;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = 0x3FE0000000000000;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Failed to load trial threshold. Falling back to default %lf", &v8, 0xCu);
    }
  }

  return v4;
}

- (double)loadPromotionalThreshold
{
  if (!self->_mainModel)
  {
    return self->_thresholdPromo;
  }

  [(SmsFilterTrialManager *)self->_trialManager loadTrialPromoThreshold];
  v4 = v3;
  if (v3 <= 0.0 || v3 >= 1.0)
  {
    log = self->_log;
    v4 = 0.5;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = 0x3FE0000000000000;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Failed to load trial threshold. Falling back to default %lf", &v8, 0xCu);
    }
  }

  return v4;
}

- (int64_t)loadTransitionTimer
{
  loadTrialModelTransitionTimer = [(SmsFilterTrialManager *)self->_trialManager loadTrialModelTransitionTimer];
  if (loadTrialModelTransitionTimer <= 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      loadTrialModelTransitionTimer = 1440;
      v7 = 1440;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Failed to load trial transition timer value. Falling back to default %ld", &v6, 0xCu);
    }

    else
    {
      return 1440;
    }
  }

  return loadTrialModelTransitionTimer;
}

- (BOOL)updateAvailable
{
  newModelUpdateAvailable = self->_newModelUpdateAvailable;
  if (newModelUpdateAvailable)
  {
    self->_newModelUpdateAvailable = 0;
  }

  return newModelUpdateAvailable;
}

- (id)getModelVersion
{
  v3 = objc_alloc_init(NSMutableString);
  trialManager = [(SmsFilterTrialModelManager *)self trialManager];
  trialNamespaceName = [trialManager trialNamespaceName];

  [v3 appendString:trialNamespaceName];
  getMainModel = [(SmsFilterTrialModelManager *)self getMainModel];
  v7 = getMainModel;
  if (getMainModel)
  {
    modelDescription = [getMainModel modelDescription];
    metadata = [modelDescription metadata];
    v10 = [metadata objectForKeyedSubscript:MLModelVersionStringKey];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = @"0";
    }

    getBasicModel = v12;

    [v3 appendFormat:@"-m%@", getBasicModel];
    getSubClassificationModel = [(SmsFilterTrialModelManager *)self getSubClassificationModel];
    v15 = getSubClassificationModel;
    if (getSubClassificationModel)
    {
      modelDescription2 = [(__CFString *)getSubClassificationModel modelDescription];
      metadata2 = [modelDescription2 metadata];
      v18 = [metadata2 objectForKeyedSubscript:MLModelVersionStringKey];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = @"0";
      }

      v21 = v20;

      [v3 appendFormat:@"-s%@", v21];
    }
  }

  else
  {
    getBasicModel = [(SmsFilterTrialModelManager *)self getBasicModel];
    modelDescription3 = [(__CFString *)getBasicModel modelDescription];
    metadata3 = [modelDescription3 metadata];
    v24 = [metadata3 objectForKeyedSubscript:MLModelVersionStringKey];
    v25 = v24;
    v26 = @"0";
    if (v24)
    {
      v26 = v24;
    }

    v15 = v26;

    [v3 appendFormat:@"-b%@", v15];
  }

  return v3;
}

- (id)getThresholdMapFilePath
{
  getThresholdMapFilePath = [(SmsFilterTrialManager *)self->_trialManager getThresholdMapFilePath];
  if (getThresholdMapFilePath)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = getThresholdMapFilePath;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "threshold filepath: %@", &v6, 0xCu);
    }
  }

  return getThresholdMapFilePath;
}

@end