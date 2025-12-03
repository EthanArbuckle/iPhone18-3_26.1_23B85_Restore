@interface SHSignatureBuffer
- (SHSignatureBuffer)initWithMinimumSignatureDuration:(double)duration maximumSignatureDuration:(double)signatureDuration bufferDuration:(double)bufferDuration musicalFeaturesConfiguration:(id)configuration;
- (SHSignatureBuffer)initWithMinimumSignatureDuration:(double)duration maximumSignatureDuration:(double)signatureDuration bufferDuration:(double)bufferDuration signatureGenerator:(id)generator;
- (double)currentSignatureDuration;
- (double)duration;
- (id)generateCurrentSignature;
- (void)discardSignatureWithID:(id)d;
- (void)flow:(id)flow time:(id)time;
- (void)reset;
- (void)setShouldGenerateSpectralOutput:(BOOL)output;
@end

@implementation SHSignatureBuffer

- (SHSignatureBuffer)initWithMinimumSignatureDuration:(double)duration maximumSignatureDuration:(double)signatureDuration bufferDuration:(double)bufferDuration musicalFeaturesConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = SHSignatureBuffer;
  v11 = [(SHSignatureBuffer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_minimumSignatureDuration = duration;
    v11->_maximumSignatureDuration = signatureDuration;
    v11->_bufferMaxSize = bufferDuration;
    v11->_clipStyle = 1;
    [configurationCopy minimumDuration];
    v12->_minimumMusicalFeaturesDuration = v13;
    v14 = [[SHMutableSignature alloc] initWithMaximumSeconds:v12->_clipStyle clipStyle:configurationCopy musicalFeaturesConfiguration:bufferDuration];
    v15 = [[SHSignatureGenerator alloc] initWithMutableSignature:v14];
    signatureGenerator = v12->_signatureGenerator;
    v12->_signatureGenerator = v15;
  }

  return v12;
}

- (SHSignatureBuffer)initWithMinimumSignatureDuration:(double)duration maximumSignatureDuration:(double)signatureDuration bufferDuration:(double)bufferDuration signatureGenerator:(id)generator
{
  generatorCopy = generator;
  musicalFeaturesConfiguration = [generatorCopy musicalFeaturesConfiguration];
  v13 = [(SHSignatureBuffer *)self initWithMinimumSignatureDuration:musicalFeaturesConfiguration maximumSignatureDuration:duration bufferDuration:signatureDuration musicalFeaturesConfiguration:bufferDuration];

  if (v13)
  {
    objc_storeStrong(&v13->_signatureGenerator, generator);
    [(SHSignatureGenerator *)v13->_signatureGenerator updateRingBufferDuration:0 error:bufferDuration];
    v13->_clipStyle = [generatorCopy clipStyle];
  }

  return v13;
}

- (void)discardSignatureWithID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  currentSignature = [(SHSignatureBuffer *)self currentSignature];
  v6 = [currentSignature _ID];
  v7 = [v6 isEqual:dCopy];

  if (v7)
  {
    signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
    [signatureGenerator duration];
    v10 = v9;
    currentSignature2 = [(SHSignatureBuffer *)self currentSignature];
    [currentSignature2 duration];
    v13 = v12;
    [(SHSignatureBuffer *)self signatureOffset];
    v15 = v10 - (v13 + v14);

    signatureGenerator2 = [(SHSignatureBuffer *)self signatureGenerator];
    v27 = 0;
    v17 = [signatureGenerator2 updateRingBufferDuration:&v27 error:v15];
    v18 = v27;

    if (v17)
    {
      signatureGenerator3 = [(SHSignatureBuffer *)self signatureGenerator];
      [(SHSignatureBuffer *)self bufferMaxSize];
      v26 = v18;
      v20 = [signatureGenerator3 updateRingBufferDuration:&v26 error:?];
      v21 = v26;

      if (v20)
      {
        [(SHSignatureBuffer *)self setCurrentSignature:0];
        [(SHSignatureBuffer *)self setSignatureOffset:0.0];
      }

      else
      {
        v23 = sh_log_object();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(SHSignatureBuffer *)self bufferMaxSize];
          *buf = 134218242;
          v29 = v24;
          v30 = 2112;
          v31 = v21;
          _os_log_impl(&dword_230F52000, v23, OS_LOG_TYPE_ERROR, "Failed to update ring buffer duration to %f, resetting %@", buf, 0x16u);
        }

        [(SHSignatureBuffer *)self reset];
      }

      v18 = v21;
    }

    else
    {
      v22 = sh_log_object();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v29 = v15;
        v30 = 2112;
        v31 = v18;
        _os_log_impl(&dword_230F52000, v22, OS_LOG_TYPE_ERROR, "Failed to update ring buffer duration to %f, resetting %@", buf, 0x16u);
      }

      [(SHSignatureBuffer *)self reset];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
  [signatureGenerator reset];

  [(SHSignatureBuffer *)self setCurrentSignature:0];

  [(SHSignatureBuffer *)self setSignatureOffset:0.0];
}

- (double)duration
{
  signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
  [signatureGenerator duration];
  v4 = v3;

  return v4;
}

- (double)currentSignatureDuration
{
  signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
  [signatureGenerator duration];
  v5 = v4;
  [(SHSignatureBuffer *)self signatureOffset];
  v7 = v5 - v6;

  [(SHSignatureBuffer *)self maximumSignatureDuration];
  if (v7 < result)
  {
    return v7;
  }

  return result;
}

- (void)flow:(id)flow time:(id)time
{
  v20 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  timeCopy = time;
  format = [flowCopy format];
  [(SHSignatureBuffer *)self setFormat:format];

  signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
  v17 = 0;
  v10 = [signatureGenerator appendBuffer:flowCopy atTime:timeCopy error:&v17];
  v11 = v17;

  if ((v10 & 1) == 0)
  {
    v12 = sh_log_object();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_230F52000, v12, OS_LOG_TYPE_ERROR, "Failed to append to signature buffer, resetting %@", buf, 0xCu);
    }

    [(SHSignatureBuffer *)self reset];
    signatureGenerator2 = [(SHSignatureBuffer *)self signatureGenerator];
    v16 = v11;
    [signatureGenerator2 appendBuffer:flowCopy atTime:timeCopy error:&v16];
    v14 = v16;

    v11 = v14;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)generateCurrentSignature
{
  v66 = *MEMORY[0x277D85DE8];
  signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
  signature = [signatureGenerator signature];

  currentSignature = [(SHSignatureBuffer *)self currentSignature];
  if (currentSignature)
  {
    currentSignature2 = [(SHSignatureBuffer *)self currentSignature];
    uUID = [currentSignature2 _ID];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  [(SHSignatureBuffer *)self minimumMusicalFeaturesDuration];
  if (v8 > 0.0 && ([signature musicalFeaturesDuration], v10 = v9, -[SHSignatureBuffer minimumMusicalFeaturesDuration](self, "minimumMusicalFeaturesDuration"), v10 >= v11))
  {
    v13 = sh_log_object();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      [signature musicalFeaturesDuration];
      v15 = v14;
      [(SHSignatureBuffer *)self minimumMusicalFeaturesDuration];
      *buf = 134218240;
      v63 = v15;
      v64 = 2048;
      v65 = v16;
      _os_log_impl(&dword_230F52000, v13, OS_LOG_TYPE_DEFAULT, "Musical features component (%.2fs) does meet duration threshold (%.2fs)", buf, 0x16u);
    }

    musicalFeaturesData = [signature musicalFeaturesData];
  }

  else
  {
    musicalFeaturesData = 0;
  }

  v17 = [SHSignature alloc];
  spectralPeaksData = [signature spectralPeaksData];
  time = [signature time];
  v61 = 0;
  v20 = [(SHSignature *)v17 initWithID:uUID spectralPeaksData:spectralPeaksData musicalFeaturesData:musicalFeaturesData startTime:time error:&v61];
  v21 = v61;
  [(SHSignatureBuffer *)self setCurrentSignature:v20];

  currentSignature3 = [(SHSignatureBuffer *)self currentSignature];

  if (!currentSignature3)
  {
    [(SHSignatureBuffer *)self reset];
    currentSignature5 = objc_opt_new();
LABEL_19:
    v54 = currentSignature5;
    goto LABEL_20;
  }

  currentSignature4 = [(SHSignatureBuffer *)self currentSignature];
  [currentSignature4 spectralPeaksDuration];
  v25 = v24;
  [(SHSignatureBuffer *)self maximumSignatureDuration];
  if (v25 <= v26)
  {
    [(SHSignatureBuffer *)self signatureOffset];
    v29 = v28;

    if (v29 <= 0.0)
    {
LABEL_18:
      currentSignature5 = [(SHSignatureBuffer *)self currentSignature];
      goto LABEL_19;
    }
  }

  else
  {
  }

  currentSignature6 = [(SHSignatureBuffer *)self currentSignature];
  spectralPeaksData2 = [currentSignature6 spectralPeaksData];
  [(SHSignatureBuffer *)self signatureOffset];
  v33 = v32;
  [(SHSignatureBuffer *)self maximumSignatureDuration];
  v60 = v21;
  v35 = [SigCrop cropSignature:spectralPeaksData2 atPosition:&v60 withDuration:v33 error:v34];
  v36 = v60;

  if (v35)
  {
    v57 = musicalFeaturesData;
    [(SHSignatureBuffer *)self signatureOffset];
    v38 = v37;
    format = [(SHSignatureBuffer *)self format];
    [format sampleRate];
    v41 = uUID;
    v42 = (v38 * v40);

    v43 = objc_alloc(MEMORY[0x277CB8428]);
    time2 = [signature time];
    [time2 sampleRate];
    v46 = (v45 + v42);
    format2 = [(SHSignatureBuffer *)self format];
    [format2 sampleRate];
    v48 = [v43 initWithSampleTime:v46 atRate:?];

    v49 = [SHSignature alloc];
    currentSignature7 = [(SHSignatureBuffer *)self currentSignature];
    musicalFeaturesData2 = [currentSignature7 musicalFeaturesData];
    v58 = v41;
    v59 = v36;
    v52 = [(SHSignature *)v49 initWithID:v41 spectralPeaksData:v35 musicalFeaturesData:musicalFeaturesData2 startTime:v48 error:&v59];
    v21 = v59;

    [(SHSignatureBuffer *)self setCurrentSignature:v52];
    currentSignature8 = [(SHSignatureBuffer *)self currentSignature];

    if (currentSignature8)
    {

      musicalFeaturesData = v57;
      uUID = v58;
      goto LABEL_18;
    }

    [(SHSignatureBuffer *)self reset];
    v54 = objc_opt_new();

    musicalFeaturesData = v57;
    uUID = v58;
  }

  else
  {
    [(SHSignatureBuffer *)self reset];
    v54 = objc_opt_new();
    v21 = v36;
  }

LABEL_20:

  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

- (void)setShouldGenerateSpectralOutput:(BOOL)output
{
  outputCopy = output;
  self->_shouldGenerateSpectralOutput = output;
  signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
  v5 = signatureGenerator;
  if (outputCopy)
  {
    [signatureGenerator enableSpectralOutput];
  }

  else
  {
    [signatureGenerator disableSpectralOutput];
  }
}

@end