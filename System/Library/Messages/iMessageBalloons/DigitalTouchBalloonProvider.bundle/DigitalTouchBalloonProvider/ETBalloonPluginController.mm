@interface ETBalloonPluginController
- (BOOL)_shouldShowPlaceholderView;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKTranscriptPluginView)pluginContentView;
- (ETBalloonPluginController)initWithDataSource:(id)a3 isFromMe:(BOOL)a4;
- (double)_rightButtonInset;
- (id)_attachmentPlaceholderImage;
- (id)_placeholderImageURL;
- (void)_applicationWillResignActive;
- (void)_setShowingPlaceholderView:(BOOL)a3;
- (void)didEndSessionPlayback;
- (void)loadView;
- (void)setDataSource:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBeginSessionPlayback;
- (void)willEndSessionPlaybackInterrupted:(BOOL)a3;
@end

@implementation ETBalloonPluginController

- (ETBalloonPluginController)initWithDataSource:(id)a3 isFromMe:(BOOL)a4
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ETBalloonPluginController;
  v6 = [(ETBalloonPluginController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(ETBalloonPluginController *)v6 setComposeDisabled:1];
    [(ETBalloonPluginController *)v7 setAutoPlayOnAppearanceDisabled:1];
    [(ETBalloonPluginController *)v7 setOverrideAudioDefaultToOff:1];
    [(ETBalloonPluginController *)v7 setDataSource:v5];
    v8 = v7;
  }

  return v7;
}

- (void)loadView
{
  v4 = objc_alloc_init(ETTranscriptPluginView);
  [(ETTranscriptPluginView *)v4 setAutoresizingMask:18];
  v3 = [(ETBalloonPluginController *)self _audioToggleButton];
  [(ETTranscriptPluginView *)v4 trackInteractiveSubview:v3];

  [(ETBalloonPluginController *)self setView:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v11 viewWillAppear:a3];
  v4 = [(ETBalloonPluginController *)self dataSource];
  v5 = [v4 mediaURL];
  if (v5 || ![v4 isLast])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 isFromMe];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_11828;
  v10[3] = &unk_24858;
  v10[4] = self;
  v7 = objc_retainBlock(v10);
  v8 = v7;
  if (v6)
  {
    v9 = dispatch_time(0, 500000000);
    dispatch_after(v9, &_dispatch_main_q, v8);
  }

  else
  {
    (v7[2])(v7);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v6 viewDidDisappear:a3];
  v4 = [(ETBalloonPluginController *)self dataSource];
  -[ETBalloonPluginController _setShowingPlaceholderView:](self, "_setShowingPlaceholderView:", [v4 isPlayed] ^ 1);

  [(UIView *)self->_playedSnapshotView removeFromSuperview];
  playedSnapshotView = self->_playedSnapshotView;
  self->_playedSnapshotView = 0;
}

- (BOOL)_shouldShowPlaceholderView
{
  v3 = [(ETBalloonPluginController *)self dataSource];
  v4 = ([v3 isPlayed] & 1) == 0 && (-[ETBalloonPluginController isPlayingMessages](self, "isPlayingMessages") & 1) == 0 && self->_playedSnapshotView == 0;

  return v4;
}

- (void)_setShowingPlaceholderView:(BOOL)a3
{
  unplayedPlaceholderView = self->_unplayedPlaceholderView;
  if ((((unplayedPlaceholderView == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = objc_alloc_init(BalloonPlaceholderView);
      v6 = self->_unplayedPlaceholderView;
      self->_unplayedPlaceholderView = v5;

      v7 = self->_unplayedPlaceholderView;
      v8 = [(ETBalloonPluginController *)self _attachmentPlaceholderImage];
      [(BalloonPlaceholderView *)v7 setBackgroundImage:v8];

      v9 = self->_unplayedPlaceholderView;
      v10 = [(ETBalloonPluginController *)self canvasView];
      [v10 bounds];
      [(BalloonPlaceholderView *)v9 setFrame:?];

      v12 = [(ETBalloonPluginController *)self view];
      [(BalloonPlaceholderView *)v12 addSubview:self->_unplayedPlaceholderView];
      v11 = v12;
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
  v2 = [(ETBalloonPluginController *)self dataSource];
  if ([v2 isFromMe])
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
  v2 = [(ETBalloonPluginController *)self _placeholderImageURL];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_6;
  }

  v4 = [v2 pathExtension];
  v5 = [v4 isEqualToString:@"cpbitmap"];

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
  v2 = [(ETBalloonPluginController *)self dataSource];
  v3 = [v2 mediaURL];

  if (v3)
  {
    v4 = IMPreviewExtension();
    v5 = IMAttachmentPreviewFileURL();
    v6 = +[NSFileManager defaultManager];
    v7 = [v5 path];
    v8 = [v6 fileExistsAtPath:v7];

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
  v4 = [(ETBalloonPluginController *)self canvasView];
  [v4 frame];
  [(BalloonPlaceholderView *)unplayedPlaceholderView setFrame:?];
}

- (CKTranscriptPluginView)pluginContentView
{
  [(ETBalloonPluginController *)self loadViewIfNeeded];

  return [(ETBalloonPluginController *)self view];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(ETBalloonPluginController *)self dataSource];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setDataSource:(id)a3
{
  v6.receiver = self;
  v6.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v6 setDataSource:a3];
  [(ETBalloonPluginController *)self setAutoPlayOnAppearanceDisabled:1];
  v4 = [(BalloonPlaceholderView *)self->_unplayedPlaceholderView superview];

  if (!v4)
  {
    v5 = [(ETBalloonPluginController *)self view];
    [(BalloonPlaceholderView *)self->_unplayedPlaceholderView setAlpha:1.0];
    [v5 addSubview:self->_unplayedPlaceholderView];
  }
}

- (void)_applicationWillResignActive
{
  v4.receiver = self;
  v4.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v4 _applicationWillResignActive];
  v3 = [(ETBalloonPluginController *)self canvasView];
  [v3 setAlwaysPaused:1];

  [(ETBalloonPluginController *)self setPlaybackEnabled:0];
}

- (void)willBeginSessionPlayback
{
  v7.receiver = self;
  v7.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v7 willBeginSessionPlayback];
  v3 = [(BalloonPlaceholderView *)self->_unplayedPlaceholderView backgroundImage];

  if (v3)
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

- (void)willEndSessionPlaybackInterrupted:(BOOL)a3
{
  v3 = a3;
  v27.receiver = self;
  v27.super_class = ETBalloonPluginController;
  [(ETBalloonPluginController *)&v27 willEndSessionPlaybackInterrupted:?];
  if (v3)
  {
    [(ETBalloonPluginController *)self _setShowingPlaceholderView:1];
  }

  else
  {
    v5 = [(ETBalloonPluginController *)self dataSource];
    [v5 markAsPlayed];

    v6 = [(ETBalloonPluginController *)self updateSnapshot];
    if (v6)
    {
      [(ETBalloonPluginController *)self view];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1224C;
      v24[3] = &unk_24C68;
      v7 = v24[4] = self;
      v25 = v7;
      v26 = v6;
      v8 = objc_retainBlock(v24);
      v9 = [v7 snapshotViewAfterScreenUpdates:0];
      playedSnapshotView = self->_playedSnapshotView;
      self->_playedSnapshotView = v9;

      [v7 addSubview:self->_playedSnapshotView];
      v11 = [(ETBalloonPluginController *)self _playingParentMessage];
      if ([v11 messageType] == 8 && objc_msgSend(v11, "mediaType") == &dword_0 + 1)
      {
        v12 = v11;
        v13 = [v12 introMessage];
        if (v13)
        {
          v14 = 1;
        }

        else
        {
          v15 = [v12 playingMessages];
          v14 = [v15 count] != 0;
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
  v3 = [(ETBalloonPluginController *)self balloonPlaybackCompletion];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }

  [(ETBalloonPluginController *)self setBalloonPlaybackCompletion:0];
  [(ETBalloonPluginController *)self setAutoPlayOnAppearanceDisabled:1];
}

@end