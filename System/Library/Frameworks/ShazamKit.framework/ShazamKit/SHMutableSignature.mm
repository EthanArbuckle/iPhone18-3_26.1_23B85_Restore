@interface SHMutableSignature
- (BOOL)appendBuffer:(id)buffer atTime:(id)time error:(id *)error;
- (BOOL)configureMusicalFeaturesExtractorWithConfiguration:(id)configuration sampleRate:(double)rate error:(id *)error;
- (BOOL)configureSpectralPeaksExtractorWithSampleRate:(double)rate error:(id *)error;
- (BOOL)updateRingBufferDuration:(double)duration error:(id *)error;
- (SHAudioConverter)audioConverter;
- (SHMutableSignature)initWithCoder:(id)coder;
- (SHMutableSignature)initWithID:(id)d dataRepresentation:(id)representation startTime:(id)time error:(id *)error;
- (SHMutableSignature)initWithMaximumSeconds:(double)seconds clipStyle:(int64_t)style;
- (SHMutableSignature)initWithMaximumSeconds:(double)seconds clipStyle:(int64_t)style musicalFeaturesConfiguration:(id)configuration;
- (double)duration;
- (double)secondsFromFrameCount:(unsigned int)count forFormat:(id)format;
- (id)clipExcessAudio:(id)audio;
- (id)dataRepresentation;
- (id)generate:(id *)generate;
- (int64_t)currentPosition;
- (void)configureWithFormat:(id)format;
- (void)disableSpectralOutput;
- (void)enableSpectralOutputWithConfiguration:(id)configuration;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
@end

@implementation SHMutableSignature

- (SHMutableSignature)initWithMaximumSeconds:(double)seconds clipStyle:(int64_t)style musicalFeaturesConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10 = [(SHMutableSignature *)self initWithMaximumSeconds:style clipStyle:seconds];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_musicalFeaturesConfiguration, configuration);
  }

  return v11;
}

- (SHMutableSignature)initWithMaximumSeconds:(double)seconds clipStyle:(int64_t)style
{
  if (seconds <= 0.0)
  {
    v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Signature maximum duration must be greater than zero" userInfo:0];
    objc_exception_throw(v13);
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  data = [MEMORY[0x277CBEA90] data];
  data2 = [MEMORY[0x277CBEA90] data];
  v14.receiver = self;
  v14.super_class = SHMutableSignature;
  v10 = [(SHSignature *)&v14 initWithID:uUID spectralPeaksData:data musicalFeaturesData:data2 startTime:0 error:0];

  if (v10)
  {
    secondsCopy = 36000.0;
    if (seconds <= 36000.0)
    {
      secondsCopy = seconds;
    }

    v10->_maximumSeconds = secondsCopy;
    v10->_clipStyle = style;
  }

  return v10;
}

- (SHMutableSignature)initWithID:(id)d dataRepresentation:(id)representation startTime:(id)time error:(id *)error
{
  v7.receiver = self;
  v7.super_class = SHMutableSignature;
  result = [(SHSignature *)&v7 initWithID:d dataRepresentation:representation startTime:time error:error];
  if (result)
  {
    result->_maximumSeconds = 36000.0;
    result->_clipStyle = 0;
  }

  return result;
}

- (SHMutableSignature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SHMutableSignature;
  v5 = [(SHSignature *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"SHMutableSignatureCodingMaximumSeconds"];
    v5->_maximumSeconds = v6;
    v5->_clipStyle = [coderCopy decodeIntegerForKey:@"SHMutableSignatureCodingClipStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SHMutableSignature;
  coderCopy = coder;
  [(SHSignature *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[SHMutableSignature clipStyle](self forKey:{"clipStyle", v5.receiver, v5.super_class), @"SHMutableSignatureCodingClipStyle"}];
  [(SHMutableSignature *)self maximumSeconds];
  [coderCopy encodeDouble:@"SHMutableSignatureCodingMaximumSeconds" forKey:?];
}

- (BOOL)updateRingBufferDuration:(double)duration error:(id *)error
{
  if ([(SHMutableSignature *)self clipStyle]!= 1)
  {
    v24 = sh_log_object();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_230F52000, v24, OS_LOG_TYPE_ERROR, "Can't update mutable signature duration as the clip style is not OLD", v25, 2u);
    }

    [SHError annotateClientError:error code:500 underlyingError:0];
    return 0;
  }

  extractorController = [(SHMutableSignature *)self extractorController];
  if (extractorController)
  {
    v8 = extractorController;
    extractorController2 = [(SHMutableSignature *)self extractorController];
    *&v10 = duration;
    v11 = [extractorController2 setRollingBufferSeconds:error error:v10];

    if (!v11)
    {
      return 0;
    }
  }

  [(SHMutableSignature *)self duration];
  if (v12 > duration)
  {
    [(SHMutableSignature *)self duration];
    v14 = v13 - duration;
    format = [(SHMutableSignature *)self format];
    [format sampleRate];
    v17 = (v14 * v16);

    v18 = objc_alloc(MEMORY[0x277CB8428]);
    time = [(SHSignature *)self time];
    sampleTime = [time sampleTime];
    format2 = [(SHMutableSignature *)self format];
    [format2 sampleRate];
    v22 = [v18 initWithSampleTime:sampleTime + v17 atRate:?];
    [(SHSignature *)self setTime:v22];

    [(SHMutableSignature *)self setCurrentFrameCount:[(SHMutableSignature *)self currentFrameCount]- v17];
  }

  self->_maximumSeconds = duration;
  return 1;
}

- (BOOL)configureSpectralPeaksExtractorWithSampleRate:(double)rate error:(id *)error
{
  extractorController = [(SHMutableSignature *)self extractorController];

  if (!extractorController)
  {
    v7 = objc_alloc_init(SHFeatureExtractorController);
    extractorController = self->_extractorController;
    self->_extractorController = v7;
  }

  extractorController2 = [(SHMutableSignature *)self extractorController];
  clipStyle = [(SHMutableSignature *)self clipStyle];
  [(SHMutableSignature *)self maximumSeconds];
  v11 = [extractorController2 configureSpectralPeaksExtractorWithClipStype:clipStyle maximumSeconds:error sampleRate:? error:?];

  return v11;
}

- (BOOL)configureMusicalFeaturesExtractorWithConfiguration:(id)configuration sampleRate:(double)rate error:(id *)error
{
  configurationCopy = configuration;
  extractorController = [(SHMutableSignature *)self extractorController];

  if (!extractorController)
  {
    v10 = objc_alloc_init(SHFeatureExtractorController);
    extractorController = self->_extractorController;
    self->_extractorController = v10;
  }

  extractorController2 = [(SHMutableSignature *)self extractorController];
  v13 = [extractorController2 configureMusicalFeaturesExtractorWithConfiguration:configurationCopy sampleRate:error error:rate];

  return v13;
}

- (void)configureWithFormat:(id)format
{
  v32 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  v5 = os_log_create("com.apple.shazamkit", "feature-extraction");
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_230F52000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SHMutableSignature_ConfigureWithFormat", "", buf, 2u);
  }

  [(SHMutableSignature *)self setFormat:formatCopy];
  [formatCopy sampleRate];
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
    localizedDescription = [v10 localizedDescription];
    v26 = [v23 exceptionWithName:v24 reason:localizedDescription userInfo:0];
    v27 = v26;

    objc_exception_throw(v26);
  }

  musicalFeaturesConfiguration = [(SHMutableSignature *)self musicalFeaturesConfiguration];
  if (musicalFeaturesConfiguration)
  {
    v12 = musicalFeaturesConfiguration;
    musicalFeaturesConfiguration2 = [(SHMutableSignature *)self musicalFeaturesConfiguration];
    [formatCopy sampleRate];
    v28 = 0;
    v14 = [(SHMutableSignature *)self configureMusicalFeaturesExtractorWithConfiguration:musicalFeaturesConfiguration2 sampleRate:&v28 error:?];
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

  spectralOutputConfiguration = [(SHMutableSignature *)self spectralOutputConfiguration];

  if (spectralOutputConfiguration)
  {
    spectralOutputConfiguration2 = [(SHMutableSignature *)self spectralOutputConfiguration];
    [(SHMutableSignature *)self enableSpectralOutputWithConfiguration:spectralOutputConfiguration2];
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

- (void)enableSpectralOutputWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_initWeak(&location, self);
  extractorController = [(SHMutableSignature *)self extractorController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SHMutableSignature_enableSpectralOutputWithConfiguration___block_invoke;
  v6[3] = &unk_2788F81F0;
  objc_copyWeak(&v7, &location);
  [extractorController enableSpectralOutputWithConfiguration:configurationCopy completionHandler:v6];

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
  extractorController = [(SHMutableSignature *)self extractorController];
  [extractorController disableSpectralOutput];
}

- (void)reset
{
  [(SHMutableSignature *)self setFormat:0];
  [(SHMutableSignature *)self setCurrentFrameCount:0];
  extractorController = [(SHMutableSignature *)self extractorController];
  [extractorController reset];
}

- (id)clipExcessAudio:(id)audio
{
  v20 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  [SHAudioUtilities durationOfBuffer:audioCopy];
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

    v15 = [SHAudioUtilities bufferHead:audioCopy duration:v13];

    audioCopy = v15;
  }

  v16 = *MEMORY[0x277D85DE8];

  return audioCopy;
}

- (BOOL)appendBuffer:(id)buffer atTime:(id)time error:(id *)error
{
  v103 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  timeCopy = time;
  format = [bufferCopy format];
  v11 = [SHAudioUtilities willAudioFormatCauseBufferMutation:format];

  if (v11)
  {
    v12 = [bufferCopy copy];

    bufferCopy = v12;
  }

  format2 = [bufferCopy format];
  v14 = [SHAudioUtilities isAudioFormatSupported:format2];

  if (!v14)
  {
    audioConverter = [(SHMutableSignature *)self audioConverter];
    v16 = [audioConverter supportedPCMBufferFromBuffer:bufferCopy error:error];

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

    if (timeCopy)
    {
      format3 = [v16 format];
      [format3 sampleRate];
      if (v18 == 0.0)
      {
        v24 = 1.0;
      }

      else
      {
        format4 = [bufferCopy format];
        [format4 sampleRate];
        v21 = v20;
        format5 = [v16 format];
        [format5 sampleRate];
        v24 = v21 / v23;
      }

      v27 = vcvtpd_s64_f64([timeCopy sampleTime] / v24);
      v28 = MEMORY[0x277CB8428];
      format6 = [v16 format];
      [format6 sampleRate];
      v26 = [v28 timeWithSampleTime:v27 atRate:?];
    }

    else
    {
      v26 = 0;
    }

    timeCopy = v26;
    bufferCopy = v16;
  }

  format7 = [(SHMutableSignature *)self format];

  if (!format7)
  {
    [(SHSignature *)self setTime:timeCopy];
    time = [(SHSignature *)self time];
    v32 = [(SHSignature *)self _startDateBasedUponAudioTime:time];
    [(SHSignature *)self setAudioStartDate:v32];

    format8 = [bufferCopy format];
    [(SHMutableSignature *)self configureWithFormat:format8];
  }

  format9 = [bufferCopy format];
  format10 = [(SHMutableSignature *)self format];
  v36 = [format9 isEqual:format10];

  if ((v36 & 1) == 0)
  {
    format11 = [bufferCopy format];
    formatDescription = [format11 formatDescription];

    format12 = [(SHMutableSignature *)self format];
    formatDescription2 = [format12 formatDescription];

    v84 = sh_log_object();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      format13 = [bufferCopy format];
      *buf = 138412546;
      formatDescription3 = [format13 formatDescription];
      v101 = 2112;
      v102 = formatDescription2;
      _os_log_impl(&dword_230F52000, v84, OS_LOG_TYPE_ERROR, "Audio format mismatch %@ != %@", buf, 0x16u);
    }

    v86 = MEMORY[0x277CBEAD8];
    v87 = *MEMORY[0x277CBE660];
    v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"Supplied audio format %@ does not match existing format %@", formatDescription, formatDescription2];
    v89 = [v86 exceptionWithName:v87 reason:v88 userInfo:0];
    v90 = v89;

    objc_exception_throw(v89);
  }

  [SHAudioUtilities durationOfBuffer:bufferCopy];
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
    [SHError annotateClientError:error code:201 underlyingError:0 keyOverrides:v77];

LABEL_40:
LABEL_41:

    goto LABEL_42;
  }

  if (v44 <= v46)
  {
LABEL_18:
    if (!timeCopy)
    {
      goto LABEL_22;
    }

    if ([timeCopy isSampleTimeValid])
    {
      if (!-[SHMutableSignature currentPosition](self, "currentPosition") || (v47 = -[SHMutableSignature currentPosition](self, "currentPosition"), v47 == [timeCopy sampleTime]))
      {
LABEL_22:
        extractorController = [(SHMutableSignature *)self extractorController];
        v49 = [extractorController flowBuffer:bufferCopy error:error];

        if (v49)
        {
          if ([(SHMutableSignature *)self clipStyle]== 1 && v44 > v46)
          {
            [(SHMutableSignature *)self maximumSeconds];
            v51 = v50;
            format14 = [(SHMutableSignature *)self format];
            [format14 sampleRate];
            v54 = (v51 * v53);

            LODWORD(format14) = [(SHMutableSignature *)self currentFrameCount];
            v55 = format14 - v54 + [bufferCopy frameLength];
            v56 = objc_alloc(MEMORY[0x277CB8428]);
            time2 = [(SHSignature *)self time];
            sampleTime = [time2 sampleTime];
            format15 = [(SHMutableSignature *)self format];
            [format15 sampleRate];
            v60 = [v56 initWithSampleTime:sampleTime + v55 atRate:?];
            [(SHSignature *)self setTime:v60];

            [(SHMutableSignature *)self setCurrentFrameCount:[(SHMutableSignature *)self currentFrameCount]- v55];
          }

          -[SHMutableSignature setCurrentFrameCount:](self, "setCurrentFrameCount:", -[SHMutableSignature currentFrameCount](self, "currentFrameCount") + [bufferCopy frameLength]);
          v61 = 1;
          goto LABEL_43;
        }

LABEL_42:
        v61 = 0;
        goto LABEL_43;
      }

      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"The current frame position %lld does not equal the sample time %lld", -[SHMutableSignature currentPosition](self, "currentPosition"), objc_msgSend(timeCopy, "sampleTime")];
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
    [SHError annotateClientError:error code:101 underlyingError:0 keyOverrides:v76];
    goto LABEL_40;
  }

  v62 = [(SHMutableSignature *)self clipExcessAudio:bufferCopy];

  extractorController2 = [(SHMutableSignature *)self extractorController];
  v64 = [extractorController2 flowBuffer:v62 error:error];

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
    [SHError annotateClientError:error code:201 underlyingError:0 keyOverrides:v71];

    -[SHMutableSignature setCurrentFrameCount:](self, "setCurrentFrameCount:", -[SHMutableSignature currentFrameCount](self, "currentFrameCount") + [v62 frameLength]);
  }

  v61 = 0;
  bufferCopy = v62;
LABEL_43:

  v78 = *MEMORY[0x277D85DE8];
  return v61;
}

- (int64_t)currentPosition
{
  time = [(SHSignature *)self time];
  sampleTime = [time sampleTime];
  v5 = sampleTime + [(SHMutableSignature *)self currentFrameCount];

  return v5;
}

- (id)generate:(id *)generate
{
  extractorController = [(SHMutableSignature *)self extractorController];
  v5 = [extractorController signatureWithError:generate];

  return v5;
}

- (id)dataRepresentation
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  dataRepresentation = [(SHMutableSignature *)self generate:&v16];
  v4 = v16;
  v5 = v4;
  if (dataRepresentation)
  {
    [SHSigUtilities signatureDurationForData:dataRepresentation error:0];
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
      v11 = [SigCrop cropSignature:dataRepresentation atPosition:0 withDuration:0.0 error:v10];

      dataRepresentation = v11;
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
    dataRepresentation = [(SHSignature *)&v15 dataRepresentation];
  }

  v13 = *MEMORY[0x277D85DE8];

  return dataRepresentation;
}

- (double)duration
{
  if ([(SHMutableSignature *)self currentFrameCount])
  {
    currentFrameCount = [(SHMutableSignature *)self currentFrameCount];
    format = [(SHMutableSignature *)self format];
    [(SHMutableSignature *)self secondsFromFrameCount:currentFrameCount forFormat:format];
    v6 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SHMutableSignature;
    dataRepresentation = [(SHSignature *)&v10 dataRepresentation];
    [SHSigUtilities signatureDurationForData:dataRepresentation error:0];
    v6 = v8;
  }

  return v6;
}

- (double)secondsFromFrameCount:(unsigned int)count forFormat:(id)format
{
  if (!count)
  {
    return 0.0;
  }

  countCopy = count;
  [format sampleRate];
  return countCopy / v5;
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