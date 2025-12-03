@interface VLFScanningAnimationView
- (BOOL)isDarkMode;
- (VLFScanningAnimationView)initWithFrame:(CGRect)frame;
- (id)videoNameForCurrentState;
- (void)didMoveToWindow;
- (void)setCurrentScanningState:(int64_t)state;
- (void)traitCollectionDidChange:(id)change;
- (void)updateForCurrentStateAndPreserveTimestamp:(BOOL)timestamp animate:(BOOL)animate;
@end

@implementation VLFScanningAnimationView

- (void)updateForCurrentStateAndPreserveTimestamp:(BOOL)timestamp animate:(BOOL)animate
{
  animateCopy = animate;
  timestampCopy = timestamp;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v8 = dispatch_queue_get_label(0);
  if (label != v8)
  {
    v9 = !label || v8 == 0;
    if (v9 || strcmp(label, v8))
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v27 = "[VLFScanningAnimationView updateForCurrentStateAndPreserveTimestamp:animate:]";
        v28 = 2080;
        v29 = "VLFScanningAnimationView.m";
        v30 = 1024;
        *v31 = 168;
        *&v31[4] = 2080;
        *&v31[6] = "dispatch_get_main_queue()";
        v32 = 2080;
        v33 = dispatch_queue_get_label(&_dispatch_main_q);
        v34 = 2080;
        v35 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v22 = sub_10006D178();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v27 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v10 = sub_1005F8714();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    currentScanningState = [(VLFScanningAnimationView *)self currentScanningState];
    if ((currentScanningState - 2) > 3)
    {
      v12 = @"VLFScanningStateInitializing";
    }

    else
    {
      v12 = *(&off_101623AF0 + currentScanningState - 2);
    }

    if (timestampCopy)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    *buf = 138412802;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    if (animateCopy)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v30 = 2112;
    *v31 = v14;
    v15 = v13;
    v16 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updating for the current state: (%@) preserving timestamp: %@ animated: %@", buf, 0x20u);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1005F8768;
  v24[3] = &unk_101661AE0;
  v24[4] = self;
  v25 = timestampCopy;
  v17 = objc_retainBlock(v24);
  v18 = sub_1005F8714();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (animateCopy)
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Animating fade out", buf, 2u);
    }

    animationManager = [(VLFScanningAnimationView *)self animationManager];
    [animationManager fadeWithFadeOutCompletion:v17];
  }

  else
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Not animating fade out", buf, 2u);
    }

    animationManager = [(VLFScanningAnimationView *)self animationManager];
    [animationManager replaceOnGoingFadeOutCompletion:v17];
  }
}

- (id)videoNameForCurrentState
{
  currentScanningState = [(VLFScanningAnimationView *)self currentScanningState];
  if ((currentScanningState - 1) < 3)
  {
    if (+[VLFDeviceInfo isIslandDevice])
    {
      isDarkMode = [(VLFScanningAnimationView *)self isDarkMode];
      v5 = @"VLF_scan_island_light";
      v6 = @"VLF_scan_island_dark";
    }

    else
    {
      v7 = +[VLFDeviceInfo isNotchDevice];
      isDarkMode = [(VLFScanningAnimationView *)self isDarkMode];
      if (v7)
      {
        v5 = @"VLF_scan_notch_light";
        v6 = @"VLF_scan_notch_dark";
      }

      else
      {
        v5 = @"VLF_scan_light";
        v6 = @"VLF_scan_dark";
      }
    }

LABEL_31:
    if (isDarkMode)
    {
      v5 = v6;
    }

    v16 = v5;
    goto LABEL_34;
  }

  if (currentScanningState == 4)
  {
    if (+[VLFDeviceInfo isIslandDevice])
    {
      isDarkMode = [(VLFScanningAnimationView *)self isDarkMode];
      v5 = @"VLF_raise_island_light";
      v6 = @"VLF_raise_island_dark";
    }

    else
    {
      v14 = +[VLFDeviceInfo isNotchDevice];
      isDarkMode = [(VLFScanningAnimationView *)self isDarkMode];
      if (v14)
      {
        v5 = @"VLF_raise_notch_light";
        v6 = @"VLF_raise_notch_dark";
      }

      else
      {
        v5 = @"VLF_raise_light";
        v6 = @"VLF_raise_dark";
      }
    }

    goto LABEL_31;
  }

  if (currentScanningState == 5)
  {
    if (+[VLFDeviceInfo isIslandDevice])
    {
      isDarkMode = [(VLFScanningAnimationView *)self isDarkMode];
      v5 = @"VLF_lower_island_light";
      v6 = @"VLF_lower_island_dark";
    }

    else
    {
      v15 = +[VLFDeviceInfo isNotchDevice];
      isDarkMode = [(VLFScanningAnimationView *)self isDarkMode];
      if (v15)
      {
        v5 = @"VLF_lower_notch_light";
        v6 = @"VLF_lower_notch_dark";
      }

      else
      {
        v5 = @"VLF_lower_light";
        v6 = @"VLF_lower_dark";
      }
    }

    goto LABEL_31;
  }

  v8 = sub_10006D178();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v18 = 136315650;
    v19 = "[VLFScanningAnimationView videoNameForCurrentState]";
    v20 = 2080;
    v21 = "VLFScanningAnimationView.m";
    v22 = 1024;
    v23 = 161;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v18, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = +[NSThread callStackSymbols];
      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
    }
  }

  v11 = sub_1005F8714();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    currentScanningState2 = [(VLFScanningAnimationView *)self currentScanningState];
    if ((currentScanningState2 - 2) > 3)
    {
      v13 = @"VLFScanningStateInitializing";
    }

    else
    {
      v13 = *(&off_101623AF0 + currentScanningState2 - 2);
    }

    v18 = 138412290;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid current scanning state: (%@); could not determine video name to use", &v18, 0xCu);
  }

  v16 = 0;
LABEL_34:

  return v16;
}

- (BOOL)isDarkMode
{
  traitCollection = [(VLFScanningAnimationView *)self traitCollection];
  v3 = [traitCollection userInterfaceStyle] == 2;

  return v3;
}

- (void)setCurrentScanningState:(int64_t)state
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = 136316418;
        v21 = "[VLFScanningAnimationView setCurrentScanningState:]";
        v22 = 2080;
        v23 = "VLFScanningAnimationView.m";
        v24 = 1024;
        v25 = 99;
        v26 = 2080;
        v27 = "dispatch_get_main_queue()";
        v28 = 2080;
        v29 = dispatch_queue_get_label(&_dispatch_main_q);
        v30 = 2080;
        v31 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v20, 0x3Au);
      }

      if (sub_100E03634())
      {
        v18 = sub_10006D178();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = +[NSThread callStackSymbols];
          v20 = 138412290;
          v21 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
        }
      }
    }
  }

  currentScanningState = self->_currentScanningState;
  if (currentScanningState != state)
  {
    self->_currentScanningState = state;
    v9 = sub_1005F8714();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if ((currentScanningState - 2) > 3)
      {
        v10 = @"VLFScanningStateInitializing";
      }

      else
      {
        v10 = *(&off_101623AF0 + currentScanningState - 2);
      }

      v11 = self->_currentScanningState - 2;
      if (v11 > 3)
      {
        v12 = @"VLFScanningStateInitializing";
      }

      else
      {
        v12 = *(&off_101623AF0 + v11);
      }

      v20 = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Current scanning state changed from %@ to %@", &v20, 0x16u);
    }

    v13 = self->_currentScanningState;
    if ((currentScanningState - 1) > 1 || (v13 - 1) > 1)
    {
      [(VLFScanningAnimationView *)self updateForCurrentStateAndPreserveTimestamp:0 animate:v13 != 1];
    }

    else
    {
      v15 = sub_1005F8714();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Ignoring transition between .Initializing and .Scanning because they're the same video", &v20, 2u);
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = VLFScanningAnimationView;
  [(VLFScanningAnimationView *)&v6 traitCollectionDidChange:change];
  v4 = sub_1005F8714();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Trait collection did change", v5, 2u);
  }

  [(VLFScanningAnimationView *)self updateForCurrentStateAndPreserveTimestamp:1 animate:0];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = VLFScanningAnimationView;
  [(VLFScanningAnimationView *)&v5 didMoveToWindow];
  window = [(VLFScanningAnimationView *)self window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    [(VLFScanningAnimationView *)self updateForCurrentStateAndPreserveTimestamp:0 animate:0];
  }
}

- (VLFScanningAnimationView)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = VLFScanningAnimationView;
  v3 = [(VLFScanningAnimationView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_currentScanningState = 1;
    v5 = objc_opt_new();
    v6 = [UIImageView alloc];
    v7 = [UIImage imageNamed:@"VLF_skyline"];
    v8 = [v6 initWithImage:v7];
    skylineImageView = v4->_skylineImageView;
    v4->_skylineImageView = v8;

    [(UIImageView *)v4->_skylineImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_skylineImageView setContentMode:1];
    [(VLFScanningAnimationView *)v4 addSubview:v4->_skylineImageView];
    LODWORD(v10) = 1148846080;
    v11 = [(UIImageView *)v4->_skylineImageView _maps_constraintsEqualToEdgesOfView:v4 priority:v10];
    allConstraints = [v11 allConstraints];
    [v5 addObjectsFromArray:allConstraints];

    v13 = [[MapsLoopingVideoPlayerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    playerView = v4->_playerView;
    v4->_playerView = v13;

    [(MapsLoopingVideoPlayerView *)v4->_playerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VLFScanningAnimationView *)v4 addSubview:v4->_playerView];
    LODWORD(v15) = 1148846080;
    v16 = [(MapsLoopingVideoPlayerView *)v4->_playerView _maps_constraintsEqualToEdgesOfView:v4 priority:v15];
    allConstraints2 = [v16 allConstraints];
    [v5 addObjectsFromArray:allConstraints2];

    [NSLayoutConstraint activateConstraints:v5];
    v18 = [VLFScanningAnimationManager alloc];
    layer = [(MapsLoopingVideoPlayerView *)v4->_playerView layer];
    v20 = [(VLFScanningAnimationManager *)v18 initWithLayer:layer];
    animationManager = v4->_animationManager;
    v4->_animationManager = v20;

    v22 = +[NSUserDefaults standardUserDefaults];
    LODWORD(layer) = [v22 BOOLForKey:@"VLFSessionScanningAnimationShowLongestTextKey"];

    if (layer)
    {
      v23 = +[UIColor labelColor];
      v24 = [v23 colorWithAlphaComponent:0.300000012];
      [(VLFScanningAnimationView *)v4 setBackgroundColor:v24];
    }

    [(VLFScanningAnimationView *)v4 updateForCurrentStateAndPreserveTimestamp:0 animate:0];
  }

  return v4;
}

@end