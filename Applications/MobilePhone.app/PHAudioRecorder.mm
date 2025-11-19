@interface PHAudioRecorder
- (AVCaptureConnection)captureConnection;
- (AVCaptureMovieFileOutput)captureFileOutput;
- (AVCaptureSession)captureSession;
- (BOOL)startWithError:(id *)a3;
- (PHAudioRecorder)init;
- (PHAudioRecorderDelegate)audioRecorderDelegate;
- (void)_buildCaptureSessionAndOutputIfNecessary;
- (void)_stopWithError:(id)a3;
- (void)_updateRecordProgress:(id)a3;
- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6;
- (void)dealloc;
- (void)setMaxRecordedDuration:(double)a3;
- (void)setOutputFile:(id)a3;
- (void)setUpdateTimer:(id)a3;
@end

@implementation PHAudioRecorder

- (PHAudioRecorder)init
{
  v3.receiver = self;
  v3.super_class = PHAudioRecorder;
  return [(PHAudioRecorder *)&v3 init];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(NSTimer *)self->_updateTimer invalidate];
  v4.receiver = self;
  v4.super_class = PHAudioRecorder;
  [(PHAudioRecorder *)&v4 dealloc];
}

- (BOOL)startWithError:(id *)a3
{
  v5 = [(PHAudioRecorder *)self isRecording];
  if (a3 && v5)
  {
    v32 = NSLocalizedFailureReasonErrorKey;
    v33 = @"Can't start recording, as we're already recording";
    v6 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v7 = 5;
LABEL_10:
    *a3 = [NSError errorWithDomain:@"com.apple.mobilephone.PHAudioController" code:v7 userInfo:v6];

    return 0;
  }

  v8 = [(PHAudioRecorder *)self outputFile];

  if (a3 && !v8)
  {
    v30 = NSLocalizedFailureReasonErrorKey;
    v31 = @"No output file specified";
    v6 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v7 = 3;
    goto LABEL_10;
  }

  [(PHAudioRecorder *)self maxRecordedDuration];
  if (a3 && v9 <= 0.0)
  {
    v28 = NSLocalizedFailureReasonErrorKey;
    v29 = @"No max duration specified";
    v6 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v7 = 4;
    goto LABEL_10;
  }

  v12 = [(PHAudioRecorder *)self captureSession];

  if (!a3 || v12)
  {
    v14 = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeAudio];
    v15 = [v14 supportsAVCaptureSessionPreset:AVCaptureSessionPresetVoicemailGreeting] ^ 1;
    if (a3)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16 == 1)
    {
      v26 = NSLocalizedFailureReasonErrorKey;
      v27 = @"Audio capture device does not support voicemail greeting";
      v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      *a3 = [NSError errorWithDomain:@"com.apple.mobilephone.PHAudioController" code:6 userInfo:v17];
    }

    else
    {
      [(PHAudioRecorder *)self setIsRecording:1];
      v18 = [(PHAudioRecorder *)self audioRecorderDelegate];

      if (v18)
      {
        v19 = [(PHAudioRecorder *)self audioRecorderDelegate];
        v20 = [(PHAudioRecorder *)self outputFile];
        [v19 audioRecorderStartedWithFile:v20];
      }

      v21 = [(PHAudioRecorder *)self captureSession];
      [v21 startRunning];

      v22 = [NSURL alloc];
      v23 = [(PHAudioRecorder *)self outputFile];
      v17 = [v22 initFileURLWithPath:v23];

      v24 = [(PHAudioRecorder *)self captureFileOutput];
      [v24 startRecordingToOutputFileURL:v17 recordingDelegate:self];

      v25 = [NSTimer scheduledTimerWithTimeInterval:self target:"_updateRecordProgress:" selector:0 userInfo:1 repeats:0.0333333351];
      [(PHAudioRecorder *)self setUpdateTimer:v25];

      if (a3)
      {
        *a3 = 0;
      }
    }

    v10 = v16 ^ 1;
  }

  else
  {
    v13 = self->_buildCaptureSessionError;
    v10 = 0;
    *a3 = v13;
  }

  return v10;
}

- (void)setOutputFile:(id)a3
{
  v7 = a3;
  if ([(PHAudioRecorder *)self isRecording])
  {
    v6 = [NSString stringWithFormat:@"Already recording, cannot set output file"];
    NSLog(@"** TUAssertion failure: %@", v6);

    if (_TUAssertShouldCrashApplication())
    {
      if ([(PHAudioRecorder *)self isRecording])
      {
        [(PHAudioRecorder *)a2 setOutputFile:?];
      }
    }
  }

  if (![(PHAudioRecorder *)self isRecording])
  {
    objc_storeStrong(&self->_outputFile, a3);
  }
}

- (void)setMaxRecordedDuration:(double)a3
{
  if ([(PHAudioRecorder *)self isRecording])
  {
    v6 = [NSString stringWithFormat:@"Already recording, cannot set max duration"];
    NSLog(@"** TUAssertion failure: %@", v6);

    if (_TUAssertShouldCrashApplication())
    {
      if ([(PHAudioRecorder *)self isRecording])
      {
        [(PHAudioRecorder *)a2 setMaxRecordedDuration:?];
      }
    }
  }

  if (![(PHAudioRecorder *)self isRecording])
  {
    self->_maxRecordedDuration = a3;
    CMTimeMakeWithSeconds(&v9, a3, 1);
    v7 = [(PHAudioRecorder *)self captureFileOutput];
    v8 = v9;
    [v7 setMaxRecordedDuration:&v8];
  }
}

- (AVCaptureSession)captureSession
{
  [(PHAudioRecorder *)self _buildCaptureSessionAndOutputIfNecessary];
  captureSession = self->_captureSession;

  return captureSession;
}

- (AVCaptureMovieFileOutput)captureFileOutput
{
  [(PHAudioRecorder *)self _buildCaptureSessionAndOutputIfNecessary];
  captureFileOutput = self->_captureFileOutput;

  return captureFileOutput;
}

- (AVCaptureConnection)captureConnection
{
  [(PHAudioRecorder *)self _buildCaptureSessionAndOutputIfNecessary];
  captureConnection = self->_captureConnection;

  return captureConnection;
}

- (void)setUpdateTimer:(id)a3
{
  v5 = a3;
  updateTimer = self->_updateTimer;
  p_updateTimer = &self->_updateTimer;
  v6 = updateTimer;
  v10 = v5;
  if (updateTimer)
  {
    [(NSTimer *)v6 invalidate];
    v9 = *p_updateTimer;
    *p_updateTimer = 0;

    v5 = v10;
  }

  if (v5)
  {
    objc_storeStrong(p_updateTimer, a3);
  }

  _objc_release_x1();
}

- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6
{
  v7 = a6;
  v6 = v7;
  TUGuaranteeExecutionOnMainThreadAsync();
}

void __49__PHAudioRecorder__captureSessionWasInterrupted___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = NSLocalizedFailureReasonErrorKey;
  v5 = @"Capture session was interrupted";
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.mobilephone.PHAudioController" code:7 userInfo:v2];
  [v1 _stopWithError:v3];
}

void __42__PHAudioRecorder__captureSessionErrored___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = NSLocalizedFailureReasonErrorKey;
  v5 = @"Capture session errored";
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.mobilephone.PHAudioController" code:8 userInfo:v2];
  [v1 _stopWithError:v3];
}

- (void)_updateRecordProgress:(id)a3
{
  v5 = a3;
  if (!self->_captureFileOutput)
  {
    v6 = [NSString stringWithFormat:@"Update timer fired while capture file output was nil!  This shouldn't happen."];
    NSLog(@"** TUAssertion failure: %@", v6);

    if (!_TUAssertShouldCrashApplication())
    {
      goto LABEL_5;
    }

    if (!self->_captureFileOutput)
    {
      [(PHAudioRecorder *)a2 _updateRecordProgress:?];
LABEL_5:
      if (!self->_captureFileOutput)
      {
        goto LABEL_11;
      }
    }
  }

  v7 = [(PHAudioRecorder *)self audioRecorderDelegate];

  if (v7)
  {
    v8 = [(PHAudioRecorder *)self audioRecorderDelegate];
    outputFile = self->_outputFile;
    captureFileOutput = self->_captureFileOutput;
    if (captureFileOutput)
    {
      [(AVCaptureMovieFileOutput *)captureFileOutput recordedDuration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    [v8 audioRecorderContinuedWithFile:outputFile duration:CMTimeGetSeconds(&time)];
  }

LABEL_11:
}

- (void)_buildCaptureSessionAndOutputIfNecessary
{
  if (!self->_captureSession)
  {
    buildCaptureSessionError = self->_buildCaptureSessionError;
    self->_buildCaptureSessionError = 0;

    v4 = objc_alloc_init(AVCaptureSession);
    captureSession = self->_captureSession;
    self->_captureSession = v4;

    [(AVCaptureSession *)self->_captureSession setSessionPreset:AVCaptureSessionPresetVoicemailGreeting];
    v6 = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeAudio];
    v7 = [AVCaptureDeviceInput deviceInputWithDevice:v6 error:0];
    if ([(AVCaptureSession *)self->_captureSession canAddInput:v7])
    {
      [(AVCaptureSession *)self->_captureSession addInput:v7];
      v8 = objc_alloc_init(AVCaptureMovieFileOutput);
      captureFileOutput = self->_captureFileOutput;
      self->_captureFileOutput = v8;

      if ([(AVCaptureSession *)self->_captureSession canAddOutput:self->_captureFileOutput])
      {
        [(AVCaptureSession *)self->_captureSession addOutput:self->_captureFileOutput];
        v10 = [(AVCaptureMovieFileOutput *)self->_captureFileOutput connectionWithMediaType:AVMediaTypeAudio];
        captureConnection = self->_captureConnection;
        self->_captureConnection = v10;

        v12 = +[NSNotificationCenter defaultCenter];
        [v12 addObserver:self selector:"_captureSessionWasInterrupted:" name:AVCaptureSessionWasInterruptedNotification object:self->_captureSession];

        v13 = +[NSNotificationCenter defaultCenter];
        [v13 addObserver:self selector:"_captureSessionErrored:" name:AVCaptureSessionRuntimeErrorNotification object:self->_captureSession];

LABEL_8:
        return;
      }

      v22 = NSLocalizedFailureReasonErrorKey;
      v23 = @"Unable to add audio capture file output to capture session";
      v18 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v19 = [NSError errorWithDomain:@"com.apple.mobilephone.PHAudioController" code:2 userInfo:v18];
      v20 = self->_buildCaptureSessionError;
      self->_buildCaptureSessionError = v19;

      v21 = self->_captureSession;
      self->_captureSession = 0;

      v17 = self->_captureFileOutput;
      self->_captureFileOutput = 0;
    }

    else
    {
      v24 = NSLocalizedFailureReasonErrorKey;
      v25 = @"Unable to add audio device input to capture session";
      v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v15 = [NSError errorWithDomain:@"com.apple.mobilephone.PHAudioController" code:1 userInfo:v14];
      v16 = self->_buildCaptureSessionError;
      self->_buildCaptureSessionError = v15;

      v17 = self->_captureSession;
      self->_captureSession = 0;
    }

    goto LABEL_8;
  }
}

- (void)_stopWithError:(id)a3
{
  v4 = a3;
  if (![(PHAudioRecorder *)self handlingStop])
  {
    [(PHAudioRecorder *)self setHandlingStop:1];
    [(PHAudioRecorder *)self setUpdateTimer:0];
    if ([(PHAudioRecorder *)self isRecording])
    {
      v5 = [(PHAudioRecorder *)self captureFileOutput];
      v6 = [v5 isRecording];

      if (v6)
      {
        v7 = [(PHAudioRecorder *)self captureFileOutput];
        [v7 stopRecording];
      }

      v8 = [(PHAudioRecorder *)self captureSession];
      [v8 stopRunning];

      v9 = 0.0;
      if (!v4)
      {
        v10 = [(PHAudioRecorder *)self captureFileOutput];
        v11 = v10;
        if (v10)
        {
          [v10 recordedDuration];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v12 = round(CMTimeGetSeconds(&time));

        v9 = fmax(v12, 1.0);
      }

      [(PHAudioRecorder *)self setIsRecording:0];
      v13 = [(PHAudioRecorder *)self audioRecorderDelegate];

      if (v13)
      {
        v14 = [(PHAudioRecorder *)self audioRecorderDelegate];
        v15 = [(PHAudioRecorder *)self outputFile];
        [v14 audioRecorderEndedWithFile:v15 duration:v4 error:v9];
      }
    }

    [(PHAudioRecorder *)self setHandlingStop:0];
  }
}

- (PHAudioRecorderDelegate)audioRecorderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audioRecorderDelegate);

  return WeakRetained;
}

- (void)setOutputFile:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PHAudioRecorder.m" lineNumber:126 description:{@"Already recording, cannot set output file"}];
}

- (void)setMaxRecordedDuration:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PHAudioRecorder.m" lineNumber:135 description:{@"Already recording, cannot set max duration"}];
}

- (void)_updateRecordProgress:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PHAudioRecorder.m" lineNumber:194 description:@"Update timer fired while capture file output was nil!  This shouldn't happen."];
}

@end