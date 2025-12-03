@interface SHMusicalFeaturesExtractor
- (BOOL)flowBuffer:(id)buffer error:(id *)error;
- (SHMusicalFeaturesExtractor)initWithConfiguration:(id)configuration sampleRate:(double)rate error:(id *)error modelLoadCompletionHandler:(id)handler;
- (double)duration;
- (id)signatureWithError:(id *)error;
- (void)dealloc;
- (void)reset;
@end

@implementation SHMusicalFeaturesExtractor

- (SHMusicalFeaturesExtractor)initWithConfiguration:(id)configuration sampleRate:(double)rate error:(id *)error modelLoadCompletionHandler:(id)handler
{
  *&v43[5] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  v41.receiver = self;
  v41.super_class = SHMusicalFeaturesExtractor;
  v12 = [(SHMusicalFeaturesExtractor *)&v41 init];
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = objc_alloc_init(SHFeatureConfiguration);
  featureConfiguration = v12->_featureConfiguration;
  v12->_featureConfiguration = v13;

  [(SHFeatureConfiguration *)v12->_featureConfiguration setSampleRate:rate];
  cremaModelURL = [configurationCopy cremaModelURL];
  v16 = [cremaModelURL copy];
  [(SHFeatureConfiguration *)v12->_featureConfiguration setCremaModelURL:v16];

  crepeModelURL = [configurationCopy crepeModelURL];
  v18 = [crepeModelURL copy];
  [(SHFeatureConfiguration *)v12->_featureConfiguration setCrepeModelURL:v18];

  v19 = os_log_create("com.apple.shazamkit", "feature-extraction");
  v20 = os_signpost_id_generate(v19);
  v21 = v19;
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    cremaModelURL2 = [configurationCopy cremaModelURL];
    crepeModelURL2 = [configurationCopy crepeModelURL];
    *buf = 67109376;
    v43[0] = cremaModelURL2 != 0;
    LOWORD(v43[1]) = 1024;
    *(&v43[1] + 2) = crepeModelURL2 != 0;
    _os_signpost_emit_with_name_impl(&dword_230F52000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "SHMusicalFeaturesExtractor_Async_Init", "CREMA=%d CREPE=%d", buf, 0xEu);
  }

  v25 = [SHFeatureExtractor alloc];
  featureConfiguration = [(SHMusicalFeaturesExtractor *)v12 featureConfiguration];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __96__SHMusicalFeaturesExtractor_initWithConfiguration_sampleRate_error_modelLoadCompletionHandler___block_invoke;
  v37[3] = &unk_2788F7E48;
  v27 = v22;
  v38 = v27;
  v40 = v20;
  v39 = handlerCopy;
  v28 = [(SHFeatureExtractor *)v25 initWithFeatureConfiguration:featureConfiguration error:error completionHandler:v37];
  featureExtractor = v12->_featureExtractor;
  v12->_featureExtractor = v28;

  featureExtractor = [(SHMusicalFeaturesExtractor *)v12 featureExtractor];
  v31 = featureExtractor == 0;

  if (!v31)
  {

LABEL_7:
    v32 = v12;
    goto LABEL_13;
  }

  if (error)
  {
    v33 = sh_log_object();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = *error;
      *buf = 138412290;
      *v43 = v34;
      _os_log_impl(&dword_230F52000, v33, OS_LOG_TYPE_ERROR, "Feature extractor failed to initialize with error: %@", buf, 0xCu);
    }
  }

  v32 = 0;
LABEL_13:

  v35 = *MEMORY[0x277D85DE8];
  return v32;
}

void __96__SHMusicalFeaturesExtractor_initWithConfiguration_sampleRate_error_modelLoadCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_230F52000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SHMusicalFeaturesExtractor_Async_Init", "", v11, 2u);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (void)dealloc
{
  featureExtractor = self->_featureExtractor;
  if (featureExtractor)
  {
    [(SHFeatureExtractor *)featureExtractor reset];
    v4 = self->_featureExtractor;
    self->_featureExtractor = 0;
  }

  v5.receiver = self;
  v5.super_class = SHMusicalFeaturesExtractor;
  [(SHMusicalFeaturesExtractor *)&v5 dealloc];
}

- (void)reset
{
  v10 = *MEMORY[0x277D85DE8];
  featureExtractor = [(SHMusicalFeaturesExtractor *)self featureExtractor];

  if (featureExtractor)
  {
    featureExtractor2 = [(SHMusicalFeaturesExtractor *)self featureExtractor];
    reset = [featureExtractor2 reset];

    if ((reset & 1) == 0)
    {
      v6 = sh_log_object();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_230F52000, v6, OS_LOG_TYPE_ERROR, "Could not reset musical features extractor %@", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (double)duration
{
  featureExtractor = [(SHMusicalFeaturesExtractor *)self featureExtractor];

  if (!featureExtractor)
  {
    return 0.0;
  }

  featureExtractor2 = [(SHMusicalFeaturesExtractor *)self featureExtractor];
  v5 = [featureExtractor2 audioDurationInMilliseconds] / 1000.0;

  return v5;
}

- (id)signatureWithError:(id *)error
{
  featureExtractor = [(SHMusicalFeaturesExtractor *)self featureExtractor];

  if (featureExtractor)
  {
    featureExtractor2 = [(SHMusicalFeaturesExtractor *)self featureExtractor];
    v7 = [featureExtractor2 featuresWithError:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)flowBuffer:(id)buffer error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  format = [bufferCopy format];
  [format sampleRate];
  v9 = v8;
  featureConfiguration = [(SHMusicalFeaturesExtractor *)self featureConfiguration];
  [featureConfiguration sampleRate];
  v12 = v11;

  if (v9 == v12)
  {
    goto LABEL_6;
  }

  v13 = sh_log_object();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    featureConfiguration2 = [(SHMusicalFeaturesExtractor *)self featureConfiguration];
    [featureConfiguration2 sampleRate];
    v16 = v15;
    format2 = [bufferCopy format];
    [format2 sampleRate];
    *buf = 134218240;
    v37 = v16;
    v38 = 2048;
    v39 = v18;
    _os_log_impl(&dword_230F52000, v13, OS_LOG_TYPE_INFO, "Sample rate for musical features extractor changed from %.1f to %.1f", buf, 0x16u);
  }

  [(SHMusicalFeaturesExtractor *)self reset];
  featureExtractor = self->_featureExtractor;
  self->_featureExtractor = 0;

  format3 = [bufferCopy format];
  [format3 sampleRate];
  v22 = v21;
  featureConfiguration3 = [(SHMusicalFeaturesExtractor *)self featureConfiguration];
  [featureConfiguration3 setSampleRate:v22];

  v24 = [SHFeatureExtractor alloc];
  featureConfiguration4 = [(SHMusicalFeaturesExtractor *)self featureConfiguration];
  v35 = 0;
  v26 = [(SHFeatureExtractor *)v24 initWithFeatureConfiguration:featureConfiguration4 error:&v35 completionHandler:0];
  featureExtractor2 = v35;
  v28 = self->_featureExtractor;
  self->_featureExtractor = v26;

  featureExtractor = [(SHMusicalFeaturesExtractor *)self featureExtractor];
  LODWORD(featureConfiguration4) = featureExtractor == 0;

  if (!featureConfiguration4)
  {

LABEL_6:
    featureExtractor2 = [(SHMusicalFeaturesExtractor *)self featureExtractor];
    v30 = [featureExtractor2 flowBuffer:bufferCopy error:error];
    goto LABEL_7;
  }

  v33 = sh_log_object();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v37 = featureExtractor2;
    _os_log_impl(&dword_230F52000, v33, OS_LOG_TYPE_ERROR, "Musical features extractor failed to initialize with error: %@", buf, 0xCu);
  }

  if (error)
  {
    v34 = featureExtractor2;
    v30 = 0;
    *error = featureExtractor2;
  }

  else
  {
    v30 = 0;
  }

LABEL_7:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

@end