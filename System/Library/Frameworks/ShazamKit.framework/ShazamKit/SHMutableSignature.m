@interface SHMutableSignature
- (BOOL)appendBuffer:(id)a3 atTime:(id)a4 error:(id *)a5;
- (BOOL)configureMusicalFeaturesExtractorWithConfiguration:(id)a3 sampleRate:(double)a4 error:(id *)a5;
- (BOOL)configureSpectralPeaksExtractorWithSampleRate:(double)a3 error:(id *)a4;
- (BOOL)updateRingBufferDuration:(double)a3 error:(id *)a4;
- (SHAudioConverter)audioConverter;
- (SHMutableSignature)initWithCoder:(id)a3;
- (SHMutableSignature)initWithID:(id)a3 dataRepresentation:(id)a4 startTime:(id)a5 error:(id *)a6;
- (SHMutableSignature)initWithMaximumSeconds:(double)a3 clipStyle:(int64_t)a4;
- (SHMutableSignature)initWithMaximumSeconds:(double)a3 clipStyle:(int64_t)a4 musicalFeaturesConfiguration:(id)a5;
- (double)duration;
- (double)secondsFromFrameCount:(unsigned int)a3 forFormat:(id)a4;
- (id)clipExcessAudio:(id)a3;
- (id)dataRepresentation;
- (id)generate:(id *)a3;
- (int64_t)currentPosition;
- (void)configureWithFormat:(id)a3;
- (void)disableSpectralOutput;
- (void)enableSpectralOutputWithConfiguration:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
@end

@implementation SHMutableSignature

- (SHMutableSignature)initWithMaximumSeconds:(double)a3 clipStyle:(int64_t)a4 musicalFeaturesConfiguration:(id)a5
{
  v9 = a5;
  v10 = [(SHMutableSignature *)self initWithMaximumSeconds:a4 clipStyle:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_musicalFeaturesConfiguration, a5);
  }

  return v11;
}

- (SHMutableSignature)initWithMaximumSeconds:(double)a3 clipStyle:(int64_t)a4
{
  if (a3 <= 0.0)
  {
    v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Signature maximum duration must be greater than zero" userInfo:0];
    objc_exception_throw(v13);
  }

  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [MEMORY[0x277CBEA90] data];
  v9 = [MEMORY[0x277CBEA90] data];
  v14.receiver = self;
  v14.super_class = SHMutableSignature;
  v10 = [(SHSignature *)&v14 initWithID:v7 spectralPeaksData:v8 musicalFeaturesData:v9 startTime:0 error:0];

  if (v10)
  {
    v11 = 36000.0;
    if (a3 <= 36000.0)
    {
      v11 = a3;
    }

    v10->_maximumSeconds = v11;
    v10->_clipStyle = a4;
  }

  return v10;
}

- (SHMutableSignature)initWithID:(id)a3 dataRepresentation:(id)a4 startTime:(id)a5 error:(id *)a6
{
  v7.receiver = self;
  v7.super_class = SHMutableSignature;
  result = [(SHSignature *)&v7 initWithID:a3 dataRepresentation:a4 startTime:a5 error:a6];
  if (result)
  {
    result->_maximumSeconds = 36000.0;
    result->_clipStyle = 0;
  }

  return result;
}

- (SHMutableSignature)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SHMutableSignature;
  v5 = [(SHSignature *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"SHMutableSignatureCodingMaximumSeconds"];
    v5->_maximumSeconds = v6;
    v5->_clipStyle = [v4 decodeIntegerForKey:@"SHMutableSignatureCodingClipStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SHMutableSignature;
  v4 = a3;
  [(SHSignature *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[SHMutableSignature clipStyle](self forKey:{"clipStyle", v5.receiver, v5.super_class), @"SHMutableSignatureCodingClipStyle"}];
  [(SHMutableSignature *)self maximumSeconds];
  [v4 encodeDouble:@"SHMutableSignatureCodingMaximumSeconds" forKey:?];
}

- (BOOL)updateRingBufferDuration:(double)a3 error:(id *)a4
{
  if ([(SHMutableSignature *)self clipStyle]!= 1)
  {
    v24 = sh_log_object();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_230F52000, v24, OS_LOG_TYPE_ERROR, "Can't update mutable signature duration as the clip style is not OLD", v25, 2u);
    }

    [SHError annotateClientError:a4 code:500 underlyingError:0];
    return 0;
  }

  v7 = [(SHMutableSignature *)self extractorController];
  if (v7)
  {
    v8 = v7;
    v9 = [(SHMutableSignature *)self extractorController];
    *&v10 = a3;
    v11 = [v9 setRollingBufferSeconds:a4 error:v10];

    if (!v11)
    {
      return 0;
    }
  }

  [(SHMutableSignature *)self duration];
  if (v12 > a3)
  {
    [(SHMutableSignature *)self duration];
    v14 = v13 - a3;
    v15 = [(SHMutableSignature *)self format];
    [v15 sampleRate];
    v17 = (v14 * v16);

    v18 = objc_alloc(MEMORY[0x277CB8428]);
    v19 = [(SHSignature *)self time];
    v20 = [v19 sampleTime];
    v21 = [(SHMutableSignature *)self format];
    [v21 sampleRate];
    v22 = [v18 initWithSampleTime:v20 + v17 atRate:?];
    [(SHSignature *)self setTime:v22];

    [(SHMutableSignature *)self setCurrentFrameCount:[(SHMutableSignature *)self currentFrameCount]- v17];
  }

  self->_maximumSeconds = a3;
  return 1;
}

- (BOOL)configureSpectralPeaksExtractorWithSampleRate:(double)a3 error:(id *)a4
{
  v6 = [(SHMutableSignature *)self extractorController];

  if (!v6)
  {
    v7 = objc_alloc_init(SHFeatureExtractorController);
    extractorController = self->_extractorController;
    self->_extractorController = v7;
  }

  v9 = [(SHMutableSignature *)self extractorController];
  v10 = [(SHMutableSignature *)self clipStyle];
  [(SHMutableSignature *)self maximumSeconds];
  v11 = [v9 configureSpectralPeaksExtractorWithClipStype:v10 maximumSeconds:a4 sampleRate:? error:?];

  return v11;
}

- (BOOL)configureMusicalFeaturesExtractorWithConfiguration:(id)a3 sampleRate:(double)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SHMutableSignature *)self extractorController];

  if (!v9)
  {
    v10 = objc_alloc_init(SHFeatureExtractorController);
    extractorController = self->_extractorController;
    self->_extractorController = v10;
  }

  v12 = [(SHMutableSignature *)self extractorController];
  v13 = [v12 configureMusicalFeaturesExtractorWithConfiguration:v8 sampleRate:a5 error:a4];

  return v13;
}

- (void)configureWithFormat:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.shazamkit", "feature-extraction");
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_230F52000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SHMutableSignature_ConfigureWithFormat", "", buf, 2u);
  }

  [(SHMutableSignature *)self setFormat:v4];
  [v4 sampleRate];
  v29 = 0;
  v9 = [(SHMutableSignature *)self configureSpectralPeaksExtractorWithSampleRate:&v29 error:?];
  v10 = v29;
  if (!v9)
  {
    v22 = sh_log_object();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&dword_230F52000, v22, OS_LOG_TYPE_ERROR, "Could not configure spectral peaks extractor with error %@", buf, 0xCu);
    }

    v23 = MEMORY[0x277CBEAD8];
    v24 = *MEMORY[0x277CBE660];
    v25 = [v10 localizedDescription];
    v26 = [v23 exceptionWithName:v24 reason:v25 userInfo:0];
    v27 = v26;

    objc_exception_throw(v26);
  }

  v11 = [(SHMutableSignature *)self musicalFeaturesConfiguration];
  if (v11)
  {
    v12 = v11;
    v13 = [(SHMutableSignature *)self musicalFeaturesConfiguration];
    [v4 sampleRate];
    v28 = 0;
    v14 = [(SHMutableSignature *)self configureMusicalFeaturesExtractorWithConfiguration:v13 sampleRate:&v28 error:?];
    v15 = v28;

    if (!v14)
    {
      v16 = sh_log_object();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v15;
        _os_log_impl(&dword_230F52000, v16, OS_LOG_TYPE_ERROR, "Could not configure musical features with error %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = [(SHMutableSignature *)self spectralOutputConfiguration];

  if (v17)
  {
    v18 = [(SHMutableSignature *)self spectralOutputConfiguration];
    [(SHMutableSignature *)self enableSpectralOutputWithConfiguration:v18];
  }

  v19 = v8;
  v20 = v19;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_230F52000, v20, OS_SIGNPOST_INTERVAL_END, v6, "SHMutableSignature_ConfigureWithFormat", "", buf, 2u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)enableSpectralOutputWithConfiguration:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SHMutableSignature *)self extractorController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SHMutableSignature_enableSpectralOutputWithConfiguration___block_invoke;
  v6[3] = &unk_2788F81F0;
  objc_copyWeak(&v7, &location);
  [v5 enableSpectralOutputWithConfiguration:v4 completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __60__SHMutableSignature_enableSpectralOutputWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 subarrayWithRange:{1, 6}];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = @"spectralData";
  v9[0] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v4 postNotificationName:@"com.apple.shazamd.sigx.newspectraloutput" object:WeakRetained userInfo:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)disableSpectralOutput
{
  v2 = [(SHMutableSignature *)self extractorController];
  [v2 disableSpectralOutput];
}

- (void)reset
{
  [(SHMutableSignature *)self setFormat:0];
  [(SHMutableSignature *)self setCurrentFrameCount:0];
  v3 = [(SHMutableSignature *)self extractorController];
  [v3 reset];
}

- (id)clipExcessAudio:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [SHAudioUtilities durationOfBuffer:v4];
  v6 = v5;
  [(SHMutableSignature *)self duration];
  v8 = v6 + v7;
  [(SHMutableSignature *)self maximumSeconds];
  if (v8 > v9)
  {
    [(SHMutableSignature *)self maximumSeconds];
    v11 = v10;
    [(SHMutableSignature *)self duration];
    v13 = v11 - v12;
    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v18 = 134217984;
      v19 = v13;
      _os_log_impl(&dword_230F52000, v14, OS_LOG_TYPE_DEBUG, "Audio will be too long we require only %f", &v18, 0xCu);
    }

    v15 = [SHAudioUtilities bufferHead:v4 duration:v13];

    v4 = v15;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)appendBuffer:(id)a3 atTime:(id)a4 error:(id *)a5
{
  v103 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 format];
  v11 = [SHAudioUtilities willAudioFormatCauseBufferMutation:v10];

  if (v11)
  {
    v12 = [v8 copy];

    v8 = v12;
  }

  v13 = [v8 format];
  v14 = [SHAudioUtilities isAudioFormatSupported:v13];

  if (!v14)
  {
    v15 = [(SHMutableSignature *)self audioConverter];
    v16 = [v15 supportedPCMBufferFromBuffer:v8 error:a5];

    if (!v16)
    {
      v25 = sh_log_object();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_230F52000, v25, OS_LOG_TYPE_ERROR, "Failed to convert input buffer to standard format", buf, 2u);
      }

      goto LABEL_41;
    }

    if (v9)
    {
      v17 = [v16 format];
      [v17 sampleRate];
      if (v18 == 0.0)
      {
        v24 = 1.0;
      }

      else
      {
        v19 = [v8 format];
        [v19 sampleRate];
        v21 = v20;
        v22 = [v16 format];
        [v22 sampleRate];
        v24 = v21 / v23;
      }

      v27 = vcvtpd_s64_f64([v9 sampleTime] / v24);
      v28 = MEMORY[0x277CB8428];
      v29 = [v16 format];
      [v29 sampleRate];
      v26 = [v28 timeWithSampleTime:v27 atRate:?];
    }

    else
    {
      v26 = 0;
    }

    v9 = v26;
    v8 = v16;
  }

  v30 = [(SHMutableSignature *)self format];

  if (!v30)
  {
    [(SHSignature *)self setTime:v9];
    v31 = [(SHSignature *)self time];
    v32 = [(SHSignature *)self _startDateBasedUponAudioTime:v31];
    [(SHSignature *)self setAudioStartDate:v32];

    v33 = [v8 format];
    [(SHMutableSignature *)self configureWithFormat:v33];
  }

  v34 = [v8 format];
  v35 = [(SHMutableSignature *)self format];
  v36 = [v34 isEqual:v35];

  if ((v36 & 1) == 0)
  {
    v80 = [v8 format];
    v81 = [v80 formatDescription];

    v82 = [(SHMutableSignature *)self format];
    v83 = [v82 formatDescription];

    v84 = sh_log_object();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      v85 = [v8 format];
      *buf = 138412546;
      v100 = [v85 formatDescription];
      v101 = 2112;
      v102 = v83;
      _os_log_impl(&dword_230F52000, v84, OS_LOG_TYPE_ERROR, "Audio format mismatch %@ != %@", buf, 0x16u);
    }

    v86 = MEMORY[0x277CBEAD8];
    v87 = *MEMORY[0x277CBE660];
    v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"Supplied audio format %@ does not match existing format %@", v81, v83];
    v89 = [v86 exceptionWithName:v87 reason:v88 userInfo:0];
    v90 = v89;

    objc_exception_throw(v89);
  }

  [SHAudioUtilities durationOfBuffer:v8];
  v38 = v37;
  [(SHMutableSignature *)self duration];
  v40 = v39;
  [(SHMutableSignature *)self maximumSeconds];
  v42 = v41;
  [(SHMutableSignature *)self duration];
  v44 = v38 + v43;
  [(SHMutableSignature *)self maximumSeconds];
  v46 = v45;
  if ([(SHMutableSignature *)self clipStyle])
  {
    goto LABEL_18;
  }

  if (v40 >= v42)
  {
    v75 = sh_log_object();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_230F52000, v75, OS_LOG_TYPE_DEBUG, "Discarding audio we are at max duration with a discard behaviour", buf, 2u);
    }

    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"The signature has reached the max duration"];
    v97[0] = *MEMORY[0x277CCA470];
    v97[1] = @"discardedAudioDuration";
    v98[0] = v25;
    v76 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
    v98[1] = v76;
    v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];
    [SHError annotateClientError:a5 code:201 underlyingError:0 keyOverrides:v77];

LABEL_40:
LABEL_41:

    goto LABEL_42;
  }

  if (v44 <= v46)
  {
LABEL_18:
    if (!v9)
    {
      goto LABEL_22;
    }

    if ([v9 isSampleTimeValid])
    {
      if (!-[SHMutableSignature currentPosition](self, "currentPosition") || (v47 = -[SHMutableSignature currentPosition](self, "currentPosition"), v47 == [v9 sampleTime]))
      {
LABEL_22:
        v48 = [(SHMutableSignature *)self extractorController];
        v49 = [v48 flowBuffer:v8 error:a5];

        if (v49)
        {
          if ([(SHMutableSignature *)self clipStyle]== 1 && v44 > v46)
          {
            [(SHMutableSignature *)self maximumSeconds];
            v51 = v50;
            v52 = [(SHMutableSignature *)self format];
            [v52 sampleRate];
            v54 = (v51 * v53);

            LODWORD(v52) = [(SHMutableSignature *)self currentFrameCount];
            v55 = v52 - v54 + [v8 frameLength];
            v56 = objc_alloc(MEMORY[0x277CB8428]);
            v57 = [(SHSignature *)self time];
            v58 = [v57 sampleTime];
            v59 = [(SHMutableSignature *)self format];
            [v59 sampleRate];
            v60 = [v56 initWithSampleTime:v58 + v55 atRate:?];
            [(SHSignature *)self setTime:v60];

            [(SHMutableSignature *)self setCurrentFrameCount:[(SHMutableSignature *)self currentFrameCount]- v55];
          }

          -[SHMutableSignature setCurrentFrameCount:](self, "setCurrentFrameCount:", -[SHMutableSignature currentFrameCount](self, "currentFrameCount") + [v8 frameLength]);
          v61 = 1;
          goto LABEL_43;
        }

LABEL_42:
        v61 = 0;
        goto LABEL_43;
      }

      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"The current frame position %lld does not equal the sample time %lld", -[SHMutableSignature currentPosition](self, "currentPosition"), objc_msgSend(v9, "sampleTime")];
      v91 = *MEMORY[0x277CCA470];
      v92 = v25;
      v72 = MEMORY[0x277CBEAC0];
      v73 = &v92;
      v74 = &v91;
    }

    else
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"The provided time does not have a valid sample time"];
      v93 = *MEMORY[0x277CCA470];
      v94 = v25;
      v72 = MEMORY[0x277CBEAC0];
      v73 = &v94;
      v74 = &v93;
    }

    v76 = [v72 dictionaryWithObjects:v73 forKeys:v74 count:1];
    [SHError annotateClientError:a5 code:101 underlyingError:0 keyOverrides:v76];
    goto LABEL_40;
  }

  v62 = [(SHMutableSignature *)self clipExcessAudio:v8];

  v63 = [(SHMutableSignature *)self extractorController];
  v64 = [v63 flowBuffer:v62 error:a5];

  if (v64)
  {
    v65 = sh_log_object();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_230F52000, v65, OS_LOG_TYPE_DEBUG, "Discarding audio we are at max duration with a discard behaviour", buf, 2u);
    }

    v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"The signature has reached the max duration"];
    [(SHMutableSignature *)self maximumSeconds];
    v68 = v67;
    [(SHMutableSignature *)self duration];
    v95[0] = *MEMORY[0x277CCA470];
    v95[1] = @"discardedAudioDuration";
    v96[0] = v66;
    v70 = [MEMORY[0x277CCABB0] numberWithDouble:v38 - (v68 - v69)];
    v96[1] = v70;
    v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:2];
    [SHError annotateClientError:a5 code:201 underlyingError:0 keyOverrides:v71];

    -[SHMutableSignature setCurrentFrameCount:](self, "setCurrentFrameCount:", -[SHMutableSignature currentFrameCount](self, "currentFrameCount") + [v62 frameLength]);
  }

  v61 = 0;
  v8 = v62;
LABEL_43:

  v78 = *MEMORY[0x277D85DE8];
  return v61;
}

- (int64_t)currentPosition
{
  v3 = [(SHSignature *)self time];
  v4 = [v3 sampleTime];
  v5 = v4 + [(SHMutableSignature *)self currentFrameCount];

  return v5;
}

- (id)generate:(id *)a3
{
  v4 = [(SHMutableSignature *)self extractorController];
  v5 = [v4 signatureWithError:a3];

  return v5;
}

- (id)dataRepresentation
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v3 = [(SHMutableSignature *)self generate:&v16];
  v4 = v16;
  v5 = v4;
  if (v3)
  {
    [SHSigUtilities signatureDurationForData:v3 error:0];
    v7 = v6;
    [(SHMutableSignature *)self maximumSeconds];
    if (v7 > v8)
    {
      v9 = sh_log_object();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_230F52000, v9, OS_LOG_TYPE_ERROR, "Rolling signature buffer is over maximum seconds, cropping down to duration", buf, 2u);
      }

      [(SHMutableSignature *)self maximumSeconds];
      v11 = [SigCrop cropSignature:v3 atPosition:0 withDuration:0.0 error:v10];

      v3 = v11;
    }
  }

  else
  {
    if (v4)
    {
      v12 = sh_log_object();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&dword_230F52000, v12, OS_LOG_TYPE_ERROR, "Signature generation error %@", buf, 0xCu);
      }
    }

    v15.receiver = self;
    v15.super_class = SHMutableSignature;
    v3 = [(SHSignature *)&v15 dataRepresentation];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (double)duration
{
  if ([(SHMutableSignature *)self currentFrameCount])
  {
    v3 = [(SHMutableSignature *)self currentFrameCount];
    v4 = [(SHMutableSignature *)self format];
    [(SHMutableSignature *)self secondsFromFrameCount:v3 forFormat:v4];
    v6 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SHMutableSignature;
    v7 = [(SHSignature *)&v10 dataRepresentation];
    [SHSigUtilities signatureDurationForData:v7 error:0];
    v6 = v8;
  }

  return v6;
}

- (double)secondsFromFrameCount:(unsigned int)a3 forFormat:(id)a4
{
  if (!a3)
  {
    return 0.0;
  }

  v4 = a3;
  [a4 sampleRate];
  return v4 / v5;
}

- (SHAudioConverter)audioConverter
{
  audioConverter = self->_audioConverter;
  if (!audioConverter)
  {
    v4 = objc_alloc_init(SHAudioConverter);
    v5 = self->_audioConverter;
    self->_audioConverter = v4;

    audioConverter = self->_audioConverter;
  }

  return audioConverter;
}

@end