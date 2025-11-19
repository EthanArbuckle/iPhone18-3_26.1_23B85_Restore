@interface PHVoicemailGreetingModel
+ (id)greetingTempFileLocation;
+ (void)greetingTempFileLocation;
- (BOOL)greetingExists;
- (BOOL)isCallScreeningEnabled;
- (BOOL)isCustomized;
- (BOOL)isDefault;
- (BOOL)shouldShowPlayButtonForDefaultGreeting;
- (BOOL)shouldShowSaveButton;
- (NSURL)defaultGreetingURL;
- (NSUUID)liveVoicMailAccountUUID;
- (PHAudioRecorder)greetingRecorder;
- (PHVoicemailGreetingModel)init;
- (PHVoicemailGreetingModel)initWithAccount:(id)a3;
- (PHVoicemailGreetingModelDelegate)delegate;
- (VMVoicemailManager)voicemailManager;
- (double)maximumGreetingDuration;
- (double)maximumGreetingDurationForAccount:(id)a3;
- (void)_mediaserverReset:(id)a3;
- (void)audioRecorderContinuedWithFile:(id)a3 duration:(double)a4;
- (void)audioRecorderEndedWithFile:(id)a3 duration:(double)a4 error:(id)a5;
- (void)audioRecorderStartedWithFile:(id)a3;
- (void)dealloc;
- (void)didSelectCustomizedGreeting;
- (void)didSelectDefaultGreeting;
- (void)fetchGreeting;
- (void)loadGreeting:(id)a3;
- (void)pauseGreeting;
- (void)playGreeting;
- (void)resetPlayerToBeginning;
- (void)saveGreeting;
- (void)setDelegate:(id)a3;
- (void)setGreetingState:(int64_t)a3;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation PHVoicemailGreetingModel

- (PHVoicemailGreetingModel)init
{
  [(PHVoicemailGreetingModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHVoicemailGreetingModel)initWithAccount:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PHVoicemailGreetingModel;
  v6 = [(PHVoicemailGreetingModel *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v7->_maximumGreetingDuration = -1.0;
    v7->_greetingState = 0;
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"_handlePlayerControllerRateOrStatusChange:" name:@"kPHVoicemailPlayerControllerStatusChangedNotification" object:0];
    [v8 addObserver:v7 selector:"_handlePlayerDidFinishPlaying:" name:@"kPHVoicemailPlayerControllerDidPlayToEndNotification" object:0];
    [v8 addObserver:v7 selector:"_mediaserverReset:" name:@"PHVoicemailPlayerControllerMediaServicesResetNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  if ([(PHAudioRecorder *)self->_greetingRecorder isRecording])
  {
    [(PHAudioRecorder *)self->_greetingRecorder stop];
  }

  v3.receiver = self;
  v3.super_class = PHVoicemailGreetingModel;
  [(PHVoicemailGreetingModel *)&v3 dealloc];
}

- (double)maximumGreetingDuration
{
  result = self->_maximumGreetingDuration;
  if (result < 0.0)
  {
    v4 = [(PHVoicemailGreetingModel *)self account];
    [(PHVoicemailGreetingModel *)self maximumGreetingDurationForAccount:v4];
    v6 = v5;

    result = fmax(v6, 0.0);
    self->_maximumGreetingDuration = result;
  }

  return result;
}

- (VMVoicemailManager)voicemailManager
{
  v2 = +[(PHApplicationServices *)MPApplicationServices];
  v3 = [v2 accountManager];

  return v3;
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  if (!a3)
  {
    v5 = +[PHVoicemailPlayerController sharedPlayerController];
    [v5 endInterruption];

    [(PHAudioRecorder *)self->_greetingRecorder setAudioRecorderDelegate:0];
    if ([(PHAudioRecorder *)self->_greetingRecorder isRecording])
    {
      greetingRecorder = self->_greetingRecorder;

      [(PHAudioRecorder *)greetingRecorder stop];
    }
  }
}

- (void)setGreetingState:(int64_t)a3
{
  if (!+[NSThread isMainThread])
  {
    v6 = [NSString stringWithFormat:@"Attempted to change to greeting state: %li from a background thread. You must set the greeting state from the main thread.", a3];
    NSLog(@"** TUAssertion failure: %@", v6);

    if (_TUAssertShouldCrashApplication())
    {
      if (!+[NSThread isMainThread])
      {
        [(PHVoicemailGreetingModel *)a2 setGreetingState:a3];
      }
    }
  }

  if (self->_greetingState != a3)
  {
    self->_greetingState = a3;
    v7 = [(PHVoicemailGreetingModel *)self delegate];
    [v7 voicemailGreetingAudioControllerDidChangeState:a3];
  }
}

- (void)startRecording
{
  v14 = [objc_opt_class() greetingTempFileLocation];
  if (!v14)
  {
    v4 = [NSString stringWithFormat:@"Unable to start recording, output file is nil"];
    NSLog(@"** TUAssertion failure: %@", v4);

    if (_TUAssertShouldCrashApplication())
    {
      v5 = +[NSAssertionHandler currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"PHVoicemailGreetingModel.m" lineNumber:95 description:{@"Unable to start recording, output file is nil"}];
    }
  }

  v6 = [(PHVoicemailGreetingModel *)self greetingRecorder];
  [v6 setOutputFile:v14];

  [(PHVoicemailGreetingModel *)self maximumGreetingDuration];
  v8 = v7;
  v9 = [(PHVoicemailGreetingModel *)self greetingRecorder];
  [v9 setMaxRecordedDuration:v8];

  v10 = [(PHVoicemailGreetingModel *)self greetingRecorder];
  v11 = [v10 startWithError:0];

  if ((v11 & 1) == 0)
  {
    v12 = [NSString stringWithFormat:@"Unable to start recording"];
    NSLog(@"** TUAssertion failure: %@", v12);

    if (_TUAssertShouldCrashApplication())
    {
      v13 = +[NSAssertionHandler currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PHVoicemailGreetingModel.m" lineNumber:99 description:@"Unable to start recording"];
    }
  }

  [(PHVoicemailGreetingModel *)self setGreetingState:4];
}

- (void)stopRecording
{
  v3 = [(PHVoicemailGreetingModel *)self greetingRecorder];
  [v3 stop];

  [(PHVoicemailGreetingModel *)self setGreetingState:2];
}

- (void)loadGreeting:(id)a3
{
  v4 = a3;
  v5 = +[PHVoicemailPlayerController sharedPlayerController];
  CMTimeMake(&v10, 1, 100);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __41__PHVoicemailGreetingModel_loadGreeting___block_invoke;
  v9[3] = &unk_1002868F8;
  v9[4] = self;
  [v5 loadAudio:v4 withObserverForInterval:&v10 usingBlock:v9];

  v6 = +[PHVoicemailPlayerController sharedPlayerController];
  v10 = kCMTimeZero;
  [v6 seekToTime:&v10];

  v7 = +[PHVoicemailPlayerController sharedPlayerController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __41__PHVoicemailGreetingModel_loadGreeting___block_invoke_2;
  v8[3] = &unk_1002868F8;
  v8[4] = self;
  [v7 currentAssetDurationWithBlock:v8];
}

void __41__PHVoicemailGreetingModel_loadGreeting___block_invoke(uint64_t a1, CMTime *a2)
{
  v5 = *a2;
  Seconds = CMTimeGetSeconds(&v5);
  v4 = [*(a1 + 32) delegate];
  [v4 voicemailGreetingPlayingProgressChanged:Seconds];
}

void __41__PHVoicemailGreetingModel_loadGreeting___block_invoke_2(uint64_t a1, __int128 *a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __41__PHVoicemailGreetingModel_loadGreeting___block_invoke_3;
  v2[3] = &unk_100286920;
  v2[4] = *(a1 + 32);
  v3 = *a2;
  v4 = *(a2 + 2);
  dispatch_async(&_dispatch_main_q, v2);
}

void __41__PHVoicemailGreetingModel_loadGreeting___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);
  [v2 voicemailGreetingDurationChanged:CMTimeGetSeconds(&v3)];
}

- (void)_mediaserverReset:(id)a3
{
  v4 = [(PHVoicemailGreetingModel *)self existingGreeting];

  if (v4)
  {
    v5 = [(PHVoicemailGreetingModel *)self existingGreeting];
    v6 = [v5 url];
    v7 = [AVAsset assetWithURL:v6];
    [(PHVoicemailGreetingModel *)self loadGreeting:v7];

    [(PHVoicemailGreetingModel *)self setGreetingState:2];
  }
}

- (void)resetPlayerToBeginning
{
  v2 = +[PHVoicemailPlayerController sharedPlayerController];
  v3 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [v2 seekToTime:&v3];
}

- (void)playGreeting
{
  v3 = +[PHVoicemailPlayerController sharedPlayerController];
  v4 = [v3 isAtEnd];

  if (v4)
  {
    v5 = +[PHVoicemailPlayerController sharedPlayerController];
    v7 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    [v5 seekToTime:&v7];
  }

  v6 = +[PHVoicemailPlayerController sharedPlayerController];
  [v6 play];

  [(PHVoicemailGreetingModel *)self setGreetingState:3];
}

- (void)pauseGreeting
{
  v3 = +[PHVoicemailPlayerController sharedPlayerController];
  [v3 pause];

  [(PHVoicemailGreetingModel *)self setGreetingState:2];
}

- (PHAudioRecorder)greetingRecorder
{
  greetingRecorder = self->_greetingRecorder;
  if (!greetingRecorder)
  {
    v4 = objc_alloc_init(PHAudioRecorder);
    v5 = self->_greetingRecorder;
    self->_greetingRecorder = v4;

    [(PHAudioRecorder *)self->_greetingRecorder setAudioRecorderDelegate:self];
    greetingRecorder = self->_greetingRecorder;
  }

  return greetingRecorder;
}

- (void)audioRecorderStartedWithFile:(id)a3
{
  if ([(PHVoicemailGreetingModel *)self greetingState]== 4)
  {
    v4 = [NSString stringWithFormat:@"audioRecorderStartedWithFile: called, but we were already recording!  State was %ld.", [(PHVoicemailGreetingModel *)self greetingState]];
    NSLog(@"** TUAssertion failure: %@", v4);

    if (_TUAssertShouldCrashApplication())
    {
      if ([(PHVoicemailGreetingModel *)self greetingState]== 4)
      {
        [PHVoicemailGreetingModel audioRecorderStartedWithFile:];
      }
    }
  }

  [(PHVoicemailGreetingModel *)self setGreetingState:4];
}

- (void)audioRecorderContinuedWithFile:(id)a3 duration:(double)a4
{
  if ([(PHVoicemailGreetingModel *)self greetingState]!= 4)
  {
    v6 = [NSString stringWithFormat:@"audioRecorderContinuedWithFile:duration: called, but we were not recording!  State was %ld.", [(PHVoicemailGreetingModel *)self greetingState]];
    NSLog(@"** TUAssertion failure: %@", v6);

    if (_TUAssertShouldCrashApplication())
    {
      if ([(PHVoicemailGreetingModel *)self greetingState]!= 4)
      {
        [PHVoicemailGreetingModel audioRecorderContinuedWithFile:duration:];
      }
    }
  }

  v8 = [(PHVoicemailGreetingModel *)self delegate];
  [(PHVoicemailGreetingModel *)self maximumGreetingDuration];
  [v8 voicemailGreetingRecordingProgressChanged:a4 / v7];
}

- (void)audioRecorderEndedWithFile:(id)a3 duration:(double)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(PHVoicemailGreetingModel *)self greetingState]!= 4)
  {
    v10 = [NSString stringWithFormat:@"audioRecorderEndedWithFile:duration:error: called, but we were not recording!  State was %ld.", [(PHVoicemailGreetingModel *)self greetingState]];
    NSLog(@"** TUAssertion failure: %@", v10);

    if (_TUAssertShouldCrashApplication())
    {
      if ([(PHVoicemailGreetingModel *)self greetingState]!= 4)
      {
        [PHVoicemailGreetingModel audioRecorderEndedWithFile:duration:error:];
        if (v9)
        {
          goto LABEL_5;
        }

LABEL_13:
        v16 = objc_alloc_init(VMVoicemailGreeting);
        [v16 setDuration:a4];
        v22 = [NSURL fileURLWithPath:v8];
        [v16 setUrl:v22];

        [v16 setType:2];
        v23 = [v16 url];
        v24 = [AVURLAsset assetWithURL:v23];
        [(PHVoicemailGreetingModel *)self loadGreeting:v24];

        [(PHVoicemailGreetingModel *)self setSelectedGreeting:v16];
        v25 = [(PHVoicemailGreetingModel *)self delegate];
        [v25 voicemailGreetingDidFinishRecording];

        goto LABEL_14;
      }
    }
  }

  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  v11 = [v9 code];
  v12 = +[NSBundle mainBundle];
  v13 = v12;
  if (v11 == -11810)
  {
    v14 = @"GREETING_TOO_LONG";
  }

  else
  {
    v14 = @"GREETING_FAILED";
  }

  if (v11 == -11810)
  {
    v15 = @"GREETING_TOO_LONG_DETAIL";
  }

  else
  {
    v15 = @"GREETING_FAILED_DETAIL";
  }

  v16 = [v12 localizedStringForKey:v14 value:&stru_10028F310 table:@"Voicemail"];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:v15 value:&stru_10028F310 table:@"Voicemail"];

  v26[0] = NSLocalizedDescriptionKey;
  v26[1] = NSLocalizedFailureReasonErrorKey;
  v27[0] = v16;
  v27[1] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v20 = [NSError errorWithDomain:@"com.apple.mobilephone" code:-1 userInfo:v19];

  v21 = [(PHVoicemailGreetingModel *)self delegate];
  [v21 voicemailGreetingFailedWithError:v20];

  [(PHVoicemailGreetingModel *)self setGreetingState:2];
LABEL_14:
}

+ (id)greetingTempFileLocation
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"greeting.XXXXXX"];

  [v3 fileSystemRepresentation];
  if (__strlcpy_chk() >= 8)
  {
    if ((mkstemp(v10) & 0x80000000) == 0)
    {
      v4 = +[NSFileManager defaultManager];
      v5 = [NSURL fileURLWithFileSystemRepresentation:v10 isDirectory:0 relativeToURL:0];
      [v4 removeItemAtURL:v5 error:0];

      v6 = [NSString stringWithUTF8String:v10];
      goto LABEL_8;
    }

    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PHVoicemailGreetingModel greetingTempFileLocation];
    }
  }

  v6 = 0;
LABEL_8:
  v8 = [v6 stringByAppendingString:@".amr"];

  return v8;
}

- (PHVoicemailGreetingModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)shouldShowSaveButton
{
  v2 = self;
  v3 = [(PHVoicemailGreetingModel *)v2 selectedGreeting];
  v4 = [(PHVoicemailGreetingModel *)v2 existingGreeting];
  v5 = [(VMVoicemailGreeting *)v3 isEqual:v4];

  return v5 ^ 1;
}

- (NSURL)defaultGreetingURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = objc_opt_self();
  v10 = self;
  v11 = [v9 sharedInstance];
  v12 = [v11 defaultGreeting];

  if (v12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  outlined init with take of URL?(v6, v8);

  type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v8, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    URL._bridgeToObjectiveC()(v15);
    v18 = v17;
    (*(v14 + 8))(v8, v13);
    v16 = v18;
  }

  return v16;
}

- (BOOL)greetingExists
{
  v2 = self;
  v3 = PHVoicemailGreetingModel.greetingExists.getter();

  return v3 & 1;
}

- (BOOL)isCustomized
{
  v2 = self;
  v3 = [(PHVoicemailGreetingModel *)v2 selectedGreeting];
  v4 = [(VMVoicemailGreeting *)v3 type];

  return v4 == 2;
}

- (BOOL)isDefault
{
  v2 = self;
  v3 = [(PHVoicemailGreetingModel *)v2 selectedGreeting];
  v4 = [(VMVoicemailGreeting *)v3 type];

  return v4 == 0;
}

- (BOOL)shouldShowPlayButtonForDefaultGreeting
{
  v2 = self;
  if ([(PHVoicemailGreetingModel *)v2 isCallScreeningEnabled])
  {
    v3 = [(PHVoicemailGreetingModel *)v2 greetingExists];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isCallScreeningEnabled
{
  if (one-time initialization token for featureFlags != -1)
  {
    swift_once();
  }

  return TUCallScreeningEnabled();
}

- (NSUUID)liveVoicMailAccountUUID
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v6.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);

  return v6.super.isa;
}

- (void)saveGreeting
{
  v2 = self;
  PHVoicemailGreetingModel.saveGreeting()();
}

- (void)fetchGreeting
{
  v2 = self;
  PHVoicemailGreetingModel.fetchGreeting()();
}

- (void)didSelectDefaultGreeting
{
  v2 = self;
  PHVoicemailGreetingModel.didSelectDefaultGreeting()();
}

- (void)didSelectCustomizedGreeting
{
  v2 = self;
  PHVoicemailGreetingModel.didSelectCustomizedGreeting()();
}

- (double)maximumGreetingDurationForAccount:(id)a3
{
  if (*(a3 + OBJC_IVAR___MPGreetingAccount_accountType + 8))
  {
    return 120.0;
  }

  v5 = a3;
  v6 = self;
  v7 = [(PHVoicemailGreetingModel *)v6 voicemailManager];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [(VMVoicemailManager *)v7 maximumGreetingDurationForAccountUUID:isa];
  v10 = v9;

  return v10;
}

- (void)setGreetingState:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"PHVoicemailGreetingModel.m" lineNumber:84 description:{@"Attempted to change to greeting state: %li from a background thread. You must set the greeting state from the main thread.", a3}];
}

- (void)audioRecorderStartedWithFile:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v7 = +[NSAssertionHandler currentHandler];
  v1 = [v0 greetingState];
  [OUTLINED_FUNCTION_0_4(v1 v2];
}

- (void)audioRecorderContinuedWithFile:duration:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v7 = +[NSAssertionHandler currentHandler];
  v1 = [v0 greetingState];
  [OUTLINED_FUNCTION_0_4(v1 v2];
}

- (void)audioRecorderEndedWithFile:duration:error:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v7 = +[NSAssertionHandler currentHandler];
  v1 = [v0 greetingState];
  [OUTLINED_FUNCTION_0_4(v1 v2];
}

+ (void)greetingTempFileLocation
{
  OUTLINED_FUNCTION_1_2();
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5 = 136315650;
  v6 = v1;
  v7 = 1024;
  v8 = v2;
  v9 = 2080;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Unable to create temp path for greeting file: %s: %d (%s)", &v5, 0x1Cu);
}

@end