@interface SHSpectralPeakFeaturesExtractor
- (BOOL)flowBuffer:(id)a3 error:(id *)a4;
- (BOOL)setRollingBufferSeconds:(float)a3 error:(id *)a4;
- (SHSpectralPeakFeaturesExtractor)initWithClipStype:(int64_t)a3 maximumSeconds:(double)a4 sampleRate:(double)a5 error:(id *)a6;
- (id)signatureWithError:(id *)a3;
- (int)signatureType;
- (void)dealloc;
- (void)disableSpectralOutput;
- (void)enableSpectralOutputWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)reset;
@end

@implementation SHSpectralPeakFeaturesExtractor

- (SHSpectralPeakFeaturesExtractor)initWithClipStype:(int64_t)a3 maximumSeconds:(double)a4 sampleRate:(double)a5 error:(id *)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = SHSpectralPeakFeaturesExtractor;
  v10 = [(SHSpectralPeakFeaturesExtractor *)&v28 init];
  if (!v10)
  {
LABEL_12:
    v23 = v10;
    goto LABEL_16;
  }

  v11 = os_log_create("com.apple.shazamkit", "feature-extraction");
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_230F52000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SHSpectralPeakFeaturesExtractor_Init", "", buf, 2u);
  }

  v10->_clipStyle = a3;
  v10->_sampleRate = a5;
  v15 = [[SHSigX alloc] initWithSignatureType:[(SHSpectralPeakFeaturesExtractor *)v10 signatureType] sampleRate:a5 error:a6];
  sigX = v10->_sigX;
  v10->_sigX = v15;

  v17 = [(SHSpectralPeakFeaturesExtractor *)v10 sigX];
  v18 = v17 == 0;

  if (!v18)
  {
    if ([(SHSpectralPeakFeaturesExtractor *)v10 signatureType]== 4)
    {
      v19 = [(SHSpectralPeakFeaturesExtractor *)v10 sigX];
      *&v20 = a4;
      [v19 setRollingBufferSeconds:a6 error:v20];
    }

    v21 = v14;
    v22 = v21;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_230F52000, v22, OS_SIGNPOST_INTERVAL_END, v12, "SHSpectralPeakFeaturesExtractor_Init", "", buf, 2u);
    }

    goto LABEL_12;
  }

  v24 = sh_log_object();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = *a6;
    *buf = 138412290;
    v30 = v25;
    _os_log_impl(&dword_230F52000, v24, OS_LOG_TYPE_ERROR, "Spectral peaks feature extractor failed to initialize with error: %@", buf, 0xCu);
  }

  v23 = 0;
LABEL_16:

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  sigX = self->_sigX;
  if (sigX)
  {
    [(SHSigX *)sigX disableSpectralOutput];
    v4 = self->_sigX;
    v10 = 0;
    [(SHSigX *)v4 resetWithError:&v10];
    v5 = v10;
    if (v5)
    {
      v6 = sh_log_object();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_230F52000, v6, OS_LOG_TYPE_ERROR, "Error resetting SigX %@", buf, 0xCu);
      }
    }

    v7 = self->_sigX;
    self->_sigX = 0;
  }

  v9.receiver = self;
  v9.super_class = SHSpectralPeakFeaturesExtractor;
  [(SHSpectralPeakFeaturesExtractor *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  v10 = *MEMORY[0x277D85DE8];
  sigX = self->_sigX;
  if (sigX)
  {
    v7 = 0;
    v3 = [(SHSigX *)sigX resetWithError:&v7];
    v4 = v7;
    if (!v3)
    {
      v5 = sh_log_object();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&dword_230F52000, v5, OS_LOG_TYPE_ERROR, "Error resetting SigX %@", buf, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)disableSpectralOutput
{
  v2 = [(SHSpectralPeakFeaturesExtractor *)self sigX];
  [v2 disableSpectralOutput];
}

- (id)signatureWithError:(id *)a3
{
  v4 = [(SHSpectralPeakFeaturesExtractor *)self sigX];
  v5 = [v4 signatureWithError:a3];

  return v5;
}

- (BOOL)flowBuffer:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 format];
  [v7 sampleRate];
  v9 = v8;
  [(SHSpectralPeakFeaturesExtractor *)self sampleRate];
  v11 = v10;

  if (v9 == v11)
  {
    goto LABEL_6;
  }

  v12 = sh_log_object();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    [(SHSpectralPeakFeaturesExtractor *)self sampleRate];
    v14 = v13;
    v15 = [v6 format];
    [v15 sampleRate];
    *buf = 134218240;
    v34 = v14;
    v35 = 2048;
    v36 = v16;
    _os_log_impl(&dword_230F52000, v12, OS_LOG_TYPE_INFO, "Sample rate for spectral peaks extractor changed from %.1f to %.1f", buf, 0x16u);
  }

  [(SHSpectralPeakFeaturesExtractor *)self reset];
  sigX = self->_sigX;
  self->_sigX = 0;

  v18 = [v6 format];
  [v18 sampleRate];
  self->_sampleRate = v19;

  v20 = [SHSigX alloc];
  v21 = [(SHSpectralPeakFeaturesExtractor *)self signatureType];
  [(SHSpectralPeakFeaturesExtractor *)self sampleRate];
  v32 = 0;
  v23 = [(SHSigX *)v20 initWithSignatureType:v21 sampleRate:v22 error:&v32];
  v24 = v32;
  v25 = self->_sigX;
  self->_sigX = v23;

  v26 = [(SHSpectralPeakFeaturesExtractor *)self sigX];
  LODWORD(v23) = v26 == 0;

  if (!v23)
  {

LABEL_6:
    v24 = [(SHSpectralPeakFeaturesExtractor *)self sigX];
    v27 = [v24 flowBuffer:v6 error:a4];
    goto LABEL_7;
  }

  v30 = sh_log_object();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v34 = v24;
    _os_log_impl(&dword_230F52000, v30, OS_LOG_TYPE_ERROR, "Spectral peaks feature extractor failed to initialize with error: %@", buf, 0xCu);
  }

  if (a4)
  {
    v31 = v24;
    v27 = 0;
    *a4 = v24;
  }

  else
  {
    v27 = 0;
  }

LABEL_7:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)setRollingBufferSeconds:(float)a3 error:(id *)a4
{
  v6 = [(SHSpectralPeakFeaturesExtractor *)self sigX];
  *&v7 = a3;
  LOBYTE(a4) = [v6 setRollingBufferSeconds:a4 error:v7];

  return a4;
}

- (int)signatureType
{
  if ([(SHSpectralPeakFeaturesExtractor *)self clipStyle]== 1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

- (void)enableSpectralOutputWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SHSpectralPeakFeaturesExtractor *)self sigX];
  [v7 enableSpectralOutputForNumberOfFrequencyBins:objc_msgSend(v8 callbackFrequency:"numberOfBins") completionHandler:{objc_msgSend(v8, "callbackFrequency"), v6}];
}

@end