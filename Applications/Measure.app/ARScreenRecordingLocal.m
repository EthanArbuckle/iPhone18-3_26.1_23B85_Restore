@interface ARScreenRecordingLocal
- (ARScreenRecordingLocal)init;
- (void)removeTemporaryOutputFile;
- (void)screenRecorderDidChangeAvailability:(id)a3;
- (void)startWithHandler:(id)a3;
- (void)stopWithHandler:(id)a3;
- (void)video:(id)a3 didFinishSavingWithError:(id)a4 contextInfo:(void *)a5;
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

    v7 = [(ARScreenRecordingLocal *)v3 recorder];
    [v7 setDelegate:v3];
  }

  return v3;
}

- (void)startWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(ARScreenRecordingLocal *)self recorder];
  v6 = [v5 isRecording];

  if (v6)
  {
    goto LABEL_5;
  }

  v7 = [(ARScreenRecordingLocal *)self recorder];
  v8 = [v7 isAvailable];

  if ((v8 & 1) == 0)
  {
    self->_startRecordingRequested = 1;
LABEL_5:
    v4[2](v4, 0);
    goto LABEL_6;
  }

  v9 = [(ARScreenRecordingLocal *)self recorder];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000065A8;
  v10[3] = &unk_100464AF0;
  v11 = v4;
  [v9 startRecordingWithHandler:v10];

LABEL_6:
}

- (void)stopWithHandler:(id)a3
{
  v4 = a3;
  if ([(ARScreenRecordingLocal *)self saveInPhotosLibrary])
  {
    v5 = NSTemporaryDirectory();
    v6 = [v5 stringByAppendingString:@"/screenRecording.mov"];
    v7 = [NSURL fileURLWithPath:v6];
    temporaryOutputURL = self->temporaryOutputURL;
    self->temporaryOutputURL = v7;

    [(ARScreenRecordingLocal *)self removeTemporaryOutputFile];
    v9 = [(ARScreenRecordingLocal *)self recorder];
    v10 = self->temporaryOutputURL;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100006754;
    v17[3] = &unk_100464B18;
    v17[4] = self;
    v18 = v4;
    v11 = v4;
    [v9 stopRecordingWithOutputURL:v10 completionHandler:v17];

    v12 = v18;
  }

  else
  {
    v13 = [(ARScreenRecordingLocal *)self recorder];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000067E8;
    v15[3] = &unk_100464AF0;
    v16 = v4;
    v14 = v4;
    [v13 stopCaptureWithHandler:v15];

    v12 = v16;
  }
}

- (void)video:(id)a3 didFinishSavingWithError:(id)a4 contextInfo:(void *)a5
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_ERROR, "Failed to save screen recording: %@", &v10, 0xCu);
    }
  }

  [(ARScreenRecordingLocal *)self removeTemporaryOutputFile];
}

- (void)removeTemporaryOutputFile
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(NSURL *)self->temporaryOutputURL path];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    [v6 removeItemAtURL:self->temporaryOutputURL error:0];
  }
}

- (void)screenRecorderDidChangeAvailability:(id)a3
{
  v6 = [(ARScreenRecordingLocal *)self recorder];
  if ([v6 isAvailable])
  {
    startRecordingRequested = self->_startRecordingRequested;

    if (startRecordingRequested)
    {
      self->_startRecordingRequested = 0;
      v5 = [(ARScreenRecordingLocal *)self recorder];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100006A68;
      v7[3] = &unk_100464B40;
      v7[4] = self;
      [v5 startRecordingWithHandler:v7];
    }
  }

  else
  {
  }
}

@end