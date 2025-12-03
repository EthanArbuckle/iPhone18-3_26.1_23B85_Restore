@interface SHStreamingSessionDriver
- (BOOL)canPerformMatch;
- (SHSessionDriverDelegate)sessionDriverDelegate;
- (SHSignatureMetrics)metrics;
- (SHStreamingSessionDriver)initWithMinimumSignatureDuration:(double)duration maximumSignatureDuration:(double)signatureDuration bufferDuration:(double)bufferDuration musicalFeaturesConfiguration:(id)configuration;
- (SHStreamingSessionDriver)initWithSignatureBuffer:(id)buffer;
- (id)signatureForMatching;
- (void)flow:(id)flow time:(id)time;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
- (void)receivedSignature:(id)signature retry:(double)retry offset:(double)offset intermission:(double)intermission dropCurrentSignature:(BOOL)currentSignature;
@end

@implementation SHStreamingSessionDriver

- (SHStreamingSessionDriver)initWithMinimumSignatureDuration:(double)duration maximumSignatureDuration:(double)signatureDuration bufferDuration:(double)bufferDuration musicalFeaturesConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11 = [[SHSignatureBuffer alloc] initWithMinimumSignatureDuration:configurationCopy maximumSignatureDuration:duration bufferDuration:signatureDuration musicalFeaturesConfiguration:bufferDuration];

  v12 = [(SHStreamingSessionDriver *)self initWithSignatureBuffer:v11];
  return v12;
}

- (SHStreamingSessionDriver)initWithSignatureBuffer:(id)buffer
{
  bufferCopy = buffer;
  v10.receiver = self;
  v10.super_class = SHStreamingSessionDriver;
  v6 = [(SHStreamingSessionDriver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signatureBuffer, buffer);
    [bufferCopy minimumSignatureDuration];
    v7->_currentRequiredDuration = v8;
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)flow:(id)flow time:(id)time
{
  flowCopy = flow;
  timeCopy = time;
  sessionDriverDelegate = [(SHStreamingSessionDriver *)self sessionDriverDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    sessionDriverDelegate2 = [(SHStreamingSessionDriver *)self sessionDriverDelegate];
    shouldGenerateSpectralOutput = [sessionDriverDelegate2 shouldGenerateSpectralOutput];
    signatureBuffer = [(SHStreamingSessionDriver *)self signatureBuffer];
    [signatureBuffer setShouldGenerateSpectralOutput:shouldGenerateSpectralOutput];
  }

  os_unfair_lock_lock(&self->_lock);
  intermissionDeadline = [(SHStreamingSessionDriver *)self intermissionDeadline];
  if (intermissionDeadline)
  {
    v13 = intermissionDeadline;
    date = [MEMORY[0x277CBEAA8] date];
    intermissionDeadline2 = [(SHStreamingSessionDriver *)self intermissionDeadline];
    v16 = [date laterDate:intermissionDeadline2];
    intermissionDeadline3 = [(SHStreamingSessionDriver *)self intermissionDeadline];

    if (v16 == intermissionDeadline3)
    {
      goto LABEL_8;
    }
  }

  signatureBuffer2 = [(SHStreamingSessionDriver *)self signatureBuffer];
  [signatureBuffer2 flow:flowCopy time:timeCopy];

  if (![(SHStreamingSessionDriver *)self canPerformMatch])
  {
LABEL_8:
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    signatureForMatching = [(SHStreamingSessionDriver *)self signatureForMatching];
    v20 = [signatureForMatching _ID];
    [(SHStreamingSessionDriver *)self setMatchingSignatureID:v20];

    os_unfair_lock_unlock(&self->_lock);
    if (signatureForMatching)
    {
      sessionDriverDelegate3 = [(SHStreamingSessionDriver *)self sessionDriverDelegate];
      [sessionDriverDelegate3 matchSignature:signatureForMatching];
    }
  }
}

- (void)receivedSignature:(id)signature retry:(double)retry offset:(double)offset intermission:(double)intermission dropCurrentSignature:(BOOL)currentSignature
{
  currentSignatureCopy = currentSignature;
  v34 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  v13 = sh_log_object();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v28 = 134218496;
    retryCopy = retry;
    v30 = 2048;
    offsetCopy = offset;
    v32 = 2048;
    intermissionCopy = intermission;
    _os_log_impl(&dword_230F52000, v13, OS_LOG_TYPE_DEBUG, "Asked to retry with %f at offset %f and intermission %f", &v28, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  matchingSignatureID = [(SHStreamingSessionDriver *)self matchingSignatureID];
  v15 = [signatureCopy _ID];
  v16 = [matchingSignatureID isEqual:v15];

  if ((v16 & 1) == 0)
  {
    signatureBuffer3 = sh_log_object();
    if (os_log_type_enabled(signatureBuffer3, OS_LOG_TYPE_ERROR))
    {
      v22 = [signatureCopy _ID];
      matchingSignatureID2 = [(SHStreamingSessionDriver *)self matchingSignatureID];
      v28 = 138412546;
      retryCopy = *&v22;
      v30 = 2112;
      offsetCopy = *&matchingSignatureID2;
      _os_log_impl(&dword_230F52000, signatureBuffer3, OS_LOG_TYPE_ERROR, "StreamingSessionDriver received a response for signature %@ it was not expecting, it was expecting %@", &v28, 0x16u);
    }

    goto LABEL_10;
  }

  if (currentSignatureCopy)
  {
    signatureBuffer = [(SHStreamingSessionDriver *)self signatureBuffer];
    matchingSignatureID3 = [(SHStreamingSessionDriver *)self matchingSignatureID];
    [signatureBuffer discardSignatureWithID:matchingSignatureID3];
  }

  [(SHStreamingSessionDriver *)self setMatchingSignatureID:0];
  signatureBuffer2 = [(SHStreamingSessionDriver *)self signatureBuffer];
  [signatureBuffer2 setSignatureOffset:offset];

  [(SHStreamingSessionDriver *)self setCurrentRequiredDuration:retry];
  if (intermission > 0.0)
  {
    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:intermission];
    [(SHStreamingSessionDriver *)self setIntermissionDeadline:v20];

    signatureBuffer3 = [(SHStreamingSessionDriver *)self signatureBuffer];
    [signatureBuffer3 reset];
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
  signatureForMatching = [(SHStreamingSessionDriver *)self signatureForMatching];
  v26 = [signatureForMatching _ID];
  [(SHStreamingSessionDriver *)self setMatchingSignatureID:v26];

  os_unfair_lock_unlock(&self->_lock);
  if (signatureForMatching)
  {
    sessionDriverDelegate = [(SHStreamingSessionDriver *)self sessionDriverDelegate];
    [sessionDriverDelegate matchSignature:signatureForMatching];
  }

LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)canPerformMatch
{
  matchingSignatureID = [(SHStreamingSessionDriver *)self matchingSignatureID];
  if (matchingSignatureID)
  {
    v4 = 0;
  }

  else
  {
    signatureBuffer = [(SHStreamingSessionDriver *)self signatureBuffer];
    [signatureBuffer currentSignatureDuration];
    v7 = v6;
    [(SHStreamingSessionDriver *)self currentRequiredDuration];
    v4 = v7 >= v8;
  }

  return v4;
}

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  responseCopy = response;
  result = [responseCopy result];
  switch(result)
  {
    case 1:
      [responseCopy retrySeconds];
      if (v13 == 0.0)
      {
        sh_isMatchAttemptFailed = 1;
        goto LABEL_18;
      }

      [responseCopy retrySeconds];
      v12 = v14;
      break;
    case 2:
      [responseCopy retrySeconds];
      v10 = v9;
      [responseCopy recordingSignatureOffset];
      v12 = v10 - v11;
      break;
    case 3:
      error = [responseCopy error];
      if (([error sh_isSignatureInvalid] & 1) == 0)
      {
        error2 = [responseCopy error];
        if ([error2 sh_isSignatureDurationInvalid])
        {
          sh_isMatchAttemptFailed = 1;
        }

        else
        {
          error3 = [responseCopy error];
          sh_isMatchAttemptFailed = [error3 sh_isMatchAttemptFailed];
        }

        goto LABEL_16;
      }

      goto LABEL_11;
    default:
      sh_isMatchAttemptFailed = 0;
      goto LABEL_18;
  }

  error = [(SHStreamingSessionDriver *)self signatureBuffer];
  [error maximumSignatureDuration];
  if (v12 <= v15)
  {
    [responseCopy retrySeconds];
    v17 = v16;
    error2 = [(SHStreamingSessionDriver *)self signatureBuffer];
    [error2 minimumSignatureDuration];
    sh_isMatchAttemptFailed = v17 < v18;
LABEL_16:

    goto LABEL_17;
  }

LABEL_11:
  sh_isMatchAttemptFailed = 1;
LABEL_17:

LABEL_18:
  [responseCopy recordingSignatureOffset];
  if (v20 >= 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  signatureBuffer = [(SHStreamingSessionDriver *)self signatureBuffer];
  [signatureBuffer minimumSignatureDuration];
  v24 = v23;

  [responseCopy retrySeconds];
  if (v24 >= v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  signatureBuffer2 = [(SHStreamingSessionDriver *)self signatureBuffer];
  [signatureBuffer2 maximumSignatureDuration];
  v29 = v28;

  if (v26 < v29)
  {
    v29 = v26;
  }

  signature = [responseCopy signature];
  [responseCopy recordingIntermission];
  [(SHStreamingSessionDriver *)self receivedSignature:signature retry:sh_isMatchAttemptFailed offset:v29 intermission:v21 dropCurrentSignature:v31];
}

- (id)signatureForMatching
{
  signatureBuffer = [(SHStreamingSessionDriver *)self signatureBuffer];
  generateCurrentSignature = [signatureBuffer generateCurrentSignature];

  v5 = [SHSignatureMetrics alloc];
  metrics = [(SHStreamingSessionDriver *)self metrics];
  sessionStartDate = [metrics sessionStartDate];
  signatureBuffer2 = [(SHStreamingSessionDriver *)self signatureBuffer];
  [signatureBuffer2 signatureOffset];
  v9 = [(SHSignatureMetrics *)v5 initWithSessionStartDate:sessionStartDate signatureRecordingOffset:?];
  [generateCurrentSignature setMetrics:v9];

  return generateCurrentSignature;
}

- (SHSignatureMetrics)metrics
{
  metrics = self->_metrics;
  if (!metrics)
  {
    v4 = [SHSignatureMetrics alloc];
    date = [MEMORY[0x277CBEAA8] date];
    v6 = [(SHSignatureMetrics *)v4 initWithSessionStartDate:date signatureRecordingOffset:0.0];
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