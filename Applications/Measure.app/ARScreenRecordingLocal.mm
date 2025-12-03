@interface ARScreenRecordingLocal
- (ARScreenRecordingLocal)init;
- (void)removeTemporaryOutputFile;
- (void)screenRecorderDidChangeAvailability:(id)availability;
- (void)startWithHandler:(id)handler;
- (void)stopWithHandler:(id)handler;
- (void)video:(id)video didFinishSavingWithError:(id)error contextInfo:(void *)info;
@end

@implementation ARScreenRecordingLocal

- (ARScreenRecordingLocal)init
{
  v9.receiver = self;
  v9.super_class = ARScreenRecordingLocal;
  v2 = [(ARScreenRecordingLocal *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_saveInPhotosLibrary = 0;
    v2->_startRecordingRequested = 0;
    v4 = os_log_create("com.apple.measure", "ARSessionRecording");
    logger = v3->_logger;
    v3->_logger = v4;

    v6 = +[RPScreenRecorder sharedRecorder];
    [(ARScreenRecordingLocal *)v3 setRecorder:v6];

    recorder = [(ARScreenRecordingLocal *)v3 recorder];
    [recorder setDelegate:v3];
  }

  return v3;
}

- (void)startWithHandler:(id)handler
{
  handlerCopy = handler;
  recorder = [(ARScreenRecordingLocal *)self recorder];
  isRecording = [recorder isRecording];

  if (isRecording)
  {
    goto LABEL_5;
  }

  recorder2 = [(ARScreenRecordingLocal *)self recorder];
  isAvailable = [recorder2 isAvailable];

  if ((isAvailable & 1) == 0)
  {
    self->_startRecordingRequested = 1;
LABEL_5:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_6;
  }

  recorder3 = [(ARScreenRecordingLocal *)self recorder];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000065A8;
  v10[3] = &unk_100464AF0;
  v11 = handlerCopy;
  [recorder3 startRecordingWithHandler:v10];

LABEL_6:
}

- (void)stopWithHandler:(id)handler
{
  handlerCopy = handler;
  if ([(ARScreenRecordingLocal *)self saveInPhotosLibrary])
  {
    v5 = NSTemporaryDirectory();
    v6 = [v5 stringByAppendingString:@"/screenRecording.mov"];
    v7 = [NSURL fileURLWithPath:v6];
    temporaryOutputURL = self->temporaryOutputURL;
    self->temporaryOutputURL = v7;

    [(ARScreenRecordingLocal *)self removeTemporaryOutputFile];
    recorder = [(ARScreenRecordingLocal *)self recorder];
    v10 = self->temporaryOutputURL;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100006754;
    v17[3] = &unk_100464B18;
    v17[4] = self;
    v18 = handlerCopy;
    v11 = handlerCopy;
    [recorder stopRecordingWithOutputURL:v10 completionHandler:v17];

    v12 = v18;
  }

  else
  {
    recorder2 = [(ARScreenRecordingLocal *)self recorder];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000067E8;
    v15[3] = &unk_100464AF0;
    v16 = handlerCopy;
    v14 = handlerCopy;
    [recorder2 stopCaptureWithHandler:v15];

    v12 = v16;
  }
}

- (void)video:(id)video didFinishSavingWithError:(id)error contextInfo:(void *)info
{
  videoCopy = video;
  errorCopy = error;
  if (errorCopy)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = errorCopy;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_ERROR, "Failed to save screen recording: %@", &v10, 0xCu);
    }
  }

  [(ARScreenRecordingLocal *)self removeTemporaryOutputFile];
}

- (void)removeTemporaryOutputFile
{
  v3 = +[NSFileManager defaultManager];
  path = [(NSURL *)self->temporaryOutputURL path];
  v5 = [v3 fileExistsAtPath:path];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    [v6 removeItemAtURL:self->temporaryOutputURL error:0];
  }
}

- (void)screenRecorderDidChangeAvailability:(id)availability
{
  recorder = [(ARScreenRecordingLocal *)self recorder];
  if ([recorder isAvailable])
  {
    startRecordingRequested = self->_startRecordingRequested;

    if (startRecordingRequested)
    {
      self->_startRecordingRequested = 0;
      recorder2 = [(ARScreenRecordingLocal *)self recorder];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100006A68;
      v7[3] = &unk_100464B40;
      v7[4] = self;
      [recorder2 startRecordingWithHandler:v7];
    }
  }

  else
  {
  }
}

@end