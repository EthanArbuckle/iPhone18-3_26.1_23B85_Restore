@interface SHFeatureExtractorController
- (BOOL)configureMusicalFeaturesExtractorWithConfiguration:(id)a3 sampleRate:(double)a4 error:(id *)a5;
- (BOOL)configureSpectralPeaksExtractorWithClipStype:(int64_t)a3 maximumSeconds:(double)a4 sampleRate:(double)a5 error:(id *)a6;
- (BOOL)flowBuffer:(id)a3 error:(id *)a4;
- (BOOL)flowBuffer:(id)a3 throughExtractor:(id)a4 error:(id *)a5;
- (BOOL)setRollingBufferSeconds:(float)a3 error:(id *)a4;
- (id)coalescePeaksFeatures:(id)a3 musicalFeatures:(id)a4 error:(id *)a5;
- (id)signatureDataForExtractor:(id)a3 error:(id *)a4;
- (id)signatureWithError:(id *)a3;
- (void)disableSpectralOutput;
- (void)enableSpectralOutputWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)reset;
@end

@implementation SHFeatureExtractorController

- (BOOL)configureSpectralPeaksExtractorWithClipStype:(int64_t)a3 maximumSeconds:(double)a4 sampleRate:(double)a5 error:(id *)a6
{
  v7 = [[SHSpectralPeakFeaturesExtractor alloc] initWithClipStype:a3 maximumSeconds:a6 sampleRate:a4 error:a5];
  [(SHFeatureExtractorController *)self setSpectralPeaksExtractor:v7];

  v8 = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
  LOBYTE(v7) = v8 != 0;

  return v7;
}

- (BOOL)configureMusicalFeaturesExtractorWithConfiguration:(id)a3 sampleRate:(double)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];

  if (v9)
  {
    v10 = sh_log_object();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_230F52000, v10, OS_LOG_TYPE_INFO, "A musical features extractor is already initialized", v20, 2u);
    }

    v11 = 1;
  }

  else
  {
    if (!v8)
    {
      v15 = MEMORY[0x277CBEAD8];
      v16 = *MEMORY[0x277CBE660];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"A Musical Features extractor must not be initialized with a nil configuration object"];
      v18 = [v15 exceptionWithName:v16 reason:v17 userInfo:0];
      v19 = v18;

      objc_exception_throw(v18);
    }

    v12 = [[SHMusicalFeaturesExtractor alloc] initWithConfiguration:v8 sampleRate:a5 error:a4];
    [(SHFeatureExtractorController *)self setMusicalFeaturesExtractor:v12];

    v13 = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];
    v11 = v13 != 0;
  }

  return v11;
}

- (void)enableSpectralOutputWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
  [v8 enableSpectralOutputWithConfiguration:v7 completionHandler:v6];
}

- (void)disableSpectralOutput
{
  v2 = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
  [v2 disableSpectralOutput];
}

- (BOOL)setRollingBufferSeconds:(float)a3 error:(id *)a4
{
  v6 = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
  *&v7 = a3;
  LOBYTE(a4) = [v6 setRollingBufferSeconds:a4 error:v7];

  return a4;
}

- (BOOL)flowBuffer:(id)a3 error:(id *)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
  v21 = 0;
  v8 = [(SHFeatureExtractorController *)self flowBuffer:v6 throughExtractor:v7 error:&v21];
  v9 = v21;

  v10 = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];
  v20 = 0;
  LOBYTE(self) = [(SHFeatureExtractorController *)self flowBuffer:v6 throughExtractor:v10 error:&v20];

  v11 = v20;
  v12 = v8 & self;
  if (!v12)
  {
    v13 = [MEMORY[0x277CBEB18] array];
    v14 = v13;
    if (v9)
    {
      [v13 addObject:v9];
    }

    if (v11)
    {
      [v14 addObject:v11];
    }

    v15 = [v14 count];
    if (a4 && v15)
    {
      v22 = *MEMORY[0x277CCA578];
      v16 = [v14 copy];
      v23[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *a4 = [SHError errorWithCode:200 underlyingError:0 keyOverrides:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)flowBuffer:(id)a3 throughExtractor:(id)a4 error:(id *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8 && ([v8 flowBuffer:v7 error:a5] & 1) == 0)
  {
    v11 = sh_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *a5;
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_230F52000, v11, OS_LOG_TYPE_ERROR, "Error appending buffer to features extractor: %@", &v15, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)signatureDataForExtractor:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v14 = 0;
    v7 = [v5 signatureWithError:&v14];
    v8 = v14;
    v9 = v8;
    if (v7)
    {
      v10 = v7;
    }

    else if (v8)
    {
      v11 = sh_log_object();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = v6;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_230F52000, v11, OS_LOG_TYPE_ERROR, "Extractor %@ failed to generate a signature with error: %@", buf, 0x16u);
      }

      [SHError annotateClientError:a4 code:200 underlyingError:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)signatureWithError:(id *)a3
{
  v5 = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
  if (v5)
  {
    v6 = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
    v17 = 0;
    v7 = [(SHFeatureExtractorController *)self signatureDataForExtractor:v6 error:&v17];
    v8 = v17;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];
  if (!v9)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];
  v16 = 0;
  v12 = [(SHFeatureExtractorController *)self signatureDataForExtractor:v11 error:&v16];
  v13 = v16;

  if (!v12)
  {
LABEL_9:
    v12 = v7;
    goto LABEL_10;
  }

  if (v7)
  {
    v14 = [(SHFeatureExtractorController *)self coalescePeaksFeatures:v7 musicalFeatures:v12 error:a3];

    v12 = v14;
  }

LABEL_10:

  return v12;
}

- (id)coalescePeaksFeatures:(id)a3 musicalFeatures:(id)a4 error:(id *)a5
{
  if (a3 && a4)
  {
    v5 = [SHCoalescedSignature coalesePeakFeatures:"coalesePeakFeatures:musicalFeatures:error:" musicalFeatures:? error:?];
  }

  else
  {
    if (a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = a4;
    }

    v5 = v6;
  }

  return v5;
}

- (void)reset
{
  v3 = [(SHFeatureExtractorController *)self spectralPeaksExtractor];

  if (v3)
  {
    v4 = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
    [v4 reset];
  }

  v5 = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];

  if (v5)
  {
    v6 = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];
    [v6 reset];
  }
}

@end