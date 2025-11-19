@interface SHStreamingSessionDriver
- (BOOL)canPerformMatch;
- (SHSessionDriverDelegate)sessionDriverDelegate;
- (SHSignatureMetrics)metrics;
- (SHStreamingSessionDriver)initWithMinimumSignatureDuration:(double)a3 maximumSignatureDuration:(double)a4 bufferDuration:(double)a5 musicalFeaturesConfiguration:(id)a6;
- (SHStreamingSessionDriver)initWithSignatureBuffer:(id)a3;
- (id)signatureForMatching;
- (void)flow:(id)a3 time:(id)a4;
- (void)matcher:(id)a3 didProduceResponse:(id)a4;
- (void)receivedSignature:(id)a3 retry:(double)a4 offset:(double)a5 intermission:(double)a6 dropCurrentSignature:(BOOL)a7;
@end

@implementation SHStreamingSessionDriver

- (SHStreamingSessionDriver)initWithMinimumSignatureDuration:(double)a3 maximumSignatureDuration:(double)a4 bufferDuration:(double)a5 musicalFeaturesConfiguration:(id)a6
{
  v10 = a6;
  v11 = [[SHSignatureBuffer alloc] initWithMinimumSignatureDuration:v10 maximumSignatureDuration:a3 bufferDuration:a4 musicalFeaturesConfiguration:a5];

  v12 = [(SHStreamingSessionDriver *)self initWithSignatureBuffer:v11];
  return v12;
}

- (SHStreamingSessionDriver)initWithSignatureBuffer:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SHStreamingSessionDriver;
  v6 = [(SHStreamingSessionDriver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signatureBuffer, a3);
    [v5 minimumSignatureDuration];
    v7->_currentRequiredDuration = v8;
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)flow:(id)a3 time:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = [(SHStreamingSessionDriver *)self sessionDriverDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SHStreamingSessionDriver *)self sessionDriverDelegate];
    v10 = [v9 shouldGenerateSpectralOutput];
    v11 = [(SHStreamingSessionDriver *)self signatureBuffer];
    [v11 setShouldGenerateSpectralOutput:v10];
  }

  os_unfair_lock_lock(&self->_lock);
  v12 = [(SHStreamingSessionDriver *)self intermissionDeadline];
  if (v12)
  {
    v13 = v12;
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [(SHStreamingSessionDriver *)self intermissionDeadline];
    v16 = [v14 laterDate:v15];
    v17 = [(SHStreamingSessionDriver *)self intermissionDeadline];

    if (v16 == v17)
    {
      goto LABEL_8;
    }
  }

  v18 = [(SHStreamingSessionDriver *)self signatureBuffer];
  [v18 flow:v22 time:v6];

  if (![(SHStreamingSessionDriver *)self canPerformMatch])
  {
LABEL_8:
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v19 = [(SHStreamingSessionDriver *)self signatureForMatching];
    v20 = [v19 _ID];
    [(SHStreamingSessionDriver *)self setMatchingSignatureID:v20];

    os_unfair_lock_unlock(&self->_lock);
    if (v19)
    {
      v21 = [(SHStreamingSessionDriver *)self sessionDriverDelegate];
      [v21 matchSignature:v19];
    }
  }
}

- (void)receivedSignature:(id)a3 retry:(double)a4 offset:(double)a5 intermission:(double)a6 dropCurrentSignature:(BOOL)a7
{
  v7 = a7;
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = sh_log_object();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v28 = 134218496;
    v29 = a4;
    v30 = 2048;
    v31 = a5;
    v32 = 2048;
    v33 = a6;
    _os_log_impl(&dword_230F52000, v13, OS_LOG_TYPE_DEBUG, "Asked to retry with %f at offset %f and intermission %f", &v28, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  v14 = [(SHStreamingSessionDriver *)self matchingSignatureID];
  v15 = [v12 _ID];
  v16 = [v14 isEqual:v15];

  if ((v16 & 1) == 0)
  {
    v21 = sh_log_object();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [v12 _ID];
      v23 = [(SHStreamingSessionDriver *)self matchingSignatureID];
      v28 = 138412546;
      v29 = *&v22;
      v30 = 2112;
      v31 = *&v23;
      _os_log_impl(&dword_230F52000, v21, OS_LOG_TYPE_ERROR, "StreamingSessionDriver received a response for signature %@ it was not expecting, it was expecting %@", &v28, 0x16u);
    }

    goto LABEL_10;
  }

  if (v7)
  {
    v17 = [(SHStreamingSessionDriver *)self signatureBuffer];
    v18 = [(SHStreamingSessionDriver *)self matchingSignatureID];
    [v17 discardSignatureWithID:v18];
  }

  [(SHStreamingSessionDriver *)self setMatchingSignatureID:0];
  v19 = [(SHStreamingSessionDriver *)self signatureBuffer];
  [v19 setSignatureOffset:a5];

  [(SHStreamingSessionDriver *)self setCurrentRequiredDuration:a4];
  if (a6 > 0.0)
  {
    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a6];
    [(SHStreamingSessionDriver *)self setIntermissionDeadline:v20];

    v21 = [(SHStreamingSessionDriver *)self signatureBuffer];
    [v21 reset];
LABEL_10:

LABEL_11:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_12;
  }

  if (![(SHStreamingSessionDriver *)self canPerformMatch])
  {
    goto LABEL_11;
  }

  [(SHStreamingSessionDriver *)self setIntermissionDeadline:0];
  v25 = [(SHStreamingSessionDriver *)self signatureForMatching];
  v26 = [v25 _ID];
  [(SHStreamingSessionDriver *)self setMatchingSignatureID:v26];

  os_unfair_lock_unlock(&self->_lock);
  if (v25)
  {
    v27 = [(SHStreamingSessionDriver *)self sessionDriverDelegate];
    [v27 matchSignature:v25];
  }

LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)canPerformMatch
{
  v3 = [(SHStreamingSessionDriver *)self matchingSignatureID];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SHStreamingSessionDriver *)self signatureBuffer];
    [v5 currentSignatureDuration];
    v7 = v6;
    [(SHStreamingSessionDriver *)self currentRequiredDuration];
    v4 = v7 >= v8;
  }

  return v4;
}

- (void)matcher:(id)a3 didProduceResponse:(id)a4
{
  v32 = a4;
  v5 = [v32 result];
  switch(v5)
  {
    case 1:
      [v32 retrySeconds];
      if (v13 == 0.0)
      {
        v8 = 1;
        goto LABEL_18;
      }

      [v32 retrySeconds];
      v12 = v14;
      break;
    case 2:
      [v32 retrySeconds];
      v10 = v9;
      [v32 recordingSignatureOffset];
      v12 = v10 - v11;
      break;
    case 3:
      v6 = [v32 error];
      if (([v6 sh_isSignatureInvalid] & 1) == 0)
      {
        v7 = [v32 error];
        if ([v7 sh_isSignatureDurationInvalid])
        {
          v8 = 1;
        }

        else
        {
          v19 = [v32 error];
          v8 = [v19 sh_isMatchAttemptFailed];
        }

        goto LABEL_16;
      }

      goto LABEL_11;
    default:
      v8 = 0;
      goto LABEL_18;
  }

  v6 = [(SHStreamingSessionDriver *)self signatureBuffer];
  [v6 maximumSignatureDuration];
  if (v12 <= v15)
  {
    [v32 retrySeconds];
    v17 = v16;
    v7 = [(SHStreamingSessionDriver *)self signatureBuffer];
    [v7 minimumSignatureDuration];
    v8 = v17 < v18;
LABEL_16:

    goto LABEL_17;
  }

LABEL_11:
  v8 = 1;
LABEL_17:

LABEL_18:
  [v32 recordingSignatureOffset];
  if (v20 >= 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = [(SHStreamingSessionDriver *)self signatureBuffer];
  [v22 minimumSignatureDuration];
  v24 = v23;

  [v32 retrySeconds];
  if (v24 >= v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v27 = [(SHStreamingSessionDriver *)self signatureBuffer];
  [v27 maximumSignatureDuration];
  v29 = v28;

  if (v26 < v29)
  {
    v29 = v26;
  }

  v30 = [v32 signature];
  [v32 recordingIntermission];
  [(SHStreamingSessionDriver *)self receivedSignature:v30 retry:v8 offset:v29 intermission:v21 dropCurrentSignature:v31];
}

- (id)signatureForMatching
{
  v3 = [(SHStreamingSessionDriver *)self signatureBuffer];
  v4 = [v3 generateCurrentSignature];

  v5 = [SHSignatureMetrics alloc];
  v6 = [(SHStreamingSessionDriver *)self metrics];
  v7 = [v6 sessionStartDate];
  v8 = [(SHStreamingSessionDriver *)self signatureBuffer];
  [v8 signatureOffset];
  v9 = [(SHSignatureMetrics *)v5 initWithSessionStartDate:v7 signatureRecordingOffset:?];
  [v4 setMetrics:v9];

  return v4;
}

- (SHSignatureMetrics)metrics
{
  metrics = self->_metrics;
  if (!metrics)
  {
    v4 = [SHSignatureMetrics alloc];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [(SHSignatureMetrics *)v4 initWithSessionStartDate:v5 signatureRecordingOffset:0.0];
    v7 = self->_metrics;
    self->_metrics = v6;

    metrics = self->_metrics;
  }

  return metrics;
}

- (SHSessionDriverDelegate)sessionDriverDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionDriverDelegate);

  return WeakRetained;
}

@end