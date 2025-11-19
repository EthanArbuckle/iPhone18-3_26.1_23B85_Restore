@interface RPAngelCameraPipViewController
- (RPAngelCameraPipViewController)init;
- (id)cameraWithPosition:(int64_t)a3;
- (void)cameraDidBecomeAvailableForUniqueID:(id)a3;
- (void)cameraDidBecomeInterruptedForForUniqueID:(id)a3 reason:(int64_t)a4;
- (void)didChangeLocalScreenAttributes:(id)a3;
- (void)didChangeLocalVideoAttributes:(id)a3;
- (void)didPausePreview;
- (void)didStartPreview;
- (void)didStopPreview;
- (void)layoutPreviewLayer;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setupPreview;
- (void)startPipSession;
- (void)stopPipSession;
- (void)updateViewGeometry;
- (void)viewDidLayoutSubviews;
@end

@implementation RPAngelCameraPipViewController

- (RPAngelCameraPipViewController)init
{
  v4.receiver = self;
  v4.super_class = RPAngelCameraPipViewController;
  v2 = [(RPAngelCameraPipViewController *)&v4 init];
  if (v2)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v6 = "[RPAngelCameraPipViewController init]";
      v7 = 1024;
      v8 = 32;
      v9 = 2048;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    v2->_isRunning = 0;
    [(RPAngelCameraPipViewController *)v2 setupPreview];
  }

  return v2;
}

- (id)cameraWithPosition:(int64_t)a3
{
  v4 = [AVCaptureDevice devicesWithMediaType:AVMediaTypeVideo];
  if (v4)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v21 = "[RPAngelCameraPipViewController cameraWithPosition:]";
      v22 = 1024;
      v23 = 43;
      v24 = 1024;
      v25 = [v4 count];
      v5 = " [INFO] %{public}s:%d looking for camera in %d capture devices";
      v6 = 24;
LABEL_8:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, buf, v6);
    }
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[RPAngelCameraPipViewController cameraWithPosition:]";
    v22 = 1024;
    v23 = 45;
    v5 = " [INFO] %{public}s:%d no capture devices found";
    v6 = 18;
    goto LABEL_8;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 position] == a3)
        {
          if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 uniqueID];
            *buf = 136446978;
            v21 = "[RPAngelCameraPipViewController cameraWithPosition:]";
            v22 = 1024;
            v23 = 51;
            v24 = 1024;
            v25 = a3;
            v26 = 2112;
            v27 = v14;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d camera found with position %d UID %@", buf, 0x22u);
          }

          v13 = [v12 uniqueID];

          goto LABEL_25;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100043648();
  }

  v13 = 0;
LABEL_25:

  return v13;
}

- (void)setupPreview
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446466;
    v16 = "[RPAngelCameraPipViewController setupPreview]";
    v17 = 1024;
    v18 = 60;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v15, 0x12u);
  }

  v3 = objc_alloc_init(CALayer);
  previewLayer = self->_previewLayer;
  self->_previewLayer = v3;

  v5 = +[AVConferencePreview AVConferencePreviewSingleton];
  preview = self->_preview;
  self->_preview = v5;

  [(AVConferencePreview *)self->_preview setDelegate:self];
  v7 = self->_preview;
  v8 = [(RPAngelCameraPipViewController *)self cameraWithPosition:2];
  [(AVConferencePreview *)v7 setLocalCameraWithUID:v8];

  [(AVConferencePreview *)self->_preview setLocalVideoLayer:self->_previewLayer front:1];
  v9 = [(RPAngelCameraPipViewController *)self view];
  v10 = [v9 layer];
  [v10 setMasksToBounds:1];

  v11 = [(RPAngelCameraPipViewController *)self view];
  v12 = [v11 layer];
  [v12 addSublayer:self->_previewLayer];

  v13 = [(AVConferencePreview *)self->_preview localVideoAttributes];
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446722;
    v16 = "[RPAngelCameraPipViewController setupPreview]";
    v17 = 1024;
    v18 = 70;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d localVideoAttributes %@", &v15, 0x1Cu);
  }

  v14 = [(AVConferencePreview *)self->_preview localScreenAttributesForVideoAttributes:v13];

  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446722;
    v16 = "[RPAngelCameraPipViewController setupPreview]";
    v17 = 1024;
    v18 = 72;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d localScreenAttributes %@", &v15, 0x1Cu);
  }

  [(RPAngelCameraPipViewController *)self layoutPreviewLayer];
}

- (void)startPipSession
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    preview = self->_preview;
    *buf = 136446722;
    v14 = "[RPAngelCameraPipViewController startPipSession]";
    v15 = 1024;
    v16 = 77;
    v17 = 2048;
    v18 = preview;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  if ((+[PGPictureInPictureProxy isPictureInPictureSupported]& 1) != 0)
  {
    if (self->_isRunning)
    {
      if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v14 = "[RPAngelCameraPipViewController startPipSession]";
        v15 = 1024;
        v16 = 107;
        v4 = " [INFO] %{public}s:%d pip already running";
LABEL_12:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, buf, 0x12u);
      }
    }

    else
    {
      if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        [(RPAngelCameraPipViewController *)self preferredContentSize];
        v6 = v5;
        [(RPAngelCameraPipViewController *)self preferredContentSize];
        *buf = 136446978;
        v14 = "[RPAngelCameraPipViewController startPipSession]";
        v15 = 1024;
        v16 = 82;
        v17 = 2048;
        v18 = v6;
        v19 = 2048;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d preferred content size: w:%lf x h:%lf", buf, 0x26u);
      }

      v8 = [[PGPictureInPictureProxy alloc] initWithControlsStyle:0 viewController:self];
      pegasusProxy = self->_pegasusProxy;
      self->_pegasusProxy = v8;

      [(PGPictureInPictureProxy *)self->_pegasusProxy setDelegate:self];
      if (([(AVConferencePreview *)self->_preview isPreviewRunning]& 1) == 0)
      {
        if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v14 = "[RPAngelCameraPipViewController startPipSession]";
          v15 = 1024;
          v16 = 89;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d not running, can start", buf, 0x12u);
        }

        [(AVConferencePreview *)self->_preview startPreview];
        if ([(PGPictureInPictureProxy *)self->_pegasusProxy isPictureInPicturePossible])
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000090A4;
          block[3] = &unk_10005D098;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
        }

        else
        {
          [(PGPictureInPictureProxy *)self->_pegasusProxy addObserver:self forKeyPath:@"pictureInPicturePossible" options:0 context:0];
        }

        v10 = +[NSNotificationCenter defaultCenter];
        [v10 addObserver:self selector:"updateViewGeometry" name:UIDeviceOrientationDidChangeNotification object:0];

        v11 = +[UIDevice currentDevice];
        [v11 beginGeneratingDeviceOrientationNotifications];

        self->_isRunning = 1;
      }
    }
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[RPAngelCameraPipViewController startPipSession]";
    v15 = 1024;
    v16 = 79;
    v4 = " [INFO] %{public}s:%d pip not supported on device";
    goto LABEL_12;
  }
}

- (void)stopPipSession
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[RPAngelCameraPipViewController stopPipSession]";
    v10 = 1024;
    v11 = 112;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v8, 0x12u);
  }

  pegasusProxy = self->_pegasusProxy;
  if (pegasusProxy)
  {
    [(PGPictureInPictureProxy *)pegasusProxy stopPictureInPictureAndRestoreUserInterface:0];
    [(PGPictureInPictureProxy *)self->_pegasusProxy removeObserver:self forKeyPath:@"pictureInPicturePossible"];
    [(PGPictureInPictureProxy *)self->_pegasusProxy setDelegate:0];
    v4 = self->_pegasusProxy;
    self->_pegasusProxy = 0;
  }

  [(AVConferencePreview *)self->_preview stopPreview];
  [(AVConferencePreview *)self->_preview setDelegate:0];
  previewLayer = self->_previewLayer;
  self->_previewLayer = 0;

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIDeviceOrientationDidChangeNotification object:0];

  v7 = +[UIDevice currentDevice];
  [v7 endGeneratingDeviceOrientationNotifications];

  self->_isRunning = 0;
}

- (void)loadView
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPAngelCameraPipViewController loadView]";
    v8 = 1024;
    v9 = 135;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v6, 0x12u);
  }

  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(RPAngelCameraPipViewController *)self setView:v3];

  v4 = +[UIColor clearColor];
  v5 = [(RPAngelCameraPipViewController *)self view];
  [v5 setBackgroundColor:v4];

  [(RPAngelCameraPipViewController *)self updateViewGeometry];
}

- (void)viewDidLayoutSubviews
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPAngelCameraPipViewController viewDidLayoutSubviews]";
    v5 = 1024;
    v6 = 148;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d viewDidLayoutSubviews", &v3, 0x12u);
  }

  [(RPAngelCameraPipViewController *)self layoutPreviewLayer];
}

- (void)layoutPreviewLayer
{
  v3 = [(RPAngelCameraPipViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v8 = [(AVConferencePreview *)self->_preview localVideoAttributes];
  if ([v8 camera] == 3)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 136446466;
      v41 = "[RPAngelCameraPipViewController layoutPreviewLayer]";
      v42 = 1024;
      v43 = 158;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d camera invalid", &v40, 0x12u);
    }

    [v8 setRatio:{1080.0, 1920.0}];
  }

  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    [v8 ratio];
    v10 = v9;
    [v8 ratio];
    v40 = 136446978;
    v41 = "[RPAngelCameraPipViewController layoutPreviewLayer]";
    v42 = 1024;
    v43 = 163;
    v44 = 2048;
    v45 = v10;
    v46 = 2048;
    v47 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d localVideoAttributes: %lf x %lf", &v40, 0x26u);
  }

  [v8 ratio];
  v13 = v5 / v12;
  [v8 ratio];
  v15 = v7 / v14;
  [v8 ratio];
  if (v13 <= v15)
  {
    v20 = v17 * v15;
    v21 = v7;
    [(CALayer *)self->_previewLayer setFrame:(v5 - v20) * 0.5, 0.0, v20, v21];
  }

  else
  {
    v19 = v18 * v13;
    v16 = v5;
    [(CALayer *)self->_previewLayer setFrame:0.0, (v7 - v19) * 0.5, v16];
  }

  if (__RPLogLevel <= 1u)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(RPAngelCameraPipViewController *)self view];
      [v22 frame];
      v24 = v23;
      v25 = [(RPAngelCameraPipViewController *)self view];
      [v25 frame];
      v27 = v26;
      v28 = [(RPAngelCameraPipViewController *)self view];
      [v28 frame];
      v30 = v29;
      v31 = [(RPAngelCameraPipViewController *)self view];
      [v31 frame];
      v40 = 136447490;
      v41 = "[RPAngelCameraPipViewController layoutPreviewLayer]";
      v42 = 1024;
      v43 = 179;
      v44 = 2048;
      v45 = v24;
      v46 = 2048;
      v47 = v27;
      v48 = 2048;
      v49 = v30;
      v50 = 2048;
      v51 = v32;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d view frame - origin:%lf, %lf size:%lf x %lf", &v40, 0x3Au);
    }

    if (__RPLogLevel <= 1u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 136446978;
        v41 = "[RPAngelCameraPipViewController layoutPreviewLayer]";
        v42 = 1024;
        v43 = 180;
        v44 = 2048;
        v45 = v13;
        v46 = 2048;
        v47 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d width factor: %f height factor:%f", &v40, 0x26u);
      }

      if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        [(CALayer *)self->_previewLayer frame];
        v34 = v33;
        [(CALayer *)self->_previewLayer frame];
        v36 = v35;
        [(CALayer *)self->_previewLayer frame];
        v38 = v37;
        [(CALayer *)self->_previewLayer frame];
        v40 = 136447490;
        v41 = "[RPAngelCameraPipViewController layoutPreviewLayer]";
        v42 = 1024;
        v43 = 181;
        v44 = 2048;
        v45 = v34;
        v46 = 2048;
        v47 = v36;
        v48 = 2048;
        v49 = v38;
        v50 = 2048;
        v51 = v39;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d preview layer frame - origin:%lf, %lf size:%lf x %lf", &v40, 0x3Au);
      }
    }
  }
}

- (void)updateViewGeometry
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;

  [(RPAngelCameraPipViewController *)self setPreferredContentSize:v5 * 0.2, v5 * 0.2];
  pegasusProxy = self->_pegasusProxy;

  [(PGPictureInPictureProxy *)pegasusProxy preferredContentSizeDidChangeForViewController];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 isEqualToString:@"pictureInPicturePossible"] && -[PGPictureInPictureProxy isPictureInPicturePossible](self->_pegasusProxy, "isPictureInPicturePossible"))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009C94;
    block[3] = &unk_10005D098;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    [v10 removeObserver:self forKeyPath:@"pictureInPicturePossible"];
  }
}

- (void)didStartPreview
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPAngelCameraPipViewController didStartPreview]";
    v4 = 1024;
    v5 = 212;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v2, 0x12u);
  }
}

- (void)didPausePreview
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPAngelCameraPipViewController didPausePreview]";
    v4 = 1024;
    v5 = 216;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v2, 0x12u);
  }
}

- (void)didStopPreview
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPAngelCameraPipViewController didStopPreview]";
    v4 = 1024;
    v5 = 220;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v2, 0x12u);
  }
}

- (void)cameraDidBecomeAvailableForUniqueID:(id)a3
{
  v3 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPAngelCameraPipViewController cameraDidBecomeAvailableForUniqueID:]";
    v6 = 1024;
    v7 = 224;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v4, 0x12u);
  }
}

- (void)cameraDidBecomeInterruptedForForUniqueID:(id)a3 reason:(int64_t)a4
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPAngelCameraPipViewController cameraDidBecomeInterruptedForForUniqueID:reason:]";
    v7 = 1024;
    v8 = 228;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }
}

- (void)didChangeLocalVideoAttributes:(id)a3
{
  v3 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446722;
    v5 = "[RPAngelCameraPipViewController didChangeLocalVideoAttributes:]";
    v6 = 1024;
    v7 = 232;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@", &v4, 0x1Cu);
  }
}

- (void)didChangeLocalScreenAttributes:(id)a3
{
  v3 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446722;
    v5 = "[RPAngelCameraPipViewController didChangeLocalScreenAttributes:]";
    v6 = 1024;
    v7 = 236;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@", &v4, 0x1Cu);
  }
}

@end