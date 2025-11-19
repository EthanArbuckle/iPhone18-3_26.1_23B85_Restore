@interface SHAudioRecordingBufferValidator
- (BOOL)isRecorderProducingValidAudio:(id)a3;
- (BOOL)isValidBuffer:(id)a3 atTime:(id)a4 forRecorder:(id)a5;
- (SHAudioRecordingBufferValidator)init;
- (SHAudioRecordingBufferValidatorDelegate)delegate;
- (double)accumulatedSilenceDurationForRecorder:(id)a3 latestBuffer:(id)a4 latestBufferTime:(id)a5;
- (void)addMutedRecorder:(id)a3;
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

- (void)addMutedRecorder:(id)a3
{
  v4 = a3;
  v5 = [(SHAudioRecordingBufferValidator *)self recordersState];
  v6 = [v4 identifier];
  [v5 setObject:&off_100081200 forKey:v6];

  v8 = [(SHAudioRecordingBufferValidator *)self silentRecordersFirstSilentBufferTime];
  v7 = [v4 identifier];

  [v8 removeObjectForKey:v7];
}

- (BOOL)isRecorderProducingValidAudio:(id)a3
{
  v4 = a3;
  v5 = [(SHAudioRecordingBufferValidator *)self recordersState];
  v6 = [v4 identifier];

  v7 = [v5 objectForKey:v6];
  v8 = [v7 integerValue];

  return v8 == 2;
}

- (BOOL)isValidBuffer:(id)a3 atTime:(id)a4 forRecorder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v8 floatChannelData])
  {
    goto LABEL_3;
  }

  v11 = *([v8 audioBufferList] + 3);
  v12 = [v8 format];
  v13 = *([v12 streamDescription] + 6);
  v14 = *([v8 audioBufferList] + 2);
  cblas_sasum_NEWLAPACK();
  v16 = v15;

  if (v16 <= 1.1755e-38)
  {
    v22 = [(SHAudioRecordingBufferValidator *)self silentRecordersFirstSilentBufferTime];
    v23 = [v10 identifier];
    v24 = [v22 objectForKey:v23];

    if (!v24)
    {
      v25 = [(SHAudioRecordingBufferValidator *)self recordersState];
      v26 = [v10 identifier];
      [v25 setObject:&off_100081230 forKey:v26];

      v27 = [(SHAudioRecordingBufferValidator *)self silentRecordersFirstSilentBufferTime];
      v28 = [v10 identifier];
      [v27 setObject:v9 forKey:v28];
    }

    [(SHAudioRecordingBufferValidator *)self accumulatedSilenceDurationForRecorder:v10 latestBuffer:v8 latestBufferTime:v9];
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

      v32 = [(SHAudioRecordingBufferValidator *)self delegate];
      [v32 recorderFailedToProduceValidAudio:v10];
    }

    v21 = 0;
  }

  else
  {
LABEL_3:
    v17 = [(SHAudioRecordingBufferValidator *)self recordersState];
    v18 = [v10 identifier];
    [v17 setObject:&off_100081218 forKey:v18];

    v19 = [(SHAudioRecordingBufferValidator *)self silentRecordersFirstSilentBufferTime];
    v20 = [v10 identifier];
    [v19 removeObjectForKey:v20];

    v21 = 1;
  }

  return v21;
}

- (double)accumulatedSilenceDurationForRecorder:(id)a3 latestBuffer:(id)a4 latestBufferTime:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(SHAudioRecordingBufferValidator *)self silentRecordersFirstSilentBufferTime];
  v12 = [v10 identifier];

  v13 = [v11 objectForKey:v12];

  if (!v9 || !v13)
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

  [SHAudioUtilities durationOfBuffer:v8];
  v15 = v14;
  if (![v9 isSampleTimeValid] || !objc_msgSend(v13, "isSampleTimeValid") || (objc_msgSend(v9, "sampleRate"), v17 = v16, objc_msgSend(v13, "sampleRate"), v17 != v18))
  {
    if ([v9 isHostTimeValid] && objc_msgSend(v13, "isHostTimeValid"))
    {
      +[AVAudioTime secondsForHostTime:](AVAudioTime, "secondsForHostTime:", [v9 hostTime]);
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

  v19 = [v9 sampleTime];
  v20 = (v19 - [v13 sampleTime]);
  [v9 sampleRate];
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