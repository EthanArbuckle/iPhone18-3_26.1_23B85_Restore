@interface SHSignatureBuffer
- (SHSignatureBuffer)initWithMinimumSignatureDuration:(double)a3 maximumSignatureDuration:(double)a4 bufferDuration:(double)a5 musicalFeaturesConfiguration:(id)a6;
- (SHSignatureBuffer)initWithMinimumSignatureDuration:(double)a3 maximumSignatureDuration:(double)a4 bufferDuration:(double)a5 signatureGenerator:(id)a6;
- (double)currentSignatureDuration;
- (double)duration;
- (id)generateCurrentSignature;
- (void)discardSignatureWithID:(id)a3;
- (void)flow:(id)a3 time:(id)a4;
- (void)reset;
- (void)setShouldGenerateSpectralOutput:(BOOL)a3;
@end

@implementation SHSignatureBuffer

- (SHSignatureBuffer)initWithMinimumSignatureDuration:(double)a3 maximumSignatureDuration:(double)a4 bufferDuration:(double)a5 musicalFeaturesConfiguration:(id)a6
{
  v10 = a6;
  v18.receiver = self;
  v18.super_class = SHSignatureBuffer;
  v11 = [(SHSignatureBuffer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_minimumSignatureDuration = a3;
    v11->_maximumSignatureDuration = a4;
    v11->_bufferMaxSize = a5;
    v11->_clipStyle = 1;
    [v10 minimumDuration];
    v12->_minimumMusicalFeaturesDuration = v13;
    v14 = [[SHMutableSignature alloc] initWithMaximumSeconds:v12->_clipStyle clipStyle:v10 musicalFeaturesConfiguration:a5];
    v15 = [[SHSignatureGenerator alloc] initWithMutableSignature:v14];
    signatureGenerator = v12->_signatureGenerator;
    v12->_signatureGenerator = v15;
  }

  return v12;
}

- (SHSignatureBuffer)initWithMinimumSignatureDuration:(double)a3 maximumSignatureDuration:(double)a4 bufferDuration:(double)a5 signatureGenerator:(id)a6
{
  v11 = a6;
  v12 = [v11 musicalFeaturesConfiguration];
  v13 = [(SHSignatureBuffer *)self initWithMinimumSignatureDuration:v12 maximumSignatureDuration:a3 bufferDuration:a4 musicalFeaturesConfiguration:a5];

  if (v13)
  {
    objc_storeStrong(&v13->_signatureGenerator, a6);
    [(SHSignatureGenerator *)v13->_signatureGenerator updateRingBufferDuration:0 error:a5];
    v13->_clipStyle = [v11 clipStyle];
  }

  return v13;
}

- (void)discardSignatureWithID:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SHSignatureBuffer *)self currentSignature];
  v6 = [v5 _ID];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(SHSignatureBuffer *)self signatureGenerator];
    [v8 duration];
    v10 = v9;
    v11 = [(SHSignatureBuffer *)self currentSignature];
    [v11 duration];
    v13 = v12;
    [(SHSignatureBuffer *)self signatureOffset];
    v15 = v10 - (v13 + v14);

    v16 = [(SHSignatureBuffer *)self signatureGenerator];
    v27 = 0;
    v17 = [v16 updateRingBufferDuration:&v27 error:v15];
    v18 = v27;

    if (v17)
    {
      v19 = [(SHSignatureBuffer *)self signatureGenerator];
      [(SHSignatureBuffer *)self bufferMaxSize];
      v26 = v18;
      v20 = [v19 updateRingBufferDuration:&v26 error:?];
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
  v3 = [(SHSignatureBuffer *)self signatureGenerator];
  [v3 reset];

  [(SHSignatureBuffer *)self setCurrentSignature:0];

  [(SHSignatureBuffer *)self setSignatureOffset:0.0];
}

- (double)duration
{
  v2 = [(SHSignatureBuffer *)self signatureGenerator];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (double)currentSignatureDuration
{
  v3 = [(SHSignatureBuffer *)self signatureGenerator];
  [v3 duration];
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

- (void)flow:(id)a3 time:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 format];
  [(SHSignatureBuffer *)self setFormat:v8];

  v9 = [(SHSignatureBuffer *)self signatureGenerator];
  v17 = 0;
  v10 = [v9 appendBuffer:v6 atTime:v7 error:&v17];
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
    v13 = [(SHSignatureBuffer *)self signatureGenerator];
    v16 = v11;
    [v13 appendBuffer:v6 atTime:v7 error:&v16];
    v14 = v16;

    v11 = v14;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)generateCurrentSignature
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = [(SHSignatureBuffer *)self signatureGenerator];
  v4 = [v3 signature];

  v5 = [(SHSignatureBuffer *)self currentSignature];
  if (v5)
  {
    v6 = [(SHSignatureBuffer *)self currentSignature];
    v7 = [v6 _ID];
  }

  else
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
  }

  [(SHSignatureBuffer *)self minimumMusicalFeaturesDuration];
  if (v8 > 0.0 && ([v4 musicalFeaturesDuration], v10 = v9, -[SHSignatureBuffer minimumMusicalFeaturesDuration](self, "minimumMusicalFeaturesDuration"), v10 >= v11))
  {
    v13 = sh_log_object();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      [v4 musicalFeaturesDuration];
      v15 = v14;
      [(SHSignatureBuffer *)self minimumMusicalFeaturesDuration];
      *buf = 134218240;
      v63 = v15;
      v64 = 2048;
      v65 = v16;
      _os_log_impl(&dword_230F52000, v13, OS_LOG_TYPE_DEFAULT, "Musical features component (%.2fs) does meet duration threshold (%.2fs)", buf, 0x16u);
    }

    v12 = [v4 musicalFeaturesData];
  }

  else
  {
    v12 = 0;
  }

  v17 = [SHSignature alloc];
  v18 = [v4 spectralPeaksData];
  v19 = [v4 time];
  v61 = 0;
  v20 = [(SHSignature *)v17 initWithID:v7 spectralPeaksData:v18 musicalFeaturesData:v12 startTime:v19 error:&v61];
  v21 = v61;
  [(SHSignatureBuffer *)self setCurrentSignature:v20];

  v22 = [(SHSignatureBuffer *)self currentSignature];

  if (!v22)
  {
    [(SHSignatureBuffer *)self reset];
    v27 = objc_opt_new();
LABEL_19:
    v54 = v27;
    goto LABEL_20;
  }

  v23 = [(SHSignatureBuffer *)self currentSignature];
  [v23 spectralPeaksDuration];
  v25 = v24;
  [(SHSignatureBuffer *)self maximumSignatureDuration];
  if (v25 <= v26)
  {
    [(SHSignatureBuffer *)self signatureOffset];
    v29 = v28;

    if (v29 <= 0.0)
    {
LABEL_18:
      v27 = [(SHSignatureBuffer *)self currentSignature];
      goto LABEL_19;
    }
  }

  else
  {
  }

  v30 = [(SHSignatureBuffer *)self currentSignature];
  v31 = [v30 spectralPeaksData];
  [(SHSignatureBuffer *)self signatureOffset];
  v33 = v32;
  [(SHSignatureBuffer *)self maximumSignatureDuration];
  v60 = v21;
  v35 = [SigCrop cropSignature:v31 atPosition:&v60 withDuration:v33 error:v34];
  v36 = v60;

  if (v35)
  {
    v57 = v12;
    [(SHSignatureBuffer *)self signatureOffset];
    v38 = v37;
    v39 = [(SHSignatureBuffer *)self format];
    [v39 sampleRate];
    v41 = v7;
    v42 = (v38 * v40);

    v43 = objc_alloc(MEMORY[0x277CB8428]);
    v44 = [v4 time];
    [v44 sampleRate];
    v46 = (v45 + v42);
    v47 = [(SHSignatureBuffer *)self format];
    [v47 sampleRate];
    v48 = [v43 initWithSampleTime:v46 atRate:?];

    v49 = [SHSignature alloc];
    v50 = [(SHSignatureBuffer *)self currentSignature];
    v51 = [v50 musicalFeaturesData];
    v58 = v41;
    v59 = v36;
    v52 = [(SHSignature *)v49 initWithID:v41 spectralPeaksData:v35 musicalFeaturesData:v51 startTime:v48 error:&v59];
    v21 = v59;

    [(SHSignatureBuffer *)self setCurrentSignature:v52];
    v53 = [(SHSignatureBuffer *)self currentSignature];

    if (v53)
    {

      v12 = v57;
      v7 = v58;
      goto LABEL_18;
    }

    [(SHSignatureBuffer *)self reset];
    v54 = objc_opt_new();

    v12 = v57;
    v7 = v58;
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

- (void)setShouldGenerateSpectralOutput:(BOOL)a3
{
  v3 = a3;
  self->_shouldGenerateSpectralOutput = a3;
  v4 = [(SHSignatureBuffer *)self signatureGenerator];
  v5 = v4;
  if (v3)
  {
    [v4 enableSpectralOutput];
  }

  else
  {
    [v4 disableSpectralOutput];
  }
}

@end