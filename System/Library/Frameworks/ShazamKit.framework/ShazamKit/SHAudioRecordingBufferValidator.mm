@interface SHAudioRecordingBufferValidator
- (BOOL)isRecorderProducingValidAudio:(id)audio;
- (BOOL)isValidBuffer:(id)buffer atTime:(id)time forRecorder:(id)recorder;
- (SHAudioRecordingBufferValidator)init;
- (SHAudioRecordingBufferValidatorDelegate)delegate;
- (double)accumulatedSilenceDurationForRecorder:(id)recorder latestBuffer:(id)buffer latestBufferTime:(id)time;
- (void)addMutedRecorder:(id)recorder;
@end

@implementation SHAudioRecordingBufferValidator

- (SHAudioRecordingBufferValidator)init
{
  v8.receiver = self;
  v8.super_class = SHAudioRecordingBufferValidator;
  v2 = [(SHAudioRecordingBufferValidator *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    recordersState = v2->_recordersState;
    v2->_recordersState = v3;

    v5 = +[NSMutableDictionary dictionary];
    silentRecordersFirstSilentBufferTime = v2->_silentRecordersFirstSilentBufferTime;
    v2->_silentRecordersFirstSilentBufferTime = v5;
  }

  return v2;
}

- (void)addMutedRecorder:(id)recorder
{
  recorderCopy = recorder;
  recordersState = [(SHAudioRecordingBufferValidator *)self recordersState];
  identifier = [recorderCopy identifier];
  [recordersState setObject:&off_100081200 forKey:identifier];

  silentRecordersFirstSilentBufferTime = [(SHAudioRecordingBufferValidator *)self silentRecordersFirstSilentBufferTime];
  identifier2 = [recorderCopy identifier];

  [silentRecordersFirstSilentBufferTime removeObjectForKey:identifier2];
}

- (BOOL)isRecorderProducingValidAudio:(id)audio
{
  audioCopy = audio;
  recordersState = [(SHAudioRecordingBufferValidator *)self recordersState];
  identifier = [audioCopy identifier];

  v7 = [recordersState objectForKey:identifier];
  integerValue = [v7 integerValue];

  return integerValue == 2;
}

- (BOOL)isValidBuffer:(id)buffer atTime:(id)time forRecorder:(id)recorder
{
  bufferCopy = buffer;
  timeCopy = time;
  recorderCopy = recorder;
  if (![bufferCopy floatChannelData])
  {
    goto LABEL_3;
  }

  v11 = *([bufferCopy audioBufferList] + 3);
  format = [bufferCopy format];
  v13 = *([format streamDescription] + 6);
  v14 = *([bufferCopy audioBufferList] + 2);
  cblas_sasum_NEWLAPACK();
  v16 = v15;

  if (v16 <= 1.1755e-38)
  {
    silentRecordersFirstSilentBufferTime = [(SHAudioRecordingBufferValidator *)self silentRecordersFirstSilentBufferTime];
    identifier = [recorderCopy identifier];
    v24 = [silentRecordersFirstSilentBufferTime objectForKey:identifier];

    if (!v24)
    {
      recordersState = [(SHAudioRecordingBufferValidator *)self recordersState];
      identifier2 = [recorderCopy identifier];
      [recordersState setObject:&off_100081230 forKey:identifier2];

      silentRecordersFirstSilentBufferTime2 = [(SHAudioRecordingBufferValidator *)self silentRecordersFirstSilentBufferTime];
      identifier3 = [recorderCopy identifier];
      [silentRecordersFirstSilentBufferTime2 setObject:timeCopy forKey:identifier3];
    }

    [(SHAudioRecordingBufferValidator *)self accumulatedSilenceDurationForRecorder:recorderCopy latestBuffer:bufferCopy latestBufferTime:timeCopy];
    v30 = v29;
    if (v29 >= 3.0)
    {
      v31 = sh_log_object();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v34 = 134217984;
        v35 = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Recorder failed to produce valid audio & only produced silence for %f", &v34, 0xCu);
      }

      delegate = [(SHAudioRecordingBufferValidator *)self delegate];
      [delegate recorderFailedToProduceValidAudio:recorderCopy];
    }

    v21 = 0;
  }

  else
  {
LABEL_3:
    recordersState2 = [(SHAudioRecordingBufferValidator *)self recordersState];
    identifier4 = [recorderCopy identifier];
    [recordersState2 setObject:&off_100081218 forKey:identifier4];

    silentRecordersFirstSilentBufferTime3 = [(SHAudioRecordingBufferValidator *)self silentRecordersFirstSilentBufferTime];
    identifier5 = [recorderCopy identifier];
    [silentRecordersFirstSilentBufferTime3 removeObjectForKey:identifier5];

    v21 = 1;
  }

  return v21;
}

- (double)accumulatedSilenceDurationForRecorder:(id)recorder latestBuffer:(id)buffer latestBufferTime:(id)time
{
  bufferCopy = buffer;
  timeCopy = time;
  recorderCopy = recorder;
  silentRecordersFirstSilentBufferTime = [(SHAudioRecordingBufferValidator *)self silentRecordersFirstSilentBufferTime];
  identifier = [recorderCopy identifier];

  v13 = [silentRecordersFirstSilentBufferTime objectForKey:identifier];

  if (!timeCopy || !v13)
  {
    v23 = sh_log_object();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v31 = 0;
      v24 = &v31;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to read valid AVAudioTime when checking for silence", v24, 2u);
    }

LABEL_16:

    v28 = -1.0;
    goto LABEL_17;
  }

  [SHAudioUtilities durationOfBuffer:bufferCopy];
  v15 = v14;
  if (![timeCopy isSampleTimeValid] || !objc_msgSend(v13, "isSampleTimeValid") || (objc_msgSend(timeCopy, "sampleRate"), v17 = v16, objc_msgSend(v13, "sampleRate"), v17 != v18))
  {
    if ([timeCopy isHostTimeValid] && objc_msgSend(v13, "isHostTimeValid"))
    {
      +[AVAudioTime secondsForHostTime:](AVAudioTime, "secondsForHostTime:", [timeCopy hostTime]);
      v26 = v25;
      +[AVAudioTime secondsForHostTime:](AVAudioTime, "secondsForHostTime:", [v13 hostTime]);
      v22 = v26 - v27;
      goto LABEL_12;
    }

    v23 = sh_log_object();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v30 = 0;
      v24 = &v30;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  sampleTime = [timeCopy sampleTime];
  v20 = (sampleTime - [v13 sampleTime]);
  [timeCopy sampleRate];
  v22 = v20 / v21;
LABEL_12:
  v28 = v15 + v22;
LABEL_17:

  return v28;
}

- (SHAudioRecordingBufferValidatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end