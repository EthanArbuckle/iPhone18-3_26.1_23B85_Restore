@interface SHFeatureExtractorController
- (BOOL)configureMusicalFeaturesExtractorWithConfiguration:(id)configuration sampleRate:(double)rate error:(id *)error;
- (BOOL)configureSpectralPeaksExtractorWithClipStype:(int64_t)stype maximumSeconds:(double)seconds sampleRate:(double)rate error:(id *)error;
- (BOOL)flowBuffer:(id)buffer error:(id *)error;
- (BOOL)flowBuffer:(id)buffer throughExtractor:(id)extractor error:(id *)error;
- (BOOL)setRollingBufferSeconds:(float)seconds error:(id *)error;
- (id)coalescePeaksFeatures:(id)features musicalFeatures:(id)musicalFeatures error:(id *)error;
- (id)signatureDataForExtractor:(id)extractor error:(id *)error;
- (id)signatureWithError:(id *)error;
- (void)disableSpectralOutput;
- (void)enableSpectralOutputWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)reset;
@end

@implementation SHFeatureExtractorController

- (BOOL)configureSpectralPeaksExtractorWithClipStype:(int64_t)stype maximumSeconds:(double)seconds sampleRate:(double)rate error:(id *)error
{
  v7 = [[SHSpectralPeakFeaturesExtractor alloc] initWithClipStype:stype maximumSeconds:error sampleRate:seconds error:rate];
  [(SHFeatureExtractorController *)self setSpectralPeaksExtractor:v7];

  spectralPeaksExtractor = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
  LOBYTE(v7) = spectralPeaksExtractor != 0;

  return v7;
}

- (BOOL)configureMusicalFeaturesExtractorWithConfiguration:(id)configuration sampleRate:(double)rate error:(id *)error
{
  configurationCopy = configuration;
  musicalFeaturesExtractor = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];

  if (musicalFeaturesExtractor)
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
    if (!configurationCopy)
    {
      v15 = MEMORY[0x277CBEAD8];
      v16 = *MEMORY[0x277CBE660];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"A Musical Features extractor must not be initialized with a nil configuration object"];
      v18 = [v15 exceptionWithName:v16 reason:v17 userInfo:0];
      v19 = v18;

      objc_exception_throw(v18);
    }

    v12 = [[SHMusicalFeaturesExtractor alloc] initWithConfiguration:configurationCopy sampleRate:error error:rate];
    [(SHFeatureExtractorController *)self setMusicalFeaturesExtractor:v12];

    musicalFeaturesExtractor2 = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];
    v11 = musicalFeaturesExtractor2 != 0;
  }

  return v11;
}

- (void)enableSpectralOutputWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  spectralPeaksExtractor = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
  [spectralPeaksExtractor enableSpectralOutputWithConfiguration:configurationCopy completionHandler:handlerCopy];
}

- (void)disableSpectralOutput
{
  spectralPeaksExtractor = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
  [spectralPeaksExtractor disableSpectralOutput];
}

- (BOOL)setRollingBufferSeconds:(float)seconds error:(id *)error
{
  spectralPeaksExtractor = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
  *&v7 = seconds;
  LOBYTE(error) = [spectralPeaksExtractor setRollingBufferSeconds:error error:v7];

  return error;
}

- (BOOL)flowBuffer:(id)buffer error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  spectralPeaksExtractor = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
  v21 = 0;
  v8 = [(SHFeatureExtractorController *)self flowBuffer:bufferCopy throughExtractor:spectralPeaksExtractor error:&v21];
  v9 = v21;

  musicalFeaturesExtractor = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];
  v20 = 0;
  LOBYTE(self) = [(SHFeatureExtractorController *)self flowBuffer:bufferCopy throughExtractor:musicalFeaturesExtractor error:&v20];

  v11 = v20;
  v12 = v8 & self;
  if (!v12)
  {
    array = [MEMORY[0x277CBEB18] array];
    v14 = array;
    if (v9)
    {
      [array addObject:v9];
    }

    if (v11)
    {
      [v14 addObject:v11];
    }

    v15 = [v14 count];
    if (error && v15)
    {
      v22 = *MEMORY[0x277CCA578];
      v16 = [v14 copy];
      v23[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *error = [SHError errorWithCode:200 underlyingError:0 keyOverrides:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)flowBuffer:(id)buffer throughExtractor:(id)extractor error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  extractorCopy = extractor;
  v9 = extractorCopy;
  if (extractorCopy && ([extractorCopy flowBuffer:bufferCopy error:error] & 1) == 0)
  {
    v11 = sh_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *error;
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

- (id)signatureDataForExtractor:(id)extractor error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  extractorCopy = extractor;
  v6 = extractorCopy;
  if (extractorCopy)
  {
    v14 = 0;
    v7 = [extractorCopy signatureWithError:&v14];
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

      [SHError annotateClientError:error code:200 underlyingError:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)signatureWithError:(id *)error
{
  spectralPeaksExtractor = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
  if (spectralPeaksExtractor)
  {
    spectralPeaksExtractor2 = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
    v17 = 0;
    v7 = [(SHFeatureExtractorController *)self signatureDataForExtractor:spectralPeaksExtractor2 error:&v17];
    v8 = v17;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  musicalFeaturesExtractor = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];
  if (!musicalFeaturesExtractor)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v10 = musicalFeaturesExtractor;
  musicalFeaturesExtractor2 = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];
  v16 = 0;
  v12 = [(SHFeatureExtractorController *)self signatureDataForExtractor:musicalFeaturesExtractor2 error:&v16];
  v13 = v16;

  if (!v12)
  {
LABEL_9:
    v12 = v7;
    goto LABEL_10;
  }

  if (v7)
  {
    v14 = [(SHFeatureExtractorController *)self coalescePeaksFeatures:v7 musicalFeatures:v12 error:error];

    v12 = v14;
  }

LABEL_10:

  return v12;
}

- (id)coalescePeaksFeatures:(id)features musicalFeatures:(id)musicalFeatures error:(id *)error
{
  if (features && musicalFeatures)
  {
    v5 = [SHCoalescedSignature coalesePeakFeatures:"coalesePeakFeatures:musicalFeatures:error:" musicalFeatures:? error:?];
  }

  else
  {
    if (features)
    {
      musicalFeaturesCopy = features;
    }

    else
    {
      musicalFeaturesCopy = musicalFeatures;
    }

    v5 = musicalFeaturesCopy;
  }

  return v5;
}

- (void)reset
{
  spectralPeaksExtractor = [(SHFeatureExtractorController *)self spectralPeaksExtractor];

  if (spectralPeaksExtractor)
  {
    spectralPeaksExtractor2 = [(SHFeatureExtractorController *)self spectralPeaksExtractor];
    [spectralPeaksExtractor2 reset];
  }

  musicalFeaturesExtractor = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];

  if (musicalFeaturesExtractor)
  {
    musicalFeaturesExtractor2 = [(SHFeatureExtractorController *)self musicalFeaturesExtractor];
    [musicalFeaturesExtractor2 reset];
  }
}

@end