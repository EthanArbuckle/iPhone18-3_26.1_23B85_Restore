@interface SHMusicalFeaturesExtractor
- (BOOL)flowBuffer:(id)a3 error:(id *)a4;
- (SHMusicalFeaturesExtractor)initWithConfiguration:(id)a3 sampleRate:(double)a4 error:(id *)a5 modelLoadCompletionHandler:(id)a6;
- (double)duration;
- (id)signatureWithError:(id *)a3;
- (void)dealloc;
- (void)reset;
@end

@implementation SHMusicalFeaturesExtractor

- (SHMusicalFeaturesExtractor)initWithConfiguration:(id)a3 sampleRate:(double)a4 error:(id *)a5 modelLoadCompletionHandler:(id)a6
{
  *&v43[5] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
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

  [(SHFeatureConfiguration *)v12->_featureConfiguration setSampleRate:a4];
  v15 = [v10 cremaModelURL];
  v16 = [v15 copy];
  [(SHFeatureConfiguration *)v12->_featureConfiguration setCremaModelURL:v16];

  v17 = [v10 crepeModelURL];
  v18 = [v17 copy];
  [(SHFeatureConfiguration *)v12->_featureConfiguration setCrepeModelURL:v18];

  v19 = os_log_create("com.apple.shazamkit", "feature-extraction");
  v20 = os_signpost_id_generate(v19);
  v21 = v19;
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v23 = [v10 cremaModelURL];
    v24 = [v10 crepeModelURL];
    *buf = 67109376;
    v43[0] = v23 != 0;
    LOWORD(v43[1]) = 1024;
    *(&v43[1] + 2) = v24 != 0;
    _os_signpost_emit_with_name_impl(&dword_230F52000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "SHMusicalFeaturesExtractor_Async_Init", "CREMA=%d CREPE=%d", buf, 0xEu);
  }

  v25 = [SHFeatureExtractor alloc];
  v26 = [(SHMusicalFeaturesExtractor *)v12 featureConfiguration];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __96__SHMusicalFeaturesExtractor_initWithConfiguration_sampleRate_error_modelLoadCompletionHandler___block_invoke;
  v37[3] = &unk_2788F7E48;
  v27 = v22;
  v38 = v27;
  v40 = v20;
  v39 = v11;
  v28 = [(SHFeatureExtractor *)v25 initWithFeatureConfiguration:v26 error:a5 completionHandler:v37];
  featureExtractor = v12->_featureExtractor;
  v12->_featureExtractor = v28;

  v30 = [(SHMusicalFeaturesExtractor *)v12 featureExtractor];
  v31 = v30 == 0;

  if (!v31)
  {

LABEL_7:
    v32 = v12;
    goto LABEL_13;
  }

  if (a5)
  {
    v33 = sh_log_object();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = *a5;
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
  v3 = [(SHMusicalFeaturesExtractor *)self featureExtractor];

  if (v3)
  {
    v4 = [(SHMusicalFeaturesExtractor *)self featureExtractor];
    v5 = [v4 reset];

    if ((v5 & 1) == 0)
    {
      v6 = sh_log_object();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = self;
        _os_log_impl(&dword_230F52000, v6, OS_LOG_TYPE_ERROR, "Could not reset musical features extractor %@", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (double)duration
{
  v3 = [(SHMusicalFeaturesExtractor *)self featureExtractor];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(SHMusicalFeaturesExtractor *)self featureExtractor];
  v5 = [v4 audioDurationInMilliseconds] / 1000.0;

  return v5;
}

- (id)signatureWithError:(id *)a3
{
  v5 = [(SHMusicalFeaturesExtractor *)self featureExtractor];

  if (v5)
  {
    v6 = [(SHMusicalFeaturesExtractor *)self featureExtractor];
    v7 = [v6 featuresWithError:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)flowBuffer:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 format];
  [v7 sampleRate];
  v9 = v8;
  v10 = [(SHMusicalFeaturesExtractor *)self featureConfiguration];
  [v10 sampleRate];
  v12 = v11;

  if (v9 == v12)
  {
    goto LABEL_6;
  }

  v13 = sh_log_object();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(SHMusicalFeaturesExtractor *)self featureConfiguration];
    [v14 sampleRate];
    v16 = v15;
    v17 = [v6 format];
    [v17 sampleRate];
    *buf = 134218240;
    v37 = v16;
    v38 = 2048;
    v39 = v18;
    _os_log_impl(&dword_230F52000, v13, OS_LOG_TYPE_INFO, "Sample rate for musical features extractor changed from %.1f to %.1f", buf, 0x16u);
  }

  [(SHMusicalFeaturesExtractor *)self reset];
  featureExtractor = self->_featureExtractor;
  self->_featureExtractor = 0;

  v20 = [v6 format];
  [v20 sampleRate];
  v22 = v21;
  v23 = [(SHMusicalFeaturesExtractor *)self featureConfiguration];
  [v23 setSampleRate:v22];

  v24 = [SHFeatureExtractor alloc];
  v25 = [(SHMusicalFeaturesExtractor *)self featureConfiguration];
  v35 = 0;
  v26 = [(SHFeatureExtractor *)v24 initWithFeatureConfiguration:v25 error:&v35 completionHandler:0];
  v27 = v35;
  v28 = self->_featureExtractor;
  self->_featureExtractor = v26;

  v29 = [(SHMusicalFeaturesExtractor *)self featureExtractor];
  LODWORD(v25) = v29 == 0;

  if (!v25)
  {

LABEL_6:
    v27 = [(SHMusicalFeaturesExtractor *)self featureExtractor];
    v30 = [v27 flowBuffer:v6 error:a4];
    goto LABEL_7;
  }

  v33 = sh_log_object();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v37 = v27;
    _os_log_impl(&dword_230F52000, v33, OS_LOG_TYPE_ERROR, "Musical features extractor failed to initialize with error: %@", buf, 0xCu);
  }

  if (a4)
  {
    v34 = v27;
    v30 = 0;
    *a4 = v27;
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