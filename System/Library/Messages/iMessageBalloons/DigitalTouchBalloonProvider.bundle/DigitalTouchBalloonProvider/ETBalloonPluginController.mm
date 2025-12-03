@interface ETBalloonPluginController
- (BOOL)_shouldShowPlaceholderView;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKTranscriptPluginView)pluginContentView;
- (ETBalloonPluginController)initWithDataSource:(id)source isFromMe:(BOOL)me;
- (double)_rightButtonInset;
- (id)_attachmentPlaceholderImage;
- (id)_placeholderImageURL;
- (void)_applicationWillResignActive;
- (void)_setShowingPlaceholderView:(BOOL)view;
- (void)didEndSessionPlayback;
- (void)loadView;
- (void)setDataSource:(id)source;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBeginSessionPlayback;
- (void)willEndSessionPlaybackInterrupted:(BOOL)interrupted;
@end

@implementation ETBalloonPluginController

- (ETBalloonPluginController)initWithDataSource:(id)source isFromMe:(BOOL)me
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = ETBalloonPluginController;
  v6 = [(ETBalloonPluginController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(ETBalloonPluginController *)v6 setComposeDisabled:1];
    [(ETBalloonPluginController *)v7 setAutoPlayOnAppearanceDisabled:1];
    [(ETBalloonPluginController *)v7 setOverrideAudioDefaultToOff:1];
    [(ETBalloonPluginController *)v7 setDataSource:sourceCopy];
    v8 = v7;
  }

  return v7;
}

- (void)loadView
{
  v4 = objc_alloc_init(ETTranscriptPluginView);
  [(ETTranscriptPluginView *)v4 setAutoresizingMask:18];
  _audioToggleButton = [(ETBalloonPluginController *)self _audioToggleButton];
  [(ETTranscriptPluginView *)v4 trackInteractiveSubview:_audioToggleButton];

  [(ETBalloonPluginController *)self setView:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v11 viewWillAppear:appear];
  dataSource = [(ETBalloonPluginController *)self dataSource];
  mediaURL = [dataSource mediaURL];
  if (mediaURL || ![dataSource isLast])
  {
    isFromMe = 0;
  }

  else
  {
    isFromMe = [dataSource isFromMe];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_11828;
  v10[3] = &unk_24858;
  v10[4] = self;
  v7 = objc_retainBlock(v10);
  v8 = v7;
  if (isFromMe)
  {
    v9 = dispatch_time(0, 500000000);
    dispatch_after(v9, &_dispatch_main_q, v8);
  }

  else
  {
    (v7[2])(v7);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v6 viewDidDisappear:disappear];
  dataSource = [(ETBalloonPluginController *)self dataSource];
  -[ETBalloonPluginController _setShowingPlaceholderView:](self, "_setShowingPlaceholderView:", [dataSource isPlayed] ^ 1);

  [(UIView *)self->_playedSnapshotView removeFromSuperview];
  playedSnapshotView = self->_playedSnapshotView;
  self->_playedSnapshotView = 0;
}

- (BOOL)_shouldShowPlaceholderView
{
  dataSource = [(ETBalloonPluginController *)self dataSource];
  v4 = ([dataSource isPlayed] & 1) == 0 && (-[ETBalloonPluginController isPlayingMessages](self, "isPlayingMessages") & 1) == 0 && self->_playedSnapshotView == 0;

  return v4;
}

- (void)_setShowingPlaceholderView:(BOOL)view
{
  unplayedPlaceholderView = self->_unplayedPlaceholderView;
  if ((((unplayedPlaceholderView == 0) ^ view) & 1) == 0)
  {
    if (view)
    {
      v5 = objc_alloc_init(BalloonPlaceholderView);
      v6 = self->_unplayedPlaceholderView;
      self->_unplayedPlaceholderView = v5;

      v7 = self->_unplayedPlaceholderView;
      _attachmentPlaceholderImage = [(ETBalloonPluginController *)self _attachmentPlaceholderImage];
      [(BalloonPlaceholderView *)v7 setBackgroundImage:_attachmentPlaceholderImage];

      v9 = self->_unplayedPlaceholderView;
      canvasView = [(ETBalloonPluginController *)self canvasView];
      [canvasView bounds];
      [(BalloonPlaceholderView *)v9 setFrame:?];

      view = [(ETBalloonPluginController *)self view];
      [(BalloonPlaceholderView *)view addSubview:self->_unplayedPlaceholderView];
      v11 = view;
    }

    else
    {
      [(BalloonPlaceholderView *)unplayedPlaceholderView removeFromSuperview];
      v11 = self->_unplayedPlaceholderView;
      self->_unplayedPlaceholderView = 0;
    }
  }
}

- (double)_rightButtonInset
{
  dataSource = [(ETBalloonPluginController *)self dataSource];
  if ([dataSource isFromMe])
  {
    v3 = 13.0;
  }

  else
  {
    v3 = 7.0;
  }

  return v3;
}

- (id)_attachmentPlaceholderImage
{
  _placeholderImageURL = [(ETBalloonPluginController *)self _placeholderImageURL];
  v3 = _placeholderImageURL;
  if (!_placeholderImageURL)
  {
    goto LABEL_6;
  }

  pathExtension = [_placeholderImageURL pathExtension];
  v5 = [pathExtension isEqualToString:@"cpbitmap"];

  if (v5)
  {
    v6 = [CKMultiFrameImage firstFrameImageWithContentsOfCPBitmapURL:v3 error:0];
    goto LABEL_7;
  }

  v7 = [[NSData alloc] initWithContentsOfURL:v3 options:1 error:0];
  if (v7)
  {
    v8 = v7;
    v6 = [UIImage ckImageWithData:v7];
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (id)_placeholderImageURL
{
  dataSource = [(ETBalloonPluginController *)self dataSource];
  mediaURL = [dataSource mediaURL];

  if (mediaURL)
  {
    v4 = IMPreviewExtension();
    v5 = IMAttachmentPreviewFileURL();
    v6 = +[NSFileManager defaultManager];
    path = [v5 path];
    v8 = [v6 fileExistsAtPath:path];

    if (v8)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v5 viewDidLayoutSubviews];
  unplayedPlaceholderView = self->_unplayedPlaceholderView;
  canvasView = [(ETBalloonPluginController *)self canvasView];
  [canvasView frame];
  [(BalloonPlaceholderView *)unplayedPlaceholderView setFrame:?];
}

- (CKTranscriptPluginView)pluginContentView
{
  [(ETBalloonPluginController *)self loadViewIfNeeded];

  return [(ETBalloonPluginController *)self view];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  dataSource = [(ETBalloonPluginController *)self dataSource];
  [dataSource sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setDataSource:(id)source
{
  v6.receiver = self;
  v6.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v6 setDataSource:source];
  [(ETBalloonPluginController *)self setAutoPlayOnAppearanceDisabled:1];
  superview = [(BalloonPlaceholderView *)self->_unplayedPlaceholderView superview];

  if (!superview)
  {
    view = [(ETBalloonPluginController *)self view];
    [(BalloonPlaceholderView *)self->_unplayedPlaceholderView setAlpha:1.0];
    [view addSubview:self->_unplayedPlaceholderView];
  }
}

- (void)_applicationWillResignActive
{
  v4.receiver = self;
  v4.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v4 _applicationWillResignActive];
  canvasView = [(ETBalloonPluginController *)self canvasView];
  [canvasView setAlwaysPaused:1];

  [(ETBalloonPluginController *)self setPlaybackEnabled:0];
}

- (void)willBeginSessionPlayback
{
  v7.receiver = self;
  v7.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v7 willBeginSessionPlayback];
  backgroundImage = [(BalloonPlaceholderView *)self->_unplayedPlaceholderView backgroundImage];

  if (backgroundImage)
  {
    v4 = 100000000;
  }

  else
  {
    v4 = 0;
  }

  v5 = dispatch_time(0, v4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11F90;
  block[3] = &unk_24858;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)willEndSessionPlaybackInterrupted:(BOOL)interrupted
{
  interruptedCopy = interrupted;
  v27.receiver = self;
  v27.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v27 willEndSessionPlaybackInterrupted:?];
  if (interruptedCopy)
  {
    [(ETBalloonPluginController *)self _setShowingPlaceholderView:1];
  }

  else
  {
    dataSource = [(ETBalloonPluginController *)self dataSource];
    [dataSource markAsPlayed];

    updateSnapshot = [(ETBalloonPluginController *)self updateSnapshot];
    if (updateSnapshot)
    {
      [(ETBalloonPluginController *)self view];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1224C;
      v24[3] = &unk_24C68;
      v7 = v24[4] = self;
      v25 = v7;
      v26 = updateSnapshot;
      v8 = objc_retainBlock(v24);
      v9 = [v7 snapshotViewAfterScreenUpdates:0];
      playedSnapshotView = self->_playedSnapshotView;
      self->_playedSnapshotView = v9;

      [v7 addSubview:self->_playedSnapshotView];
      _playingParentMessage = [(ETBalloonPluginController *)self _playingParentMessage];
      if ([_playingParentMessage messageType] == 8 && objc_msgSend(_playingParentMessage, "mediaType") == &dword_0 + 1)
      {
        v12 = _playingParentMessage;
        introMessage = [v12 introMessage];
        if (introMessage)
        {
          v14 = 1;
        }

        else
        {
          playingMessages = [v12 playingMessages];
          v14 = [playingMessages count] != 0;
        }

        objc_initWeak(&location, self);
        v16 = dispatch_get_global_queue(2, 0);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1256C;
        v18[3] = &unk_24CB8;
        v19 = v12;
        v22 = v14;
        v20 = v8;
        v17 = v12;
        objc_copyWeak(&v21, &location);
        dispatch_async(v16, v18);

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
      }

      else
      {
        (v8[2])(v8, 0);
      }
    }
  }
}

- (void)didEndSessionPlayback
{
  v5.receiver = self;
  v5.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v5 didEndSessionPlayback];
  balloonPlaybackCompletion = [(ETBalloonPluginController *)self balloonPlaybackCompletion];
  v4 = balloonPlaybackCompletion;
  if (balloonPlaybackCompletion)
  {
    (*(balloonPlaybackCompletion + 16))(balloonPlaybackCompletion, 0);
  }

  [(ETBalloonPluginController *)self setBalloonPlaybackCompletion:0];
  [(ETBalloonPluginController *)self setAutoPlayOnAppearanceDisabled:1];
}

@end